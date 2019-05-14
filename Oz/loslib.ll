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

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_os(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 11) #7
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0), i32 0) #7
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_clock(%struct.lua_State*) #0 {
  %2 = tail call i64 @clock() #7
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_date(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64* nonnull %2) #7
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 2) #7
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = call i64 @time(i64* null) #7
  br label %15

; <label>:13:                                     ; preds = %1
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
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
  br label %104

; <label>:32:                                     ; preds = %26
  %33 = call i32 @strcmp(i8* nonnull %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #7
  call fastcc void @setallfields(%struct.lua_State* %0, %struct.tm* nonnull %27) #10
  br label %104

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #8
  %38 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %38) #8
  store i8 37, i8* %37, align 1, !tbaa !6
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #7
  %39 = ptrtoint i8* %18 to i64
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %41 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %43 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  br label %44

; <label>:44:                                     ; preds = %101, %36
  %45 = phi i8* [ %28, %36 ], [ %102, %101 ]
  %46 = icmp ult i8* %45, %18
  br i1 %46, label %47, label %103

; <label>:47:                                     ; preds = %44
  %48 = load i8, i8* %45, align 1, !tbaa !6
  %49 = icmp eq i8 %48, 37
  br i1 %49, label %65, label %50

; <label>:50:                                     ; preds = %47
  %51 = load i64, i64* %41, align 8, !tbaa !7
  %52 = load i64, i64* %42, align 8, !tbaa !10
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %50
  %55 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #7
  %56 = load i8, i8* %45, align 1, !tbaa !6
  %57 = load i64, i64* %41, align 8, !tbaa !7
  br label %58

; <label>:58:                                     ; preds = %54, %50
  %59 = phi i64 [ %57, %54 ], [ %51, %50 ]
  %60 = phi i8 [ %56, %54 ], [ %48, %50 ]
  %61 = getelementptr inbounds i8, i8* %45, i64 1
  %62 = load i8*, i8** %43, align 8, !tbaa !11
  %63 = add i64 %59, 1
  store i64 %63, i64* %41, align 8, !tbaa !7
  %64 = getelementptr inbounds i8, i8* %62, i64 %59
  store i8 %60, i8* %64, align 1, !tbaa !6
  br label %101

; <label>:65:                                     ; preds = %47
  %66 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 250) #7
  %67 = getelementptr inbounds i8, i8* %45, i64 1
  %68 = ptrtoint i8* %67 to i64
  %69 = sub i64 %39, %68
  br label %70

; <label>:70:                                     ; preds = %89, %65
  %71 = phi i8* [ getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i64 0, i64 0), %65 ], [ %92, %89 ]
  %72 = phi i32 [ 1, %65 ], [ %91, %89 ]
  %73 = load i8, i8* %71, align 1, !tbaa !6
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %93, label %75

; <label>:75:                                     ; preds = %70
  %76 = sext i32 %72 to i64
  %77 = icmp slt i64 %69, %76
  br i1 %77, label %93, label %78

; <label>:78:                                     ; preds = %75
  %79 = icmp eq i8 %73, 124
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %78
  %81 = add nsw i32 %72, 1
  %82 = sext i32 %81 to i64
  br label %89

; <label>:83:                                     ; preds = %78
  %84 = call i32 @memcmp(i8* nonnull %67, i8* %71, i64 %76) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %40, i8* nonnull %67, i64 %76, i32 1, i1 false) #8
  %87 = getelementptr inbounds i8, i8* %40, i64 %76
  store i8 0, i8* %87, align 1, !tbaa !6
  %88 = getelementptr inbounds i8, i8* %67, i64 %76
  br label %96

; <label>:89:                                     ; preds = %83, %80
  %90 = phi i64 [ %82, %80 ], [ %76, %83 ]
  %91 = phi i32 [ %81, %80 ], [ %72, %83 ]
  %92 = getelementptr inbounds i8, i8* %71, i64 %90
  br label %70

; <label>:93:                                     ; preds = %75, %70
  %94 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* nonnull %67) #7
  %95 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %94) #7
  br label %96

; <label>:96:                                     ; preds = %86, %93
  %97 = phi i8* [ %88, %86 ], [ %67, %93 ]
  %98 = call i64 @strftime(i8* %66, i64 250, i8* nonnull %37, %struct.tm* nonnull %27) #7
  %99 = load i64, i64* %41, align 8, !tbaa !7
  %100 = add i64 %99, %98
  store i64 %100, i64* %41, align 8, !tbaa !7
  br label %101

; <label>:101:                                    ; preds = %96, %58
  %102 = phi i8* [ %61, %58 ], [ %97, %96 ]
  br label %44

; <label>:103:                                    ; preds = %44
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %38) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #8
  br label %104

; <label>:104:                                    ; preds = %35, %103, %30
  %105 = phi i32 [ %31, %30 ], [ 1, %103 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  ret i32 %105
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_difftime(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
  %4 = tail call double @difftime(i64 %2, i64 %3) #11
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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
  tail call void @exit(i32 %12) #12
  unreachable

; <label>:19:                                     ; preds = %16
  ret i32 0
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_getenv(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i8* @getenv(i8* %2) #7
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %3) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_remove(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i32 @remove(i8* %2) #7
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* %2) #7
  ret i32 %6
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_rename(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #7
  %4 = tail call i32 @rename(i8* %2, i8* %3) #7
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %6, i8* null) #7
  ret i32 %7
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_time(%struct.lua_State*) #0 {
  %2 = alloca %struct.tm, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #7
  br label %29

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.tm* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #8
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #7
  %9 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 0) #10
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  store i32 %9, i32* %10, align 8, !tbaa !14
  %11 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0) #10
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  store i32 %11, i32* %12, align 4, !tbaa !16
  %13 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 12, i32 0) #10
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  store i32 %13, i32* %14, align 8, !tbaa !17
  %15 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 -1, i32 0) #10
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  store i32 %15, i32* %16, align 4, !tbaa !18
  %17 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 -1, i32 1) #10
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  store i32 %17, i32* %18, align 8, !tbaa !19
  %19 = tail call fastcc i32 @getfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 -1, i32 1900) #10
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  store i32 %19, i32* %20, align 4, !tbaa !20
  %21 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %7
  %24 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #7
  br label %25

; <label>:25:                                     ; preds = %7, %23
  %26 = phi i32 [ %24, %23 ], [ -1, %7 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  store i32 %26, i32* %27, align 8, !tbaa !21
  %28 = call i64 @mktime(%struct.tm* nonnull %2) #7
  call fastcc void @setallfields(%struct.lua_State* %0, %struct.tm* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #8
  br label %29

; <label>:29:                                     ; preds = %25, %5
  %30 = phi i64 [ %6, %5 ], [ %28, %25 ]
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %35

; <label>:34:                                     ; preds = %29
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %30) #7
  br label %35

; <label>:35:                                     ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  ret i32 %36
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @os_tmpname(%struct.lua_State*) #0 {
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #8
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
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #8
  ret i32 %11
}

; Function Attrs: minsize optsize
declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: minsize optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare %struct.tm* @gmtime(i64*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @setallfields(%struct.lua_State*, %struct.tm* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !14
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %4) #10
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !16
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %6) #10
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !17
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %8) #10
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !18
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %10) #10
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !19
  %13 = add nsw i32 %12, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %13) #10
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !20
  %16 = add nsw i32 %15, 1900
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %16) #10
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 6
  %18 = load i32, i32* %17, align 8, !tbaa !22
  %19 = add nsw i32 %18, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %19) #10
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !23
  %22 = add nsw i32 %21, 1
  tail call fastcc void @setfield(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %22) #10
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8
  %24 = load i32, i32* %23, align 8, !tbaa !21
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %2
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %24) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #7
  br label %27

; <label>:27:                                     ; preds = %2, %26
  ret void
}

; Function Attrs: minsize optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: minsize optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @setfield(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #7
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readnone
declare double @difftime(i64, i64) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare i32 @system(i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_close(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize noreturn nounwind optsize
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i32 @remove(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare i32 @rename(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @getfield(%struct.lua_State*, i8*, i32, i32) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  ret i32 %33
}

; Function Attrs: minsize nounwind optsize
declare i64 @mktime(%struct.tm* nocapture) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i8* @tmpnam(i8*) local_unnamed_addr #2

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize noreturn nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { minsize nounwind optsize readonly }
attributes #10 = { minsize optsize }
attributes #11 = { minsize nounwind optsize readnone }
attributes #12 = { minsize noreturn nounwind optsize }

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
