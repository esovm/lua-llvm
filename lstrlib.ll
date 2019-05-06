; ModuleID = 'lstrlib.c'
source_filename = "lstrlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%union.anon = type { i32 }
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, [8192 x i8] }
%struct.GMatchState = type { i8*, i8*, i8*, %struct.MatchState }
%struct.MatchState = type { i8*, i8*, i8*, %struct.lua_State*, i32, i8, [32 x %struct.anon] }
%struct.anon = type { i8*, i64 }
%struct.Header = type { %struct.lua_State*, i32, i32 }
%union.Ftypes = type { double, [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@strlib = internal constant [18 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @str_byte }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @str_char }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @str_dump }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @str_find }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @str_format }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @gmatch }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @str_gsub }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @str_len }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @str_lower }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @str_match }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @str_rep }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @str_reverse }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @str_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @str_upper }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @str_pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @str_packsize }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @str_unpack }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"unable to dump given function\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"malformed pattern (missing arguments to '%%b')\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid capture index %%%d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"value has no literal form\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"\5C%d\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"\5C%03d\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@nativeendian = internal constant %union.anon { i32 1 }, align 4
@.str.52 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"__index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_string(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.030000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 17)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([18 x %struct.luaL_Reg], [18 x %struct.luaL_Reg]* @strlib, i32 0, i32 0), i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @createmetatable(%struct.lua_State* %6)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createmetatable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_pushstring(%struct.lua_State* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_setmetatable(%struct.lua_State* %7, i32 -2)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %9, i32 -2)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %10, i32 -2)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %11, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 -2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_byte(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %12, i32 2, i64 1)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @posrelat(i64 %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @luaL_optinteger(%struct.lua_State* %16, i32 3, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @posrelat(i64 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %21, 1
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %1
  store i64 1, i64* %6, align 8
  br label %24

; <label>:24:                                     ; preds = %23, %1
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %24
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %7, align 8
  br label %30

; <label>:30:                                     ; preds = %28, %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  store i32 0, i32* %2, align 4
  br label %71

; <label>:35:                                     ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp sge i64 %38, 2147483647
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %35
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  store i32 %42, i32* %2, align 4
  br label %71

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load i32, i32* %8, align 4
  call void @luaL_checkstack(%struct.lua_State* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %51

; <label>:51:                                     ; preds = %66, %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

; <label>:55:                                     ; preds = %51
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = sub nsw i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  call void @lua_pushinteger(%struct.lua_State* %56, i64 %65)
  br label %66

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %51

; <label>:69:                                     ; preds = %51
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %71

; <label>:71:                                     ; preds = %69, %40, %34
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_char(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = call i8* @luaL_buffinitsize(%struct.lua_State* %10, %struct.luaL_Buffer* %5, i64 %12)
  store i8* %13, i8** %6, align 8
  store i32 1, i32* %4, align 4
  br label %14

; <label>:14:                                     ; preds = %42, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %14
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i8
  %24 = zext i8 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

; <label>:27:                                     ; preds = %18
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @luaL_argerror(%struct.lua_State* %28, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32:                                     ; preds = %27, %18
  %33 = phi i1 [ true, %18 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %14

; <label>:45:                                     ; preds = %14
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %5, i64 %47)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_dump(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_toboolean(%struct.lua_State* %6, i32 2)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* %8, i32 1, i32 6)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %9, i32 1)
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_buffinit(%struct.lua_State* %10, %struct.luaL_Buffer* %4)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = bitcast %struct.luaL_Buffer* %4 to i8*
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @lua_dump(%struct.lua_State* %11, i32 (%struct.lua_State*, i8*, i64, i8*)* @writer, i8* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  store i32 %18, i32* %2, align 4
  br label %20

; <label>:19:                                     ; preds = %1
  call void @luaL_pushresult(%struct.luaL_Buffer* %4)
  store i32 1, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @str_find_aux(%struct.lua_State* %3, i32 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_format(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.luaL_Buffer, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @lua_gettop(%struct.lua_State* %17)
  store i32 %18, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @luaL_checklstring(%struct.lua_State* %19, i32 %20, i64* %6)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %8, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_buffinit(%struct.lua_State* %25, %struct.luaL_Buffer* %9)
  br label %26

; <label>:26:                                     ; preds = %191, %1
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %192

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 37
  br i1 %34, label %35, label %56

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %35
  %42 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %9, i64 1)
  %43 = icmp ne i8* %42, null
  br label %44

; <label>:44:                                     ; preds = %41, %35
  %45 = phi i1 [ true, %35 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = load i8, i8* %47, align 1
  %50 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %49, i8* %55, align 1
  br label %191

; <label>:56:                                     ; preds = %30
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %83

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %62
  %69 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %9, i64 1)
  %70 = icmp ne i8* %69, null
  br label %71

; <label>:71:                                     ; preds = %68, %62
  %72 = phi i1 [ true, %62 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  %76 = load i8, i8* %74, align 1
  %77 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %76, i8* %82, align 1
  br label %190

; <label>:83:                                     ; preds = %56
  %84 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %9, i64 428)
  store i8* %84, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %83
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @luaL_argerror(%struct.lua_State* %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %97 = call i8* @scanformat(%struct.lua_State* %94, i8* %95, i8* %96)
  store i8* %97, i8** %7, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  %100 = load i8, i8* %98, align 1
  %101 = sext i8 %100 to i32
  switch i32 %101, label %177 [
    i32 99, label %102
    i32 100, label %110
    i32 105, label %110
    i32 111, label %110
    i32 117, label %110
    i32 120, label %110
    i32 88, label %110
    i32 97, label %119
    i32 65, label %119
    i32 101, label %128
    i32 69, label %128
    i32 102, label %128
    i32 103, label %128
    i32 71, label %128
    i32 113, label %137
    i32 115, label %140
  ]

; <label>:102:                                    ; preds = %93
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %105 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @luaL_checkinteger(%struct.lua_State* %105, i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %103, i64 428, i8* %104, i32 %108) #6
  store i32 %109, i32* %12, align 4
  br label %184

; <label>:110:                                    ; preds = %93, %93, %93, %93, %93, %93
  %111 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i64 @luaL_checkinteger(%struct.lua_State* %111, i32 %112)
  store i64 %113, i64* %13, align 8
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  call void @addlenmod(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %117 = load i64, i64* %13, align 8
  %118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %115, i64 428, i8* %116, i64 %117) #6
  store i32 %118, i32* %12, align 4
  br label %184

; <label>:119:                                    ; preds = %93, %93
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  call void @addlenmod(i8* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0))
  %121 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %124 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call double @luaL_checknumber(%struct.lua_State* %124, i32 %125)
  %127 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %122, i64 428, i8* %123, double %126) #6
  store i32 %127, i32* %12, align 4
  br label %184

; <label>:128:                                    ; preds = %93, %93, %93, %93, %93
  %129 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call double @luaL_checknumber(%struct.lua_State* %129, i32 %130)
  store double %131, double* %14, align 8
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  call void @addlenmod(i8* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0))
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %135 = load double, double* %14, align 8
  %136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %133, i64 428, i8* %134, double %135) #6
  store i32 %136, i32* %12, align 4
  br label %184

; <label>:137:                                    ; preds = %93
  %138 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %139 = load i32, i32* %5, align 4
  call void @addliteral(%struct.lua_State* %138, %struct.luaL_Buffer* %9, i32 %139)
  br label %184

; <label>:140:                                    ; preds = %93
  %141 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i8* @luaL_tolstring(%struct.lua_State* %141, i32 %142, i64* %15)
  store i8* %143, i8** %16, align 8
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 2
  %145 = load i8, i8* %144, align 2
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148:                                    ; preds = %140
  call void @luaL_addvalue(%struct.luaL_Buffer* %9)
  br label %176

; <label>:149:                                    ; preds = %140
  %150 = load i64, i64* %15, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = call i64 @strlen(i8* %151) #7
  %153 = icmp eq i64 %150, %152
  br i1 %153, label %159, label %154

; <label>:154:                                    ; preds = %149
  %155 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @luaL_argerror(%struct.lua_State* %155, i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0))
  %158 = icmp ne i32 %157, 0
  br label %159

; <label>:159:                                    ; preds = %154, %149
  %160 = phi i1 [ true, %149 ], [ %158, %154 ]
  %161 = zext i1 %160 to i32
  %162 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %163 = call i8* @strchr(i8* %162, i32 46) #7
  %164 = icmp ne i8* %163, null
  br i1 %164, label %169, label %165

; <label>:165:                                    ; preds = %159
  %166 = load i64, i64* %15, align 8
  %167 = icmp uge i64 %166, 100
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %165
  call void @luaL_addvalue(%struct.luaL_Buffer* %9)
  br label %175

; <label>:169:                                    ; preds = %165, %159
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0
  %172 = load i8*, i8** %16, align 8
  %173 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %170, i64 428, i8* %171, i8* %172) #6
  store i32 %173, i32* %12, align 4
  %174 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %174, i32 -2)
  br label %175

; <label>:175:                                    ; preds = %169, %168
  br label %176

; <label>:176:                                    ; preds = %175, %148
  br label %184

; <label>:177:                                    ; preds = %93
  %178 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 -1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %182)
  store i32 %183, i32* %2, align 4
  br label %193

; <label>:184:                                    ; preds = %176, %137, %128, %119, %110, %102
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, %186
  store i64 %189, i64* %187, align 8
  br label %190

; <label>:190:                                    ; preds = %184, %71
  br label %191

; <label>:191:                                    ; preds = %190, %44
  br label %26

; <label>:192:                                    ; preds = %26
  call void @luaL_pushresult(%struct.luaL_Buffer* %9)
  store i32 1, i32* %2, align 4
  br label %193

; <label>:193:                                    ; preds = %192, %177
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GMatchState*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* %3)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %10, i32 2, i64* %4)
  store i8* %11, i8** %6, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 2)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i8* @lua_newuserdata(%struct.lua_State* %13, i64 576)
  %15 = bitcast i8* %14 to %struct.GMatchState*
  store %struct.GMatchState* %15, %struct.GMatchState** %7, align 8
  %16 = load %struct.GMatchState*, %struct.GMatchState** %7, align 8
  %17 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %16, i32 0, i32 3
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %4, align 8
  call void @prepstate(%struct.MatchState* %17, %struct.lua_State* %18, i8* %19, i64 %20, i8* %21, i64 %22)
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.GMatchState*, %struct.GMatchState** %7, align 8
  %25 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.GMatchState*, %struct.GMatchState** %7, align 8
  %28 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.GMatchState*, %struct.GMatchState** %7, align 8
  %30 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %29, i32 0, i32 2
  store i8* null, i8** %30, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* %31, i32 (%struct.lua_State*)* @gmatch_aux, i32 3)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.MatchState, align 8
  %13 = alloca %struct.luaL_Buffer, align 8
  %14 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i8* @luaL_checklstring(%struct.lua_State* %15, i32 1, i64* %3)
  store i8* %16, i8** %5, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call i8* @luaL_checklstring(%struct.lua_State* %17, i32 2, i64* %4)
  store i8* %18, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @lua_type(%struct.lua_State* %19, i32 3)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  %24 = call i64 @luaL_optinteger(%struct.lua_State* %21, i32 4, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 94
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %45, label %32

; <label>:32:                                     ; preds = %1
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %45, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %45, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %38
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %43 = call i32 @luaL_argerror(%struct.lua_State* %42, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0))
  %44 = icmp ne i32 %43, 0
  br label %45

; <label>:45:                                     ; preds = %41, %38, %35, %32, %1
  %46 = phi i1 [ true, %38 ], [ true, %35 ], [ true, %32 ], [ true, %1 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* %48, %struct.luaL_Buffer* %13)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %4, align 8
  br label %56

; <label>:56:                                     ; preds = %51, %45
  %57 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %4, align 8
  call void @prepstate(%struct.MatchState* %12, %struct.lua_State* %57, i8* %58, i64 %59, i8* %60, i64 %61)
  br label %62

; <label>:62:                                     ; preds = %114, %56
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %115

; <label>:66:                                     ; preds = %62
  call void @reprepstate(%struct.MatchState* %12)
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @match(%struct.MatchState* %12, i8* %67, i8* %68)
  store i8* %69, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %82

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* %8, align 4
  call void @add_value(%struct.MatchState* %12, %struct.luaL_Buffer* %13, i8* %78, i8* %79, i32 %80)
  %81 = load i8*, i8** %14, align 8
  store i8* %81, i8** %7, align 8
  store i8* %81, i8** %5, align 8
  br label %110

; <label>:82:                                     ; preds = %71, %66
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ult i8* %83, %85
  br i1 %86, label %87, label %108

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %13, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %13, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %87
  %94 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %13, i64 1)
  %95 = icmp ne i8* %94, null
  br label %96

; <label>:96:                                     ; preds = %93, %87
  %97 = phi i1 [ true, %87 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %99, align 1
  %102 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %13, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %13, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %101, i8* %107, align 1
  br label %109

; <label>:108:                                    ; preds = %82
  br label %115

; <label>:109:                                    ; preds = %96
  br label %110

; <label>:110:                                    ; preds = %109, %75
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %110
  br label %115

; <label>:114:                                    ; preds = %110
  br label %62

; <label>:115:                                    ; preds = %113, %108, %62
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  call void @luaL_addlstring(%struct.luaL_Buffer* %13, i8* %116, i64 %122)
  call void @luaL_pushresult(%struct.luaL_Buffer* %13)
  %123 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %124 = load i64, i64* %11, align 8
  call void @lua_pushinteger(%struct.lua_State* %123, i64 %124)
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_len(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i64* %3)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @lua_pushinteger(%struct.lua_State* %6, i64 %7)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_lower(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* %3)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @luaL_buffinitsize(%struct.lua_State* %10, %struct.luaL_Buffer* %5, i64 %11)
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %4, align 8
  br label %13

; <label>:13:                                     ; preds = %28, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 @tolower(i32 %22) #7
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  br label %28

; <label>:28:                                     ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %13

; <label>:31:                                     ; preds = %13
  %32 = load i64, i64* %3, align 8
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %5, i64 %32)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_match(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @str_find_aux(%struct.lua_State* %3, i32 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_rep(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.luaL_Buffer, align 8
  %11 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @luaL_checklstring(%struct.lua_State* %12, i32 1, i64* %4)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i64 @luaL_checkinteger(%struct.lua_State* %14, i32 2)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i8* @luaL_optlstring(%struct.lua_State* %16, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i64* %5)
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0))
  br label %81

; <label>:23:                                     ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = udiv i64 2147483647, %33
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %29, %23
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0))
  store i32 %38, i32* %2, align 4
  br label %82

; <label>:39:                                     ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %4, align 8
  %42 = mul i64 %40, %41
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load i64, i64* %5, align 8
  %46 = mul i64 %44, %45
  %47 = add i64 %42, %46
  store i64 %47, i64* %9, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i8* @luaL_buffinitsize(%struct.lua_State* %48, %struct.luaL_Buffer* %10, i64 %49)
  store i8* %50, i8** %11, align 8
  br label %51

; <label>:51:                                     ; preds = %73, %39
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %7, align 8
  %54 = icmp sgt i64 %52, 1
  br i1 %54, label %55, label %74

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %4, align 8
  %59 = mul i64 %58, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 %59, i32 1, i1 false)
  %60 = load i64, i64* %4, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %11, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %73

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %5, align 8
  %69 = mul i64 %68, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 %69, i32 1, i1 false)
  %70 = load i64, i64* %5, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %11, align 8
  br label %73

; <label>:73:                                     ; preds = %65, %55
  br label %51

; <label>:74:                                     ; preds = %51
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %4, align 8
  %78 = mul i64 %77, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %78, i32 1, i1 false)
  %79 = load i64, i64* %9, align 8
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %10, i64 %79)
  br label %80

; <label>:80:                                     ; preds = %74
  br label %81

; <label>:81:                                     ; preds = %80, %20
  store i32 1, i32* %2, align 4
  br label %82

; <label>:82:                                     ; preds = %81, %36
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_reverse(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* %3)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @luaL_buffinitsize(%struct.lua_State* %10, %struct.luaL_Buffer* %5, i64 %11)
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %4, align 8
  br label %13

; <label>:13:                                     ; preds = %28, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  br label %28

; <label>:28:                                     ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %13

; <label>:31:                                     ; preds = %13
  %32 = load i64, i64* %3, align 8
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %5, i64 %32)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_sub(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i64 @luaL_checkinteger(%struct.lua_State* %9, i32 2)
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @posrelat(i64 %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %13, i32 3, i64 -1)
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @posrelat(i64 %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 1
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %1
  store i64 1, i64* %5, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %6, align 8
  br label %26

; <label>:26:                                     ; preds = %24, %20
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %26
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub nsw i64 %36, %37
  %39 = add i64 %38, 1
  %40 = call i8* @lua_pushlstring(%struct.lua_State* %31, i8* %35, i64 %39)
  br label %44

; <label>:41:                                     ; preds = %26
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %43 = call i8* @lua_pushstring(%struct.lua_State* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0))
  br label %44

; <label>:44:                                     ; preds = %41, %30
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_upper(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* %3)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @luaL_buffinitsize(%struct.lua_State* %10, %struct.luaL_Buffer* %5, i64 %11)
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %4, align 8
  br label %13

; <label>:13:                                     ; preds = %28, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 @toupper(i32 %22) #7
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  br label %28

; <label>:28:                                     ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %13

; <label>:31:                                     ; preds = %13
  %32 = load i64, i64* %3, align 8
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %5, i64 %32)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_pack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = alloca %struct.Header, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.Ftypes, align 8
  %15 = alloca i8*, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = call i8* @luaL_checklstring(%struct.lua_State* %23, i32 1, i64* null)
  store i8* %24, i8** %5, align 8
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @initheader(%struct.lua_State* %25, %struct.Header* %4)
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %26)
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* %27, %struct.luaL_Buffer* %3)
  br label %28

; <label>:28:                                     ; preds = %300, %1
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %301

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @getdetails(%struct.Header* %4, i64 %34, i8** %5, i32* %8, i32* %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

; <label>:42:                                     ; preds = %55, %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %64

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %46
  %53 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %3, i64 1)
  %54 = icmp ne i8* %53, null
  br label %55

; <label>:55:                                     ; preds = %52, %46
  %56 = phi i1 [ true, %46 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %63, align 1
  br label %42

; <label>:64:                                     ; preds = %42
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %300 [
    i32 0, label %68
    i32 1, label %104
    i32 2, label %130
    i32 3, label %167
    i32 4, label %210
    i32 5, label %240
    i32 6, label %279
    i32 7, label %297
    i32 8, label %297
  ]

; <label>:68:                                     ; preds = %64
  %69 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @luaL_checkinteger(%struct.lua_State* %69, i32 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %96

; <label>:74:                                     ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 8
  %77 = sub nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub nsw i64 0, %80
  %82 = load i64, i64* %11, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %74
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %93, label %88

; <label>:88:                                     ; preds = %84, %74
  %89 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @luaL_argerror(%struct.lua_State* %89, i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  %92 = icmp ne i32 %91, 0
  br label %93

; <label>:93:                                     ; preds = %88, %84
  %94 = phi i1 [ true, %84 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  br label %96

; <label>:96:                                     ; preds = %93, %68
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds %struct.Header, %struct.Header* %4, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %11, align 8
  %102 = icmp slt i64 %101, 0
  %103 = zext i1 %102 to i32
  call void @packint(%struct.luaL_Buffer* %3, i64 %97, i32 %99, i32 %100, i32 %103)
  br label %300

; <label>:104:                                    ; preds = %64
  %105 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @luaL_checkinteger(%struct.lua_State* %105, i32 %106)
  store i64 %107, i64* %13, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 8
  br i1 %109, label %110, label %125

; <label>:110:                                    ; preds = %104
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 %112, 8
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = icmp ult i64 %111, %115
  br i1 %116, label %122, label %117

; <label>:117:                                    ; preds = %110
  %118 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @luaL_argerror(%struct.lua_State* %118, i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0))
  %121 = icmp ne i32 %120, 0
  br label %122

; <label>:122:                                    ; preds = %117, %110
  %123 = phi i1 [ true, %110 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  br label %125

; <label>:125:                                    ; preds = %122, %104
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.Header, %struct.Header* %4, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  call void @packint(%struct.luaL_Buffer* %3, i64 %126, i32 %128, i32 %129, i32 0)
  br label %300

; <label>:130:                                    ; preds = %64
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %3, i64 %132)
  store i8* %133, i8** %15, align 8
  %134 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call double @luaL_checknumber(%struct.lua_State* %134, i32 %135)
  store double %136, double* %16, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %144

; <label>:140:                                    ; preds = %130
  %141 = load double, double* %16, align 8
  %142 = fptrunc double %141 to float
  %143 = bitcast %union.Ftypes* %14 to float*
  store volatile float %142, float* %143, align 8
  br label %155

; <label>:144:                                    ; preds = %130
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp eq i64 %146, 8
  br i1 %147, label %148, label %151

; <label>:148:                                    ; preds = %144
  %149 = load double, double* %16, align 8
  %150 = bitcast %union.Ftypes* %14 to double*
  store volatile double %149, double* %150, align 8
  br label %154

; <label>:151:                                    ; preds = %144
  %152 = load double, double* %16, align 8
  %153 = bitcast %union.Ftypes* %14 to double*
  store volatile double %152, double* %153, align 8
  br label %154

; <label>:154:                                    ; preds = %151, %148
  br label %155

; <label>:155:                                    ; preds = %154, %140
  %156 = load i8*, i8** %15, align 8
  %157 = bitcast %union.Ftypes* %14 to [40 x i8]*
  %158 = getelementptr inbounds [40 x i8], [40 x i8]* %157, i32 0, i32 0
  %159 = load i32, i32* %8, align 4
  %160 = getelementptr inbounds %struct.Header, %struct.Header* %4, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  call void @copywithendian(i8* %156, i8* %158, i32 %159, i32 %161)
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %163
  store i64 %166, i64* %164, align 8
  br label %300

; <label>:167:                                    ; preds = %64
  %168 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i8* @luaL_checklstring(%struct.lua_State* %168, i32 %169, i64* %17)
  store i8* %170, i8** %18, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp ule i64 %171, %173
  br i1 %174, label %180, label %175

; <label>:175:                                    ; preds = %167
  %176 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @luaL_argerror(%struct.lua_State* %176, i32 %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0))
  %179 = icmp ne i32 %178, 0
  br label %180

; <label>:180:                                    ; preds = %175, %167
  %181 = phi i1 [ true, %167 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = load i8*, i8** %18, align 8
  %184 = load i64, i64* %17, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %3, i8* %183, i64 %184)
  br label %185

; <label>:185:                                    ; preds = %200, %180
  %186 = load i64, i64* %17, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %17, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %209

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %193, %195
  br i1 %196, label %200, label %197

; <label>:197:                                    ; preds = %191
  %198 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %3, i64 1)
  %199 = icmp ne i8* %198, null
  br label %200

; <label>:200:                                    ; preds = %197, %191
  %201 = phi i1 [ true, %191 ], [ %199, %197 ]
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 0, i8* %208, align 1
  br label %185

; <label>:209:                                    ; preds = %185
  br label %300

; <label>:210:                                    ; preds = %64
  %211 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i8* @luaL_checklstring(%struct.lua_State* %211, i32 %212, i64* %19)
  store i8* %213, i8** %20, align 8
  %214 = load i32, i32* %8, align 4
  %215 = icmp sge i32 %214, 8
  br i1 %215, label %228, label %216

; <label>:216:                                    ; preds = %210
  %217 = load i64, i64* %19, align 8
  %218 = load i32, i32* %8, align 4
  %219 = mul nsw i32 %218, 8
  %220 = zext i32 %219 to i64
  %221 = shl i64 1, %220
  %222 = icmp ult i64 %217, %221
  br i1 %222, label %228, label %223

; <label>:223:                                    ; preds = %216
  %224 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @luaL_argerror(%struct.lua_State* %224, i32 %225, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0))
  %227 = icmp ne i32 %226, 0
  br label %228

; <label>:228:                                    ; preds = %223, %216, %210
  %229 = phi i1 [ true, %216 ], [ true, %210 ], [ %227, %223 ]
  %230 = zext i1 %229 to i32
  %231 = load i64, i64* %19, align 8
  %232 = getelementptr inbounds %struct.Header, %struct.Header* %4, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %8, align 4
  call void @packint(%struct.luaL_Buffer* %3, i64 %231, i32 %233, i32 %234, i32 0)
  %235 = load i8*, i8** %20, align 8
  %236 = load i64, i64* %19, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %3, i8* %235, i64 %236)
  %237 = load i64, i64* %19, align 8
  %238 = load i64, i64* %7, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %7, align 8
  br label %300

; <label>:240:                                    ; preds = %64
  %241 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %242 = load i32, i32* %6, align 4
  %243 = call i8* @luaL_checklstring(%struct.lua_State* %241, i32 %242, i64* %21)
  store i8* %243, i8** %22, align 8
  %244 = load i8*, i8** %22, align 8
  %245 = call i64 @strlen(i8* %244) #7
  %246 = load i64, i64* %21, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %253, label %248

; <label>:248:                                    ; preds = %240
  %249 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @luaL_argerror(%struct.lua_State* %249, i32 %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0))
  %252 = icmp ne i32 %251, 0
  br label %253

; <label>:253:                                    ; preds = %248, %240
  %254 = phi i1 [ true, %240 ], [ %252, %248 ]
  %255 = zext i1 %254 to i32
  %256 = load i8*, i8** %22, align 8
  %257 = load i64, i64* %21, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %3, i8* %256, i64 %257)
  %258 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ult i64 %259, %261
  br i1 %262, label %266, label %263

; <label>:263:                                    ; preds = %253
  %264 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %3, i64 1)
  %265 = icmp ne i8* %264, null
  br label %266

; <label>:266:                                    ; preds = %263, %253
  %267 = phi i1 [ true, %253 ], [ %265, %263 ]
  %268 = zext i1 %267 to i32
  %269 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = getelementptr inbounds i8, i8* %270, i64 %272
  store i8 0, i8* %274, align 1
  %275 = load i64, i64* %21, align 8
  %276 = add i64 %275, 1
  %277 = load i64, i64* %7, align 8
  %278 = add i64 %277, %276
  store i64 %278, i64* %7, align 8
  br label %300

; <label>:279:                                    ; preds = %64
  %280 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp ult i64 %281, %283
  br i1 %284, label %288, label %285

; <label>:285:                                    ; preds = %279
  %286 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %3, i64 1)
  %287 = icmp ne i8* %286, null
  br label %288

; <label>:288:                                    ; preds = %285, %279
  %289 = phi i1 [ true, %279 ], [ %287, %285 ]
  %290 = zext i1 %289 to i32
  %291 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %293, align 8
  %296 = getelementptr inbounds i8, i8* %292, i64 %294
  store i8 0, i8* %296, align 1
  br label %297

; <label>:297:                                    ; preds = %64, %64, %288
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %6, align 4
  br label %300

; <label>:300:                                    ; preds = %64, %297, %266, %228, %209, %155, %125, %96
  br label %28

; <label>:301:                                    ; preds = %28
  call void @luaL_pushresult(%struct.luaL_Buffer* %3)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_packsize(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.Header, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %9, i32 1, i64* null)
  store i8* %10, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @initheader(%struct.lua_State* %11, %struct.Header* %3)
  br label %12

; <label>:12:                                     ; preds = %44, %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

; <label>:17:                                     ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @getdetails(%struct.Header* %3, i64 %18, i8** %4, i32* %6, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 2147483647, %25
  %27 = icmp ule i64 %23, %26
  br i1 %27, label %32, label %28

; <label>:28:                                     ; preds = %17
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = call i32 @luaL_argerror(%struct.lua_State* %29, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0))
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32:                                     ; preds = %28, %17
  %33 = phi i1 [ true, %17 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %43 [
    i32 4, label %40
    i32 5, label %40
  ]

; <label>:40:                                     ; preds = %32, %32
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %42 = call i32 @luaL_argerror(%struct.lua_State* %41, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0))
  br label %43

; <label>:43:                                     ; preds = %32, %40
  br label %44

; <label>:44:                                     ; preds = %43
  br label %12

; <label>:45:                                     ; preds = %12
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %47 = load i64, i64* %5, align 8
  call void @lua_pushinteger(%struct.lua_State* %46, i64 %47)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_unpack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.Header, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %union.Ftypes, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call i8* @luaL_checklstring(%struct.lua_State* %17, i32 1, i64* null)
  store i8* %18, i8** %4, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i8* @luaL_checklstring(%struct.lua_State* %19, i32 2, i64* %5)
  store i8* %20, i8** %6, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = call i64 @luaL_optinteger(%struct.lua_State* %21, i32 3, i64 1)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @posrelat(i64 %22, i64 %23)
  %25 = sub i64 %24, 1
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %1
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %31 = call i32 @luaL_argerror(%struct.lua_State* %30, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0))
  %32 = icmp ne i32 %31, 0
  br label %33

; <label>:33:                                     ; preds = %29, %1
  %34 = phi i1 [ true, %1 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @initheader(%struct.lua_State* %36, %struct.Header* %3)
  br label %37

; <label>:37:                                     ; preds = %183, %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %188

; <label>:42:                                     ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @getdetails(%struct.Header* %3, i64 %43, i8** %4, i32* %9, i32* %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load i64, i64* %7, align 8
  %51 = xor i64 %50, -1
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %42
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = load i64, i64* %5, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %53, %42
  %64 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %65 = call i32 @luaL_argerror(%struct.lua_State* %64, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %66

; <label>:66:                                     ; preds = %63, %53
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkstack(%struct.lua_State* %71, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0))
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %183 [
    i32 0, label %75
    i32 1, label %75
    i32 2, label %89
    i32 3, label %119
    i32 4, label %127
    i32 5, label %163
    i32 7, label %180
    i32 6, label %180
    i32 8, label %180
  ]

; <label>:75:                                     ; preds = %66, %66
  %76 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = getelementptr inbounds %struct.Header, %struct.Header* %3, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @unpackint(%struct.lua_State* %76, i8* %79, i32 %81, i32 %82, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %88 = load i64, i64* %12, align 8
  call void @lua_pushinteger(%struct.lua_State* %87, i64 %88)
  br label %183

; <label>:89:                                     ; preds = %66
  %90 = bitcast %union.Ftypes* %13 to [40 x i8]*
  %91 = getelementptr inbounds [40 x i8], [40 x i8]* %90, i32 0, i32 0
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i32, i32* %9, align 4
  %96 = getelementptr inbounds %struct.Header, %struct.Header* %3, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  call void @copywithendian(i8* %91, i8* %94, i32 %95, i32 %97)
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %89
  %102 = bitcast %union.Ftypes* %13 to float*
  %103 = load volatile float, float* %102, align 8
  %104 = fpext float %103 to double
  store double %104, double* %14, align 8
  br label %116

; <label>:105:                                    ; preds = %89
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %105
  %110 = bitcast %union.Ftypes* %13 to double*
  %111 = load volatile double, double* %110, align 8
  store double %111, double* %14, align 8
  br label %115

; <label>:112:                                    ; preds = %105
  %113 = bitcast %union.Ftypes* %13 to double*
  %114 = load volatile double, double* %113, align 8
  store double %114, double* %14, align 8
  br label %115

; <label>:115:                                    ; preds = %112, %109
  br label %116

; <label>:116:                                    ; preds = %115, %101
  %117 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %118 = load double, double* %14, align 8
  call void @lua_pushnumber(%struct.lua_State* %117, double %118)
  br label %183

; <label>:119:                                    ; preds = %66
  %120 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = call i8* @lua_pushlstring(%struct.lua_State* %120, i8* %123, i64 %125)
  br label %183

; <label>:127:                                    ; preds = %66
  %128 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = getelementptr inbounds %struct.Header, %struct.Header* %3, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @unpackint(%struct.lua_State* %128, i8* %131, i32 %133, i32 %134, i32 0)
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* %15, align 8
  %138 = add i64 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %138, %140
  %142 = load i64, i64* %5, align 8
  %143 = icmp ule i64 %141, %142
  br i1 %143, label %148, label %144

; <label>:144:                                    ; preds = %127
  %145 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %146 = call i32 @luaL_argerror(%struct.lua_State* %145, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  %147 = icmp ne i32 %146, 0
  br label %148

; <label>:148:                                    ; preds = %144, %127
  %149 = phi i1 [ true, %127 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i64, i64* %15, align 8
  %159 = call i8* @lua_pushlstring(%struct.lua_State* %151, i8* %157, i64 %158)
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %7, align 8
  br label %183

; <label>:163:                                    ; preds = %66
  %164 = load i8*, i8** %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = call i64 @strlen(i8* %166) #7
  %168 = trunc i64 %167 to i32
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %16, align 8
  %170 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i64, i64* %16, align 8
  %175 = call i8* @lua_pushlstring(%struct.lua_State* %170, i8* %173, i64 %174)
  %176 = load i64, i64* %16, align 8
  %177 = add i64 %176, 1
  %178 = load i64, i64* %7, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %7, align 8
  br label %183

; <label>:180:                                    ; preds = %66, %66, %66
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %8, align 4
  br label %183

; <label>:183:                                    ; preds = %66, %180, %163, %148, %119, %116, %75
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %7, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %7, align 8
  br label %37

; <label>:188:                                    ; preds = %37
  %189 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %190 = load i64, i64* %7, align 8
  %191 = add i64 %190, 1
  call void @lua_pushinteger(%struct.lua_State* %189, i64 %191)
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  ret i32 %193
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @posrelat(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %3, align 8
  br label %21

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = sub i64 0, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  store i64 0, i64* %3, align 8
  br label %21

; <label>:16:                                     ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %17, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %21

; <label>:21:                                     ; preds = %16, %15, %8
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writer(%struct.lua_State*, i8*, i64, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.luaL_Buffer*
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %11, i8* %12, i64 %13)
  ret i32 0
}

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.MatchState, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = call i8* @luaL_checklstring(%struct.lua_State* %16, i32 1, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = call i8* @luaL_checklstring(%struct.lua_State* %18, i32 2, i64* %7)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = call i64 @luaL_optinteger(%struct.lua_State* %20, i32 3, i64 1)
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @posrelat(i64 %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %24, 1
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %2
  store i64 1, i64* %10, align 8
  br label %35

; <label>:27:                                     ; preds = %2
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushnil(%struct.lua_State* %33)
  store i32 1, i32* %3, align 4
  br label %145

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

; <label>:38:                                     ; preds = %35
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = call i32 @lua_toboolean(%struct.lua_State* %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @nospecials(i8* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

; <label>:47:                                     ; preds = %42, %38
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = add i64 %54, 1
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i8* @lmemfind(i8* %51, i64 %55, i8* %56, i64 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %77

; <label>:61:                                     ; preds = %47
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = add nsw i64 %67, 1
  call void @lua_pushinteger(%struct.lua_State* %62, i64 %68)
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %74, %75
  call void @lua_pushinteger(%struct.lua_State* %69, i64 %76)
  store i32 2, i32* %3, align 4
  br label %145

; <label>:77:                                     ; preds = %47
  br label %143

; <label>:78:                                     ; preds = %42, %35
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 94
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %78
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %7, align 8
  br label %95

; <label>:95:                                     ; preds = %90, %78
  %96 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %7, align 8
  call void @prepstate(%struct.MatchState* %12, %struct.lua_State* %96, i8* %97, i64 %98, i8* %99, i64 %100)
  br label %101

; <label>:101:                                    ; preds = %140, %95
  call void @reprepstate(%struct.MatchState* %12)
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i8* @match(%struct.MatchState* %12, i8* %102, i8* %103)
  store i8* %104, i8** %15, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %129

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

; <label>:109:                                    ; preds = %106
  %110 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = add nsw i64 %115, 1
  call void @lua_pushinteger(%struct.lua_State* %110, i64 %116)
  %117 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  call void @lua_pushinteger(%struct.lua_State* %117, i64 %122)
  %123 = call i32 @push_captures(%struct.MatchState* %12, i8* null, i8* null)
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %3, align 4
  br label %145

; <label>:125:                                    ; preds = %106
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 @push_captures(%struct.MatchState* %12, i8* %126, i8* %127)
  store i32 %128, i32* %3, align 4
  br label %145

; <label>:129:                                    ; preds = %101
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %13, align 8
  %133 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ult i8* %131, %134
  br i1 %135, label %136, label %140

; <label>:136:                                    ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br label %140

; <label>:140:                                    ; preds = %136, %130
  %141 = phi i1 [ false, %130 ], [ %139, %136 ]
  br i1 %141, label %101, label %142

; <label>:142:                                    ; preds = %140
  br label %143

; <label>:143:                                    ; preds = %142, %77
  %144 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushnil(%struct.lua_State* %144)
  store i32 1, i32* %3, align 4
  br label %145

; <label>:145:                                    ; preds = %143, %125, %109, %61, %32
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare void @lua_pushnil(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nospecials(i8*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

; <label>:7:                                      ; preds = %22, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = call i8* @strpbrk(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #7
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %7
  store i32 0, i32* %3, align 4
  br label %27

; <label>:14:                                     ; preds = %7
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = call i64 @strlen(i8* %17) #7
  %19 = add i64 %18, 1
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %6, align 8
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %7, label %26

; <label>:26:                                     ; preds = %22
  store i32 1, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lmemfind(i8*, i64, i8*, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %5, align 8
  br label %62

; <label>:15:                                     ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %15
  store i8* null, i8** %5, align 8
  br label %62

; <label>:20:                                     ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %7, align 8
  br label %26

; <label>:26:                                     ; preds = %60, %20
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i64, i64* %7, align 8
  %35 = call i8* @memchr(i8* %30, i32 %33, i64 %34) #7
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br label %37

; <label>:37:                                     ; preds = %29, %26
  %38 = phi i1 [ false, %26 ], [ %36, %29 ]
  br i1 %38, label %39, label %61

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @memcmp(i8* %42, i8* %44, i64 %45) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %39
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %5, align 8
  br label %62

; <label>:51:                                     ; preds = %39
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %6, align 8
  br label %60

; <label>:60:                                     ; preds = %51
  br label %26

; <label>:61:                                     ; preds = %37
  store i8* null, i8** %5, align 8
  br label %62

; <label>:62:                                     ; preds = %61, %48, %19, %13
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepstate(%struct.MatchState*, %struct.lua_State*, i8*, i64, i8*, i64) #0 {
  %7 = alloca %struct.MatchState*, align 8
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.MatchState* %0, %struct.MatchState** %7, align 8
  store %struct.lua_State* %1, %struct.lua_State** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %14 = load %struct.MatchState*, %struct.MatchState** %7, align 8
  %15 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %14, i32 0, i32 3
  store %struct.lua_State* %13, %struct.lua_State** %15, align 8
  %16 = load %struct.MatchState*, %struct.MatchState** %7, align 8
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %16, i32 0, i32 4
  store i32 200, i32* %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.MatchState*, %struct.MatchState** %7, align 8
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load %struct.MatchState*, %struct.MatchState** %7, align 8
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load %struct.MatchState*, %struct.MatchState** %7, align 8
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprepstate(%struct.MatchState*) #0 {
  %2 = alloca %struct.MatchState*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %2, align 8
  %3 = load %struct.MatchState*, %struct.MatchState** %2, align 8
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 5
  store i8 0, i8* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match(%struct.MatchState*, i8*, i8*) #0 {
  %4 = alloca %struct.MatchState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %3
  %17 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %17, i32 0, i32 3
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  br label %21

; <label>:21:                                     ; preds = %16, %3
  br label %22

; <label>:22:                                     ; preds = %222, %203, %184, %152, %139, %89, %21
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %23, %26
  br i1 %27, label %28, label %229

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %158 [
    i32 40, label %32
    i32 41, label %51
    i32 36, label %57
    i32 37, label %76
  ]

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 41
  br i1 %37, label %38, label %44

; <label>:38:                                     ; preds = %32
  %39 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = call i8* @start_capture(%struct.MatchState* %39, i8* %40, i8* %42, i32 -2)
  store i8* %43, i8** %5, align 8
  br label %50

; <label>:44:                                     ; preds = %32
  %45 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @start_capture(%struct.MatchState* %45, i8* %46, i8* %48, i32 -1)
  store i8* %49, i8** %5, align 8
  br label %50

; <label>:50:                                     ; preds = %44, %38
  br label %228

; <label>:51:                                     ; preds = %28
  %52 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i8* @end_capture(%struct.MatchState* %52, i8* %53, i8* %55)
  store i8* %56, i8** %5, align 8
  br label %228

; <label>:57:                                     ; preds = %28
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %61 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %59, %62
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %57
  br label %159

; <label>:65:                                     ; preds = %57
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %68 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %66, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %65
  %72 = load i8*, i8** %5, align 8
  br label %74

; <label>:73:                                     ; preds = %65
  br label %74

; <label>:74:                                     ; preds = %73, %71
  %75 = phi i8* [ %72, %71 ], [ null, %73 ]
  store i8* %75, i8** %5, align 8
  br label %228

; <label>:76:                                     ; preds = %28
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %156 [
    i32 98, label %81
    i32 102, label %93
    i32 48, label %142
    i32 49, label %142
    i32 50, label %142
    i32 51, label %142
    i32 52, label %142
    i32 53, label %142
    i32 54, label %142
    i32 55, label %142
    i32 56, label %142
    i32 57, label %142
  ]

; <label>:81:                                     ; preds = %76
  %82 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = call i8* @matchbalance(%struct.MatchState* %82, i8* %83, i8* %85)
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %91, i8** %6, align 8
  br label %22

; <label>:92:                                     ; preds = %81
  br label %157

; <label>:93:                                     ; preds = %76
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 91
  br i1 %99, label %100, label %105

; <label>:100:                                    ; preds = %93
  %101 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %102 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %101, i32 0, i32 3
  %103 = load %struct.lua_State*, %struct.lua_State** %102, align 8
  %104 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  br label %105

; <label>:105:                                    ; preds = %100, %93
  %106 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @classend(%struct.MatchState* %106, i8* %107)
  store i8* %108, i8** %7, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %111 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %109, %112
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %105
  br label %120

; <label>:115:                                    ; preds = %105
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  br label %120

; <label>:120:                                    ; preds = %115, %114
  %121 = phi i32 [ 0, %114 ], [ %119, %115 ]
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %8, align 1
  %123 = load i8, i8* %8, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  %128 = call i32 @matchbracketclass(i32 %124, i8* %125, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

; <label>:130:                                    ; preds = %120
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 -1
  %137 = call i32 @matchbracketclass(i32 %133, i8* %134, i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

; <label>:139:                                    ; preds = %130
  %140 = load i8*, i8** %7, align 8
  store i8* %140, i8** %6, align 8
  br label %22

; <label>:141:                                    ; preds = %130, %120
  store i8* null, i8** %5, align 8
  br label %157

; <label>:142:                                    ; preds = %76, %76, %76, %76, %76, %76, %76, %76, %76, %76
  %143 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = call i8* @match_capture(%struct.MatchState* %143, i8* %144, i32 %148)
  store i8* %149, i8** %5, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

; <label>:152:                                    ; preds = %142
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 2
  store i8* %154, i8** %6, align 8
  br label %22

; <label>:155:                                    ; preds = %142
  br label %157

; <label>:156:                                    ; preds = %76
  br label %159

; <label>:157:                                    ; preds = %155, %141, %92
  br label %228

; <label>:158:                                    ; preds = %28
  br label %159

; <label>:159:                                    ; preds = %158, %156, %64
  %160 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = call i8* @classend(%struct.MatchState* %160, i8* %161)
  store i8* %162, i8** %9, align 8
  %163 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @singlematch(%struct.MatchState* %163, i8* %164, i8* %165, i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %189, label %169

; <label>:169:                                    ; preds = %159
  %170 = load i8*, i8** %9, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 42
  br i1 %173, label %184, label %174

; <label>:174:                                    ; preds = %169
  %175 = load i8*, i8** %9, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 63
  br i1 %178, label %184, label %179

; <label>:179:                                    ; preds = %174
  %180 = load i8*, i8** %9, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %184, label %187

; <label>:184:                                    ; preds = %179, %174, %169
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %6, align 8
  br label %22

; <label>:187:                                    ; preds = %179
  store i8* null, i8** %5, align 8
  br label %188

; <label>:188:                                    ; preds = %187
  br label %227

; <label>:189:                                    ; preds = %159
  %190 = load i8*, i8** %9, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  switch i32 %192, label %222 [
    i32 63, label %193
    i32 43, label %207
    i32 42, label %210
    i32 45, label %216
  ]

; <label>:193:                                    ; preds = %189
  %194 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = call i8* @match(%struct.MatchState* %194, i8* %196, i8* %198)
  store i8* %199, i8** %10, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %193
  %202 = load i8*, i8** %10, align 8
  store i8* %202, i8** %5, align 8
  br label %206

; <label>:203:                                    ; preds = %193
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  store i8* %205, i8** %6, align 8
  br label %22

; <label>:206:                                    ; preds = %201
  br label %226

; <label>:207:                                    ; preds = %189
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %5, align 8
  br label %210

; <label>:210:                                    ; preds = %189, %207
  %211 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = call i8* @max_expand(%struct.MatchState* %211, i8* %212, i8* %213, i8* %214)
  store i8* %215, i8** %5, align 8
  br label %226

; <label>:216:                                    ; preds = %189
  %217 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %218 = load i8*, i8** %5, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = call i8* @min_expand(%struct.MatchState* %217, i8* %218, i8* %219, i8* %220)
  store i8* %221, i8** %5, align 8
  br label %226

; <label>:222:                                    ; preds = %189
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %5, align 8
  %225 = load i8*, i8** %9, align 8
  store i8* %225, i8** %6, align 8
  br label %22

; <label>:226:                                    ; preds = %216, %210, %206
  br label %227

; <label>:227:                                    ; preds = %226, %188
  br label %228

; <label>:228:                                    ; preds = %227, %157, %74, %51, %50
  br label %229

; <label>:229:                                    ; preds = %228, %22
  %230 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %231 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = load i8*, i8** %5, align 8
  ret i8* %234
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_captures(%struct.MatchState*, i8*, i8*) #0 {
  %4 = alloca %struct.MatchState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %9, i32 0, i32 5
  %11 = load i8, i8* %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  br label %23

; <label>:18:                                     ; preds = %14, %3
  %19 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %19, i32 0, i32 5
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i32
  br label %23

; <label>:23:                                     ; preds = %18, %17
  %24 = phi i32 [ 1, %17 ], [ %22, %18 ]
  store i32 %24, i32* %8, align 4
  %25 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %26 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %25, i32 0, i32 3
  %27 = load %struct.lua_State*, %struct.lua_State** %26, align 8
  %28 = load i32, i32* %8, align 4
  call void @luaL_checkstack(%struct.lua_State* %27, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %7, align 4
  br label %29

; <label>:29:                                     ; preds = %38, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %29
  %34 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  call void @push_onecapture(%struct.MatchState* %34, i32 %35, i8* %36, i8* %37)
  br label %38

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %29

; <label>:41:                                     ; preds = %29
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @start_capture(%struct.MatchState*, i8*, i8*, i32) #0 {
  %5 = alloca %struct.MatchState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %11, i32 0, i32 5
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 32
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %4
  %18 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %19 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %18, i32 0, i32 3
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %17, %4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %24, i32 0, i32 6
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %25, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* %23, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %33 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %32, i32 0, i32 6
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %33, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i64 %31, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %42 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %41, i32 0, i32 5
  store i8 %40, i8* %42, align 4
  %43 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @match(%struct.MatchState* %43, i8* %44, i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %22
  %49 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %49, i32 0, i32 5
  %51 = load i8, i8* %50, align 4
  %52 = add i8 %51, -1
  store i8 %52, i8* %50, align 4
  br label %53

; <label>:53:                                     ; preds = %48, %22
  %54 = load i8*, i8** %9, align 8
  ret i8* %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @end_capture(%struct.MatchState*, i8*, i8*) #0 {
  %4 = alloca %struct.MatchState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %10 = call i32 @capture_to_close(%struct.MatchState* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 6
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %13, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %11 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %23 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %22, i32 0, i32 6
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i64 %21, i64* %27, align 8
  %28 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @match(%struct.MatchState* %28, i8* %29, i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %3
  %34 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %34, i32 0, i32 6
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %35, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1
  store i64 -1, i64* %39, align 8
  br label %40

; <label>:40:                                     ; preds = %33, %3
  %41 = load i8*, i8** %8, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @matchbalance(%struct.MatchState*, i8*, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MatchState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  %16 = icmp uge i8* %11, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %19 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %18, i32 0, i32 3
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %17, %3
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  store i8* null, i8** %4, align 8
  br label %73

; <label>:31:                                     ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %39

; <label>:39:                                     ; preds = %70, %31
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %43 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ult i8* %41, %44
  br i1 %45, label %46, label %71

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %4, align 8
  br label %73

; <label>:59:                                     ; preds = %52
  br label %70

; <label>:60:                                     ; preds = %46
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

; <label>:69:                                     ; preds = %66, %60
  br label %70

; <label>:70:                                     ; preds = %69, %59
  br label %39

; <label>:71:                                     ; preds = %39
  br label %72

; <label>:72:                                     ; preds = %71
  store i8* null, i8** %4, align 8
  br label %73

; <label>:73:                                     ; preds = %72, %56, %30
  %74 = load i8*, i8** %4, align 8
  ret i8* %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @classend(%struct.MatchState*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.MatchState*, align 8
  %5 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %5, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %68 [
    i32 37, label %10
    i32 91, label %24
  ]

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %11, %14
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %10
  %17 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %17, i32 0, i32 3
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  br label %21

; <label>:21:                                     ; preds = %16, %10
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %3, align 8
  br label %70

; <label>:24:                                     ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 94
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %24
  br label %33

; <label>:33:                                     ; preds = %60, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %36 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %34, %37
  br i1 %38, label %39, label %44

; <label>:39:                                     ; preds = %33
  %40 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %41 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %40, i32 0, i32 3
  %42 = load %struct.lua_State*, %struct.lua_State** %41, align 8
  %43 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  br label %44

; <label>:44:                                     ; preds = %39, %33
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %59

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %53 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ult i8* %51, %54
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  br label %59

; <label>:59:                                     ; preds = %56, %50, %44
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 93
  br i1 %64, label %33, label %65

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %3, align 8
  br label %70

; <label>:68:                                     ; preds = %2
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %3, align 8
  br label %70

; <label>:70:                                     ; preds = %68, %65, %21
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchbracketclass(i32, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 94
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %3
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  br label %17

; <label>:17:                                     ; preds = %14, %3
  br label %18

; <label>:18:                                     ; preds = %79, %17
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %80

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %40

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @match_class(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %85

; <label>:39:                                     ; preds = %28
  br label %79

; <label>:40:                                     ; preds = %23
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %69

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %69

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %68

; <label>:60:                                     ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %85

; <label>:68:                                     ; preds = %60, %51
  br label %78

; <label>:69:                                     ; preds = %46, %40
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %85

; <label>:77:                                     ; preds = %69
  br label %78

; <label>:78:                                     ; preds = %77, %68
  br label %79

; <label>:79:                                     ; preds = %78, %39
  br label %18

; <label>:80:                                     ; preds = %18
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

; <label>:85:                                     ; preds = %80, %75, %66, %37
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match_capture(%struct.MatchState*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MatchState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.MatchState* %0, %struct.MatchState** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @check_capture(%struct.MatchState* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 6
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %13, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %3
  %29 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %29, i32 0, i32 6
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @memcmp(i8* %35, i8* %36, i64 %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %28
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %4, align 8
  br label %45

; <label>:44:                                     ; preds = %28, %3
  store i8* null, i8** %4, align 8
  br label %45

; <label>:45:                                     ; preds = %44, %40
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlematch(%struct.MatchState*, i8*, i8*, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MatchState*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp uge i8* %11, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %38 [
    i32 46, label %24
    i32 37, label %25
    i32 91, label %32
  ]

; <label>:24:                                     ; preds = %17
  store i32 1, i32* %5, align 4
  br label %45

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 @match_class(i32 %26, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %45

; <label>:32:                                     ; preds = %17
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = call i32 @matchbracketclass(i32 %33, i8* %34, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %45

; <label>:38:                                     ; preds = %17
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %38, %32, %25, %24, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @max_expand(%struct.MatchState*, i8*, i8*, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MatchState*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

; <label>:12:                                     ; preds = %21, %4
  %13 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @singlematch(%struct.MatchState* %13, i8* %16, i8* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* %10, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %10, align 8
  br label %12

; <label>:24:                                     ; preds = %12
  br label %25

; <label>:25:                                     ; preds = %40, %24
  %26 = load i64, i64* %10, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %43

; <label>:28:                                     ; preds = %25
  %29 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @match(%struct.MatchState* %29, i8* %32, i8* %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %28
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %5, align 8
  br label %44

; <label>:40:                                     ; preds = %28
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %10, align 8
  br label %25

; <label>:43:                                     ; preds = %25
  store i8* null, i8** %5, align 8
  br label %44

; <label>:44:                                     ; preds = %43, %38
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @min_expand(%struct.MatchState*, i8*, i8*, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MatchState*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  br label %11

; <label>:11:                                     ; preds = %33, %4
  %12 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i8* @match(%struct.MatchState* %12, i8* %13, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %5, align 8
  br label %34

; <label>:21:                                     ; preds = %11
  %22 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @singlematch(%struct.MatchState* %22, i8* %23, i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %32

; <label>:31:                                     ; preds = %21
  store i8* null, i8** %5, align 8
  br label %34

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %32
  br label %11

; <label>:34:                                     ; preds = %31, %19
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_to_close(%struct.MatchState*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MatchState*, align 8
  %4 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %3, align 8
  %5 = load %struct.MatchState*, %struct.MatchState** %3, align 8
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i32 0, i32 5
  %7 = load i8, i8* %6, align 4
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  br label %11

; <label>:11:                                     ; preds = %26, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %11
  %15 = load %struct.MatchState*, %struct.MatchState** %3, align 8
  %16 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %15, i32 0, i32 6
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %16, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %34

; <label>:25:                                     ; preds = %14
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  br label %11

; <label>:29:                                     ; preds = %11
  %30 = load %struct.MatchState*, %struct.MatchState** %3, align 8
  %31 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %30, i32 0, i32 3
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0))
  store i32 %33, i32* %2, align 4
  br label %34

; <label>:34:                                     ; preds = %29, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_class(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @tolower(i32 %7) #7
  switch i32 %8, label %103 [
    i32 97, label %9
    i32 99, label %18
    i32 100, label %27
    i32 103, label %36
    i32 108, label %45
    i32 112, label %54
    i32 115, label %63
    i32 117, label %72
    i32 119, label %81
    i32 120, label %90
    i32 122, label %99
  ]

; <label>:9:                                      ; preds = %2
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1024
  store i32 %17, i32* %6, align 4
  br label %108

; <label>:18:                                     ; preds = %2
  %19 = call i16** @__ctype_b_loc() #8
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 2
  store i32 %26, i32* %6, align 4
  br label %108

; <label>:27:                                     ; preds = %2
  %28 = call i16** @__ctype_b_loc() #8
  %29 = load i16*, i16** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 2048
  store i32 %35, i32* %6, align 4
  br label %108

; <label>:36:                                     ; preds = %2
  %37 = call i16** @__ctype_b_loc() #8
  %38 = load i16*, i16** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 32768
  store i32 %44, i32* %6, align 4
  br label %108

; <label>:45:                                     ; preds = %2
  %46 = call i16** @__ctype_b_loc() #8
  %47 = load i16*, i16** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 512
  store i32 %53, i32* %6, align 4
  br label %108

; <label>:54:                                     ; preds = %2
  %55 = call i16** @__ctype_b_loc() #8
  %56 = load i16*, i16** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 4
  store i32 %62, i32* %6, align 4
  br label %108

; <label>:63:                                     ; preds = %2
  %64 = call i16** @__ctype_b_loc() #8
  %65 = load i16*, i16** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 8192
  store i32 %71, i32* %6, align 4
  br label %108

; <label>:72:                                     ; preds = %2
  %73 = call i16** @__ctype_b_loc() #8
  %74 = load i16*, i16** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 256
  store i32 %80, i32* %6, align 4
  br label %108

; <label>:81:                                     ; preds = %2
  %82 = call i16** @__ctype_b_loc() #8
  %83 = load i16*, i16** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 8
  store i32 %89, i32* %6, align 4
  br label %108

; <label>:90:                                     ; preds = %2
  %91 = call i16** @__ctype_b_loc() #8
  %92 = load i16*, i16** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %97, 4096
  store i32 %98, i32* %6, align 4
  br label %108

; <label>:99:                                     ; preds = %2
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %6, align 4
  br label %108

; <label>:103:                                    ; preds = %2
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %127

; <label>:108:                                    ; preds = %99, %90, %81, %72, %63, %54, %45, %36, %27, %18, %9
  %109 = call i16** @__ctype_b_loc() #8
  %110 = load i16*, i16** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %110, i64 %112
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %115, 512
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

; <label>:118:                                    ; preds = %108
  %119 = load i32, i32* %6, align 4
  br label %125

; <label>:120:                                    ; preds = %108
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  br label %125

; <label>:125:                                    ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  store i32 %126, i32* %3, align 4
  br label %127

; <label>:127:                                    ; preds = %125, %103
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_capture(%struct.MatchState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MatchState*, align 8
  %5 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 49
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %26, label %10

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 5
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %11, %15
  br i1 %16, label %26, label %17

; <label>:17:                                     ; preds = %10
  %18 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %19 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %18, i32 0, i32 6
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %17, %10, %2
  %27 = load %struct.MatchState*, %struct.MatchState** %4, align 8
  %28 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %27, i32 0, i32 3
  %29 = load %struct.lua_State*, %struct.lua_State** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i32 %31)
  store i32 %32, i32* %3, align 4
  br label %35

; <label>:33:                                     ; preds = %17
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %33, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_onecapture(%struct.MatchState*, i32, i8*, i8*) #0 {
  %5 = alloca %struct.MatchState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.MatchState* %0, %struct.MatchState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %11, i32 0, i32 5
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %10, %14
  br i1 %15, label %16, label %38

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

; <label>:19:                                     ; preds = %16
  %20 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %20, i32 0, i32 3
  %22 = load %struct.lua_State*, %struct.lua_State** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = call i8* @lua_pushlstring(%struct.lua_State* %22, i8* %23, i64 %28)
  br label %37

; <label>:30:                                     ; preds = %16
  %31 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %32 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %31, i32 0, i32 3
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i32 %35)
  br label %37

; <label>:37:                                     ; preds = %30, %19
  br label %88

; <label>:38:                                     ; preds = %4
  %39 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %40 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %39, i32 0, i32 6
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %40, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %38
  %49 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %49, i32 0, i32 3
  %51 = load %struct.lua_State*, %struct.lua_State** %50, align 8
  %52 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %48, %38
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, -2
  br i1 %55, label %56, label %74

; <label>:56:                                     ; preds = %53
  %57 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %58 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %57, i32 0, i32 3
  %59 = load %struct.lua_State*, %struct.lua_State** %58, align 8
  %60 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %61 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %60, i32 0, i32 6
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %68 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %66 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add nsw i64 %72, 1
  call void @lua_pushinteger(%struct.lua_State* %59, i64 %73)
  br label %87

; <label>:74:                                     ; preds = %53
  %75 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %76 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %75, i32 0, i32 3
  %77 = load %struct.lua_State*, %struct.lua_State** %76, align 8
  %78 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %79 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %78, i32 0, i32 6
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %79, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i8* @lua_pushlstring(%struct.lua_State* %77, i8* %84, i64 %85)
  br label %87

; <label>:87:                                     ; preds = %74, %56
  br label %88

; <label>:88:                                     ; preds = %87, %37
  ret void
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scanformat(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

; <label>:9:                                      ; preds = %22, %3
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %17) #7
  %19 = icmp ne i8* %18, null
  br label %20

; <label>:20:                                     ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %20
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  br label %9

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp uge i64 %30, 6
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %25
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0))
  br label %35

; <label>:35:                                     ; preds = %32, %25
  %36 = call i16** @__ctype_b_loc() #8
  %37 = load i16*, i16** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %37, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 2048
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %35
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %50

; <label>:50:                                     ; preds = %47, %35
  %51 = call i16** @__ctype_b_loc() #8
  %52 = load i16*, i16** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %52, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %50
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %65

; <label>:65:                                     ; preds = %62, %50
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %103

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  %73 = call i16** @__ctype_b_loc() #8
  %74 = load i16*, i16** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %74, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 2048
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84:                                     ; preds = %70
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  br label %87

; <label>:87:                                     ; preds = %84, %70
  %88 = call i16** @__ctype_b_loc() #8
  %89 = load i16*, i16** %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %89, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 2048
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %87
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  br label %102

; <label>:102:                                    ; preds = %99, %87
  br label %103

; <label>:103:                                    ; preds = %102, %65
  %104 = call i16** @__ctype_b_loc() #8
  %105 = load i16*, i16** %104, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %105, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 2048
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

; <label>:115:                                    ; preds = %103
  %116 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %117 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i32 0, i32 0))
  br label %118

; <label>:118:                                    ; preds = %115, %103
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  store i8 37, i8* %119, align 1
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = add nsw i64 %127, 1
  %129 = mul i64 %128, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 %129, i32 1, i1 false)
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = add nsw i64 %134, 1
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %7, align 8
  ret i8* %139
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addlenmod(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #7
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10) #7
  store i64 %11, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %7, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strcpy(i8* %20, i8* %21) #6
  %23 = load i8, i8* %7, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8 %23, i8* %29, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 0, i8* %34, align 1
  ret void
}

declare double @luaL_checknumber(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addliteral(%struct.lua_State*, %struct.luaL_Buffer*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @lua_type(%struct.lua_State* %14, i32 %15)
  switch i32 %16, label %65 [
    i32 4, label %17
    i32 3, label %24
    i32 0, label %60
    i32 1, label %60
  ]

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @lua_tolstring(%struct.lua_State* %18, i32 %19, i64* %7)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %7, align 8
  call void @addquoted(%struct.luaL_Buffer* %21, i8* %22, i64 %23)
  br label %69

; <label>:24:                                     ; preds = %3
  %25 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %26 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %25, i64 428)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @lua_isinteger(%struct.lua_State* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

; <label>:31:                                     ; preds = %24
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call double @lua_tonumberx(%struct.lua_State* %32, i32 %33, i32* null)
  store double %34, double* %11, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load double, double* %11, align 8
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 428, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), double %37) #6
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  call void @checkdp(i8* %39, i32 %40)
  br label %53

; <label>:41:                                     ; preds = %24
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @lua_tointegerx(%struct.lua_State* %42, i32 %43, i32* null)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp eq i64 %45, -9223372036854775808
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %49, i64 428, i8* %50, i64 %51) #6
  store i32 %52, i32* %10, align 4
  br label %53

; <label>:53:                                     ; preds = %41, %31
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %57 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %69

; <label>:60:                                     ; preds = %3, %3
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @luaL_tolstring(%struct.lua_State* %61, i32 %62, i64* null)
  %64 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %64)
  br label %69

; <label>:65:                                     ; preds = %3
  %66 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @luaL_argerror(%struct.lua_State* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0))
  br label %69

; <label>:69:                                     ; preds = %65, %60, %53, %17
  ret void
}

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addquoted(%struct.luaL_Buffer*, i8*, i64) #0 {
  %4 = alloca %struct.luaL_Buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10 x i8], align 1
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %3
  %16 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %17 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %16, i64 1)
  %18 = icmp ne i8* %17, null
  br label %19

; <label>:19:                                     ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %23 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %26 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 34, i8* %29, align 1
  br label %30

; <label>:30:                                     ; preds = %162, %19
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %6, align 8
  %33 = icmp ne i64 %31, 0
  br i1 %33, label %34, label %165

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %96

; <label>:49:                                     ; preds = %44, %39, %34
  %50 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %51 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %54 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %61, label %57

; <label>:57:                                     ; preds = %49
  %58 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %59 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %58, i64 1)
  %60 = icmp ne i8* %59, null
  br label %61

; <label>:61:                                     ; preds = %57, %49
  %62 = phi i1 [ true, %49 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %65 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %68 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 92, i8* %71, align 1
  %72 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %73 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %76 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %61
  %80 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %81 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %80, i64 1)
  %82 = icmp ne i8* %81, null
  br label %83

; <label>:83:                                     ; preds = %79, %61
  %84 = phi i1 [ true, %61 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %89 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %92 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %87, i8* %95, align 1
  br label %162

; <label>:96:                                     ; preds = %44
  %97 = call i16** @__ctype_b_loc() #8
  %98 = load i16*, i16** %97, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %98, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 2
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %136

; <label>:108:                                    ; preds = %96
  %109 = call i16** @__ctype_b_loc() #8
  %110 = load i16*, i16** %109, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %110, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, 2048
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

; <label>:121:                                    ; preds = %108
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i32 0, i32 0
  %123 = load i8*, i8** %5, align 8
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %122, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i32 %125) #6
  br label %133

; <label>:127:                                    ; preds = %108
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i32 0, i32 0
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %128, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %131) #6
  br label %133

; <label>:133:                                    ; preds = %127, %121
  %134 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i32 0, i32 0
  call void @luaL_addstring(%struct.luaL_Buffer* %134, i8* %135)
  br label %161

; <label>:136:                                    ; preds = %96
  %137 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %138 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %141 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %148, label %144

; <label>:144:                                    ; preds = %136
  %145 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %146 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %145, i64 1)
  %147 = icmp ne i8* %146, null
  br label %148

; <label>:148:                                    ; preds = %144, %136
  %149 = phi i1 [ true, %136 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %154 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %157 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %157, align 8
  %160 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %152, i8* %160, align 1
  br label %161

; <label>:161:                                    ; preds = %148, %133
  br label %162

; <label>:162:                                    ; preds = %161, %83
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %5, align 8
  br label %30

; <label>:165:                                    ; preds = %30
  %166 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %167 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %170 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %177, label %173

; <label>:173:                                    ; preds = %165
  %174 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %175 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %174, i64 1)
  %176 = icmp ne i8* %175, null
  br label %177

; <label>:177:                                    ; preds = %173, %165
  %178 = phi i1 [ true, %165 ], [ %176, %173 ]
  %179 = zext i1 %178 to i32
  %180 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %181 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %184 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 34, i8* %187, align 1
  ret void
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) #1

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkdp(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = call i8* @memchr(i8* %7, i32 46, i64 %9) #7
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %29

; <label>:12:                                     ; preds = %2
  %13 = call %struct.lconv* @localeconv() #6
  %14 = getelementptr inbounds %struct.lconv, %struct.lconv* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %5, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = call i8* @memchr(i8* %18, i32 %20, i64 %22) #7
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %12
  %27 = load i8*, i8** %6, align 8
  store i8 46, i8* %27, align 1
  br label %28

; <label>:28:                                     ; preds = %26, %12
  br label %29

; <label>:29:                                     ; preds = %28, %2
  ret void
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) #1

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #4

declare i8* @lua_newuserdata(%struct.lua_State*, i64) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch_aux(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GMatchState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i8* @lua_touserdata(%struct.lua_State* %7, i32 -1001003)
  %9 = bitcast i8* %8 to %struct.GMatchState*
  store %struct.GMatchState* %9, %struct.GMatchState** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %12 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 3
  store %struct.lua_State* %10, %struct.lua_State** %13, align 8
  %14 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %15 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  br label %17

; <label>:17:                                     ; preds = %53, %1
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %20 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ule i8* %18, %22
  br i1 %23, label %24, label %56

; <label>:24:                                     ; preds = %17
  %25 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %26 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %25, i32 0, i32 3
  call void @reprepstate(%struct.MatchState* %26)
  %27 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %28 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %27, i32 0, i32 3
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %31 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @match(%struct.MatchState* %28, i8* %29, i8* %32)
  store i8* %33, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %52

; <label>:35:                                     ; preds = %24
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %38 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %36, %39
  br i1 %40, label %41, label %52

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %44 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %46 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load %struct.GMatchState*, %struct.GMatchState** %4, align 8
  %48 = getelementptr inbounds %struct.GMatchState, %struct.GMatchState* %47, i32 0, i32 3
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @push_captures(%struct.MatchState* %48, i8* %49, i8* %50)
  store i32 %51, i32* %2, align 4
  br label %57

; <label>:52:                                     ; preds = %35, %24
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %17

; <label>:56:                                     ; preds = %17
  store i32 0, i32* %2, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %41
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_value(%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*, i32) #0 {
  %6 = alloca %struct.MatchState*, align 8
  %7 = alloca %struct.luaL_Buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lua_State*, align 8
  %12 = alloca i32, align 4
  store %struct.MatchState* %0, %struct.MatchState** %6, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %13, i32 0, i32 3
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  store %struct.lua_State* %15, %struct.lua_State** %11, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %31 [
    i32 6, label %17
    i32 5, label %25
  ]

; <label>:17:                                     ; preds = %5
  %18 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  call void @lua_pushvalue(%struct.lua_State* %18, i32 3)
  %19 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @push_captures(%struct.MatchState* %19, i8* %20, i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %24 = load i32, i32* %12, align 4
  call void @lua_callk(%struct.lua_State* %23, i32 %24, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  br label %36

; <label>:25:                                     ; preds = %5
  %26 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  call void @push_onecapture(%struct.MatchState* %26, i32 0, i8* %27, i8* %28)
  %29 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %30 = call i32 @lua_gettable(%struct.lua_State* %29, i32 3)
  br label %36

; <label>:31:                                     ; preds = %5
  %32 = load %struct.MatchState*, %struct.MatchState** %6, align 8
  %33 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  call void @add_s(%struct.MatchState* %32, %struct.luaL_Buffer* %33, i8* %34, i8* %35)
  br label %64

; <label>:36:                                     ; preds = %25, %17
  %37 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %38 = call i32 @lua_toboolean(%struct.lua_State* %37, i32 -1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

; <label>:40:                                     ; preds = %36
  %41 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  call void @lua_settop(%struct.lua_State* %41, i32 -2)
  %42 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = call i8* @lua_pushlstring(%struct.lua_State* %42, i8* %43, i64 %48)
  br label %62

; <label>:50:                                     ; preds = %36
  %51 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %52 = call i32 @lua_isstring(%struct.lua_State* %51, i32 -1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

; <label>:54:                                     ; preds = %50
  %55 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %58 = call i32 @lua_type(%struct.lua_State* %57, i32 -1)
  %59 = call i8* @lua_typename(%struct.lua_State* %56, i32 %58)
  %60 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* %59)
  br label %61

; <label>:61:                                     ; preds = %54, %50
  br label %62

; <label>:62:                                     ; preds = %61, %40
  %63 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %7, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %63)
  br label %64

; <label>:64:                                     ; preds = %62, %31
  ret void
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_gettable(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_s(%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*) #0 {
  %5 = alloca %struct.MatchState*, align 8
  %6 = alloca %struct.luaL_Buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lua_State*, align 8
  %12 = alloca i8*, align 8
  store %struct.MatchState* %0, %struct.MatchState** %5, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %13, i32 0, i32 3
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  store %struct.lua_State* %15, %struct.lua_State** %11, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %17 = call i8* @lua_tolstring(%struct.lua_State* %16, i32 3, i64* %9)
  store i8* %17, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %18

; <label>:18:                                     ; preds = %142, %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %145

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 37
  br i1 %28, label %29, label %56

; <label>:29:                                     ; preds = %22
  %30 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %31 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %34 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %29
  %38 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %39 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %38, i64 1)
  %40 = icmp ne i8* %39, null
  br label %41

; <label>:41:                                     ; preds = %37, %29
  %42 = phi i1 [ true, %29 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %49 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %52 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 %47, i8* %55, align 1
  br label %141

; <label>:56:                                     ; preds = %22
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = call i16** @__ctype_b_loc() #8
  %60 = load i16*, i16** %59, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %60, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 2048
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %109, label %72

; <label>:72:                                     ; preds = %56
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 37
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %72
  %80 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %81 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0), i32 37)
  br label %82

; <label>:82:                                     ; preds = %79, %72
  %83 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %84 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %87 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %82
  %91 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %92 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %91, i64 1)
  %93 = icmp ne i8* %92, null
  br label %94

; <label>:94:                                     ; preds = %90, %82
  %95 = phi i1 [ true, %82 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %102 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %105 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %100, i8* %108, align 1
  br label %140

; <label>:109:                                    ; preds = %56
  %110 = load i8*, i8** %12, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 48
  br i1 %115, label %116, label %124

; <label>:116:                                    ; preds = %109
  %117 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  call void @luaL_addlstring(%struct.luaL_Buffer* %117, i8* %118, i64 %123)
  br label %139

; <label>:124:                                    ; preds = %109
  %125 = load %struct.MatchState*, %struct.MatchState** %5, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = sub nsw i32 %130, 49
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  call void @push_onecapture(%struct.MatchState* %125, i32 %131, i8* %132, i8* %133)
  %134 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %135 = call i8* @luaL_tolstring(%struct.lua_State* %134, i32 -1, i64* null)
  %136 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  call void @lua_rotate(%struct.lua_State* %136, i32 -2, i32 -1)
  %137 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  call void @lua_settop(%struct.lua_State* %137, i32 -2)
  %138 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %138)
  br label %139

; <label>:139:                                    ; preds = %124, %116
  br label %140

; <label>:140:                                    ; preds = %139, %94
  br label %141

; <label>:141:                                    ; preds = %140, %41
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %10, align 8
  br label %18

; <label>:145:                                    ; preds = %18
  ret void
}

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initheader(%struct.lua_State*, %struct.Header*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Header*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Header* %1, %struct.Header** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.Header*, %struct.Header** %4, align 8
  %7 = getelementptr inbounds %struct.Header, %struct.Header* %6, i32 0, i32 0
  store %struct.lua_State* %5, %struct.lua_State** %7, align 8
  %8 = load i8, i8* bitcast (%union.anon* @nativeendian to i8*), align 4
  %9 = sext i8 %8 to i32
  %10 = load %struct.Header*, %struct.Header** %4, align 8
  %11 = getelementptr inbounds %struct.Header, %struct.Header* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.Header*, %struct.Header** %4, align 8
  %13 = getelementptr inbounds %struct.Header, %struct.Header* %12, i32 0, i32 2
  store i32 1, i32* %13, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdetails(%struct.Header*, i64, i8**, i32*, i32*) #0 {
  %6 = alloca %struct.Header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Header* %0, %struct.Header** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.Header*, %struct.Header** %6, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @getoption(%struct.Header* %13, i8** %14, i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %5
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

; <label>:27:                                     ; preds = %21
  %28 = load %struct.Header*, %struct.Header** %6, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = call i32 @getoption(%struct.Header* %28, i8** %29, i32* %12)
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %35, label %32

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %32, %27, %21
  %36 = load %struct.Header*, %struct.Header** %6, align 8
  %37 = getelementptr inbounds %struct.Header, %struct.Header* %36, i32 0, i32 0
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8
  %39 = call i32 @luaL_argerror(%struct.lua_State* %38, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %35, %32
  br label %41

; <label>:41:                                     ; preds = %40, %5
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %44, %41
  %48 = load i32*, i32** %10, align 8
  store i32 0, i32* %48, align 4
  br label %83

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.Header*, %struct.Header** %6, align 8
  %52 = getelementptr inbounds %struct.Header, %struct.Header* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %49
  %56 = load %struct.Header*, %struct.Header** %6, align 8
  %57 = getelementptr inbounds %struct.Header, %struct.Header* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  br label %59

; <label>:59:                                     ; preds = %55, %49
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %59
  %66 = load %struct.Header*, %struct.Header** %6, align 8
  %67 = getelementptr inbounds %struct.Header, %struct.Header* %66, i32 0, i32 0
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8
  %69 = call i32 @luaL_argerror(%struct.lua_State* %68, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %65, %59
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = and i64 %72, %75
  %77 = trunc i64 %76 to i32
  %78 = sub nsw i32 %71, %77
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %78, %80
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %70, %47
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packint(%struct.luaL_Buffer*, i64, i32, i32, i32) #0 {
  %6 = alloca %struct.luaL_Buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %13, i64 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i8
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %5
  br label %27

; <label>:24:                                     ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  br label %27

; <label>:27:                                     ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %20, i64 %29
  store i8 %19, i8* %30, align 1
  store i32 1, i32* %12, align 4
  br label %31

; <label>:31:                                     ; preds = %55, %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %58

; <label>:35:                                     ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = lshr i64 %36, 8
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %35
  %45 = load i32, i32* %12, align 4
  br label %51

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %48, %49
  br label %51

; <label>:51:                                     ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %41, i64 %53
  store i8 %40, i8* %54, align 1
  br label %55

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %31

; <label>:58:                                     ; preds = %31
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %88

; <label>:64:                                     ; preds = %61
  store i32 8, i32* %12, align 4
  br label %65

; <label>:65:                                     ; preds = %84, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %87

; <label>:69:                                     ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %12, align 4
  br label %80

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  br label %80

; <label>:80:                                     ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %70, i64 %82
  store i8 -1, i8* %83, align 1
  br label %84

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %65

; <label>:87:                                     ; preds = %65
  br label %88

; <label>:88:                                     ; preds = %87, %61, %58
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %6, align 8
  %92 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copywithendian(i8*, i8*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i8, i8* bitcast (%union.anon* @nativeendian to i8*), align 4
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %25

; <label>:13:                                     ; preds = %4
  br label %14

; <label>:14:                                     ; preds = %18, %13
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load volatile i8, i8* %19, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store volatile i8 %21, i8* %22, align 1
  br label %14

; <label>:24:                                     ; preds = %14
  br label %42

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  br label %31

; <label>:31:                                     ; preds = %35, %25
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load volatile i8, i8* %36, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %5, align 8
  store volatile i8 %38, i8* %39, align 1
  br label %31

; <label>:41:                                     ; preds = %31
  br label %42

; <label>:42:                                     ; preds = %41, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getoption(%struct.Header*, i8**, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Header*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.Header* %0, %struct.Header** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %90 [
    i32 98, label %16
    i32 66, label %18
    i32 104, label %20
    i32 72, label %22
    i32 108, label %24
    i32 76, label %26
    i32 106, label %28
    i32 74, label %30
    i32 84, label %32
    i32 102, label %34
    i32 100, label %36
    i32 110, label %38
    i32 105, label %40
    i32 73, label %45
    i32 115, label %50
    i32 99, label %55
    i32 122, label %68
    i32 120, label %69
    i32 88, label %71
    i32 32, label %72
    i32 60, label %73
    i32 62, label %76
    i32 61, label %79
    i32 33, label %84
  ]

; <label>:16:                                     ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:18:                                     ; preds = %3
  %19 = load i32*, i32** %7, align 8
  store i32 1, i32* %19, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:20:                                     ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 2, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:22:                                     ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 2, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:24:                                     ; preds = %3
  %25 = load i32*, i32** %7, align 8
  store i32 8, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:26:                                     ; preds = %3
  %27 = load i32*, i32** %7, align 8
  store i32 8, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:28:                                     ; preds = %3
  %29 = load i32*, i32** %7, align 8
  store i32 8, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:30:                                     ; preds = %3
  %31 = load i32*, i32** %7, align 8
  store i32 8, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:32:                                     ; preds = %3
  %33 = load i32*, i32** %7, align 8
  store i32 8, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:34:                                     ; preds = %3
  %35 = load i32*, i32** %7, align 8
  store i32 4, i32* %35, align 4
  store i32 2, i32* %4, align 4
  br label %97

; <label>:36:                                     ; preds = %3
  %37 = load i32*, i32** %7, align 8
  store i32 8, i32* %37, align 4
  store i32 2, i32* %4, align 4
  br label %97

; <label>:38:                                     ; preds = %3
  %39 = load i32*, i32** %7, align 8
  store i32 8, i32* %39, align 4
  store i32 2, i32* %4, align 4
  br label %97

; <label>:40:                                     ; preds = %3
  %41 = load %struct.Header*, %struct.Header** %5, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = call i32 @getnumlimit(%struct.Header* %41, i8** %42, i32 4)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:45:                                     ; preds = %3
  %46 = load %struct.Header*, %struct.Header** %5, align 8
  %47 = load i8**, i8*** %6, align 8
  %48 = call i32 @getnumlimit(%struct.Header* %46, i8** %47, i32 4)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32 1, i32* %4, align 4
  br label %97

; <label>:50:                                     ; preds = %3
  %51 = load %struct.Header*, %struct.Header** %5, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = call i32 @getnumlimit(%struct.Header* %51, i8** %52, i32 8)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  store i32 4, i32* %4, align 4
  br label %97

; <label>:55:                                     ; preds = %3
  %56 = load i8**, i8*** %6, align 8
  %57 = call i32 @getnum(i8** %56, i32 -1)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %55
  %63 = load %struct.Header*, %struct.Header** %5, align 8
  %64 = getelementptr inbounds %struct.Header, %struct.Header* %63, i32 0, i32 0
  %65 = load %struct.lua_State*, %struct.lua_State** %64, align 8
  %66 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %62, %55
  store i32 3, i32* %4, align 4
  br label %97

; <label>:68:                                     ; preds = %3
  store i32 5, i32* %4, align 4
  br label %97

; <label>:69:                                     ; preds = %3
  %70 = load i32*, i32** %7, align 8
  store i32 1, i32* %70, align 4
  store i32 6, i32* %4, align 4
  br label %97

; <label>:71:                                     ; preds = %3
  store i32 7, i32* %4, align 4
  br label %97

; <label>:72:                                     ; preds = %3
  br label %96

; <label>:73:                                     ; preds = %3
  %74 = load %struct.Header*, %struct.Header** %5, align 8
  %75 = getelementptr inbounds %struct.Header, %struct.Header* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %96

; <label>:76:                                     ; preds = %3
  %77 = load %struct.Header*, %struct.Header** %5, align 8
  %78 = getelementptr inbounds %struct.Header, %struct.Header* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %96

; <label>:79:                                     ; preds = %3
  %80 = load i8, i8* bitcast (%union.anon* @nativeendian to i8*), align 4
  %81 = sext i8 %80 to i32
  %82 = load %struct.Header*, %struct.Header** %5, align 8
  %83 = getelementptr inbounds %struct.Header, %struct.Header* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %96

; <label>:84:                                     ; preds = %3
  %85 = load %struct.Header*, %struct.Header** %5, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = call i32 @getnumlimit(%struct.Header* %85, i8** %86, i32 8)
  %88 = load %struct.Header*, %struct.Header** %5, align 8
  %89 = getelementptr inbounds %struct.Header, %struct.Header* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %96

; <label>:90:                                     ; preds = %3
  %91 = load %struct.Header*, %struct.Header** %5, align 8
  %92 = getelementptr inbounds %struct.Header, %struct.Header* %91, i32 0, i32 0
  %93 = load %struct.lua_State*, %struct.lua_State** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i32 %94)
  br label %96

; <label>:96:                                     ; preds = %90, %84, %79, %76, %73, %72
  store i32 8, i32* %4, align 4
  br label %97

; <label>:97:                                     ; preds = %96, %71, %69, %68, %67, %50, %45, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnumlimit(%struct.Header*, i8**, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Header*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Header* %0, %struct.Header** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8**, i8*** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @getnum(i8** %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %14, %3
  %18 = load %struct.Header*, %struct.Header** %5, align 8
  %19 = getelementptr inbounds %struct.Header, %struct.Header* %18, i32 0, i32 0
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0), i32 %21, i32 16)
  store i32 %22, i32* %4, align 4
  br label %25

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %23, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnum(i8**, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 @digit(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %40

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %36, %15
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 10
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %19, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = sub nsw i32 %23, 48
  %25 = add nsw i32 %18, %24
  store i32 %25, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %16
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 @digit(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 214748363
  br label %36

; <label>:36:                                     ; preds = %33, %26
  %37 = phi i1 [ false, %26 ], [ %35, %33 ]
  br i1 %37, label %16, label %38

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 48, %3
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 57
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unpackint(%struct.lua_State*, i8*, i32, i32, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 8
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %9, align 4
  br label %21

; <label>:20:                                     ; preds = %5
  br label %21

; <label>:21:                                     ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 8, %20 ]
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  br label %25

; <label>:25:                                     ; preds = %49, %21
  %26 = load i32, i32* %12, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %52

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = shl i64 %29, 8
  store i64 %30, i64* %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %12, align 4
  br label %41

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %38, %39
  br label %41

; <label>:41:                                     ; preds = %36, %34
  %42 = phi i32 [ %35, %34 ], [ %40, %36 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %31, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %49

; <label>:49:                                     ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  br label %25

; <label>:52:                                     ; preds = %25
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %70

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 8
  %61 = sub nsw i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = shl i64 1, %62
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %14, align 8
  %66 = xor i64 %64, %65
  %67 = load i64, i64* %14, align 8
  %68 = sub i64 %66, %67
  store i64 %68, i64* %11, align 8
  br label %69

; <label>:69:                                     ; preds = %58, %55
  br label %117

; <label>:70:                                     ; preds = %52
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 8
  br i1 %72, label %73, label %116

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = icmp sge i64 %77, 0
  br label %79

; <label>:79:                                     ; preds = %76, %73
  %80 = phi i1 [ true, %73 ], [ %78, %76 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 255
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %12, align 4
  br label %84

; <label>:84:                                     ; preds = %112, %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %115

; <label>:88:                                     ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %12, align 4
  br label %99

; <label>:94:                                     ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  br label %99

; <label>:99:                                     ; preds = %94, %92
  %100 = phi i32 [ %93, %92 ], [ %98, %94 ]
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %89, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %99
  %108 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i32 0, i32 0), i32 %109)
  br label %111

; <label>:111:                                    ; preds = %107, %99
  br label %112

; <label>:112:                                    ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %84

; <label>:115:                                    ; preds = %84
  br label %116

; <label>:116:                                    ; preds = %115, %70
  br label %117

; <label>:117:                                    ; preds = %116, %69
  %118 = load i64, i64* %11, align 8
  ret i64 %118
}

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
