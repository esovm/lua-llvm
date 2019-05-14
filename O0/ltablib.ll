; ModuleID = 'ltablib.c'
source_filename = "ltablib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }

@tab_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @tpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @tunpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @tmove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"position out of bounds\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"too many elements to move\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"destination wrap around\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"array too big\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_table(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.040000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 7)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @tab_funcs, i32 0, i32 0), i32 0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tconcat(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @checktab(%struct.lua_State* %8, i32 1, i32 5)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i64 @luaL_len(%struct.lua_State* %9, i32 1)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i8* @luaL_optlstring(%struct.lua_State* %11, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i64* %5)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %13, i32 3, i64 1)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @luaL_optinteger(%struct.lua_State* %15, i32 4, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* %18, %struct.luaL_Buffer* %3)
  br label %19

; <label>:19:                                     ; preds = %28, %1
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %19
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = load i64, i64* %7, align 8
  call void @addfield(%struct.lua_State* %24, %struct.luaL_Buffer* %3, i64 %25)
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %5, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %3, i8* %26, i64 %27)
  br label %28

; <label>:28:                                     ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = load i64, i64* %7, align 8
  call void @addfield(%struct.lua_State* %36, %struct.luaL_Buffer* %3, i64 %37)
  br label %38

; <label>:38:                                     ; preds = %35, %31
  call void @luaL_pushresult(%struct.luaL_Buffer* %3)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tinsert(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @checktab(%struct.lua_State* %7, i32 1, i32 7)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @luaL_len(%struct.lua_State* %8, i32 1)
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @lua_gettop(%struct.lua_State* %11)
  switch i32 %12, label %45 [
    i32 2, label %13
    i32 3, label %15
  ]

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %5, align 8
  br label %48

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i64 @luaL_checkinteger(%struct.lua_State* %16, i32 2)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, 1
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %15
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32 @luaL_argerror(%struct.lua_State* %23, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %22, %15
  %27 = phi i1 [ true, %15 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %6, align 8
  br label %30

; <label>:30:                                     ; preds = %41, %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %30
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @lua_geti(%struct.lua_State* %35, i32 1, i64 %37)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = load i64, i64* %6, align 8
  call void @lua_seti(%struct.lua_State* %39, i32 1, i64 %40)
  br label %41

; <label>:41:                                     ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %6, align 8
  br label %30

; <label>:44:                                     ; preds = %30
  br label %48

; <label>:45:                                     ; preds = %1
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0))
  store i32 %47, i32* %2, align 4
  br label %51

; <label>:48:                                     ; preds = %44, %13
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load i64, i64* %5, align 8
  call void @lua_seti(%struct.lua_State* %49, i32 1, i64 %50)
  store i32 0, i32* %2, align 4
  br label %51

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_gettop(%struct.lua_State* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load i32, i32* %4, align 4
  call void @lua_createtable(%struct.lua_State* %7, i32 %8, i32 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %9, i32 1, i32 1)
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %18, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %11
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  call void @lua_seti(%struct.lua_State* %15, i32 1, i64 %17)
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  br label %11

; <label>:21:                                     ; preds = %11
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  call void @lua_pushinteger(%struct.lua_State* %22, i64 %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %25, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunpack(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %7, i32 2, i64 1)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i32 @lua_type(%struct.lua_State* %9, i32 3)
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i64 @luaL_len(%struct.lua_State* %13, i32 1)
  br label %18

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i64 @luaL_checkinteger(%struct.lua_State* %16, i32 3)
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = phi i64 [ %14, %12 ], [ %17, %15 ]
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %18
  store i32 0, i32* %2, align 4
  br label %58

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp uge i64 %28, 2147483647
  br i1 %29, label %37, label %30

; <label>:30:                                     ; preds = %24
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @lua_checkstack(%struct.lua_State* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %30, %24
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  store i32 %39, i32* %2, align 4
  br label %58

; <label>:40:                                     ; preds = %30
  br label %41

; <label>:41:                                     ; preds = %49, %40
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %41
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @lua_geti(%struct.lua_State* %46, i32 1, i64 %47)
  br label %49

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %41

; <label>:52:                                     ; preds = %41
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @lua_geti(%struct.lua_State* %53, i32 1, i64 %54)
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

; <label>:58:                                     ; preds = %52, %37, %23
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tremove(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @checktab(%struct.lua_State* %5, i32 1, i32 7)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i64 @luaL_len(%struct.lua_State* %6, i32 1)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %8, i32 2, i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = sub i64 %15, 1
  %17 = load i64, i64* %3, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %14
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i32 @luaL_argerror(%struct.lua_State* %20, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = phi i1 [ true, %14 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  br label %26

; <label>:26:                                     ; preds = %23, %1
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @lua_geti(%struct.lua_State* %27, i32 1, i64 %28)
  br label %30

; <label>:30:                                     ; preds = %41, %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %30
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @lua_geti(%struct.lua_State* %35, i32 1, i64 %37)
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %40 = load i64, i64* %4, align 8
  call void @lua_seti(%struct.lua_State* %39, i32 1, i64 %40)
  br label %41

; <label>:41:                                     ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %30

; <label>:44:                                     ; preds = %30
  %45 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %45)
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %47 = load i64, i64* %4, align 8
  call void @lua_seti(%struct.lua_State* %46, i32 1, i64 %47)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmove(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i64 @luaL_checkinteger(%struct.lua_State* %9, i32 2)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i64 @luaL_checkinteger(%struct.lua_State* %11, i32 3)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %13, i32 4)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @lua_type(%struct.lua_State* %15, i32 5)
  %17 = icmp sle i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 5, i32 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @checktab(%struct.lua_State* %21, i32 1, i32 1)
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %6, align 4
  call void @checktab(%struct.lua_State* %22, i32 %23, i32 2)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %115

; <label>:27:                                     ; preds = %1
  %28 = load i64, i64* %3, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %39, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 9223372036854775807, %32
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %30
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = call i32 @luaL_argerror(%struct.lua_State* %36, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  %38 = icmp ne i32 %37, 0
  br label %39

; <label>:39:                                     ; preds = %35, %30, %27
  %40 = phi i1 [ true, %30 ], [ true, %27 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = sub nsw i64 %42, %43
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 9223372036854775807, %47
  %49 = add nsw i64 %48, 1
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %39
  %52 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %53 = call i32 @luaL_argerror(%struct.lua_State* %52, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0))
  %54 = icmp ne i32 %53, 0
  br label %55

; <label>:55:                                     ; preds = %51, %39
  %56 = phi i1 [ true, %39 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %73, label %61

; <label>:61:                                     ; preds = %55
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %73, label %65

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %93

; <label>:68:                                     ; preds = %65
  %69 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @lua_compare(%struct.lua_State* %69, i32 1, i32 %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

; <label>:73:                                     ; preds = %68, %61, %55
  store i64 0, i64* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %89, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %92

; <label>:78:                                     ; preds = %74
  %79 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @lua_geti(%struct.lua_State* %79, i32 1, i64 %82)
  %84 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %86, %87
  call void @lua_seti(%struct.lua_State* %84, i32 %85, i64 %88)
  br label %89

; <label>:89:                                     ; preds = %78
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %74

; <label>:92:                                     ; preds = %74
  br label %114

; <label>:93:                                     ; preds = %68, %65
  %94 = load i64, i64* %7, align 8
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %96

; <label>:96:                                     ; preds = %110, %93
  %97 = load i64, i64* %8, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %113

; <label>:99:                                     ; preds = %96
  %100 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @lua_geti(%struct.lua_State* %100, i32 1, i64 %103)
  %105 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %107, %108
  call void @lua_seti(%struct.lua_State* %105, i32 %106, i64 %109)
  br label %110

; <label>:110:                                    ; preds = %99
  %111 = load i64, i64* %8, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %8, align 8
  br label %96

; <label>:113:                                    ; preds = %96
  br label %114

; <label>:114:                                    ; preds = %113, %92
  br label %115

; <label>:115:                                    ; preds = %114, %1
  %116 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %117 = load i32, i32* %6, align 4
  call void @lua_pushvalue(%struct.lua_State* %116, i32 %117)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @checktab(%struct.lua_State* %4, i32 1, i32 7)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @luaL_len(%struct.lua_State* %5, i32 1)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp slt i64 %10, 2147483647
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %9
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @luaL_argerror(%struct.lua_State* %13, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi i1 [ true, %9 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @lua_type(%struct.lua_State* %19, i32 2)
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %16
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %23, i32 2, i32 6)
  br label %24

; <label>:24:                                     ; preds = %22, %16
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %25, i32 2)
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  call void @auxsort(%struct.lua_State* %26, i32 1, i32 %28, i32 0)
  br label %29

; <label>:29:                                     ; preds = %24, %1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checktab(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lua_type(%struct.lua_State* %8, i32 %9)
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %12, label %56

; <label>:12:                                     ; preds = %3
  store i32 1, i32* %7, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lua_getmetatable(%struct.lua_State* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = call i32 @checkfield(%struct.lua_State* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

; <label>:27:                                     ; preds = %21, %17
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %27
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = call i32 @checkfield(%struct.lua_State* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %31, %27
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %37
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = call i32 @checkfield(%struct.lua_State* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41, %37
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 0, %49
  %51 = sub nsw i32 %50, 1
  call void @lua_settop(%struct.lua_State* %48, i32 %51)
  br label %55

; <label>:52:                                     ; preds = %41, %31, %21, %12
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = load i32, i32* %5, align 4
  call void @luaL_checktype(%struct.lua_State* %53, i32 %54, i32 5)
  br label %55

; <label>:55:                                     ; preds = %52, %47
  br label %56

; <label>:56:                                     ; preds = %55, %3
  ret void
}

declare i64 @luaL_len(%struct.lua_State*, i32) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addfield(%struct.lua_State*, %struct.luaL_Buffer*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @lua_geti(%struct.lua_State* %7, i32 1, i64 %8)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call i32 @lua_isstring(%struct.lua_State* %10, i32 -1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = call i32 @lua_type(%struct.lua_State* %16, i32 -1)
  %18 = call i8* @lua_typename(%struct.lua_State* %15, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), i8* %18, i64 %19)
  br label %21

; <label>:21:                                     ; preds = %13, %3
  %22 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %22)
  ret void
}

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkfield(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @lua_pushstring(%struct.lua_State* %7, i8* %8)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @lua_rawget(%struct.lua_State* %10, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i32 @lua_rawget(%struct.lua_State*, i32) #1

declare i32 @lua_geti(%struct.lua_State*, i32, i64) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare void @lua_seti(%struct.lua_State*, i32, i64) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsort(%struct.lua_State*, i32, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %152, %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %153

; <label>:15:                                     ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = call i32 @lua_geti(%struct.lua_State* %16, i32 1, i64 %18)
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = call i32 @lua_geti(%struct.lua_State* %20, i32 1, i64 %22)
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %25 = call i32 @sort_comp(%struct.lua_State* %24, i32 -1, i32 -2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %15
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  call void @set2(%struct.lua_State* %28, i32 %29, i32 %30)
  br label %33

; <label>:31:                                     ; preds = %15
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %32, i32 -3)
  br label %33

; <label>:33:                                     ; preds = %31, %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %34, %35
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %33
  br label %153

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %40, %41
  %43 = icmp ult i32 %42, 100
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %44, %39
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %48, %49
  %51 = udiv i32 %50, 2
  store i32 %51, i32* %9, align 4
  br label %57

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @choosePivot(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

; <label>:57:                                     ; preds = %52, %47
  %58 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = call i32 @lua_geti(%struct.lua_State* %58, i32 1, i64 %60)
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = call i32 @lua_geti(%struct.lua_State* %62, i32 1, i64 %64)
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %67 = call i32 @sort_comp(%struct.lua_State* %66, i32 -2, i32 -1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

; <label>:69:                                     ; preds = %57
  %70 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  call void @set2(%struct.lua_State* %70, i32 %71, i32 %72)
  br label %89

; <label>:73:                                     ; preds = %57
  %74 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %74, i32 -2)
  %75 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = call i32 @lua_geti(%struct.lua_State* %75, i32 1, i64 %77)
  %79 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %80 = call i32 @sort_comp(%struct.lua_State* %79, i32 -1, i32 -2)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %73
  %83 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  call void @set2(%struct.lua_State* %83, i32 %84, i32 %85)
  br label %88

; <label>:86:                                     ; preds = %73
  %87 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %87, i32 -3)
  br label %88

; <label>:88:                                     ; preds = %86, %82
  br label %89

; <label>:89:                                     ; preds = %88, %69
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub i32 %90, %91
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %89
  br label %153

; <label>:95:                                     ; preds = %89
  %96 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = call i32 @lua_geti(%struct.lua_State* %96, i32 1, i64 %98)
  %100 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %100, i32 -1)
  %101 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sub i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = call i32 @lua_geti(%struct.lua_State* %101, i32 1, i64 %104)
  %106 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub i32 %108, 1
  call void @set2(%struct.lua_State* %106, i32 %107, i32 %109)
  %110 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @partition(%struct.lua_State* %110, i32 %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub i32 %117, %118
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %132

; <label>:121:                                    ; preds = %95
  %122 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub i32 %124, 1
  %126 = load i32, i32* %8, align 4
  call void @auxsort(%struct.lua_State* %122, i32 %123, i32 %125, i32 %126)
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %143

; <label>:132:                                    ; preds = %95
  %133 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  call void @auxsort(%struct.lua_State* %133, i32 %135, i32 %136, i32 %137)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %138, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %143

; <label>:143:                                    ; preds = %132, %121
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %6, align 4
  %146 = sub i32 %144, %145
  %147 = udiv i32 %146, 128
  %148 = load i32, i32* %10, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %152

; <label>:150:                                    ; preds = %143
  %151 = call i32 @l_randomizePivot()
  store i32 %151, i32* %8, align 4
  br label %152

; <label>:152:                                    ; preds = %150, %143
  br label %11

; <label>:153:                                    ; preds = %38, %94, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_comp(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = call i32 @lua_type(%struct.lua_State* %9, i32 2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @lua_compare(%struct.lua_State* %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  br label %30

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %18, i32 2)
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  call void @lua_pushvalue(%struct.lua_State* %19, i32 %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 2
  call void @lua_pushvalue(%struct.lua_State* %22, i32 %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_callk(%struct.lua_State* %25, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = call i32 @lua_toboolean(%struct.lua_State* %26, i32 -1)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %28, i32 -2)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %17, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set2(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  call void @lua_seti(%struct.lua_State* %7, i32 1, i64 %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  call void @lua_seti(%struct.lua_State* %10, i32 1, i64 %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choosePivot(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sub i32 %9, %10
  %12 = udiv i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul i32 %14, 2
  %16 = urem i32 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %17, %18
  %20 = add i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

; <label>:12:                                     ; preds = %62, %3
  br label %13

; <label>:13:                                     ; preds = %30, %12
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = call i32 @lua_geti(%struct.lua_State* %14, i32 1, i64 %17)
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = call i32 @sort_comp(%struct.lua_State* %19, i32 -1, i32 -2)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %30

; <label>:30:                                     ; preds = %27, %22
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %31, i32 -2)
  br label %13

; <label>:32:                                     ; preds = %13
  br label %33

; <label>:33:                                     ; preds = %49, %32
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = call i32 @lua_geti(%struct.lua_State* %34, i32 1, i64 %37)
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = call i32 @sort_comp(%struct.lua_State* %39, i32 -3, i32 -1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %42
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %49

; <label>:49:                                     ; preds = %46, %42
  %50 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %50, i32 -2)
  br label %33

; <label>:51:                                     ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %62

; <label>:55:                                     ; preds = %51
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %56, i32 -2)
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, 1
  %60 = load i32, i32* %7, align 4
  call void @set2(%struct.lua_State* %57, i32 %59, i32 %60)
  %61 = load i32, i32* %7, align 4
  ret i32 %61

; <label>:62:                                     ; preds = %51
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  call void @set2(%struct.lua_State* %63, i32 %64, i32 %65)
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_randomizePivot() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 @clock() #4
  store i64 %6, i64* %1, align 8
  %7 = call i64 @time(i64* null) #4
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i64* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i64* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %26, %0
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %15

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
