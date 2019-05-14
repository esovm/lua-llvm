; ModuleID = 'liolib.c'
source_filename = "liolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.luaL_Stream = type { %struct._IO_FILE*, i32 (%struct.lua_State*)* }
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.RN = type { %struct._IO_FILE*, i32, i32, [201 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 16
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"_IO_input\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"_IO_output\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"cannot open file '%s' (%s)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"pP\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"rwa\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"'popen' not supported\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [11 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @f_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 (%struct.lua_State*)* @f_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 (%struct.lua_State*)* @f_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (%struct.lua_State*)* @f_tostring }, %struct.luaL_Reg zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@f_seek.mode = internal unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* null], align 16
@.str.46 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@f_setvbuf.mode = internal unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.50 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @luaopen_io(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #8
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 11) #8
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0), i32 0) #8
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #8
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* @flib, i64 0, i64 0), i32 0) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  tail call fastcc void @createstdfile(%struct.lua_State* %0, %struct._IO_FILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  tail call fastcc void @createstdfile(%struct.lua_State* %0, %struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #9
  %5 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !tbaa !2
  %6 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %8, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %9 = bitcast i8* %6 to i64*
  store i64 %5, i64* %9, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %8, align 8, !tbaa !6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #8
  ret i32 1
}

; Function Attrs: optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @createstdfile(%struct.lua_State*, %struct._IO_FILE*, i8*, i8*) unnamed_addr #0 {
  %5 = tail call fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State* %0) #9
  %6 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %5, i64 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %5, i64 0, i32 1
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %7, align 8, !tbaa !6
  %8 = icmp eq i8* %2, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* nonnull %2) #8
  br label %10

; <label>:10:                                     ; preds = %4, %9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_close(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #8
  %9 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %10 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10)
  %11 = getelementptr inbounds i8, i8* %9, i64 8
  %12 = bitcast i8* %11 to i32 (%struct.lua_State*)**
  %13 = bitcast i8* %11 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  store volatile i64 %14, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %12, align 8, !tbaa !6
  %15 = load volatile i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i32 (%struct.lua_State*)*
  %17 = tail call i32 %16(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10)
  ret i32 %17
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_flush(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #9
  %3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* null) #8
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_input(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #9
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_lines(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %5

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  %10 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0) #9
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #8
  tail call fastcc void @opencheck(%struct.lua_State* %0, i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #9
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 1) #9
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  br label %13

; <label>:13:                                     ; preds = %8, %11
  %14 = phi i32 [ 4, %11 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_open(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #8
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #8
  %4 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %7 = bitcast i8* %4 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  %8 = load i8, i8* %3, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

; <label>:10:                                     ; preds = %1
  %11 = sext i8 %8 to i32
  %12 = getelementptr inbounds i8, i8* %3, i64 1
  %13 = tail call i8* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %11, i64 4) #10
  %14 = icmp eq i8* %13, null
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %10
  %16 = load i8, i8* %12, align 1, !tbaa !9
  %17 = icmp eq i8 %16, 43
  %18 = getelementptr inbounds i8, i8* %3, i64 2
  %19 = select i1 %17, i8* %18, i8* %12
  %20 = tail call i64 @strspn(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #11
  %21 = tail call i64 @strlen(i8* nonnull %19) #11
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %15, %1, %10
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #8
  br label %25

; <label>:25:                                     ; preds = %15, %23
  %26 = tail call %struct._IO_FILE* @fopen64(i8* %2, i8* %3) #9
  store %struct._IO_FILE* %26, %struct._IO_FILE** %7, align 8, !tbaa !8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* %2) #8
  br label %30

; <label>:30:                                     ; preds = %25, %28
  %31 = phi i32 [ %29, %28 ], [ 1, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_output(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #9
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_popen(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #8
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #8
  %4 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #8
  %8 = bitcast i8* %4 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_pclose, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  %9 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* %2) #8
  ret i32 %9
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_read(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #9
  %3 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 1) #9
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_tmpfile(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %5 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = tail call %struct._IO_FILE* @tmpfile64() #9
  store %struct._IO_FILE* %6, %struct._IO_FILE** %5, align 8, !tbaa !8
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = phi i32 [ %9, %8 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_type(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #8
  %2 = tail call i8* @luaL_testudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i32 (%struct.lua_State*)**
  %8 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8, !tbaa !6
  %9 = icmp eq i32 (%struct.lua_State*)* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #8
  br label %14

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #8
  br label %14

; <label>:14:                                     ; preds = %10, %12, %4
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_write(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #9
  %3 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 1) #9
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_close(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  %3 = tail call fastcc i32 @aux_close(%struct.lua_State* %0) #9
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._IO_FILE* @tofile(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  ret %struct._IO_FILE* %11
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @aux_close(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4)
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  %7 = bitcast i8* %5 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !6
  store volatile i64 %8, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  %9 = load volatile i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i32 (%struct.lua_State*)*
  %11 = tail call i32 %10(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4)
  ret i32 %11
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._IO_FILE* @getiofile(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #8
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #8
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 4
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %10) #8
  br label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = bitcast i8* %4 to %struct._IO_FILE**
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !tbaa !8
  ret %struct._IO_FILE* %14
}

; Function Attrs: optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @g_iofile(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  tail call fastcc void @opencheck(%struct.lua_State* %0, i8* nonnull %7, i8* %2) #9
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  br label %12

; <label>:12:                                     ; preds = %10, %9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #8
  br label %13

; <label>:13:                                     ; preds = %12, %3
  %14 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #8
  ret void
}

; Function Attrs: optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @opencheck(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %7 = bitcast i8* %4 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  %8 = tail call %struct._IO_FILE* @fopen64(i8* %1, i8* %2) #9
  store %struct._IO_FILE* %8, %struct._IO_FILE** %7, align 8, !tbaa !8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno_location() #12
  %12 = load i32, i32* %11, align 4, !tbaa !10
  %13 = tail call i8* @strerror(i32 %12) #8
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %1, i8* %13) #8
  br label %15

; <label>:15:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %3 = bitcast i8* %2 to %struct.luaL_Stream*
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  ret %struct.luaL_Stream* %3
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_fclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !8
  %5 = tail call i32 @fclose(%struct._IO_FILE* %4) #9
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %7, i8* null) #8
  ret i32 %8
}

; Function Attrs: optsize
declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_setmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @aux_lines(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %3, 252
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #8
  br label %8

; <label>:8:                                      ; preds = %6, %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  %9 = sext i32 %4 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #8
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %1) #8
  tail call void @lua_rotate(%struct.lua_State* %0, i32 2, i32 3) #8
  %10 = add nsw i32 %3, 2
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 %10) #8
  ret void
}

; Function Attrs: optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_readline(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #8
  %4 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1001002, i32* null) #8
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to i32 (%struct.lua_State*)**
  %8 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8, !tbaa !6
  %9 = icmp eq i32 (%struct.lua_State*)* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #8
  br label %46

; <label>:12:                                     ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #8
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #8
  %13 = icmp slt i32 %5, 1
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %12
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi i32 [ %18, %15 ], [ 1, %14 ]
  %17 = sub nuw i32 -1001003, %16
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %17) #8
  %18 = add nuw nsw i32 %16, 1
  %19 = icmp eq i32 %16, %5
  br i1 %19, label %20, label %15

; <label>:20:                                     ; preds = %15, %12
  %21 = bitcast i8* %3 to %struct._IO_FILE**
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8, !tbaa !8
  %23 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %22, i32 2) #9
  %24 = sub nsw i32 0, %23
  %25 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

; <label>:27:                                     ; preds = %20
  %28 = icmp sgt i32 %23, 1
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %27
  %30 = sub i32 1, %23
  %31 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %30, i64* null) #8
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %31) #8
  br label %46

; <label>:33:                                     ; preds = %27
  %34 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1001003) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

; <label>:36:                                     ; preds = %33
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1001001) #8
  %37 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %38 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38)
  %39 = getelementptr inbounds i8, i8* %37, i64 8
  %40 = bitcast i8* %39 to i32 (%struct.lua_State*)**
  %41 = bitcast i8* %39 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !6
  store volatile i64 %42, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %40, align 8, !tbaa !6
  %43 = load volatile i64, i64* %2, align 8
  %44 = inttoptr i64 %43 to i32 (%struct.lua_State*)*
  %45 = tail call i32 %44(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38)
  br label %46

; <label>:46:                                     ; preds = %36, %33, %20, %29, %10
  %47 = phi i32 [ %11, %10 ], [ %32, %29 ], [ %23, %20 ], [ 0, %33 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @g_read(%struct.lua_State*, %struct._IO_FILE*, i32) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca %struct.RN, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8
  tail call void @clearerr(%struct._IO_FILE* %1) #8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1) #9
  %11 = add nsw i32 %2, 1
  br label %160

; <label>:12:                                     ; preds = %3
  %13 = add nsw i32 %7, 19
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #8
  %14 = add nsw i32 %7, -2
  %15 = bitcast %struct.luaL_Buffer* %6 to i8*
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 2
  %17 = bitcast %struct.RN* %5 to i8*
  %18 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 0
  %19 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 2
  %20 = bitcast %struct.luaL_Buffer* %4 to i8*
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 2
  %22 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 0
  br label %24

; <label>:24:                                     ; preds = %12, %153
  %25 = phi i32 [ %14, %12 ], [ %156, %153 ]
  %26 = phi i32 [ %2, %12 ], [ %155, %153 ]
  %27 = call i32 @lua_type(%struct.lua_State* %0, i32 %26) #8
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %45

; <label>:29:                                     ; preds = %24
  %30 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %26) #8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %29
  %33 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  %34 = call i32 @ungetc(i32 %33, %struct._IO_FILE* %1) #8
  %35 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)) #8
  %36 = icmp ne i32 %33, -1
  %37 = zext i1 %36 to i32
  br label %153

; <label>:38:                                     ; preds = %29
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %15) #10
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #8
  %39 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 %30) #8
  %40 = call i64 @fread(i8* %39, i64 1, i64 %30, %struct._IO_FILE* %1) #8
  %41 = load i64, i64* %16, align 8, !tbaa !12
  %42 = add i64 %41, %40
  store i64 %42, i64* %16, align 8, !tbaa !12
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #8
  %43 = icmp ne i64 %40, 0
  %44 = zext i1 %43 to i32
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %15) #10
  br label %153

; <label>:45:                                     ; preds = %24
  %46 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %26, i64* null) #8
  %47 = load i8, i8* %46, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 42
  %49 = getelementptr inbounds i8, i8* %46, i64 1
  %50 = select i1 %48, i8* %49, i8* %46
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %52 = sext i8 %51 to i32
  switch i32 %52, label %151 [
    i32 110, label %53
    i32 108, label %139
    i32 76, label %141
    i32 97, label %143
  ]

; <label>:53:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %17) #10
  store %struct._IO_FILE* %1, %struct._IO_FILE** %18, align 8, !tbaa !15
  store i32 0, i32* %19, align 4, !tbaa !17
  %54 = call %struct.lconv* @localeconv() #8
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %54, i64 0, i32 0
  %56 = load i8*, i8** %55, align 8, !tbaa !18
  %57 = load i8, i8* %56, align 1, !tbaa !9
  br label %58

; <label>:58:                                     ; preds = %58, %53
  %59 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  %60 = tail call i16** @__ctype_b_loc() #12
  %61 = load i16*, i16** %60, align 8, !tbaa !2
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds i16, i16* %61, i64 %62
  %64 = load i16, i16* %63, align 2, !tbaa !20
  %65 = and i16 %64, 8192
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %58

; <label>:67:                                     ; preds = %58
  store i32 %59, i32* %22, align 8, !tbaa !22
  switch i32 %59, label %71 [
    i32 45, label %68
    i32 43, label %68
  ]

; <label>:68:                                     ; preds = %67, %67
  %69 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  %70 = load i32, i32* %22, align 8, !tbaa !22
  br label %71

; <label>:71:                                     ; preds = %68, %67
  %72 = phi i32 [ %59, %67 ], [ %70, %68 ]
  %73 = icmp eq i32 %72, 48
  br i1 %73, label %74, label %87

; <label>:74:                                     ; preds = %71
  %75 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %22, align 8, !tbaa !22
  switch i32 %78, label %82 [
    i32 120, label %79
    i32 88, label %79
  ]

; <label>:79:                                     ; preds = %77, %77
  %80 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  %81 = icmp eq i32 %80, 0
  br label %82

; <label>:82:                                     ; preds = %79, %77
  %83 = phi i1 [ %81, %79 ], [ true, %77 ]
  %84 = zext i1 %83 to i32
  %85 = xor i1 %83, true
  %86 = zext i1 %85 to i32
  br label %87

; <label>:87:                                     ; preds = %82, %74, %71
  %88 = phi i32 [ 0, %74 ], [ %84, %82 ], [ 0, %71 ]
  %89 = phi i32 [ 0, %74 ], [ %86, %82 ], [ 0, %71 ]
  %90 = call fastcc i32 @readdigits(%struct.RN* nonnull %5, i32 %89) #8
  %91 = add nsw i32 %90, %88
  %92 = load i32, i32* %22, align 8, !tbaa !22
  %93 = sext i8 %57 to i32
  %94 = icmp eq i32 %92, %93
  %95 = icmp eq i32 %92, 46
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %103

; <label>:97:                                     ; preds = %87
  %98 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %97
  %101 = call fastcc i32 @readdigits(%struct.RN* nonnull %5, i32 %89) #8
  %102 = add nsw i32 %101, %91
  br label %103

; <label>:103:                                    ; preds = %100, %97, %87
  %104 = phi i32 [ %102, %100 ], [ %91, %97 ], [ %91, %87 ]
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %103
  %107 = icmp eq i32 %89, 0
  %108 = select i1 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)
  %109 = load i32, i32* %22, align 8, !tbaa !22
  %110 = load i8, i8* %108, align 1, !tbaa !9
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %118, label %113

; <label>:113:                                    ; preds = %106
  %114 = getelementptr inbounds i8, i8* %108, i64 1
  %115 = load i8, i8* %114, align 1, !tbaa !9
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %109, %116
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %113, %106
  %119 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %22, align 8, !tbaa !22
  switch i32 %122, label %125 [
    i32 45, label %123
    i32 43, label %123
  ]

; <label>:123:                                    ; preds = %121, %121
  %124 = call fastcc i32 @nextc(%struct.RN* nonnull %5) #8
  br label %125

; <label>:125:                                    ; preds = %123, %121
  %126 = call fastcc i32 @readdigits(%struct.RN* nonnull %5, i32 0) #8
  br label %127

; <label>:127:                                    ; preds = %125, %118, %113, %103
  %128 = load i32, i32* %22, align 8, !tbaa !22
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8, !tbaa !15
  %130 = call i32 @ungetc(i32 %128, %struct._IO_FILE* %129) #8
  %131 = load i32, i32* %19, align 4, !tbaa !17
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %132
  store i8 0, i8* %133, align 1, !tbaa !9
  %134 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %23) #8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %127
  call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %137

; <label>:137:                                    ; preds = %127, %136
  %138 = phi i32 [ 0, %136 ], [ 1, %127 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %17) #10
  br label %153

; <label>:139:                                    ; preds = %45
  %140 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1) #9
  br label %153

; <label>:141:                                    ; preds = %45
  %142 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 0) #9
  br label %153

; <label>:143:                                    ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %20) #10
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #8
  br label %144

; <label>:144:                                    ; preds = %144, %143
  %145 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1024) #8
  %146 = call i64 @fread(i8* %145, i64 1, i64 1024, %struct._IO_FILE* %1) #8
  %147 = load i64, i64* %21, align 8, !tbaa !12
  %148 = add i64 %147, %146
  store i64 %148, i64* %21, align 8, !tbaa !12
  %149 = icmp eq i64 %146, 1024
  br i1 %149, label %144, label %150

; <label>:150:                                    ; preds = %144
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %20) #10
  br label %153

; <label>:151:                                    ; preds = %45
  %152 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #8
  br label %172

; <label>:153:                                    ; preds = %137, %139, %141, %150, %32, %38
  %154 = phi i32 [ %37, %32 ], [ %44, %38 ], [ %138, %137 ], [ %140, %139 ], [ %142, %141 ], [ 1, %150 ]
  %155 = add nsw i32 %26, 1
  %156 = add nsw i32 %25, -1
  %157 = icmp ne i32 %25, 0
  %158 = icmp ne i32 %154, 0
  %159 = and i1 %157, %158
  br i1 %159, label %24, label %160

; <label>:160:                                    ; preds = %153, %9
  %161 = phi i32 [ %11, %9 ], [ %155, %153 ]
  %162 = phi i32 [ %10, %9 ], [ %154, %153 ]
  %163 = call i32 @ferror(%struct._IO_FILE* %1) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

; <label>:165:                                    ; preds = %160
  %166 = call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %172

; <label>:167:                                    ; preds = %160
  %168 = icmp eq i32 %162, 0
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %167
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %170

; <label>:170:                                    ; preds = %167, %169
  %171 = sub nsw i32 %161, %2
  br label %172

; <label>:172:                                    ; preds = %151, %170, %165
  %173 = phi i32 [ %166, %165 ], [ %171, %170 ], [ %152, %151 ]
  ret i32 %173
}

; Function Attrs: optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @clearerr(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_line(%struct.lua_State*, %struct._IO_FILE* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #10
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #8
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 2
  br label %7

; <label>:7:                                      ; preds = %23, %3
  %8 = phi i32 [ 0, %3 ], [ %14, %23 ]
  switch i32 %8, label %9 [
    i32 -1, label %28
    i32 10, label %28
  ]

; <label>:9:                                      ; preds = %7
  %10 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1024) #8
  br label %11

; <label>:11:                                     ; preds = %9, %15
  %12 = phi i64 [ 0, %9 ], [ %17, %15 ]
  %13 = phi i32 [ 0, %9 ], [ %18, %15 ]
  %14 = call i32 @_IO_getc(%struct._IO_FILE* %1) #9
  switch i32 %14, label %15 [
    i32 -1, label %21
    i32 10, label %21
  ]

; <label>:15:                                     ; preds = %11
  %16 = trunc i32 %14 to i8
  %17 = add nuw nsw i64 %12, 1
  %18 = add nuw nsw i32 %13, 1
  %19 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 %16, i8* %19, align 1, !tbaa !9
  %20 = icmp ult i64 %17, 1024
  br i1 %20, label %11, label %23

; <label>:21:                                     ; preds = %11, %11
  %22 = trunc i64 %12 to i32
  br label %23

; <label>:23:                                     ; preds = %15, %21
  %24 = phi i32 [ %22, %21 ], [ %18, %15 ]
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %6, align 8, !tbaa !12
  %27 = add i64 %26, %25
  store i64 %27, i64* %6, align 8, !tbaa !12
  br label %7

; <label>:28:                                     ; preds = %7, %7
  %29 = icmp eq i32 %2, 0
  %30 = icmp eq i32 %8, 10
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %46

; <label>:32:                                     ; preds = %28
  %33 = load i64, i64* %6, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !23
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %32
  %38 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1) #8
  %39 = load i64, i64* %6, align 8, !tbaa !12
  br label %40

; <label>:40:                                     ; preds = %37, %32
  %41 = phi i64 [ %39, %37 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !24
  %44 = add i64 %41, 1
  store i64 %44, i64* %6, align 8, !tbaa !12
  %45 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8 10, i8* %45, align 1, !tbaa !9
  br label %46

; <label>:46:                                     ; preds = %28, %40
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #8
  br i1 %30, label %51, label %47

; <label>:47:                                     ; preds = %46
  %48 = call i64 @lua_rawlen(%struct.lua_State* %0, i32 -1) #8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

; <label>:51:                                     ; preds = %47, %46
  %52 = phi i32 [ 1, %46 ], [ %50, %47 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #10
  ret i32 %52
}

; Function Attrs: optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lua_rawlen(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare %struct.lconv* @localeconv() local_unnamed_addr #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @readdigits(%struct.RN* nocapture, i32) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = tail call i16** @__ctype_b_loc() #12
  %5 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 1
  br label %6

; <label>:6:                                      ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %8 = load i16*, i16** %4, align 8, !tbaa !2
  %9 = load i32, i32* %5, align 8, !tbaa !22
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %8, i64 %10
  %12 = load i16, i16* %11, align 2, !tbaa !20
  %13 = zext i16 %12 to i32
  br i1 %3, label %17, label %14

; <label>:14:                                     ; preds = %6
  %15 = and i32 %13, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %20

; <label>:17:                                     ; preds = %6
  %18 = and i32 %13, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %14, %17
  %21 = tail call fastcc i32 @nextc(%struct.RN* nonnull %0) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = add nuw nsw i32 %7, 1
  br label %6

; <label>:25:                                     ; preds = %20, %14, %17
  ret i32 %7
}

; Function Attrs: optsize
declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @nextc(%struct.RN* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !17
  %4 = icmp sgt i32 %3, 199
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 3, i64 0
  store i8 0, i8* %6, align 8, !tbaa !9
  br label %17

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = trunc i32 %9 to i8
  %11 = add nsw i32 %3, 1
  store i32 %11, i32* %2, align 4, !tbaa !17
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 3, i64 %12
  store i8 %10, i8* %13, align 1, !tbaa !9
  %14 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !tbaa !15
  %16 = tail call i32 @_IO_getc(%struct._IO_FILE* %15) #9
  store i32 %16, i32* %8, align 8, !tbaa !22
  br label %17

; <label>:17:                                     ; preds = %7, %5
  %18 = phi i32 [ 0, %5 ], [ 1, %7 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_pclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = tail call i32 @luaL_execresult(%struct.lua_State* %0, i32 -1) #8
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @tmpfile64() local_unnamed_addr #3

; Function Attrs: optsize
declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_testudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @g_write(%struct.lua_State*, %struct._IO_FILE* nocapture, i32) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8
  %6 = sub nsw i32 %5, %2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

; <label>:8:                                      ; preds = %3
  %9 = bitcast i64* %4 to i8*
  br label %10

; <label>:10:                                     ; preds = %8, %41
  %11 = phi i32 [ %6, %8 ], [ %14, %41 ]
  %12 = phi i32 [ %2, %8 ], [ %44, %41 ]
  %13 = phi i32 [ 1, %8 ], [ %43, %41 ]
  %14 = add nsw i32 %11, -1
  %15 = call i32 @lua_type(%struct.lua_State* %0, i32 %12) #8
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = call i32 @lua_isinteger(%struct.lua_State* %0, i32 %12) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %17
  %21 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %12, i32* null) #8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i64 %21) #9
  br label %26

; <label>:23:                                     ; preds = %17
  %24 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %12, i32* null) #8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), double %24) #9
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = icmp ne i32 %13, 0
  %29 = icmp sgt i32 %27, 0
  %30 = and i1 %28, %29
  br label %41

; <label>:31:                                     ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  %32 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %12, i64* nonnull %4) #8
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %39, label %34

; <label>:34:                                     ; preds = %31
  %35 = load i64, i64* %4, align 8, !tbaa !25
  %36 = call i64 @fwrite(i8* %32, i64 1, i64 %35, %struct._IO_FILE* %1) #9
  %37 = load i64, i64* %4, align 8, !tbaa !25
  %38 = icmp eq i64 %36, %37
  br label %39

; <label>:39:                                     ; preds = %31, %34
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  br label %41

; <label>:41:                                     ; preds = %26, %39
  %42 = phi i1 [ %30, %26 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 %12, 1
  %45 = icmp eq i32 %14, 0
  br i1 %45, label %46, label %10

; <label>:46:                                     ; preds = %41
  br i1 %42, label %49, label %47

; <label>:47:                                     ; preds = %46
  %48 = call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %49

; <label>:49:                                     ; preds = %46, %3, %47
  %50 = phi i32 [ %48, %47 ], [ 1, %46 ], [ 1, %3 ]
  ret i32 %50
}

; Function Attrs: optsize
declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_flush(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  %3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* null) #8
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_lines(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0) #9
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_read(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  %3 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 2) #9
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_seek(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #8
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #8
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !10
  %8 = tail call i32 @fseek(%struct._IO_FILE* %2, i64 %4, i32 %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %14

; <label>:12:                                     ; preds = %1
  %13 = tail call i64 @ftell(%struct._IO_FILE* %2) #9
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %13) #8
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ 1, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_setvbuf(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #8
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #8
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !10
  %8 = tail call i32 @setvbuf(%struct._IO_FILE* %2, i8* null, i32 %7, i64 %4) #8
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %10, i8* null) #8
  ret i32 %11
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_write(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  %3 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 2) #9
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_gc(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  %7 = icmp eq i32 (%struct.lua_State*)* %6, null
  br i1 %7, label %22, label %8

; <label>:8:                                      ; preds = %1
  %9 = bitcast i8* %3 to %struct._IO_FILE**
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !tbaa !8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %22, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %14 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14)
  %15 = getelementptr inbounds i8, i8* %13, i64 8
  %16 = bitcast i8* %15 to i32 (%struct.lua_State*)**
  %17 = bitcast i8* %15 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !6
  store volatile i64 %18, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %16, align 8, !tbaa !6
  %19 = load volatile i64, i64* %2, align 8
  %20 = inttoptr i64 %19 to i32 (%struct.lua_State*)*
  %21 = tail call i32 %20(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14)
  br label %22

; <label>:22:                                     ; preds = %8, %12, %1
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_tostring(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0)) #8
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* %11) #8
  br label %13

; <label>:13:                                     ; preds = %9, %7
  ret i32 1
}

; Function Attrs: optsize
declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @io_noclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  %5 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #8
  ret i32 2
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #7

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 8}
!7 = !{!"luaL_Stream", !3, i64 0, !3, i64 8}
!8 = !{!7, !3, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"luaL_Buffer", !3, i64 0, !14, i64 8, !14, i64 16, !3, i64 24, !4, i64 32}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !3, i64 0, !11, i64 8, !11, i64 12, !4, i64 16}
!17 = !{!16, !11, i64 12}
!18 = !{!19, !3, i64 0}
!19 = !{!"lconv", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !4, i64 84, !4, i64 85, !4, i64 86, !4, i64 87, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !4, i64 0}
!22 = !{!16, !11, i64 8}
!23 = !{!13, !14, i64 8}
!24 = !{!13, !3, i64 0}
!25 = !{!14, !14, i64 0}
