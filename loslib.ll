; ModuleID = 'loslib.c'
source_filename = "loslib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, [8192 x i8] }

@syslib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @os_clock }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @os_date }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @os_difftime }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @os_execute }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @os_exit }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @os_getenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @os_remove }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @os_rename }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @os_setlocale }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @os_time }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @os_tmpname }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"difftime\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"tmpname\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"time result cannot be represented in this installation\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"time out-of-bounds\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"aAbBcCdDeFgGhHIjmMnprRStTuUVwWxXyYzZ%||EcECExEXEyEYOdOeOHOIOmOMOSOuOUOVOwOWOy\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"invalid conversion specifier '%%%s'\00", align 1
@os_setlocale.cat = internal constant [6 x i32] [i32 6, i32 3, i32 0, i32 4, i32 1, i32 2], align 16
@os_setlocale.catnames = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"monetary\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"field '%s' is not an integer\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"field '%s' is out-of-bound\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"unable to generate a unique filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_os(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.030000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 11)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i32 0, i32 0), i32 0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_clock(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i64 @clock() #7
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_date(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.luaL_Buffer, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i8* @luaL_optlstring(%struct.lua_State* %14, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64* %4)
  store i8* %15, i8** %5, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i32 @lua_type(%struct.lua_State* %16, i32 2)
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %1
  %20 = call i64 @time(i64* null) #7
  br label %24

; <label>:21:                                     ; preds = %1
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = call i64 @l_checktime(%struct.lua_State* %22, i32 2)
  br label %24

; <label>:24:                                     ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ]
  store i64 %25, i64* %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 33
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.tm* @gmtime(i64* %6) #7
  store %struct.tm* %36, %struct.tm** %9, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %43

; <label>:39:                                     ; preds = %24
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.tm* @localtime(i64* %6) #7
  store %struct.tm* %42, %struct.tm** %9, align 8
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = load %struct.tm*, %struct.tm** %9, align 8
  %45 = icmp eq %struct.tm* %44, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  store i32 %48, i32* %2, align 4
  br label %115

; <label>:49:                                     ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %49
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_createtable(%struct.lua_State* %54, i32 0, i32 9)
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = load %struct.tm*, %struct.tm** %9, align 8
  call void @setallfields(%struct.lua_State* %55, %struct.tm* %56)
  br label %114

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 37, i8* %58, align 1
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_buffinit(%struct.lua_State* %59, %struct.luaL_Buffer* %11)
  br label %60

; <label>:60:                                     ; preds = %112, %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %113

; <label>:64:                                     ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 37
  br i1 %68, label %69, label %90

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %78, label %75

; <label>:75:                                     ; preds = %69
  %76 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %11, i64 1)
  %77 = icmp ne i8* %76, null
  br label %78

; <label>:78:                                     ; preds = %75, %69
  %79 = phi i1 [ true, %69 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = load i8, i8* %81, align 1
  %84 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %83, i8* %89, align 1
  br label %112

; <label>:90:                                     ; preds = %64
  %91 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %11, i64 250)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i8* @checkoption(%struct.lua_State* %94, i8* %95, i64 %100, i8* %102)
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %106 = load %struct.tm*, %struct.tm** %9, align 8
  %107 = call i64 @strftime(i8* %104, i64 250, i8* %105, %struct.tm* %106) #7
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %108
  store i64 %111, i64* %109, align 8
  br label %112

; <label>:112:                                    ; preds = %90, %78
  br label %60

; <label>:113:                                    ; preds = %60
  call void @luaL_pushresult(%struct.luaL_Buffer* %11)
  br label %114

; <label>:114:                                    ; preds = %113, %53
  store i32 1, i32* %2, align 4
  br label %115

; <label>:115:                                    ; preds = %114, %46
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_difftime(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @l_checktime(%struct.lua_State* %5, i32 1)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i64 @l_checktime(%struct.lua_State* %7, i32 2)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call double @difftime(i64 %10, i64 %11) #9
  call void @lua_pushnumber(%struct.lua_State* %9, double %12)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_execute(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %6, i32 1, i8* null, i64* null)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @system(i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @luaL_execresult(%struct.lua_State* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %19

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %5, align 4
  call void @lua_pushboolean(%struct.lua_State* %17, i32 %18)
  store i32 1, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_exit(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_toboolean(%struct.lua_State* %8, i32 1)
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %3, align 4
  br label %17

; <label>:13:                                     ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i64 @luaL_optinteger(%struct.lua_State* %14, i32 1, i64 0)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %7
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i32 @lua_toboolean(%struct.lua_State* %18, i32 2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_close(%struct.lua_State* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = icmp ne %struct.lua_State* %24, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %3, align 4
  call void @exit(i32 %27) #10
  unreachable

; <label>:28:                                     ; preds = %23
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_getenv(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i64* null)
  %6 = call i8* @getenv(i8* %5) #7
  %7 = call i8* @lua_pushstring(%struct.lua_State* %3, i8* %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_remove(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i64* null)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @remove(i8* %7) #7
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @luaL_fileresult(%struct.lua_State* %6, i32 %10, i8* %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_rename(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %5, i32 1, i64* null)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %7, i32 2, i64* null)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @rename(i8* %10, i8* %11) #7
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @luaL_fileresult(%struct.lua_State* %9, i32 %14, i8* null)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_setlocale(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_optlstring(%struct.lua_State* %5, i32 1, i8* null, i64* null)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @luaL_checkoption(%struct.lua_State* %7, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i32 0, i32 0))
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @setlocale(i32 %13, i8* %14) #7
  %16 = call i8* @lua_pushstring(%struct.lua_State* %9, i8* %15)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_time(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 1)
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = call i64 @time(i64* null) #7
  store i64 %10, i64* %4, align 8
  br label %37

; <label>:11:                                     ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* %12, i32 1, i32 5)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %13, i32 1)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i32 @getfield(%struct.lua_State* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0)
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @getfield(%struct.lua_State* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0)
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i32 @getfield(%struct.lua_State* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 12, i32 0)
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32 @getfield(%struct.lua_State* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 0)
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = call i32 @getfield(%struct.lua_State* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 1)
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = call i32 @getfield(%struct.lua_State* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 1900)
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = call i32 @getboolfield(%struct.lua_State* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 8
  store i32 %33, i32* %34, align 8
  %35 = call i64 @mktime(%struct.tm* %5) #7
  store i64 %35, i64* %4, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @setallfields(%struct.lua_State* %36, %struct.tm* %5)
  br label %37

; <label>:37:                                     ; preds = %11, %9
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41, %37
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  store i32 %46, i32* %2, align 4
  br label %50

; <label>:47:                                     ; preds = %41
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load i64, i64* %4, align 8
  call void @lua_pushinteger(%struct.lua_State* %48, i64 %49)
  store i32 1, i32* %2, align 4
  br label %50

; <label>:50:                                     ; preds = %47, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_tmpname(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0
  %7 = call i8* @tmpnam(i8* %6) #7
  %8 = icmp eq i8* %7, null
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0))
  store i32 %14, i32* %2, align 4
  br label %19

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0
  %18 = call i8* @lua_pushstring(%struct.lua_State* %16, i8* %17)
  store i32 1, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %15, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare void @lua_pushnumber(%struct.lua_State*, double) #1

; Function Attrs: nounwind
declare i64 @clock() #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l_checktime(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @luaL_argerror(%struct.lua_State* %13, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  %16 = icmp ne i32 %15, 0
  br label %17

; <label>:17:                                     ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %5, align 8
  ret i64 %20
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setallfields(%struct.lua_State*, %struct.tm*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.tm*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  call void @setfield(%struct.lua_State* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.tm*, %struct.tm** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  call void @setfield(%struct.lua_State* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  call void @setfield(%struct.lua_State* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  call void @setfield(%struct.lua_State* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load %struct.tm*, %struct.tm** %4, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  call void @setfield(%struct.lua_State* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1900
  call void @setfield(%struct.lua_State* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %30)
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  call void @setfield(%struct.lua_State* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %35)
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = load %struct.tm*, %struct.tm** %4, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  call void @setfield(%struct.lua_State* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %40)
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = load %struct.tm*, %struct.tm** %4, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  call void @setboolfield(%struct.lua_State* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %44)
  ret void
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @checkoption(%struct.lua_State*, i8*, i64, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i32 0, i32 0), i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %54, %4
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = icmp sle i64 %19, %20
  br label %22

; <label>:22:                                     ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %59

; <label>:24:                                     ; preds = %22
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 124
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %53

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 @memcmp(i8* %33, i8* %34, i64 %36) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %43, i32 1, i1 false)
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %5, align 8
  br label %66

; <label>:52:                                     ; preds = %32
  br label %53

; <label>:53:                                     ; preds = %52, %29
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %10, align 8
  br label %12

; <label>:59:                                     ; preds = %22
  %60 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0), i8* %62)
  %64 = call i32 @luaL_argerror(%struct.lua_State* %60, i32 1, i8* %63)
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %5, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %39
  %67 = load i8*, i8** %5, align 8
  ret i8* %67
}

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfield(%struct.lua_State*, i8*, i32) #0 {
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
define internal void @setboolfield(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  br label %15

; <label>:10:                                     ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* %11, i32 %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 -2, i8* %14)
  br label %15

; <label>:15:                                     ; preds = %10, %9
  ret void
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #5

declare i32 @system(i8*) #1

declare i32 @luaL_execresult(%struct.lua_State*, i32) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare void @lua_close(%struct.lua_State*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfield(%struct.lua_State*, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @lua_getfield(%struct.lua_State* %13, i32 -1, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %17 = call i64 @lua_tointegerx(%struct.lua_State* %16, i32 -1, i32* %10)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i8* %25)
  store i32 %26, i32* %5, align 4
  br label %57

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %27
  %31 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0), i8* %32)
  store i32 %33, i32* %5, align 4
  br label %57

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  br label %53

; <label>:38:                                     ; preds = %4
  %39 = load i64, i64* %12, align 8
  %40 = icmp sle i64 -1073741823, %39
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %38
  %42 = load i64, i64* %12, align 8
  %43 = icmp sle i64 %42, 1073741823
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %41, %38
  %45 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %46)
  store i32 %47, i32* %5, align 4
  br label %57

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %12, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %12, align 8
  br label %53

; <label>:53:                                     ; preds = %48, %35
  %54 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_settop(%struct.lua_State* %54, i32 -2)
  %55 = load i64, i64* %12, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

; <label>:57:                                     ; preds = %53, %44, %30, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getboolfield(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1, i8* %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  br label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @lua_toboolean(%struct.lua_State* %12, i32 -1)
  br label %14

; <label>:14:                                     ; preds = %11, %10
  %15 = phi i32 [ -1, %10 ], [ %13, %11 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %16, i32 -2)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #2

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @tmpnam(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
