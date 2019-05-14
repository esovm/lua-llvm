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

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32, i8**) local_unnamed_addr #0 {
  %3 = tail call %struct.lua_State* @luaL_newstate() #7
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %1, align 8, !tbaa !2
  tail call fastcc void @l_message(i8* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #8
  br label %17

; <label>:7:                                      ; preds = %2
  tail call void @lua_pushcclosure(%struct.lua_State* nonnull %3, i32 (%struct.lua_State*)* nonnull @pmain, i32 0) #7
  %8 = sext i32 %0 to i64
  tail call void @lua_pushinteger(%struct.lua_State* nonnull %3, i64 %8) #7
  %9 = bitcast i8** %1 to i8*
  tail call void @lua_pushlightuserdata(%struct.lua_State* nonnull %3, i8* %9) #7
  %10 = tail call i32 @lua_pcallk(%struct.lua_State* nonnull %3, i32 2, i32 1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %11 = tail call i32 @lua_toboolean(%struct.lua_State* nonnull %3, i32 -1) #7
  %12 = tail call fastcc i32 @report(%struct.lua_State* nonnull %3, i32 %10) #8
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

; Function Attrs: optsize
declare %struct.lua_State* @luaL_newstate() local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @l_message(i8*, i8*) unnamed_addr #0 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %0) #9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %8 = tail call i32 @fflush(%struct._IO_FILE* %7) #8
  br label %9

; <label>:9:                                      ; preds = %2, %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %1) #9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12) #8
  ret void
}

; Function Attrs: optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @pmain(%struct.lua_State*) #0 {
  %2 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #7
  %3 = trunc i64 %2 to i32
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 2) #7
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
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
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
  %85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %84) #10
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %87 = tail call i32 @fflush(%struct._IO_FILE* %86) #7
  %88 = getelementptr inbounds i8, i8* %82, i64 1
  %89 = load i8, i8* %88, align 1, !tbaa !6
  switch i8 %89, label %95 [
    i8 101, label %90
    i8 108, label %90
  ]

; <label>:90:                                     ; preds = %79, %79
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %82) #10
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %94 = tail call i32 @fflush(%struct._IO_FILE* %93) #7
  br label %100

; <label>:95:                                     ; preds = %79
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %97 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %82) #10
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %99 = tail call i32 @fflush(%struct._IO_FILE* %98) #7
  br label %100

; <label>:100:                                    ; preds = %90, %95
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %102 = load i8*, i8** @progname, align 8, !tbaa !2
  %103 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.7, i64 0, i64 0), i8* %102) #10
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %105 = tail call i32 @fflush(%struct._IO_FILE* %104) #7
  br label %236

; <label>:106:                                    ; preds = %77
  %107 = and i32 %70, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %106
  tail call fastcc void @print_version() #8
  br label %110

; <label>:110:                                    ; preds = %106, %109
  %111 = and i32 %70, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

; <label>:113:                                    ; preds = %110
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** nonnull %5, i32 %3, i32 %69) #8
  %114 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  br label %136

; <label>:115:                                    ; preds = %110
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** nonnull %5, i32 %3, i32 %69) #8
  %116 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  %117 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 1)) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %115
  %120 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 1)) #7
  %121 = icmp eq i8* %120, null
  br i1 %121, label %136, label %122

; <label>:122:                                    ; preds = %119, %115
  %123 = phi i8* [ %120, %119 ], [ %117, %115 ]
  %124 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %119 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %115 ]
  %125 = load i8, i8* %123, align 1, !tbaa !6
  %126 = icmp eq i8 %125, 64
  br i1 %126, label %127, label %131

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds i8, i8* %123, i64 1
  %129 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %128, i8* null) #7
  %130 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %129) #7
  br label %133

; <label>:131:                                    ; preds = %122
  %132 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* nonnull %123, i8* %124) #7
  br label %133

; <label>:133:                                    ; preds = %127, %131
  %134 = phi i32 [ %130, %127 ], [ %132, %131 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %236

; <label>:136:                                    ; preds = %119, %113, %133
  %137 = icmp sgt i32 %69, 1
  br i1 %137, label %138, label %176

; <label>:138:                                    ; preds = %136
  br label %139

; <label>:139:                                    ; preds = %138, %172
  %140 = phi i32 [ %174, %172 ], [ 1, %138 ]
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %5, i64 %141
  %143 = load i8*, i8** %142, align 8, !tbaa !2
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1, !tbaa !6
  %146 = icmp eq i8 %145, 101
  switch i8 %145, label %172 [
    i8 108, label %147
    i8 101, label %147
  ]

; <label>:147:                                    ; preds = %139, %139
  %148 = getelementptr inbounds i8, i8* %143, i64 2
  %149 = load i8, i8* %148, align 1, !tbaa !6
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %156

; <label>:151:                                    ; preds = %147
  %152 = add nsw i32 %140, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %5, i64 %153
  %155 = load i8*, i8** %154, align 8, !tbaa !2
  br label %156

; <label>:156:                                    ; preds = %151, %147
  %157 = phi i32 [ %152, %151 ], [ %140, %147 ]
  %158 = phi i8* [ %155, %151 ], [ %148, %147 ]
  br i1 %146, label %159, label %161

; <label>:159:                                    ; preds = %156
  %160 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #7
  br label %169

; <label>:161:                                    ; preds = %156
  %162 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  %163 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %158) #7
  %164 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 1, i32 1) #7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %161
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %158) #7
  br label %167

; <label>:167:                                    ; preds = %166, %161
  %168 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %164) #7
  br label %169

; <label>:169:                                    ; preds = %167, %159
  %170 = phi i32 [ %160, %159 ], [ %168, %167 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %236

; <label>:172:                                    ; preds = %169, %139
  %173 = phi i32 [ %157, %169 ], [ %140, %139 ]
  %174 = add nsw i32 %173, 1
  %175 = icmp slt i32 %174, %69
  br i1 %175, label %139, label %176

; <label>:176:                                    ; preds = %172, %136
  %177 = icmp slt i32 %69, %3
  br i1 %177, label %178, label %225

; <label>:178:                                    ; preds = %176
  %179 = sext i32 %69 to i64
  %180 = getelementptr inbounds i8*, i8** %5, i64 %179
  %181 = load i8*, i8** %180, align 8, !tbaa !2
  %182 = tail call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #11
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %190

; <label>:184:                                    ; preds = %178
  %185 = getelementptr inbounds i8*, i8** %180, i64 -1
  %186 = load i8*, i8** %185, align 8, !tbaa !2
  %187 = tail call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #11
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i8* %181, i8* null
  br label %190

; <label>:190:                                    ; preds = %184, %178
  %191 = phi i8* [ %181, %178 ], [ %189, %184 ]
  %192 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %191, i8* null) #7
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %221

; <label>:194:                                    ; preds = %190
  %195 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %196 = icmp eq i32 %195, 5
  br i1 %196, label %199, label %197

; <label>:197:                                    ; preds = %194
  %198 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #7
  br label %199

; <label>:199:                                    ; preds = %197, %194
  %200 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 -1) #7
  %201 = trunc i64 %200 to i32
  %202 = add nsw i32 %201, 3
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #7
  %203 = icmp slt i32 %201, 1
  br i1 %203, label %218, label %204

; <label>:204:                                    ; preds = %199
  %205 = add i64 %200, 1
  %206 = and i64 %205, 4294967295
  br label %207

; <label>:207:                                    ; preds = %207, %204
  %208 = phi i64 [ %212, %207 ], [ 1, %204 ]
  %209 = phi i32 [ %214, %207 ], [ -1, %204 ]
  %210 = phi i32 [ %213, %207 ], [ 1, %204 ]
  %211 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %209, i64 %208) #7
  %212 = add nuw nsw i64 %208, 1
  %213 = add nuw nsw i32 %210, 1
  %214 = xor i32 %210, -1
  %215 = icmp eq i64 %212, %206
  br i1 %215, label %216, label %207

; <label>:216:                                    ; preds = %207
  %217 = xor i32 %201, -1
  br label %218

; <label>:218:                                    ; preds = %216, %199
  %219 = phi i32 [ -1, %199 ], [ %217, %216 ]
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %219, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %220 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 %201, i32 -1) #7
  br label %221

; <label>:221:                                    ; preds = %190, %218
  %222 = phi i32 [ %220, %218 ], [ %192, %190 ]
  %223 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %222) #7
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %236

; <label>:225:                                    ; preds = %221, %176
  %226 = and i32 %70, 2
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

; <label>:228:                                    ; preds = %225
  tail call fastcc void @doREPL(%struct.lua_State* %0) #8
  br label %235

; <label>:229:                                    ; preds = %225
  %230 = icmp eq i32 %69, %3
  %231 = and i32 %70, 12
  %232 = icmp eq i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %235

; <label>:234:                                    ; preds = %229
  tail call fastcc void @print_version() #8
  tail call fastcc void @doREPL(%struct.lua_State* %0) #8
  br label %235

; <label>:235:                                    ; preds = %229, %234, %228
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  br label %236

; <label>:236:                                    ; preds = %169, %221, %133, %235, %100
  %237 = phi i32 [ 0, %100 ], [ 1, %235 ], [ 0, %133 ], [ 0, %221 ], [ 0, %169 ]
  ret i32 %237
}

; Function Attrs: optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @report(%struct.lua_State*, i32 returned) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %6 = load i8*, i8** @progname, align 8, !tbaa !2
  tail call fastcc void @l_message(i8* %6, i8* %5) #8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret i32 %1
}

; Function Attrs: optsize
declare void @lua_close(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_version() unnamed_addr #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %1) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %4 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5) #8
  ret void
}

; Function Attrs: optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @doREPL(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  store i8* null, i8** @progname, align 8, !tbaa !2
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %5 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %65, label %7

; <label>:7:                                      ; preds = %1
  %8 = bitcast i64* %3 to i8*
  %9 = bitcast i64* %2 to i8*
  br label %10

; <label>:10:                                     ; preds = %7, %62
  %11 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %12 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %11) #7
  %13 = call i64 @strlen(i8* %12) #11
  %14 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %12, i64 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %10
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %45

; <label>:17:                                     ; preds = %10
  call void @lua_settop(%struct.lua_State* %0, i32 -3) #7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %18 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #7
  %19 = load i64, i64* %3, align 8, !tbaa !7
  %20 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %18, i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %43

; <label>:22:                                     ; preds = %17
  br label %23

; <label>:23:                                     ; preds = %22, %36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* nonnull %2) #7
  %25 = load i64, i64* %2, align 8, !tbaa !7
  %26 = icmp ugt i64 %25, 4
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds i8, i8* %24, i64 %25
  %29 = getelementptr inbounds i8, i8* %28, i64 -5
  %30 = call i32 @strcmp(i8* nonnull %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %27, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  br label %42

; <label>:33:                                     ; preds = %27
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  %34 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 0) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %33
  %37 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #7
  call void @lua_concat(%struct.lua_State* %0, i32 3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6
  %38 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #7
  %39 = load i64, i64* %3, align 8, !tbaa !7
  %40 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %38, i64 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %23, label %43

; <label>:42:                                     ; preds = %33, %32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %59

; <label>:43:                                     ; preds = %36, %17
  %44 = phi i32 [ %20, %17 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  switch i32 %44, label %59 [
    i32 -1, label %65
    i32 0, label %45
  ]

; <label>:45:                                     ; preds = %43, %16
  %46 = call fastcc i32 @docall(%struct.lua_State* %0, i32 0, i32 -1) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

; <label>:48:                                     ; preds = %45
  %49 = call i32 @lua_gettop(%struct.lua_State* %0) #7
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %62

; <label>:51:                                     ; preds = %48
  call void @luaL_checkstack(%struct.lua_State* %0, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #7
  %52 = call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #7
  %53 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 %49, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** @progname, align 8, !tbaa !2
  %57 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %58 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* %57) #7
  call fastcc void @l_message(i8* %56, i8* %58) #7
  br label %62

; <label>:59:                                     ; preds = %42, %43, %45
  %60 = phi i32 [ %46, %45 ], [ 3, %42 ], [ %44, %43 ]
  %61 = call fastcc i32 @report(%struct.lua_State* %0, i32 %60) #8
  br label %62

; <label>:62:                                     ; preds = %55, %51, %48, %59
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %63 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %10

; <label>:65:                                     ; preds = %43, %62, %1
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %67 = call i32 @fputc(i32 10, %struct._IO_FILE* %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %69 = call i32 @fflush(%struct._IO_FILE* %68) #8
  store i64 %4, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @dostring(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i64 @strlen(i8* %1) #11
  %5 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %4, i8* %2, i8* null) #7
  %6 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %5) #8
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @dochunk(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %2
  %5 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 0, i32 0) #8
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ %1, %2 ]
  %8 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %7) #8
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void (i32)* @__sysv_signal(i32, void (i32)*) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @laction(i32) #0 {
  %2 = tail call void (i32)* @__sysv_signal(i32 %0, void (i32)* null) #7
  %3 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8, !tbaa !2
  tail call void @lua_sethook(%struct.lua_State* %3, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @lstop, i32 11, i32 1) #7
  ret void
}

; Function Attrs: optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @lstop(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 {
  tail call void @lua_sethook(%struct.lua_State* %0, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #7
  %3 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @pushline(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %4) #6
  %5 = icmp ne i32 %1, 0
  %6 = select i1 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)
  %7 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* %6) #7
  %8 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %9 = icmp eq i8* %8, null
  %10 = select i1 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %11 = select i1 %9, i8* %10, i8* %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %13 = tail call i32 @fputs(i8* %11, %struct._IO_FILE* %12) #8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %15 = tail call i32 @fflush(%struct._IO_FILE* %14) #8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !2
  %17 = call i8* @fgets(i8* nonnull %4, i32 512, %struct._IO_FILE* %16) #8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %38, label %19

; <label>:19:                                     ; preds = %2
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %20 = call i64 @strlen(i8* nonnull %4) #11
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
  %35 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %34) #7
  br label %38

; <label>:36:                                     ; preds = %28
  %37 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %4, i64 %29) #7
  br label %38

; <label>:38:                                     ; preds = %33, %36, %2
  %39 = phi i32 [ 0, %2 ], [ 1, %36 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %4) #6
  ret i32 %39
}

; Function Attrs: nounwind optsize
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { cold optsize }
attributes #10 = { cold nounwind optsize }
attributes #11 = { nounwind optsize readonly }

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
