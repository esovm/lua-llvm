; ModuleID = 'lua.c'
source_filename = "lua.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@progname = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"'%s' needs argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unrecognized option '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [365 x i8] c"usage: %s [options] [script [args]]\0AAvailable options are:\0A  -e stat  execute string 'stat'\0A  -i       enter interactive mode after executing 'script'\0A  -l name  require library 'name' into global 'name'\0A  -v       show version information\0A  -E       ignore environment variables\0A  --       stop handling options\0A  -        stop handling options and execute stdin\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Lua 5.3.5  Copyright (C) 1994-2018 Lua.org, PUC-Rio\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"=LUA_INIT_5_3\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@globalL = internal global %struct.lua_State* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"(error object is a %s value)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"'arg' is not a table\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"return %s;\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"too many results to print\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_State*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call %struct.lua_State* @luaL_newstate()
  store %struct.lua_State* %9, %struct.lua_State** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %11 = icmp eq %struct.lua_State* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  call void @l_message(i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %41

; <label>:16:                                     ; preds = %2
  %17 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @lua_pushcclosure(%struct.lua_State* %17, i32 (%struct.lua_State*)* @pmain, i32 0)
  %18 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = bitcast i8** %22 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* %21, i8* %23)
  %24 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %25 = call i32 @lua_pcallk(%struct.lua_State* %24, i32 2, i32 1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %27 = call i32 @lua_toboolean(%struct.lua_State* %26, i32 -1)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @report(%struct.lua_State* %28, i32 %29)
  %31 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @lua_close(%struct.lua_State* %31)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %34, %16
  %38 = phi i1 [ false, %16 ], [ %36, %34 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  store i32 %40, i32* %3, align 4
  br label %41

; <label>:41:                                     ; preds = %37, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare %struct.lua_State* @luaL_newstate() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_message(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* %11)
  br label %13

; <label>:13:                                     ; preds = %7, %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 @fflush(%struct._IO_FILE* %17)
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @lua_tointegerx(%struct.lua_State* %8, i32 1, i32* null)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @lua_touserdata(%struct.lua_State* %11, i32 2)
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @collectargs(i8** %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkversion_(%struct.lua_State* %16, double 5.030000e+02, i64 136)
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %1
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @progname, align 8
  br label %33

; <label>:33:                                     ; preds = %29, %21, %1
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  call void @print_usage(i8* %41)
  store i32 0, i32* %2, align 4
  br label %108

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %42
  call void @print_version()
  br label %47

; <label>:47:                                     ; preds = %46, %42
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %47
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %52, i32 1)
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_setfield(%struct.lua_State* %53, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %54

; <label>:54:                                     ; preds = %51, %47
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_openlibs(%struct.lua_State* %55)
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  call void @createargtable(%struct.lua_State* %56, i8** %57, i32 %58, i32 %59)
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 16
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

; <label>:63:                                     ; preds = %54
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = call i32 @handle_luainit(%struct.lua_State* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %63
  store i32 0, i32* %2, align 4
  br label %108

; <label>:68:                                     ; preds = %63
  br label %69

; <label>:69:                                     ; preds = %68, %54
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @runargs(%struct.lua_State* %70, i8** %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

; <label>:75:                                     ; preds = %69
  store i32 0, i32* %2, align 4
  br label %108

; <label>:76:                                     ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %76
  %81 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = call i32 @handle_script(%struct.lua_State* %81, i8** %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %80
  store i32 0, i32* %2, align 4
  br label %108

; <label>:89:                                     ; preds = %80, %76
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %89
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @doREPL(%struct.lua_State* %94)
  br label %106

; <label>:95:                                     ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 12
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

; <label>:103:                                    ; preds = %99
  call void @print_version()
  %104 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @doREPL(%struct.lua_State* %104)
  br label %105

; <label>:105:                                    ; preds = %103, %99, %95
  br label %106

; <label>:106:                                    ; preds = %105, %93
  %107 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %107, i32 1)
  store i32 1, i32* %2, align 4
  br label %108

; <label>:108:                                    ; preds = %106, %88, %75, %67, %36
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #1

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %2
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 -1, i64* null)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** @progname, align 8
  %12 = load i8*, i8** %5, align 8
  call void @l_message(i8* %11, i8* %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %13, i32 -2)
  br label %14

; <label>:14:                                     ; preds = %8, %2
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare void @lua_close(%struct.lua_State*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectargs(i8**, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %124, %2
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %127

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %15
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %131

; <label>:29:                                     ; preds = %15
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %122 [
    i32 45, label %38
    i32 0, label %54
    i32 69, label %56
    i32 105, label %70
    i32 118, label %73
    i32 101, label %87
    i32 108, label %90
  ]

; <label>:38:                                     ; preds = %29
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %38
  store i32 1, i32* %3, align 4
  br label %131

; <label>:49:                                     ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %131

; <label>:54:                                     ; preds = %29
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %131

; <label>:56:                                     ; preds = %29
  %57 = load i8**, i8*** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %56
  store i32 1, i32* %3, align 4
  br label %131

; <label>:67:                                     ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 16
  store i32 %69, i32* %6, align 4
  br label %123

; <label>:70:                                     ; preds = %29
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 2
  store i32 %72, i32* %6, align 4
  br label %73

; <label>:73:                                     ; preds = %29, %70
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %73
  store i32 1, i32* %3, align 4
  br label %131

; <label>:84:                                     ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, 4
  store i32 %86, i32* %6, align 4
  br label %123

; <label>:87:                                     ; preds = %29
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, 8
  store i32 %89, i32* %6, align 4
  br label %90

; <label>:90:                                     ; preds = %29, %87
  %91 = load i8**, i8*** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %121

; <label>:100:                                    ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = load i8**, i8*** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %119, label %109

; <label>:109:                                    ; preds = %100
  %110 = load i8**, i8*** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 45
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109, %100
  store i32 1, i32* %3, align 4
  br label %131

; <label>:120:                                    ; preds = %109
  br label %121

; <label>:121:                                    ; preds = %120, %90
  br label %123

; <label>:122:                                    ; preds = %29
  store i32 1, i32* %3, align 4
  br label %131

; <label>:123:                                    ; preds = %121, %84, %67
  br label %124

; <label>:124:                                    ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %8

; <label>:127:                                    ; preds = %8
  %128 = load i32, i32* %7, align 4
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

; <label>:131:                                    ; preds = %127, %122, %119, %83, %66, %54, %49, %48, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 @fflush(%struct._IO_FILE* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 101
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 108
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %13, %1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fflush(%struct._IO_FILE* %23)
  br label %31

; <label>:25:                                     ; preds = %13
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 @fflush(%struct._IO_FILE* %29)
  br label %31

; <label>:31:                                     ; preds = %25, %19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** @progname, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.7, i32 0, i32 0), i8* %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 @fflush(%struct._IO_FILE* %35)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_version() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 51, %struct._IO_FILE* %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @luaL_openlibs(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createargtable(%struct.lua_State*, i8**, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %8, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  call void @lua_createtable(%struct.lua_State* %20, i32 %21, i32 %23)
  store i32 0, i32* %9, align 4
  br label %24

; <label>:24:                                     ; preds = %41, %15
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %24
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @lua_pushstring(%struct.lua_State* %29, i8* %34)
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  call void @lua_rawseti(%struct.lua_State* %36, i32 -2, i64 %40)
  br label %41

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %24

; <label>:44:                                     ; preds = %24
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_setglobal(%struct.lua_State* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_luainit(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = call i8* @getenv(i8* %7) #4
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = call i8* @getenv(i8* %13) #4
  store i8* %14, i8** %5, align 8
  br label %15

; <label>:15:                                     ; preds = %11, %1
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store i32 0, i32* %2, align 4
  br label %35

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %19
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @dofile(%struct.lua_State* %26, i8* %28)
  store i32 %29, i32* %2, align 4
  br label %35

; <label>:30:                                     ; preds = %19
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @dostring(%struct.lua_State* %31, i8* %32, i8* %33)
  store i32 %34, i32* %2, align 4
  br label %35

; <label>:35:                                     ; preds = %30, %25, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runargs(%struct.lua_State*, i8**, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %12

; <label>:12:                                     ; preds = %66, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %69

; <label>:16:                                     ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 101
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 108
  br i1 %29, label %30, label %65

; <label>:30:                                     ; preds = %27, %16
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %30
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  br label %48

; <label>:48:                                     ; preds = %41, %30
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 101
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %48
  %52 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @dostring(%struct.lua_State* %52, i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0))
  br label %59

; <label>:55:                                     ; preds = %48
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @dolibrary(%struct.lua_State* %56, i8* %57)
  br label %59

; <label>:59:                                     ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %59
  store i32 0, i32* %4, align 4
  br label %70

; <label>:64:                                     ; preds = %59
  br label %65

; <label>:65:                                     ; preds = %64, %27
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %12

; <label>:69:                                     ; preds = %12
  store i32 1, i32* %4, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %63
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_script(%struct.lua_State*, i8**) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 -1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #5
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %14
  store i8* null, i8** %6, align 8
  br label %21

; <label>:21:                                     ; preds = %20, %14, %2
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @luaL_loadfilex(%struct.lua_State* %22, i8* %23, i8* null)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %21
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = call i32 @pushargs(%struct.lua_State* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @docall(%struct.lua_State* %30, i32 %31, i32 -1)
  store i32 %32, i32* %5, align 4
  br label %33

; <label>:33:                                     ; preds = %27, %21
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @report(%struct.lua_State* %34, i32 %35)
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doREPL(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load i8*, i8** @progname, align 8
  store i8* %5, i8** %4, align 8
  store i8* null, i8** @progname, align 8
  br label %6

; <label>:6:                                      ; preds = %25, %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @loadline(%struct.lua_State* %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @docall(%struct.lua_State* %14, i32 0, i32 -1)
  store i32 %15, i32* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @l_print(%struct.lua_State* %20)
  br label %25

; <label>:21:                                     ; preds = %16
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @report(%struct.lua_State* %22, i32 %23)
  br label %25

; <label>:25:                                     ; preds = %21, %19
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %27, i32 0)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 @fflush(%struct._IO_FILE* %30)
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** @progname, align 8
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #1

declare void @lua_setglobal(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofile(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @luaL_loadfilex(%struct.lua_State* %6, i8* %7, i8* null)
  %9 = call i32 @dochunk(%struct.lua_State* %5, i32 %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dostring(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10) #5
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @luaL_loadbufferx(%struct.lua_State* %8, i8* %9, i64 %11, i8* %12, i8* null)
  %14 = call i32 @dochunk(%struct.lua_State* %7, i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dochunk(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %2
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @docall(%struct.lua_State* %8, i32 0, i32 0)
  store i32 %9, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @report(%struct.lua_State* %11, i32 %12)
  ret i32 %13
}

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @docall(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @lua_gettop(%struct.lua_State* %9)
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushcclosure(%struct.lua_State* %13, i32 (%struct.lua_State*)* @msghandler, i32 0)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %8, align 4
  call void @lua_rotate(%struct.lua_State* %14, i32 %15, i32 1)
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  store %struct.lua_State* %16, %struct.lua_State** @globalL, align 8
  %17 = call void (i32)* @__sysv_signal(i32 2, void (i32)* @laction) #4
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @lua_pcallk(%struct.lua_State* %18, i32 %19, i32 %20, i32 %21, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  store i32 %22, i32* %7, align 4
  %23 = call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #4
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = load i32, i32* %8, align 4
  call void @lua_rotate(%struct.lua_State* %24, i32 %25, i32 -1)
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %26, i32 -2)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msghandler(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i8* @lua_tolstring(%struct.lua_State* %5, i32 1, i64* null)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @luaL_callmeta(%struct.lua_State* %10, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %9
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i32 @lua_type(%struct.lua_State* %14, i32 -1)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %2, align 4
  br label %30

; <label>:18:                                     ; preds = %13, %9
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i32 @lua_type(%struct.lua_State* %21, i32 1)
  %23 = call i8* @lua_typename(%struct.lua_State* %20, i32 %22)
  %24 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* %23)
  store i8* %24, i8** %4, align 8
  br label %25

; <label>:25:                                     ; preds = %18
  br label %26

; <label>:26:                                     ; preds = %25, %1
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load i8*, i8** %4, align 8
  call void @luaL_traceback(%struct.lua_State* %27, %struct.lua_State* %28, i8* %29, i32 1)
  store i32 1, i32* %2, align 4
  br label %30

; <label>:30:                                     ; preds = %26, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind
declare void (i32)* @__sysv_signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @laction(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call void (i32)* @__sysv_signal(i32 %3, void (i32)* null) #4
  %5 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8
  call void @lua_sethook(%struct.lua_State* %5, void (%struct.lua_State*, %struct.lua_Debug*)* @lstop, i32 11, i32 1)
  ret void
}

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) #1

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lstop(%struct.lua_State*, %struct.lua_Debug*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %4, align 8
  %5 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_sethook(%struct.lua_State* %6, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dolibrary(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_getglobal(%struct.lua_State* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* %9)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @docall(%struct.lua_State* %11, i32 1, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %4, align 8
  call void @lua_setglobal(%struct.lua_State* %16, i8* %17)
  br label %18

; <label>:18:                                     ; preds = %15, %2
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @report(%struct.lua_State* %19, i32 %20)
  ret i32 %21
}

declare i32 @lua_getglobal(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushargs(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_getglobal(%struct.lua_State* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %7 = icmp ne i32 %6, 5
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %8, %1
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i64 @luaL_len(%struct.lua_State* %12, i32 -1)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 3
  call void @luaL_checkstack(%struct.lua_State* %15, i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %29, %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %18
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 @lua_rawgeti(%struct.lua_State* %23, i32 %25, i64 %27)
  br label %29

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %18

; <label>:32:                                     ; preds = %18
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 0, %34
  call void @lua_rotate(%struct.lua_State* %33, i32 %35, i32 -1)
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %36, i32 -2)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare i64 @luaL_len(%struct.lua_State*, i32) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadline(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @pushline(%struct.lua_State* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @addreturn(%struct.lua_State* %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %10
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @multiline(%struct.lua_State* %15)
  store i32 %16, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %18, i32 1, i32 -1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %19, i32 -2)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

; <label>:21:                                     ; preds = %17, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_print(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_gettop(%struct.lua_State* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkstack(%struct.lua_State* %9, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i32 @lua_getglobal(%struct.lua_State* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %12, i32 1, i32 1)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @lua_pcallk(%struct.lua_State* %13, i32 %14, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %8
  %18 = load i8*, i8** @progname, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i8* @lua_tolstring(%struct.lua_State* %20, i32 -1, i64* null)
  %22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i8* %21)
  call void @l_message(i8* %18, i8* %22)
  br label %23

; <label>:23:                                     ; preds = %17, %8
  br label %24

; <label>:24:                                     ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushline(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  store i8* %11, i8** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @get_prompt(%struct.lua_State* %12, i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs(i8* %16, %struct._IO_FILE* %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 @fflush(%struct._IO_FILE* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %23 = call i8* @fgets(i8* %21, i32 512, %struct._IO_FILE* %22)
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

; <label>:29:                                     ; preds = %2
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %30, i32 -2)
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31) #5
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %43, %35, %29
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %51
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %60)
  br label %67

; <label>:62:                                     ; preds = %51, %48
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i8* @lua_pushlstring(%struct.lua_State* %63, i8* %64, i64 %65)
  br label %67

; <label>:67:                                     ; preds = %62, %57
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = load i8*, i8** %7, align 8
  store i32 1, i32* %3, align 4
  br label %70

; <label>:70:                                     ; preds = %67, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addreturn(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @lua_tolstring(%struct.lua_State* %6, i32 -1, i64* null)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13) #5
  %15 = call i32 @luaL_loadbufferx(%struct.lua_State* %11, i8* %12, i64 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %19, i32 -2, i32 -1)
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %20, i32 -2)
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %18
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = load i8*, i8** %3, align 8
  br label %29

; <label>:29:                                     ; preds = %26, %18
  br label %32

; <label>:30:                                     ; preds = %1
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %31, i32 -3)
  br label %32

; <label>:32:                                     ; preds = %30, %29
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiline(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  br label %6

; <label>:6:                                      ; preds = %25, %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @lua_tolstring(%struct.lua_State* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @luaL_loadbufferx(%struct.lua_State* %9, i8* %10, i64 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @incomplete(%struct.lua_State* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %6
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i32 @pushline(%struct.lua_State* %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17, %6
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  ret i32 %24

; <label>:25:                                     ; preds = %17
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = call i8* @lua_pushstring(%struct.lua_State* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %28, i32 -2, i32 1)
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_concat(%struct.lua_State* %29, i32 3)
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_prompt(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)
  %11 = call i32 @lua_getglobal(%struct.lua_State* %6, i8* %10)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 -1, i64* null)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)
  store i8* %20, i8** %5, align 8
  br label %21

; <label>:21:                                     ; preds = %16, %2
  %22 = load i8*, i8** %5, align 8
  ret i8* %22
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incomplete(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call i8* @lua_tolstring(%struct.lua_State* %11, i32 -1, i64* %6)
  store i8* %12, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp uge i64 %13, 5
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -5
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %15
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %23, i32 -2)
  store i32 1, i32* %3, align 4
  br label %26

; <label>:24:                                     ; preds = %15, %10
  br label %25

; <label>:25:                                     ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare void @lua_concat(%struct.lua_State*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
