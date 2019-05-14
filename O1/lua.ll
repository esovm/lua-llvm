; ModuleID = 'lua.c'
source_filename = "lua.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@progname = internal unnamed_addr global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"'%s' needs argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unrecognized option '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [365 x i8] c"usage: %s [options] [script [args]]\0AAvailable options are:\0A  -e stat  execute string 'stat'\0A  -i       enter interactive mode after executing 'script'\0A  -l name  require library 'name' into global 'name'\0A  -v       show version information\0A  -E       ignore environment variables\0A  --       stop handling options\0A  -        stop handling options and execute stdin\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Lua 5.4.0  Copyright (C) 1994-2019 Lua.org, PUC-Rio\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"=LUA_INIT_5_4\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@globalL = internal unnamed_addr global %struct.lua_State* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"(error object is a %s value)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"'arg' is not a table\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"return %s;\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"too many results to print\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) local_unnamed_addr #0 {
  %3 = tail call %struct.lua_State* @luaL_newstate() #7
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %1, align 8, !tbaa !2
  tail call fastcc void @l_message(i8* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %17

; <label>:7:                                      ; preds = %2
  tail call void @lua_pushcclosure(%struct.lua_State* nonnull %3, i32 (%struct.lua_State*)* nonnull @pmain, i32 0) #7
  %8 = sext i32 %0 to i64
  tail call void @lua_pushinteger(%struct.lua_State* nonnull %3, i64 %8) #7
  %9 = bitcast i8** %1 to i8*
  tail call void @lua_pushlightuserdata(%struct.lua_State* nonnull %3, i8* %9) #7
  %10 = tail call i32 @lua_pcallk(%struct.lua_State* nonnull %3, i32 2, i32 1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %11 = tail call i32 @lua_toboolean(%struct.lua_State* nonnull %3, i32 -1) #7
  %12 = tail call fastcc i32 @report(%struct.lua_State* nonnull %3, i32 %10)
  tail call void @lua_close(%struct.lua_State* nonnull %3) #7
  %13 = icmp eq i32 %11, 0
  %14 = icmp ne i32 %10, 0
  %15 = or i1 %14, %13
  %16 = zext i1 %15 to i32
  br label %17

; <label>:17:                                     ; preds = %7, %5
  %18 = phi i32 [ 1, %5 ], [ %16, %7 ]
  ret i32 %18
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare %struct.lua_State* @luaL_newstate() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @l_message(i8*, i8*) unnamed_addr #0 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %0) #8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %8 = tail call i32 @fflush(%struct._IO_FILE* %7)
  br label %9

; <label>:9:                                      ; preds = %2, %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %1) #8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12)
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @pmain(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #7
  %4 = trunc i64 %3 to i32
  %5 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 2) #7
  %6 = bitcast i8* %5 to i8**
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7
  %8 = call fastcc i32 @collectargs(i8** %6, i32* nonnull %2)
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  %9 = load i8*, i8** %6, align 8, !tbaa !2
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %1
  %12 = load i8, i8* %9, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %11
  store i8* %9, i8** @progname, align 8, !tbaa !2
  br label %15

; <label>:15:                                     ; preds = %11, %1, %14
  %16 = icmp eq i32 %8, 1
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* %2, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %6, i64 %19
  %21 = load i8*, i8** %20, align 8, !tbaa !2
  tail call fastcc void @print_usage(i8* %21)
  br label %59

; <label>:22:                                     ; preds = %15
  %23 = and i32 %8, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %22
  tail call fastcc void @print_version()
  br label %26

; <label>:26:                                     ; preds = %22, %25
  %27 = and i32 %8, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  %30 = load i32, i32* %2, align 4, !tbaa !7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** %6, i32 %4, i32 %30)
  %31 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  br label %37

; <label>:32:                                     ; preds = %26
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  %33 = load i32, i32* %2, align 4, !tbaa !7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** %6, i32 %4, i32 %33)
  %34 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  %35 = tail call fastcc i32 @handle_luainit(%struct.lua_State* %0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %59

; <label>:37:                                     ; preds = %29, %32
  %38 = load i32, i32* %2, align 4, !tbaa !7
  %39 = tail call fastcc i32 @runargs(%struct.lua_State* %0, i8** %6, i32 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

; <label>:41:                                     ; preds = %37
  %42 = icmp slt i32 %38, %4
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %41
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds i8*, i8** %6, i64 %44
  %46 = tail call fastcc i32 @handle_script(%struct.lua_State* %0, i8** %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

; <label>:48:                                     ; preds = %43, %41
  %49 = and i32 %8, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %48
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %58

; <label>:52:                                     ; preds = %48
  %53 = icmp eq i32 %38, %4
  %54 = and i32 %8, 12
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %55, %53
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %52
  tail call fastcc void @print_version()
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %58

; <label>:58:                                     ; preds = %52, %57, %51
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  br label %59

; <label>:59:                                     ; preds = %43, %37, %32, %58, %17
  %60 = phi i32 [ 0, %17 ], [ 1, %58 ], [ 0, %32 ], [ 0, %37 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7
  ret i32 %60
}

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @report(%struct.lua_State*, i32 returned) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %6 = load i8*, i8** @progname, align 8, !tbaa !2
  tail call fastcc void @l_message(i8* %6, i8* %5)
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret i32 %1
}

declare void @lua_close(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @collectargs(i8** nocapture readonly, i32* nocapture) unnamed_addr #4 {
  %3 = getelementptr inbounds i8*, i8** %0, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %5 = icmp eq i8* %4, null
  store i32 1, i32* %1, align 4, !tbaa !7
  br i1 %5, label %64, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %54
  %8 = phi i8* [ %60, %54 ], [ %4, %6 ]
  %9 = phi i32 [ %57, %54 ], [ 1, %6 ]
  %10 = phi i32 [ %55, %54 ], [ 0, %6 ]
  %11 = load i8, i8* %8, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 45
  br i1 %12, label %13, label %62

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %8, i64 1
  %15 = load i8, i8* %14, align 1, !tbaa !6
  %16 = sext i8 %15 to i32
  switch i32 %16, label %64 [
    i32 45, label %17
    i32 0, label %62
    i32 69, label %23
    i32 105, label %29
    i32 118, label %31
    i32 101, label %38
    i32 108, label %40
  ]

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %8, i64 2
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %64

; <label>:21:                                     ; preds = %17
  %22 = add nsw i32 %9, 1
  store i32 %22, i32* %1, align 4, !tbaa !7
  br label %64

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds i8, i8* %8, i64 2
  %25 = load i8, i8* %24, align 1, !tbaa !6
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %62

; <label>:27:                                     ; preds = %23
  %28 = or i32 %10, 16
  br label %54

; <label>:29:                                     ; preds = %13
  %30 = or i32 %10, 2
  br label %31

; <label>:31:                                     ; preds = %13, %29
  %32 = phi i32 [ %10, %13 ], [ %30, %29 ]
  %33 = getelementptr inbounds i8, i8* %8, i64 2
  %34 = load i8, i8* %33, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %62

; <label>:36:                                     ; preds = %31
  %37 = or i32 %32, 4
  br label %54

; <label>:38:                                     ; preds = %13
  %39 = or i32 %10, 8
  br label %40

; <label>:40:                                     ; preds = %13, %38
  %41 = phi i32 [ %10, %13 ], [ %39, %38 ]
  %42 = getelementptr inbounds i8, i8* %8, i64 2
  %43 = load i8, i8* %42, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %40
  %46 = add nsw i32 %9, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %0, i64 %47
  %49 = load i8*, i8** %48, align 8, !tbaa !2
  %50 = icmp eq i8* %49, null
  br i1 %50, label %62, label %51

; <label>:51:                                     ; preds = %45
  %52 = load i8, i8* %49, align 1, !tbaa !6
  %53 = icmp eq i8 %52, 45
  br i1 %53, label %62, label %54

; <label>:54:                                     ; preds = %27, %36, %51, %40
  %55 = phi i32 [ %41, %51 ], [ %41, %40 ], [ %37, %36 ], [ %28, %27 ]
  %56 = phi i32 [ %46, %51 ], [ %9, %40 ], [ %9, %36 ], [ %9, %27 ]
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %0, i64 %58
  %60 = load i8*, i8** %59, align 8, !tbaa !2
  %61 = icmp eq i8* %60, null
  store i32 %57, i32* %1, align 4, !tbaa !7
  br i1 %61, label %62, label %7

; <label>:62:                                     ; preds = %54, %45, %51, %31, %23, %13, %7
  %63 = phi i32 [ %55, %54 ], [ 1, %45 ], [ 1, %51 ], [ 1, %31 ], [ 1, %23 ], [ %10, %13 ], [ %10, %7 ]
  br label %64

; <label>:64:                                     ; preds = %13, %62, %2, %17, %21
  %65 = phi i32 [ %10, %21 ], [ 1, %17 ], [ 0, %2 ], [ %63, %62 ], [ 1, %13 ]
  ret i32 %65
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @print_usage(i8*) unnamed_addr #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %3 = load i8*, i8** @progname, align 8, !tbaa !2
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %3) #8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5)
  %7 = getelementptr inbounds i8, i8* %0, i64 1
  %8 = load i8, i8* %7, align 1, !tbaa !6
  switch i8 %8, label %14 [
    i8 101, label %9
    i8 108, label %9
  ]

; <label>:9:                                      ; preds = %1, %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %0) #8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12)
  br label %19

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %0) #8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %18 = tail call i32 @fflush(%struct._IO_FILE* %17)
  br label %19

; <label>:19:                                     ; preds = %14, %9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %21 = load i8*, i8** @progname, align 8, !tbaa !2
  %22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.7, i64 0, i64 0), i8* %21) #8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %24 = tail call i32 @fflush(%struct._IO_FILE* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_version() unnamed_addr #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %4 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @createargtable(%struct.lua_State*, i8** nocapture readonly, i32, i32) unnamed_addr #0 {
  %5 = icmp eq i32 %3, %2
  %6 = select i1 %5, i32 0, i32 %3
  %7 = add nsw i32 %6, 1
  %8 = sub nsw i32 %2, %7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %8, i32 %7) #7
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = zext i32 %2 to i64
  br label %12

; <label>:12:                                     ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %20, %12 ]
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13
  %15 = load i8*, i8** %14, align 8, !tbaa !2
  %16 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %15) #7
  %17 = trunc i64 %13 to i32
  %18 = sub nsw i32 %17, %6
  %19 = sext i32 %18 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %19) #7
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, %11
  br i1 %21, label %22, label %12

; <label>:22:                                     ; preds = %12, %4
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  ret void
}

declare i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @handle_luainit(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 1)) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 1)) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %1, %4
  %8 = phi i8* [ %5, %4 ], [ %2, %1 ]
  %9 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %4 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %1 ]
  %10 = load i8, i8* %8, align 1, !tbaa !6
  %11 = icmp eq i8 %10, 64
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds i8, i8* %8, i64 1
  %14 = tail call fastcc i32 @dofile(%struct.lua_State* %0, i8* nonnull %13)
  br label %17

; <label>:15:                                     ; preds = %7
  %16 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* nonnull %8, i8* %9)
  br label %17

; <label>:17:                                     ; preds = %4, %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @runargs(%struct.lua_State*, i8** nocapture readonly, i32) unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %5, label %37

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %33
  %7 = phi i32 [ %35, %33 ], [ 1, %5 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %1, i64 %8
  %10 = load i8*, i8** %9, align 8, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 101
  switch i8 %12, label %33 [
    i8 108, label %14
    i8 101, label %14
  ]

; <label>:14:                                     ; preds = %6, %6
  %15 = getelementptr inbounds i8, i8* %10, i64 2
  %16 = load i8, i8* %15, align 1, !tbaa !6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %14
  %19 = add nsw i32 %7, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20
  %22 = load i8*, i8** %21, align 8, !tbaa !2
  br label %23

; <label>:23:                                     ; preds = %18, %14
  %24 = phi i32 [ %19, %18 ], [ %7, %14 ]
  %25 = phi i8* [ %22, %18 ], [ %15, %14 ]
  br i1 %13, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %30

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc i32 @dolibrary(%struct.lua_State* %0, i8* %25)
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %6, %30
  %34 = phi i32 [ %24, %30 ], [ %7, %6 ]
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %35, %2
  br i1 %36, label %6, label %37

; <label>:37:                                     ; preds = %33, %30, %3
  %38 = phi i32 [ 1, %3 ], [ 0, %30 ], [ 1, %33 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @handle_script(%struct.lua_State*, i8** nocapture readonly) unnamed_addr #0 {
  %3 = load i8*, i8** %1, align 8, !tbaa !2
  %4 = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 -1
  %8 = load i8*, i8** %7, align 8, !tbaa !2
  %9 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #9
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8* %3, i8* null
  br label %12

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i8* [ %3, %2 ], [ %11, %6 ]
  %14 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %13, i8* null) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = tail call fastcc i32 @pushargs(%struct.lua_State* %0)
  %18 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 %17, i32 -1)
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = phi i32 [ %18, %16 ], [ %14, %12 ]
  %21 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %20)
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc void @doREPL(%struct.lua_State*) unnamed_addr #0 {
  %2 = load i64, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  store i8* null, i8** @progname, align 8, !tbaa !2
  br label %3

; <label>:3:                                      ; preds = %12, %1
  %4 = tail call fastcc i32 @loadline(%struct.lua_State* %0)
  switch i32 %4, label %9 [
    i32 -1, label %13
    i32 0, label %5
  ]

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 0, i32 -1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  tail call fastcc void @l_print(%struct.lua_State* %0)
  br label %12

; <label>:9:                                      ; preds = %3, %5
  %10 = phi i32 [ %6, %5 ], [ %4, %3 ]
  %11 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %10)
  br label %12

; <label>:12:                                     ; preds = %9, %8
  br label %3

; <label>:13:                                     ; preds = %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %15 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %17 = tail call i32 @fflush(%struct._IO_FILE* %16)
  store i64 %2, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dofile(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %1, i8* null) #7
  %4 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dostring(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i64 @strlen(i8* %1) #9
  %5 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %4, i8* %2, i8* null) #7
  %6 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dochunk(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %2
  %5 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 0, i32 0)
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ %1, %2 ]
  %8 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %7)
  ret i32 %8
}

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @docall(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  %5 = sub nsw i32 %4, %1
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #7
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %5, i32 1) #7
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %6 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #7
  %7 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %1, i32 %2, i32 %5, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %8 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #7
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %5, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  ret i32 %7
}

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @msghandler(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %4, %7
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %12 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %11) #7
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %12) #7
  br label %14

; <label>:14:                                     ; preds = %10, %1
  %15 = phi i8* [ %13, %10 ], [ %2, %1 ]
  tail call void @luaL_traceback(%struct.lua_State* %0, %struct.lua_State* %0, i8* %15, i32 1) #7
  br label %16

; <label>:16:                                     ; preds = %7, %14
  ret i32 1
}

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void (i32)* @__sysv_signal(i32, void (i32)*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @laction(i32) #0 {
  %2 = tail call void (i32)* @__sysv_signal(i32 %0, void (i32)* null) #7
  %3 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8, !tbaa !2
  tail call void @lua_sethook(%struct.lua_State* %3, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @lstop, i32 11, i32 1) #7
  ret void
}

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #2

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @lstop(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 {
  tail call void @lua_sethook(%struct.lua_State* %0, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #7
  %3 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #7
  ret void
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dolibrary(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #7
  %5 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 1, i32 1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %1) #7
  br label %8

; <label>:8:                                      ; preds = %7, %2
  %9 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %5)
  ret i32 %9
}

declare i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pushargs(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #7
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 -1) #7
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %8, 3
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #7
  %10 = icmp slt i32 %8, 1
  br i1 %10, label %25, label %11

; <label>:11:                                     ; preds = %6
  %12 = add i64 %7, 1
  %13 = and i64 %12, 4294967295
  br label %14

; <label>:14:                                     ; preds = %14, %11
  %15 = phi i64 [ %19, %14 ], [ 1, %11 ]
  %16 = phi i32 [ %21, %14 ], [ -1, %11 ]
  %17 = phi i32 [ %20, %14 ], [ 1, %11 ]
  %18 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %16, i64 %15) #7
  %19 = add nuw nsw i64 %15, 1
  %20 = add nuw nsw i32 %17, 1
  %21 = xor i32 %17, -1
  %22 = icmp eq i64 %19, %13
  br i1 %22, label %23, label %14

; <label>:23:                                     ; preds = %14
  %24 = xor i32 %8, -1
  br label %25

; <label>:25:                                     ; preds = %23, %6
  %26 = phi i32 [ -1, %6 ], [ %24, %23 ]
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %26, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  ret i32 %8
}

declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @loadline(%struct.lua_State*) unnamed_addr #0 {
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %2 = tail call fastcc i32 @pushline(%struct.lua_State* %0, i32 1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc i32 @addreturn(%struct.lua_State* %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call fastcc i32 @multiline(%struct.lua_State* %0)
  br label %9

; <label>:9:                                      ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %11

; <label>:11:                                     ; preds = %1, %9
  %12 = phi i32 [ %10, %9 ], [ -1, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc void @l_print(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %1
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #7
  %5 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #7
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #7
  %6 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %2, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** @progname, align 8, !tbaa !2
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* %10) #7
  tail call fastcc void @l_message(i8* %9, i8* %11)
  br label %12

; <label>:12:                                     ; preds = %4, %8, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pushline(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %4) #7
  %5 = tail call fastcc i8* @get_prompt(%struct.lua_State* %0, i32 %1)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %7 = tail call i32 @fputs(i8* %5, %struct._IO_FILE* %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %9 = tail call i32 @fflush(%struct._IO_FILE* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %11 = call i8* @fgets(i8* nonnull %4, i32 512, %struct._IO_FILE* %10)
  %12 = icmp eq i8* %11, null
  br i1 %12, label %33, label %13

; <label>:13:                                     ; preds = %2
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %14 = call i64 @strlen(i8* nonnull %4) #9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %13
  %17 = add i64 %14, -1
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  store i8 0, i8* %18, align 1, !tbaa !6
  br label %22

; <label>:22:                                     ; preds = %13, %21, %16
  %23 = phi i64 [ %17, %21 ], [ %14, %16 ], [ 0, %13 ]
  %24 = icmp ne i32 %1, 0
  %25 = load i8, i8* %4, align 16
  %26 = icmp eq i8 %25, 61
  %27 = and i1 %24, %26
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %30 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %29) #7
  br label %33

; <label>:31:                                     ; preds = %22
  %32 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %4, i64 %23) #7
  br label %33

; <label>:33:                                     ; preds = %28, %31, %2
  %34 = phi i32 [ 0, %2 ], [ 1, %31 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %4) #7
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @addreturn(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %3 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %2) #7
  %4 = tail call i64 @strlen(i8* %3) #9
  %5 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %3, i64 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  ret i32 0

; <label>:8:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #7
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @multiline(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %4 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #7
  %5 = load i64, i64* %2, align 8, !tbaa !9
  %6 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %4, i64 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %7 = call fastcc i32 @incomplete(%struct.lua_State* %0, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %9, %14
  %11 = phi i32 [ %18, %14 ], [ %6, %9 ]
  %12 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

; <label>:14:                                     ; preds = %10
  %15 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #7
  call void @lua_concat(%struct.lua_State* %0, i32 3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %16 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #7
  %17 = load i64, i64* %2, align 8, !tbaa !9
  %18 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %16, i64 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %19 = call fastcc i32 @incomplete(%struct.lua_State* %0, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %10

; <label>:21:                                     ; preds = %14, %10, %1
  %22 = phi i32 [ %6, %1 ], [ %11, %10 ], [ %18, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_prompt(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = select i1 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)
  %5 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* %4) #7
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %7 = icmp eq i8* %6, null
  %8 = select i1 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %9 = select i1 %7, i8* %8, i8* %6
  ret i8* %9
}

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incomplete(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %5, label %17

; <label>:5:                                      ; preds = %2
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %7 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %3) #7
  %8 = load i64, i64* %3, align 8, !tbaa !9
  %9 = icmp ugt i64 %8, 4
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %7, i64 %8
  %12 = getelementptr inbounds i8, i8* %11, i64 -5
  %13 = call i32 @strcmp(i8* nonnull %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %17

; <label>:16:                                     ; preds = %5, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %17

; <label>:17:                                     ; preds = %2, %16, %15
  %18 = phi i32 [ 1, %15 ], [ 0, %16 ], [ 0, %2 ]
  ret i32 %18
}

declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind readonly }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !4, i64 0}
