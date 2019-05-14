; ModuleID = 'loslib.c'
source_filename = "loslib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

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
@os_setlocale.cat = internal unnamed_addr constant [6 x i32] [i32 6, i32 3, i32 0, i32 4, i32 1, i32 2], align 16
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

; Function Attrs: nounwind uwtable
define i32 @luaopen_os(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 11) #7
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0), i32 0) #7
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @os_clock(%struct.lua_State*) #0 {
  %2 = tail call i64 @clock() #7
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_date(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64* nonnull %2) #7
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 2) #7
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = call i64 @time(i64* null) #7
  br label %15

; <label>:13:                                     ; preds = %1
  %14 = call fastcc i64 @l_checktime(%struct.lua_State* %0, i32 2)
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %3, align 8, !tbaa !2
  %17 = load i64, i64* %2, align 8, !tbaa !2
  %18 = getelementptr inbounds i8, i8* %7, i64 %17
  %19 = load i8, i8* %7, align 1, !tbaa !6
  %20 = icmp eq i8 %19, 33
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %15
  %22 = call %struct.tm* @gmtime(i64* nonnull %3) #7
  %23 = getelementptr inbounds i8, i8* %7, i64 1
  br label %26

; <label>:24:                                     ; preds = %15
  %25 = call %struct.tm* @localtime(i64* nonnull %3) #7
  br label %26

; <label>:26:                                     ; preds = %24, %21
  %27 = phi %struct.tm* [ %22, %21 ], [ %25, %24 ]
  %28 = phi i8* [ %23, %21 ], [ %7, %24 ]
  %29 = icmp eq %struct.tm* %27, null
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26
  %31 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %77

; <label>:32:                                     ; preds = %26
  %33 = call i32 @strcmp(i8* nonnull %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #7
  call fastcc void @setallfields(%struct.lua_State* %0, %struct.tm* nonnull %27)
  br label %77

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #7
  %38 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %38) #7
  store i8 37, i8* %37, align 1, !tbaa !6
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #7
  %39 = icmp ult i8* %28, %18
  br i1 %39, label %40, label %76

; <label>:40:                                     ; preds = %36
  %41 = ptrtoint i8* %18 to i64
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %43 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %44 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %45 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %46 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  br label %47

; <label>:47:                                     ; preds = %40, %73
  %48 = phi i8* [ %28, %40 ], [ %74, %73 ]
  %49 = load i8, i8* %48, align 1, !tbaa !6
  %50 = icmp eq i8 %49, 37
  br i1 %50, label %64, label %51

; <label>:51:                                     ; preds = %47
  %52 = load i64, i64* %44, align 8, !tbaa !7
  %53 = load i64, i64* %45, align 8, !tbaa !10
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %51
  %56 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #7
  br label %57

; <label>:57:                                     ; preds = %55, %51
  %58 = getelementptr inbounds i8, i8* %48, i64 1
  %59 = load i8, i8* %48, align 1, !tbaa !6
  %60 = load i8*, i8** %46, align 8, !tbaa !11
  %61 = load i64, i64* %44, align 8, !tbaa !7
  %62 = add i64 %61, 1
  store i64 %62, i64* %44, align 8, !tbaa !7
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %63, align 1, !tbaa !6
  br label %73

; <label>:64:                                     ; preds = %47
  %65 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 250) #7
  %66 = getelementptr inbounds i8, i8* %48, i64 1
  %67 = ptrtoint i8* %66 to i64
  %68 = sub i64 %41, %67
  %69 = call fastcc i8* @checkoption(%struct.lua_State* %0, i8* nonnull %66, i64 %68, i8* nonnull %42)
  %70 = call i64 @strftime(i8* %65, i64 250, i8* nonnull %37, %struct.tm* nonnull %27) #7
  %71 = load i64, i64* %43, align 8, !tbaa !7
  %72 = add i64 %71, %70
  store i64 %72, i64* %43, align 8, !tbaa !7
  br label %73

; <label>:73:                                     ; preds = %64, %57
  %74 = phi i8* [ %58, %57 ], [ %69, %64 ]
  %75 = icmp ult i8* %74, %18
  br i1 %75, label %47, label %76

; <label>:76:                                     ; preds = %73, %36
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %38) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #7
  br label %77

; <label>:77:                                     ; preds = %35, %76, %30
  %78 = phi i32 [ %31, %30 ], [ 1, %76 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @os_difftime(%struct.lua_State*) #0 {
  %2 = tail call fastcc i64 @l_checktime(%struct.lua_State* %0, i32 1)
  %3 = tail call fastcc i64 @l_checktime(%struct.lua_State* %0, i32 2)
  %4 = tail call double @difftime(i64 %2, i64 %3) #9
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_execute(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #7
  %3 = tail call i32 @system(i8* %2) #7
  %4 = icmp eq i8* %2, null
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_execresult(%struct.lua_State* %0, i32 %3) #7
  br label %8

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %3) #7
  br label %8

; <label>:8:                                      ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @os_exit(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #7
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %11

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 0) #7
  %10 = trunc i64 %9 to i32
  br label %11

; <label>:11:                                     ; preds = %8, %4
  %12 = phi i32 [ %7, %4 ], [ %10, %8 ]
  %13 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %11
  tail call void @lua_close(%struct.lua_State* %0) #7
  br label %16

; <label>:16:                                     ; preds = %11, %15
  %17 = icmp eq %struct.lua_State* %0, null
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %16
  tail call void @exit(i32 %12) #10
  unreachable

; <label>:19:                                     ; preds = %16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @os_getenv(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i8* @getenv(i8* %2) #7
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_remove(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i32 @remove(i8* %2) #7
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* %2) #7
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @os_rename(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #7
  %4 = tail call i32 @rename(i8* %2, i8* %3) #7
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %6, i8* null) #7
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @os_setlocale(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #7
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i64 0, i64 0)) #7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %7 = tail call i8* @setlocale(i32 %6, i8* %2) #7
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %7) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_time(%struct.lua_State*) #0 {
  %2 = alloca %struct.tm, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #7
  br label %24

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.tm* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #7
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #7
  %9 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 0)
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  store i32 %9, i32* %10, align 8, !tbaa !14
  %11 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0)
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  store i32 %11, i32* %12, align 4, !tbaa !16
  %13 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 12, i32 0)
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  store i32 %13, i32* %14, align 8, !tbaa !17
  %15 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 -1, i32 0)
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  store i32 %15, i32* %16, align 4, !tbaa !18
  %17 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 -1, i32 1)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  store i32 %17, i32* %18, align 8, !tbaa !19
  %19 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 -1, i32 1900)
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  store i32 %19, i32* %20, align 4, !tbaa !20
  %21 = tail call fastcc i32 @getboolfield(%struct.lua_State* %0)
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  store i32 %21, i32* %22, align 8, !tbaa !21
  %23 = call i64 @mktime(%struct.tm* nonnull %2) #7
  call fastcc void @setallfields(%struct.lua_State* %0, %struct.tm* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #7
  br label %24

; <label>:24:                                     ; preds = %7, %5
  %25 = phi i64 [ %6, %5 ], [ %23, %7 ]
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %30

; <label>:29:                                     ; preds = %24
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %25) #7
  br label %30

; <label>:30:                                     ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 1, %29 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @os_tmpname(%struct.lua_State*) #0 {
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #7
  %4 = call i8* @tmpnam(i8* nonnull %3) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i64 0, i64 0)) #7
  br label %10

; <label>:8:                                      ; preds = %1
  %9 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %3) #7
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #7
  ret i32 %11
}

declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @l_checktime(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #7
  ret i64 %3
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @setallfields(%struct.lua_State*, %struct.tm* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !14
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4)
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !16
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %6)
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !17
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %8)
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !18
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %10)
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !19
  %13 = add nsw i32 %12, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %13)
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !20
  %16 = add nsw i32 %15, 1900
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %16)
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 6
  %18 = load i32, i32* %17, align 8, !tbaa !22
  %19 = add nsw i32 %18, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %19)
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !23
  %22 = add nsw i32 %21, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %22)
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8
  %24 = load i32, i32* %23, align 8, !tbaa !21
  tail call fastcc void @setboolfield(%struct.lua_State* %0, i32 %24)
  ret void
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @checkoption(%struct.lua_State*, i8*, i64, i8* nocapture) unnamed_addr #0 {
  br label %5

; <label>:5:                                      ; preds = %4, %21
  %6 = phi i8 [ 97, %4 ], [ %25, %21 ]
  %7 = phi i32 [ 1, %4 ], [ %22, %21 ]
  %8 = phi i8* [ getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i64 0, i64 0), %4 ], [ %24, %21 ]
  %9 = sext i32 %7 to i64
  %10 = icmp sgt i64 %9, %2
  br i1 %10, label %27, label %11

; <label>:11:                                     ; preds = %5
  %12 = icmp eq i8 %6, 124
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %11
  %14 = add nsw i32 %7, 1
  br label %21

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @memcmp(i8* %1, i8* %8, i64 %9) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %1, i64 %9, i32 1, i1 false)
  %19 = getelementptr inbounds i8, i8* %3, i64 %9
  store i8 0, i8* %19, align 1, !tbaa !6
  %20 = getelementptr inbounds i8, i8* %1, i64 %9
  br label %30

; <label>:21:                                     ; preds = %13, %15
  %22 = phi i32 [ %14, %13 ], [ %7, %15 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %8, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !6
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %5

; <label>:27:                                     ; preds = %5, %21
  %28 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* %1) #7
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %28) #7
  br label %30

; <label>:30:                                     ; preds = %27, %18
  %31 = phi i8* [ %20, %18 ], [ %1, %27 ]
  ret i8* %31
}

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setfield(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setboolfield(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %2
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %1) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #7
  br label %5

; <label>:5:                                      ; preds = %2, %4
  ret void
}

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) local_unnamed_addr #5

declare i32 @system(i8* nocapture readonly) local_unnamed_addr #1

declare i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @lua_close(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @remove(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rename(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getfield(%struct.lua_State*, i8*, i32, i32) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  %7 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1) #7
  %8 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1, i32* nonnull %5) #7
  %9 = load i32, i32* %5, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %11
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i8* %1) #7
  br label %32

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i32 %2, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %15
  %18 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %1) #7
  br label %32

; <label>:19:                                     ; preds = %15
  %20 = sext i32 %2 to i64
  br label %29

; <label>:21:                                     ; preds = %4
  %22 = add i64 %8, 1073741823
  %23 = icmp ult i64 %22, 2147483647
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %21
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i8* %1) #7
  br label %32

; <label>:26:                                     ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = sub nsw i64 %8, %27
  br label %29

; <label>:29:                                     ; preds = %26, %19
  %30 = phi i64 [ %28, %26 ], [ %20, %19 ]
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %31 = trunc i64 %30 to i32
  br label %32

; <label>:32:                                     ; preds = %29, %24, %17, %13
  %33 = phi i32 [ %31, %29 ], [ %25, %24 ], [ %14, %13 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getboolfield(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #7
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ -1, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  ret i32 %7
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* nocapture) local_unnamed_addr #2

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @tmpnam(i8*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 16}
!8 = !{!"luaL_Buffer", !9, i64 0, !3, i64 8, !3, i64 16, !9, i64 24, !4, i64 32}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!8, !3, i64 8}
!11 = !{!8, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !4, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"tm", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !3, i64 40, !9, i64 48}
!16 = !{!15, !13, i64 4}
!17 = !{!15, !13, i64 8}
!18 = !{!15, !13, i64 12}
!19 = !{!15, !13, i64 16}
!20 = !{!15, !13, i64 20}
!21 = !{!15, !13, i64 32}
!22 = !{!15, !13, i64 24}
!23 = !{!15, !13, i64 28}
