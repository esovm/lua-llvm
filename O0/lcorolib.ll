; ModuleID = 'lcorolib.c'
source_filename = "lcorolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@co_funcs = internal constant [9 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yieldable }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_kill }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"isyieldable\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@statname = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"cannot kill a %s coroutine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_coroutine(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.040000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 8)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([9 x %struct.luaL_Reg], [9 x %struct.luaL_Reg]* @co_funcs, i32 0, i32 0), i32 0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_cocreate(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %4, i32 1, i32 6)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call %struct.lua_State* @lua_newthread(%struct.lua_State* %5)
  store %struct.lua_State* %6, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* %8, %struct.lua_State* %9, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_coresume(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call %struct.lua_State* @getco(%struct.lua_State* %6)
  store %struct.lua_State* %7, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_gettop(%struct.lua_State* %10)
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @auxresume(%struct.lua_State* %8, %struct.lua_State* %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %17, i32 0)
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %18, i32 -2, i32 1)
  store i32 2, i32* %2, align 4
  br label %27

; <label>:19:                                     ; preds = %1
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %20, i32 1)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sub nsw i32 0, %23
  call void @lua_rotate(%struct.lua_State* %21, i32 %24, i32 1)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %19, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_corunning(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_pushthread(%struct.lua_State* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load i32, i32* %3, align 4
  call void @lua_pushboolean(%struct.lua_State* %6, i32 %7)
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_costatus(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.lua_State* @getco(%struct.lua_State* %4)
  store %struct.lua_State* %5, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @auxstatus(%struct.lua_State* %7, %struct.lua_State* %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @lua_pushstring(%struct.lua_State* %6, i8* %12)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @luaB_cocreate(%struct.lua_State* %3)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* %5, i32 (%struct.lua_State*)* @luaB_auxwrap, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_yield(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_gettop(%struct.lua_State* %4)
  %6 = call i32 @lua_yieldk(%struct.lua_State* %3, i32 %5, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_yieldable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %12

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call %struct.lua_State* @getco(%struct.lua_State* %10)
  br label %12

; <label>:12:                                     ; preds = %9, %7
  %13 = phi %struct.lua_State* [ %8, %7 ], [ %11, %9 ]
  store %struct.lua_State* %13, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @lua_isyieldable(%struct.lua_State* %15)
  call void @lua_pushboolean(%struct.lua_State* %14, i32 %16)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_kill(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call %struct.lua_State* @getco(%struct.lua_State* %6)
  store %struct.lua_State* %7, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @auxstatus(%struct.lua_State* %8, %struct.lua_State* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %23 [
    i32 1, label %12
    i32 2, label %12
  ]

; <label>:12:                                     ; preds = %1, %1
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call i32 @lua_resetthread(%struct.lua_State* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %12
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %18, i32 1)
  store i32 1, i32* %2, align 4
  br label %30

; <label>:19:                                     ; preds = %12
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %20, i32 0)
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* %21, %struct.lua_State* %22, i32 1)
  store i32 2, i32* %2, align 4
  br label %30

; <label>:23:                                     ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* %28)
  store i32 %29, i32* %2, align 4
  br label %30

; <label>:30:                                     ; preds = %23, %19, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare %struct.lua_State* @lua_newthread(%struct.lua_State*) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_State* @getco(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %4, i32 1)
  store %struct.lua_State* %5, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = icmp ne %struct.lua_State* %6, null
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @luaL_typeerror(%struct.lua_State* %9, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxresume(%struct.lua_State*, %struct.lua_State*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_State* %1, %struct.lua_State** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @lua_checkstack(%struct.lua_State* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = call i8* @lua_pushstring(%struct.lua_State* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %4, align 4
  br label %62

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %19 = call i32 @lua_status(%struct.lua_State* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = call i32 @lua_gettop(%struct.lua_State* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %21
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = call i8* @lua_pushstring(%struct.lua_State* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %4, align 4
  br label %62

; <label>:28:                                     ; preds = %21, %17
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = load i32, i32* %7, align 4
  call void @lua_xmove(%struct.lua_State* %29, %struct.lua_State* %30, i32 %31)
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @lua_resume(%struct.lua_State* %32, %struct.lua_State* %33, i32 %34, i32* %9)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %59

; <label>:41:                                     ; preds = %38, %28
  %42 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @lua_checkstack(%struct.lua_State* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

; <label>:47:                                     ; preds = %41
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 0, %49
  %51 = sub nsw i32 %50, 1
  call void @lua_settop(%struct.lua_State* %48, i32 %51)
  %52 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %53 = call i8* @lua_pushstring(%struct.lua_State* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %4, align 4
  br label %62

; <label>:54:                                     ; preds = %41
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = load i32, i32* %9, align 4
  call void @lua_xmove(%struct.lua_State* %55, %struct.lua_State* %56, i32 %57)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %62

; <label>:59:                                     ; preds = %38
  %60 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_xmove(%struct.lua_State* %60, %struct.lua_State* %61, i32 1)
  store i32 -1, i32* %4, align 4
  br label %62

; <label>:62:                                     ; preds = %59, %54, %47, %25, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i32 @lua_status(%struct.lua_State*) #1

declare i32 @lua_resume(%struct.lua_State*, %struct.lua_State*, i32, i32*) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @lua_pushthread(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxstatus(%struct.lua_State*, %struct.lua_State*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = icmp eq %struct.lua_State* %7, %8
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = call i32 @lua_status(%struct.lua_State* %12)
  switch i32 %13, label %26 [
    i32 1, label %14
    i32 0, label %15
  ]

; <label>:14:                                     ; preds = %11
  store i32 2, i32* %3, align 4
  br label %27

; <label>:15:                                     ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = call i32 @lua_getstack(%struct.lua_State* %16, i32 0, %struct.lua_Debug* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %15
  store i32 3, i32* %3, align 4
  br label %27

; <label>:20:                                     ; preds = %15
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = call i32 @lua_gettop(%struct.lua_State* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %20
  store i32 1, i32* %3, align 4
  br label %27

; <label>:25:                                     ; preds = %20
  store i32 2, i32* %3, align 4
  br label %27

; <label>:26:                                     ; preds = %11
  store i32 1, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %25, %24, %19, %14, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_auxwrap(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %7, i32 -1001001)
  store %struct.lua_State* %8, %struct.lua_State** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @lua_gettop(%struct.lua_State* %11)
  %13 = call i32 @auxresume(%struct.lua_State* %9, %struct.lua_State* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %44

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = call i32 @lua_status(%struct.lua_State* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %21
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = call i32 @lua_resetthread(%struct.lua_State* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* %30, %struct.lua_State* %31, i32 1)
  br label %32

; <label>:32:                                     ; preds = %29, %24
  br label %33

; <label>:33:                                     ; preds = %32, %21, %16
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = call i32 @lua_type(%struct.lua_State* %34, i32 -1)
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %33
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_where(%struct.lua_State* %38, i32 1)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %39, i32 -2, i32 1)
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_concat(%struct.lua_State* %40, i32 2)
  br label %41

; <label>:41:                                     ; preds = %37, %33
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = call i32 @lua_error(%struct.lua_State* %42)
  store i32 %43, i32* %2, align 4
  br label %46

; <label>:44:                                     ; preds = %1
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

; <label>:46:                                     ; preds = %44, %41
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare i32 @lua_resetthread(%struct.lua_State*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare void @luaL_where(%struct.lua_State*, i32) #1

declare void @lua_concat(%struct.lua_State*, i32) #1

declare i32 @lua_error(%struct.lua_State*) #1

declare i32 @lua_yieldk(%struct.lua_State*, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_isyieldable(%struct.lua_State*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
