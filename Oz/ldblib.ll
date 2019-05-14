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

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_debug(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 16) #7
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([17 x %struct.luaL_Reg], [17 x %struct.luaL_Reg]* @dblib, i64 0, i64 0), i32 0) #7
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_debug(%struct.lua_State*) #0 {
  %2 = alloca [250 x i8], align 16
  %3 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  br label %4

; <label>:4:                                      ; preds = %28, %1
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %6 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %5) #8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %8 = call i32 @fflush(%struct._IO_FILE* %7) #9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %10 = call i8* @fgets(i8* nonnull %3, i32 250, %struct._IO_FILE* %9) #9
  %11 = icmp eq i8* %10, null
  br i1 %11, label %29, label %12

; <label>:12:                                     ; preds = %4
  %13 = call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

; <label>:15:                                     ; preds = %12
  %16 = call i64 @strlen(i8* nonnull %3) #10
  %17 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* nonnull %3, i64 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* null) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  %20 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %24) #11
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %27 = call i32 @fflush(%struct._IO_FILE* %26) #9
  br label %28

; <label>:28:                                     ; preds = %19, %22
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #6
  br label %4

; <label>:29:                                     ; preds = %4, %12
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getuservalue(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #7
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %11

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i32
  %8 = tail call i32 @lua_getiuservalue(%struct.lua_State* %0, i32 1, i32 %7) #7
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  br label %11

; <label>:11:                                     ; preds = %5, %6, %10
  %12 = phi i32 [ 2, %10 ], [ 1, %6 ], [ 1, %5 ]
  ret i32 %12
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_gethook(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x i8], align 1
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %2) #9
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #6
  %7 = tail call i32 @lua_gethookmask(%struct.lua_State* %5) #7
  %8 = tail call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %5) #7
  %9 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %19

; <label>:11:                                     ; preds = %1
  %12 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %8, @hookf
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %11
  %14 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #7
  br label %19

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #7
  tail call fastcc void @checkstack(%struct.lua_State* %0, %struct.lua_State* %5, i32 1) #9
  %17 = tail call i32 @lua_pushthread(%struct.lua_State* %5) #7
  tail call void @lua_xmove(%struct.lua_State* %5, %struct.lua_State* %0, i32 1) #7
  %18 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #7
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %19

; <label>:19:                                     ; preds = %13, %15, %10
  %20 = and i32 %7, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %19
  store i8 99, i8* %6, align 1, !tbaa !6
  br label %23

; <label>:23:                                     ; preds = %22, %19
  %24 = phi i32 [ 1, %22 ], [ 0, %19 ]
  %25 = and i32 %7, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = add nuw nsw i32 %24, 1
  %29 = zext i32 %24 to i64
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 %29
  store i8 114, i8* %30, align 1, !tbaa !6
  br label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = phi i32 [ %28, %27 ], [ %24, %23 ]
  %33 = and i32 %7, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %31
  %36 = add nsw i32 %32, 1
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 %37
  store i8 108, i8* %38, align 1, !tbaa !6
  br label %39

; <label>:39:                                     ; preds = %31, %35
  %40 = phi i32 [ %36, %35 ], [ %32, %31 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 %41
  store i8 0, i8* %42, align 1, !tbaa !6
  %43 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %6) #7
  %44 = call i32 @lua_gethookcount(%struct.lua_State* %5) #7
  %45 = sext i32 %44 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %45) #7
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  ret i32 3
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getinfo(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %4) #6
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %6 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %3) #9
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = add nsw i32 %7, 2
  %9 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64* null) #7
  tail call fastcc void @checkstack(%struct.lua_State* %0, %struct.lua_State* %6, i32 3) #9
  %10 = add nsw i32 %7, 1
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %10) #7
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %1
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %9) #7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %10) #7
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %6, i32 1) #7
  br label %21

; <label>:15:                                     ; preds = %1
  %16 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %10) #7
  %17 = trunc i64 %16 to i32
  %18 = call i32 @lua_getstack(%struct.lua_State* %6, i32 %17, %struct.lua_Debug* nonnull %2) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %95

; <label>:21:                                     ; preds = %15, %13
  %22 = phi i8* [ %14, %13 ], [ %9, %15 ]
  %23 = call i32 @lua_getinfo(%struct.lua_State* %6, i8* %22, %struct.lua_Debug* nonnull %2) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %21
  %26 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #7
  br label %95

; <label>:27:                                     ; preds = %21
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7
  %28 = call i8* @strchr(i8* %22, i32 83) #10
  %29 = icmp eq i8* %28, null
  br i1 %29, label %43, label %30

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %32 = load i8*, i8** %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %34 = load i64, i64* %33, align 8, !tbaa !13
  %35 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %32, i64 %34) #7
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #7
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 15, i64 0
  call fastcc void @settabss(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* nonnull %36) #9
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %38 = load i32, i32* %37, align 4, !tbaa !14
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 %38) #9
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %40 = load i32, i32* %39, align 8, !tbaa !15
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %40) #9
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  call fastcc void @settabss(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* %42) #9
  br label %43

; <label>:43:                                     ; preds = %27, %30
  %44 = call i8* @strchr(i8* %22, i32 108) #10
  %45 = icmp eq i8* %44, null
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %48 = load i32, i32* %47, align 8, !tbaa !17
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %48) #9
  br label %49

; <label>:49:                                     ; preds = %43, %46
  %50 = call i8* @strchr(i8* %22, i32 117) #10
  %51 = icmp eq i8* %50, null
  br i1 %51, label %62, label %52

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %54 = load i8, i8* %53, align 4, !tbaa !18
  %55 = zext i8 %54 to i32
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %55) #9
  %56 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %57 = load i8, i8* %56, align 1, !tbaa !19
  %58 = zext i8 %57 to i32
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 %58) #9
  %59 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %60 = load i8, i8* %59, align 2, !tbaa !20
  %61 = sext i8 %60 to i32
  call fastcc void @settabsb(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 %61) #9
  br label %62

; <label>:62:                                     ; preds = %49, %52
  %63 = call i8* @strchr(i8* %22, i32 110) #10
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %67 = load i8*, i8** %66, align 8, !tbaa !21
  call fastcc void @settabss(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* %67) #9
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %69 = load i8*, i8** %68, align 8, !tbaa !22
  call fastcc void @settabss(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* %69) #9
  br label %70

; <label>:70:                                     ; preds = %62, %65
  %71 = call i8* @strchr(i8* %22, i32 114) #10
  %72 = icmp eq i8* %71, null
  br i1 %72, label %80, label %73

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %75 = load i16, i16* %74, align 8, !tbaa !23
  %76 = zext i16 %75 to i32
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i32 %76) #9
  %77 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  %78 = load i16, i16* %77, align 2, !tbaa !24
  %79 = zext i16 %78 to i32
  call fastcc void @settabsi(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i32 %79) #9
  br label %80

; <label>:80:                                     ; preds = %70, %73
  %81 = call i8* @strchr(i8* %22, i32 116) #10
  %82 = icmp eq i8* %81, null
  br i1 %82, label %87, label %83

; <label>:83:                                     ; preds = %80
  %84 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 12
  %85 = load i8, i8* %84, align 1, !tbaa !25
  %86 = sext i8 %85 to i32
  call fastcc void @settabsb(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i32 %86) #9
  br label %87

; <label>:87:                                     ; preds = %80, %83
  %88 = call i8* @strchr(i8* %22, i32 76) #10
  %89 = icmp eq i8* %88, null
  br i1 %89, label %91, label %90

; <label>:90:                                     ; preds = %87
  call fastcc void @treatstackoption(%struct.lua_State* %0, %struct.lua_State* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #9
  br label %91

; <label>:91:                                     ; preds = %87, %90
  %92 = call i8* @strchr(i8* %22, i32 102) #10
  %93 = icmp eq i8* %92, null
  br i1 %93, label %95, label %94

; <label>:94:                                     ; preds = %91
  call fastcc void @treatstackoption(%struct.lua_State* %0, %struct.lua_State* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #9
  br label %95

; <label>:95:                                     ; preds = %94, %91, %25, %20
  %96 = phi i32 [ %26, %25 ], [ 1, %20 ], [ 1, %91 ], [ 1, %94 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %4) #6
  ret i32 %96
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getlocal(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %2) #9
  %6 = bitcast %struct.lua_Debug* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %6) #6
  %7 = load i32, i32* %2, align 4, !tbaa !7
  %8 = add nsw i32 %7, 2
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %8) #7
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %7, 1
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %11) #7
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %11) #7
  %15 = tail call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* null, i32 %10) #7
  %16 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %15) #7
  br label %30

; <label>:17:                                     ; preds = %1
  %18 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #7
  %19 = trunc i64 %18 to i32
  %20 = call i32 @lua_getstack(%struct.lua_State* %5, i32 %19, %struct.lua_Debug* nonnull %3) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %17
  %23 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0)) #7
  br label %30

; <label>:24:                                     ; preds = %17
  call fastcc void @checkstack(%struct.lua_State* %0, %struct.lua_State* %5, i32 1) #9
  %25 = call i8* @lua_getlocal(%struct.lua_State* %5, %struct.lua_Debug* nonnull %3, i32 %10) #7
  %26 = icmp eq i8* %25, null
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  call void @lua_xmove(%struct.lua_State* %5, %struct.lua_State* %0, i32 1) #7
  %28 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %25) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #7
  br label %30

; <label>:29:                                     ; preds = %24
  call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %30

; <label>:30:                                     ; preds = %22, %27, %29, %14
  %31 = phi i32 [ 1, %14 ], [ 2, %27 ], [ 1, %29 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  ret i32 %31
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getregistry(%struct.lua_State*) #0 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1001000) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getmetatable(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #7
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %5

; <label>:5:                                      ; preds = %1, %4
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_getupvalue(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 1) #9
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_upvaluejoin(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @checkupval(%struct.lua_State* %0, i32 1, i32 2) #9
  %3 = tail call fastcc i32 @checkupval(%struct.lua_State* %0, i32 3, i32 4) #9
  %4 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0)) #7
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0)) #7
  br label %13

; <label>:13:                                     ; preds = %8, %11
  tail call void @lua_upvaluejoin(%struct.lua_State* %0, i32 1, i32 %2, i32 3, i32 %3) #7
  ret i32 0
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_upvalueid(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @checkupval(%struct.lua_State* %0, i32 1, i32 2) #9
  %3 = tail call i8* @lua_upvalueid(%struct.lua_State* %0, i32 1, i32 %2) #7
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %3) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_setuservalue(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #7
  %3 = trunc i64 %2 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 7) #7
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #7
  %4 = tail call i32 @lua_setiuservalue(%struct.lua_State* %0, i32 1, i32 %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %7

; <label>:7:                                      ; preds = %1, %6
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_sethook(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %2) #9
  %5 = load i32, i32* %2, align 4, !tbaa !7
  %6 = add nsw i32 %5, 1
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %6) #7
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %6) #7
  br label %30

; <label>:10:                                     ; preds = %1
  %11 = add nsw i32 %5, 2
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %11, i64* null) #7
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %6, i32 6) #7
  %13 = add nsw i32 %5, 3
  %14 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %13, i64 0) #7
  %15 = trunc i64 %14 to i32
  %16 = tail call i8* @strchr(i8* %12, i32 99) #10
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = tail call i8* @strchr(i8* %12, i32 114) #10
  %20 = icmp eq i8* %19, null
  %21 = or i32 %18, 2
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = tail call i8* @strchr(i8* %12, i32 108) #10
  %24 = icmp eq i8* %23, null
  %25 = or i32 %22, 4
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = icmp sgt i32 %15, 0
  %28 = or i32 %26, 8
  %29 = select i1 %27, i32 %28, i32 %26
  br label %30

; <label>:30:                                     ; preds = %10, %9
  %31 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %9 ], [ @hookf, %10 ]
  %32 = phi i32 [ 0, %9 ], [ %15, %10 ]
  %33 = phi i32 [ 0, %9 ], [ %29, %10 ]
  %34 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %30
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7
  tail call void @lua_rawsetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #7
  %37 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)) #7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7
  %38 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #7
  br label %39

; <label>:39:                                     ; preds = %36, %30
  tail call fastcc void @checkstack(%struct.lua_State* %0, %struct.lua_State* %4, i32 1) #9
  %40 = tail call i32 @lua_pushthread(%struct.lua_State* %4) #7
  tail call void @lua_xmove(%struct.lua_State* %4, %struct.lua_State* %0, i32 1) #7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %6) #7
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -3) #7
  tail call void @lua_sethook(%struct.lua_State* %4, void (%struct.lua_State*, %struct.lua_Debug*)* %31, i32 %33, i32 %32) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_setlocal(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %2) #9
  %6 = bitcast %struct.lua_Debug* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %6) #6
  %7 = load i32, i32* %2, align 4, !tbaa !7
  %8 = add nsw i32 %7, 1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %8) #7
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %7, 2
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #7
  %13 = call i32 @lua_getstack(%struct.lua_State* %5, i32 %10, %struct.lua_Debug* nonnull %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %1
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0)) #7
  br label %25

; <label>:17:                                     ; preds = %1
  %18 = trunc i64 %12 to i32
  %19 = add nsw i32 %7, 3
  call void @luaL_checkany(%struct.lua_State* %0, i32 %19) #7
  call void @lua_settop(%struct.lua_State* %0, i32 %19) #7
  call fastcc void @checkstack(%struct.lua_State* %0, %struct.lua_State* %5, i32 1) #9
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %5, i32 1) #7
  %20 = call i8* @lua_setlocal(%struct.lua_State* %5, %struct.lua_Debug* nonnull %3, i32 %18) #7
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %17
  call void @lua_settop(%struct.lua_State* %5, i32 -2) #7
  br label %23

; <label>:23:                                     ; preds = %22, %17
  %24 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %20) #7
  br label %25

; <label>:25:                                     ; preds = %23, %15
  %26 = phi i32 [ 1, %23 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  ret i32 %26
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_setmetatable(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #7
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0)) #7
  br label %5

; <label>:5:                                      ; preds = %1, %1, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #7
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #7
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_setupvalue(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #7
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 0) #9
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @db_traceback(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = call fastcc %struct.lua_State* @getthread(%struct.lua_State* %0, i32* nonnull %2) #9
  %5 = load i32, i32* %2, align 4, !tbaa !7
  %6 = add nsw i32 %5, 1
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %6) #7
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %6) #7
  br label %19

; <label>:13:                                     ; preds = %9, %1
  %14 = add nsw i32 %5, 2
  %15 = icmp eq %struct.lua_State* %4, %0
  %16 = zext i1 %15 to i64
  %17 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %14, i64 %16) #7
  %18 = trunc i64 %17 to i32
  tail call void @luaL_traceback(%struct.lua_State* %0, %struct.lua_State* %4, i8* %7, i32 %18) #7
  br label %19

; <label>:19:                                     ; preds = %13, %12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  ret i32 1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.lua_State* @getthread(%struct.lua_State*, i32* nocapture) unnamed_addr #0 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  store i32 1, i32* %1, align 4, !tbaa !7
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #7
  br label %8

; <label>:7:                                      ; preds = %2
  store i32 0, i32* %1, align 4, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %7, %5
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %7 ]
  ret %struct.lua_State* %9
}

; Function Attrs: minsize optsize
declare i32 @lua_gethookmask(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal void @hookf(%struct.lua_State*, %struct.lua_Debug* nocapture readonly) #0 {
  %3 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)) #7
  %4 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #7
  %5 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #7
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !26
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8, !tbaa !2
  %13 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %12) #7
  %14 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 6
  %15 = load i32, i32* %14, align 8, !tbaa !17
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %7
  %18 = sext i32 %15 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %18) #7
  br label %20

; <label>:19:                                     ; preds = %7
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %20

; <label>:20:                                     ; preds = %19, %17
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  br label %21

; <label>:21:                                     ; preds = %20, %2
  ret void
}

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checkstack(%struct.lua_State*, %struct.lua_State*, i32) unnamed_addr #0 {
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @lua_checkstack(%struct.lua_State* %1, i32 %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %10

; <label>:10:                                     ; preds = %5, %3, %8
  ret void
}

; Function Attrs: minsize optsize
declare i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_gethookcount(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @settabss(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %2) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @settabsi(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @settabsb(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @treatstackoption(%struct.lua_State*, %struct.lua_State*, i8*) unnamed_addr #0 {
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #7
  br label %7

; <label>:6:                                      ; preds = %3
  tail call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 1) #7
  br label %7

; <label>:7:                                      ; preds = %6, %5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %2) #7
  ret void
}

; Function Attrs: minsize optsize
declare i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @auxupvalue(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
  %4 = trunc i64 %3 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #7
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %4) #7
  br label %10

; <label>:8:                                      ; preds = %2
  %9 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 1, i32 %4) #7
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i8* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %11) #7
  %15 = add nsw i32 %1, 1
  %16 = xor i32 %1, -1
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %16, i32 1) #7
  br label %17

; <label>:17:                                     ; preds = %10, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: minsize optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_getupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @checkupval(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %2) #7
  %5 = trunc i64 %4 to i32
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %1, i32 6) #7
  %6 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 %1, i32 %5) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #7
  br label %10

; <label>:10:                                     ; preds = %3, %8
  ret i32 %5
}

; Function Attrs: minsize optsize
declare i32 @lua_iscfunction(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_upvalueid(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_setiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { minsize nounwind optsize }
attributes #8 = { cold }
attributes #9 = { minsize optsize }
attributes #10 = { minsize nounwind optsize readonly }
attributes #11 = { cold minsize optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!10, !3, i64 32}
!10 = !{!"lua_Debug", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !11, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !4, i64 60, !4, i64 61, !4, i64 62, !4, i64 63, !12, i64 64, !12, i64 66, !4, i64 68, !3, i64 128}
!11 = !{!"long", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!10, !11, i64 40}
!14 = !{!10, !8, i64 52}
!15 = !{!10, !8, i64 56}
!16 = !{!10, !3, i64 24}
!17 = !{!10, !8, i64 48}
!18 = !{!10, !4, i64 60}
!19 = !{!10, !4, i64 61}
!20 = !{!10, !4, i64 62}
!21 = !{!10, !3, i64 8}
!22 = !{!10, !3, i64 16}
!23 = !{!10, !12, i64 64}
!24 = !{!10, !12, i64 66}
!25 = !{!10, !4, i64 63}
!26 = !{!10, !8, i64 0}
