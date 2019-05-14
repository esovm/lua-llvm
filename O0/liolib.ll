; ModuleID = 'liolib.c'
source_filename = "liolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.luaL_Stream = type { %struct._IO_FILE*, i32 (%struct.lua_State*)* }
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.RN = type { %struct._IO_FILE*, i32, i32, [201 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 16
@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"_IO_input\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"_IO_output\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"cannot open file '%s' (%s)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"pP\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"rwa\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"'popen' not supported\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [11 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @f_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 (%struct.lua_State*)* @f_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 (%struct.lua_State*)* @f_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (%struct.lua_State*)* @f_tostring }, %struct.luaL_Reg zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@f_seek.mode = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* null], align 16
@.str.46 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"not an integer in proper range\00", align 1
@f_setvbuf.mode = internal constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.50 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_io(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.040000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 11)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i32 0, i32 0), i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @createmeta(%struct.lua_State* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @createstdfile(%struct.lua_State* %7, %struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @createstdfile(%struct.lua_State* %9, %struct._IO_FILE* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @createstdfile(%struct.lua_State* %11, %struct._IO_FILE* %12, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createmeta(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @luaL_newmetatable(%struct.lua_State* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %7, %struct.luaL_Reg* getelementptr inbounds ([11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* @flib, i32 0, i32 0), i32 0)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 -2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createstdfile(%struct.lua_State*, %struct._IO_FILE*, i8*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %10)
  store %struct.luaL_Stream* %11, %struct.luaL_Stream** %9, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %13 = load %struct.luaL_Stream*, %struct.luaL_Stream** %9, align 8
  %14 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %13, i32 0, i32 0
  store %struct._IO_FILE* %12, %struct._IO_FILE** %14, align 8
  %15 = load %struct.luaL_Stream*, %struct.luaL_Stream** %9, align 8
  %16 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %15, i32 0, i32 1
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %20, i32 -1)
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = load i8*, i8** %7, align 8
  call void @lua_setfield(%struct.lua_State* %21, i32 -1001000, i8* %22)
  br label %23

; <label>:23:                                     ; preds = %19, %4
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %25 = load i8*, i8** %8, align 8
  call void @lua_setfield(%struct.lua_State* %24, i32 -2, i8* %25)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_close(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_type(%struct.lua_State* %3, i32 1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_getfield(%struct.lua_State* %7, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %6, %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i32 @f_close(%struct.lua_State* %10)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_flush(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @luaL_fileresult(%struct.lua_State* %3, i32 %8, i8* null)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_input(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @g_iofile(%struct.lua_State* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_lines(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 1)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %10)
  br label %11

; <label>:11:                                     ; preds = %9, %1
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @lua_type(%struct.lua_State* %12, i32 1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i32 @lua_getfield(%struct.lua_State* %16, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_copy(%struct.lua_State* %18, i32 -1, i32 1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %19, i32 -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call %struct._IO_FILE* @tofile(%struct.lua_State* %20)
  store i32 0, i32* %4, align 4
  br label %29

; <label>:22:                                     ; preds = %11
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i8* @luaL_checklstring(%struct.lua_State* %23, i32 1, i64* null)
  store i8* %24, i8** %5, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i8*, i8** %5, align 8
  call void @opencheck(%struct.lua_State* %25, i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_copy(%struct.lua_State* %27, i32 -1, i32 1)
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %28, i32 -2)
  store i32 1, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %22, %15
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i32, i32* %4, align 4
  call void @aux_lines(%struct.lua_State* %30, i32 %31)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %29
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %35)
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* %37, i32 1)
  store i32 4, i32* %2, align 4
  br label %39

; <label>:38:                                     ; preds = %29
  store i32 1, i32* %2, align 4
  br label %39

; <label>:39:                                     ; preds = %38, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_open(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.luaL_Stream*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %7, i32 1, i64* null)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i8* @luaL_optlstring(%struct.lua_State* %9, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64* null)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %11)
  store %struct.luaL_Stream* %12, %struct.luaL_Stream** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @l_checkmode(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i32 @luaL_argerror(%struct.lua_State* %18, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0))
  %20 = icmp ne i32 %19, 0
  br label %21

; <label>:21:                                     ; preds = %17, %1
  %22 = phi i1 [ true, %1 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct._IO_FILE* @fopen64(i8* %24, i8* %25)
  %27 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %28 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %27, i32 0, i32 0
  store %struct._IO_FILE* %26, %struct._IO_FILE** %28, align 8
  %29 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %30 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %29, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = icmp eq %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %21
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @luaL_fileresult(%struct.lua_State* %34, i32 0, i8* %35)
  br label %38

; <label>:37:                                     ; preds = %21
  br label %38

; <label>:38:                                     ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 1, %37 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_output(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @g_iofile(%struct.lua_State* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_popen(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_optlstring(%struct.lua_State* %8, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64* null)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %10)
  store %struct.luaL_Stream* %11, %struct.luaL_Stream** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0))
  %16 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %17 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %16, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %17, align 8
  %18 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %19 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %18, i32 0, i32 1
  store i32 (%struct.lua_State*)* @io_pclose, i32 (%struct.lua_State*)** %19, align 8
  %20 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %21 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %20, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %1
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @luaL_fileresult(%struct.lua_State* %25, i32 0, i8* %26)
  br label %29

; <label>:28:                                     ; preds = %1
  br label %29

; <label>:29:                                     ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 1, %28 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_read(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %6 = call i32 @g_read(%struct.lua_State* %3, %struct._IO_FILE* %5, i32 1)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_tmpfile(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %4)
  store %struct.luaL_Stream* %5, %struct.luaL_Stream** %3, align 8
  %6 = call %struct._IO_FILE* @tmpfile64()
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 0
  store %struct._IO_FILE* %6, %struct._IO_FILE** %8, align 8
  %9 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %10 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @luaL_fileresult(%struct.lua_State* %14, i32 0, i8* null)
  br label %17

; <label>:16:                                     ; preds = %1
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 1, %16 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_type(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_testudata(%struct.lua_State* %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %7, %struct.luaL_Stream** %3, align 8
  %8 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %9 = icmp eq %struct.luaL_Stream* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %11)
  br label %24

; <label>:12:                                     ; preds = %1
  %13 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %14 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %13, i32 0, i32 1
  %15 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %14, align 8
  %16 = icmp eq i32 (%struct.lua_State*)* %15, null
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %12
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i8* @lua_pushstring(%struct.lua_State* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  br label %23

; <label>:20:                                     ; preds = %12
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  br label %23

; <label>:23:                                     ; preds = %20, %17
  br label %24

; <label>:24:                                     ; preds = %23, %10
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_write(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  %6 = call i32 @g_write(%struct.lua_State* %3, %struct._IO_FILE* %5, i32 1)
  ret i32 %6
}

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_close(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* %3)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @aux_close(%struct.lua_State* %5)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @tofile(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 1
  %9 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  %10 = icmp eq i32 (%struct.lua_State*)* %9, null
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %11, %1
  %15 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %16 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  ret %struct._IO_FILE* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_close(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  %4 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checkudata(%struct.lua_State* %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %7, %struct.luaL_Stream** %3, align 8
  %8 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %9 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %8, i32 0, i32 1
  %10 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  store volatile i32 (%struct.lua_State*)* %10, i32 (%struct.lua_State*)** %4, align 8
  %11 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %12 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %11, i32 0, i32 1
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %12, align 8
  %13 = load volatile i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 %13(%struct.lua_State* %14)
  ret i32 %15
}

declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @getiofile(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1001000, i8* %7)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @lua_touserdata(%struct.lua_State* %9, i32 -1)
  %11 = bitcast i8* %10 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %11, %struct.luaL_Stream** %5, align 8
  %12 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %13 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %12, i32 0, i32 1
  %14 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %13, align 8
  %15 = icmp eq i32 (%struct.lua_State*)* %14, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %2
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i8* %19)
  br label %21

; <label>:21:                                     ; preds = %16, %2
  %22 = load %struct.luaL_Stream*, %struct.luaL_Stream** %5, align 8
  %23 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %22, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  ret %struct._IO_FILE* %24
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_iofile(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 1)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %27, label %11

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 1, i64* null)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  call void @opencheck(%struct.lua_State* %17, i8* %18, i8* %19)
  br label %24

; <label>:20:                                     ; preds = %11
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = call %struct._IO_FILE* @tofile(%struct.lua_State* %21)
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* %23, i32 1)
  br label %24

; <label>:24:                                     ; preds = %20, %16
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %25, i32 -1001000, i8* %26)
  br label %27

; <label>:27:                                     ; preds = %24, %3
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @lua_getfield(%struct.lua_State* %28, i32 -1001000, i8* %29)
  ret i32 1
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opencheck(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %8)
  store %struct.luaL_Stream* %9, %struct.luaL_Stream** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct._IO_FILE* @fopen64(i8* %10, i8* %11)
  %13 = load %struct.luaL_Stream*, %struct.luaL_Stream** %7, align 8
  %14 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %13, i32 0, i32 0
  store %struct._IO_FILE* %12, %struct._IO_FILE** %14, align 8
  %15 = load %struct.luaL_Stream*, %struct.luaL_Stream** %7, align 8
  %16 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %15, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @__errno_location() #5
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @strerror(i32 %23) #6
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* %21, i8* %24)
  br label %26

; <label>:26:                                     ; preds = %19, %3
  ret void
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.luaL_Stream* @newfile(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %4)
  store %struct.luaL_Stream* %5, %struct.luaL_Stream** %3, align 8
  %6 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %7 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %6, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %8 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %9 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %8, i32 0, i32 1
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %9, align 8
  %10 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  ret %struct.luaL_Stream* %10
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.luaL_Stream* @newprefile(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_newuserdatauv(%struct.lua_State* %4, i64 16, i32 0)
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 1
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setmetatable(%struct.lua_State* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %10 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  ret %struct.luaL_Stream* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_fclose(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checkudata(%struct.lua_State* %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %7, %struct.luaL_Stream** %3, align 8
  %8 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %9 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %8, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @luaL_fileresult(%struct.lua_State* %12, i32 %15, i8* null)
  ret i32 %16
}

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) #1

declare void @luaL_setmetatable(%struct.lua_State*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare void @lua_copy(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_lines(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 250
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15:                                     ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* %18, i32 1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  call void @lua_pushinteger(%struct.lua_State* %19, i64 %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load i32, i32* %4, align 4
  call void @lua_pushboolean(%struct.lua_State* %22, i32 %23)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %24, i32 2, i32 3)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 3, %26
  call void @lua_pushcclosure(%struct.lua_State* %25, i32 (%struct.lua_State*)* @io_readline, i32 %27)
  ret void
}

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_readline(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.luaL_Stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i8* @lua_touserdata(%struct.lua_State* %7, i32 -1001001)
  %9 = bitcast i8* %8 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %9, %struct.luaL_Stream** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i64 @lua_tointegerx(%struct.lua_State* %10, i32 -1001002, i32* null)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.luaL_Stream*, %struct.luaL_Stream** %4, align 8
  %14 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %13, i32 0, i32 1
  %15 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %14, align 8
  %16 = icmp eq i32 (%struct.lua_State*)* %15, null
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0))
  store i32 %19, i32* %2, align 4
  br label %70

; <label>:20:                                     ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %21, i32 1)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load i32, i32* %6, align 4
  call void @luaL_checkstack(%struct.lua_State* %22, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %33, %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %24
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 3, %30
  %32 = sub nsw i32 -1001000, %31
  call void @lua_pushvalue(%struct.lua_State* %29, i32 %32)
  br label %33

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %24

; <label>:36:                                     ; preds = %24
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = load %struct.luaL_Stream*, %struct.luaL_Stream** %4, align 8
  %39 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %38, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %41 = call i32 @g_read(%struct.lua_State* %37, %struct._IO_FILE* %40, i32 2)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @lua_toboolean(%struct.lua_State* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %70

; <label>:49:                                     ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %60

; <label>:52:                                     ; preds = %49
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 0, %55
  %57 = add nsw i32 %56, 1
  %58 = call i8* @lua_tolstring(%struct.lua_State* %54, i32 %57, i64* null)
  %59 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %58)
  store i32 %59, i32* %2, align 4
  br label %70

; <label>:60:                                     ; preds = %49
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = call i32 @lua_toboolean(%struct.lua_State* %61, i32 -1001003)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %60
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %65, i32 0)
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* %66, i32 -1001001)
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = call i32 @aux_close(%struct.lua_State* %67)
  br label %69

; <label>:69:                                     ; preds = %64, %60
  store i32 0, i32* %2, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %52, %47, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_read(%struct.lua_State*, %struct._IO_FILE*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i32 @lua_gettop(%struct.lua_State* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @clearerr(%struct._IO_FILE* %16) #6
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %22 = call i32 @read_line(%struct.lua_State* %20, %struct._IO_FILE* %21, i32 1)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %101

; <label>:25:                                     ; preds = %3
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 20
  call void @luaL_checkstack(%struct.lua_State* %26, i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %97, %25
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %100

; <label>:39:                                     ; preds = %37
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @lua_type(%struct.lua_State* %40, i32 %41)
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %61

; <label>:44:                                     ; preds = %39
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @luaL_checkinteger(%struct.lua_State* %45, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %44
  %51 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %53 = call i32 @test_eof(%struct.lua_State* %51, %struct._IO_FILE* %52)
  br label %59

; <label>:54:                                     ; preds = %44
  %55 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @read_chars(%struct.lua_State* %55, %struct._IO_FILE* %56, i64 %57)
  br label %59

; <label>:59:                                     ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  store i32 %60, i32* %10, align 4
  br label %96

; <label>:61:                                     ; preds = %39
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @luaL_checklstring(%struct.lua_State* %62, i32 %63, i64* null)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 42
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %61
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  switch i32 %75, label %91 [
    i32 110, label %76
    i32 108, label %80
    i32 76, label %84
    i32 97, label %88
  ]

; <label>:76:                                     ; preds = %72
  %77 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %79 = call i32 @read_number(%struct.lua_State* %77, %struct._IO_FILE* %78)
  store i32 %79, i32* %10, align 4
  br label %95

; <label>:80:                                     ; preds = %72
  %81 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %83 = call i32 @read_line(%struct.lua_State* %81, %struct._IO_FILE* %82, i32 1)
  store i32 %83, i32* %10, align 4
  br label %95

; <label>:84:                                     ; preds = %72
  %85 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %87 = call i32 @read_line(%struct.lua_State* %85, %struct._IO_FILE* %86, i32 0)
  store i32 %87, i32* %10, align 4
  br label %95

; <label>:88:                                     ; preds = %72
  %89 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @read_all(%struct.lua_State* %89, %struct._IO_FILE* %90)
  store i32 1, i32* %10, align 4
  br label %95

; <label>:91:                                     ; preds = %72
  %92 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @luaL_argerror(%struct.lua_State* %92, i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0))
  store i32 %94, i32* %4, align 4
  br label %118

; <label>:95:                                     ; preds = %88, %84, %80, %76
  br label %96

; <label>:96:                                     ; preds = %95, %59
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %30

; <label>:100:                                    ; preds = %37
  br label %101

; <label>:101:                                    ; preds = %100, %19
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %103 = call i32 @ferror(%struct._IO_FILE* %102) #6
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %101
  %106 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %107 = call i32 @luaL_fileresult(%struct.lua_State* %106, i32 0, i8* null)
  store i32 %107, i32* %4, align 4
  br label %118

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

; <label>:111:                                    ; preds = %108
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %112, i32 -2)
  %113 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* %113)
  br label %114

; <label>:114:                                    ; preds = %111, %108
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %4, align 4
  br label %118

; <label>:118:                                    ; preds = %114, %105, %91
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_line(%struct.lua_State*, %struct._IO_FILE*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.luaL_Buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_buffinit(%struct.lua_State* %11, %struct.luaL_Buffer* %7)
  br label %12

; <label>:12:                                     ; preds = %42, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 10
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %48

; <label>:20:                                     ; preds = %18
  %21 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %7, i64 1024)
  store i8* %21, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %22

; <label>:22:                                     ; preds = %34, %20
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 1024
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %27 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 10
  br label %32

; <label>:32:                                     ; preds = %29, %25, %22
  %33 = phi i1 [ false, %25 ], [ false, %22 ], [ %31, %29 ]
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  br label %22

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, %44
  store i64 %47, i64* %45, align 8
  br label %12

; <label>:48:                                     ; preds = %18
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %74

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %63, label %60

; <label>:60:                                     ; preds = %54
  %61 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %7, i64 1)
  %62 = icmp ne i8* %61, null
  br label %63

; <label>:63:                                     ; preds = %60, %54
  %64 = phi i1 [ true, %54 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %8, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %67, i8* %73, align 1
  br label %74

; <label>:74:                                     ; preds = %63, %51, %48
  call void @luaL_pushresult(%struct.luaL_Buffer* %7)
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %81, label %77

; <label>:77:                                     ; preds = %74
  %78 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %79 = call i64 @lua_rawlen(%struct.lua_State* %78, i32 -1)
  %80 = icmp ugt i64 %79, 0
  br label %81

; <label>:81:                                     ; preds = %77, %74
  %82 = phi i1 [ true, %74 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_eof(%struct.lua_State*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %7 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 @ungetc(i32 %8, %struct._IO_FILE* %9)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0))
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chars(%struct.lua_State*, %struct._IO_FILE*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_buffinit(%struct.lua_State* %10, %struct.luaL_Buffer* %9)
  %11 = load i64, i64* %6, align 8
  %12 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %9, i64 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %16 = call i64 @fread(i8* %13, i64 1, i64 %14, %struct._IO_FILE* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, i64* %18, align 8
  call void @luaL_pushresult(%struct.luaL_Buffer* %9)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_number(%struct.lua_State*, %struct._IO_FILE*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.RN, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %11 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %11, align 8
  %12 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = call %struct.lconv* @localeconv() #6
  %14 = getelementptr inbounds %struct.lconv, %struct.lconv* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 46, i8* %19, align 1
  br label %20

; <label>:20:                                     ; preds = %25, %2
  %21 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = call i32 @_IO_getc(%struct._IO_FILE* %22)
  %24 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %20
  %26 = call i16** @__ctype_b_loc() #5
  %27 = load i16*, i16** %26, align 8
  %28 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %27, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 8192
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %20, label %36

; <label>:36:                                     ; preds = %25
  %37 = call i32 @test2(%struct.RN* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %38 = call i32 @test2(%struct.RN* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %36
  %41 = call i32 @test2(%struct.RN* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40
  store i32 1, i32* %8, align 4
  br label %45

; <label>:44:                                     ; preds = %40
  store i32 1, i32* %7, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %43
  br label %46

; <label>:46:                                     ; preds = %45, %36
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @readdigits(%struct.RN* %6, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i32 0, i32 0
  %52 = call i32 @test2(%struct.RN* %6, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @readdigits(%struct.RN* %6, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

; <label>:59:                                     ; preds = %54, %46
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %72

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)
  %67 = call i32 @test2(%struct.RN* %6, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %62
  %70 = call i32 @test2(%struct.RN* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %71 = call i32 @readdigits(%struct.RN* %6, i32 0)
  br label %72

; <label>:72:                                     ; preds = %69, %62, %59
  %73 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 0
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %75, align 8
  %77 = call i32 @ungetc(i32 %74, %struct._IO_FILE* %76)
  %78 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 3
  %79 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [201 x i8], [201 x i8]* %78, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %84 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 3
  %85 = getelementptr inbounds [201 x i8], [201 x i8]* %84, i32 0, i32 0
  %86 = call i64 @lua_stringtonumber(%struct.lua_State* %83, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %72
  store i32 1, i32* %3, align 4
  br label %91

; <label>:89:                                     ; preds = %72
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushnil(%struct.lua_State* %90)
  store i32 0, i32* %3, align 4
  br label %91

; <label>:91:                                     ; preds = %89, %88
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_all(%struct.lua_State*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_buffinit(%struct.lua_State* %8, %struct.luaL_Buffer* %6)
  br label %9

; <label>:9:                                      ; preds = %18, %2
  %10 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %6, i64 1024)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = call i64 @fread(i8* %11, i64 1, i64 1024, %struct._IO_FILE* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %14
  store i64 %17, i64* %15, align 8
  br label %18

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %9, label %21

; <label>:21:                                     ; preds = %18
  call void @luaL_pushresult(%struct.luaL_Buffer* %6)
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare i64 @lua_rawlen(%struct.lua_State*, i32) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test2(%struct.RN*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RN*, align 8
  %5 = alloca i8*, align 8
  store %struct.RN* %0, %struct.RN** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.RN*, %struct.RN** %4, align 8
  %7 = getelementptr inbounds %struct.RN, %struct.RN* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %23, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.RN*, %struct.RN** %4, align 8
  %16 = getelementptr inbounds %struct.RN, %struct.RN* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %14, %2
  %24 = load %struct.RN*, %struct.RN** %4, align 8
  %25 = call i32 @nextc(%struct.RN* %24)
  store i32 %25, i32* %3, align 4
  br label %27

; <label>:26:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readdigits(%struct.RN*, i32) #0 {
  %3 = alloca %struct.RN*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.RN* %0, %struct.RN** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %39, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %6
  %10 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %10, align 8
  %12 = load %struct.RN*, %struct.RN** %3, align 8
  %13 = getelementptr inbounds %struct.RN, %struct.RN* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 4096
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %37

; <label>:21:                                     ; preds = %6
  %22 = call i16** @__ctype_b_loc() #5
  %23 = load i16*, i16** %22, align 8
  %24 = load %struct.RN*, %struct.RN** %3, align 8
  %25 = getelementptr inbounds %struct.RN, %struct.RN* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %23, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 2048
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %21, %9
  %34 = load %struct.RN*, %struct.RN** %3, align 8
  %35 = call i32 @nextc(%struct.RN* %34)
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %33, %21, %9
  %38 = phi i1 [ false, %21 ], [ false, %9 ], [ %36, %33 ]
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %6

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextc(%struct.RN*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RN*, align 8
  store %struct.RN* %0, %struct.RN** %3, align 8
  %4 = load %struct.RN*, %struct.RN** %3, align 8
  %5 = getelementptr inbounds %struct.RN, %struct.RN* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 200
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %1
  %9 = load %struct.RN*, %struct.RN** %3, align 8
  %10 = getelementptr inbounds %struct.RN, %struct.RN* %9, i32 0, i32 3
  %11 = getelementptr inbounds [201 x i8], [201 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %11, align 8
  store i32 0, i32* %2, align 4
  br label %31

; <label>:12:                                     ; preds = %1
  %13 = load %struct.RN*, %struct.RN** %3, align 8
  %14 = getelementptr inbounds %struct.RN, %struct.RN* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = trunc i32 %15 to i8
  %17 = load %struct.RN*, %struct.RN** %3, align 8
  %18 = getelementptr inbounds %struct.RN, %struct.RN* %17, i32 0, i32 3
  %19 = load %struct.RN*, %struct.RN** %3, align 8
  %20 = getelementptr inbounds %struct.RN, %struct.RN* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [201 x i8], [201 x i8]* %18, i64 0, i64 %23
  store i8 %16, i8* %24, align 1
  %25 = load %struct.RN*, %struct.RN** %3, align 8
  %26 = getelementptr inbounds %struct.RN, %struct.RN* %25, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %26, align 8
  %28 = call i32 @_IO_getc(%struct._IO_FILE* %27)
  %29 = load %struct.RN*, %struct.RN** %3, align 8
  %30 = getelementptr inbounds %struct.RN, %struct.RN* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 1, i32* %2, align 4
  br label %31

; <label>:31:                                     ; preds = %12, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_checkmode(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %2, align 8
  %10 = load i8, i8* %8, align 1
  %11 = sext i8 %10 to i32
  %12 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 %11) #7
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %7
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 43
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %2, align 8
  br i1 true, label %22, label %28

; <label>:22:                                     ; preds = %19, %14
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strspn(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #7
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strlen(i8* %25) #7
  %27 = icmp eq i64 %24, %26
  br label %28

; <label>:28:                                     ; preds = %22, %19, %7, %1
  %29 = phi i1 [ false, %19 ], [ false, %7 ], [ false, %1 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_pclose(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %10 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %9, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @luaL_execresult(%struct.lua_State* %7, i32 -1)
  ret i32 %12
}

declare i32 @luaL_execresult(%struct.lua_State*, i32) #1

declare %struct._IO_FILE* @tmpfile64() #1

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare i8* @luaL_testudata(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_write(%struct.lua_State*, %struct._IO_FILE*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i32 @lua_gettop(%struct.lua_State* %13)
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

; <label>:17:                                     ; preds = %70, %3
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %73

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @lua_type(%struct.lua_State* %22, i32 %23)
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %53

; <label>:26:                                     ; preds = %21
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @lua_isinteger(%struct.lua_State* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @lua_tointegerx(%struct.lua_State* %33, i32 %34, i32* null)
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i64 %35)
  br label %43

; <label>:37:                                     ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call double @lua_tonumberx(%struct.lua_State* %39, i32 %40, i32* null)
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), double %41)
  br label %43

; <label>:43:                                     ; preds = %37, %31
  %44 = phi i32 [ %36, %31 ], [ %42, %37 ]
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  br label %50

; <label>:50:                                     ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %69

; <label>:53:                                     ; preds = %21
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @luaL_checklstring(%struct.lua_State* %54, i32 %55, i64* %11)
  store i8* %56, i8** %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %63 = call i64 @fwrite(i8* %60, i64 1, i64 %61, %struct._IO_FILE* %62)
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

; <label>:66:                                     ; preds = %59, %53
  %67 = phi i1 [ false, %53 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  br label %69

; <label>:69:                                     ; preds = %66, %50
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %17

; <label>:73:                                     ; preds = %17
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73
  store i32 1, i32* %4, align 4
  br label %81

; <label>:77:                                     ; preds = %73
  %78 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @luaL_fileresult(%struct.lua_State* %78, i32 %79, i8* null)
  store i32 %80, i32* %4, align 4
  br label %81

; <label>:81:                                     ; preds = %77, %76
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_flush(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* %4)
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @luaL_fileresult(%struct.lua_State* %3, i32 %8, i8* null)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_lines(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* %3)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @aux_lines(%struct.lua_State* %5, i32 0)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_read(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* %4)
  %6 = call i32 @g_read(%struct.lua_State* %3, %struct._IO_FILE* %5, i32 2)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_seek(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call %struct._IO_FILE* @tofile(%struct.lua_State* %8)
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @luaL_checkoption(%struct.lua_State* %10, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i32 0, i32 0))
  store i32 %11, i32* %5, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %12, i32 3, i64 0)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i32 @luaL_argerror(%struct.lua_State* %19, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i32 0, i32 0))
  %21 = icmp ne i32 %20, 0
  br label %22

; <label>:22:                                     ; preds = %18, %1
  %23 = phi i1 [ true, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fseek(%struct._IO_FILE* %25, i64 %26, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %22
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = call i32 @luaL_fileresult(%struct.lua_State* %35, i32 0, i8* null)
  store i32 %36, i32* %2, align 4
  br label %41

; <label>:37:                                     ; preds = %22
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %40 = call i64 @ftell(%struct._IO_FILE* %39)
  call void @lua_pushinteger(%struct.lua_State* %38, i64 %40)
  store i32 1, i32* %2, align 4
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_setvbuf(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call %struct._IO_FILE* @tofile(%struct.lua_State* %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @luaL_checkoption(%struct.lua_State* %9, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i32 0, i32 0))
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %11, i32 3, i64 1024)
  store i64 %12, i64* %5, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @setvbuf(%struct._IO_FILE* %13, i8* null, i32 %17, i64 %18) #6
  store i32 %19, i32* %6, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @luaL_fileresult(%struct.lua_State* %20, i32 %23, i8* null)
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_write(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* %4)
  store %struct._IO_FILE* %5, %struct._IO_FILE** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = call i32 @g_write(%struct.lua_State* %7, %struct._IO_FILE* %8, i32 2)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_gc(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 1
  %9 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  %10 = icmp eq i32 (%struct.lua_State*)* %9, null
  br i1 %10, label %19, label %11

; <label>:11:                                     ; preds = %1
  %12 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %13 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %12, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = icmp ne %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call i32 @aux_close(%struct.lua_State* %17)
  br label %19

; <label>:19:                                     ; preds = %16, %11, %1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_tostring(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 1
  %9 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  %10 = icmp eq i32 (%struct.lua_State*)* %9, null
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i8* @lua_pushstring(%struct.lua_State* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  br label %20

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %17 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %16, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %20

; <label>:20:                                     ; preds = %14, %11
  ret i32 1
}

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #2

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_noclose(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Stream*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %6 = bitcast i8* %5 to %struct.luaL_Stream*
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %3, align 8
  %7 = load %struct.luaL_Stream*, %struct.luaL_Stream** %3, align 8
  %8 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %7, i32 0, i32 1
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0))
  ret i32 2
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
