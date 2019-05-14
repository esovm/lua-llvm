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
  %3 = tail call %struct.lua_State* @luaL_newstate() #6
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %1, align 8, !tbaa !2
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %6) #7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %12 = tail call i32 @fflush(%struct._IO_FILE* %11) #6
  br label %13

; <label>:13:                                     ; preds = %5, %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %17 = tail call i32 @fflush(%struct._IO_FILE* %16) #6
  br label %43

; <label>:18:                                     ; preds = %2
  tail call void @lua_pushcclosure(%struct.lua_State* nonnull %3, i32 (%struct.lua_State*)* nonnull @pmain, i32 0) #6
  %19 = sext i32 %0 to i64
  tail call void @lua_pushinteger(%struct.lua_State* nonnull %3, i64 %19) #6
  %20 = bitcast i8** %1 to i8*
  tail call void @lua_pushlightuserdata(%struct.lua_State* nonnull %3, i8* %20) #6
  %21 = tail call i32 @lua_pcallk(%struct.lua_State* nonnull %3, i32 2, i32 1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %22 = tail call i32 @lua_toboolean(%struct.lua_State* nonnull %3, i32 -1) #6
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %38, label %24

; <label>:24:                                     ; preds = %18
  %25 = tail call i8* @lua_tolstring(%struct.lua_State* nonnull %3, i32 -1, i64* null) #6
  %26 = load i8*, i8** @progname, align 8, !tbaa !2
  %27 = icmp eq i8* %26, null
  br i1 %27, label %33, label %28

; <label>:28:                                     ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %26) #7
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %32 = tail call i32 @fflush(%struct._IO_FILE* %31) #6
  br label %33

; <label>:33:                                     ; preds = %24, %28
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %25) #7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %37 = tail call i32 @fflush(%struct._IO_FILE* %36) #6
  tail call void @lua_settop(%struct.lua_State* nonnull %3, i32 -2) #6
  br label %38

; <label>:38:                                     ; preds = %18, %33
  tail call void @lua_close(%struct.lua_State* nonnull %3) #6
  %39 = icmp eq i32 %22, 0
  %40 = icmp ne i32 %21, 0
  %41 = or i1 %40, %39
  %42 = zext i1 %41 to i32
  br label %43

; <label>:43:                                     ; preds = %38, %13
  %44 = phi i32 [ 1, %13 ], [ %42, %38 ]
  ret i32 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare %struct.lua_State* @luaL_newstate() local_unnamed_addr #2

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @pmain(%struct.lua_State*) #0 {
  %2 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #6
  %3 = trunc i64 %2 to i32
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 2) #6
  %5 = bitcast i8* %4 to i8**
  %6 = getelementptr inbounds i8, i8* %4, i64 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !2
  %9 = icmp eq i8* %8, null
  br i1 %9, label %68, label %10

; <label>:10:                                     ; preds = %1
  br label %11

; <label>:11:                                     ; preds = %10, %59
  %12 = phi i32 [ %62, %59 ], [ 1, %10 ]
  %13 = phi i8* [ %65, %59 ], [ %8, %10 ]
  %14 = phi i32 [ %60, %59 ], [ 0, %10 ]
  %15 = load i8, i8* %13, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 45
  br i1 %16, label %17, label %68

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds i8, i8* %13, i64 1
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %20 = sext i8 %19 to i32
  switch i32 %20, label %67 [
    i32 45, label %21
    i32 0, label %68
    i32 69, label %28
    i32 105, label %34
    i32 118, label %36
    i32 101, label %43
    i32 108, label %45
  ]

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds i8, i8* %13, i64 2
  %23 = load i8, i8* %22, align 1, !tbaa !6
  %24 = icmp eq i8 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %12, %25
  %27 = select i1 %24, i32 %14, i32 1
  br label %68

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds i8, i8* %13, i64 2
  %30 = load i8, i8* %29, align 1, !tbaa !6
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %68

; <label>:32:                                     ; preds = %28
  %33 = or i32 %14, 16
  br label %59

; <label>:34:                                     ; preds = %17
  %35 = or i32 %14, 2
  br label %36

; <label>:36:                                     ; preds = %34, %17
  %37 = phi i32 [ %14, %17 ], [ %35, %34 ]
  %38 = getelementptr inbounds i8, i8* %13, i64 2
  %39 = load i8, i8* %38, align 1, !tbaa !6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %68

; <label>:41:                                     ; preds = %36
  %42 = or i32 %37, 4
  br label %59

; <label>:43:                                     ; preds = %17
  %44 = or i32 %14, 8
  br label %45

; <label>:45:                                     ; preds = %43, %17
  %46 = phi i32 [ %14, %17 ], [ %44, %43 ]
  %47 = getelementptr inbounds i8, i8* %13, i64 2
  %48 = load i8, i8* %47, align 1, !tbaa !6
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %59

; <label>:50:                                     ; preds = %45
  %51 = add nsw i32 %12, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %5, i64 %52
  %54 = load i8*, i8** %53, align 8, !tbaa !2
  %55 = icmp eq i8* %54, null
  br i1 %55, label %68, label %56

; <label>:56:                                     ; preds = %50
  %57 = load i8, i8* %54, align 1, !tbaa !6
  %58 = icmp eq i8 %57, 45
  br i1 %58, label %68, label %59

; <label>:59:                                     ; preds = %56, %45, %41, %32
  %60 = phi i32 [ %46, %56 ], [ %46, %45 ], [ %42, %41 ], [ %33, %32 ]
  %61 = phi i32 [ %51, %56 ], [ %12, %45 ], [ %12, %41 ], [ %12, %32 ]
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %5, i64 %63
  %65 = load i8*, i8** %64, align 8, !tbaa !2
  %66 = icmp eq i8* %65, null
  br i1 %66, label %68, label %11

; <label>:67:                                     ; preds = %17
  br label %68

; <label>:68:                                     ; preds = %11, %17, %28, %36, %50, %56, %59, %67, %21, %1
  %69 = phi i32 [ 1, %1 ], [ %26, %21 ], [ %12, %67 ], [ %12, %50 ], [ %12, %56 ], [ %62, %59 ], [ %12, %36 ], [ %12, %28 ], [ %12, %17 ], [ %12, %11 ]
  %70 = phi i32 [ 0, %1 ], [ %27, %21 ], [ 1, %67 ], [ 1, %50 ], [ 1, %56 ], [ %60, %59 ], [ 1, %36 ], [ 1, %28 ], [ %14, %17 ], [ %14, %11 ]
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #6
  %71 = load i8*, i8** %5, align 8, !tbaa !2
  %72 = icmp eq i8* %71, null
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %68
  %74 = load i8, i8* %71, align 1, !tbaa !6
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

; <label>:76:                                     ; preds = %73
  store i8* %71, i8** @progname, align 8, !tbaa !2
  br label %77

; <label>:77:                                     ; preds = %73, %68, %76
  %78 = icmp eq i32 %70, 1
  br i1 %78, label %79, label %106

; <label>:79:                                     ; preds = %77
  %80 = sext i32 %69 to i64
  %81 = getelementptr inbounds i8*, i8** %5, i64 %80
  %82 = load i8*, i8** %81, align 8, !tbaa !2
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %84 = load i8*, i8** @progname, align 8, !tbaa !2
  %85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %84) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %87 = tail call i32 @fflush(%struct._IO_FILE* %86) #6
  %88 = getelementptr inbounds i8, i8* %82, i64 1
  %89 = load i8, i8* %88, align 1, !tbaa !6
  switch i8 %89, label %95 [
    i8 101, label %90
    i8 108, label %90
  ]

; <label>:90:                                     ; preds = %79, %79
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %82) #7
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %94 = tail call i32 @fflush(%struct._IO_FILE* %93) #6
  br label %100

; <label>:95:                                     ; preds = %79
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %97 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %82) #7
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %99 = tail call i32 @fflush(%struct._IO_FILE* %98) #6
  br label %100

; <label>:100:                                    ; preds = %90, %95
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %102 = load i8*, i8** @progname, align 8, !tbaa !2
  %103 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.7, i64 0, i64 0), i8* %102) #7
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %105 = tail call i32 @fflush(%struct._IO_FILE* %104) #6
  br label %331

; <label>:106:                                    ; preds = %77
  %107 = and i32 %70, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

; <label>:109:                                    ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %111 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %110) #6
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %113 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %112) #6
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %115 = tail call i32 @fflush(%struct._IO_FILE* %114) #6
  br label %116

; <label>:116:                                    ; preds = %106, %109
  %117 = and i32 %70, 16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

; <label>:119:                                    ; preds = %116
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #6
  tail call void @luaL_openlibs(%struct.lua_State* %0) #6
  %120 = icmp eq i32 %69, %3
  %121 = select i1 %120, i32 0, i32 %69
  %122 = add nsw i32 %121, 1
  %123 = sub nsw i32 %3, %122
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %123, i32 %122) #6
  %124 = icmp sgt i32 %3, 0
  br i1 %124, label %125, label %137

; <label>:125:                                    ; preds = %119
  %126 = and i64 %2, 4294967295
  br label %127

; <label>:127:                                    ; preds = %127, %125
  %128 = phi i64 [ 0, %125 ], [ %135, %127 ]
  %129 = getelementptr inbounds i8*, i8** %5, i64 %128
  %130 = load i8*, i8** %129, align 8, !tbaa !2
  %131 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %130) #6
  %132 = trunc i64 %128 to i32
  %133 = sub nsw i32 %132, %121
  %134 = sext i32 %133 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %134) #6
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, %126
  br i1 %136, label %137, label %127

; <label>:137:                                    ; preds = %127, %119
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %138 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #6
  br label %196

; <label>:139:                                    ; preds = %116
  tail call void @luaL_openlibs(%struct.lua_State* %0) #6
  %140 = icmp eq i32 %69, %3
  %141 = select i1 %140, i32 0, i32 %69
  %142 = add nsw i32 %141, 1
  %143 = sub nsw i32 %3, %142
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %143, i32 %142) #6
  %144 = icmp sgt i32 %3, 0
  br i1 %144, label %145, label %157

; <label>:145:                                    ; preds = %139
  %146 = and i64 %2, 4294967295
  br label %147

; <label>:147:                                    ; preds = %147, %145
  %148 = phi i64 [ 0, %145 ], [ %155, %147 ]
  %149 = getelementptr inbounds i8*, i8** %5, i64 %148
  %150 = load i8*, i8** %149, align 8, !tbaa !2
  %151 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %150) #6
  %152 = trunc i64 %148 to i32
  %153 = sub nsw i32 %152, %141
  %154 = sext i32 %153 to i64
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %154) #6
  %155 = add nuw nsw i64 %148, 1
  %156 = icmp eq i64 %155, %146
  br i1 %156, label %157, label %147

; <label>:157:                                    ; preds = %147, %139
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %158 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #6
  %159 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 1)) #6
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %164

; <label>:161:                                    ; preds = %157
  %162 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 1)) #6
  %163 = icmp eq i8* %162, null
  br i1 %163, label %196, label %164

; <label>:164:                                    ; preds = %161, %157
  %165 = phi i8* [ %162, %161 ], [ %159, %157 ]
  %166 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %161 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %157 ]
  %167 = load i8, i8* %165, align 1, !tbaa !6
  %168 = icmp eq i8 %167, 64
  br i1 %168, label %169, label %193

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds i8, i8* %165, i64 1
  %171 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %170, i8* null) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

; <label>:173:                                    ; preds = %169
  %174 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %174, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %175 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %176 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 %174, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %177 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %174, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %173, %169
  %180 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %181 = load i8*, i8** @progname, align 8, !tbaa !2
  %182 = icmp eq i8* %181, null
  br i1 %182, label %188, label %183

; <label>:183:                                    ; preds = %179
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %185 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %181) #7
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %187 = tail call i32 @fflush(%struct._IO_FILE* %186) #6
  br label %188

; <label>:188:                                    ; preds = %179, %183
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %190 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %180) #7
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %192 = tail call i32 @fflush(%struct._IO_FILE* %191) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %331

; <label>:193:                                    ; preds = %164
  %194 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* nonnull %165, i8* %166) #6
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %331

; <label>:196:                                    ; preds = %173, %161, %137, %193
  %197 = icmp sgt i32 %69, 1
  br i1 %197, label %198, label %250

; <label>:198:                                    ; preds = %196
  br label %199

; <label>:199:                                    ; preds = %198, %246
  %200 = phi i32 [ %248, %246 ], [ 1, %198 ]
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %5, i64 %201
  %203 = load i8*, i8** %202, align 8, !tbaa !2
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8, i8* %204, align 1, !tbaa !6
  %206 = icmp eq i8 %205, 101
  switch i8 %205, label %246 [
    i8 108, label %207
    i8 101, label %207
  ]

; <label>:207:                                    ; preds = %199, %199
  %208 = getelementptr inbounds i8, i8* %203, i64 2
  %209 = load i8, i8* %208, align 1, !tbaa !6
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %216

; <label>:211:                                    ; preds = %207
  %212 = add nsw i32 %200, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %5, i64 %213
  %215 = load i8*, i8** %214, align 8, !tbaa !2
  br label %216

; <label>:216:                                    ; preds = %211, %207
  %217 = phi i32 [ %212, %211 ], [ %200, %207 ]
  %218 = phi i8* [ %215, %211 ], [ %208, %207 ]
  br i1 %206, label %243, label %219

; <label>:219:                                    ; preds = %216
  %220 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #6
  %221 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %218) #6
  %222 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %223 = add nsw i32 %222, -1
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %223, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %224 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %225 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 1, i32 1, i32 %223, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %226 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %223, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %228, label %229

; <label>:228:                                    ; preds = %219
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %218) #6
  br label %246

; <label>:229:                                    ; preds = %219
  %230 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %231 = load i8*, i8** @progname, align 8, !tbaa !2
  %232 = icmp eq i8* %231, null
  br i1 %232, label %238, label %233

; <label>:233:                                    ; preds = %229
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %235 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %231) #7
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %237 = tail call i32 @fflush(%struct._IO_FILE* %236) #6
  br label %238

; <label>:238:                                    ; preds = %233, %229
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %240 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %230) #7
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %242 = tail call i32 @fflush(%struct._IO_FILE* %241) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %331

; <label>:243:                                    ; preds = %216
  %244 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* %218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #6
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %331

; <label>:246:                                    ; preds = %243, %228, %199
  %247 = phi i32 [ %217, %243 ], [ %200, %199 ], [ %217, %228 ]
  %248 = add nsw i32 %247, 1
  %249 = icmp slt i32 %248, %69
  br i1 %249, label %199, label %250

; <label>:250:                                    ; preds = %246, %196
  %251 = icmp slt i32 %69, %3
  br i1 %251, label %252, label %314

; <label>:252:                                    ; preds = %250
  %253 = sext i32 %69 to i64
  %254 = getelementptr inbounds i8*, i8** %5, i64 %253
  %255 = load i8*, i8** %254, align 8, !tbaa !2
  %256 = tail call i32 @strcmp(i8* %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %264

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds i8*, i8** %254, i64 -1
  %260 = load i8*, i8** %259, align 8, !tbaa !2
  %261 = tail call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #8
  %262 = icmp eq i32 %261, 0
  %263 = select i1 %262, i8* %255, i8* null
  br label %264

; <label>:264:                                    ; preds = %258, %252
  %265 = phi i8* [ %255, %252 ], [ %263, %258 ]
  %266 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %265, i8* null) #6
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %300

; <label>:268:                                    ; preds = %264
  %269 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %270 = icmp eq i32 %269, 5
  br i1 %270, label %273, label %271

; <label>:271:                                    ; preds = %268
  %272 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #6
  br label %273

; <label>:273:                                    ; preds = %271, %268
  %274 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 -1) #6
  %275 = trunc i64 %274 to i32
  %276 = add nsw i32 %275, 3
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %276, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #6
  %277 = icmp slt i32 %275, 1
  br i1 %277, label %292, label %278

; <label>:278:                                    ; preds = %273
  %279 = add i64 %274, 1
  %280 = and i64 %279, 4294967295
  br label %281

; <label>:281:                                    ; preds = %281, %278
  %282 = phi i64 [ %286, %281 ], [ 1, %278 ]
  %283 = phi i32 [ %288, %281 ], [ -1, %278 ]
  %284 = phi i32 [ %287, %281 ], [ 1, %278 ]
  %285 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %283, i64 %282) #6
  %286 = add nuw nsw i64 %282, 1
  %287 = add nuw nsw i32 %284, 1
  %288 = xor i32 %284, -1
  %289 = icmp eq i64 %286, %280
  br i1 %289, label %290, label %281

; <label>:290:                                    ; preds = %281
  %291 = xor i32 %275, -1
  br label %292

; <label>:292:                                    ; preds = %290, %273
  %293 = phi i32 [ -1, %273 ], [ %291, %290 ]
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %293, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %294 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %295 = sub nsw i32 %294, %275
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %295, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %296 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %297 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %275, i32 -1, i32 %295, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %298 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %295, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %299 = icmp eq i32 %297, 0
  br i1 %299, label %314, label %300

; <label>:300:                                    ; preds = %292, %264
  %301 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %302 = load i8*, i8** @progname, align 8, !tbaa !2
  %303 = icmp eq i8* %302, null
  br i1 %303, label %309, label %304

; <label>:304:                                    ; preds = %300
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %306 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %302) #7
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %308 = tail call i32 @fflush(%struct._IO_FILE* %307) #6
  br label %309

; <label>:309:                                    ; preds = %300, %304
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %311 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %301) #7
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %313 = tail call i32 @fflush(%struct._IO_FILE* %312) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %331

; <label>:314:                                    ; preds = %292, %250
  %315 = and i32 %70, 2
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

; <label>:317:                                    ; preds = %314
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %330

; <label>:318:                                    ; preds = %314
  %319 = icmp eq i32 %69, %3
  %320 = and i32 %70, 12
  %321 = icmp eq i32 %320, 0
  %322 = and i1 %319, %321
  br i1 %322, label %323, label %330

; <label>:323:                                    ; preds = %318
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %324) #6
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %327 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %326) #6
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %329 = tail call i32 @fflush(%struct._IO_FILE* %328) #6
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %330

; <label>:330:                                    ; preds = %318, %323, %317
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  br label %331

; <label>:331:                                    ; preds = %243, %238, %309, %188, %193, %330, %100
  %332 = phi i32 [ 0, %100 ], [ 1, %330 ], [ 0, %193 ], [ 0, %309 ], [ 0, %188 ], [ 0, %238 ], [ 0, %243 ]
  ret i32 %332
}

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @lua_close(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #2

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #2

declare i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @doREPL(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  store i8* null, i8** @progname, align 8, !tbaa !2
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  %5 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %90, label %7

; <label>:7:                                      ; preds = %1
  %8 = bitcast i64* %3 to i8*
  %9 = bitcast i64* %2 to i8*
  br label %10

; <label>:10:                                     ; preds = %7, %87
  %11 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %12 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %11) #6
  %13 = call i64 @strlen(i8* %12) #8
  %14 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %12, i64 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %10
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %45

; <label>:17:                                     ; preds = %10
  call void @lua_settop(%struct.lua_State* %0, i32 -3) #6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %18 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #6
  %19 = load i64, i64* %3, align 8, !tbaa !7
  %20 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %18, i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #6
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %43

; <label>:22:                                     ; preds = %17
  br label %23

; <label>:23:                                     ; preds = %22, %36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %2) #6
  %25 = load i64, i64* %2, align 8, !tbaa !7
  %26 = icmp ugt i64 %25, 4
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds i8, i8* %24, i64 %25
  %29 = getelementptr inbounds i8, i8* %28, i64 -5
  %30 = call i32 @strcmp(i8* nonnull %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %27, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  br label %42

; <label>:33:                                     ; preds = %27
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  %34 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 0) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %33
  %37 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  call void @lua_concat(%struct.lua_State* %0, i32 3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %38 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #6
  %39 = load i64, i64* %3, align 8, !tbaa !7
  %40 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %38, i64 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #6
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %23, label %43

; <label>:42:                                     ; preds = %33, %32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %73

; <label>:43:                                     ; preds = %36, %17
  %44 = phi i32 [ %20, %17 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  switch i32 %44, label %73 [
    i32 -1, label %90
    i32 0, label %45
  ]

; <label>:45:                                     ; preds = %43, %16
  %46 = call i32 @lua_gettop(%struct.lua_State* %0) #6
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 %46, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %47 = call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %48 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 -1, i32 %46, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %49 = call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 %46, i32 -1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %73

; <label>:51:                                     ; preds = %45
  %52 = call i32 @lua_gettop(%struct.lua_State* %0) #6
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %87

; <label>:54:                                     ; preds = %51
  call void @luaL_checkstack(%struct.lua_State* %0, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #6
  %55 = call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #6
  %56 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 %52, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %87, label %58

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** @progname, align 8, !tbaa !2
  %60 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %61 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* %60) #6
  %62 = icmp eq i8* %59, null
  br i1 %62, label %68, label %63

; <label>:63:                                     ; preds = %58
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %59) #7
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %67 = call i32 @fflush(%struct._IO_FILE* %66) #6
  br label %68

; <label>:68:                                     ; preds = %63, %58
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %61) #7
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %72 = call i32 @fflush(%struct._IO_FILE* %71) #6
  br label %87

; <label>:73:                                     ; preds = %42, %43, %45
  %74 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %75 = load i8*, i8** @progname, align 8, !tbaa !2
  %76 = icmp eq i8* %75, null
  br i1 %76, label %82, label %77

; <label>:77:                                     ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %75) #7
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %81 = call i32 @fflush(%struct._IO_FILE* %80) #6
  br label %82

; <label>:82:                                     ; preds = %77, %73
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %74) #7
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %86 = call i32 @fflush(%struct._IO_FILE* %85) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %87

; <label>:87:                                     ; preds = %68, %54, %51, %82
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  %88 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %10

; <label>:90:                                     ; preds = %43, %87, %1
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %92 = call i32 @fputc(i32 10, %struct._IO_FILE* %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %94 = call i32 @fflush(%struct._IO_FILE* %93)
  store i64 %4, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dostring(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i64 @strlen(i8* %1) #8
  %5 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %4, i8* %2, i8* null) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %8, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %9 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %10 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 %8, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %11 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %8, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %28, label %13

; <label>:13:                                     ; preds = %7, %3
  %14 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %15 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %16 = load i8*, i8** @progname, align 8, !tbaa !2
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

; <label>:18:                                     ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %16) #7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %22 = tail call i32 @fflush(%struct._IO_FILE* %21) #6
  br label %23

; <label>:23:                                     ; preds = %13, %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %15) #7
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %27 = tail call i32 @fflush(%struct._IO_FILE* %26) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %28

; <label>:28:                                     ; preds = %7, %23
  %29 = phi i32 [ 0, %7 ], [ %14, %23 ]
  ret i32 %29
}

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #2

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @msghandler(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %4, %7
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %12 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %11) #6
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %12) #6
  br label %14

; <label>:14:                                     ; preds = %10, %1
  %15 = phi i8* [ %13, %10 ], [ %2, %1 ]
  tail call void @luaL_traceback(%struct.lua_State* %0, %struct.lua_State* %0, i8* %15, i32 1) #6
  br label %16

; <label>:16:                                     ; preds = %7, %14
  ret i32 1
}

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void (i32)* @__sysv_signal(i32, void (i32)*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @laction(i32) #0 {
  %2 = tail call void (i32)* @__sysv_signal(i32 %0, void (i32)* null) #6
  %3 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8, !tbaa !2
  tail call void @lua_sethook(%struct.lua_State* %3, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @lstop, i32 11, i32 1) #6
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
  tail call void @lua_sethook(%struct.lua_State* %0, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #6
  %3 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #6
  ret void
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

declare i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #2

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pushline(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %4) #6
  %5 = icmp ne i32 %1, 0
  %6 = select i1 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)
  %7 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* %6) #6
  %8 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %9 = icmp eq i8* %8, null
  %10 = select i1 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %11 = select i1 %9, i8* %10, i8* %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %13 = tail call i32 @fputs(i8* %11, %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %15 = tail call i32 @fflush(%struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %17 = call i8* @fgets(i8* nonnull %4, i32 512, %struct._IO_FILE* %16)
  %18 = icmp eq i8* %17, null
  br i1 %18, label %38, label %19

; <label>:19:                                     ; preds = %2
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %20 = call i64 @strlen(i8* nonnull %4) #8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %19
  %23 = add i64 %20, -1
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !6
  %26 = icmp eq i8 %25, 10
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %22
  store i8 0, i8* %24, align 1, !tbaa !6
  br label %28

; <label>:28:                                     ; preds = %19, %27, %22
  %29 = phi i64 [ %23, %27 ], [ %20, %22 ], [ 0, %19 ]
  %30 = load i8, i8* %4, align 16
  %31 = icmp eq i8 %30, 61
  %32 = and i1 %5, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %35 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %34) #6
  br label %38

; <label>:36:                                     ; preds = %28
  %37 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %4, i64 %29) #6
  br label %38

; <label>:38:                                     ; preds = %33, %36, %2
  %39 = phi i32 [ 0, %2 ], [ 1, %36 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %4) #6
  ret i32 %39
}

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !4, i64 0}
