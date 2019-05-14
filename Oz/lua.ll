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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare %struct.lua_State* @luaL_newstate() local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @pmain(%struct.lua_State*) #0 {
  %2 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #7
  %3 = trunc i64 %2 to i32
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 2) #7
  %5 = bitcast i8* %4 to i8**
  br label %6

; <label>:6:                                      ; preds = %58, %1
  %7 = phi i32 [ 0, %1 ], [ %59, %58 ]
  %8 = phi i32 [ 1, %1 ], [ %61, %58 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %5, i64 %9
  %11 = load i8*, i8** %10, align 8, !tbaa !2
  %12 = icmp eq i8* %11, null
  br i1 %12, label %63, label %13

; <label>:13:                                     ; preds = %6
  %14 = load i8, i8* %11, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %16, label %63

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds i8, i8* %11, i64 1
  %18 = load i8, i8* %17, align 1, !tbaa !6
  %19 = sext i8 %18 to i32
  switch i32 %19, label %62 [
    i32 45, label %20
    i32 0, label %63
    i32 69, label %27
    i32 105, label %33
    i32 118, label %35
    i32 101, label %42
    i32 108, label %44
  ]

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds i8, i8* %11, i64 2
  %22 = load i8, i8* %21, align 1, !tbaa !6
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %8, %24
  %26 = select i1 %23, i32 %7, i32 1
  br label %63

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds i8, i8* %11, i64 2
  %29 = load i8, i8* %28, align 1, !tbaa !6
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %63

; <label>:31:                                     ; preds = %27
  %32 = or i32 %7, 16
  br label %58

; <label>:33:                                     ; preds = %16
  %34 = or i32 %7, 2
  br label %35

; <label>:35:                                     ; preds = %33, %16
  %36 = phi i32 [ %7, %16 ], [ %34, %33 ]
  %37 = getelementptr inbounds i8, i8* %11, i64 2
  %38 = load i8, i8* %37, align 1, !tbaa !6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %63

; <label>:40:                                     ; preds = %35
  %41 = or i32 %36, 4
  br label %58

; <label>:42:                                     ; preds = %16
  %43 = or i32 %7, 8
  br label %44

; <label>:44:                                     ; preds = %42, %16
  %45 = phi i32 [ %7, %16 ], [ %43, %42 ]
  %46 = getelementptr inbounds i8, i8* %11, i64 2
  %47 = load i8, i8* %46, align 1, !tbaa !6
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %44
  %50 = add nsw i32 %8, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %5, i64 %51
  %53 = load i8*, i8** %52, align 8, !tbaa !2
  %54 = icmp eq i8* %53, null
  br i1 %54, label %63, label %55

; <label>:55:                                     ; preds = %49
  %56 = load i8, i8* %53, align 1, !tbaa !6
  %57 = icmp eq i8 %56, 45
  br i1 %57, label %63, label %58

; <label>:58:                                     ; preds = %55, %44, %40, %31
  %59 = phi i32 [ %45, %55 ], [ %45, %44 ], [ %41, %40 ], [ %32, %31 ]
  %60 = phi i32 [ %50, %55 ], [ %8, %44 ], [ %8, %40 ], [ %8, %31 ]
  %61 = add nsw i32 %60, 1
  br label %6

; <label>:62:                                     ; preds = %16
  br label %63

; <label>:63:                                     ; preds = %6, %13, %16, %27, %35, %49, %55, %62, %20
  %64 = phi i32 [ %25, %20 ], [ %8, %62 ], [ %8, %55 ], [ %8, %49 ], [ %8, %35 ], [ %8, %27 ], [ %8, %16 ], [ %8, %13 ], [ %8, %6 ]
  %65 = phi i32 [ %26, %20 ], [ 1, %62 ], [ %7, %6 ], [ %7, %13 ], [ %7, %16 ], [ 1, %27 ], [ 1, %35 ], [ 1, %49 ], [ 1, %55 ]
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  %66 = load i8*, i8** %5, align 8, !tbaa !2
  %67 = icmp eq i8* %66, null
  br i1 %67, label %72, label %68

; <label>:68:                                     ; preds = %63
  %69 = load i8, i8* %66, align 1, !tbaa !6
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

; <label>:71:                                     ; preds = %68
  store i8* %66, i8** @progname, align 8, !tbaa !2
  br label %72

; <label>:72:                                     ; preds = %68, %63, %71
  %73 = icmp eq i32 %65, 1
  br i1 %73, label %74, label %101

; <label>:74:                                     ; preds = %72
  %75 = sext i32 %64 to i64
  %76 = getelementptr inbounds i8*, i8** %5, i64 %75
  %77 = load i8*, i8** %76, align 8, !tbaa !2
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %79 = load i8*, i8** @progname, align 8, !tbaa !2
  %80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %79) #10
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %82 = tail call i32 @fflush(%struct._IO_FILE* %81) #7
  %83 = getelementptr inbounds i8, i8* %77, i64 1
  %84 = load i8, i8* %83, align 1, !tbaa !6
  switch i8 %84, label %90 [
    i8 101, label %85
    i8 108, label %85
  ]

; <label>:85:                                     ; preds = %74, %74
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %87 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %77) #10
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %89 = tail call i32 @fflush(%struct._IO_FILE* %88) #7
  br label %95

; <label>:90:                                     ; preds = %74
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %77) #10
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %94 = tail call i32 @fflush(%struct._IO_FILE* %93) #7
  br label %95

; <label>:95:                                     ; preds = %85, %90
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %97 = load i8*, i8** @progname, align 8, !tbaa !2
  %98 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.7, i64 0, i64 0), i8* %97) #10
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %100 = tail call i32 @fflush(%struct._IO_FILE* %99) #7
  br label %224

; <label>:101:                                    ; preds = %72
  %102 = and i32 %65, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

; <label>:104:                                    ; preds = %101
  tail call fastcc void @print_version() #8
  br label %105

; <label>:105:                                    ; preds = %101, %104
  %106 = and i32 %65, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

; <label>:108:                                    ; preds = %105
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** nonnull %5, i32 %3, i32 %64) #8
  %109 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  br label %131

; <label>:110:                                    ; preds = %105
  tail call void @luaL_openlibs(%struct.lua_State* %0) #7
  tail call fastcc void @createargtable(%struct.lua_State* %0, i8** nonnull %5, i32 %3, i32 %64) #8
  %111 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 0, i32 0) #7
  %112 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 1)) #7
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %110
  %115 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 1)) #7
  %116 = icmp eq i8* %115, null
  br i1 %116, label %131, label %117

; <label>:117:                                    ; preds = %114, %110
  %118 = phi i8* [ %115, %114 ], [ %112, %110 ]
  %119 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %114 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %110 ]
  %120 = load i8, i8* %118, align 1, !tbaa !6
  %121 = icmp eq i8 %120, 64
  br i1 %121, label %122, label %126

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %118, i64 1
  %124 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %123, i8* null) #7
  %125 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %124) #7
  br label %128

; <label>:126:                                    ; preds = %117
  %127 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* nonnull %118, i8* %119) #7
  br label %128

; <label>:128:                                    ; preds = %122, %126
  %129 = phi i32 [ %125, %122 ], [ %127, %126 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %224

; <label>:131:                                    ; preds = %114, %108, %128
  br label %132

; <label>:132:                                    ; preds = %131, %167
  %133 = phi i32 [ %169, %167 ], [ 1, %131 ]
  %134 = icmp slt i32 %133, %64
  br i1 %134, label %135, label %170

; <label>:135:                                    ; preds = %132
  %136 = sext i32 %133 to i64
  %137 = getelementptr inbounds i8*, i8** %5, i64 %136
  %138 = load i8*, i8** %137, align 8, !tbaa !2
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1, !tbaa !6
  %141 = icmp eq i8 %140, 101
  switch i8 %140, label %167 [
    i8 108, label %142
    i8 101, label %142
  ]

; <label>:142:                                    ; preds = %135, %135
  %143 = getelementptr inbounds i8, i8* %138, i64 2
  %144 = load i8, i8* %143, align 1, !tbaa !6
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %151

; <label>:146:                                    ; preds = %142
  %147 = add nsw i32 %133, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %5, i64 %148
  %150 = load i8*, i8** %149, align 8, !tbaa !2
  br label %151

; <label>:151:                                    ; preds = %146, %142
  %152 = phi i32 [ %147, %146 ], [ %133, %142 ]
  %153 = phi i8* [ %150, %146 ], [ %143, %142 ]
  br i1 %141, label %154, label %156

; <label>:154:                                    ; preds = %151
  %155 = tail call fastcc i32 @dostring(%struct.lua_State* %0, i8* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #7
  br label %164

; <label>:156:                                    ; preds = %151
  %157 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  %158 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %153) #7
  %159 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 1, i32 1) #7
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

; <label>:161:                                    ; preds = %156
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* %153) #7
  br label %162

; <label>:162:                                    ; preds = %161, %156
  %163 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %159) #7
  br label %164

; <label>:164:                                    ; preds = %162, %154
  %165 = phi i32 [ %155, %154 ], [ %163, %162 ]
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %224

; <label>:167:                                    ; preds = %164, %135
  %168 = phi i32 [ %152, %164 ], [ %133, %135 ]
  %169 = add nsw i32 %168, 1
  br label %132

; <label>:170:                                    ; preds = %132
  %171 = icmp slt i32 %64, %3
  br i1 %171, label %172, label %213

; <label>:172:                                    ; preds = %170
  %173 = sext i32 %64 to i64
  %174 = getelementptr inbounds i8*, i8** %5, i64 %173
  %175 = load i8*, i8** %174, align 8, !tbaa !2
  %176 = tail call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #11
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

; <label>:178:                                    ; preds = %172
  %179 = getelementptr inbounds i8*, i8** %174, i64 -1
  %180 = load i8*, i8** %179, align 8, !tbaa !2
  %181 = tail call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #11
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i8* %175, i8* null
  br label %184

; <label>:184:                                    ; preds = %178, %172
  %185 = phi i8* [ %175, %172 ], [ %183, %178 ]
  %186 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %185, i8* null) #7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %209

; <label>:188:                                    ; preds = %184
  %189 = tail call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %190 = icmp eq i32 %189, 5
  br i1 %190, label %193, label %191

; <label>:191:                                    ; preds = %188
  %192 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #7
  br label %193

; <label>:193:                                    ; preds = %191, %188
  %194 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 -1) #7
  %195 = trunc i64 %194 to i32
  %196 = add nsw i32 %195, 3
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #7
  %197 = shl i64 %194, 32
  %198 = ashr exact i64 %197, 32
  br label %199

; <label>:199:                                    ; preds = %204, %193
  %200 = phi i64 [ %206, %204 ], [ 1, %193 ]
  %201 = icmp sgt i64 %200, %198
  %202 = trunc i64 %200 to i32
  %203 = sub i32 0, %202
  br i1 %201, label %207, label %204

; <label>:204:                                    ; preds = %199
  %205 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 %203, i64 %200) #7
  %206 = add nuw nsw i64 %200, 1
  br label %199

; <label>:207:                                    ; preds = %199
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %203, i32 -1) #7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  %208 = tail call fastcc i32 @docall(%struct.lua_State* %0, i32 %195, i32 -1) #7
  br label %209

; <label>:209:                                    ; preds = %184, %207
  %210 = phi i32 [ %208, %207 ], [ %186, %184 ]
  %211 = tail call fastcc i32 @report(%struct.lua_State* %0, i32 %210) #7
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %224

; <label>:213:                                    ; preds = %209, %170
  %214 = and i32 %65, 2
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

; <label>:216:                                    ; preds = %213
  tail call fastcc void @doREPL(%struct.lua_State* %0) #8
  br label %223

; <label>:217:                                    ; preds = %213
  %218 = icmp eq i32 %64, %3
  %219 = and i32 %65, 12
  %220 = icmp eq i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %217
  tail call fastcc void @print_version() #8
  tail call fastcc void @doREPL(%struct.lua_State* %0) #8
  br label %223

; <label>:223:                                    ; preds = %217, %222, %216
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #7
  br label %224

; <label>:224:                                    ; preds = %164, %209, %128, %223, %95
  %225 = phi i32 [ 0, %95 ], [ 1, %223 ], [ 0, %128 ], [ 0, %209 ], [ 0, %164 ]
  ret i32 %225
}

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare void @lua_close(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @print_version() unnamed_addr #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 51, %struct._IO_FILE* %1) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %4 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %6 = tail call i32 @fflush(%struct._IO_FILE* %5) #8
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @createargtable(%struct.lua_State*, i8** nocapture readonly, i32, i32) unnamed_addr #0 {
  %5 = icmp eq i32 %3, %2
  %6 = select i1 %5, i32 0, i32 %3
  %7 = add nsw i32 %6, 1
  %8 = sub nsw i32 %2, %7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %8, i32 %7) #7
  %9 = sext i32 %2 to i64
  %10 = sext i32 %6 to i64
  br label %11

; <label>:11:                                     ; preds = %14, %4
  %12 = phi i64 [ %19, %14 ], [ 0, %4 ]
  %13 = icmp slt i64 %12, %9
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds i8*, i8** %1, i64 %12
  %16 = load i8*, i8** %15, align 8, !tbaa !2
  %17 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %16) #7
  %18 = sub nsw i64 %12, %10
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %18) #7
  %19 = add nuw nsw i64 %12, 1
  br label %11

; <label>:20:                                     ; preds = %11
  tail call void @lua_setglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: minsize optsize
declare i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @doREPL(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  store i8* null, i8** @progname, align 8, !tbaa !2
  %5 = bitcast i64* %3 to i8*
  %6 = bitcast i64* %2 to i8*
  br label %7

; <label>:7:                                      ; preds = %54, %1
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %8 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 1) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %58, label %10

; <label>:10:                                     ; preds = %7
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
  br label %40

; <label>:17:                                     ; preds = %10
  call void @lua_settop(%struct.lua_State* %0, i32 -3) #7
  br label %18

; <label>:18:                                     ; preds = %36, %17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %19 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #7
  %20 = load i64, i64* %3, align 8, !tbaa !7
  %21 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %19, i64 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %39

; <label>:23:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  br label %38

; <label>:33:                                     ; preds = %27
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  %34 = call fastcc i32 @pushline(%struct.lua_State* %0, i32 0) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

; <label>:36:                                     ; preds = %33
  %37 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #7
  call void @lua_concat(%struct.lua_State* %0, i32 3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  br label %18

; <label>:38:                                     ; preds = %33, %32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  br label %55

; <label>:39:                                     ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #7
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #7
  switch i32 %21, label %55 [
    i32 -1, label %58
    i32 0, label %40
  ]

; <label>:40:                                     ; preds = %39, %16
  %41 = call fastcc i32 @docall(%struct.lua_State* %0, i32 0, i32 -1) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

; <label>:43:                                     ; preds = %40
  %44 = call i32 @lua_gettop(%struct.lua_State* %0) #7
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %43
  call void @luaL_checkstack(%struct.lua_State* %0, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #7
  %47 = call i32 @lua_getglobal(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #7
  call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #7
  %48 = call i32 @lua_pcallk(%struct.lua_State* %0, i32 %44, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** @progname, align 8, !tbaa !2
  %52 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #7
  %53 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i8* %52) #7
  call fastcc void @l_message(i8* %51, i8* %53) #7
  br label %54

; <label>:54:                                     ; preds = %50, %46, %43, %55
  br label %7

; <label>:55:                                     ; preds = %38, %39, %40
  %56 = phi i32 [ %41, %40 ], [ 3, %38 ], [ %21, %39 ]
  %57 = call fastcc i32 @report(%struct.lua_State* %0, i32 %56) #8
  br label %54

; <label>:58:                                     ; preds = %7, %39
  call void @lua_settop(%struct.lua_State* %0, i32 0) #7
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %60 = call i32 @fputc(i32 10, %struct._IO_FILE* %59)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !2
  %62 = call i32 @fflush(%struct._IO_FILE* %61) #8
  store i64 %4, i64* bitcast (i8** @progname to i64*), align 8, !tbaa !2
  ret void
}

; Function Attrs: minsize nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @dostring(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i64 @strlen(i8* %1) #11
  %5 = tail call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* %1, i64 %4, i8* %2, i8* null) #7
  %6 = tail call fastcc i32 @dochunk(%struct.lua_State* %0, i32 %5) #8
  ret i32 %6
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare void (i32)* @__sysv_signal(i32, void (i32)*) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
define internal void @laction(i32) #0 {
  %2 = tail call void (i32)* @__sysv_signal(i32 %0, void (i32)* null) #7
  %3 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8, !tbaa !2
  tail call void @lua_sethook(%struct.lua_State* %3, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @lstop, i32 11, i32 1) #7
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal void @lstop(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 {
  tail call void @lua_sethook(%struct.lua_State* %0, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #7
  %3 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { minsize nounwind optsize }
attributes #8 = { minsize optsize }
attributes #9 = { cold minsize optsize }
attributes #10 = { cold minsize nounwind optsize }
attributes #11 = { minsize nounwind optsize readonly }

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
