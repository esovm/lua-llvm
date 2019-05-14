; ModuleID = 'liolib.c'
source_filename = "liolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

; Function Attrs: nounwind uwtable
define i32 @luaopen_io(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #8
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 11) #8
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0), i32 0) #8
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #8
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* @flib, i64 0, i64 0), i32 0) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  %3 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !tbaa !2
  %4 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %7 = bitcast i8* %4 to i64*
  store i64 %3, i64* %7, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %6, align 8, !tbaa !6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #8
  %8 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !tbaa !2
  %9 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %11, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %12 = bitcast i8* %9 to i64*
  store i64 %8, i64* %12, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %11, align 8, !tbaa !6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #8
  %13 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !tbaa !2
  %14 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = bitcast i8* %15 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %16, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %17 = bitcast i8* %14 to i64*
  store i64 %13, i64* %17, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %16, align 8, !tbaa !6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #8
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @io_close(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = bitcast i8* %9 to i32 (%struct.lua_State*)**
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %10, align 8, !tbaa !6
  %12 = icmp eq i32 (%struct.lua_State*)* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %7
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %15

; <label>:15:                                     ; preds = %7, %13
  %16 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %17 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = getelementptr inbounds i8, i8* %16, i64 8
  %19 = bitcast i8* %18 to i32 (%struct.lua_State*)**
  %20 = bitcast i8* %18 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !6
  store volatile i64 %21, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %19, align 8, !tbaa !6
  %22 = load volatile i64, i64* %2, align 8
  %23 = inttoptr i64 %22 to i32 (%struct.lua_State*)*
  %24 = tail call i32 %23(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @io_flush(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #8
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  %7 = icmp eq i32 (%struct.lua_State*)* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 4)) #8
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = bitcast i8* %3 to %struct._IO_FILE**
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !8
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %15, i8* null) #8
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @io_input(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
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
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  %10 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to i32 (%struct.lua_State*)**
  %13 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %12, align 8, !tbaa !6
  %14 = icmp eq i32 (%struct.lua_State*)* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %17

; <label>:17:                                     ; preds = %8, %15
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0)
  br label %32

; <label>:18:                                     ; preds = %5
  %19 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #8
  %20 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %22, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %23 = bitcast i8* %20 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %23, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %22, align 8, !tbaa !6
  %24 = tail call %struct._IO_FILE* @fopen64(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %23, align 8, !tbaa !8
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %18
  %27 = tail call i32* @__errno_location() #9
  %28 = load i32, i32* %27, align 4, !tbaa !9
  %29 = tail call i8* @strerror(i32 %28) #8
  %30 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %19, i8* %29) #8
  br label %31

; <label>:31:                                     ; preds = %18, %26
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 1) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 1)
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  tail call void @lua_pushnil(%struct.lua_State* %0) #8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  br label %32

; <label>:32:                                     ; preds = %17, %31
  %33 = phi i32 [ 4, %31 ], [ 1, %17 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
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
  %8 = load i8, i8* %3, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

; <label>:10:                                     ; preds = %1
  %11 = sext i8 %8 to i32
  %12 = getelementptr inbounds i8, i8* %3, i64 1
  %13 = tail call i8* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %11, i64 4) #8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %10
  %16 = load i8, i8* %12, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 43
  %18 = getelementptr inbounds i8, i8* %3, i64 2
  %19 = select i1 %17, i8* %18, i8* %12
  %20 = tail call i64 @strspn(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #7
  %21 = tail call i64 @strlen(i8* nonnull %19) #7
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %15, %1, %10
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #8
  br label %25

; <label>:25:                                     ; preds = %15, %23
  %26 = tail call %struct._IO_FILE* @fopen64(i8* %2, i8* %3)
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

; Function Attrs: nounwind uwtable
define internal i32 @io_output(%struct.lua_State*) #0 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal i32 @io_read(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #8
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  %7 = icmp eq i32 (%struct.lua_State*)* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 4)) #8
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = bitcast i8* %3 to %struct._IO_FILE**
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !8
  %13 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %12, i32 1)
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @io_tmpfile(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %5 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = tail call %struct._IO_FILE* @tmpfile64()
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal i32 @io_write(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #8
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  %7 = icmp eq i32 (%struct.lua_State*)* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 4)) #8
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = bitcast i8* %3 to %struct._IO_FILE**
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !tbaa !8
  %13 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %12, i32 1)
  ret i32 %13
}

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @f_close(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32 (%struct.lua_State*)**
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !6
  %7 = icmp eq i32 (%struct.lua_State*)* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %12 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12)
  %13 = getelementptr inbounds i8, i8* %11, i64 8
  %14 = bitcast i8* %13 to i32 (%struct.lua_State*)**
  %15 = bitcast i8* %13 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !6
  store volatile i64 %16, i64* %2, align 8
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %14, align 8, !tbaa !6
  %17 = load volatile i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to i32 (%struct.lua_State*)*
  %19 = tail call i32 %18(%struct.lua_State* %0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12)
  ret i32 %19
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

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @g_iofile(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #8
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %31, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 16, i32 0) #8
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %12, align 8, !tbaa !6
  tail call void @luaL_setmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %13 = bitcast i8* %10 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %13, align 8, !tbaa !8
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %12, align 8, !tbaa !6
  %14 = tail call %struct._IO_FILE* @fopen64(i8* nonnull %7, i8* %2) #8
  store %struct._IO_FILE* %14, %struct._IO_FILE** %13, align 8, !tbaa !8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %9
  %17 = tail call i32* @__errno_location() #9
  %18 = load i32, i32* %17, align 4, !tbaa !9
  %19 = tail call i8* @strerror(i32 %18) #8
  %20 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %7, i8* %19) #8
  br label %30

; <label>:21:                                     ; preds = %6
  %22 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = bitcast i8* %23 to i32 (%struct.lua_State*)**
  %25 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %24, align 8, !tbaa !6
  %26 = icmp eq i32 (%struct.lua_State*)* %25, null
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %21
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %29

; <label>:29:                                     ; preds = %21, %27
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  br label %30

; <label>:30:                                     ; preds = %16, %9, %29
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #8
  br label %31

; <label>:31:                                     ; preds = %30, %3
  %32 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* %1) #8
  ret void
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @io_fclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !8
  %5 = tail call i32 @fclose(%struct._IO_FILE* %4)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %7, i8* null) #8
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

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %23 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %22, i32 2)
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

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @g_read(%struct.lua_State*, %struct._IO_FILE*, i32) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca %struct.RN, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8
  tail call void @clearerr(%struct._IO_FILE* %1) #8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1)
  %11 = add nsw i32 %2, 1
  br label %331

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

; <label>:24:                                     ; preds = %12, %324
  %25 = phi i32 [ %14, %12 ], [ %327, %324 ]
  %26 = phi i32 [ %2, %12 ], [ %326, %324 ]
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
  br label %324

; <label>:38:                                     ; preds = %29
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %15) #8
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #8
  %39 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 %30) #8
  %40 = call i64 @fread(i8* %39, i64 1, i64 %30, %struct._IO_FILE* %1) #8
  %41 = load i64, i64* %16, align 8, !tbaa !12
  %42 = add i64 %41, %40
  store i64 %42, i64* %16, align 8, !tbaa !12
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #8
  %43 = icmp ne i64 %40, 0
  %44 = zext i1 %43 to i32
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %15) #8
  br label %324

; <label>:45:                                     ; preds = %24
  %46 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %26, i64* null) #8
  %47 = load i8, i8* %46, align 1, !tbaa !11
  %48 = icmp eq i8 %47, 42
  %49 = getelementptr inbounds i8, i8* %46, i64 1
  %50 = select i1 %48, i8* %49, i8* %46
  %51 = load i8, i8* %50, align 1, !tbaa !11
  %52 = sext i8 %51 to i32
  switch i32 %52, label %322 [
    i32 110, label %53
    i32 108, label %310
    i32 76, label %312
    i32 97, label %314
  ]

; <label>:53:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %17) #8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %18, align 8, !tbaa !15
  store i32 0, i32* %19, align 4, !tbaa !17
  %54 = call %struct.lconv* @localeconv() #8
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %54, i64 0, i32 0
  %56 = load i8*, i8** %55, align 8, !tbaa !18
  %57 = load i8, i8* %56, align 1, !tbaa !11
  br label %58

; <label>:58:                                     ; preds = %58, %53
  %59 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  %60 = tail call i16** @__ctype_b_loc() #9
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
  %69 = trunc i32 %59 to i8
  store i32 1, i32* %19, align 4, !tbaa !17
  store i8 %69, i8* %23, align 8, !tbaa !11
  %70 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %70, i32* %22, align 8, !tbaa !22
  br label %71

; <label>:71:                                     ; preds = %68, %67
  %72 = phi i32 [ 1, %68 ], [ 0, %67 ]
  %73 = phi i32 [ %70, %68 ], [ %59, %67 ]
  %74 = icmp eq i32 %73, 48
  br i1 %74, label %75, label %80

; <label>:75:                                     ; preds = %71
  %76 = add nuw nsw i32 %72, 1
  store i32 %76, i32* %19, align 4, !tbaa !17
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %77
  store i8 48, i8* %78, align 1, !tbaa !11
  %79 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %79, i32* %22, align 8, !tbaa !22
  switch i32 %79, label %80 [
    i32 120, label %110
    i32 88, label %110
  ]

; <label>:80:                                     ; preds = %75, %71
  %81 = phi i32 [ %72, %71 ], [ %76, %75 ]
  %82 = phi i32 [ %73, %71 ], [ %79, %75 ]
  %83 = phi i32 [ 0, %71 ], [ 1, %75 ]
  %84 = load i16*, i16** %60, align 8, !tbaa !2
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds i16, i16* %84, i64 %85
  %87 = load i16, i16* %86, align 2, !tbaa !20
  %88 = and i16 %87, 2048
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %154, label %90

; <label>:90:                                     ; preds = %80
  %91 = sext i32 %81 to i64
  br label %92

; <label>:92:                                     ; preds = %97, %90
  %93 = phi i64 [ %99, %97 ], [ %91, %90 ]
  %94 = phi i32 [ %103, %97 ], [ 0, %90 ]
  %95 = phi i32 [ %102, %97 ], [ %82, %90 ]
  %96 = icmp sgt i64 %93, 199
  br i1 %96, label %131, label %97

; <label>:97:                                     ; preds = %92
  %98 = trunc i32 %95 to i8
  %99 = add nsw i64 %93, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %19, align 4, !tbaa !17
  %101 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %93
  store i8 %98, i8* %101, align 1, !tbaa !11
  %102 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %102, i32* %22, align 8, !tbaa !22
  %103 = add nuw nsw i32 %94, 1
  %104 = load i16*, i16** %60, align 8, !tbaa !2
  %105 = sext i32 %102 to i64
  %106 = getelementptr inbounds i16, i16* %104, i64 %105
  %107 = load i16, i16* %106, align 2, !tbaa !20
  %108 = and i16 %107, 2048
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %150, label %92

; <label>:110:                                    ; preds = %75, %75
  %111 = trunc i32 %79 to i8
  %112 = or i32 %72, 2
  store i32 %112, i32* %19, align 4, !tbaa !17
  %113 = zext i32 %76 to i64
  %114 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %113
  store i8 %111, i8* %114, align 1, !tbaa !11
  %115 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %115, i32* %22, align 8, !tbaa !22
  %116 = load i16*, i16** %60, align 8, !tbaa !2
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i16, i16* %116, i64 %117
  %119 = load i16, i16* %118, align 2, !tbaa !20
  %120 = and i16 %119, 4096
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %154, label %122

; <label>:122:                                    ; preds = %110
  %123 = zext i32 %112 to i64
  br label %124

; <label>:124:                                    ; preds = %137, %122
  %125 = phi i64 [ %139, %137 ], [ %123, %122 ]
  %126 = phi i32 [ %143, %137 ], [ 0, %122 ]
  %127 = phi i32 [ %142, %137 ], [ %115, %122 ]
  %128 = icmp ugt i64 %125, 199
  br i1 %128, label %129, label %137

; <label>:129:                                    ; preds = %124
  %130 = trunc i64 %125 to i32
  br label %131

; <label>:131:                                    ; preds = %92, %129
  %132 = phi i32 [ %130, %129 ], [ 200, %92 ]
  %133 = phi i32 [ %127, %129 ], [ %95, %92 ]
  %134 = phi i1 [ false, %129 ], [ true, %92 ]
  %135 = phi i32 [ 0, %129 ], [ %83, %92 ]
  %136 = phi i32 [ %126, %129 ], [ %94, %92 ]
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %154

; <label>:137:                                    ; preds = %124
  %138 = trunc i32 %127 to i8
  %139 = add nuw nsw i64 %125, 1
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %19, align 4, !tbaa !17
  %141 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %125
  store i8 %138, i8* %141, align 1, !tbaa !11
  %142 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %142, i32* %22, align 8, !tbaa !22
  %143 = add nuw nsw i32 %126, 1
  %144 = load i16*, i16** %60, align 8, !tbaa !2
  %145 = sext i32 %142 to i64
  %146 = getelementptr inbounds i16, i16* %144, i64 %145
  %147 = load i16, i16* %146, align 2, !tbaa !20
  %148 = and i16 %147, 4096
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %152, label %124

; <label>:150:                                    ; preds = %97
  %151 = trunc i64 %99 to i32
  br label %154

; <label>:152:                                    ; preds = %137
  %153 = trunc i64 %139 to i32
  br label %154

; <label>:154:                                    ; preds = %152, %150, %131, %110, %80
  %155 = phi i32 [ %132, %131 ], [ %81, %80 ], [ %112, %110 ], [ %151, %150 ], [ %153, %152 ]
  %156 = phi i32 [ %133, %131 ], [ %82, %80 ], [ %115, %110 ], [ %102, %150 ], [ %142, %152 ]
  %157 = phi i1 [ %134, %131 ], [ true, %80 ], [ false, %110 ], [ true, %150 ], [ false, %152 ]
  %158 = phi i32 [ %135, %131 ], [ %83, %80 ], [ 0, %110 ], [ %83, %150 ], [ 0, %152 ]
  %159 = phi i32 [ %136, %131 ], [ 0, %80 ], [ 0, %110 ], [ %103, %150 ], [ %143, %152 ]
  %160 = add nsw i32 %159, %158
  %161 = sext i8 %57 to i32
  %162 = icmp eq i32 %156, %161
  %163 = icmp eq i32 %156, 46
  %164 = or i1 %162, %163
  br i1 %164, label %165, label %236

; <label>:165:                                    ; preds = %154
  %166 = icmp sgt i32 %155, 199
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %165
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %236

; <label>:168:                                    ; preds = %165
  %169 = trunc i32 %156 to i8
  %170 = add nsw i32 %155, 1
  store i32 %170, i32* %19, align 4, !tbaa !17
  %171 = sext i32 %155 to i64
  %172 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %171
  store i8 %169, i8* %172, align 1, !tbaa !11
  %173 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %173, i32* %22, align 8, !tbaa !22
  %174 = load i16*, i16** %60, align 8, !tbaa !2
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i16, i16* %174, i64 %175
  %177 = load i16, i16* %176, align 2, !tbaa !20
  br i1 %157, label %178, label %201

; <label>:178:                                    ; preds = %168
  %179 = and i16 %177, 2048
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %231, label %181

; <label>:181:                                    ; preds = %178
  %182 = add nsw i64 %171, 1
  br label %183

; <label>:183:                                    ; preds = %188, %181
  %184 = phi i64 [ %190, %188 ], [ %182, %181 ]
  %185 = phi i32 [ %194, %188 ], [ 0, %181 ]
  %186 = phi i32 [ %193, %188 ], [ %173, %181 ]
  %187 = icmp sgt i64 %184, 199
  br i1 %187, label %211, label %188

; <label>:188:                                    ; preds = %183
  %189 = trunc i32 %186 to i8
  %190 = add i64 %184, 1
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %19, align 4, !tbaa !17
  %192 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %184
  store i8 %189, i8* %192, align 1, !tbaa !11
  %193 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %193, i32* %22, align 8, !tbaa !22
  %194 = add nuw nsw i32 %185, 1
  %195 = load i16*, i16** %60, align 8, !tbaa !2
  %196 = sext i32 %193 to i64
  %197 = getelementptr inbounds i16, i16* %195, i64 %196
  %198 = load i16, i16* %197, align 2, !tbaa !20
  %199 = and i16 %198, 2048
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %227, label %183

; <label>:201:                                    ; preds = %168
  %202 = and i16 %177, 4096
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %231, label %204

; <label>:204:                                    ; preds = %201
  %205 = add nsw i64 %171, 1
  br label %206

; <label>:206:                                    ; preds = %214, %204
  %207 = phi i64 [ %216, %214 ], [ %205, %204 ]
  %208 = phi i32 [ %220, %214 ], [ 0, %204 ]
  %209 = phi i32 [ %219, %214 ], [ %173, %204 ]
  %210 = icmp sgt i64 %207, 199
  br i1 %210, label %211, label %214

; <label>:211:                                    ; preds = %206, %183
  %212 = phi i32 [ %186, %183 ], [ %209, %206 ]
  %213 = phi i32 [ %185, %183 ], [ %208, %206 ]
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %231

; <label>:214:                                    ; preds = %206
  %215 = trunc i32 %209 to i8
  %216 = add i64 %207, 1
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %19, align 4, !tbaa !17
  %218 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %207
  store i8 %215, i8* %218, align 1, !tbaa !11
  %219 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %219, i32* %22, align 8, !tbaa !22
  %220 = add nuw nsw i32 %208, 1
  %221 = load i16*, i16** %60, align 8, !tbaa !2
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds i16, i16* %221, i64 %222
  %224 = load i16, i16* %223, align 2, !tbaa !20
  %225 = and i16 %224, 4096
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %229, label %206

; <label>:227:                                    ; preds = %188
  %228 = trunc i64 %190 to i32
  br label %231

; <label>:229:                                    ; preds = %214
  %230 = trunc i64 %216 to i32
  br label %231

; <label>:231:                                    ; preds = %229, %227, %211, %201, %178
  %232 = phi i32 [ 200, %211 ], [ %170, %178 ], [ %170, %201 ], [ %228, %227 ], [ %230, %229 ]
  %233 = phi i32 [ %212, %211 ], [ %173, %178 ], [ %173, %201 ], [ %193, %227 ], [ %219, %229 ]
  %234 = phi i32 [ %213, %211 ], [ 0, %178 ], [ 0, %201 ], [ %194, %227 ], [ %220, %229 ]
  %235 = add nsw i32 %234, %160
  br label %236

; <label>:236:                                    ; preds = %231, %167, %154
  %237 = phi i32 [ %232, %231 ], [ %155, %167 ], [ %155, %154 ]
  %238 = phi i32 [ %233, %231 ], [ %156, %167 ], [ %156, %154 ]
  %239 = phi i32 [ %235, %231 ], [ %160, %167 ], [ %160, %154 ]
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %299

; <label>:241:                                    ; preds = %236
  %242 = select i1 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)
  %243 = load i8, i8* %242, align 1, !tbaa !11
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %238, %244
  br i1 %245, label %251, label %246

; <label>:246:                                    ; preds = %241
  %247 = getelementptr inbounds i8, i8* %242, i64 1
  %248 = load i8, i8* %247, align 1, !tbaa !11
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %238, %249
  br i1 %250, label %251, label %299

; <label>:251:                                    ; preds = %246, %241
  %252 = icmp sgt i32 %237, 199
  br i1 %252, label %253, label %254

; <label>:253:                                    ; preds = %251
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %299

; <label>:254:                                    ; preds = %251
  %255 = trunc i32 %238 to i8
  %256 = add nsw i32 %237, 1
  store i32 %256, i32* %19, align 4, !tbaa !17
  %257 = sext i32 %237 to i64
  %258 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %257
  store i8 %255, i8* %258, align 1, !tbaa !11
  %259 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %259, i32* %22, align 8, !tbaa !22
  switch i32 %259, label %269 [
    i32 45, label %260
    i32 43, label %260
  ]

; <label>:260:                                    ; preds = %254, %254
  %261 = icmp sgt i32 %237, 198
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %260
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %269

; <label>:263:                                    ; preds = %260
  %264 = trunc i32 %259 to i8
  %265 = add nsw i32 %237, 2
  store i32 %265, i32* %19, align 4, !tbaa !17
  %266 = sext i32 %256 to i64
  %267 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %266
  store i8 %264, i8* %267, align 1, !tbaa !11
  %268 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %268, i32* %22, align 8, !tbaa !22
  br label %269

; <label>:269:                                    ; preds = %263, %262, %254
  %270 = phi i32 [ %256, %254 ], [ %256, %262 ], [ %265, %263 ]
  %271 = phi i32 [ %259, %254 ], [ %259, %262 ], [ %268, %263 ]
  %272 = load i16*, i16** %60, align 8, !tbaa !2
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i16, i16* %272, i64 %273
  %275 = load i16, i16* %274, align 2, !tbaa !20
  %276 = and i16 %275, 2048
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %299, label %278

; <label>:278:                                    ; preds = %269
  %279 = sext i32 %270 to i64
  br label %280

; <label>:280:                                    ; preds = %284, %278
  %281 = phi i64 [ %286, %284 ], [ %279, %278 ]
  %282 = phi i32 [ %289, %284 ], [ %271, %278 ]
  %283 = icmp sgt i64 %281, 199
  br i1 %283, label %296, label %284

; <label>:284:                                    ; preds = %280
  %285 = trunc i32 %282 to i8
  %286 = add nsw i64 %281, 1
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %19, align 4, !tbaa !17
  %288 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %281
  store i8 %285, i8* %288, align 1, !tbaa !11
  %289 = call i32 @_IO_getc(%struct._IO_FILE* %1) #8
  store i32 %289, i32* %22, align 8, !tbaa !22
  %290 = load i16*, i16** %60, align 8, !tbaa !2
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i16, i16* %290, i64 %291
  %293 = load i16, i16* %292, align 2, !tbaa !20
  %294 = and i16 %293, 2048
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %297, label %280

; <label>:296:                                    ; preds = %280
  store i8 0, i8* %23, align 8, !tbaa !11
  br label %299

; <label>:297:                                    ; preds = %284
  %298 = trunc i64 %286 to i32
  br label %299

; <label>:299:                                    ; preds = %297, %296, %269, %253, %246, %236
  %300 = phi i32 [ %270, %269 ], [ %237, %253 ], [ %237, %246 ], [ 200, %296 ], [ %237, %236 ], [ %298, %297 ]
  %301 = phi i32 [ %271, %269 ], [ %238, %253 ], [ %238, %246 ], [ %282, %296 ], [ %238, %236 ], [ %289, %297 ]
  %302 = call i32 @ungetc(i32 %301, %struct._IO_FILE* %1) #8
  %303 = sext i32 %300 to i64
  %304 = getelementptr inbounds %struct.RN, %struct.RN* %5, i64 0, i32 3, i64 %303
  store i8 0, i8* %304, align 1, !tbaa !11
  %305 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %23) #8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %299
  call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %308

; <label>:308:                                    ; preds = %299, %307
  %309 = phi i32 [ 0, %307 ], [ 1, %299 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %17) #8
  br label %324

; <label>:310:                                    ; preds = %45
  %311 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 1)
  br label %324

; <label>:312:                                    ; preds = %45
  %313 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct._IO_FILE* %1, i32 0)
  br label %324

; <label>:314:                                    ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %20) #8
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #8
  br label %315

; <label>:315:                                    ; preds = %315, %314
  %316 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %4, i64 1024) #8
  %317 = call i64 @fread(i8* %316, i64 1, i64 1024, %struct._IO_FILE* %1) #8
  %318 = load i64, i64* %21, align 8, !tbaa !12
  %319 = add i64 %318, %317
  store i64 %319, i64* %21, align 8, !tbaa !12
  %320 = icmp eq i64 %317, 1024
  br i1 %320, label %315, label %321

; <label>:321:                                    ; preds = %315
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %20) #8
  br label %324

; <label>:322:                                    ; preds = %45
  %323 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #8
  br label %343

; <label>:324:                                    ; preds = %308, %310, %312, %321, %32, %38
  %325 = phi i32 [ %37, %32 ], [ %44, %38 ], [ %309, %308 ], [ %311, %310 ], [ %313, %312 ], [ 1, %321 ]
  %326 = add nsw i32 %26, 1
  %327 = add nsw i32 %25, -1
  %328 = icmp ne i32 %25, 0
  %329 = icmp ne i32 %325, 0
  %330 = and i1 %328, %329
  br i1 %330, label %24, label %331

; <label>:331:                                    ; preds = %324, %9
  %332 = phi i32 [ %11, %9 ], [ %326, %324 ]
  %333 = phi i32 [ %10, %9 ], [ %325, %324 ]
  %334 = call i32 @ferror(%struct._IO_FILE* %1) #8
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336

; <label>:336:                                    ; preds = %331
  %337 = call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %343

; <label>:338:                                    ; preds = %331
  %339 = icmp eq i32 %333, 0
  br i1 %339, label %340, label %341

; <label>:340:                                    ; preds = %338
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8
  call void @lua_pushnil(%struct.lua_State* %0) #8
  br label %341

; <label>:341:                                    ; preds = %338, %340
  %342 = sub nsw i32 %332, %2
  br label %343

; <label>:343:                                    ; preds = %322, %341, %336
  %344 = phi i32 [ %337, %336 ], [ %342, %341 ], [ %323, %322 ]
  ret i32 %344
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_line(%struct.lua_State*, %struct._IO_FILE* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #8
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
  store i8 10, i8* %45, align 1, !tbaa !11
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #8
  ret i32 %52
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

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

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @io_pclose(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = tail call i32 @luaL_execresult(%struct.lua_State* %0, i32 -1) #8
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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i64 %21)
  br label %26

; <label>:23:                                     ; preds = %17
  %24 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %12, i32* null) #8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), double %24)
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = icmp ne i32 %13, 0
  %29 = icmp sgt i32 %27, 0
  %30 = and i1 %28, %29
  br label %41

; <label>:31:                                     ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8
  %32 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %12, i64* nonnull %4) #8
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8
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

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @f_flush(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  %12 = tail call i32 @fflush(%struct._IO_FILE* %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %14, i8* null) #8
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @f_lines(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  tail call fastcc void @aux_lines(%struct.lua_State* %0, i32 0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f_read(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  %12 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %11, i32 2)
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @f_seek(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  %12 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #8
  %13 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = tail call i32 @fseek(%struct._IO_FILE* %11, i64 %13, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %9
  %20 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 0, i8* null) #8
  br label %23

; <label>:21:                                     ; preds = %9
  %22 = tail call i64 @ftell(%struct._IO_FILE* %11)
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %22) #8
  br label %23

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ 1, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @f_setvbuf(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  %12 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #8
  %13 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = tail call i32 @setvbuf(%struct._IO_FILE* %11, i8* null, i32 %16, i64 %13) #8
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = tail call i32 @luaL_fileresult(%struct.lua_State* %0, i32 %19, i8* null) #8
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @f_write(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #8
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32 (%struct.lua_State*)**
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !6
  %6 = icmp eq i32 (%struct.lua_State*)* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %9

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !tbaa !8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #8
  %12 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %11, i32 2)
  ret i32 %12
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !4, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"luaL_Buffer", !3, i64 0, !14, i64 8, !14, i64 16, !3, i64 24, !4, i64 32}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !3, i64 0, !10, i64 8, !10, i64 12, !4, i64 16}
!17 = !{!16, !10, i64 12}
!18 = !{!19, !3, i64 0}
!19 = !{!"lconv", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !4, i64 84, !4, i64 85, !4, i64 86, !4, i64 87, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !4, i64 0}
!22 = !{!16, !10, i64 8}
!23 = !{!13, !14, i64 8}
!24 = !{!13, !3, i64 0}
!25 = !{!14, !14, i64 0}
