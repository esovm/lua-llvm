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

; Function Attrs: nounwind uwtable
define void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #0 {
  %5 = alloca %struct.lua_Debug, align 8
  %6 = bitcast %struct.lua_Debug* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %6) #4
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  %8 = tail call fastcc i32 @lastlevel(%struct.lua_State* %1)
  %9 = sub nsw i32 %8, %3
  %10 = icmp sgt i32 %9, 21
  %11 = select i1 %10, i32 10, i32 -1
  %12 = icmp eq i8* %2, null
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* nonnull %2) #4
  br label %15

; <label>:15:                                     ; preds = %4, %13
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 10, i8* null)
  %16 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #4
  %17 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %3, %struct.lua_Debug* nonnull %5) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

; <label>:19:                                     ; preds = %15
  %20 = add nsw i32 %8, -11
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i64 0, i32 15, i64 0
  %22 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i64 0, i32 6
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i64 0, i32 12
  br label %24

; <label>:24:                                     ; preds = %19, %47
  %25 = phi i32 [ %11, %19 ], [ %27, %47 ]
  %26 = phi i32 [ %3, %19 ], [ %49, %47 ]
  %27 = add nsw i32 %25, -1
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %24
  %30 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %47

; <label>:31:                                     ; preds = %24
  %32 = call i32 @lua_getinfo(%struct.lua_State* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.lua_Debug* nonnull %5) #4
  %33 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %21) #4
  %34 = load i32, i32* %22, align 8, !tbaa !2
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %31
  %37 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %34) #4
  br label %38

; <label>:38:                                     ; preds = %36, %31
  %39 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #4
  call fastcc void @pushfuncname(%struct.lua_State* %0, %struct.lua_Debug* nonnull %5)
  %40 = load i8, i8* %23, align 1, !tbaa !10
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %38
  %43 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %44

; <label>:44:                                     ; preds = %38, %42
  %45 = call i32 @lua_gettop(%struct.lua_State* %0) #4
  %46 = sub nsw i32 %45, %7
  call void @lua_concat(%struct.lua_State* %0, i32 %46) #4
  br label %47

; <label>:47:                                     ; preds = %44, %29
  %48 = phi i32 [ %20, %29 ], [ %26, %44 ]
  %49 = add nsw i32 %48, 1
  %50 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %49, %struct.lua_Debug* nonnull %5) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %24

; <label>:52:                                     ; preds = %47, %15
  %53 = call i32 @lua_gettop(%struct.lua_State* %0) #4
  %54 = sub nsw i32 %53, %7
  call void @lua_concat(%struct.lua_State* %0, i32 %54) #4
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %6) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lastlevel(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %3) #4
  br label %4

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i32 [ 1, %1 ], [ %9, %4 ]
  %6 = phi i32 [ 1, %1 ], [ %5, %4 ]
  %7 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %5, %struct.lua_Debug* nonnull %2) #4
  %8 = icmp eq i32 %7, 0
  %9 = shl nsw i32 %5, 1
  br i1 %8, label %10, label %4

; <label>:10:                                     ; preds = %4
  %11 = icmp slt i32 %6, %5
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %10
  br label %13

; <label>:13:                                     ; preds = %12, %13
  %14 = phi i32 [ %22, %13 ], [ %6, %12 ]
  %15 = phi i32 [ %21, %13 ], [ %5, %12 ]
  %16 = add nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  %18 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %17, %struct.lua_Debug* nonnull %2) #4
  %19 = icmp eq i32 %18, 0
  %20 = add nsw i32 %17, 1
  %21 = select i1 %19, i32 %17, i32 %15
  %22 = select i1 %19, i32 %14, i32 %20
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %13, label %24

; <label>:24:                                     ; preds = %13, %10
  %25 = phi i32 [ %5, %10 ], [ %21, %13 ]
  %26 = add nsw i32 %25, -1
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %3) #4
  ret i32 %26
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i8* %2, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %2)
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  br label %12

; <label>:12:                                     ; preds = %3, %8, %10
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #2

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pushfuncname(%struct.lua_State*, %struct.lua_Debug*) unnamed_addr #0 {
  %3 = tail call fastcc i32 @pushglobalfuncname(%struct.lua_State* %0, %struct.lua_Debug* %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8* %6) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %30

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = load i8, i8* %10, align 1, !tbaa !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !13
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* %10, i8* %15) #4
  br label %30

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8, !tbaa !14
  %20 = load i8, i8* %19, align 1, !tbaa !12
  switch i8 %20, label %23 [
    i8 109, label %21
    i8 67, label %28
  ]

; <label>:21:                                     ; preds = %17
  %22 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0)) #4
  br label %30

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 15, i64 0
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 7
  %26 = load i32, i32* %25, align 4, !tbaa !15
  %27 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %24, i32 %26) #4
  br label %30

; <label>:28:                                     ; preds = %17
  %29 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %30

; <label>:30:                                     ; preds = %13, %23, %28, %21, %5
  ret void
}

declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = bitcast %struct.lua_Debug* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %5) #4
  %6 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %4) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %1, i8* %2)
  br label %38

; <label>:10:                                     ; preds = %3
  %11 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.lua_Debug* nonnull %4) #4
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8, !tbaa !11
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, -1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1
  %21 = load i8*, i8** %20, align 8, !tbaa !13
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %21, i8* %2)
  br label %38

; <label>:23:                                     ; preds = %16, %10
  %24 = phi i32 [ %17, %16 ], [ %1, %10 ]
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1
  %26 = load i8*, i8** %25, align 8, !tbaa !13
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %23
  %29 = call fastcc i32 @pushglobalfuncname(%struct.lua_State* %0, %struct.lua_Debug* nonnull %4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %28
  %32 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  br label %33

; <label>:33:                                     ; preds = %28, %31
  %34 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %28 ]
  store i8* %34, i8** %25, align 8, !tbaa !13
  br label %35

; <label>:35:                                     ; preds = %33, %23
  %36 = load i8*, i8** %25, align 8, !tbaa !13
  %37 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %24, i8* %36, i8* %2)
  br label %38

; <label>:38:                                     ; preds = %35, %19, %8
  %39 = phi i32 [ %22, %19 ], [ %37, %35 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %5) #4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  call void @luaL_where(%struct.lua_State* %0, i32 1)
  %6 = call i8* @lua_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #4
  call void @llvm.va_end(i8* nonnull %4)
  call void @lua_concat(%struct.lua_State* %0, i32 2) #4
  %7 = call i32 @lua_error(%struct.lua_State* %0) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pushglobalfuncname(%struct.lua_State*, %struct.lua_Debug*) unnamed_addr #0 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  %4 = tail call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.lua_Debug* %1) #4
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)) #4
  %6 = add nsw i32 %3, 1
  %7 = tail call fastcc i32 @findfield(%struct.lua_State* %0, i32 %6, i32 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %2
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  %11 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 3) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %10, i64 3
  %15 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %14) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %16

; <label>:16:                                     ; preds = %13, %9
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 %6) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %18

; <label>:17:                                     ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 %3) #4
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = phi i32 [ 1, %16 ], [ 0, %17 ]
  ret i32 %19
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  br label %14

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %13 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %12) #4
  br label %14

; <label>:14:                                     ; preds = %8, %11, %6
  %15 = phi i8* [ %7, %6 ], [ %13, %11 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), %8 ]
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %2, i8* %15) #4
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %16)
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %2) #4
  %8 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %12

; <label>:11:                                     ; preds = %6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %12

; <label>:12:                                     ; preds = %10, %11, %3
  %13 = phi i32 [ 0, %3 ], [ %8, %11 ], [ 0, %10 ]
  ret i32 %13
}

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %4) #4
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %1, %struct.lua_Debug* nonnull %3) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %2
  %8 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #4
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 6
  %10 = load i32, i32* %9, align 8, !tbaa !2
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 15, i64 0
  %14 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %13, i32 %10) #4
  br label %17

; <label>:15:                                     ; preds = %2, %7
  %16 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %17

; <label>:17:                                     ; preds = %15, %12
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %4) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @lua_error(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32* @__errno_location() #10
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #4
  br label %17

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushnil(%struct.lua_State* %0) #4
  %9 = icmp eq i8* %2, null
  %10 = tail call i8* @strerror(i32 %5) #4
  br i1 %9, label %13, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %2, i8* %10) #4
  br label %15

; <label>:13:                                     ; preds = %8
  %14 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %10) #4
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = sext i32 %5 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #4
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i32 [ 1, %7 ], [ 3, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #5

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #6

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #0 {
  switch i32 %1, label %6 [
    i32 -1, label %3
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %2
  %4 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null)
  br label %10

; <label>:5:                                      ; preds = %2
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #4
  br label %7

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushnil(%struct.lua_State* %0) #4
  br label %7

; <label>:7:                                      ; preds = %6, %5
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #4
  %9 = sext i32 %1 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #4
  br label %10

; <label>:10:                                     ; preds = %7, %3
  %11 = phi i32 [ %4, %3 ], [ 3, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #4
  %6 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #4
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %8
}

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_setmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #4
  %4 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4
  ret void
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i8* @luaL_testudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %14, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %2) #4
  %11 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8* null, i8* %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %14

; <label>:14:                                     ; preds = %3, %6, %9
  %15 = phi i8* [ %13, %9 ], [ null, %6 ], [ null, %3 ]
  ret i8* %15
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i8* @luaL_testudata(%struct.lua_State* %0, i32 %1, i8* %2)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 %1, i8* %2)
  br label %8

; <label>:8:                                      ; preds = %3, %6
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8** nocapture readonly) local_unnamed_addr #0 {
  %5 = icmp eq i8* %2, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %1, i8* nonnull %2, i64* null)
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null)
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i8* [ %7, %6 ], [ %9, %8 ]
  %12 = load i8*, i8** %3, align 8, !tbaa !17
  %13 = icmp eq i8* %12, null
  br i1 %13, label %25, label %14

; <label>:14:                                     ; preds = %10
  br label %15

; <label>:15:                                     ; preds = %14, %20
  %16 = phi i64 [ %21, %20 ], [ 0, %14 ]
  %17 = phi i8* [ %23, %20 ], [ %12, %14 ]
  %18 = tail call i32 @strcmp(i8* nonnull %17, i8* %11) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

; <label>:20:                                     ; preds = %15
  %21 = add nuw i64 %16, 1
  %22 = getelementptr inbounds i8*, i8** %3, i64 %21
  %23 = load i8*, i8** %22, align 8, !tbaa !17
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %15

; <label>:25:                                     ; preds = %20, %10
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %11) #4
  %27 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %26)
  br label %30

; <label>:28:                                     ; preds = %15
  %29 = trunc i64 %16 to i32
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i8* @luaL_optlstring(%struct.lua_State*, i32, i8* readonly, i64*) local_unnamed_addr #0 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64* %3, null
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %2, null
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %9
  %12 = tail call i64 @strlen(i8* nonnull %2) #9
  br label %13

; <label>:13:                                     ; preds = %9, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %9 ]
  store i64 %14, i64* %3, align 8, !tbaa !18
  br label %17

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %3)
  br label %17

; <label>:17:                                     ; preds = %13, %7, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %7 ], [ %2, %13 ]
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 4)
  br label %7

; <label>:7:                                      ; preds = %3, %6
  ret i8* %4
}

declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %3
  tail call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 %2)
  br label %7

; <label>:7:                                      ; preds = %3, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tag_error(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #4
  %5 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 %1, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  br label %7

; <label>:7:                                      ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %1, i32* nonnull %3) #4
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 3)
  br label %9

; <label>:9:                                      ; preds = %2, %8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret double %5
}

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %1)
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi double [ %7, %6 ], [ %2, %3 ]
  ret double %9
}

; Function Attrs: nounwind uwtable
define i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %1, i32* nonnull %3) #4
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call fastcc void @interror(%struct.lua_State* %0, i32 %1)
  br label %9

; <label>:9:                                      ; preds = %2, %8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i64 %5
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @interror(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0))
  br label %8

; <label>:7:                                      ; preds = %2
  tail call fastcc void @tag_error(%struct.lua_State* %0, i32 %1, i32 3)
  br label %8

; <label>:8:                                      ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1)
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i64 [ %7, %6 ], [ %2, %3 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %1, i32 -1)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
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
  br label %34

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !23
  %17 = tail call fastcc i64 @newbuffsize(%struct.luaL_Buffer* nonnull %0, i64 %1)
  %18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 4
  %21 = bitcast %union.anon* %20 to i8*
  %22 = icmp eq i8* %19, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %14
  %24 = tail call fastcc i8* @resizebox(%struct.lua_State* %16, i32 %2, i64 %17)
  br label %30

; <label>:25:                                     ; preds = %14
  tail call void @lua_pushnil(%struct.lua_State* %16) #4
  tail call fastcc void @newbox(%struct.lua_State* %16)
  %26 = add nsw i32 %2, -1
  tail call void @lua_rotate(%struct.lua_State* %16, i32 %26, i32 2) #4
  tail call void @lua_toclose(%struct.lua_State* %16, i32 %2) #4
  %27 = tail call fastcc i8* @resizebox(%struct.lua_State* %16, i32 %2, i64 %17)
  %28 = load i8*, i8** %18, align 8, !tbaa !22
  %29 = load i64, i64* %6, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %29, i32 1, i1 false)
  br label %30

; <label>:30:                                     ; preds = %25, %23
  %31 = phi i8* [ %24, %23 ], [ %27, %25 ]
  store i8* %31, i8** %18, align 8, !tbaa !22
  store i64 %17, i64* %4, align 8, !tbaa !19
  %32 = load i64, i64* %6, align 8, !tbaa !21
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  br label %34

; <label>:34:                                     ; preds = %30, %10
  %35 = phi i8* [ %13, %10 ], [ %33, %30 ]
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define void @luaL_addlstring(%struct.luaL_Buffer*, i8* nocapture readonly, i64) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %2, i32 -1)
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

; Function Attrs: nounwind uwtable
define void @luaL_addstring(%struct.luaL_Buffer*, i8* nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %1) #9
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %0, i8* %1, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_pushresult(%struct.luaL_Buffer* readonly) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8, !tbaa !21
  %8 = tail call i8* @lua_pushlstring(%struct.lua_State* %3, i8* %5, i64 %7) #4
  %9 = load i8*, i8** %4, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 4
  %11 = bitcast %union.anon* %10 to i8*
  %12 = icmp eq i8* %9, %11
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %1
  tail call void @lua_copy(%struct.lua_State* %3, i32 -1, i32 -3) #4
  tail call void @lua_settop(%struct.lua_State* %3, i32 -3) #4
  br label %14

; <label>:14:                                     ; preds = %1, %13
  ret void
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = add i64 %4, %1
  store i64 %5, i64* %3, align 8, !tbaa !21
  tail call void @luaL_pushresult(%struct.luaL_Buffer* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !23
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* nonnull %2) #4
  %7 = load i64, i64* %2, align 8, !tbaa !18
  %8 = call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %0, i64 %7, i32 -2)
  %9 = load i64, i64* %2, align 8, !tbaa !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %6, i64 %9, i32 1, i1 false)
  %10 = load i64, i64* %2, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %12 = load i64, i64* %11, align 8, !tbaa !21
  %13 = add i64 %12, %10
  store i64 %13, i64* %11, align 8, !tbaa !21
  call void @lua_settop(%struct.lua_State* %4, i32 -2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 4
  %5 = bitcast %struct.luaL_Buffer* %1 to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2
  store i64 0, i64* %6, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1
  store i64 1024, i64* %7, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) local_unnamed_addr #0 {
  tail call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* %1)
  %4 = tail call fastcc i8* @prepbuffsize(%struct.luaL_Buffer* %1, i64 %2, i32 -1)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i32 @luaL_ref(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %23

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #4
  %8 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %7, i64 0) #4
  %9 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1, i32* null) #4
  %10 = trunc i64 %9 to i32
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %6
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %7, i64 %14) #4
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %7, i64 0) #4
  br label %20

; <label>:16:                                     ; preds = %6
  %17 = tail call i64 @lua_rawlen(%struct.lua_State* %0, i32 %7) #4
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %18, 1
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = phi i32 [ %10, %12 ], [ %19, %16 ]
  %22 = sext i32 %21 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %7, i64 %22) #4
  br label %23

; <label>:23:                                     ; preds = %20, %5
  %24 = phi i32 [ -1, %5 ], [ %21, %20 ]
  ret i32 %24
}

declare i32 @lua_absindex(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

declare i64 @lua_rawlen(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_unref(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, -1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #4
  %7 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %6, i64 0) #4
  %8 = sext i32 %2 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %6, i64 %8) #4
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #4
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %6, i64 0) #4
  br label %9

; <label>:9:                                      ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.LoadF, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.LoadF* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8208, i8* nonnull %6) #4
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  %9 = add nsw i32 %8, 1
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #4
  %13 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  %15 = bitcast %struct._IO_FILE** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !24
  br label %22

; <label>:16:                                     ; preds = %3
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* nonnull %1) #4
  %18 = tail call %struct._IO_FILE* @fopen64(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  store %struct._IO_FILE* %18, %struct._IO_FILE** %19, align 8, !tbaa !24
  %20 = icmp eq %struct._IO_FILE* %18, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  tail call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 %9)
  br label %67

; <label>:22:                                     ; preds = %16, %11
  %23 = call fastcc i32 @skipcomment(%struct.LoadF* nonnull %4, i32* nonnull %5)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8, !tbaa !26
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 2, i64 %29
  store i8 10, i8* %30, align 1, !tbaa !12
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
  %39 = tail call %struct._IO_FILE* @freopen64(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %38) #4
  store %struct._IO_FILE* %39, %struct._IO_FILE** %37, align 8, !tbaa !24
  %40 = icmp eq %struct._IO_FILE* %39, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  tail call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32 %9)
  br label %67

; <label>:42:                                     ; preds = %36
  %43 = call fastcc i32 @skipcomment(%struct.LoadF* nonnull %4, i32* nonnull %5)
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
  store i8 %49, i8* %54, align 1, !tbaa !12
  br label %55

; <label>:55:                                     ; preds = %45, %48
  %56 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  %57 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getF, i8* nonnull %6, i8* %56, i8* %2) #4
  %58 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %4, i64 0, i32 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %58, align 8, !tbaa !24
  %60 = call i32 @ferror(%struct._IO_FILE* %59) #4
  br i1 %34, label %61, label %63

; <label>:61:                                     ; preds = %55
  %62 = call i32 @fclose(%struct._IO_FILE* %59)
  br label %63

; <label>:63:                                     ; preds = %61, %55
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %66, label %65

; <label>:65:                                     ; preds = %63
  call void @lua_settop(%struct.lua_State* %0, i32 %9) #4
  call fastcc void @errfile(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %9)
  br label %67

; <label>:66:                                     ; preds = %63
  call void @lua_rotate(%struct.lua_State* %0, i32 %9, i32 -1) #4
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %67

; <label>:67:                                     ; preds = %66, %65, %41, %21
  %68 = phi i32 [ 6, %41 ], [ 6, %65 ], [ %57, %66 ], [ 6, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8208, i8* nonnull %6) #4
  ret i32 %68
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @errfile(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = tail call i32* @__errno_location() #10
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = tail call i8* @strerror(i32 %5) #4
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* null) #4
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i8* %1, i8* nonnull %8, i8* %6) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @skipcomment(%struct.LoadF* nocapture, i32* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @skipBOM(%struct.LoadF* %0)
  store i32 %3, i32* %1, align 4, !tbaa !16
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 1
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !tbaa !24
  %9 = tail call i32 @_IO_getc(%struct._IO_FILE* %8)
  switch i32 %9, label %7 [
    i32 -1, label %10
    i32 10, label %10
  ]

; <label>:10:                                     ; preds = %7, %7
  %11 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !24
  %13 = tail call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %13, i32* %1, align 4, !tbaa !16
  br label %14

; <label>:14:                                     ; preds = %2, %10
  %15 = phi i32 [ 1, %10 ], [ 0, %2 ]
  ret i32 %15
}

declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i8* @getF(%struct.lua_State* nocapture readnone, i8*, i64* nocapture) #0 {
  %4 = bitcast i8* %1 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !26
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %3
  %8 = sext i32 %5 to i64
  store i64 %8, i64* %2, align 8, !tbaa !18
  store i32 0, i32* %4, align 8, !tbaa !26
  br label %19

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = bitcast i8* %10 to %struct._IO_FILE**
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !24
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds i8, i8* %1, i64 16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !24
  %18 = tail call i64 @fread(i8* nonnull %16, i64 1, i64 8192, %struct._IO_FILE* %17)
  store i64 %18, i64* %2, align 8, !tbaa !18
  br label %19

; <label>:19:                                     ; preds = %15, %7
  %20 = getelementptr inbounds i8, i8* %1, i64 16
  br label %21

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i8* [ %20, %19 ], [ null, %9 ]
  ret i8* %22
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #6

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #0 {
  %6 = alloca %struct.LoadS, align 8
  %7 = bitcast %struct.LoadS* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4
  %8 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %6, i64 0, i32 0
  store i8* %1, i8** %8, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %6, i64 0, i32 1
  store i64 %2, i64* %9, align 8, !tbaa !29
  %10 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %7, i8* %3, i8* %4) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4
  ret i32 %10
}

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define i32 @luaL_loadstring(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %1) #9
  %4 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %3, i8* %1, i8* null)
  ret i32 %4
}

declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #4
  %5 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %4, i8* %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %4) #4
  tail call void @lua_callk(%struct.lua_State* %0, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #4
  br label %8

; <label>:8:                                      ; preds = %3, %7
  %9 = phi i32 [ 1, %7 ], [ 0, %3 ]
  ret i32 %9
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  tail call void @lua_len(%struct.lua_State* %0, i32 %1) #4
  %5 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1, i32* nonnull %3) #4
  %6 = load i32, i32* %3, align 4, !tbaa !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %2, %8
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i64 %5
}

declare void @lua_len(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0))
  br label %44

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  switch i32 %12, label %30 [
    i32 3, label %13
    i32 4, label %22
    i32 1, label %23
    i32 0, label %28
  ]

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 %1) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %1, i32* null) #4
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i64 %17) #4
  br label %44

; <label>:19:                                     ; preds = %13
  %20 = tail call double @lua_tonumberx(%struct.lua_State* %0, i32 %1, i32* null) #4
  %21 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), double %20) #4
  br label %44

; <label>:22:                                     ; preds = %11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #4
  br label %44

; <label>:23:                                     ; preds = %11
  %24 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 %1) #4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)
  %27 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %26) #4
  br label %44

; <label>:28:                                     ; preds = %11
  %29 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)) #4
  br label %44

; <label>:30:                                     ; preds = %11
  %31 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  br label %38

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %37 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %36) #4
  br label %38

; <label>:38:                                     ; preds = %35, %33
  %39 = phi i8* [ %34, %33 ], [ %37, %35 ]
  %40 = tail call i8* @lua_topointer(%struct.lua_State* %0, i32 %1) #4
  %41 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %39, i8* %40) #4
  %42 = icmp eq i32 %31, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %38
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %44

; <label>:44:                                     ; preds = %43, %38, %6, %22, %23, %28, %19, %16, %9
  %45 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* %2) #4
  ret i8* %45
}

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg* nocapture readonly, i32) local_unnamed_addr #0 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %1, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !30
  %6 = icmp eq i8* %5, null
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %3
  %8 = icmp sgt i32 %2, 0
  %9 = sub nsw i32 0, %2
  %10 = sub i32 -2, %2
  br label %11

; <label>:11:                                     ; preds = %7, %18
  %12 = phi i8** [ %4, %7 ], [ %23, %18 ]
  br i1 %8, label %13, label %18

; <label>:13:                                     ; preds = %11
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i32 [ %16, %14 ], [ 0, %13 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #4
  %16 = add nuw nsw i32 %15, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %14

; <label>:18:                                     ; preds = %14, %11
  %19 = getelementptr inbounds i8*, i8** %12, i64 1
  %20 = bitcast i8** %19 to i32 (%struct.lua_State*)**
  %21 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %20, align 8, !tbaa !32
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %21, i32 %2) #4
  %22 = load i8*, i8** %12, align 8, !tbaa !30
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %10, i8* %22) #4
  %23 = getelementptr inbounds i8*, i8** %12, i64 2
  %24 = load i8*, i8** %23, align 8, !tbaa !30
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %11

; <label>:26:                                     ; preds = %18, %3
  %27 = xor i32 %2, -1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %27) #4
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 %1, i8* %2) #4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %7 = tail call i32 @lua_absindex(%struct.lua_State* %0, i32 %1) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %7, i8* %2) #4
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ 0, %6 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 {
  %5 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  %6 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1) #4
  %7 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %2, i32 0) #4
  %10 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #4
  tail call void @lua_callk(%struct.lua_State* %0, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %1) #4
  br label %11

; <label>:11:                                     ; preds = %4, %9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %1) #4
  br label %14

; <label>:14:                                     ; preds = %11, %13
  ret void
}

declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luaL_addgsub(%struct.luaL_Buffer*, i8*, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(i8* %2) #9
  %6 = tail call i8* @strstr(i8* %1, i8* %2) #9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %18, label %8

; <label>:8:                                      ; preds = %4
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i8* [ %16, %9 ], [ %6, %8 ]
  %11 = phi i8* [ %15, %9 ], [ %1, %8 ]
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %0, i8* %11, i64 %14)
  tail call void @luaL_addstring(%struct.luaL_Buffer* %0, i8* %3)
  %15 = getelementptr inbounds i8, i8* %10, i64 %5
  %16 = tail call i8* @strstr(i8* %15, i8* %2) #9
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %9

; <label>:18:                                     ; preds = %9, %4
  %19 = phi i8* [ %1, %4 ], [ %15, %9 ]
  tail call void @luaL_addstring(%struct.luaL_Buffer* %0, i8* %19)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i8* @luaL_gsub(%struct.lua_State*, i8*, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %6) #4
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5)
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %5, i8* %1, i8* %2, i8* %3)
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5)
  %7 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %6) #4
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define %struct.lua_State* @luaL_newstate() local_unnamed_addr #0 {
  %1 = tail call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* nonnull @l_alloc, i8* null) #4
  %2 = icmp eq %struct.lua_State* %1, null
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nonnull %1, i32 (%struct.lua_State*)* nonnull @panic) #4
  %5 = tail call i8* @lua_newuserdatauv(%struct.lua_State* nonnull %1, i64 4, i32 0) #4
  %6 = bitcast i8* %5 to i32*
  %7 = tail call i32 @luaL_ref(%struct.lua_State* nonnull %1, i32 -1001000)
  store i32 0, i32* %6, align 4, !tbaa !16
  tail call void @lua_setwarnf(%struct.lua_State* nonnull %1, void (i8*, i8*, i32)* nonnull @warnf, i8* %5) #4
  br label %8

; <label>:8:                                      ; preds = %0, %3
  ret %struct.lua_State* %1
}

declare %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias i8* @l_alloc(i8* nocapture readnone, i8* nocapture, i64, i64) #0 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %4
  tail call void @free(i8* %1) #4
  br label %9

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @realloc(i8* %1, i64 %3) #4
  br label %9

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %10
}

declare i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @panic(%struct.lua_State*) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %3 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.62, i64 0, i64 0), i8* %3) #11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5)
  ret i32 0
}

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #2

declare void @lua_setwarnf(%struct.lua_State*, void (i8*, i8*, i32)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @warnf(i8* nocapture, i8* nocapture readonly, i32) #0 {
  %4 = bitcast i8* %0 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %8) #11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %11 = tail call i32 @fflush(%struct._IO_FILE* %10)
  br label %12

; <label>:12:                                     ; preds = %3, %7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %14 = tail call i32 @fputs(i8* %1, %struct._IO_FILE* %13) #11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %16 = tail call i32 @fflush(%struct._IO_FILE* %15)
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %20 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19) #11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %22 = tail call i32 @fflush(%struct._IO_FILE* %21)
  br label %23

; <label>:23:                                     ; preds = %12, %18
  store i32 %2, i32* %4, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #0 {
  %4 = tail call double @lua_version(%struct.lua_State* %0) #4
  %5 = icmp eq i64 %2, 136
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i64 0, i64 0))
  br label %12

; <label>:8:                                      ; preds = %3
  %9 = fcmp une double %4, %1
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %8
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i64 0, i64 0), double %1, double %4)
  br label %12

; <label>:12:                                     ; preds = %8, %10, %6
  ret void
}

declare double @lua_version(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @findfield(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %28, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %28

; <label>:8:                                      ; preds = %5
  tail call void @lua_pushnil(%struct.lua_State* %0) #4
  %9 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

; <label>:11:                                     ; preds = %8
  %12 = add nsw i32 %2, -1
  br label %13

; <label>:13:                                     ; preds = %11, %25
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 %1, i32 -1) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %16
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %28

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc i32 @findfield(%struct.lua_State* %0, i32 %1, i32 %12)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %24 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #4
  tail call void @lua_concat(%struct.lua_State* %0, i32 3) #4
  br label %28

; <label>:25:                                     ; preds = %20, %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %26 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13

; <label>:28:                                     ; preds = %25, %8, %3, %5, %23, %19
  %29 = phi i32 [ 1, %19 ], [ 1, %23 ], [ 0, %5 ], [ 0, %3 ], [ 0, %8 ], [ 0, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #3

declare i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #2

declare i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @newbuffsize(%struct.luaL_Buffer* nocapture readonly, i64) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !19
  %5 = shl i64 %4, 1
  %6 = xor i64 %1, -1
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %8 = load i64, i64* %7, align 8, !tbaa !21
  %9 = icmp ugt i64 %8, %6
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !23
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  br label %19

; <label>:15:                                     ; preds = %2
  %16 = add i64 %8, %1
  %17 = icmp ult i64 %5, %16
  %18 = select i1 %17, i64 %16, i64 %5
  br label %19

; <label>:19:                                     ; preds = %15, %10
  %20 = phi i64 [ %14, %10 ], [ %18, %15 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @resizebox(%struct.lua_State*, i32, i64) unnamed_addr #0 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %6 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %0, i8** nonnull %4) #4
  %7 = call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #4
  %8 = load i8*, i8** %4, align 8, !tbaa !17
  %9 = bitcast i8* %7 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !33
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = call i8* %6(i8* %8, i8* %10, i64 %13, i64 %2) #4
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %2, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0))
  br label %20

; <label>:20:                                     ; preds = %18, %3
  store i8* %14, i8** %9, align 8, !tbaa !33
  store i64 %2, i64* %12, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal fastcc void @newbox(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  %3 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0))
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @boxmt, i64 0, i64 0), i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4
  ret void
}

declare void @lua_toclose(%struct.lua_State*, i32) local_unnamed_addr #2

declare i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @boxgc(%struct.lua_State*) #0 {
  %2 = tail call fastcc i8* @resizebox(%struct.lua_State* %0, i32 1, i64 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @skipBOM(%struct.LoadF* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 0
  store i32 0, i32* %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 1
  br label %4

; <label>:4:                                      ; preds = %14, %1
  %5 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), %1 ], [ %10, %14 ]
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !24
  %7 = tail call i32 @_IO_getc(%struct._IO_FILE* %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %26, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %5, i64 1
  %11 = load i8, i8* %5, align 1, !tbaa !12
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %9
  %15 = trunc i32 %7 to i8
  %16 = load i32, i32* %2, align 8, !tbaa !26
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 8, !tbaa !26
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 2, i64 %18
  store i8 %15, i8* %19, align 1, !tbaa !12
  %20 = load i8, i8* %10, align 1, !tbaa !12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %4

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %0, i64 0, i32 1
  store i32 0, i32* %2, align 8, !tbaa !26
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8, !tbaa !24
  %25 = tail call i32 @_IO_getc(%struct._IO_FILE* %24)
  br label %26

; <label>:26:                                     ; preds = %4, %9, %22
  %27 = phi i32 [ %25, %22 ], [ -1, %4 ], [ %7, %9 ]
  ret i32 %27
}

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { cold }

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
!10 = !{!3, !5, i64 63}
!11 = !{!3, !7, i64 16}
!12 = !{!5, !5, i64 0}
!13 = !{!3, !7, i64 8}
!14 = !{!3, !7, i64 24}
!15 = !{!3, !4, i64 52}
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
