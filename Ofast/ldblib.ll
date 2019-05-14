; ModuleID = 'ldblib.c'
source_filename = "ldblib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@dblib = internal constant [17 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvaluejoin }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvalueid }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @db_traceback }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getuservalue\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"upvaluejoin\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"upvalueid\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"setuservalue\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@HOOKKEY = internal constant i32 0, align 4
@hookf.hooknames = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"tail call\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"flnSrtu\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"nparams\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"isvararg\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"ftransfer\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"ntransfer\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"istailcall\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"invalid upvalue index\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"nil or table\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_debug(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 16) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([17 x %struct.luaL_Reg], [17 x %struct.luaL_Reg]* @dblib, i64 0, i64 0), i32 0) #6
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @db_debug(%struct.lua_State*) #0 {
  %2 = alloca [250 x i8], align 16
  %3 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %4) #7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %7 = call i32 @fflush(%struct._IO_FILE* %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %9 = call i8* @fgets(i8* nonnull %3, i32 250, %struct._IO_FILE* %8)
  %10 = icmp eq i8* %9, null
  br i1 %10, label %36, label %11

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %28
  %13 = call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

; <label>:15:                                     ; preds = %12
  %16 = call i64 @strlen(i8* nonnull %3) #8
  %17 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* nonnull %3, i64 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* null) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  %20 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %24) #7
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %27 = call i32 @fflush(%struct._IO_FILE* %26)
  br label %28

; <label>:28:                                     ; preds = %19, %22
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #6
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %29) #7
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %32 = call i32 @fflush(%struct._IO_FILE* %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %34 = call i8* @fgets(i8* nonnull %3, i32 250, %struct._IO_FILE* %33)
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %12

; <label>:36:                                     ; preds = %12, %28, %1
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getuservalue(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #6
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %11

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i32
  %8 = tail call i32 @lua_getiuservalue(%struct.lua_State* %0, i32 1, i32 %7) #6
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  br label %11

; <label>:11:                                     ; preds = %5, %6, %10
  %12 = phi i32 [ 2, %10 ], [ 1, %6 ], [ 1, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @db_gethook(%struct.lua_State*) #0 {
  %2 = alloca [5 x i8], align 1
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  br label %7

; <label>:7:                                      ; preds = %1, %5
  %8 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ]
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %9) #6
  %10 = tail call i32 @lua_gethookmask(%struct.lua_State* %8) #6
  %11 = tail call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %8) #6
  %12 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %7
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %29

; <label>:14:                                     ; preds = %7
  %15 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %11, @hookf
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %14
  %17 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %29

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #6
  %20 = icmp eq %struct.lua_State* %8, %0
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @lua_checkstack(%struct.lua_State* %8, i32 1) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %26

; <label>:26:                                     ; preds = %18, %21, %24
  %27 = tail call i32 @lua_pushthread(%struct.lua_State* %8) #6
  tail call void @lua_xmove(%struct.lua_State* %8, %struct.lua_State* %0, i32 1) #6
  %28 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %29

; <label>:29:                                     ; preds = %16, %26, %13
  %30 = and i32 %10, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %29
  store i8 99, i8* %9, align 1, !tbaa !6
  br label %33

; <label>:33:                                     ; preds = %32, %29
  %34 = phi i32 [ 1, %32 ], [ 0, %29 ]
  %35 = and i32 %10, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %33
  %38 = add nuw nsw i32 %34, 1
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %39
  store i8 114, i8* %40, align 1, !tbaa !6
  br label %41

; <label>:41:                                     ; preds = %37, %33
  %42 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %43 = and i32 %10, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %41
  %46 = add nsw i32 %42, 1
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %47
  store i8 108, i8* %48, align 1, !tbaa !6
  br label %49

; <label>:49:                                     ; preds = %41, %45
  %50 = phi i32 [ %46, %45 ], [ %42, %41 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %51
  store i8 0, i8* %52, align 1, !tbaa !6
  %53 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %9) #6
  %54 = call i32 @lua_gethookcount(%struct.lua_State* %8) #6
  %55 = sext i32 %54 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %55) #6
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %9) #6
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getinfo(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %3) #6
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64* null) #6
  br label %17

; <label>:8:                                      ; preds = %1
  %9 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  %10 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64* null) #6
  %11 = icmp eq %struct.lua_State* %9, %0
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @lua_checkstack(%struct.lua_State* %9, i32 3) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %17

; <label>:17:                                     ; preds = %6, %8, %12, %15
  %18 = phi i1 [ true, %6 ], [ true, %8 ], [ false, %12 ], [ false, %15 ]
  %19 = phi i8* [ %7, %6 ], [ %10, %8 ], [ %10, %12 ], [ %10, %15 ]
  %20 = phi i32 [ 2, %6 ], [ 3, %8 ], [ 3, %12 ], [ 3, %15 ]
  %21 = phi %struct.lua_State* [ %0, %6 ], [ %9, %8 ], [ %9, %12 ], [ %9, %15 ]
  %22 = phi i32 [ 1, %6 ], [ 2, %8 ], [ 2, %12 ], [ 2, %15 ]
  %23 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %22) #6
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %17
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %19) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %22) #6
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %21, i32 1) #6
  br label %33

; <label>:27:                                     ; preds = %17
  %28 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %22) #6
  %29 = trunc i64 %28 to i32
  %30 = call i32 @lua_getstack(%struct.lua_State* %21, i32 %29, %struct.lua_Debug* nonnull %2) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %120

; <label>:33:                                     ; preds = %27, %25
  %34 = phi i8* [ %26, %25 ], [ %19, %27 ]
  %35 = call i32 @lua_getinfo(%struct.lua_State* %21, i8* %34, %struct.lua_Debug* nonnull %2) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %33
  %38 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #6
  br label %120

; <label>:39:                                     ; preds = %33
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6
  %40 = call i8* @strchr(i8* %34, i32 83) #8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %59, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %44 = load i8*, i8** %43, align 8, !tbaa !7
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %46 = load i64, i64* %45, align 8, !tbaa !12
  %47 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %44, i64 %46) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #6
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 15, i64 0
  %49 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %48) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #6
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %51 = load i32, i32* %50, align 4, !tbaa !13
  %52 = sext i32 %51 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %52) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #6
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %54 = load i32, i32* %53, align 8, !tbaa !14
  %55 = sext i32 %54 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %55) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #6
  %56 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %57 = load i8*, i8** %56, align 8, !tbaa !15
  %58 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %57) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #6
  br label %59

; <label>:59:                                     ; preds = %39, %42
  %60 = call i8* @strchr(i8* %34, i32 108) #8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %66, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %64 = load i32, i32* %63, align 8, !tbaa !16
  %65 = sext i32 %64 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %65) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #6
  br label %66

; <label>:66:                                     ; preds = %59, %62
  %67 = call i8* @strchr(i8* %34, i32 117) #8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %79, label %69

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %71 = load i8, i8* %70, align 4, !tbaa !17
  %72 = zext i8 %71 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %72) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #6
  %73 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %74 = load i8, i8* %73, align 1, !tbaa !18
  %75 = zext i8 %74 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %75) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0)) #6
  %76 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %77 = load i8, i8* %76, align 2, !tbaa !19
  %78 = sext i8 %77 to i32
  call void @lua_pushboolean(%struct.lua_State* %0, i32 %78) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0)) #6
  br label %79

; <label>:79:                                     ; preds = %66, %69
  %80 = call i8* @strchr(i8* %34, i32 110) #8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %89, label %82

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %84 = load i8*, i8** %83, align 8, !tbaa !20
  %85 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %84) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #6
  %86 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %87 = load i8*, i8** %86, align 8, !tbaa !21
  %88 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %87) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %89

; <label>:89:                                     ; preds = %79, %82
  %90 = call i8* @strchr(i8* %34, i32 114) #8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %99, label %92

; <label>:92:                                     ; preds = %89
  %93 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %94 = load i16, i16* %93, align 8, !tbaa !22
  %95 = zext i16 %94 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %95) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #6
  %96 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  %97 = load i16, i16* %96, align 2, !tbaa !23
  %98 = zext i16 %97 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %98) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)) #6
  br label %99

; <label>:99:                                     ; preds = %89, %92
  %100 = call i8* @strchr(i8* %34, i32 116) #8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %106, label %102

; <label>:102:                                    ; preds = %99
  %103 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 12
  %104 = load i8, i8* %103, align 1, !tbaa !24
  %105 = sext i8 %104 to i32
  call void @lua_pushboolean(%struct.lua_State* %0, i32 %105) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %106

; <label>:106:                                    ; preds = %99, %102
  %107 = call i8* @strchr(i8* %34, i32 76) #8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %113, label %109

; <label>:109:                                    ; preds = %106
  br i1 %18, label %110, label %111

; <label>:110:                                    ; preds = %109
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %112

; <label>:111:                                    ; preds = %109
  call void @lua_xmove(%struct.lua_State* %21, %struct.lua_State* %0, i32 1) #6
  br label %112

; <label>:112:                                    ; preds = %110, %111
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %113

; <label>:113:                                    ; preds = %106, %112
  %114 = call i8* @strchr(i8* %34, i32 102) #8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %120, label %116

; <label>:116:                                    ; preds = %113
  br i1 %18, label %117, label %118

; <label>:117:                                    ; preds = %116
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %119

; <label>:118:                                    ; preds = %116
  call void @lua_xmove(%struct.lua_State* %21, %struct.lua_State* %0, i32 1) #6
  br label %119

; <label>:119:                                    ; preds = %117, %118
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %120

; <label>:120:                                    ; preds = %119, %113, %37, %32
  %121 = phi i32 [ %38, %37 ], [ 1, %32 ], [ 1, %113 ], [ 1, %119 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %3) #6
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getlocal(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  br label %7

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ]
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ]
  %10 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %10) #6
  %11 = or i32 %8, 2
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #6
  %13 = trunc i64 %12 to i32
  %14 = add nuw nsw i32 %8, 1
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %14) #6
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %14) #6
  %18 = tail call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* null, i32 %13) #6
  %19 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %18) #6
  br label %40

; <label>:20:                                     ; preds = %7
  %21 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %14) #6
  %22 = trunc i64 %21 to i32
  %23 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %22, %struct.lua_Debug* nonnull %2) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %20
  %26 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %40

; <label>:27:                                     ; preds = %20
  %28 = icmp eq %struct.lua_State* %9, %0
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %27
  %30 = call i32 @lua_checkstack(%struct.lua_State* %9, i32 1) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %34

; <label>:34:                                     ; preds = %27, %29, %32
  %35 = call i8* @lua_getlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %13) #6
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %34
  call void @lua_xmove(%struct.lua_State* %9, %struct.lua_State* %0, i32 1) #6
  %38 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %35) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %40

; <label>:39:                                     ; preds = %34
  call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %40

; <label>:40:                                     ; preds = %25, %37, %39, %17
  %41 = phi i32 [ 1, %17 ], [ 2, %37 ], [ 1, %39 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %10) #6
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getregistry(%struct.lua_State*) #0 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1001000) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getmetatable(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %5

; <label>:5:                                      ; preds = %1, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getupvalue(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #6
  %4 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %4) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ 2, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @db_upvaluejoin(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #6
  %4 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #6
  %10 = trunc i64 %9 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 3, i32 6) #6
  %11 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 3, i32 %10) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0)) #6
  br label %20

; <label>:20:                                     ; preds = %15, %18
  %21 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 3) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0)) #6
  br label %25

; <label>:25:                                     ; preds = %20, %23
  tail call void @lua_upvaluejoin(%struct.lua_State* %0, i32 1, i32 %3, i32 3, i32 %10) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @db_upvalueid(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #6
  %4 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call i8* @lua_upvalueid(%struct.lua_State* %0, i32 1, i32 %3) #6
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %9) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setuservalue(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #6
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 7) #6
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #6
  %4 = tail call i32 @lua_setiuservalue(%struct.lua_State* %0, i32 1, i32 %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %7

; <label>:7:                                      ; preds = %1, %6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_sethook(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  %8 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %9) #6
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 %9) #6
  br label %33

; <label>:13:                                     ; preds = %6
  %14 = or i32 %7, 2
  %15 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* null) #6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %9, i32 6) #6
  %16 = add nuw nsw i32 %7, 3
  %17 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %16, i64 0) #6
  %18 = trunc i64 %17 to i32
  %19 = tail call i8* @strchr(i8* %15, i32 99) #8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = tail call i8* @strchr(i8* %15, i32 114) #8
  %23 = icmp eq i8* %22, null
  %24 = or i32 %21, 2
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = tail call i8* @strchr(i8* %15, i32 108) #8
  %27 = icmp eq i8* %26, null
  %28 = or i32 %25, 4
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = icmp sgt i32 %18, 0
  %31 = or i32 %29, 8
  %32 = select i1 %30, i32 %31, i32 %29
  br label %33

; <label>:33:                                     ; preds = %13, %12
  %34 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %12 ], [ @hookf, %13 ]
  %35 = phi i32 [ 0, %12 ], [ %18, %13 ]
  %36 = phi i32 [ 0, %12 ], [ %32, %13 ]
  %37 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %33
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_rawsetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #6
  %40 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6
  %41 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #6
  br label %42

; <label>:42:                                     ; preds = %39, %33
  %43 = icmp eq %struct.lua_State* %8, %0
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %42
  %45 = tail call i32 @lua_checkstack(%struct.lua_State* %8, i32 1) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %44
  %48 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %49

; <label>:49:                                     ; preds = %42, %44, %47
  %50 = tail call i32 @lua_pushthread(%struct.lua_State* %8) #6
  tail call void @lua_xmove(%struct.lua_State* %8, %struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #6
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -3) #6
  tail call void @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* %34, i32 %36, i32 %35) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setlocal(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  br label %7

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ]
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ]
  %10 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %10) #6
  %11 = add nuw nsw i32 %8, 1
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #6
  %13 = trunc i64 %12 to i32
  %14 = or i32 %8, 2
  %15 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %14) #6
  %16 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %7
  %19 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %35

; <label>:20:                                     ; preds = %7
  %21 = trunc i64 %15 to i32
  %22 = add nuw nsw i32 %8, 3
  call void @luaL_checkany(%struct.lua_State* %0, i32 %22) #6
  call void @lua_settop(%struct.lua_State* %0, i32 %22) #6
  %23 = icmp eq %struct.lua_State* %9, %0
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = call i32 @lua_checkstack(%struct.lua_State* %9, i32 1) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %24
  %28 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %29

; <label>:29:                                     ; preds = %20, %24, %27
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %9, i32 1) #6
  %30 = call i8* @lua_setlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %21) #6
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  call void @lua_settop(%struct.lua_State* %9, i32 -2) #6
  br label %33

; <label>:33:                                     ; preds = %32, %29
  %34 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %30) #6
  br label %35

; <label>:35:                                     ; preds = %33, %18
  %36 = phi i32 [ 1, %33 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %10) #6
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setmetatable(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #6
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %5

; <label>:5:                                      ; preds = %1, %1, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #6
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setupvalue(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #6
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #6
  %4 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 1, i32 %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %4) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -1, i32 1) #6
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @db_traceback(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #6
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  %8 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %9, i64* null) #6
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %6
  %13 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %9) #6
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %12
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #6
  br label %22

; <label>:16:                                     ; preds = %12, %6
  %17 = or i32 %7, 2
  %18 = icmp eq %struct.lua_State* %8, %0
  %19 = zext i1 %18 to i64
  %20 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %17, i64 %19) #6
  %21 = trunc i64 %20 to i32
  tail call void @luaL_traceback(%struct.lua_State* %0, %struct.lua_State* %8, i8* %10, i32 %21) #6
  br label %22

; <label>:22:                                     ; preds = %16, %15
  ret i32 1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_getiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_gethookmask(%struct.lua_State*) local_unnamed_addr #1

declare void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @hookf(%struct.lua_State*, %struct.lua_Debug* nocapture readonly) #0 {
  %3 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #6
  %4 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #6
  %5 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #6
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !25
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8, !tbaa !2
  %13 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %12) #6
  %14 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 6
  %15 = load i32, i32* %14, align 8, !tbaa !16
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %7
  %18 = sext i32 %15 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %18) #6
  br label %20

; <label>:19:                                     ; preds = %7
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %20

; <label>:20:                                     ; preds = %19, %17
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  br label %21

; <label>:21:                                     ; preds = %20, %2
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare i32 @lua_gethookcount(%struct.lua_State*) local_unnamed_addr #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #1

declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i8* @lua_getupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @lua_iscfunction(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #1

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i8* @lua_upvalueid(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @lua_setiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #1

declare i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 32}
!8 = !{!"lua_Debug", !9, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !10, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !4, i64 60, !4, i64 61, !4, i64 62, !4, i64 63, !11, i64 64, !11, i64 66, !4, i64 68, !3, i64 128}
!9 = !{!"int", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!8, !10, i64 40}
!13 = !{!8, !9, i64 52}
!14 = !{!8, !9, i64 56}
!15 = !{!8, !3, i64 24}
!16 = !{!8, !9, i64 48}
!17 = !{!8, !4, i64 60}
!18 = !{!8, !4, i64 61}
!19 = !{!8, !4, i64 62}
!20 = !{!8, !3, i64 8}
!21 = !{!8, !3, i64 16}
!22 = !{!8, !11, i64 64}
!23 = !{!8, !11, i64 66}
!24 = !{!8, !4, i64 63}
!25 = !{!8, !9, i64 0}
