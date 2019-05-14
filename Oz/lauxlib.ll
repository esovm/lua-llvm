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
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"open\00", align 1
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
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [50 x i8] c"PANIC: unprotected error in call to Lua API (%s)\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Lua warning: \00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #0 {
  %5 = alloca %struct.lua_Debug, align 8
  %6 = alloca %struct.lua_Debug, align 8
  %7 = bitcast %struct.lua_Debug* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %7) #4
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %9 = bitcast %struct.lua_Debug* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %9) #4
  br label %10

; <label>:10:                                     ; preds = %10, %4
  %11 = phi i32 [ 1, %4 ], [ %15, %10 ]
  %12 = phi i32 [ 1, %4 ], [ %11, %10 ]
  %13 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %11, %struct.lua_Debug* nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  %15 = shl nsw i32 %11, 1
  br i1 %14, label %16, label %10

; <label>:16:                                     ; preds = %10
  br label %17

; <label>:17:                                     ; preds = %16, %21
  %18 = phi i32 [ %27, %21 ], [ %11, %16 ]
  %19 = phi i32 [ %28, %21 ], [ %12, %16 ]
  %20 = icmp slt i32 %19, %18
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %17
  %22 = add nsw i32 %19, %18
  %23 = sdiv i32 %22, 2
  %24 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %23, %struct.lua_Debug* nonnull %5) #9
  %25 = icmp eq i32 %24, 0
  %26 = add nsw i32 %23, 1
  %27 = select i1 %25, i32 %23, i32 %18
  %28 = select i1 %25, i32 %19, i32 %26
  br label %17

; <label>:29:                                     ; preds = %17
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %9) #4
  %30 = xor i32 %3, -1
  %31 = add i32 %18, %30
  %32 = icmp sgt i32 %31, 21
  %33 = select i1 %32, i32 10, i32 -1
  %34 = icmp eq i8* %2, null
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %29
  %36 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* nonnull %2) #9
  br label %37

; <label>:37:                                     ; preds = %29, %35
  call void @luaL_checkstack(%struct.lua_State* %0, i32 10, i8* null) #10
  %38 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #9
  %39 = add nsw i32 %18, -12
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 15, i64 0
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 6
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 2
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 12
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 3
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 1
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 7
  br label %47

; <label>:47:                                     ; preds = %96, %37
  %48 = phi i32 [ %3, %37 ], [ %98, %96 ]
  %49 = phi i32 [ %33, %37 ], [ %53, %96 ]
  %50 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %48, %struct.lua_Debug* nonnull %6) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %99, label %52

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %49, -1
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %96

; <label>:57:                                     ; preds = %52
  %58 = call i32 @lua_getinfo(%struct.lua_State* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.lua_Debug* nonnull %6) #9
  %59 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %40) #9
  %60 = load i32, i32* %41, align 8, !tbaa !2
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %57
  %63 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %60) #9
  br label %64

; <label>:64:                                     ; preds = %62, %57
  %65 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9
  %66 = call fastcc i32 @pushglobalfuncname(%struct.lua_State* %0, %struct.lua_Debug* nonnull %6) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %64
  %69 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  %70 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8* %69) #9
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %88

; <label>:71:                                     ; preds = %64
  %72 = load i8*, i8** %42, align 8, !tbaa !10
  %73 = load i8, i8* %72, align 1, !tbaa !11
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

; <label>:75:                                     ; preds = %71
  %76 = load i8*, i8** %45, align 8, !tbaa !12
  %77 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* %72, i8* %76) #9
  br label %88

; <label>:78:                                     ; preds = %71
  %79 = load i8*, i8** %44, align 8, !tbaa !13
  %80 = load i8, i8* %79, align 1, !tbaa !11
  switch i8 %80, label %83 [
    i8 109, label %81
    i8 67, label %86
  ]

; <label>:81:                                     ; preds = %78
  %82 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0)) #9
  br label %88

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %46, align 4, !tbaa !14
  %85 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %40, i32 %84) #9
  br label %88

; <label>:86:                                     ; preds = %78
  %87 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #9
  br label %88

; <label>:88:                                     ; preds = %68, %75, %81, %83, %86
  %89 = load i8, i8* %43, align 1, !tbaa !15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %88
  %92 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %93

; <label>:93:                                     ; preds = %88, %91
  %94 = call i32 @lua_gettop(%struct.lua_State* %0) #9
  %95 = sub nsw i32 %94, %8
  call void @lua_concat(%struct.lua_State* %0, i32 %95) #9
  br label %96

; <label>:96:                                     ; preds = %93, %55
  %97 = phi i32 [ %39, %55 ], [ %48, %93 ]
  %98 = add nsw i32 %97, 1
  br label %47

; <label>:99:                                     ; preds = %47
  %100 = call i32 @lua_gettop(%struct.lua_State* %0) #9
  %101 = sub nsw i32 %100, %8
  call void @lua_concat(%struct.lua_State* %0, i32 %101) #9
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %7) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i8* %2, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %2) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #10
  br label %12

; <label>:12:                                     ; preds = %3, %8, %10
  ret void
}

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = bitcast %struct.lua_Debug* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %5) #4
  %6 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %4) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %1, i8* %2) #10
  br label %38

; <label>:10:                                     ; preds = %3
  %11 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.lua_Debug* nonnull %4) #9
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8, !tbaa !10
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, -1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %21, i8* %2) #10
  br label %38

; <label>:23:                                     ; preds = %16, %10
  %24 = phi i32 [ %17, %16 ], [ %1, %10 ]
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1
  %26 = load i8*, i8** %25, align 8, !tbaa !12
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %23
  %29 = call fastcc i32 @pushglobalfuncname(%struct.lua_State* %0, %struct.lua_Debug* nonnull %4) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %28
  %32 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  br label %33

; <label>:33:                                     ; preds = %28, %31
  %34 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %28 ]
  store i8* %34, i8** %25, align 8, !tbaa !12
  br label %35

; <label>:35:                                     ; preds = %33, %23
  %36 = phi i8* [ %34, %33 ], [ %26, %23 ]
  %37 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %24, i8* %36, i8* %2) #10
  br label %38

; <label>:38:                                     ; preds = %35, %19, %8
  %39 = phi i32 [ %22, %19 ], [ %37, %35 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %5) #4
  ret i32 %39
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  call void @luaL_where(%struct.lua_State* %0, i32 1) #10
  %6 = call i8* @lua_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #9
  call void @llvm.va_end(i8* nonnull %4)
  call void @lua_concat(%struct.lua_State* %0, i32 2) #9
  %7 = call i32 @lua_error(%struct.lua_State* %0) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4
  ret i32 %7
}

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @pushglobalfuncname(%struct.lua_State*, %struct.lua_Debug*) unnamed_addr #0 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %4 = tail call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.lua_Debug* %1) #9
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #9
  %6 = add nsw i32 %3, 1
  %7 = tail call fastcc i32 @findfield(%struct.lua_State* %0, i32 %6, i32 2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %2
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  %11 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 3) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %10, i64 3
  %15 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %14) #9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %16

; <label>:16:                                     ; preds = %13, %9
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 %6) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #9
  br label %18

; <label>:17:                                     ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 %3) #9
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = phi i32 [ 1, %16 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: minsize optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  br label %14

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %13 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %12) #9
  br label %14

; <label>:14:                                     ; preds = %8, %11, %6
  %15 = phi i8* [ %7, %6 ], [ %13, %11 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), %8 ]
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %2, i8* %15) #9
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %16) #10
  ret i32 %17
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %2) #9
  %8 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #9
  br label %12

; <label>:11:                                     ; preds = %6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %12

; <label>:12:                                     ; preds = %10, %11, %3
  %13 = phi i32 [ 0, %3 ], [ %8, %11 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %4) #4
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %1, %struct.lua_Debug* nonnull %3) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %2
  %8 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #9
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 6
  %10 = load i32, i32* %9, align 8, !tbaa !2
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 15, i64 0
  %14 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %13, i32 %10) #9
  br label %17

; <label>:15:                                     ; preds = %2, %7
  %16 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %17

; <label>:17:                                     ; preds = %15, %12
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %4) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: minsize optsize
declare i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: minsize optsize
declare i32 @lua_error(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32* @__errno_location() #12
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #9
  br label %17

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  %9 = icmp eq i8* %2, null
  %10 = tail call i8* @strerror(i32 %5) #9
  br i1 %9, label %13, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %2, i8* %10) #9
  br label %15

; <label>:13:                                     ; preds = %8
  %14 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %10) #9
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = sext i32 %5 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #9
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i32 [ 1, %7 ], [ 3, %15 ]
  ret i32 %18
}

; Function Attrs: minsize nounwind optsize readnone
declare i32* @__errno_location() local_unnamed_addr #5

; Function Attrs: minsize optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare i8* @strerror(i32) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #0 {
  switch i32 %1, label %6 [
    i32 -1, label %3
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %2
  %4 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #10
  br label %10

; <label>:5:                                      ; preds = %2
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #9
  br label %7

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %7

; <label>:7:                                      ; preds = %6, %5
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #9
  %9 = sext i32 %1 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #9
  br label %10

; <label>:10:                                     ; preds = %7, %3
  %11 = phi i32 [ %4, %3 ], [ 3, %7 ]
  ret i32 %11
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #9
  %6 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: minsize optsize
declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_setmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  %4 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #9
  ret void
}

; Function Attrs: minsize optsize
declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_testudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp eq i8* %4, null
  br i1 %5, label %14, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %2) #9
  %11 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -1, i32 -2) #9
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8* null, i8* %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #9
  br label %14

; <label>:14:                                     ; preds = %3, %6, %9
  %15 = phi i8* [ %13, %9 ], [ null, %6 ], [ null, %3 ]
  ret i8* %15
}

; Function Attrs: minsize optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i8* @luaL_testudata(%struct.lua_State* %0, i32 %1, i8* %2) #10
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 %1, i8* %2) #10
  br label %8

; <label>:8:                                      ; preds = %3, %6
  ret i8* %4
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8** nocapture readonly) local_unnamed_addr #0 {
  %5 = icmp eq i8* %2, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %1, i8* nonnull %2, i64* null) #10
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #10
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i8* [ %7, %6 ], [ %9, %8 ]
  br label %12

; <label>:12:                                     ; preds = %20, %10
  %13 = phi i64 [ %21, %20 ], [ 0, %10 ]
  %14 = getelementptr inbounds i8*, i8** %3, i64 %13
  %15 = load i8*, i8** %14, align 8, !tbaa !17
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %12
  %18 = tail call i32 @strcmp(i8* nonnull %15, i8* %11) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %17
  %21 = add nuw i64 %13, 1
  br label %12

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %11) #9
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %23) #10
  br label %27

; <label>:25:                                     ; preds = %17
  %26 = trunc i64 %13 to i32
  br label %27

; <label>:27:                                     ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_optlstring(%struct.lua_State*, i32, i8* readonly, i64*) local_unnamed_addr #0 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64* %3, null
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %2, null
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %9
  %12 = tail call i64 @strlen(i8* nonnull %2) #11
  br label %13

; <label>:13:                                     ; preds = %9, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %9 ]
  store i64 %14, i64* %3, align 8, !tbaa !18
  br label %17

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %3) #10
  br label %17

; <label>:17:                                     ; preds = %13, %7, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %7 ], [ %2, %13 ]
  ret i8* %18
}

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2) #9
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 4) #10
  br label %7

; <label>:7:                                      ; preds = %3, %6
  ret i8* %4
}

; Function Attrs: minsize optsize
declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %3
  tail call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 %2) #10
  br label %7

; <label>:7:                                      ; preds = %3, %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @tag_error(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #9
  %5 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 %1, i8* %4) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0)) #10
  br label %7

; <label>:7:                                      ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize uwtable
define double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %1, i32* nonnull %3) #9
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 3) #10
  br label %9

; <label>:9:                                      ; preds = %2, %8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret double %5
}

; Function Attrs: minsize optsize
declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %1) #10
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi double [ %7, %6 ], [ %2, %3 ]
  ret double %9
}

; Function Attrs: minsize nounwind optsize uwtable
define i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %1, i32* nonnull %3) #9
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %2
  %9 = call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %8
  %12 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0)) #9
  br label %14

; <label>:13:                                     ; preds = %8
  call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 3) #9
  br label %14

; <label>:14:                                     ; preds = %13, %11, %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i64 %5
}

; Function Attrs: minsize optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #10
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i64 [ %7, %6 ], [ %2, %3 ]
  ret i64 %9
}

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %1, i32 -1) #10
  ret i8* %3
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @prepbuffsize(%struct.luaL_Buffer*, i64, i32) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8, !tbaa !21
  %8 = sub i64 %5, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8, !tbaa !22
  %13 = getelementptr inbounds i8, i8* %12, i64 %7
  br label %51

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !23
  %17 = shl i64 %5, 1
  %18 = xor i64 %1, -1
  %19 = icmp ugt i64 %7, %18
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %14
  %21 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #9
  %22 = sext i32 %21 to i64
  br label %27

; <label>:23:                                     ; preds = %14
  %24 = add i64 %7, %1
  %25 = icmp ult i64 %17, %24
  %26 = select i1 %25, i64 %24, i64 %17
  br label %27

; <label>:27:                                     ; preds = %20, %23
  %28 = phi i64 [ %22, %20 ], [ %26, %23 ]
  %29 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 4
  %32 = bitcast %union.anon* %31 to i8*
  %33 = icmp eq i8* %30, %32
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %27
  %35 = tail call fastcc i8* @resizebox(%struct.lua_State* %16, i32 %2, i64 %28) #10
  br label %47

; <label>:36:                                     ; preds = %27
  tail call void @lua_pushnil(%struct.lua_State* %16) #9
  %37 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %16, i64 16, i32 0) #9
  tail call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 16, i32 8, i1 false) #4
  %38 = tail call i32 @luaL_newmetatable(%struct.lua_State* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

; <label>:40:                                     ; preds = %36
  tail call void @luaL_setfuncs(%struct.lua_State* %16, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @boxmt, i64 0, i64 0), i32 0) #9
  br label %41

; <label>:41:                                     ; preds = %36, %40
  %42 = tail call i32 @lua_setmetatable(%struct.lua_State* %16, i32 -2) #9
  %43 = add nsw i32 %2, -1
  tail call void @lua_rotate(%struct.lua_State* %16, i32 %43, i32 2) #9
  tail call void @lua_toclose(%struct.lua_State* %16, i32 %2) #9
  %44 = tail call fastcc i8* @resizebox(%struct.lua_State* %16, i32 %2, i64 %28) #10
  %45 = load i8*, i8** %29, align 8, !tbaa !22
  %46 = load i64, i64* %6, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false)
  br label %47

; <label>:47:                                     ; preds = %41, %34
  %48 = phi i8* [ %35, %34 ], [ %44, %41 ]
  store i8* %48, i8** %29, align 8, !tbaa !22
  store i64 %28, i64* %4, align 8, !tbaa !19
  %49 = load i64, i64* %6, align 8, !tbaa !21
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  br label %51

; <label>:51:                                     ; preds = %47, %10
  %52 = phi i8* [ %13, %10 ], [ %50, %47 ]
  ret i8* %52
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_addlstring(%struct.luaL_Buffer*, i8* nocapture readonly, i64) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %2, i32 -1) #10
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %1, i64 %2, i32 1, i1 false)
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %8 = load i64, i64* %7, align 8, !tbaa !21
  %9 = add i64 %8, %2
  store i64 %9, i64* %7, align 8, !tbaa !21
  br label %10

; <label>:10:                                     ; preds = %3, %5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_addstring(%struct.luaL_Buffer*, i8* nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %1) #11
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %0, i8* %1, i64 %3) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_pushresult(%struct.luaL_Buffer* readonly) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8, !tbaa !21
  %8 = tail call i8* @lua_pushlstring(%struct.lua_State* %3, i8* %5, i64 %7) #9
  %9 = load i8*, i8** %4, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 4
  %11 = bitcast %union.anon* %10 to i8*
  %12 = icmp eq i8* %9, %11
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %1
  tail call void @lua_copy(%struct.lua_State* %3, i32 -1, i32 -3) #9
  tail call void @lua_settop(%struct.lua_State* %3, i32 -3) #9
  br label %14

; <label>:14:                                     ; preds = %1, %13
  ret void
}

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = add i64 %4, %1
  store i64 %5, i64* %3, align 8, !tbaa !21
  tail call void @luaL_pushresult(%struct.luaL_Buffer* %0) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !23
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !18
  %8 = call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %7, i32 -2) #10
  %9 = load i64, i64* %2, align 8, !tbaa !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %6, i64 %9, i32 1, i1 false)
  %10 = load i64, i64* %2, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %12 = load i64, i64* %11, align 8, !tbaa !21
  %13 = add i64 %12, %10
  store i64 %13, i64* %11, align 8, !tbaa !21
  call void @lua_settop(%struct.lua_State* %4, i32 -2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 4
  %5 = bitcast %struct.luaL_Buffer* %1 to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1
  %7 = bitcast i64* %6 to <2 x i64>*
  store <2 x i64> <i64 1024, i64 0>, <2 x i64>* %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 4
  %6 = bitcast %struct.luaL_Buffer* %1 to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1
  %8 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> <i64 1024, i64 0>, <2 x i64>* %8, align 8, !tbaa !18
  %9 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %1, i64 %2, i32 -1) #10
  ret i8* %9
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_ref(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %23

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #9
  %8 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %7, i64 0) #9
  %9 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1, i32* null) #9
  %10 = trunc i64 %9 to i32
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %6
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %7, i64 %14) #9
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %7, i64 0) #9
  br label %20

; <label>:16:                                     ; preds = %6
  %17 = tail call i64 @lua_rawlen(%struct.lua_State* %0, i32 %7) #9
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %18, 1
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = phi i32 [ %10, %12 ], [ %19, %16 ]
  %22 = sext i32 %21 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %7, i64 %22) #9
  br label %23

; <label>:23:                                     ; preds = %20, %5
  %24 = phi i32 [ -1, %5 ], [ %21, %20 ]
  ret i32 %24
}

; Function Attrs: minsize optsize
declare i32 @lua_absindex(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i64 @lua_rawlen(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_unref(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, -1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #9
  %7 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %6, i64 0) #9
  %8 = sext i32 %2 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %6, i64 %8) #9
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #9
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %6, i64 0) #9
  br label %9

; <label>:9:                                      ; preds = %5, %3
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.LoadF, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.LoadF* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8208, i8* nonnull %6) #4
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %9 = add nsw i32 %8, 1
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #9
  %13 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  %15 = bitcast %struct._IO_FILE** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !24
  br label %22

; <label>:16:                                     ; preds = %3
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* nonnull %1) #9
  %18 = tail call %struct._IO_FILE* @fopen64(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #10
  %19 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  store %struct._IO_FILE* %18, %struct._IO_FILE** %19, align 8, !tbaa !24
  %20 = icmp eq %struct._IO_FILE* %18, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  tail call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 %9) #10
  br label %67

; <label>:22:                                     ; preds = %16, %11
  %23 = call fastcc i32 @skipcomment(%struct.LoadF* nonnull %4, i32* nonnull %5) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8, !tbaa !26
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 2, i64 %29
  store i8 10, i8* %30, align 1, !tbaa !11
  br label %31

; <label>:31:                                     ; preds = %22, %25
  %32 = load i32, i32* %5, align 4, !tbaa !16
  %33 = icmp eq i32 %32, 27
  %34 = icmp ne i8* %1, null
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8, !tbaa !24
  %39 = tail call %struct._IO_FILE* @freopen64(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %38) #9
  store %struct._IO_FILE* %39, %struct._IO_FILE** %37, align 8, !tbaa !24
  %40 = icmp eq %struct._IO_FILE* %39, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  tail call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32 %9) #10
  br label %67

; <label>:42:                                     ; preds = %36
  %43 = call fastcc i32 @skipcomment(%struct.LoadF* nonnull %4, i32* nonnull %5) #10
  %44 = load i32, i32* %5, align 4, !tbaa !16
  br label %45

; <label>:45:                                     ; preds = %42, %31
  %46 = phi i32 [ %44, %42 ], [ %32, %31 ]
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %55, label %48

; <label>:48:                                     ; preds = %45
  %49 = trunc i32 %46 to i8
  %50 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 0
  %51 = load i32, i32* %50, align 8, !tbaa !26
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8, !tbaa !26
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 2, i64 %53
  store i8 %49, i8* %54, align 1, !tbaa !11
  br label %55

; <label>:55:                                     ; preds = %45, %48
  %56 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  %57 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getF, i8* nonnull %6, i8* %56, i8* %2) #9
  %58 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %58, align 8, !tbaa !24
  %60 = call i32 @ferror(%struct._IO_FILE* %59) #9
  br i1 %34, label %61, label %63

; <label>:61:                                     ; preds = %55
  %62 = call i32 @fclose(%struct._IO_FILE* %59) #10
  br label %63

; <label>:63:                                     ; preds = %61, %55
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %66, label %65

; <label>:65:                                     ; preds = %63
  call void @lua_settop(%struct.lua_State* %0, i32 %9) #9
  call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %9) #10
  br label %67

; <label>:66:                                     ; preds = %63
  call void @lua_rotate(%struct.lua_State* %0, i32 %9, i32 -1) #9
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %67

; <label>:67:                                     ; preds = %66, %65, %41, %21
  %68 = phi i32 [ 6, %41 ], [ 6, %65 ], [ %57, %66 ], [ 6, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8208, i8* nonnull %6) #4
  ret i32 %68
}

; Function Attrs: minsize nounwind optsize
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @errfile(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = tail call i32* @__errno_location() #12
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = tail call i8* @strerror(i32 %5) #9
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* null) #9
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i8* %1, i8* nonnull %8, i8* %6) #9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @skipcomment(%struct.LoadF* nocapture, i32* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 0
  store i32 0, i32* %3, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 1
  br label %5

; <label>:5:                                      ; preds = %15, %2
  %6 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), %2 ], [ %11, %15 ]
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !24
  %8 = tail call i32 @_IO_getc(%struct._IO_FILE* %7) #9
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %36, label %10

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %6, align 1, !tbaa !11
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %10
  %16 = trunc i32 %8 to i8
  %17 = load i32, i32* %3, align 8, !tbaa !26
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 8, !tbaa !26
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 2, i64 %19
  store i8 %16, i8* %20, align 1, !tbaa !11
  %21 = load i8, i8* %11, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %5

; <label>:23:                                     ; preds = %15
  store i32 0, i32* %3, align 8, !tbaa !26
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !24
  %25 = tail call i32 @_IO_getc(%struct._IO_FILE* %24) #9
  br label %26

; <label>:26:                                     ; preds = %10, %23
  %27 = phi i32 [ %25, %23 ], [ %8, %10 ]
  store i32 %27, i32* %1, align 4, !tbaa !16
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %26
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !24
  %32 = tail call i32 @_IO_getc(%struct._IO_FILE* %31) #10
  switch i32 %32, label %30 [
    i32 -1, label %33
    i32 10, label %33
  ]

; <label>:33:                                     ; preds = %30, %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !24
  %35 = tail call i32 @_IO_getc(%struct._IO_FILE* %34) #10
  br label %36

; <label>:36:                                     ; preds = %5, %33
  %37 = phi i32 [ %35, %33 ], [ -1, %5 ]
  %38 = phi i32 [ 1, %33 ], [ 0, %5 ]
  store i32 %37, i32* %1, align 4, !tbaa !16
  br label %39

; <label>:39:                                     ; preds = %36, %26
  %40 = phi i32 [ 0, %26 ], [ %38, %36 ]
  ret i32 %40
}

; Function Attrs: minsize optsize
declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal i8* @getF(%struct.lua_State* nocapture readnone, i8*, i64* nocapture) #0 {
  %4 = bitcast i8* %1 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !26
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %3
  %8 = sext i32 %5 to i64
  store i64 %8, i64* %2, align 8, !tbaa !18
  store i32 0, i32* %4, align 8, !tbaa !26
  %9 = getelementptr inbounds i8, i8* %1, i64 16
  br label %20

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct._IO_FILE**
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !tbaa !24
  %14 = tail call i32 @feof(%struct._IO_FILE* %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %1, i64 16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !tbaa !24
  %19 = tail call i64 @fread(i8* nonnull %17, i64 1, i64 8192, %struct._IO_FILE* %18) #10
  store i64 %19, i64* %2, align 8, !tbaa !18
  br label %20

; <label>:20:                                     ; preds = %7, %16, %10
  %21 = phi i8* [ null, %10 ], [ %17, %16 ], [ %9, %7 ]
  ret i8* %21
}

; Function Attrs: minsize nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #0 {
  %6 = alloca %struct.LoadS, align 8
  %7 = bitcast %struct.LoadS* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4
  %8 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %6, i64 0, i32 0
  store i8* %1, i8** %8, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %6, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !29
  %10 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %7, i8* %3, i8* %4) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4
  ret i32 %10
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal i8* @getS(%struct.lua_State* nocapture readnone, i8* nocapture, i64* nocapture) #8 {
  %4 = getelementptr inbounds i8, i8* %1, i64 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !29
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %3
  store i64 %6, i64* %2, align 8, !tbaa !18
  store i64 0, i64* %5, align 8, !tbaa !29
  %9 = bitcast i8* %1 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !27
  br label %11

; <label>:11:                                     ; preds = %3, %8
  %12 = phi i8* [ %10, %8 ], [ null, %3 ]
  ret i8* %12
}

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_loadstring(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %1) #11
  %4 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %3, i8* %1, i8* null) #10
  ret i32 %4
}

; Function Attrs: minsize optsize
declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #9
  %5 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %4, i8* %2) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %4) #9
  tail call void @lua_callk(%struct.lua_State* %0, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %8

; <label>:8:                                      ; preds = %3, %7
  %9 = phi i32 [ 1, %7 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: minsize optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  tail call void @lua_len(%struct.lua_State* %0, i32 %1) #9
  %5 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1, i32* nonnull %3) #9
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0)) #10
  br label %10

; <label>:10:                                     ; preds = %2, %8
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i64 %5
}

; Function Attrs: minsize optsize
declare void @lua_len(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0)) #10
  br label %44

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  switch i32 %12, label %30 [
    i32 3, label %13
    i32 4, label %22
    i32 1, label %23
    i32 0, label %28
  ]

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %1, i32* null) #9
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i64 %17) #9
  br label %44

; <label>:19:                                     ; preds = %13
  %20 = tail call double @lua_tonumberx(%struct.lua_State* %0, i32 %1, i32* null) #9
  %21 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), double %20) #9
  br label %44

; <label>:22:                                     ; preds = %11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #9
  br label %44

; <label>:23:                                     ; preds = %11
  %24 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 %1) #9
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)
  %27 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %26) #9
  br label %44

; <label>:28:                                     ; preds = %11
  %29 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)) #9
  br label %44

; <label>:30:                                     ; preds = %11
  %31 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #10
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  br label %38

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %37 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %36) #9
  br label %38

; <label>:38:                                     ; preds = %35, %33
  %39 = phi i8* [ %34, %33 ], [ %37, %35 ]
  %40 = tail call i8* @lua_topointer(%struct.lua_State* %0, i32 %1) #9
  %41 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %39, i8* %40) #9
  %42 = icmp eq i32 %31, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %38
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %44

; <label>:44:                                     ; preds = %43, %38, %6, %22, %23, %28, %19, %16, %9
  %45 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* %2) #9
  ret i8* %45
}

; Function Attrs: minsize optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg* nocapture readonly, i32) local_unnamed_addr #0 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0)) #10
  %4 = sub nsw i32 0, %2
  %5 = sub i32 -2, %2
  br label %6

; <label>:6:                                      ; preds = %17, %3
  %7 = phi %struct.luaL_Reg* [ %1, %3 ], [ %21, %17 ]
  %8 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %7, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !30
  %10 = icmp eq i8* %9, null
  br i1 %10, label %22, label %11

; <label>:11:                                     ; preds = %6
  br label %12

; <label>:12:                                     ; preds = %11, %15
  %13 = phi i32 [ %16, %15 ], [ 0, %11 ]
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %4) #9
  %16 = add nuw nsw i32 %13, 1
  br label %12

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %7, i64 0, i32 1
  %19 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %18, align 8, !tbaa !32
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %19, i32 %2) #9
  %20 = load i8*, i8** %8, align 8, !tbaa !30
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %5, i8* %20) #9
  %21 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %7, i64 1
  br label %6

; <label>:22:                                     ; preds = %6
  %23 = xor i32 %2, -1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %23) #9
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 %1, i8* %2) #9
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  %7 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #9
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %7, i8* %2) #9
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ 0, %6 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 {
  %5 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #10
  %6 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1) #9
  %7 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %2, i32 0) #9
  %10 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #9
  tail call void @lua_callk(%struct.lua_State* %0, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %1) #9
  br label %11

; <label>:11:                                     ; preds = %4, %9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %1) #9
  br label %14

; <label>:14:                                     ; preds = %11, %13
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_addgsub(%struct.luaL_Buffer*, i8*, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(i8* %2) #11
  br label %6

; <label>:6:                                      ; preds = %10, %4
  %7 = phi i8* [ %1, %4 ], [ %14, %10 ]
  %8 = tail call i8* @strstr(i8* %7, i8* %2) #11
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

; <label>:10:                                     ; preds = %6
  %11 = ptrtoint i8* %8 to i64
  %12 = ptrtoint i8* %7 to i64
  %13 = sub i64 %11, %12
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %0, i8* %7, i64 %13) #10
  tail call void @luaL_addstring(%struct.luaL_Buffer* %0, i8* %3) #10
  %14 = getelementptr inbounds i8, i8* %8, i64 %5
  br label %6

; <label>:15:                                     ; preds = %6
  tail call void @luaL_addstring(%struct.luaL_Buffer* %0, i8* %7) #10
  ret void
}

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
define i8* @luaL_gsub(%struct.lua_State*, i8*, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %6) #4
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 4
  %9 = bitcast %struct.luaL_Buffer* %5 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 1024, i64 0>, <2 x i64>* %11, align 8, !tbaa !18
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %5, i8* %1, i8* %2, i8* %3) #10
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #10
  %12 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %6) #4
  ret i8* %12
}

; Function Attrs: minsize nounwind optsize uwtable
define %struct.lua_State* @luaL_newstate() local_unnamed_addr #0 {
  %1 = tail call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* nonnull @l_alloc, i8* null) #9
  %2 = icmp eq %struct.lua_State* %1, null
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nonnull %1, i32 (%struct.lua_State*)* nonnull @panic) #9
  %5 = tail call i8* @lua_newuserdatauv(%struct.lua_State* nonnull %1, i64 4, i32 0) #9
  %6 = bitcast i8* %5 to i32*
  %7 = tail call i32 @luaL_ref(%struct.lua_State* nonnull %1, i32 -1001000) #10
  store i32 0, i32* %6, align 4, !tbaa !16
  tail call void @lua_setwarnf(%struct.lua_State* nonnull %1, void (i8*, i8*, i32)* nonnull @warnf, i8* %5) #9
  br label %8

; <label>:8:                                      ; preds = %0, %3
  ret %struct.lua_State* %1
}

; Function Attrs: minsize optsize
declare %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal noalias i8* @l_alloc(i8* nocapture readnone, i8* nocapture, i64, i64) #0 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %4
  tail call void @free(i8* %1) #9
  br label %9

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @realloc(i8* %1, i64 %3) #9
  br label %9

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %10
}

; Function Attrs: minsize optsize
declare i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @panic(%struct.lua_State*) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %3 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.62, i64 0, i64 0), i8* %3) #13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5) #10
  ret i32 0
}

; Function Attrs: minsize optsize
declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_setwarnf(%struct.lua_State*, void (i8*, i8*, i32)*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal void @warnf(i8* nocapture, i8* nocapture readonly, i32) #0 {
  %4 = bitcast i8* %0 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %9 = tail call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), %struct._IO_FILE* %8) #14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %11 = tail call i32 @fflush(%struct._IO_FILE* %10) #10
  br label %12

; <label>:12:                                     ; preds = %3, %7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %14 = tail call i32 @fputs(i8* %1, %struct._IO_FILE* %13) #14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %16 = tail call i32 @fflush(%struct._IO_FILE* %15) #10
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %20 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), %struct._IO_FILE* %19) #14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %22 = tail call i32 @fflush(%struct._IO_FILE* %21) #10
  br label %23

; <label>:23:                                     ; preds = %12, %18
  store i32 %2, i32* %4, align 4, !tbaa !16
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #0 {
  %4 = tail call double @lua_version(%struct.lua_State* %0) #9
  %5 = icmp eq i64 %2, 136
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i64 0, i64 0)) #10
  br label %12

; <label>:8:                                      ; preds = %3
  %9 = fcmp une double %4, %1
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %8
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i64 0, i64 0), double %1, double %4) #10
  br label %12

; <label>:12:                                     ; preds = %8, %10, %6
  ret void
}

; Function Attrs: minsize optsize
declare double @lua_version(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @findfield(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %26, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #9
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %5
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  %9 = add nsw i32 %2, -1
  br label %10

; <label>:10:                                     ; preds = %25, %8
  %11 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #9
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 %1, i32 -1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %16
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %26

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc i32 @findfield(%struct.lua_State* %0, i32 %1, i32 %9) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  %24 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #9
  tail call void @lua_concat(%struct.lua_State* %0, i32 3) #9
  br label %26

; <label>:25:                                     ; preds = %20, %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %10

; <label>:26:                                     ; preds = %10, %3, %5, %23, %19
  %27 = phi i32 [ 1, %19 ], [ 1, %23 ], [ 0, %5 ], [ 0, %3 ], [ 0, %10 ]
  ret i32 %27
}

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @resizebox(%struct.lua_State*, i32, i64) unnamed_addr #0 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %6 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #9
  %7 = call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #9
  %8 = load i8*, i8** %4, align 8, !tbaa !17
  %9 = bitcast i8* %7 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !33
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = call i8* %6(i8* %8, i8* %10, i64 %13, i64 %2) #9
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %2, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0)) #10
  br label %20

; <label>:20:                                     ; preds = %18, %3
  store i8* %14, i8** %9, align 8, !tbaa !33
  store i64 %2, i64* %12, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  ret i8* %14
}

; Function Attrs: minsize optsize
declare void @lua_toclose(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @boxgc(%struct.lua_State*) #0 {
  %2 = tail call fastcc i8* @resizebox(%struct.lua_State* %0, i32 1, i64 0) #10
  ret i32 0
}

; Function Attrs: minsize nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { minsize nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { minsize nounwind optsize }
attributes #10 = { minsize optsize }
attributes #11 = { minsize nounwind optsize readonly }
attributes #12 = { minsize nounwind optsize readnone }
attributes #13 = { cold minsize optsize }
attributes #14 = { cold }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 48}
!3 = !{!"lua_Debug", !4, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !9, i64 64, !9, i64 66, !5, i64 68, !7, i64 128}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!3, !7, i64 16}
!11 = !{!5, !5, i64 0}
!12 = !{!3, !7, i64 8}
!13 = !{!3, !7, i64 24}
!14 = !{!3, !4, i64 52}
!15 = !{!3, !5, i64 63}
!16 = !{!4, !4, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !8, i64 8}
!20 = !{!"luaL_Buffer", !7, i64 0, !8, i64 8, !8, i64 16, !7, i64 24, !5, i64 32}
!21 = !{!20, !8, i64 16}
!22 = !{!20, !7, i64 0}
!23 = !{!20, !7, i64 24}
!24 = !{!25, !7, i64 8}
!25 = !{!"LoadF", !4, i64 0, !7, i64 8, !5, i64 16}
!26 = !{!25, !4, i64 0}
!27 = !{!28, !7, i64 0}
!28 = !{!"LoadS", !7, i64 0, !8, i64 8}
!29 = !{!28, !8, i64 8}
!30 = !{!31, !7, i64 0}
!31 = !{!"luaL_Reg", !7, i64 0, !7, i64 8}
!32 = !{!31, !7, i64 8}
!33 = !{!34, !7, i64 0}
!34 = !{!"UBox", !7, i64 0, !8, i64 8}
!35 = !{!34, !8, i64 8}
