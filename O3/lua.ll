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
  br label %28

; <label>:18:                                     ; preds = %2
  tail call void @lua_pushcclosure(%struct.lua_State* nonnull %3, i32 (%struct.lua_State*)* nonnull @pmain, i32 0) #6
  %19 = sext i32 %0 to i64
  tail call void @lua_pushinteger(%struct.lua_State* nonnull %3, i64 %19) #6
  %20 = bitcast i8** %1 to i8*
  tail call void @lua_pushlightuserdata(%struct.lua_State* nonnull %3, i8* %20) #6
  %21 = tail call i32 @lua_pcallk(%struct.lua_State* nonnull %3, i32 2, i32 1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %22 = tail call i32 @lua_toboolean(%struct.lua_State* nonnull %3, i32 -1) #6
  %23 = tail call fastcc i32 @report(%struct.lua_State* nonnull %3, i32 %21)
  tail call void @lua_close(%struct.lua_State* nonnull %3) #6
  %24 = icmp eq i32 %22, 0
  %25 = icmp ne i32 %21, 0
  %26 = or i1 %25, %24
  %27 = zext i1 %26 to i32
  br label %28

; <label>:28:                                     ; preds = %18, %13
  %29 = phi i32 [ 1, %13 ], [ %27, %18 ]
  ret i32 %29
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
  br label %311

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
  br label %191

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
  br i1 %163, label %191, label %164

; <label>:164:                                    ; preds = %161, %157
  %165 = phi i8* [ %162, %161 ], [ %159, %157 ]
  %166 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %161 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %157 ]
  %167 = load i8, i8* %165, align 1, !tbaa !6
  %168 = icmp eq i8 %167, 64
  br i1 %168, label %169, label %178

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds i8, i8* %165, i64 1
  %171 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %170, i8* null) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %187

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
  br label %187

; <label>:178:                                    ; preds = %164
  %179 = tail call i64 @strlen(i8* nonnull %165) #8
  %180 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* nonnull %165, i64 %179, i8* %166, i8* null) #6
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

; <label>:182:                                    ; preds = %178
  %183 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %183, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %184 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %185 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 %183, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %186 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %183, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %187

; <label>:187:                                    ; preds = %178, %182, %169, %173
  %188 = phi i32 [ %176, %173 ], [ %171, %169 ], [ %185, %182 ], [ %180, %178 ]
  %189 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %188) #6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %311

; <label>:191:                                    ; preds = %161, %137, %187
  %192 = icmp sgt i32 %69, 1
  br i1 %192, label %193, label %241

; <label>:193:                                    ; preds = %191
  br label %194

; <label>:194:                                    ; preds = %193, %237
  %195 = phi i32 [ %239, %237 ], [ 1, %193 ]
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %5, i64 %196
  %198 = load i8*, i8** %197, align 8, !tbaa !2
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8, i8* %199, align 1, !tbaa !6
  %201 = icmp eq i8 %200, 101
  switch i8 %200, label %237 [
    i8 108, label %202
    i8 101, label %202
  ]

; <label>:202:                                    ; preds = %194, %194
  %203 = getelementptr inbounds i8, i8* %198, i64 2
  %204 = load i8, i8* %203, align 1, !tbaa !6
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %211

; <label>:206:                                    ; preds = %202
  %207 = add nsw i32 %195, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %5, i64 %208
  %210 = load i8*, i8** %209, align 8, !tbaa !2
  br label %211

; <label>:211:                                    ; preds = %206, %202
  %212 = phi i32 [ %207, %206 ], [ %195, %202 ]
  %213 = phi i8* [ %210, %206 ], [ %203, %202 ]
  br i1 %201, label %214, label %223

; <label>:214:                                    ; preds = %211
  %215 = tail call i64 @strlen(i8* %213) #8
  %216 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %213, i64 %215, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #6
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %233

; <label>:218:                                    ; preds = %214
  %219 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %219, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %220 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %221 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 0, i32 0, i32 %219, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %222 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %219, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %233

; <label>:223:                                    ; preds = %211
  %224 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #6
  %225 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %213) #6
  %226 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %227 = add nsw i32 %226, -1
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %227, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %228 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %229 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 1, i32 1, i32 %227, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %230 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %227, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %232, label %233

; <label>:232:                                    ; preds = %223
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %213) #6
  br label %237

; <label>:233:                                    ; preds = %223, %214, %218
  %234 = phi i32 [ %221, %218 ], [ %216, %214 ], [ %229, %223 ]
  %235 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %234) #6
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %311

; <label>:237:                                    ; preds = %233, %232, %194
  %238 = phi i32 [ %212, %233 ], [ %195, %194 ], [ %212, %232 ]
  %239 = add nsw i32 %238, 1
  %240 = icmp slt i32 %239, %69
  br i1 %240, label %194, label %241

; <label>:241:                                    ; preds = %237, %191
  %242 = icmp slt i32 %69, %3
  br i1 %242, label %243, label %294

; <label>:243:                                    ; preds = %241
  %244 = sext i32 %69 to i64
  %245 = getelementptr inbounds i8*, i8** %5, i64 %244
  %246 = load i8*, i8** %245, align 8, !tbaa !2
  %247 = tail call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %255

; <label>:249:                                    ; preds = %243
  %250 = getelementptr inbounds i8*, i8** %245, i64 -1
  %251 = load i8*, i8** %250, align 8, !tbaa !2
  %252 = tail call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #8
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %253, i8* %246, i8* null
  br label %255

; <label>:255:                                    ; preds = %249, %243
  %256 = phi i8* [ %246, %243 ], [ %254, %249 ]
  %257 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %256, i8* null) #6
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %290

; <label>:259:                                    ; preds = %255
  %260 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %261 = icmp eq i32 %260, 5
  br i1 %261, label %264, label %262

; <label>:262:                                    ; preds = %259
  %263 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #6
  br label %264

; <label>:264:                                    ; preds = %262, %259
  %265 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 -1) #6
  %266 = trunc i64 %265 to i32
  %267 = add nsw i32 %266, 3
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #6
  %268 = icmp slt i32 %266, 1
  br i1 %268, label %283, label %269

; <label>:269:                                    ; preds = %264
  %270 = add i64 %265, 1
  %271 = and i64 %270, 4294967295
  br label %272

; <label>:272:                                    ; preds = %272, %269
  %273 = phi i64 [ %277, %272 ], [ 1, %269 ]
  %274 = phi i32 [ %279, %272 ], [ -1, %269 ]
  %275 = phi i32 [ %278, %272 ], [ 1, %269 ]
  %276 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %274, i64 %273) #6
  %277 = add nuw nsw i64 %273, 1
  %278 = add nuw nsw i32 %275, 1
  %279 = xor i32 %275, -1
  %280 = icmp eq i64 %277, %271
  br i1 %280, label %281, label %272

; <label>:281:                                    ; preds = %272
  %282 = xor i32 %266, -1
  br label %283

; <label>:283:                                    ; preds = %281, %264
  %284 = phi i32 [ -1, %264 ], [ %282, %281 ]
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %284, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %285 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %286 = sub nsw i32 %285, %266
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @msghandler, i32 0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %286, i32 1) #6
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8, !tbaa !2
  %287 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* nonnull @laction) #6
  %288 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %266, i32 -1, i32 %286, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %289 = tail call void (i32)* @__sysv_signal(i32 2, void (i32)* null) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %286, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %290

; <label>:290:                                    ; preds = %255, %283
  %291 = phi i32 [ %288, %283 ], [ %257, %255 ]
  %292 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %291) #6
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %311

; <label>:294:                                    ; preds = %290, %241
  %295 = and i32 %70, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %298, label %297

; <label>:297:                                    ; preds = %294
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %310

; <label>:298:                                    ; preds = %294
  %299 = icmp eq i32 %69, %3
  %300 = and i32 %70, 12
  %301 = icmp eq i32 %300, 0
  %302 = and i1 %299, %301
  br i1 %302, label %303, label %310

; <label>:303:                                    ; preds = %298
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %305 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %304) #6
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %307 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %306) #6
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %309 = tail call i32 @fflush(%struct._IO_FILE* %308) #6
  tail call fastcc void @doREPL(%struct.lua_State* %0)
  br label %310

; <label>:310:                                    ; preds = %298, %303, %297
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  br label %311

; <label>:311:                                    ; preds = %233, %290, %187, %310, %100
  %312 = phi i32 [ 0, %100 ], [ 1, %310 ], [ 0, %187 ], [ 0, %290 ], [ 0, %233 ]
  ret i32 %312
}

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @report(%struct.lua_State*, i32 returned) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %18, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %6 = load i8*, i8** @progname, align 8, !tbaa !2
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %6) #7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %12 = tail call i32 @fflush(%struct._IO_FILE* %11) #6
  br label %13

; <label>:13:                                     ; preds = %4, %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %5) #7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %17 = tail call i32 @fflush(%struct._IO_FILE* %16) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %18

; <label>:18:                                     ; preds = %2, %13
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
  br i1 %6, label %79, label %7

; <label>:7:                                      ; preds = %1
  %8 = bitcast i64* %3 to i8*
  %9 = bitcast i64* %2 to i8*
  br label %10

; <label>:10:                                     ; preds = %7, %76
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
    i32 -1, label %79
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
  br i1 %53, label %54, label %76

; <label>:54:                                     ; preds = %51
  call void @luaL_checkstack(%struct.lua_State* %0, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #6
  %55 = call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #6
  %56 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 %52, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

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
  br label %76

; <label>:73:                                     ; preds = %42, %43, %45
  %74 = phi i32 [ %48, %45 ], [ 3, %42 ], [ %44, %43 ]
  %75 = call fastcc i32 @report(%struct.lua_State* %0, i32 %74)
  br label %76

; <label>:76:                                     ; preds = %68, %54, %51, %73
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  %77 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %10

; <label>:79:                                     ; preds = %43, %76, %1
  call void @lua_settop(%struct.lua_State* %0, i32 0) #6
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %81 = call i32 @fputc(i32 10, %struct._IO_FILE* %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %83 = call i32 @fflush(%struct._IO_FILE* %82)
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
