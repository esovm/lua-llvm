; ModuleID = 'lstrlib.c'
source_filename = "lstrlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.MatchState = type { i8*, i8*, i8*, %struct.lua_State*, i32, i8, [32 x %struct.anon] }
%struct.anon = type { i8*, i64 }
%struct.Header = type { %struct.lua_State*, i32, i32 }
%union.Ftypes = type { double, [32 x i8] }

@strlib = internal constant [18 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @str_byte }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @str_char }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @str_dump }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @str_find }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @str_format }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @gmatch }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @str_gsub }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @str_len }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @str_lower }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @str_match }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @str_rep }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @str_reverse }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @str_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @str_upper }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @str_pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @str_packsize }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @str_unpack }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"unable to dump given function\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"malformed pattern (missing arguments to '%%b')\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid capture index %%%d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"specifier '%%q' cannot have modifiers\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"invalid conversion '%s' to 'format'\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"value has no literal form\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"\5C%d\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"\5C%03d\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"1e9999\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"-1e9999\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"(0/0)\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"string/function/table\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"unfinished string for format 'z'\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@stringmetamethods = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_add }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_mul }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_mod }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_pow }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_div }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_idiv }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 (%struct.lua_State*)* @arith_unm }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"attempt to %s a '%s' with a '%s'\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @luaopen_string(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #9
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 17) #9
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([18 x %struct.luaL_Reg], [18 x %struct.luaL_Reg]* @strlib, i64 0, i64 0), i32 0) #9
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #9
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @stringmetamethods, i64 0, i64 0), i32 0) #9
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #9
  %3 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #9
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  ret i32 1
}

; Function Attrs: optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_byte(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #9
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = icmp sgt i64 %5, 0
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i64 %5, 0
  %10 = sub nsw i64 0, %6
  %11 = icmp slt i64 %5, %10
  %12 = or i1 %9, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %8
  %14 = add i64 %6, 1
  %15 = add i64 %14, %5
  br label %16

; <label>:16:                                     ; preds = %1, %8, %13
  %17 = phi i64 [ %15, %13 ], [ %5, %1 ], [ 1, %8 ]
  %18 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %5) #9
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %28, label %20

; <label>:20:                                     ; preds = %16
  %21 = icmp sgt i64 %18, -1
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i64 0, %6
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %22
  %26 = add i64 %6, 1
  %27 = add i64 %26, %18
  br label %28

; <label>:28:                                     ; preds = %16, %20, %22, %25
  %29 = phi i64 [ %27, %25 ], [ %6, %16 ], [ %18, %20 ], [ 0, %22 ]
  %30 = icmp ult i64 %29, %17
  br i1 %30, label %51, label %31

; <label>:31:                                     ; preds = %28
  %32 = sub i64 %29, %17
  %33 = icmp ugt i64 %32, 2147483646
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #9
  br label %51

; <label>:36:                                     ; preds = %31
  %37 = trunc i64 %32 to i32
  %38 = add i32 %37, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #9
  %39 = icmp slt i32 %37, 0
  br i1 %39, label %51, label %40

; <label>:40:                                     ; preds = %36
  %41 = add i64 %17, -1
  %42 = zext i32 %38 to i64
  br label %43

; <label>:43:                                     ; preds = %43, %40
  %44 = phi i64 [ %49, %43 ], [ 0, %40 ]
  %45 = add i64 %41, %44
  %46 = getelementptr inbounds i8, i8* %4, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #9
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %42
  br i1 %50, label %51, label %43

; <label>:51:                                     ; preds = %43, %36, %28, %34
  %52 = phi i32 [ %35, %34 ], [ 0, %28 ], [ %38, %36 ], [ %38, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 %52
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_char(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #10
  %5 = sext i32 %3 to i64
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %5) #9
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %24, label %8

; <label>:8:                                      ; preds = %1
  %9 = add i32 %3, 1
  %10 = zext i32 %9 to i64
  br label %11

; <label>:11:                                     ; preds = %18, %8
  %12 = phi i64 [ %22, %18 ], [ 1, %8 ]
  %13 = trunc i64 %12 to i32
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %13) #9
  %15 = icmp ult i64 %14, 256
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #9
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = trunc i64 %14 to i8
  %20 = add nsw i64 %12, -1
  %21 = getelementptr inbounds i8, i8* %6, i64 %20
  store i8 %19, i8* %21, align 1, !tbaa !6
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %18, %1
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %2, i64 %5) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_dump(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %3) #10
  %4 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #9
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #9
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #9
  %5 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3, i32 %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %10

; <label>:9:                                      ; preds = %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #9
  br label %10

; <label>:10:                                     ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %3) #10
  ret i32 %11
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_find(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1) #11
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_format(%struct.lua_State*) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %9 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #9
  %11 = load i64, i64* %4, align 8, !tbaa !2
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %13) #10
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #9
  %14 = icmp sgt i64 %11, 0
  br i1 %14, label %15, label %362

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 1
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 2
  %22 = bitcast i64* %7 to i8*
  %23 = bitcast i64* %3 to i8*
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  br label %25

; <label>:25:                                     ; preds = %15, %358
  %26 = phi i32 [ 1, %15 ], [ %360, %358 ]
  %27 = phi i8* [ %10, %15 ], [ %359, %358 ]
  %28 = load i8, i8* %27, align 1, !tbaa !6
  %29 = icmp eq i8 %28, 37
  br i1 %29, label %45, label %30

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* %16, align 8, !tbaa !7
  %32 = load i64, i64* %17, align 8, !tbaa !10
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %38, label %34

; <label>:34:                                     ; preds = %30
  %35 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %36 = load i8, i8* %27, align 1, !tbaa !6
  %37 = load i64, i64* %16, align 8, !tbaa !7
  br label %38

; <label>:38:                                     ; preds = %34, %30
  %39 = phi i64 [ %37, %34 ], [ %31, %30 ]
  %40 = phi i8 [ %36, %34 ], [ %28, %30 ]
  %41 = getelementptr inbounds i8, i8* %27, i64 1
  %42 = load i8*, i8** %19, align 8, !tbaa !11
  %43 = add i64 %39, 1
  store i64 %43, i64* %16, align 8, !tbaa !7
  %44 = getelementptr inbounds i8, i8* %42, i64 %39
  store i8 %40, i8* %44, align 1, !tbaa !6
  br label %358

; <label>:45:                                     ; preds = %25
  %46 = getelementptr inbounds i8, i8* %27, i64 1
  %47 = load i8, i8* %46, align 1, !tbaa !6
  %48 = icmp eq i8 %47, 37
  br i1 %48, label %49, label %64

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %16, align 8, !tbaa !7
  %51 = load i64, i64* %17, align 8, !tbaa !10
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %49
  %54 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %55 = load i8, i8* %46, align 1, !tbaa !6
  %56 = load i64, i64* %16, align 8, !tbaa !7
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = phi i64 [ %56, %53 ], [ %50, %49 ]
  %59 = phi i8 [ %55, %53 ], [ 37, %49 ]
  %60 = getelementptr inbounds i8, i8* %27, i64 2
  %61 = load i8*, i8** %19, align 8, !tbaa !11
  %62 = add i64 %58, 1
  store i64 %62, i64* %16, align 8, !tbaa !7
  %63 = getelementptr inbounds i8, i8* %61, i64 %58
  store i8 %59, i8* %63, align 1, !tbaa !6
  br label %358

; <label>:64:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #10
  %65 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #9
  %66 = add nsw i32 %26, 1
  %67 = icmp slt i32 %26, %8
  br i1 %67, label %70, label %68

; <label>:68:                                     ; preds = %64
  %69 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #9
  br label %351

; <label>:70:                                     ; preds = %64
  %71 = load i8, i8* %46, align 1, !tbaa !6
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %88, label %73

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %73, %84
  %75 = phi i8 [ %86, %84 ], [ %71, %73 ]
  %76 = phi i8* [ %85, %84 ], [ %46, %73 ]
  %77 = sext i8 %75 to i64
  %78 = and i64 %77, 4294967295
  %79 = icmp ult i64 %78, 64
  %80 = shl i64 1, %78
  %81 = and i64 %80, 325494096527361
  %82 = icmp ne i64 %81, 0
  %83 = and i1 %79, %82
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %74
  %85 = getelementptr inbounds i8, i8* %76, i64 1
  %86 = load i8, i8* %85, align 1, !tbaa !6
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %74

; <label>:88:                                     ; preds = %84, %74, %70
  %89 = phi i8 [ 0, %70 ], [ %75, %74 ], [ 0, %84 ]
  %90 = phi i8* [ %46, %70 ], [ %76, %74 ], [ %85, %84 ]
  %91 = ptrtoint i8* %90 to i64
  %92 = ptrtoint i8* %46 to i64
  %93 = sub i64 %91, %92
  %94 = icmp ugt i64 %93, 5
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %88
  %96 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #9
  %97 = load i8, i8* %90, align 1, !tbaa !6
  br label %98

; <label>:98:                                     ; preds = %95, %88
  %99 = phi i8 [ %97, %95 ], [ %89, %88 ]
  %100 = tail call i16** @__ctype_b_loc() #12
  %101 = load i16*, i16** %100, align 8, !tbaa !12
  %102 = zext i8 %99 to i64
  %103 = getelementptr inbounds i16, i16* %101, i64 %102
  %104 = load i16, i16* %103, align 2, !tbaa !13
  %105 = and i16 %104, 2048
  %106 = icmp eq i16 %105, 0
  %107 = getelementptr inbounds i8, i8* %90, i64 1
  %108 = select i1 %106, i8* %90, i8* %107
  %109 = load i8, i8* %108, align 1, !tbaa !6
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i16, i16* %101, i64 %110
  %112 = load i16, i16* %111, align 2, !tbaa !13
  %113 = and i16 %112, 2048
  %114 = icmp eq i16 %113, 0
  %115 = getelementptr inbounds i8, i8* %108, i64 1
  %116 = select i1 %114, i8* %108, i8* %115
  %117 = load i8, i8* %116, align 1, !tbaa !6
  %118 = icmp eq i8 %117, 46
  br i1 %118, label %119, label %138

; <label>:119:                                    ; preds = %98
  %120 = getelementptr inbounds i8, i8* %116, i64 1
  %121 = load i8, i8* %120, align 1, !tbaa !6
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i16, i16* %101, i64 %122
  %124 = load i16, i16* %123, align 2, !tbaa !13
  %125 = and i16 %124, 2048
  %126 = icmp eq i16 %125, 0
  %127 = getelementptr inbounds i8, i8* %116, i64 2
  %128 = select i1 %126, i8* %120, i8* %127
  %129 = load i8, i8* %128, align 1, !tbaa !6
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i16, i16* %101, i64 %130
  %132 = load i16, i16* %131, align 2, !tbaa !13
  %133 = and i16 %132, 2048
  %134 = icmp eq i16 %133, 0
  %135 = getelementptr inbounds i8, i8* %128, i64 1
  %136 = select i1 %134, i8* %128, i8* %135
  %137 = load i8, i8* %136, align 1, !tbaa !6
  br label %138

; <label>:138:                                    ; preds = %119, %98
  %139 = phi i8 [ %117, %98 ], [ %137, %119 ]
  %140 = phi i8* [ %116, %98 ], [ %136, %119 ]
  %141 = zext i8 %139 to i64
  %142 = getelementptr inbounds i16, i16* %101, i64 %141
  %143 = load i16, i16* %142, align 2, !tbaa !13
  %144 = and i16 %143, 2048
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %138
  %147 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0)) #9
  br label %148

; <label>:148:                                    ; preds = %138, %146
  store i8 37, i8* %18, align 16, !tbaa !6
  %149 = ptrtoint i8* %140 to i64
  %150 = sub i64 %149, %92
  %151 = add nsw i64 %150, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %20, i8* nonnull %46, i64 %151, i32 1, i1 false) #10
  %152 = getelementptr inbounds i8, i8* %20, i64 %151
  store i8 0, i8* %152, align 1, !tbaa !6
  %153 = getelementptr inbounds i8, i8* %140, i64 1
  %154 = load i8, i8* %140, align 1, !tbaa !6
  %155 = sext i8 %154 to i32
  switch i32 %155, label %349 [
    i32 99, label %156
    i32 100, label %160
    i32 105, label %160
    i32 111, label %160
    i32 117, label %160
    i32 120, label %160
    i32 88, label %160
    i32 97, label %163
    i32 65, label %163
    i32 101, label %166
    i32 69, label %166
    i32 102, label %166
    i32 103, label %166
    i32 71, label %166
    i32 112, label %179
    i32 113, label %182
    i32 115, label %326
  ]

; <label>:156:                                    ; preds = %148
  %157 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %66) #9
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i32 %158) #9
  br label %353

; <label>:160:                                    ; preds = %148, %148, %148, %148, %148, %148
  %161 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %66) #9
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #11
  %162 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i64 %161) #9
  br label %353

; <label>:163:                                    ; preds = %148, %148
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #11
  %164 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %66) #9
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, double %164) #9
  br label %353

; <label>:166:                                    ; preds = %148, %148, %148, %148, %148
  %167 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %66) #9
  %168 = load i8, i8* %140, align 1, !tbaa !6
  %169 = icmp ne i8 %168, 102
  %170 = call double @llvm.fabs.f64(double %167)
  %171 = fcmp ult double %170, 1.000000e+100
  %172 = or i1 %169, %171
  br i1 %172, label %175, label %173

; <label>:173:                                    ; preds = %166
  %174 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 418) #9
  br label %175

; <label>:175:                                    ; preds = %166, %173
  %176 = phi i8* [ %174, %173 ], [ %65, %166 ]
  %177 = phi i64 [ 418, %173 ], [ 120, %166 ]
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #11
  %178 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %176, i64 %177, i8* nonnull %18, double %167) #9
  br label %353

; <label>:179:                                    ; preds = %148
  %180 = call i8* @lua_topointer(%struct.lua_State* %0, i32 %66) #9
  %181 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i8* %180) #9
  br label %353

; <label>:182:                                    ; preds = %148
  %183 = load i8, i8* %21, align 2, !tbaa !6
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185

; <label>:185:                                    ; preds = %182
  %186 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #9
  br label %351

; <label>:187:                                    ; preds = %182
  %188 = call i32 @lua_type(%struct.lua_State* %0, i32 %66) #9
  switch i32 %188, label %324 [
    i32 4, label %189
    i32 3, label %284
    i32 0, label %322
    i32 1, label %322
  ]

; <label>:189:                                    ; preds = %187
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #10
  %190 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %66, i64* nonnull %3) #9
  %191 = load i64, i64* %3, align 8, !tbaa !2
  %192 = load i64, i64* %16, align 8, !tbaa !7
  %193 = load i64, i64* %17, align 8, !tbaa !10
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %198, label %195

; <label>:195:                                    ; preds = %189
  %196 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %197 = load i64, i64* %16, align 8, !tbaa !7
  br label %198

; <label>:198:                                    ; preds = %195, %189
  %199 = phi i64 [ %197, %195 ], [ %192, %189 ]
  %200 = load i8*, i8** %19, align 8, !tbaa !11
  %201 = add i64 %199, 1
  store i64 %201, i64* %16, align 8, !tbaa !7
  %202 = getelementptr inbounds i8, i8* %200, i64 %199
  store i8 34, i8* %202, align 1, !tbaa !6
  %203 = icmp eq i64 %191, 0
  br i1 %203, label %272, label %204

; <label>:204:                                    ; preds = %198
  br label %205

; <label>:205:                                    ; preds = %204, %269
  %206 = phi i64 [ %208, %269 ], [ %191, %204 ]
  %207 = phi i8* [ %270, %269 ], [ %190, %204 ]
  %208 = add i64 %206, -1
  %209 = load i8, i8* %207, align 1, !tbaa !6
  switch i8 %209, label %234 [
    i8 34, label %210
    i8 92, label %210
    i8 10, label %210
  ]

; <label>:210:                                    ; preds = %205, %205, %205
  %211 = load i64, i64* %16, align 8, !tbaa !7
  %212 = load i64, i64* %17, align 8, !tbaa !10
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %217, label %214

; <label>:214:                                    ; preds = %210
  %215 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %216 = load i64, i64* %16, align 8, !tbaa !7
  br label %217

; <label>:217:                                    ; preds = %214, %210
  %218 = phi i64 [ %216, %214 ], [ %211, %210 ]
  %219 = load i8*, i8** %19, align 8, !tbaa !11
  %220 = add i64 %218, 1
  store i64 %220, i64* %16, align 8, !tbaa !7
  %221 = getelementptr inbounds i8, i8* %219, i64 %218
  store i8 92, i8* %221, align 1, !tbaa !6
  %222 = load i64, i64* %16, align 8, !tbaa !7
  %223 = load i64, i64* %17, align 8, !tbaa !10
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %228, label %225

; <label>:225:                                    ; preds = %217
  %226 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %227 = load i64, i64* %16, align 8, !tbaa !7
  br label %228

; <label>:228:                                    ; preds = %225, %217
  %229 = phi i64 [ %227, %225 ], [ %222, %217 ]
  %230 = load i8, i8* %207, align 1, !tbaa !6
  %231 = load i8*, i8** %19, align 8, !tbaa !11
  %232 = add i64 %229, 1
  store i64 %232, i64* %16, align 8, !tbaa !7
  %233 = getelementptr inbounds i8, i8* %231, i64 %229
  store i8 %230, i8* %233, align 1, !tbaa !6
  br label %269

; <label>:234:                                    ; preds = %205
  %235 = load i16*, i16** %100, align 8, !tbaa !12
  %236 = zext i8 %209 to i64
  %237 = getelementptr inbounds i16, i16* %235, i64 %236
  %238 = load i16, i16* %237, align 2, !tbaa !13
  %239 = and i16 %238, 2
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %255, label %241

; <label>:241:                                    ; preds = %234
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %24) #10
  %242 = getelementptr inbounds i8, i8* %207, i64 1
  %243 = load i8, i8* %242, align 1, !tbaa !6
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds i16, i16* %235, i64 %244
  %246 = load i16, i16* %245, align 2, !tbaa !13
  %247 = and i16 %246, 2048
  %248 = icmp eq i16 %247, 0
  %249 = zext i8 %209 to i32
  br i1 %248, label %250, label %252

; <label>:250:                                    ; preds = %241
  %251 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %24, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %249) #9
  br label %254

; <label>:252:                                    ; preds = %241
  %253 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %24, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 %249) #9
  br label %254

; <label>:254:                                    ; preds = %252, %250
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %24) #9
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %24) #10
  br label %269

; <label>:255:                                    ; preds = %234
  %256 = load i64, i64* %16, align 8, !tbaa !7
  %257 = load i64, i64* %17, align 8, !tbaa !10
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %263, label %259

; <label>:259:                                    ; preds = %255
  %260 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %261 = load i8, i8* %207, align 1, !tbaa !6
  %262 = load i64, i64* %16, align 8, !tbaa !7
  br label %263

; <label>:263:                                    ; preds = %259, %255
  %264 = phi i64 [ %262, %259 ], [ %256, %255 ]
  %265 = phi i8 [ %261, %259 ], [ %209, %255 ]
  %266 = load i8*, i8** %19, align 8, !tbaa !11
  %267 = add i64 %264, 1
  store i64 %267, i64* %16, align 8, !tbaa !7
  %268 = getelementptr inbounds i8, i8* %266, i64 %264
  store i8 %265, i8* %268, align 1, !tbaa !6
  br label %269

; <label>:269:                                    ; preds = %263, %254, %228
  %270 = getelementptr inbounds i8, i8* %207, i64 1
  %271 = icmp eq i64 %208, 0
  br i1 %271, label %272, label %205

; <label>:272:                                    ; preds = %269, %198
  %273 = load i64, i64* %16, align 8, !tbaa !7
  %274 = load i64, i64* %17, align 8, !tbaa !10
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %279, label %276

; <label>:276:                                    ; preds = %272
  %277 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %278 = load i64, i64* %16, align 8, !tbaa !7
  br label %279

; <label>:279:                                    ; preds = %276, %272
  %280 = phi i64 [ %278, %276 ], [ %273, %272 ]
  %281 = load i8*, i8** %19, align 8, !tbaa !11
  %282 = add i64 %280, 1
  store i64 %282, i64* %16, align 8, !tbaa !7
  %283 = getelementptr inbounds i8, i8* %281, i64 %280
  store i8 34, i8* %283, align 1, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10
  br label %353

; <label>:284:                                    ; preds = %187
  %285 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #9
  %286 = call i32 @lua_isinteger(%struct.lua_State* %0, i32 %66) #9
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %312

; <label>:288:                                    ; preds = %284
  %289 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %66, i32* null) #9
  %290 = fcmp oeq double %289, 0x7FF0000000000000
  br i1 %290, label %309, label %291

; <label>:291:                                    ; preds = %288
  %292 = fcmp oeq double %289, 0xFFF0000000000000
  br i1 %292, label %309, label %293

; <label>:293:                                    ; preds = %291
  %294 = fcmp uno double %289, 0.000000e+00
  br i1 %294, label %309, label %295

; <label>:295:                                    ; preds = %293
  %296 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %285, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), double %289) #9
  %297 = sext i32 %296 to i64
  %298 = call i8* @memchr(i8* %285, i32 46, i64 %297) #13
  %299 = icmp eq i8* %298, null
  br i1 %299, label %300, label %317

; <label>:300:                                    ; preds = %295
  %301 = call %struct.lconv* @localeconv() #9
  %302 = getelementptr inbounds %struct.lconv, %struct.lconv* %301, i64 0, i32 0
  %303 = load i8*, i8** %302, align 8, !tbaa !15
  %304 = load i8, i8* %303, align 1, !tbaa !6
  %305 = sext i8 %304 to i32
  %306 = call i8* @memchr(i8* %285, i32 %305, i64 %297) #13
  %307 = icmp eq i8* %306, null
  br i1 %307, label %317, label %308

; <label>:308:                                    ; preds = %300
  store i8 46, i8* %306, align 1, !tbaa !6
  br label %317

; <label>:309:                                    ; preds = %293, %291, %288
  %310 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), %288 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %291 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), %293 ]
  %311 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %285, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %310) #9
  br label %317

; <label>:312:                                    ; preds = %284
  %313 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %66, i32* null) #9
  %314 = icmp eq i64 %313, -9223372036854775808
  %315 = select i1 %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %316 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %285, i64 120, i8* %315, i64 %313) #9
  br label %317

; <label>:317:                                    ; preds = %312, %309, %308, %300, %295
  %318 = phi i32 [ %316, %312 ], [ %311, %309 ], [ %296, %308 ], [ %296, %300 ], [ %296, %295 ]
  %319 = sext i32 %318 to i64
  %320 = load i64, i64* %16, align 8, !tbaa !7
  %321 = add i64 %320, %319
  store i64 %321, i64* %16, align 8, !tbaa !7
  br label %353

; <label>:322:                                    ; preds = %187, %187
  %323 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %66, i64* null) #9
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %353

; <label>:324:                                    ; preds = %187
  %325 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0)) #9
  br label %353

; <label>:326:                                    ; preds = %148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #10
  %327 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %66, i64* nonnull %7) #9
  %328 = load i8, i8* %21, align 2, !tbaa !6
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %331

; <label>:330:                                    ; preds = %326
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %347

; <label>:331:                                    ; preds = %326
  %332 = load i64, i64* %7, align 8, !tbaa !2
  %333 = call i64 @strlen(i8* %327) #13
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %338, label %335

; <label>:335:                                    ; preds = %331
  %336 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9
  %337 = load i64, i64* %7, align 8
  br label %338

; <label>:338:                                    ; preds = %335, %331
  %339 = phi i64 [ %337, %335 ], [ %332, %331 ]
  %340 = call i8* @strchr(i8* nonnull %18, i32 46) #13
  %341 = icmp eq i8* %340, null
  %342 = icmp ugt i64 %339, 99
  %343 = and i1 %341, %342
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %338
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %347

; <label>:345:                                    ; preds = %338
  %346 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i8* %327) #9
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %347

; <label>:347:                                    ; preds = %344, %345, %330
  %348 = phi i32 [ 0, %330 ], [ 0, %344 ], [ %346, %345 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #10
  br label %353

; <label>:349:                                    ; preds = %148
  %350 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* nonnull %18) #9
  br label %351

; <label>:351:                                    ; preds = %68, %349, %185
  %352 = phi i32 [ %186, %185 ], [ %350, %349 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #10
  br label %363

; <label>:353:                                    ; preds = %156, %160, %163, %175, %179, %347, %279, %317, %322, %324
  %354 = phi i32 [ %348, %347 ], [ %181, %179 ], [ %178, %175 ], [ %165, %163 ], [ %162, %160 ], [ %159, %156 ], [ 0, %279 ], [ 0, %317 ], [ 0, %322 ], [ 0, %324 ]
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %16, align 8, !tbaa !7
  %357 = add i64 %356, %355
  store i64 %357, i64* %16, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #10
  br label %358

; <label>:358:                                    ; preds = %353, %57, %38
  %359 = phi i8* [ %41, %38 ], [ %60, %57 ], [ %153, %353 ]
  %360 = phi i32 [ %26, %38 ], [ %26, %57 ], [ %66, %353 ]
  %361 = icmp ult i8* %359, %12
  br i1 %361, label %25, label %362

; <label>:362:                                    ; preds = %358, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #9
  br label %363

; <label>:363:                                    ; preds = %351, %362
  %364 = phi i32 [ 1, %362 ], [ %352, %351 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  ret i32 %364
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @gmatch(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %3) #9
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp sgt i64 %8, 0
  br i1 %10, label %19, label %11

; <label>:11:                                     ; preds = %1
  %12 = icmp eq i64 %8, 0
  %13 = sub nsw i64 0, %9
  %14 = icmp slt i64 %8, %13
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %11
  %17 = add i64 %8, 1
  %18 = add i64 %17, %9
  br label %19

; <label>:19:                                     ; preds = %1, %11, %16
  %20 = phi i64 [ %18, %16 ], [ %8, %1 ], [ 1, %11 ]
  %21 = add i64 %20, -1
  call void @lua_settop(%struct.lua_State* %0, i32 2) #9
  %22 = call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 576, i32 0) #9
  %23 = load i64, i64* %2, align 8, !tbaa !2
  %24 = icmp ugt i64 %21, %23
  %25 = add i64 %23, 1
  %26 = select i1 %24, i64 %25, i64 %21
  %27 = getelementptr inbounds i8, i8* %22, i64 24
  %28 = load i64, i64* %3, align 8, !tbaa !2
  %29 = getelementptr inbounds i8, i8* %22, i64 48
  %30 = bitcast i8* %29 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %30, align 8, !tbaa !17
  %31 = getelementptr inbounds i8, i8* %22, i64 56
  %32 = bitcast i8* %31 to i32*
  store i32 200, i32* %32, align 8, !tbaa !20
  %33 = bitcast i8* %27 to i8**
  store i8* %6, i8** %33, align 8, !tbaa !21
  %34 = getelementptr inbounds i8, i8* %6, i64 %23
  %35 = getelementptr inbounds i8, i8* %22, i64 32
  %36 = bitcast i8* %35 to i8**
  store i8* %34, i8** %36, align 8, !tbaa !22
  %37 = getelementptr inbounds i8, i8* %7, i64 %28
  %38 = getelementptr inbounds i8, i8* %22, i64 40
  %39 = bitcast i8* %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !23
  %40 = getelementptr inbounds i8, i8* %6, i64 %26
  %41 = bitcast i8* %22 to i8**
  store i8* %40, i8** %41, align 8, !tbaa !24
  %42 = getelementptr inbounds i8, i8* %22, i64 8
  %43 = bitcast i8* %42 to i8**
  store i8* %7, i8** %43, align 8, !tbaa !26
  %44 = getelementptr inbounds i8, i8* %22, i64 16
  %45 = bitcast i8* %44 to i8**
  store i8* null, i8** %45, align 8, !tbaa !27
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_gsub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.MatchState, align 8
  %7 = alloca %struct.luaL_Buffer, align 8
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #9
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %5) #9
  %12 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #9
  %13 = load i64, i64* %4, align 8, !tbaa !2
  %14 = add i64 %13, 1
  %15 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %14) #9
  %16 = load i8, i8* %11, align 1, !tbaa !6
  %17 = icmp eq i8 %16, 94
  %18 = bitcast %struct.MatchState* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %18) #10
  %19 = bitcast %struct.luaL_Buffer* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %19) #10
  %20 = add i32 %12, -3
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %1
  %23 = call i32 @luaL_typeerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #9
  br label %24

; <label>:24:                                     ; preds = %22, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %7) #9
  br i1 %17, label %27, label %25

; <label>:25:                                     ; preds = %24
  %26 = load i64, i64* %5, align 8, !tbaa !2
  br label %31

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds i8, i8* %11, i64 1
  %29 = load i64, i64* %5, align 8, !tbaa !2
  %30 = add i64 %29, -1
  store i64 %30, i64* %5, align 8, !tbaa !2
  br label %31

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %25 ]
  %33 = phi i8* [ %28, %27 ], [ %11, %25 ]
  %34 = load i64, i64* %4, align 8, !tbaa !2
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %35, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 4
  store i32 200, i32* %36, align 8, !tbaa !20
  %37 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 0
  store i8* %10, i8** %37, align 8, !tbaa !21
  %38 = getelementptr inbounds i8, i8* %10, i64 %34
  %39 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 1
  store i8* %38, i8** %39, align 8, !tbaa !22
  %40 = getelementptr inbounds i8, i8* %33, i64 %32
  %41 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 2
  store i8* %40, i8** %41, align 8, !tbaa !23
  %42 = icmp sgt i64 %15, 0
  br i1 %42, label %43, label %176

; <label>:43:                                     ; preds = %31
  %44 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 5
  %45 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 2
  %46 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 1
  %47 = bitcast i64* %2 to i8*
  %48 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 0
  %49 = bitcast i8** %3 to i8*
  %50 = xor i1 %17, true
  br label %51

; <label>:51:                                     ; preds = %164, %43
  %52 = phi i8* [ %10, %43 ], [ %168, %164 ]
  %53 = phi i32 [ 0, %43 ], [ %167, %164 ]
  %54 = phi i64 [ 0, %43 ], [ %166, %164 ]
  %55 = phi i8* [ null, %43 ], [ %165, %164 ]
  store i8 0, i8* %44, align 4, !tbaa !28
  %56 = call fastcc i8* @match(%struct.MatchState* nonnull %6, i8* %52, i8* %33) #11
  %57 = icmp eq i8* %56, null
  %58 = icmp eq i8* %56, %55
  %59 = or i1 %57, %58
  br i1 %59, label %147, label %60

; <label>:60:                                     ; preds = %51
  %61 = add nsw i64 %54, 1
  %62 = load %struct.lua_State*, %struct.lua_State** %35, align 8, !tbaa !17
  switch i32 %12, label %67 [
    i32 6, label %63
    i32 5, label %65
  ]

; <label>:63:                                     ; preds = %60
  call void @lua_pushvalue(%struct.lua_State* %62, i32 3) #9
  %64 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %6, i8* %52, i8* nonnull %56) #9
  call void @lua_callk(%struct.lua_State* %62, i32 %64, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %129

; <label>:65:                                     ; preds = %60
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %6, i32 0, i8* %52, i8* nonnull %56) #9
  %66 = call i32 @lua_gettable(%struct.lua_State* %62, i32 3) #9
  br label %129

; <label>:67:                                     ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #10
  %68 = call i8* @lua_tolstring(%struct.lua_State* %62, i32 3, i64* nonnull %2) #9
  %69 = load i64, i64* %2, align 8, !tbaa !2
  %70 = call i8* @memchr(i8* %68, i32 37, i64 %69) #13
  %71 = icmp eq i8* %70, null
  br i1 %71, label %126, label %72

; <label>:72:                                     ; preds = %67
  %73 = ptrtoint i8* %56 to i64
  %74 = ptrtoint i8* %52 to i64
  %75 = sub i64 %73, %74
  br label %76

; <label>:76:                                     ; preds = %118, %72
  %77 = phi i8* [ %70, %72 ], [ %124, %118 ]
  %78 = phi i8* [ %68, %72 ], [ %119, %118 ]
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %78, i64 %81) #9
  %82 = getelementptr inbounds i8, i8* %77, i64 1
  %83 = load i8, i8* %82, align 1, !tbaa !6
  switch i8 %83, label %99 [
    i8 37, label %84
    i8 48, label %98
  ]

; <label>:84:                                     ; preds = %76
  %85 = load i64, i64* %45, align 8, !tbaa !7
  %86 = load i64, i64* %46, align 8, !tbaa !10
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %84
  %89 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %7, i64 1) #9
  %90 = load i8, i8* %82, align 1, !tbaa !6
  %91 = load i64, i64* %45, align 8, !tbaa !7
  br label %92

; <label>:92:                                     ; preds = %88, %84
  %93 = phi i64 [ %91, %88 ], [ %85, %84 ]
  %94 = phi i8 [ %90, %88 ], [ 37, %84 ]
  %95 = load i8*, i8** %48, align 8, !tbaa !11
  %96 = add i64 %93, 1
  store i64 %96, i64* %45, align 8, !tbaa !7
  %97 = getelementptr inbounds i8, i8* %95, i64 %93
  store i8 %94, i8* %97, align 1, !tbaa !6
  br label %118

; <label>:98:                                     ; preds = %76
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %52, i64 %75) #9
  br label %118

; <label>:99:                                     ; preds = %76
  %100 = tail call i16** @__ctype_b_loc() #12
  %101 = load i16*, i16** %100, align 8, !tbaa !12
  %102 = zext i8 %83 to i64
  %103 = getelementptr inbounds i16, i16* %101, i64 %102
  %104 = load i16, i16* %103, align 2, !tbaa !13
  %105 = and i16 %104, 2048
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %116, label %107

; <label>:107:                                    ; preds = %99
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #10
  %108 = sext i8 %83 to i32
  %109 = add nsw i32 %108, -49
  %110 = call fastcc i64 @get_onecapture(%struct.MatchState* nonnull %6, i32 %109, i8* %52, i8* %56, i8** nonnull %3) #9
  %111 = icmp eq i64 %110, -2
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %107
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %7) #9
  br label %115

; <label>:113:                                    ; preds = %107
  %114 = load i8*, i8** %3, align 8, !tbaa !12
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %114, i64 %110) #9
  br label %115

; <label>:115:                                    ; preds = %113, %112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #10
  br label %118

; <label>:116:                                    ; preds = %99
  %117 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #9
  br label %118

; <label>:118:                                    ; preds = %116, %115, %98, %92
  %119 = getelementptr inbounds i8, i8* %77, i64 2
  %120 = ptrtoint i8* %119 to i64
  %121 = load i64, i64* %2, align 8, !tbaa !2
  %122 = sub i64 %80, %120
  %123 = add i64 %121, %122
  store i64 %123, i64* %2, align 8, !tbaa !2
  %124 = call i8* @memchr(i8* nonnull %119, i32 37, i64 %123) #13
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %76

; <label>:126:                                    ; preds = %118, %67
  %127 = phi i8* [ %68, %67 ], [ %119, %118 ]
  %128 = phi i64 [ %69, %67 ], [ %123, %118 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %127, i64 %128) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #10
  br label %144

; <label>:129:                                    ; preds = %65, %63
  %130 = call i32 @lua_toboolean(%struct.lua_State* %62, i32 -1) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

; <label>:132:                                    ; preds = %129
  call void @lua_settop(%struct.lua_State* %62, i32 -2) #9
  %133 = ptrtoint i8* %56 to i64
  %134 = ptrtoint i8* %52 to i64
  %135 = sub i64 %133, %134
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %52, i64 %135) #9
  br label %144

; <label>:136:                                    ; preds = %129
  %137 = call i32 @lua_isstring(%struct.lua_State* %62, i32 -1) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

; <label>:139:                                    ; preds = %136
  %140 = call i32 @lua_type(%struct.lua_State* %62, i32 -1) #9
  %141 = call i8* @lua_typename(%struct.lua_State* %62, i32 %140) #9
  %142 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* %141) #9
  br label %144

; <label>:143:                                    ; preds = %136
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %7) #9
  br label %144

; <label>:144:                                    ; preds = %126, %132, %139, %143
  %145 = phi i32 [ 1, %126 ], [ 1, %143 ], [ %142, %139 ], [ 0, %132 ]
  %146 = or i32 %145, %53
  br label %164

; <label>:147:                                    ; preds = %51
  %148 = load i8*, i8** %39, align 8, !tbaa !22
  %149 = icmp ult i8* %52, %148
  br i1 %149, label %150, label %171

; <label>:150:                                    ; preds = %147
  %151 = load i64, i64* %45, align 8, !tbaa !7
  %152 = load i64, i64* %46, align 8, !tbaa !10
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %157, label %154

; <label>:154:                                    ; preds = %150
  %155 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %7, i64 1) #9
  %156 = load i64, i64* %45, align 8, !tbaa !7
  br label %157

; <label>:157:                                    ; preds = %154, %150
  %158 = phi i64 [ %156, %154 ], [ %151, %150 ]
  %159 = getelementptr inbounds i8, i8* %52, i64 1
  %160 = load i8, i8* %52, align 1, !tbaa !6
  %161 = load i8*, i8** %48, align 8, !tbaa !11
  %162 = add i64 %158, 1
  store i64 %162, i64* %45, align 8, !tbaa !7
  %163 = getelementptr inbounds i8, i8* %161, i64 %158
  store i8 %160, i8* %163, align 1, !tbaa !6
  br label %164

; <label>:164:                                    ; preds = %144, %157
  %165 = phi i8* [ %56, %144 ], [ %55, %157 ]
  %166 = phi i64 [ %61, %144 ], [ %54, %157 ]
  %167 = phi i32 [ %146, %144 ], [ %53, %157 ]
  %168 = phi i8* [ %56, %144 ], [ %159, %157 ]
  %169 = icmp slt i64 %166, %15
  %170 = and i1 %169, %50
  br i1 %170, label %51, label %171

; <label>:171:                                    ; preds = %147, %164
  %172 = phi i64 [ %54, %147 ], [ %166, %164 ]
  %173 = phi i32 [ %53, %147 ], [ %167, %164 ]
  %174 = phi i8* [ %52, %147 ], [ %168, %164 ]
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %176, label %178

; <label>:176:                                    ; preds = %31, %171
  %177 = phi i64 [ %172, %171 ], [ 0, %31 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %183

; <label>:178:                                    ; preds = %171
  %179 = bitcast i8** %39 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !22
  %181 = ptrtoint i8* %174 to i64
  %182 = sub i64 %180, %181
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %174, i64 %182) #9
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %7) #9
  br label %183

; <label>:183:                                    ; preds = %178, %176
  %184 = phi i64 [ %172, %178 ], [ %177, %176 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %184) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %18) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  ret i32 2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_len(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %5 = load i64, i64* %2, align 8, !tbaa !2
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_lower(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #10
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_tolower_loc() #12
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !29
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add nuw i64 %14, 1
  %24 = load i64, i64* %2, align 8, !tbaa !2
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %13, label %26

; <label>:26:                                     ; preds = %13, %1
  %27 = phi i64 [ 0, %1 ], [ %24, %13 ]
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %27) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_match(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0) #11
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_rep(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #9
  %9 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), i64* nonnull %3) #9
  %10 = icmp slt i64 %8, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #9
  br label %50

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %2, align 8, !tbaa !2
  %15 = load i64, i64* %3, align 8, !tbaa !2
  %16 = add i64 %15, %14
  %17 = icmp ult i64 %16, %14
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %13
  %19 = udiv i64 2147483647, %8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %18, %13
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0)) #9
  br label %50

; <label>:23:                                     ; preds = %18
  %24 = mul i64 %14, %8
  %25 = add nsw i64 %8, -1
  %26 = mul i64 %15, %25
  %27 = add i64 %26, %24
  %28 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %28) #10
  %29 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4, i64 %27) #9
  %30 = icmp sgt i64 %8, 1
  %31 = load i64, i64* %2, align 8, !tbaa !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %7, i64 %31, i32 1, i1 false)
  br i1 %30, label %32, label %49

; <label>:32:                                     ; preds = %23
  br label %33

; <label>:33:                                     ; preds = %32, %45
  %34 = phi i64 [ %36, %45 ], [ %8, %32 ]
  %35 = phi i8* [ %47, %45 ], [ %29, %32 ]
  %36 = add nsw i64 %34, -1
  %37 = load i64, i64* %2, align 8, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* %3, align 8, !tbaa !2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %9, i64 %39, i32 1, i1 false)
  %42 = load i64, i64* %3, align 8, !tbaa !2
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i64, i64* %2, align 8, !tbaa !2
  br label %45

; <label>:45:                                     ; preds = %33, %41
  %46 = phi i64 [ %44, %41 ], [ %37, %33 ]
  %47 = phi i8* [ %43, %41 ], [ %38, %33 ]
  %48 = icmp sgt i64 %34, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %7, i64 %46, i32 1, i1 false)
  br i1 %48, label %33, label %49

; <label>:49:                                     ; preds = %45, %23
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %4, i64 %27) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %28) #10
  br label %50

; <label>:50:                                     ; preds = %11, %49, %21
  %51 = phi i32 [ %22, %21 ], [ 1, %49 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret i32 %51
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_reverse(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #10
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %12
  %13 = phi i64 [ %21, %12 ], [ %9, %11 ]
  %14 = phi i64 [ %20, %12 ], [ 0, %11 ]
  %15 = xor i64 %14, -1
  %16 = add i64 %13, %15
  %17 = getelementptr inbounds i8, i8* %6, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !6
  %19 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %18, i8* %19, align 1, !tbaa !6
  %20 = add i64 %14, 1
  %21 = load i64, i64* %2, align 8, !tbaa !2
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %12, label %23

; <label>:23:                                     ; preds = %12, %1
  %24 = phi i64 [ 0, %1 ], [ %21, %12 ]
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %24) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_sub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #9
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = icmp sgt i64 %5, 0
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i64 %5, 0
  %10 = sub nsw i64 0, %6
  %11 = icmp slt i64 %5, %10
  %12 = or i1 %9, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %8
  %14 = add i64 %6, 1
  %15 = add i64 %14, %5
  br label %16

; <label>:16:                                     ; preds = %1, %8, %13
  %17 = phi i64 [ %15, %13 ], [ %5, %1 ], [ 1, %8 ]
  %18 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #9
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %28, label %20

; <label>:20:                                     ; preds = %16
  %21 = icmp sgt i64 %18, -1
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i64 0, %6
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %22
  %26 = add i64 %6, 1
  %27 = add i64 %26, %18
  br label %28

; <label>:28:                                     ; preds = %16, %20, %22, %25
  %29 = phi i64 [ %27, %25 ], [ %6, %16 ], [ %18, %20 ], [ 0, %22 ]
  %30 = icmp ult i64 %29, %17
  br i1 %30, label %37, label %31

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %4, i64 %17
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = sub i64 1, %17
  %35 = add i64 %34, %29
  %36 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %33, i64 %35) #9
  br label %39

; <label>:37:                                     ; preds = %28
  %38 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #9
  br label %39

; <label>:39:                                     ; preds = %37, %31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_upper(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #10
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_toupper_loc() #12
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !29
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add nuw i64 %14, 1
  %24 = load i64, i64* %2, align 8, !tbaa !2
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %13, label %26

; <label>:26:                                     ; preds = %13, %1
  %27 = phi i64 [ 0, %1 ], [ %24, %13 ]
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %27) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_pack(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = alloca %struct.Header, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.Ftypes, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %11) #10
  %12 = bitcast %struct.Header* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #10
  %13 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #10
  %14 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %14, i8** %4, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %15, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  store i32 1, i32* %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 2
  store i32 1, i32* %17, align 4, !tbaa !33
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #9
  %18 = load i8, i8* %14, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %224, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast i32* %5 to i8*
  %22 = bitcast i32* %6 to i8*
  %23 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %26 = bitcast %union.Ftypes* %7 to i8*
  %27 = bitcast i64* %8 to i8*
  %28 = bitcast i64* %9 to i8*
  %29 = bitcast i64* %10 to i8*
  %30 = bitcast %union.Ftypes* %7 to float*
  %31 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %32

; <label>:32:                                     ; preds = %20, %218
  %33 = phi i32 [ 1, %20 ], [ %220, %218 ]
  %34 = phi i64 [ 0, %20 ], [ %219, %218 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #10
  %35 = call fastcc i32 @getdetails(%struct.Header* nonnull %3, i64 %34, i8** nonnull %4, i32* nonnull %5, i32* nonnull %6) #11
  %36 = load i32, i32* %6, align 4, !tbaa !29
  %37 = load i32, i32* %5, align 4, !tbaa !29
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = add i64 %34, %39
  %41 = add nsw i32 %36, -1
  store i32 %41, i32* %6, align 4, !tbaa !29
  %42 = icmp sgt i32 %36, 0
  br i1 %42, label %43, label %60

; <label>:43:                                     ; preds = %32
  br label %44

; <label>:44:                                     ; preds = %43, %52
  %45 = phi i32 [ %57, %52 ], [ %41, %43 ]
  %46 = load i64, i64* %23, align 8, !tbaa !7
  %47 = load i64, i64* %24, align 8, !tbaa !10
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %44
  %50 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %51 = load i64, i64* %23, align 8, !tbaa !7
  br label %52

; <label>:52:                                     ; preds = %49, %44
  %53 = phi i64 [ %51, %49 ], [ %46, %44 ]
  %54 = load i8*, i8** %25, align 8, !tbaa !11
  %55 = add i64 %53, 1
  store i64 %55, i64* %23, align 8, !tbaa !7
  %56 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8 0, i8* %56, align 1, !tbaa !6
  %57 = add nsw i32 %45, -1
  %58 = icmp sgt i32 %45, 0
  br i1 %58, label %44, label %59

; <label>:59:                                     ; preds = %52
  store i32 %57, i32* %6, align 4, !tbaa !29
  br label %60

; <label>:60:                                     ; preds = %59, %32
  %61 = add nsw i32 %33, 1
  switch i32 %35, label %218 [
    i32 0, label %62
    i32 1, label %80
    i32 2, label %92
    i32 3, label %134
    i32 4, label %164
    i32 5, label %181
    i32 6, label %205
    i32 7, label %217
    i32 8, label %217
  ]

; <label>:62:                                     ; preds = %60
  %63 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %61) #9
  %64 = icmp slt i32 %37, 8
  br i1 %64, label %65, label %76

; <label>:65:                                     ; preds = %62
  %66 = shl i32 %37, 3
  %67 = add nsw i32 %66, -1
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = sub nsw i64 0, %69
  %71 = icmp sge i64 %63, %70
  %72 = icmp slt i64 %63, %69
  %73 = and i1 %71, %72
  br i1 %73, label %76, label %74

; <label>:74:                                     ; preds = %65
  %75 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #9
  br label %76

; <label>:76:                                     ; preds = %74, %65, %62
  %77 = load i32, i32* %16, align 8, !tbaa !32
  %78 = lshr i64 %63, 63
  %79 = trunc i64 %78 to i32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %63, i32 %77, i32 %37, i32 %79) #11
  br label %218

; <label>:80:                                     ; preds = %60
  %81 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %61) #9
  %82 = icmp slt i32 %37, 8
  br i1 %82, label %83, label %90

; <label>:83:                                     ; preds = %80
  %84 = shl nsw i32 %37, 3
  %85 = zext i32 %84 to i64
  %86 = shl i64 1, %85
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %83
  %89 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #9
  br label %90

; <label>:90:                                     ; preds = %83, %88, %80
  %91 = load i32, i32* %16, align 8, !tbaa !32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %81, i32 %91, i32 %37, i32 0) #11
  br label %218

; <label>:92:                                     ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #10
  %93 = sext i32 %37 to i64
  %94 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %93) #9
  %95 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %61) #9
  %96 = icmp eq i32 %37, 4
  br i1 %96, label %97, label %99

; <label>:97:                                     ; preds = %92
  %98 = fptrunc double %95 to float
  store volatile float %98, float* %30, align 8, !tbaa !6
  br label %100

; <label>:99:                                     ; preds = %92
  store volatile double %95, double* %31, align 8, !tbaa !6
  br label %100

; <label>:100:                                    ; preds = %99, %97
  %101 = load i32, i32* %16, align 8, !tbaa !32
  %102 = icmp eq i32 %101, 1
  %103 = icmp eq i32 %37, 0
  br i1 %102, label %104, label %115

; <label>:104:                                    ; preds = %100
  br i1 %103, label %129, label %105

; <label>:105:                                    ; preds = %104
  br label %106

; <label>:106:                                    ; preds = %105, %106
  %107 = phi i8* [ %113, %106 ], [ %94, %105 ]
  %108 = phi i32 [ %110, %106 ], [ %37, %105 ]
  %109 = phi i8* [ %111, %106 ], [ %26, %105 ]
  %110 = add nsw i32 %108, -1
  %111 = getelementptr inbounds i8, i8* %109, i64 1
  %112 = load volatile i8, i8* %109, align 1, !tbaa !6
  %113 = getelementptr inbounds i8, i8* %107, i64 1
  store volatile i8 %112, i8* %107, align 1, !tbaa !6
  %114 = icmp eq i32 %110, 0
  br i1 %114, label %129, label %106

; <label>:115:                                    ; preds = %100
  br i1 %103, label %129, label %116

; <label>:116:                                    ; preds = %115
  %117 = add nsw i32 %37, -1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %94, i64 %118
  br label %120

; <label>:120:                                    ; preds = %120, %116
  %121 = phi i8* [ %119, %116 ], [ %127, %120 ]
  %122 = phi i32 [ %37, %116 ], [ %124, %120 ]
  %123 = phi i8* [ %26, %116 ], [ %125, %120 ]
  %124 = add nsw i32 %122, -1
  %125 = getelementptr inbounds i8, i8* %123, i64 1
  %126 = load volatile i8, i8* %123, align 1, !tbaa !6
  %127 = getelementptr inbounds i8, i8* %121, i64 -1
  store volatile i8 %126, i8* %121, align 1, !tbaa !6
  %128 = icmp eq i32 %124, 0
  br i1 %128, label %129, label %120

; <label>:129:                                    ; preds = %120, %106, %104, %115
  %130 = load i32, i32* %5, align 4, !tbaa !29
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %23, align 8, !tbaa !7
  %133 = add i64 %132, %131
  store i64 %133, i64* %23, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #10
  br label %218

; <label>:134:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #10
  %135 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %8) #9
  %136 = load i64, i64* %8, align 8, !tbaa !2
  %137 = sext i32 %37 to i64
  %138 = icmp ugt i64 %136, %137
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %134
  %140 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0)) #9
  %141 = load i64, i64* %8, align 8, !tbaa !2
  br label %142

; <label>:142:                                    ; preds = %134, %139
  %143 = phi i64 [ %136, %134 ], [ %141, %139 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %135, i64 %143) #9
  %144 = load i64, i64* %8, align 8, !tbaa !2
  %145 = add i64 %144, 1
  store i64 %145, i64* %8, align 8, !tbaa !2
  %146 = icmp ult i64 %144, %137
  br i1 %146, label %147, label %163

; <label>:147:                                    ; preds = %142
  br label %148

; <label>:148:                                    ; preds = %147, %155
  %149 = load i64, i64* %23, align 8, !tbaa !7
  %150 = load i64, i64* %24, align 8, !tbaa !10
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %155, label %152

; <label>:152:                                    ; preds = %148
  %153 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %154 = load i64, i64* %23, align 8, !tbaa !7
  br label %155

; <label>:155:                                    ; preds = %152, %148
  %156 = phi i64 [ %154, %152 ], [ %149, %148 ]
  %157 = load i8*, i8** %25, align 8, !tbaa !11
  %158 = add i64 %156, 1
  store i64 %158, i64* %23, align 8, !tbaa !7
  %159 = getelementptr inbounds i8, i8* %157, i64 %156
  store i8 0, i8* %159, align 1, !tbaa !6
  %160 = load i64, i64* %8, align 8, !tbaa !2
  %161 = add i64 %160, 1
  store i64 %161, i64* %8, align 8, !tbaa !2
  %162 = icmp ult i64 %160, %137
  br i1 %162, label %148, label %163

; <label>:163:                                    ; preds = %155, %142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #10
  br label %218

; <label>:164:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  %165 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %9) #9
  %166 = icmp sgt i32 %37, 7
  br i1 %166, label %175, label %167

; <label>:167:                                    ; preds = %164
  %168 = load i64, i64* %9, align 8, !tbaa !2
  %169 = shl nsw i32 %37, 3
  %170 = zext i32 %169 to i64
  %171 = shl i64 1, %170
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %175, label %173

; <label>:173:                                    ; preds = %167
  %174 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #9
  br label %175

; <label>:175:                                    ; preds = %173, %167, %164
  %176 = load i64, i64* %9, align 8, !tbaa !2
  %177 = load i32, i32* %16, align 8, !tbaa !32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %176, i32 %177, i32 %37, i32 0) #11
  %178 = load i64, i64* %9, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %165, i64 %178) #9
  %179 = load i64, i64* %9, align 8, !tbaa !2
  %180 = add i64 %179, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  br label %218

; <label>:181:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #10
  %182 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %10) #9
  %183 = call i64 @strlen(i8* %182) #13
  %184 = load i64, i64* %10, align 8, !tbaa !2
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %189, label %186

; <label>:186:                                    ; preds = %181
  %187 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9
  %188 = load i64, i64* %10, align 8, !tbaa !2
  br label %189

; <label>:189:                                    ; preds = %186, %181
  %190 = phi i64 [ %188, %186 ], [ %183, %181 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %182, i64 %190) #9
  %191 = load i64, i64* %23, align 8, !tbaa !7
  %192 = load i64, i64* %24, align 8, !tbaa !10
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %197, label %194

; <label>:194:                                    ; preds = %189
  %195 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %196 = load i64, i64* %23, align 8, !tbaa !7
  br label %197

; <label>:197:                                    ; preds = %194, %189
  %198 = phi i64 [ %196, %194 ], [ %191, %189 ]
  %199 = load i8*, i8** %25, align 8, !tbaa !11
  %200 = add i64 %198, 1
  store i64 %200, i64* %23, align 8, !tbaa !7
  %201 = getelementptr inbounds i8, i8* %199, i64 %198
  store i8 0, i8* %201, align 1, !tbaa !6
  %202 = load i64, i64* %10, align 8, !tbaa !2
  %203 = add i64 %40, 1
  %204 = add i64 %203, %202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10
  br label %218

; <label>:205:                                    ; preds = %60
  %206 = load i64, i64* %23, align 8, !tbaa !7
  %207 = load i64, i64* %24, align 8, !tbaa !10
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %212, label %209

; <label>:209:                                    ; preds = %205
  %210 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %211 = load i64, i64* %23, align 8, !tbaa !7
  br label %212

; <label>:212:                                    ; preds = %209, %205
  %213 = phi i64 [ %211, %209 ], [ %206, %205 ]
  %214 = load i8*, i8** %25, align 8, !tbaa !11
  %215 = add i64 %213, 1
  store i64 %215, i64* %23, align 8, !tbaa !7
  %216 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8 0, i8* %216, align 1, !tbaa !6
  br label %217

; <label>:217:                                    ; preds = %60, %60, %212
  br label %218

; <label>:218:                                    ; preds = %60, %217, %197, %175, %163, %129, %90, %76
  %219 = phi i64 [ %40, %60 ], [ %40, %217 ], [ %204, %197 ], [ %180, %175 ], [ %40, %163 ], [ %40, %129 ], [ %40, %90 ], [ %40, %76 ]
  %220 = phi i32 [ %61, %60 ], [ %33, %217 ], [ %61, %197 ], [ %61, %175 ], [ %61, %163 ], [ %61, %129 ], [ %61, %90 ], [ %61, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #10
  %221 = load i8*, i8** %4, align 8, !tbaa !12
  %222 = load i8, i8* %221, align 1, !tbaa !6
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %32

; <label>:224:                                    ; preds = %218, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %11) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_packsize(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #10
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %8, i8** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %10, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %11, align 4, !tbaa !33
  %12 = load i8, i8* %8, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

; <label>:14:                                     ; preds = %1
  %15 = bitcast i32* %4 to i8*
  %16 = bitcast i32* %5 to i8*
  br label %17

; <label>:17:                                     ; preds = %14, %33
  %18 = phi i64 [ 0, %14 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #10
  %19 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %18, i8** nonnull %3, i32* nonnull %4, i32* nonnull %5) #11
  %20 = or i32 %19, 1
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0)) #9
  br label %24

; <label>:24:                                     ; preds = %17, %22
  %25 = load i32, i32* %5, align 4, !tbaa !29
  %26 = load i32, i32* %4, align 4, !tbaa !29
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4, !tbaa !29
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 2147483647, %28
  %30 = icmp ugt i64 %18, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0)) #9
  br label %33

; <label>:33:                                     ; preds = %24, %31
  %34 = add i64 %18, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #10
  %35 = load i8*, i8** %3, align 8, !tbaa !12
  %36 = load i8, i8* %35, align 1, !tbaa !6
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %17

; <label>:38:                                     ; preds = %33, %1
  %39 = phi i64 [ 0, %1 ], [ %34, %33 ]
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %39) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #10
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @str_unpack(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.Ftypes, align 8
  %8 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10
  %9 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %10, i8** %3, align 8, !tbaa !12
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  %12 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #9
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #9
  %14 = load i64, i64* %4, align 8, !tbaa !2
  %15 = icmp sgt i64 %13, 0
  br i1 %15, label %24, label %16

; <label>:16:                                     ; preds = %1
  %17 = icmp eq i64 %13, 0
  %18 = sub nsw i64 0, %14
  %19 = icmp slt i64 %13, %18
  %20 = or i1 %17, %19
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %16
  %22 = add i64 %13, 1
  %23 = add i64 %22, %14
  br label %24

; <label>:24:                                     ; preds = %1, %16, %21
  %25 = phi i64 [ %23, %21 ], [ %13, %1 ], [ 1, %16 ]
  %26 = add i64 %25, -1
  %27 = icmp ugt i64 %26, %14
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %24
  %29 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0)) #9
  br label %30

; <label>:30:                                     ; preds = %24, %28
  %31 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %32, align 8, !tbaa !32
  %33 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %33, align 4, !tbaa !33
  %34 = load i8, i8* %10, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %145, label %36

; <label>:36:                                     ; preds = %30
  %37 = bitcast i32* %5 to i8*
  %38 = bitcast i32* %6 to i8*
  %39 = bitcast %union.Ftypes* %7 to i8*
  %40 = bitcast %union.Ftypes* %7 to float*
  %41 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %42

; <label>:42:                                     ; preds = %36, %137
  %43 = phi i64 [ %26, %36 ], [ %141, %137 ]
  %44 = phi i32 [ 0, %36 ], [ %139, %137 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #10
  %45 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %43, i8** nonnull %3, i32* nonnull %5, i32* nonnull %6) #11
  %46 = load i32, i32* %6, align 4, !tbaa !29
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %5, align 4, !tbaa !29
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = load i64, i64* %4, align 8, !tbaa !2
  %52 = sub i64 %51, %43
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %42
  %55 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #9
  br label %56

; <label>:56:                                     ; preds = %42, %54
  %57 = add i64 %43, %47
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0)) #9
  %58 = add nsw i32 %44, 1
  switch i32 %45, label %137 [
    i32 0, label %59
    i32 1, label %59
    i32 2, label %65
    i32 3, label %106
    i32 4, label %109
    i32 5, label %123
    i32 7, label %136
    i32 6, label %136
    i32 8, label %136
  ]

; <label>:59:                                     ; preds = %56, %56
  %60 = getelementptr inbounds i8, i8* %12, i64 %57
  %61 = load i32, i32* %32, align 8, !tbaa !32
  %62 = icmp eq i32 %45, 0
  %63 = zext i1 %62 to i32
  %64 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %60, i32 %61, i32 %48, i32 %63) #11
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #9
  br label %137

; <label>:65:                                     ; preds = %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %39) #10
  %66 = getelementptr inbounds i8, i8* %12, i64 %57
  %67 = load i32, i32* %32, align 8, !tbaa !32
  %68 = icmp eq i32 %67, 1
  %69 = icmp eq i32 %48, 0
  br i1 %68, label %70, label %81

; <label>:70:                                     ; preds = %65
  br i1 %69, label %95, label %71

; <label>:71:                                     ; preds = %70
  br label %72

; <label>:72:                                     ; preds = %71, %72
  %73 = phi i8* [ %79, %72 ], [ %39, %71 ]
  %74 = phi i32 [ %76, %72 ], [ %48, %71 ]
  %75 = phi i8* [ %77, %72 ], [ %66, %71 ]
  %76 = add nsw i32 %74, -1
  %77 = getelementptr inbounds i8, i8* %75, i64 1
  %78 = load volatile i8, i8* %75, align 1, !tbaa !6
  %79 = getelementptr inbounds i8, i8* %73, i64 1
  store volatile i8 %78, i8* %73, align 1, !tbaa !6
  %80 = icmp eq i32 %76, 0
  br i1 %80, label %95, label %72

; <label>:81:                                     ; preds = %65
  br i1 %69, label %95, label %82

; <label>:82:                                     ; preds = %81
  %83 = add nsw i32 %48, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %39, i64 %84
  br label %86

; <label>:86:                                     ; preds = %86, %82
  %87 = phi i8* [ %85, %82 ], [ %93, %86 ]
  %88 = phi i32 [ %48, %82 ], [ %90, %86 ]
  %89 = phi i8* [ %66, %82 ], [ %91, %86 ]
  %90 = add nsw i32 %88, -1
  %91 = getelementptr inbounds i8, i8* %89, i64 1
  %92 = load volatile i8, i8* %89, align 1, !tbaa !6
  %93 = getelementptr inbounds i8, i8* %87, i64 -1
  store volatile i8 %92, i8* %87, align 1, !tbaa !6
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %95, label %86

; <label>:95:                                     ; preds = %86, %72, %70, %81
  %96 = load i32, i32* %5, align 4, !tbaa !29
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %95
  %99 = load volatile float, float* %40, align 8, !tbaa !6
  %100 = fpext float %99 to double
  br label %103

; <label>:101:                                    ; preds = %95
  %102 = load volatile double, double* %41, align 8, !tbaa !6
  br label %103

; <label>:103:                                    ; preds = %101, %98
  %104 = phi double [ %100, %98 ], [ %102, %101 ]
  call void @lua_pushnumber(%struct.lua_State* %0, double %104) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %39) #10
  %105 = sext i32 %96 to i64
  br label %137

; <label>:106:                                    ; preds = %56
  %107 = getelementptr inbounds i8, i8* %12, i64 %57
  %108 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %107, i64 %49) #9
  br label %137

; <label>:109:                                    ; preds = %56
  %110 = getelementptr inbounds i8, i8* %12, i64 %57
  %111 = load i32, i32* %32, align 8, !tbaa !32
  %112 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %110, i32 %111, i32 %48, i32 0) #11
  %113 = load i64, i64* %4, align 8, !tbaa !2
  %114 = add i64 %57, %49
  %115 = sub i64 %113, %114
  %116 = icmp ugt i64 %112, %115
  br i1 %116, label %117, label %119

; <label>:117:                                    ; preds = %109
  %118 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #9
  br label %119

; <label>:119:                                    ; preds = %109, %117
  %120 = getelementptr inbounds i8, i8* %110, i64 %49
  %121 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %120, i64 %112) #9
  %122 = add i64 %112, %57
  br label %137

; <label>:123:                                    ; preds = %56
  %124 = getelementptr inbounds i8, i8* %12, i64 %57
  %125 = call i64 @strlen(i8* %124) #13
  %126 = shl i64 %125, 32
  %127 = ashr exact i64 %126, 32
  %128 = add i64 %127, %57
  %129 = load i64, i64* %4, align 8, !tbaa !2
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %133, label %131

; <label>:131:                                    ; preds = %123
  %132 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #9
  br label %133

; <label>:133:                                    ; preds = %131, %123
  %134 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %124, i64 %127) #9
  %135 = add i64 %128, 1
  br label %137

; <label>:136:                                    ; preds = %56, %56, %56
  br label %137

; <label>:137:                                    ; preds = %56, %136, %133, %119, %106, %103, %59
  %138 = phi i64 [ %49, %56 ], [ %49, %136 ], [ %49, %133 ], [ %49, %119 ], [ %49, %106 ], [ %105, %103 ], [ %49, %59 ]
  %139 = phi i32 [ %58, %56 ], [ %44, %136 ], [ %58, %133 ], [ %58, %119 ], [ %58, %106 ], [ %58, %103 ], [ %58, %59 ]
  %140 = phi i64 [ %57, %56 ], [ %57, %136 ], [ %135, %133 ], [ %122, %119 ], [ %57, %106 ], [ %57, %103 ], [ %57, %59 ]
  %141 = add i64 %140, %138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #10
  %142 = load i8*, i8** %3, align 8, !tbaa !12
  %143 = load i8, i8* %142, align 1, !tbaa !6
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %42

; <label>:145:                                    ; preds = %137, %30
  %146 = phi i32 [ 0, %30 ], [ %139, %137 ]
  %147 = phi i64 [ %26, %30 ], [ %141, %137 ]
  %148 = add i64 %147, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %148) #9
  %149 = add nsw i32 %146, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10
  ret i32 %149
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #9
  ret i32 0
}

; Function Attrs: optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #9
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #9
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #9
  %11 = load i64, i64* %3, align 8, !tbaa !2
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %2
  %14 = icmp eq i64 %10, 0
  %15 = sub nsw i64 0, %11
  %16 = icmp slt i64 %10, %15
  %17 = or i1 %14, %16
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %13
  %19 = add i64 %10, 1
  %20 = add i64 %19, %11
  br label %21

; <label>:21:                                     ; preds = %2, %13, %18
  %22 = phi i64 [ %20, %18 ], [ %10, %2 ], [ 1, %13 ]
  %23 = add i64 %22, -1
  %24 = icmp ugt i64 %23, %11
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %131

; <label>:26:                                     ; preds = %21
  %27 = icmp ne i32 %1, 0
  br i1 %27, label %28, label %83

; <label>:28:                                     ; preds = %26
  %29 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #9
  %30 = icmp eq i32 %29, 0
  %31 = load i64, i64* %4, align 8, !tbaa !2
  br i1 %30, label %32, label %43

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %32, %38
  %34 = phi i64 [ %41, %38 ], [ 0, %32 ]
  %35 = getelementptr inbounds i8, i8* %9, i64 %34
  %36 = call i8* @strpbrk(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #13
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %83

; <label>:38:                                     ; preds = %33
  %39 = call i64 @strlen(i8* %35) #13
  %40 = add i64 %34, 1
  %41 = add i64 %40, %39
  %42 = icmp ugt i64 %41, %31
  br i1 %42, label %43, label %33

; <label>:43:                                     ; preds = %38, %28
  %44 = getelementptr inbounds i8, i8* %8, i64 %23
  %45 = load i64, i64* %3, align 8, !tbaa !2
  %46 = sub i64 %45, %23
  %47 = icmp eq i64 %31, 0
  br i1 %47, label %73, label %48

; <label>:48:                                     ; preds = %43
  %49 = icmp ugt i64 %31, %46
  br i1 %49, label %130, label %50

; <label>:50:                                     ; preds = %48
  %51 = add i64 %31, -1
  %52 = sub i64 %46, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %130, label %54

; <label>:54:                                     ; preds = %50
  %55 = load i8, i8* %9, align 1, !tbaa !6
  %56 = sext i8 %55 to i32
  %57 = getelementptr inbounds i8, i8* %9, i64 1
  br label %58

; <label>:58:                                     ; preds = %67, %54
  %59 = phi i64 [ %52, %54 ], [ %71, %67 ]
  %60 = phi i8* [ %44, %54 ], [ %64, %67 ]
  %61 = call i8* @memchr(i8* %60, i32 %56, i64 %59) #13
  %62 = icmp eq i8* %61, null
  br i1 %62, label %130, label %63

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %61, i64 1
  %65 = call i32 @memcmp(i8* nonnull %64, i8* nonnull %57, i64 %51) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

; <label>:67:                                     ; preds = %63
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %60 to i64
  %70 = add i64 %59, %69
  %71 = sub i64 %70, %68
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %130, label %58

; <label>:73:                                     ; preds = %43
  %74 = icmp eq i8* %44, null
  br i1 %74, label %130, label %75

; <label>:75:                                     ; preds = %63, %73
  %76 = phi i8* [ %44, %73 ], [ %61, %63 ]
  %77 = ptrtoint i8* %76 to i64
  %78 = ptrtoint i8* %8 to i64
  %79 = sub i64 %77, %78
  %80 = add nsw i64 %79, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %80) #9
  %81 = load i64, i64* %4, align 8, !tbaa !2
  %82 = add i64 %79, %81
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %82) #9
  br label %131

; <label>:83:                                     ; preds = %33, %26
  %84 = bitcast %struct.MatchState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %84) #10
  %85 = getelementptr inbounds i8, i8* %8, i64 %23
  %86 = load i8, i8* %9, align 1, !tbaa !6
  %87 = icmp eq i8 %86, 94
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %83
  %89 = load i64, i64* %4, align 8, !tbaa !2
  br label %94

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds i8, i8* %9, i64 1
  %92 = load i64, i64* %4, align 8, !tbaa !2
  %93 = add i64 %92, -1
  store i64 %93, i64* %4, align 8, !tbaa !2
  br label %94

; <label>:94:                                     ; preds = %88, %90
  %95 = phi i64 [ %93, %90 ], [ %89, %88 ]
  %96 = phi i8* [ %91, %90 ], [ %9, %88 ]
  %97 = load i64, i64* %3, align 8, !tbaa !2
  %98 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %98, align 8, !tbaa !17
  %99 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 4
  store i32 200, i32* %99, align 8, !tbaa !20
  %100 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0
  store i8* %8, i8** %100, align 8, !tbaa !21
  %101 = getelementptr inbounds i8, i8* %8, i64 %97
  %102 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1
  store i8* %101, i8** %102, align 8, !tbaa !22
  %103 = getelementptr inbounds i8, i8* %96, i64 %95
  %104 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2
  store i8* %103, i8** %104, align 8, !tbaa !23
  %105 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 5
  br label %106

; <label>:106:                                    ; preds = %125, %94
  %107 = phi i8* [ %85, %94 ], [ %126, %125 ]
  store i8 0, i8* %105, align 4, !tbaa !28
  %108 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %107, i8* %96) #11
  %109 = icmp eq i8* %108, null
  br i1 %109, label %122, label %110

; <label>:110:                                    ; preds = %106
  br i1 %27, label %111, label %120

; <label>:111:                                    ; preds = %110
  %112 = ptrtoint i8* %107 to i64
  %113 = ptrtoint i8* %8 to i64
  %114 = sub i64 1, %113
  %115 = add i64 %114, %112
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %115) #9
  %116 = ptrtoint i8* %108 to i64
  %117 = sub i64 %116, %113
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %117) #9
  %118 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* null, i8* null) #11
  %119 = add nsw i32 %118, 2
  br label %128

; <label>:120:                                    ; preds = %110
  %121 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* %107, i8* nonnull %108) #11
  br label %128

; <label>:122:                                    ; preds = %106
  %123 = load i8*, i8** %102, align 8, !tbaa !22
  %124 = icmp ult i8* %107, %123
  br i1 %124, label %125, label %127

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds i8, i8* %107, i64 1
  br i1 %87, label %127, label %106

; <label>:127:                                    ; preds = %125, %122
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #10
  br label %130

; <label>:128:                                    ; preds = %111, %120
  %129 = phi i32 [ %121, %120 ], [ %119, %111 ]
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #10
  br label %131

; <label>:130:                                    ; preds = %58, %67, %50, %48, %127, %73
  call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %131

; <label>:131:                                    ; preds = %128, %75, %130, %25
  %132 = phi i32 [ 1, %25 ], [ 1, %130 ], [ %129, %128 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  ret i32 %132
}

; Function Attrs: optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @match(%struct.MatchState*, i8*, i8*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !20
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8, !tbaa !20
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !17
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0)) #9
  br label %12

; <label>:12:                                     ; preds = %8, %3
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8, !tbaa !23
  %15 = icmp eq i8* %14, %2
  br i1 %15, label %241, label %16

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %20 = bitcast i8** %19 to i64*
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  br label %22

; <label>:22:                                     ; preds = %16, %236
  %23 = phi i8* [ %14, %16 ], [ %239, %236 ]
  %24 = phi i8* [ %1, %16 ], [ %238, %236 ]
  %25 = phi i8* [ %2, %16 ], [ %237, %236 ]
  %26 = getelementptr inbounds i8, i8* %24, i64 -1
  br label %30

; <label>:27:                                     ; preds = %143
  %28 = load i8*, i8** %13, align 8, !tbaa !23
  %29 = icmp eq i8* %132, %28
  br i1 %29, label %241, label %30

; <label>:30:                                     ; preds = %22, %27
  %31 = phi i8* [ %23, %22 ], [ %28, %27 ]
  %32 = phi i8* [ %25, %22 ], [ %132, %27 ]
  %33 = load i8, i8* %32, align 1, !tbaa !6
  %34 = sext i8 %33 to i32
  switch i32 %34, label %185 [
    i32 40, label %35
    i32 41, label %44
    i32 36, label %75
    i32 37, label %82
  ]

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds i8, i8* %32, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !6
  %38 = icmp eq i8 %37, 41
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %32, i64 2
  %41 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %40, i32 -2) #11
  br label %241

; <label>:42:                                     ; preds = %35
  %43 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %36, i32 -1) #11
  br label %241

; <label>:44:                                     ; preds = %30
  %45 = getelementptr inbounds i8, i8* %32, i64 1
  %46 = load i8, i8* %21, align 4, !tbaa !28
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %44
  %49 = zext i8 %46 to i64
  br label %52

; <label>:50:                                     ; preds = %52
  %51 = icmp sgt i64 %53, 1
  br i1 %51, label %52, label %58

; <label>:52:                                     ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %54, %50 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %54, i32 1
  %56 = load i64, i64* %55, align 8, !tbaa !34
  %57 = icmp eq i64 %56, -1
  br i1 %57, label %61, label %50

; <label>:58:                                     ; preds = %50, %44
  %59 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !tbaa !17
  %60 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %63

; <label>:61:                                     ; preds = %52
  %62 = trunc i64 %54 to i32
  br label %63

; <label>:63:                                     ; preds = %61, %58
  %64 = phi i32 [ %60, %58 ], [ %62, %61 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %65
  %67 = bitcast %struct.anon* %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !36
  %69 = ptrtoint i8* %24 to i64
  %70 = sub i64 %69, %68
  %71 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %65, i32 1
  store i64 %70, i64* %71, align 8, !tbaa !34
  %72 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %45) #9
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %241

; <label>:74:                                     ; preds = %63
  store i64 -1, i64* %71, align 8, !tbaa !34
  br label %241

; <label>:75:                                     ; preds = %30
  %76 = getelementptr inbounds i8, i8* %32, i64 1
  %77 = icmp eq i8* %76, %31
  br i1 %77, label %78, label %185

; <label>:78:                                     ; preds = %75
  %79 = load i8*, i8** %19, align 8, !tbaa !22
  %80 = icmp eq i8* %24, %79
  %81 = select i1 %80, i8* %24, i8* null
  br label %241

; <label>:82:                                     ; preds = %30
  %83 = getelementptr inbounds i8, i8* %32, i64 1
  %84 = load i8, i8* %83, align 1, !tbaa !6
  %85 = sext i8 %84 to i32
  switch i32 %85, label %185 [
    i32 98, label %86
    i32 102, label %124
    i32 48, label %148
    i32 49, label %148
    i32 50, label %148
    i32 51, label %148
    i32 52, label %148
    i32 53, label %148
    i32 54, label %148
    i32 55, label %148
    i32 56, label %148
    i32 57, label %148
  ]

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds i8, i8* %32, i64 2
  %88 = getelementptr inbounds i8, i8* %31, i64 -1
  %89 = icmp ugt i8* %88, %87
  br i1 %89, label %93, label %90

; <label>:90:                                     ; preds = %86
  %91 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !tbaa !17
  %92 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0)) #9
  br label %93

; <label>:93:                                     ; preds = %90, %86
  %94 = load i8, i8* %24, align 1, !tbaa !6
  %95 = load i8, i8* %87, align 1, !tbaa !6
  %96 = icmp eq i8 %94, %95
  br i1 %96, label %97, label %241

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds i8, i8* %32, i64 3
  %99 = load i8, i8* %98, align 1, !tbaa !6
  %100 = getelementptr inbounds i8, i8* %24, i64 1
  %101 = load i8*, i8** %19, align 8, !tbaa !22
  %102 = icmp ult i8* %100, %101
  br i1 %102, label %103, label %241

; <label>:103:                                    ; preds = %97
  br label %104

; <label>:104:                                    ; preds = %103, %117
  %105 = phi i8* [ %119, %117 ], [ %100, %103 ]
  %106 = phi i32 [ %118, %117 ], [ 1, %103 ]
  %107 = phi i8* [ %105, %117 ], [ %24, %103 ]
  %108 = load i8, i8* %105, align 1, !tbaa !6
  %109 = icmp eq i8 %108, %99
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %104
  %111 = add nsw i32 %106, -1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %117

; <label>:113:                                    ; preds = %104
  %114 = icmp eq i8 %108, %94
  %115 = zext i1 %114 to i32
  %116 = add nsw i32 %106, %115
  br label %117

; <label>:117:                                    ; preds = %113, %110
  %118 = phi i32 [ %111, %110 ], [ %116, %113 ]
  %119 = getelementptr inbounds i8, i8* %105, i64 1
  %120 = icmp ult i8* %119, %101
  br i1 %120, label %104, label %241

; <label>:121:                                    ; preds = %110
  %122 = getelementptr inbounds i8, i8* %107, i64 2
  %123 = getelementptr inbounds i8, i8* %32, i64 4
  br label %236

; <label>:124:                                    ; preds = %82
  %125 = getelementptr inbounds i8, i8* %32, i64 2
  %126 = load i8, i8* %125, align 1, !tbaa !6
  %127 = icmp eq i8 %126, 91
  br i1 %127, label %131, label %128

; <label>:128:                                    ; preds = %124
  %129 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !tbaa !17
  %130 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #9
  br label %131

; <label>:131:                                    ; preds = %124, %128
  %132 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %125) #11
  %133 = load i8*, i8** %17, align 8, !tbaa !21
  %134 = icmp eq i8* %24, %133
  br i1 %134, label %137, label %135

; <label>:135:                                    ; preds = %131
  %136 = load i8, i8* %26, align 1, !tbaa !6
  br label %137

; <label>:137:                                    ; preds = %131, %135
  %138 = phi i8 [ %136, %135 ], [ 0, %131 ]
  %139 = zext i8 %138 to i32
  %140 = getelementptr inbounds i8, i8* %132, i64 -1
  %141 = tail call fastcc i32 @matchbracketclass(i32 %139, i8* nonnull %125, i8* nonnull %140) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %241

; <label>:143:                                    ; preds = %137
  %144 = load i8, i8* %24, align 1, !tbaa !6
  %145 = zext i8 %144 to i32
  %146 = tail call fastcc i32 @matchbracketclass(i32 %145, i8* nonnull %125, i8* nonnull %140) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %241, label %27

; <label>:148:                                    ; preds = %82, %82, %82, %82, %82, %82, %82, %82, %82, %82
  %149 = zext i8 %84 to i32
  %150 = add nsw i32 %149, -49
  %151 = icmp ult i8 %84, 49
  br i1 %151, label %161, label %152

; <label>:152:                                    ; preds = %148
  %153 = load i8, i8* %21, align 4, !tbaa !28
  %154 = zext i8 %153 to i32
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %161

; <label>:156:                                    ; preds = %152
  %157 = sext i32 %150 to i64
  %158 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %157, i32 1
  %159 = load i64, i64* %158, align 8, !tbaa !34
  %160 = icmp eq i64 %159, -1
  br i1 %160, label %161, label %168

; <label>:161:                                    ; preds = %156, %152, %148
  %162 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !tbaa !17
  %163 = add nsw i32 %149, -48
  %164 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %163) #9
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %165, i32 1
  %167 = load i64, i64* %166, align 8, !tbaa !34
  br label %168

; <label>:168:                                    ; preds = %161, %156
  %169 = phi i64 [ %157, %156 ], [ %165, %161 ]
  %170 = phi i64 [ %159, %156 ], [ %167, %161 ]
  %171 = load i64, i64* %20, align 8, !tbaa !22
  %172 = ptrtoint i8* %24 to i64
  %173 = sub i64 %171, %172
  %174 = icmp ult i64 %173, %170
  br i1 %174, label %241, label %175

; <label>:175:                                    ; preds = %168
  %176 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %169, i32 0
  %177 = load i8*, i8** %176, align 8, !tbaa !36
  %178 = tail call i32 @memcmp(i8* %177, i8* %24, i64 %170) #13
  %179 = icmp ne i32 %178, 0
  %180 = getelementptr inbounds i8, i8* %24, i64 %170
  %181 = icmp eq i8* %180, null
  %182 = or i1 %181, %179
  br i1 %182, label %241, label %183

; <label>:183:                                    ; preds = %175
  %184 = getelementptr inbounds i8, i8* %32, i64 2
  br label %236

; <label>:185:                                    ; preds = %30, %82, %75
  %186 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %32) #11
  %187 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %24, i8* nonnull %32, i8* nonnull %186) #11
  %188 = icmp eq i32 %187, 0
  %189 = load i8, i8* %186, align 1, !tbaa !6
  br i1 %188, label %190, label %193

; <label>:190:                                    ; preds = %185
  switch i8 %189, label %241 [
    i8 42, label %191
    i8 63, label %191
    i8 45, label %191
  ]

; <label>:191:                                    ; preds = %190, %190, %190
  %192 = getelementptr inbounds i8, i8* %186, i64 1
  br label %236

; <label>:193:                                    ; preds = %185
  %194 = sext i8 %189 to i32
  switch i32 %194, label %234 [
    i32 63, label %195
    i32 43, label %200
    i32 42, label %202
    i32 45, label %221
  ]

; <label>:195:                                    ; preds = %193
  %196 = getelementptr inbounds i8, i8* %24, i64 1
  %197 = getelementptr inbounds i8, i8* %186, i64 1
  %198 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %196, i8* nonnull %197) #11
  %199 = icmp eq i8* %198, null
  br i1 %199, label %236, label %241

; <label>:200:                                    ; preds = %193
  %201 = getelementptr inbounds i8, i8* %24, i64 1
  br label %202

; <label>:202:                                    ; preds = %193, %200
  %203 = phi i8* [ %201, %200 ], [ %24, %193 ]
  br label %204

; <label>:204:                                    ; preds = %204, %202
  %205 = phi i64 [ 0, %202 ], [ %209, %204 ]
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %206, i8* %32, i8* nonnull %186) #9
  %208 = icmp eq i32 %207, 0
  %209 = add nuw nsw i64 %205, 1
  br i1 %208, label %210, label %204

; <label>:210:                                    ; preds = %204
  %211 = getelementptr inbounds i8, i8* %186, i64 1
  br label %214

; <label>:212:                                    ; preds = %214
  %213 = icmp sgt i64 %220, -1
  br i1 %213, label %214, label %241

; <label>:214:                                    ; preds = %210, %212
  %215 = phi i64 [ %205, %210 ], [ %220, %212 ]
  %216 = getelementptr inbounds i8, i8* %203, i64 %215
  %217 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %216, i8* nonnull %211) #9
  %218 = icmp eq i8* %217, null
  %219 = sext i1 %218 to i64
  %220 = add nsw i64 %215, %219
  br i1 %218, label %212, label %241

; <label>:221:                                    ; preds = %193
  %222 = getelementptr inbounds i8, i8* %186, i64 1
  %223 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %24, i8* nonnull %222) #9
  %224 = icmp eq i8* %223, null
  br i1 %224, label %225, label %241

; <label>:225:                                    ; preds = %221
  br label %229

; <label>:226:                                    ; preds = %229
  %227 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %233, i8* nonnull %222) #9
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %241

; <label>:229:                                    ; preds = %225, %226
  %230 = phi i8* [ %233, %226 ], [ %24, %225 ]
  %231 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %230, i8* %32, i8* nonnull %186) #9
  %232 = icmp eq i32 %231, 0
  %233 = getelementptr inbounds i8, i8* %230, i64 1
  br i1 %232, label %241, label %226

; <label>:234:                                    ; preds = %193
  %235 = getelementptr inbounds i8, i8* %24, i64 1
  br label %236

; <label>:236:                                    ; preds = %191, %195, %234, %183, %121
  %237 = phi i8* [ %123, %121 ], [ %184, %183 ], [ %192, %191 ], [ %197, %195 ], [ %186, %234 ]
  %238 = phi i8* [ %122, %121 ], [ %180, %183 ], [ %24, %191 ], [ %24, %195 ], [ %235, %234 ]
  %239 = load i8*, i8** %13, align 8, !tbaa !23
  %240 = icmp eq i8* %237, %239
  br i1 %240, label %241, label %22

; <label>:241:                                    ; preds = %236, %175, %168, %97, %93, %190, %195, %27, %143, %137, %117, %229, %226, %214, %212, %221, %12, %74, %63, %78, %42, %39
  %242 = phi i8* [ %81, %78 ], [ %41, %39 ], [ %43, %42 ], [ %72, %63 ], [ null, %74 ], [ %1, %12 ], [ %223, %221 ], [ %217, %214 ], [ null, %212 ], [ null, %229 ], [ %227, %226 ], [ null, %117 ], [ null, %137 ], [ null, %143 ], [ %24, %27 ], [ null, %190 ], [ %198, %195 ], [ %238, %236 ], [ null, %93 ], [ null, %97 ], [ null, %175 ], [ null, %168 ]
  %243 = load i32, i32* %4, align 8, !tbaa !20
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 8, !tbaa !20
  ret i8* %242
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @push_captures(%struct.MatchState* nocapture readonly, i8*, i8*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %5 = load i8, i8* %4, align 4, !tbaa !28
  %6 = icmp eq i8 %5, 0
  %7 = icmp ne i8* %1, null
  %8 = and i1 %7, %6
  %9 = zext i8 %5 to i32
  %10 = select i1 %8, i32 1, i32 %9
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !17
  tail call void @luaL_checkstack(%struct.lua_State* %12, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %3
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi i32 [ %17, %15 ], [ 0, %14 ]
  tail call fastcc void @push_onecapture(%struct.MatchState* %0, i32 %16, i8* %1, i8* %2) #11
  %17 = add nuw nsw i32 %16, 1
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %19, label %15

; <label>:19:                                     ; preds = %15, %3
  ret i32 %10
}

; Function Attrs: nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind optsize readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @start_capture(%struct.MatchState*, i8*, i8*, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %6 = load i8, i8* %5, align 4, !tbaa !28
  %7 = icmp ugt i8 %6, 31
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !17
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  br label %12

; <label>:12:                                     ; preds = %8, %4
  %13 = zext i8 %6 to i64
  %14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %13, i32 0
  store i8* %1, i8** %14, align 8, !tbaa !36
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %13, i32 1
  store i64 %15, i64* %16, align 8, !tbaa !34
  %17 = add i8 %6, 1
  store i8 %17, i8* %5, align 4, !tbaa !28
  %18 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %1, i8* %2) #11
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %12
  %21 = load i8, i8* %5, align 4, !tbaa !28
  %22 = add i8 %21, -1
  store i8 %22, i8* %5, align 4, !tbaa !28
  br label %23

; <label>:23:                                     ; preds = %20, %12
  ret i8* %18
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc nonnull i8* @classend(%struct.MatchState* nocapture readonly, i8* readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1
  %4 = load i8, i8* %1, align 1, !tbaa !6
  %5 = sext i8 %4 to i32
  switch i32 %5, label %45 [
    i32 37, label %6
    i32 91, label %16
  ]

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %8 = load i8*, i8** %7, align 8, !tbaa !23
  %9 = icmp eq i8* %3, %8
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !17
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = getelementptr inbounds i8, i8* %1, i64 2
  br label %45

; <label>:16:                                     ; preds = %2
  %17 = load i8, i8* %3, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 94
  %19 = getelementptr inbounds i8, i8* %1, i64 2
  %20 = select i1 %18, i8* %19, i8* %3
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br label %23

; <label>:23:                                     ; preds = %39, %16
  %24 = phi i8* [ %20, %16 ], [ %40, %39 ]
  %25 = load i8*, i8** %21, align 8, !tbaa !23
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !17
  %29 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #9
  br label %30

; <label>:30:                                     ; preds = %27, %23
  %31 = getelementptr inbounds i8, i8* %24, i64 1
  %32 = load i8, i8* %24, align 1, !tbaa !6
  %33 = icmp eq i8 %32, 37
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %21, align 8, !tbaa !23
  %36 = icmp ult i8* %31, %35
  %37 = getelementptr inbounds i8, i8* %24, i64 2
  %38 = select i1 %36, i8* %37, i8* %31
  br label %39

; <label>:39:                                     ; preds = %34, %30
  %40 = phi i8* [ %31, %30 ], [ %38, %34 ]
  %41 = load i8, i8* %40, align 1, !tbaa !6
  %42 = icmp eq i8 %41, 93
  br i1 %42, label %43, label %23

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %40, i64 1
  br label %45

; <label>:45:                                     ; preds = %2, %43, %14
  %46 = phi i8* [ %44, %43 ], [ %15, %14 ], [ %3, %2 ]
  ret i8* %46
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @matchbracketclass(i32, i8* readonly, i8* readnone) unnamed_addr #5 {
  %4 = getelementptr inbounds i8, i8* %1, i64 1
  %5 = load i8, i8* %4, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 94
  %7 = select i1 %6, i8* %4, i8* %1
  %8 = xor i1 %6, true
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds i8, i8* %7, i64 1
  %11 = icmp ult i8* %10, %2
  br i1 %11, label %12, label %43

; <label>:12:                                     ; preds = %3
  br label %13

; <label>:13:                                     ; preds = %12, %39
  %14 = phi i8* [ %41, %39 ], [ %10, %12 ]
  %15 = phi i8* [ %40, %39 ], [ %7, %12 ]
  %16 = load i8, i8* %14, align 1, !tbaa !6
  %17 = icmp eq i8 %16, 37
  %18 = getelementptr inbounds i8, i8* %15, i64 2
  %19 = load i8, i8* %18, align 1, !tbaa !6
  br i1 %17, label %20, label %24

; <label>:20:                                     ; preds = %13
  %21 = zext i8 %19 to i32
  %22 = tail call fastcc i32 @match_class(i32 %0, i32 %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %45

; <label>:24:                                     ; preds = %13
  %25 = icmp eq i8 %19, 45
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds i8, i8* %15, i64 3
  %28 = icmp ult i8* %27, %2
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %26
  %30 = zext i8 %16 to i32
  %31 = icmp sgt i32 %30, %0
  br i1 %31, label %39, label %32

; <label>:32:                                     ; preds = %29
  %33 = load i8, i8* %27, align 1, !tbaa !6
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, %0
  br i1 %35, label %39, label %45

; <label>:36:                                     ; preds = %26, %24
  %37 = zext i8 %16 to i32
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %20, %32, %29, %36
  %40 = phi i8* [ %18, %20 ], [ %27, %32 ], [ %27, %29 ], [ %14, %36 ]
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = icmp ult i8* %41, %2
  br i1 %42, label %13, label %43

; <label>:43:                                     ; preds = %39, %3
  %44 = xor i32 %9, 1
  br label %45

; <label>:45:                                     ; preds = %36, %32, %20, %43
  %46 = phi i32 [ %44, %43 ], [ %9, %20 ], [ %9, %32 ], [ %9, %36 ]
  ret i32 %46
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @singlematch(%struct.MatchState* nocapture readonly, i8* readonly, i8* readonly, i8* readnone) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8, !tbaa !22
  %7 = icmp ugt i8* %6, %1
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %1, align 1, !tbaa !6
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %2, align 1, !tbaa !6
  %12 = sext i8 %11 to i32
  switch i32 %12, label %21 [
    i32 46, label %24
    i32 37, label %13
    i32 91, label %18
  ]

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds i8, i8* %2, i64 1
  %15 = load i8, i8* %14, align 1, !tbaa !6
  %16 = zext i8 %15 to i32
  %17 = tail call fastcc i32 @match_class(i32 %10, i32 %16) #11
  br label %24

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %3, i64 -1
  %20 = tail call fastcc i32 @matchbracketclass(i32 %10, i8* nonnull %2, i8* nonnull %19) #11
  br label %24

; <label>:21:                                     ; preds = %8
  %22 = icmp eq i8 %11, %9
  %23 = zext i1 %22 to i32
  br label %24

; <label>:24:                                     ; preds = %13, %18, %21, %8, %4
  %25 = phi i32 [ 0, %4 ], [ %23, %21 ], [ %20, %18 ], [ %17, %13 ], [ 1, %8 ]
  ret i32 %25
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #5 {
  %3 = tail call i32 @tolower(i32 %1) #13
  switch i32 %3, label %88 [
    i32 97, label %4
    i32 99, label %12
    i32 100, label %20
    i32 103, label %28
    i32 108, label %36
    i32 112, label %44
    i32 115, label %52
    i32 117, label %60
    i32 119, label %68
    i32 120, label %76
    i32 122, label %84
  ]

; <label>:4:                                      ; preds = %2
  %5 = tail call i16** @__ctype_b_loc() #12
  %6 = load i16*, i16** %5, align 8, !tbaa !12
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i16, i16* %6, i64 %7
  %9 = load i16, i16* %8, align 2, !tbaa !13
  %10 = and i16 %9, 1024
  %11 = zext i16 %10 to i32
  br label %91

; <label>:12:                                     ; preds = %2
  %13 = tail call i16** @__ctype_b_loc() #12
  %14 = load i16*, i16** %13, align 8, !tbaa !12
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2, !tbaa !13
  %18 = and i16 %17, 2
  %19 = zext i16 %18 to i32
  br label %91

; <label>:20:                                     ; preds = %2
  %21 = tail call i16** @__ctype_b_loc() #12
  %22 = load i16*, i16** %21, align 8, !tbaa !12
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i16, i16* %22, i64 %23
  %25 = load i16, i16* %24, align 2, !tbaa !13
  %26 = and i16 %25, 2048
  %27 = zext i16 %26 to i32
  br label %91

; <label>:28:                                     ; preds = %2
  %29 = tail call i16** @__ctype_b_loc() #12
  %30 = load i16*, i16** %29, align 8, !tbaa !12
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds i16, i16* %30, i64 %31
  %33 = load i16, i16* %32, align 2, !tbaa !13
  %34 = and i16 %33, -32768
  %35 = zext i16 %34 to i32
  br label %91

; <label>:36:                                     ; preds = %2
  %37 = tail call i16** @__ctype_b_loc() #12
  %38 = load i16*, i16** %37, align 8, !tbaa !12
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  %41 = load i16, i16* %40, align 2, !tbaa !13
  %42 = and i16 %41, 512
  %43 = zext i16 %42 to i32
  br label %91

; <label>:44:                                     ; preds = %2
  %45 = tail call i16** @__ctype_b_loc() #12
  %46 = load i16*, i16** %45, align 8, !tbaa !12
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i16, i16* %46, i64 %47
  %49 = load i16, i16* %48, align 2, !tbaa !13
  %50 = and i16 %49, 4
  %51 = zext i16 %50 to i32
  br label %91

; <label>:52:                                     ; preds = %2
  %53 = tail call i16** @__ctype_b_loc() #12
  %54 = load i16*, i16** %53, align 8, !tbaa !12
  %55 = sext i32 %0 to i64
  %56 = getelementptr inbounds i16, i16* %54, i64 %55
  %57 = load i16, i16* %56, align 2, !tbaa !13
  %58 = and i16 %57, 8192
  %59 = zext i16 %58 to i32
  br label %91

; <label>:60:                                     ; preds = %2
  %61 = tail call i16** @__ctype_b_loc() #12
  %62 = load i16*, i16** %61, align 8, !tbaa !12
  %63 = sext i32 %0 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  %65 = load i16, i16* %64, align 2, !tbaa !13
  %66 = and i16 %65, 256
  %67 = zext i16 %66 to i32
  br label %91

; <label>:68:                                     ; preds = %2
  %69 = tail call i16** @__ctype_b_loc() #12
  %70 = load i16*, i16** %69, align 8, !tbaa !12
  %71 = sext i32 %0 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !13
  %74 = and i16 %73, 8
  %75 = zext i16 %74 to i32
  br label %91

; <label>:76:                                     ; preds = %2
  %77 = tail call i16** @__ctype_b_loc() #12
  %78 = load i16*, i16** %77, align 8, !tbaa !12
  %79 = sext i32 %0 to i64
  %80 = getelementptr inbounds i16, i16* %78, i64 %79
  %81 = load i16, i16* %80, align 2, !tbaa !13
  %82 = and i16 %81, 4096
  %83 = zext i16 %82 to i32
  br label %91

; <label>:84:                                     ; preds = %2
  %85 = icmp eq i32 %0, 0
  %86 = zext i1 %85 to i32
  %87 = tail call i16** @__ctype_b_loc() #12
  br label %91

; <label>:88:                                     ; preds = %2
  %89 = icmp eq i32 %1, %0
  %90 = zext i1 %89 to i32
  br label %103

; <label>:91:                                     ; preds = %84, %76, %68, %60, %52, %44, %36, %28, %20, %12, %4
  %92 = phi i16** [ %87, %84 ], [ %77, %76 ], [ %69, %68 ], [ %61, %60 ], [ %53, %52 ], [ %45, %44 ], [ %37, %36 ], [ %29, %28 ], [ %21, %20 ], [ %13, %12 ], [ %5, %4 ]
  %93 = phi i32 [ %86, %84 ], [ %83, %76 ], [ %75, %68 ], [ %67, %60 ], [ %59, %52 ], [ %51, %44 ], [ %43, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ], [ %11, %4 ]
  %94 = load i16*, i16** %92, align 8, !tbaa !12
  %95 = sext i32 %1 to i64
  %96 = getelementptr inbounds i16, i16* %94, i64 %95
  %97 = load i16, i16* %96, align 2, !tbaa !13
  %98 = and i16 %97, 512
  %99 = icmp eq i16 %98, 0
  %100 = icmp eq i32 %93, 0
  %101 = zext i1 %100 to i32
  %102 = select i1 %99, i32 %101, i32 %93
  br label %103

; <label>:103:                                    ; preds = %91, %88
  %104 = phi i32 [ %90, %88 ], [ %102, %91 ]
  ret i32 %104
}

; Function Attrs: nounwind optsize readonly
declare i32 @tolower(i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = call fastcc i64 @get_onecapture(%struct.MatchState* %0, i32 %1, i8* %2, i8* %3, i8** nonnull %5) #11
  %8 = icmp eq i64 %7, -2
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !17
  %12 = load i8*, i8** %5, align 8, !tbaa !12
  %13 = tail call i8* @lua_pushlstring(%struct.lua_State* %11, i8* %12, i64 %7) #9
  br label %14

; <label>:14:                                     ; preds = %4, %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @get_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*, i8** nocapture) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %7 = load i8, i8* %6, align 4, !tbaa !28
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %21, label %10

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !17
  %15 = add nsw i32 %1, 1
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %15) #9
  br label %17

; <label>:17:                                     ; preds = %10, %12
  store i8* %2, i8** %4, align 8, !tbaa !12
  %18 = ptrtoint i8* %3 to i64
  %19 = ptrtoint i8* %2 to i64
  %20 = sub i64 %18, %19
  br label %41

; <label>:21:                                     ; preds = %5
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %22, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %22, i32 0
  %26 = bitcast i8** %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !36
  %28 = bitcast i8** %4 to i64*
  store i64 %27, i64* %28, align 8, !tbaa !12
  switch i64 %24, label %41 [
    i64 -1, label %29
    i64 -2, label %33
  ]

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !17
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %41

; <label>:33:                                     ; preds = %21
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %36 = load i64, i64* %26, align 8, !tbaa !36
  %37 = bitcast %struct.MatchState* %0 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !21
  %39 = add i64 %36, 1
  %40 = sub i64 %39, %38
  tail call void @lua_pushinteger(%struct.lua_State* %35, i64 %40) #9
  br label %41

; <label>:41:                                     ; preds = %29, %33, %21, %17
  %42 = phi i64 [ %20, %17 ], [ %24, %21 ], [ -2, %33 ], [ -1, %29 ]
  ret i64 %42
}

; Function Attrs: optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addlenmod(i8*, i8* nocapture readonly) unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %0) #13
  %4 = tail call i64 @strlen(i8* %1) #13
  %5 = add i64 %3, -1
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, i8* %0, i64 %3
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  %10 = tail call i8* @strcpy(i8* nonnull %9, i8* %1) #9
  %11 = add i64 %4, %3
  %12 = add i64 %11, -1
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 %7, i8* %13, align 1, !tbaa !6
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  store i8 0, i8* %14, align 1, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #8

; Function Attrs: optsize
declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare %struct.lconv* @localeconv() local_unnamed_addr #7

; Function Attrs: optsize
declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @gmatch_aux(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001003) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 24
  %4 = bitcast i8* %3 to %struct.MatchState*
  %5 = getelementptr inbounds i8, i8* %2, i64 48
  %6 = bitcast i8* %5 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !tbaa !37
  %7 = bitcast i8* %2 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !38
  %12 = icmp ugt i8* %8, %11
  br i1 %12, label %33, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 60
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i8**
  %17 = getelementptr inbounds i8, i8* %2, i64 16
  %18 = bitcast i8* %17 to i8**
  br label %19

; <label>:19:                                     ; preds = %13, %29
  %20 = phi i8* [ %8, %13 ], [ %30, %29 ]
  store i8 0, i8* %14, align 4, !tbaa !28
  %21 = load i8*, i8** %16, align 8, !tbaa !26
  %22 = tail call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %20, i8* %21) #11
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %18, align 8, !tbaa !27
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  store i8* %22, i8** %18, align 8, !tbaa !27
  store i8* %22, i8** %7, align 8, !tbaa !24
  %28 = tail call fastcc i32 @push_captures(%struct.MatchState* nonnull %4, i8* %20, i8* nonnull %22) #11
  br label %33

; <label>:29:                                     ; preds = %24, %19
  %30 = getelementptr inbounds i8, i8* %20, i64 1
  %31 = load i8*, i8** %10, align 8, !tbaa !38
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %19

; <label>:33:                                     ; preds = %29, %1, %27
  %34 = phi i32 [ %28, %27 ], [ 0, %1 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @getdetails(%struct.Header* nocapture, i64, i8** nocapture, i32* nocapture, i32* nocapture) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @getoption(%struct.Header* %0, i8** %2, i32* %3) #11
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  %9 = load i32, i32* %3, align 4, !tbaa !29
  store i32 %9, i32* %6, align 4, !tbaa !29
  %10 = icmp eq i32 %7, 7
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %5
  %12 = load i8*, i8** %2, align 8, !tbaa !12
  %13 = load i8, i8* %12, align 1, !tbaa !6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %11
  %16 = call fastcc i32 @getoption(%struct.Header* %0, i8** nonnull %2, i32* nonnull %6) #11
  %17 = icmp eq i32 %16, 3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %15, %11
  %22 = phi i32 [ %18, %15 ], [ %9, %11 ]
  %23 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !30
  %25 = tail call i32 @luaL_argerror(%struct.lua_State* %24, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0)) #9
  br label %26

; <label>:26:                                     ; preds = %21, %15, %5
  %27 = phi i32 [ %22, %21 ], [ %18, %15 ], [ %9, %5 ]
  %28 = icmp slt i32 %27, 2
  %29 = icmp eq i32 %7, 3
  %30 = or i1 %29, %28
  br i1 %30, label %50, label %31

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  %33 = load i32, i32* %32, align 4, !tbaa !33
  %34 = icmp sgt i32 %27, %33
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  store i32 %33, i32* %6, align 4, !tbaa !29
  br label %36

; <label>:36:                                     ; preds = %35, %31
  %37 = phi i32 [ %33, %35 ], [ %27, %31 ]
  %38 = add nsw i32 %37, -1
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %43 = load %struct.lua_State*, %struct.lua_State** %42, align 8, !tbaa !30
  %44 = tail call i32 @luaL_argerror(%struct.lua_State* %43, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #9
  br label %45

; <label>:45:                                     ; preds = %36, %41
  %46 = trunc i64 %1 to i32
  %47 = and i32 %38, %46
  %48 = sub nsw i32 %37, %47
  %49 = and i32 %48, %38
  br label %50

; <label>:50:                                     ; preds = %26, %45
  %51 = phi i32 [ %49, %45 ], [ 0, %26 ]
  store i32 %51, i32* %4, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @packint(%struct.luaL_Buffer*, i64, i32, i32, i32) unnamed_addr #0 {
  %6 = sext i32 %3 to i64
  %7 = tail call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %0, i64 %6) #9
  %8 = trunc i64 %1 to i8
  %9 = icmp ne i32 %2, 0
  %10 = add nsw i32 %3, -1
  %11 = sext i32 %10 to i64
  %12 = select i1 %9, i64 0, i64 %11
  %13 = getelementptr inbounds i8, i8* %7, i64 %12
  store i8 %8, i8* %13, align 1, !tbaa !6
  %14 = icmp sgt i32 %3, 1
  br i1 %14, label %15, label %40

; <label>:15:                                     ; preds = %5
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi i32 [ %25, %16 ], [ 1, %15 ]
  %18 = phi i64 [ %19, %16 ], [ %1, %15 ]
  %19 = lshr i64 %18, 8
  %20 = trunc i64 %19 to i8
  %21 = sub nsw i32 %10, %17
  %22 = select i1 %9, i32 %17, i32 %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %7, i64 %23
  store i8 %20, i8* %24, align 1, !tbaa !6
  %25 = add nuw nsw i32 %17, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %27, label %16

; <label>:27:                                     ; preds = %16
  %28 = icmp ne i32 %4, 0
  %29 = icmp sgt i32 %3, 8
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i32 [ %38, %32 ], [ 8, %31 ]
  %34 = sub nsw i32 %10, %33
  %35 = select i1 %9, i32 %33, i32 %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %7, i64 %36
  store i8 -1, i8* %37, align 1, !tbaa !6
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, %3
  br i1 %39, label %40, label %32

; <label>:40:                                     ; preds = %32, %5, %27
  %41 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %42 = load i64, i64* %41, align 8, !tbaa !7
  %43 = add i64 %42, %6
  store i64 %43, i64* %41, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @getoption(%struct.Header* nocapture, i8** nocapture, i32* nocapture) unnamed_addr #0 {
  %4 = load i8*, i8** %1, align 8, !tbaa !12
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %5, i8** %1, align 8, !tbaa !12
  %6 = load i8, i8* %4, align 1, !tbaa !6
  %7 = sext i8 %6 to i32
  store i32 0, i32* %2, align 4, !tbaa !29
  switch i32 %7, label %65 [
    i32 98, label %8
    i32 66, label %9
    i32 104, label %10
    i32 72, label %11
    i32 108, label %12
    i32 76, label %13
    i32 106, label %14
    i32 74, label %15
    i32 84, label %16
    i32 102, label %17
    i32 100, label %18
    i32 110, label %19
    i32 105, label %20
    i32 73, label %22
    i32 115, label %24
    i32 99, label %26
    i32 122, label %70
    i32 120, label %54
    i32 88, label %55
    i32 32, label %69
    i32 60, label %56
    i32 62, label %58
    i32 61, label %60
    i32 33, label %62
  ]

; <label>:8:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:9:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:10:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:11:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:12:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:13:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:14:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:15:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:16:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:17:                                     ; preds = %3
  store i32 4, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:18:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:19:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:20:                                     ; preds = %3
  %21 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4) #11
  store i32 %21, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:22:                                     ; preds = %3
  %23 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4) #11
  store i32 %23, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:24:                                     ; preds = %3
  %25 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8) #11
  store i32 %25, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:26:                                     ; preds = %3
  %27 = load i8, i8* %5, align 1, !tbaa !6
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ugt i32 %29, 9
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %26
  br label %33

; <label>:32:                                     ; preds = %26
  store i32 -1, i32* %2, align 4, !tbaa !29
  br label %50

; <label>:33:                                     ; preds = %31, %33
  %34 = phi i8* [ %37, %33 ], [ %5, %31 ]
  %35 = phi i32 [ %41, %33 ], [ 0, %31 ]
  %36 = mul nsw i32 %35, 10
  %37 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %37, i8** %1, align 8, !tbaa !12
  %38 = load i8, i8* %34, align 1, !tbaa !6
  %39 = sext i8 %38 to i32
  %40 = add i32 %36, -48
  %41 = add i32 %40, %39
  %42 = load i8, i8* %37, align 1, !tbaa !6
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  %46 = icmp slt i32 %41, 214748364
  %47 = and i1 %46, %45
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %33
  store i32 %41, i32* %2, align 4, !tbaa !29
  %49 = icmp eq i32 %41, -1
  br i1 %49, label %50, label %70

; <label>:50:                                     ; preds = %32, %48
  %51 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %52 = load %struct.lua_State*, %struct.lua_State** %51, align 8, !tbaa !30
  %53 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0)) #9
  br label %70

; <label>:54:                                     ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %70

; <label>:55:                                     ; preds = %3
  br label %70

; <label>:56:                                     ; preds = %3
  %57 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %57, align 8, !tbaa !32
  br label %69

; <label>:58:                                     ; preds = %3
  %59 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 0, i32* %59, align 8, !tbaa !32
  br label %69

; <label>:60:                                     ; preds = %3
  %61 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %61, align 8, !tbaa !32
  br label %69

; <label>:62:                                     ; preds = %3
  %63 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8) #11
  %64 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  store i32 %63, i32* %64, align 4, !tbaa !33
  br label %69

; <label>:65:                                     ; preds = %3
  %66 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %67 = load %struct.lua_State*, %struct.lua_State** %66, align 8, !tbaa !30
  %68 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 %7) #9
  br label %69

; <label>:69:                                     ; preds = %65, %62, %60, %58, %56, %3
  br label %70

; <label>:70:                                     ; preds = %3, %48, %50, %69, %55, %54, %24, %22, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %71 = phi i32 [ 8, %69 ], [ 7, %55 ], [ 6, %54 ], [ 4, %24 ], [ 1, %22 ], [ 0, %20 ], [ 2, %19 ], [ 2, %18 ], [ 2, %17 ], [ 1, %16 ], [ 1, %15 ], [ 0, %14 ], [ 1, %13 ], [ 0, %12 ], [ 1, %11 ], [ 0, %10 ], [ 1, %9 ], [ 0, %8 ], [ 3, %50 ], [ 3, %48 ], [ 5, %3 ]
  ret i32 %71
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @getnumlimit(%struct.Header* nocapture readonly, i8** nocapture, i32) unnamed_addr #0 {
  %4 = load i8*, i8** %1, align 8, !tbaa !12
  %5 = load i8, i8* %4, align 1, !tbaa !6
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %6, -48
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %25, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi i8* [ %14, %10 ], [ %4, %9 ]
  %12 = phi i32 [ %18, %10 ], [ 0, %9 ]
  %13 = mul nsw i32 %12, 10
  %14 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %14, i8** %1, align 8, !tbaa !12
  %15 = load i8, i8* %11, align 1, !tbaa !6
  %16 = sext i8 %15 to i32
  %17 = add i32 %13, -48
  %18 = add i32 %17, %16
  %19 = load i8, i8* %14, align 1, !tbaa !6
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 %20, -48
  %22 = icmp ult i32 %21, 10
  %23 = icmp slt i32 %18, 214748364
  %24 = and i1 %23, %22
  br i1 %24, label %10, label %25

; <label>:25:                                     ; preds = %10, %3
  %26 = phi i32 [ %2, %3 ], [ %18, %10 ]
  %27 = add i32 %26, -1
  %28 = icmp ugt i32 %27, 15
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !30
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %26, i32 16) #9
  br label %33

; <label>:33:                                     ; preds = %25, %29
  %34 = phi i32 [ %32, %29 ], [ %26, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @unpackint(%struct.lua_State*, i8* nocapture readonly, i32, i32, i32) unnamed_addr #0 {
  %6 = icmp slt i32 %3, 8
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i32 %2, 0
  %10 = add nsw i32 %3, -1
  %11 = select i1 %6, i32 %3, i32 8
  br label %12

; <label>:12:                                     ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ %11, %8 ]
  %14 = phi i64 [ %24, %12 ], [ 0, %8 ]
  %15 = add nsw i32 %13, -1
  %16 = shl i64 %14, 8
  %17 = sub i32 1, %13
  %18 = add i32 %10, %17
  %19 = select i1 %9, i32 %18, i32 %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %1, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  %24 = or i64 %16, %23
  %25 = icmp sgt i32 %13, 1
  br i1 %25, label %12, label %26

; <label>:26:                                     ; preds = %12, %5
  %27 = phi i64 [ 0, %5 ], [ %24, %12 ]
  br i1 %6, label %28, label %37

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %60, label %30

; <label>:30:                                     ; preds = %28
  %31 = shl i32 %3, 3
  %32 = add nsw i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = shl i64 1, %33
  %35 = xor i64 %27, %34
  %36 = sub i64 %35, %34
  br label %60

; <label>:37:                                     ; preds = %26
  %38 = icmp eq i32 %3, 8
  br i1 %38, label %60, label %39

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i32 %4, 0
  %41 = icmp sgt i64 %27, -1
  %42 = or i1 %40, %41
  %43 = select i1 %42, i32 0, i32 255
  %44 = icmp eq i32 %2, 0
  %45 = add nsw i32 %3, -1
  br label %46

; <label>:46:                                     ; preds = %57, %39
  %47 = phi i32 [ 8, %39 ], [ %58, %57 ]
  %48 = sub i32 %45, %47
  %49 = select i1 %44, i32 %48, i32 %47
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %1, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %43, %53
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %46
  %56 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %3) #9
  br label %57

; <label>:57:                                     ; preds = %46, %55
  %58 = add nuw nsw i32 %47, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %46

; <label>:60:                                     ; preds = %57, %28, %37, %30
  %61 = phi i64 [ %36, %30 ], [ %27, %28 ], [ %27, %37 ], [ %27, %57 ]
  ret i64 %61
}

; Function Attrs: optsize
declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_add(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_sub(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_mul(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_mod(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_pow(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_div(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_idiv(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @arith_unm(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #11
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @arith(%struct.lua_State*, i32, i8*) unnamed_addr #0 {
  %4 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 1) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 2) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  tail call void @lua_arith(%struct.lua_State* %0, i32 %1) #9
  br label %24

; <label>:10:                                     ; preds = %6, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #9
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #9
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 2, i8* %2) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %13, %10
  %17 = getelementptr inbounds i8, i8* %2, i64 2
  %18 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #9
  %19 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %18) #9
  %20 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #9
  %21 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %20) #9
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %17, i8* %19, i8* %21) #9
  br label %23

; <label>:23:                                     ; preds = %13, %16
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -3, i32 1) #9
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %24

; <label>:24:                                     ; preds = %23, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @tonum(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #9
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #9
  br label %19

; <label>:7:                                      ; preds = %2
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* nonnull %3) #9
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %7
  %12 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %9) #9
  %13 = load i64, i64* %3, align 8, !tbaa !2
  %14 = add i64 %13, 1
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  br label %17

; <label>:17:                                     ; preds = %7, %11
  %18 = phi i32 [ 0, %7 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  br label %19

; <label>:19:                                     ; preds = %17, %6
  %20 = phi i32 [ 1, %6 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare void @lua_arith(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readnone }
attributes #13 = { nounwind optsize readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 16}
!8 = !{!"luaL_Buffer", !9, i64 0, !3, i64 8, !3, i64 16, !9, i64 24, !4, i64 32}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!8, !3, i64 8}
!11 = !{!8, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"lconv", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !4, i64 84, !4, i64 85, !4, i64 86, !4, i64 87, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93}
!17 = !{!18, !9, i64 24}
!18 = !{!"MatchState", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !19, i64 32, !4, i64 36, !4, i64 40}
!19 = !{!"int", !4, i64 0}
!20 = !{!18, !19, i64 32}
!21 = !{!18, !9, i64 0}
!22 = !{!18, !9, i64 8}
!23 = !{!18, !9, i64 16}
!24 = !{!25, !9, i64 0}
!25 = !{!"GMatchState", !9, i64 0, !9, i64 8, !9, i64 16, !18, i64 24}
!26 = !{!25, !9, i64 8}
!27 = !{!25, !9, i64 16}
!28 = !{!18, !4, i64 36}
!29 = !{!19, !19, i64 0}
!30 = !{!31, !9, i64 0}
!31 = !{!"Header", !9, i64 0, !19, i64 8, !19, i64 12}
!32 = !{!31, !19, i64 8}
!33 = !{!31, !19, i64 12}
!34 = !{!35, !3, i64 8}
!35 = !{!"", !9, i64 0, !3, i64 8}
!36 = !{!35, !9, i64 0}
!37 = !{!25, !9, i64 48}
!38 = !{!25, !9, i64 32}
