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
@.str.26 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
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

; Function Attrs: nounwind uwtable
define i32 @luaopen_io(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #9
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 11) #9
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0), i32 0) #9
  tail call fastcc void @createmeta(%struct.lua_State* %0)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  tail call fastcc void @createstdfile(%struct.lua_State* %0, %struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  tail call fastcc void @createstdfile(%struct.lua_State* %0, %struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  tail call fastcc void @createstdfile(%struct.lua_State* %0, %struct._IO_FILE* %4, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @createmeta(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #9
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* @flib, i64 0, i64 0), i32 0) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createstdfile(%struct.lua_State*, %struct._IO_FILE*, i8*, i8*) unnamed_addr #0 {
  %5 = tail call fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State* %0)
  %6 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %5, i64 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %5, i64 0, i32 1
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %7, align 8, !tbaa !8
  %8 = icmp eq i8* %2, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* nonnull %2) #9
  br label %10

; <label>:10:                                     ; preds = %4, %9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @io_close(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #9
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %6

; <label>:6:                                      ; preds = %4, %1
  %7 = tail call i32 @f_close(%struct.lua_State* %0)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @io_flush(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %3 = tail call i32 @fflush(%struct._IO_FILE* %2)
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* null) #9
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @io_input(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_lines(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #9
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %5

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #9
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  %10 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0)
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  tail call fastcc void @opencheck(%struct.lua_State* %0, i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 1)
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %13

; <label>:13:                                     ; preds = %8, %11
  %14 = phi i32 [ 4, %11 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @io_open(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #9
  %4 = tail call fastcc %struct.luaL_Stream* @newfile(%struct.lua_State* %0)
  %5 = tail call fastcc i32 @l_checkmode(i8* %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #9
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = tail call %struct._IO_FILE* @fopen64(i8* %2, i8* %3)
  %11 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %4, i64 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %11, align 8, !tbaa !6
  %12 = icmp eq %struct._IO_FILE* %10, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* %2) #9
  br label %15

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @io_output(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_popen(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #9
  %4 = tail call fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State* %0)
  %5 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #9
  %6 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %4, i64 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %4, i64 0, i32 1
  store i32 (%struct.lua_State*)* @io_pclose, i32 (%struct.lua_State*)** %7, align 8, !tbaa !8
  %8 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* %2) #9
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @io_read(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %3 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @io_tmpfile(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct.luaL_Stream* @newfile(%struct.lua_State* %0)
  %3 = tail call %struct._IO_FILE* @tmpfile64()
  %4 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %2, i64 0, i32 0
  store %struct._IO_FILE* %3, %struct._IO_FILE** %4, align 8, !tbaa !6
  %5 = icmp eq %struct._IO_FILE* %3, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #9
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @io_type(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #9
  %2 = tail call i8* @luaL_testudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i32 (%struct.lua_State*)**
  %8 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8, !tbaa !8
  %9 = icmp eq i32 (%struct.lua_State*)* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #9
  br label %14

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #9
  br label %14

; <label>:14:                                     ; preds = %10, %12, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_write(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @getiofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %3 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 1)
  ret i32 %3
}

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @f_close(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %3 = tail call fastcc i32 @aux_close(%struct.lua_State* %0)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._IO_FILE* @tofile(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !8
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #9
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !6
  ret %struct._IO_FILE* %11
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @aux_close(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4)
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  %7 = bitcast i8* %5 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !8
  store volatile i64 %8, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !8
  %9 = load volatile i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i32 (%struct.lua_State*)*
  %11 = tail call i32 %10(%struct.lua_State* %0) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4)
  ret i32 %11
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._IO_FILE* @getiofile(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #9
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8, !tbaa !8
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 4
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %10) #9
  br label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = bitcast i8* %4 to %struct._IO_FILE**
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !tbaa !6
  ret %struct._IO_FILE* %14
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @g_iofile(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #9
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #9
  %8 = icmp eq i8* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  tail call fastcc void @opencheck(%struct.lua_State* %0, i8* nonnull %7, i8* %2)
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %12

; <label>:12:                                     ; preds = %10, %9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  br label %13

; <label>:13:                                     ; preds = %12, %3
  %14 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #9
  ret void
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @opencheck(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call fastcc %struct.luaL_Stream* @newfile(%struct.lua_State* %0)
  %5 = tail call %struct._IO_FILE* @fopen64(i8* %1, i8* %2)
  %6 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %4, i64 0, i32 0
  store %struct._IO_FILE* %5, %struct._IO_FILE** %6, align 8, !tbaa !6
  %7 = icmp eq %struct._IO_FILE* %5, null
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno_location() #10
  %10 = load i32, i32* %9, align 4, !tbaa !9
  %11 = tail call i8* @strerror(i32 %10) #9
  %12 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %1, i8* %11) #9
  br label %13

; <label>:13:                                     ; preds = %8, %3
  ret void
}

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.luaL_Stream* @newfile(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State* %0)
  %3 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %2, i64 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.luaL_Stream, %struct.luaL_Stream* %2, i64 0, i32 1
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %4, align 8, !tbaa !8
  ret %struct.luaL_Stream* %2
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct.luaL_Stream* @newprefile(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #9
  %3 = bitcast i8* %2 to %struct.luaL_Stream*
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %5, align 8, !tbaa !8
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  ret %struct.luaL_Stream* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @io_fclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !6
  %5 = tail call i32 @fclose(%struct._IO_FILE* %4)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %7, i8* null) #9
  ret i32 %8
}

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

declare void @luaL_setmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @aux_lines(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %3, 252
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #9
  br label %8

; <label>:8:                                      ; preds = %6, %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  %9 = sext i32 %4 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #9
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %1) #9
  tail call void @lua_rotate(%struct.lua_State* %0, i32 2, i32 3) #9
  %10 = add nsw i32 %3, 2
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 %10) #9
  ret void
}

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @io_readline(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #9
  %3 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 -1001002, i32* null) #9
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8, !tbaa !8
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #9
  br label %37

; <label>:11:                                     ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #9
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #9
  %12 = icmp slt i32 %4, 1
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %11
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i32 [ %17, %14 ], [ 1, %13 ]
  %16 = sub nuw i32 -1001003, %15
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %16) #9
  %17 = add nuw nsw i32 %15, 1
  %18 = icmp eq i32 %15, %4
  br i1 %18, label %19, label %14

; <label>:19:                                     ; preds = %14, %11
  %20 = bitcast i8* %2 to %struct._IO_FILE**
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !tbaa !6
  %22 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %21, i32 2)
  %23 = sub nsw i32 0, %22
  %24 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %19
  %27 = icmp sgt i32 %22, 1
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %26
  %29 = sub i32 1, %22
  %30 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %29, i64* null) #9
  %31 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %30) #9
  br label %37

; <label>:32:                                     ; preds = %26
  %33 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1001003) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %32
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1001001) #9
  %36 = tail call fastcc i32 @aux_close(%struct.lua_State* %0)
  br label %37

; <label>:37:                                     ; preds = %35, %32, %19, %28, %9
  %38 = phi i32 [ %10, %9 ], [ %31, %28 ], [ %22, %19 ], [ 0, %32 ], [ 0, %35 ]
  ret i32 %38
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @g_read(%struct.lua_State*, %struct._IO_FILE*, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  tail call void @clearerr(%struct._IO_FILE* %1) #9
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1)
  %8 = add nsw i32 %2, 1
  br label %48

; <label>:9:                                      ; preds = %3
  %10 = add nsw i32 %4, 19
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #9
  %11 = add nsw i32 %4, -2
  br label %12

; <label>:12:                                     ; preds = %9, %41
  %13 = phi i32 [ %11, %9 ], [ %44, %41 ]
  %14 = phi i32 [ %2, %9 ], [ %43, %41 ]
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %14) #9
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %12
  %18 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %14) #9
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i32 @test_eof(%struct.lua_State* %0, %struct._IO_FILE* %1)
  br label %41

; <label>:22:                                     ; preds = %17
  %23 = tail call fastcc i32 @read_chars(%struct.lua_State* %0, %struct._IO_FILE* %1, i64 %18)
  br label %41

; <label>:24:                                     ; preds = %12
  %25 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* null) #9
  %26 = load i8, i8* %25, align 1, !tbaa !11
  %27 = icmp eq i8 %26, 42
  %28 = getelementptr inbounds i8, i8* %25, i64 1
  %29 = select i1 %27, i8* %28, i8* %25
  %30 = load i8, i8* %29, align 1, !tbaa !11
  %31 = sext i8 %30 to i32
  switch i32 %31, label %39 [
    i32 110, label %32
    i32 108, label %34
    i32 76, label %36
    i32 97, label %38
  ]

; <label>:32:                                     ; preds = %24
  %33 = tail call fastcc i32 @read_number(%struct.lua_State* %0, %struct._IO_FILE* %1)
  br label %41

; <label>:34:                                     ; preds = %24
  %35 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1)
  br label %41

; <label>:36:                                     ; preds = %24
  %37 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 0)
  br label %41

; <label>:38:                                     ; preds = %24
  tail call fastcc void @read_all(%struct.lua_State* %0, %struct._IO_FILE* %1)
  br label %41

; <label>:39:                                     ; preds = %24
  %40 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %60

; <label>:41:                                     ; preds = %32, %34, %36, %38, %20, %22
  %42 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %33, %32 ], [ %35, %34 ], [ %37, %36 ], [ 1, %38 ]
  %43 = add nsw i32 %14, 1
  %44 = add nsw i32 %13, -1
  %45 = icmp ne i32 %13, 0
  %46 = icmp ne i32 %42, 0
  %47 = and i1 %45, %46
  br i1 %47, label %12, label %48

; <label>:48:                                     ; preds = %41, %6
  %49 = phi i32 [ %8, %6 ], [ %43, %41 ]
  %50 = phi i32 [ %7, %6 ], [ %42, %41 ]
  %51 = tail call i32 @ferror(%struct._IO_FILE* %1) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

; <label>:53:                                     ; preds = %48
  %54 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #9
  br label %60

; <label>:55:                                     ; preds = %48
  %56 = icmp eq i32 %50, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %55
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %58

; <label>:58:                                     ; preds = %55, %57
  %59 = sub nsw i32 %49, %2
  br label %60

; <label>:60:                                     ; preds = %39, %58, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %58 ], [ %40, %39 ]
  ret i32 %61
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_line(%struct.lua_State*, %struct._IO_FILE* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #9
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 2
  br label %7

; <label>:7:                                      ; preds = %23, %3
  %8 = phi i32 [ 0, %3 ], [ %14, %23 ]
  switch i32 %8, label %9 [
    i32 -1, label %28
    i32 10, label %28
  ]

; <label>:9:                                      ; preds = %7
  %10 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1024) #9
  br label %11

; <label>:11:                                     ; preds = %9, %15
  %12 = phi i64 [ 0, %9 ], [ %17, %15 ]
  %13 = phi i32 [ 0, %9 ], [ %18, %15 ]
  %14 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  switch i32 %14, label %15 [
    i32 -1, label %21
    i32 10, label %21
  ]

; <label>:15:                                     ; preds = %11
  %16 = trunc i32 %14 to i8
  %17 = add nuw nsw i64 %12, 1
  %18 = add nuw nsw i32 %13, 1
  %19 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 %16, i8* %19, align 1, !tbaa !11
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
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 2
  %34 = load i64, i64* %33, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 1
  %36 = load i64, i64* %35, align 8, !tbaa !15
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %32
  %39 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1) #9
  br label %40

; <label>:40:                                     ; preds = %38, %32
  %41 = trunc i32 %8 to i8
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  %44 = load i64, i64* %33, align 8, !tbaa !12
  %45 = add i64 %44, 1
  store i64 %45, i64* %33, align 8, !tbaa !12
  %46 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %41, i8* %46, align 1, !tbaa !11
  br label %47

; <label>:47:                                     ; preds = %28, %40
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #9
  br i1 %30, label %52, label %48

; <label>:48:                                     ; preds = %47
  %49 = call i64 @lua_rawlen(%struct.lua_State* %0, i32 -1) #9
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

; <label>:52:                                     ; preds = %48, %47
  %53 = phi i32 [ 1, %47 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #9
  ret i32 %53
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @test_eof(%struct.lua_State*, %struct._IO_FILE* nocapture) unnamed_addr #0 {
  %3 = tail call i32 @_IO_getc(%struct._IO_FILE* %1)
  %4 = tail call i32 @ungetc(i32 %3, %struct._IO_FILE* %1)
  %5 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)) #9
  %6 = icmp ne i32 %3, -1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_chars(%struct.lua_State*, %struct._IO_FILE* nocapture, i64) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #9
  %6 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 %2) #9
  %7 = call i64 @fread(i8* %6, i64 1, i64 %2, %struct._IO_FILE* %1)
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 2
  %9 = load i64, i64* %8, align 8, !tbaa !12
  %10 = add i64 %9, %7
  store i64 %10, i64* %8, align 8, !tbaa !12
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #9
  %11 = icmp ne i64 %7, 0
  %12 = zext i1 %11 to i32
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #9
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_number(%struct.lua_State*, %struct._IO_FILE*) unnamed_addr #0 {
  %3 = alloca %struct.RN, align 8
  %4 = alloca [2 x i8], align 1
  %5 = bitcast %struct.RN* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %5) #9
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 2
  store i32 0, i32* %8, align 4, !tbaa !19
  %9 = tail call %struct.lconv* @localeconv() #9
  %10 = getelementptr inbounds %struct.lconv, %struct.lconv* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !20
  %12 = load i8, i8* %11, align 1, !tbaa !11
  store i8 %12, i8* %6, align 1, !tbaa !11
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 46, i8* %13, align 1, !tbaa !11
  br label %14

; <label>:14:                                     ; preds = %14, %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !tbaa !17
  %16 = tail call i32 @_IO_getc(%struct._IO_FILE* %15)
  %17 = tail call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %17, align 8, !tbaa !2
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i16, i16* %18, i64 %19
  %21 = load i16, i16* %20, align 2, !tbaa !22
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %14

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 1
  store i32 %16, i32* %25, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 1
  %27 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %28 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %24
  %31 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = xor i1 %32, true
  %35 = zext i1 %34 to i32
  br label %36

; <label>:36:                                     ; preds = %30, %24
  %37 = phi i32 [ 0, %24 ], [ %33, %30 ]
  %38 = phi i32 [ 0, %24 ], [ %35, %30 ]
  %39 = call fastcc i32 @readdigits(%struct.RN* nonnull %3, i32 %38)
  %40 = add nsw i32 %39, %37
  %41 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* nonnull %6)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %36
  %44 = call fastcc i32 @readdigits(%struct.RN* nonnull %3, i32 %38)
  %45 = add nsw i32 %44, %40
  br label %46

; <label>:46:                                     ; preds = %36, %43
  %47 = phi i32 [ %45, %43 ], [ %40, %36 ]
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %57

; <label>:49:                                     ; preds = %46
  %50 = icmp eq i32 %38, 0
  %51 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)
  %52 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %49
  %55 = call fastcc i32 @test2(%struct.RN* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %56 = call fastcc i32 @readdigits(%struct.RN* nonnull %3, i32 0)
  br label %57

; <label>:57:                                     ; preds = %49, %54, %46
  %58 = load i32, i32* %26, align 8, !tbaa !24
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !tbaa !17
  %60 = tail call i32 @ungetc(i32 %58, %struct._IO_FILE* %59)
  %61 = load i32, i32* %8, align 4, !tbaa !19
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 3, i64 %62
  store i8 0, i8* %63, align 1, !tbaa !11
  %64 = getelementptr inbounds %struct.RN, %struct.RN* %3, i64 0, i32 3, i64 0
  %65 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %64) #9
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %57
  call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %68

; <label>:68:                                     ; preds = %57, %67
  %69 = phi i32 [ 0, %67 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %5) #9
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_all(%struct.lua_State*, %struct._IO_FILE* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #9
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 2
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %3, i64 1024) #9
  %8 = call i64 @fread(i8* %7, i64 1, i64 1024, %struct._IO_FILE* %1)
  %9 = load i64, i64* %5, align 8, !tbaa !12
  %10 = add i64 %9, %8
  store i64 %10, i64* %5, align 8, !tbaa !12
  %11 = icmp eq i64 %8, 1024
  br i1 %11, label %6, label %12

; <label>:12:                                     ; preds = %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

declare i64 @lua_rawlen(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @test2(%struct.RN* nocapture, i8* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !24
  %5 = load i8, i8* %1, align 1, !tbaa !11
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %1, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !11
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %4, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %8, %2
  %14 = tail call fastcc i32 @nextc(%struct.RN* nonnull %0)
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @readdigits(%struct.RN* nocapture, i32) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = tail call i16** @__ctype_b_loc() #10
  %5 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 1
  br label %6

; <label>:6:                                      ; preds = %23, %2
  %7 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %8 = load i16*, i16** %4, align 8, !tbaa !2
  %9 = load i32, i32* %5, align 8, !tbaa !24
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %8, i64 %10
  %12 = load i16, i16* %11, align 2, !tbaa !22
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
  %21 = tail call fastcc i32 @nextc(%struct.RN* nonnull %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = add nuw nsw i32 %7, 1
  br label %6

; <label>:25:                                     ; preds = %20, %14, %17
  ret i32 %7
}

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nextc(%struct.RN* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !19
  %4 = icmp sgt i32 %3, 199
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 3, i64 0
  store i8 0, i8* %6, align 8, !tbaa !11
  br label %17

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !24
  %10 = trunc i32 %9 to i8
  %11 = add nsw i32 %3, 1
  store i32 %11, i32* %2, align 4, !tbaa !19
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 3, i64 %12
  store i8 %10, i8* %13, align 1, !tbaa !11
  %14 = getelementptr inbounds %struct.RN, %struct.RN* %0, i64 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !tbaa !17
  %16 = tail call i32 @_IO_getc(%struct._IO_FILE* %15)
  store i32 %16, i32* %8, align 8, !tbaa !24
  br label %17

; <label>:17:                                     ; preds = %7, %5
  %18 = phi i32 [ 0, %5 ], [ 1, %7 ]
  ret i32 %18
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @l_checkmode(i8* nocapture readonly) unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1, !tbaa !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

; <label>:4:                                      ; preds = %1
  %5 = sext i8 %2 to i32
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = tail call i8* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %5, i64 4)
  %8 = icmp eq i8* %7, null
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %4
  %10 = load i8, i8* %6, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 43
  %12 = getelementptr inbounds i8, i8* %0, i64 2
  %13 = select i1 %11, i8* %12, i8* %6
  %14 = tail call i64 @strspn(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #8
  %15 = tail call i64 @strlen(i8* nonnull %13) #8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  br label %18

; <label>:18:                                     ; preds = %4, %1, %9
  %19 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %17, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal i32 @io_pclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = tail call i32 @luaL_execresult(%struct.lua_State* %0, i32 -1) #9
  ret i32 %3
}

declare i32 @luaL_execresult(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @tmpfile64() local_unnamed_addr #3

declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_testudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @g_write(%struct.lua_State*, %struct._IO_FILE* nocapture, i32) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
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
  %15 = call i32 @lua_type(%struct.lua_State* %0, i32 %12) #9
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = call i32 @lua_isinteger(%struct.lua_State* %0, i32 %12) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %17
  %21 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %12, i32* null) #9
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i64 %21)
  br label %26

; <label>:23:                                     ; preds = %17
  %24 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %12, i32* null) #9
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), double %24)
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = icmp ne i32 %13, 0
  %29 = icmp sgt i32 %27, 0
  %30 = and i1 %28, %29
  br label %41

; <label>:31:                                     ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  %32 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %12, i64* nonnull %4) #9
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %39, label %34

; <label>:34:                                     ; preds = %31
  %35 = load i64, i64* %4, align 8, !tbaa !25
  %36 = call i64 @fwrite(i8* %32, i64 1, i64 %35, %struct._IO_FILE* %1)
  %37 = load i64, i64* %4, align 8, !tbaa !25
  %38 = icmp eq i64 %36, %37
  br label %39

; <label>:39:                                     ; preds = %31, %34
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
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
  %48 = call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %43, i8* null) #9
  br label %49

; <label>:49:                                     ; preds = %46, %3, %47
  %50 = phi i32 [ %48, %47 ], [ 1, %46 ], [ 1, %3 ]
  ret i32 %50
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @f_flush(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %3 = tail call i32 @fflush(%struct._IO_FILE* %2)
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %5, i8* null) #9
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @f_lines(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f_read(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %3 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 2)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @f_seek(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #9
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #9
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !9
  %8 = tail call i32 @fseek(%struct._IO_FILE* %2, i64 %4, i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #9
  br label %14

; <label>:12:                                     ; preds = %1
  %13 = tail call i64 @ftell(%struct._IO_FILE* %2)
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %13) #9
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ 1, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @f_setvbuf(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %3 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #9
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #9
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !9
  %8 = tail call i32 @setvbuf(%struct._IO_FILE* %2, i8* null, i32 %7, i64 %4) #9
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %10, i8* null) #9
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @f_write(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  %3 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %2, i32 2)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @f_gc(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !8
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %13, label %7

; <label>:7:                                      ; preds = %1
  %8 = bitcast i8* %2 to %struct._IO_FILE**
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !tbaa !6
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call fastcc i32 @aux_close(%struct.lua_State* %0)
  br label %13

; <label>:13:                                     ; preds = %7, %11, %1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @f_tostring(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !8
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0)) #9
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !6
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* %11) #9
  br label %13

; <label>:13:                                     ; preds = %9, %7
  ret i32 1
}

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #3

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @io_noclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %4, align 8, !tbaa !8
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  %5 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #9
  ret i32 2
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"luaL_Stream", !3, i64 0, !3, i64 8}
!8 = !{!7, !3, i64 8}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !4, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"luaL_Buffer", !3, i64 0, !14, i64 8, !14, i64 16, !3, i64 24, !4, i64 32}
!14 = !{!"long", !4, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!13, !3, i64 0}
!17 = !{!18, !3, i64 0}
!18 = !{!"", !3, i64 0, !10, i64 8, !10, i64 12, !4, i64 16}
!19 = !{!18, !10, i64 12}
!20 = !{!21, !3, i64 0}
!21 = !{!"lconv", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !4, i64 84, !4, i64 85, !4, i64 86, !4, i64 87, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !4, i64 0}
!24 = !{!18, !10, i64 8}
!25 = !{!14, !14, i64 0}
