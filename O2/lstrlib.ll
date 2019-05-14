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

; Function Attrs: nounwind uwtable
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

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @str_byte(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @str_char(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #9
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_dump(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %3) #9
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @str_find(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_format(%struct.lua_State*) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9
  %9 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #9
  %11 = load i64, i64* %4, align 8, !tbaa !2
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %13) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #9
  %14 = icmp sgt i64 %11, 0
  br i1 %14, label %15, label %384

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

; <label>:25:                                     ; preds = %15, %380
  %26 = phi i32 [ 1, %15 ], [ %382, %380 ]
  %27 = phi i8* [ %10, %15 ], [ %381, %380 ]
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
  br label %380

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
  br label %380

; <label>:64:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #9
  %65 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #9
  %66 = add nsw i32 %26, 1
  %67 = icmp slt i32 %26, %8
  br i1 %67, label %70, label %68

; <label>:68:                                     ; preds = %64
  %69 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #9
  br label %373

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
  %100 = tail call i16** @__ctype_b_loc() #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %20, i8* nonnull %46, i64 %151, i32 1, i1 false) #9
  %152 = getelementptr inbounds i8, i8* %20, i64 %151
  store i8 0, i8* %152, align 1, !tbaa !6
  %153 = getelementptr inbounds i8, i8* %140, i64 1
  %154 = load i8, i8* %140, align 1, !tbaa !6
  %155 = sext i8 %154 to i32
  switch i32 %155, label %371 [
    i32 99, label %156
    i32 100, label %160
    i32 105, label %160
    i32 111, label %160
    i32 117, label %160
    i32 120, label %160
    i32 88, label %160
    i32 97, label %173
    i32 65, label %173
    i32 101, label %182
    i32 69, label %182
    i32 102, label %182
    i32 103, label %182
    i32 71, label %182
    i32 112, label %201
    i32 113, label %204
    i32 115, label %348
  ]

; <label>:156:                                    ; preds = %148
  %157 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %66) #9
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i32 %158) #9
  br label %375

; <label>:160:                                    ; preds = %148, %148, %148, %148, %148, %148
  %161 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %66) #9
  %162 = call i64 @strlen(i8* nonnull %18) #11
  %163 = add i64 %162, -1
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1, !tbaa !6
  %166 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %162
  %167 = getelementptr inbounds i8, i8* %166, i64 -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i64 3, i32 1, i1 false)
  %168 = add i64 %162, 2
  %169 = add i64 %162, 1
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %169
  store i8 %165, i8* %170, align 1, !tbaa !6
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %168
  store i8 0, i8* %171, align 1, !tbaa !6
  %172 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i64 %161) #9
  br label %375

; <label>:173:                                    ; preds = %148, %148
  %174 = call i64 @strlen(i8* nonnull %18) #11
  %175 = add i64 %174, -1
  %176 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1, !tbaa !6
  %178 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %174
  %179 = getelementptr inbounds i8, i8* %178, i64 -1
  store i8 0, i8* %179, align 1
  store i8 %177, i8* %176, align 1, !tbaa !6
  store i8 0, i8* %178, align 1, !tbaa !6
  %180 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %66) #9
  %181 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, double %180) #9
  br label %375

; <label>:182:                                    ; preds = %148, %148, %148, %148, %148
  %183 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %66) #9
  %184 = load i8, i8* %140, align 1, !tbaa !6
  %185 = icmp ne i8 %184, 102
  %186 = call double @llvm.fabs.f64(double %183)
  %187 = fcmp ult double %186, 1.000000e+100
  %188 = or i1 %185, %187
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %182
  %190 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 418) #9
  br label %191

; <label>:191:                                    ; preds = %182, %189
  %192 = phi i8* [ %190, %189 ], [ %65, %182 ]
  %193 = phi i64 [ 418, %189 ], [ 120, %182 ]
  %194 = call i64 @strlen(i8* nonnull %18) #11
  %195 = add i64 %194, -1
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1, !tbaa !6
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %194
  %199 = getelementptr inbounds i8, i8* %198, i64 -1
  store i8 0, i8* %199, align 1
  store i8 %197, i8* %196, align 1, !tbaa !6
  store i8 0, i8* %198, align 1, !tbaa !6
  %200 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %192, i64 %193, i8* nonnull %18, double %183) #9
  br label %375

; <label>:201:                                    ; preds = %148
  %202 = call i8* @lua_topointer(%struct.lua_State* %0, i32 %66) #9
  %203 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i8* %202) #9
  br label %375

; <label>:204:                                    ; preds = %148
  %205 = load i8, i8* %21, align 2, !tbaa !6
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

; <label>:207:                                    ; preds = %204
  %208 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #9
  br label %373

; <label>:209:                                    ; preds = %204
  %210 = call i32 @lua_type(%struct.lua_State* %0, i32 %66) #9
  switch i32 %210, label %346 [
    i32 4, label %211
    i32 3, label %306
    i32 0, label %344
    i32 1, label %344
  ]

; <label>:211:                                    ; preds = %209
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #9
  %212 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %66, i64* nonnull %3) #9
  %213 = load i64, i64* %3, align 8, !tbaa !2
  %214 = load i64, i64* %16, align 8, !tbaa !7
  %215 = load i64, i64* %17, align 8, !tbaa !10
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %220, label %217

; <label>:217:                                    ; preds = %211
  %218 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %219 = load i64, i64* %16, align 8, !tbaa !7
  br label %220

; <label>:220:                                    ; preds = %217, %211
  %221 = phi i64 [ %219, %217 ], [ %214, %211 ]
  %222 = load i8*, i8** %19, align 8, !tbaa !11
  %223 = add i64 %221, 1
  store i64 %223, i64* %16, align 8, !tbaa !7
  %224 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8 34, i8* %224, align 1, !tbaa !6
  %225 = icmp eq i64 %213, 0
  br i1 %225, label %294, label %226

; <label>:226:                                    ; preds = %220
  br label %227

; <label>:227:                                    ; preds = %226, %291
  %228 = phi i64 [ %230, %291 ], [ %213, %226 ]
  %229 = phi i8* [ %292, %291 ], [ %212, %226 ]
  %230 = add i64 %228, -1
  %231 = load i8, i8* %229, align 1, !tbaa !6
  switch i8 %231, label %256 [
    i8 34, label %232
    i8 92, label %232
    i8 10, label %232
  ]

; <label>:232:                                    ; preds = %227, %227, %227
  %233 = load i64, i64* %16, align 8, !tbaa !7
  %234 = load i64, i64* %17, align 8, !tbaa !10
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %239, label %236

; <label>:236:                                    ; preds = %232
  %237 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %238 = load i64, i64* %16, align 8, !tbaa !7
  br label %239

; <label>:239:                                    ; preds = %236, %232
  %240 = phi i64 [ %238, %236 ], [ %233, %232 ]
  %241 = load i8*, i8** %19, align 8, !tbaa !11
  %242 = add i64 %240, 1
  store i64 %242, i64* %16, align 8, !tbaa !7
  %243 = getelementptr inbounds i8, i8* %241, i64 %240
  store i8 92, i8* %243, align 1, !tbaa !6
  %244 = load i64, i64* %16, align 8, !tbaa !7
  %245 = load i64, i64* %17, align 8, !tbaa !10
  %246 = icmp ult i64 %244, %245
  br i1 %246, label %250, label %247

; <label>:247:                                    ; preds = %239
  %248 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %249 = load i64, i64* %16, align 8, !tbaa !7
  br label %250

; <label>:250:                                    ; preds = %247, %239
  %251 = phi i64 [ %249, %247 ], [ %244, %239 ]
  %252 = load i8, i8* %229, align 1, !tbaa !6
  %253 = load i8*, i8** %19, align 8, !tbaa !11
  %254 = add i64 %251, 1
  store i64 %254, i64* %16, align 8, !tbaa !7
  %255 = getelementptr inbounds i8, i8* %253, i64 %251
  store i8 %252, i8* %255, align 1, !tbaa !6
  br label %291

; <label>:256:                                    ; preds = %227
  %257 = load i16*, i16** %100, align 8, !tbaa !12
  %258 = zext i8 %231 to i64
  %259 = getelementptr inbounds i16, i16* %257, i64 %258
  %260 = load i16, i16* %259, align 2, !tbaa !13
  %261 = and i16 %260, 2
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %277, label %263

; <label>:263:                                    ; preds = %256
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %24) #9
  %264 = getelementptr inbounds i8, i8* %229, i64 1
  %265 = load i8, i8* %264, align 1, !tbaa !6
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds i16, i16* %257, i64 %266
  %268 = load i16, i16* %267, align 2, !tbaa !13
  %269 = and i16 %268, 2048
  %270 = icmp eq i16 %269, 0
  %271 = zext i8 %231 to i32
  br i1 %270, label %272, label %274

; <label>:272:                                    ; preds = %263
  %273 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %24, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %271) #9
  br label %276

; <label>:274:                                    ; preds = %263
  %275 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %24, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 %271) #9
  br label %276

; <label>:276:                                    ; preds = %274, %272
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %24) #9
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %24) #9
  br label %291

; <label>:277:                                    ; preds = %256
  %278 = load i64, i64* %16, align 8, !tbaa !7
  %279 = load i64, i64* %17, align 8, !tbaa !10
  %280 = icmp ult i64 %278, %279
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %277
  %282 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %283 = load i8, i8* %229, align 1, !tbaa !6
  %284 = load i64, i64* %16, align 8, !tbaa !7
  br label %285

; <label>:285:                                    ; preds = %281, %277
  %286 = phi i64 [ %284, %281 ], [ %278, %277 ]
  %287 = phi i8 [ %283, %281 ], [ %231, %277 ]
  %288 = load i8*, i8** %19, align 8, !tbaa !11
  %289 = add i64 %286, 1
  store i64 %289, i64* %16, align 8, !tbaa !7
  %290 = getelementptr inbounds i8, i8* %288, i64 %286
  store i8 %287, i8* %290, align 1, !tbaa !6
  br label %291

; <label>:291:                                    ; preds = %285, %276, %250
  %292 = getelementptr inbounds i8, i8* %229, i64 1
  %293 = icmp eq i64 %230, 0
  br i1 %293, label %294, label %227

; <label>:294:                                    ; preds = %291, %220
  %295 = load i64, i64* %16, align 8, !tbaa !7
  %296 = load i64, i64* %17, align 8, !tbaa !10
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %301, label %298

; <label>:298:                                    ; preds = %294
  %299 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #9
  %300 = load i64, i64* %16, align 8, !tbaa !7
  br label %301

; <label>:301:                                    ; preds = %298, %294
  %302 = phi i64 [ %300, %298 ], [ %295, %294 ]
  %303 = load i8*, i8** %19, align 8, !tbaa !11
  %304 = add i64 %302, 1
  store i64 %304, i64* %16, align 8, !tbaa !7
  %305 = getelementptr inbounds i8, i8* %303, i64 %302
  store i8 34, i8* %305, align 1, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9
  br label %375

; <label>:306:                                    ; preds = %209
  %307 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #9
  %308 = call i32 @lua_isinteger(%struct.lua_State* %0, i32 %66) #9
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %334

; <label>:310:                                    ; preds = %306
  %311 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %66, i32* null) #9
  %312 = fcmp oeq double %311, 0x7FF0000000000000
  br i1 %312, label %331, label %313

; <label>:313:                                    ; preds = %310
  %314 = fcmp oeq double %311, 0xFFF0000000000000
  br i1 %314, label %331, label %315

; <label>:315:                                    ; preds = %313
  %316 = fcmp uno double %311, 0.000000e+00
  br i1 %316, label %331, label %317

; <label>:317:                                    ; preds = %315
  %318 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %307, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), double %311) #9
  %319 = sext i32 %318 to i64
  %320 = call i8* @memchr(i8* %307, i32 46, i64 %319) #11
  %321 = icmp eq i8* %320, null
  br i1 %321, label %322, label %339

; <label>:322:                                    ; preds = %317
  %323 = call %struct.lconv* @localeconv() #9
  %324 = getelementptr inbounds %struct.lconv, %struct.lconv* %323, i64 0, i32 0
  %325 = load i8*, i8** %324, align 8, !tbaa !15
  %326 = load i8, i8* %325, align 1, !tbaa !6
  %327 = sext i8 %326 to i32
  %328 = call i8* @memchr(i8* %307, i32 %327, i64 %319) #11
  %329 = icmp eq i8* %328, null
  br i1 %329, label %339, label %330

; <label>:330:                                    ; preds = %322
  store i8 46, i8* %328, align 1, !tbaa !6
  br label %339

; <label>:331:                                    ; preds = %315, %313, %310
  %332 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), %310 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %313 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), %315 ]
  %333 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %307, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %332) #9
  br label %339

; <label>:334:                                    ; preds = %306
  %335 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %66, i32* null) #9
  %336 = icmp eq i64 %335, -9223372036854775808
  %337 = select i1 %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %338 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %307, i64 120, i8* %337, i64 %335) #9
  br label %339

; <label>:339:                                    ; preds = %334, %331, %330, %322, %317
  %340 = phi i32 [ %338, %334 ], [ %333, %331 ], [ %318, %330 ], [ %318, %322 ], [ %318, %317 ]
  %341 = sext i32 %340 to i64
  %342 = load i64, i64* %16, align 8, !tbaa !7
  %343 = add i64 %342, %341
  store i64 %343, i64* %16, align 8, !tbaa !7
  br label %375

; <label>:344:                                    ; preds = %209, %209
  %345 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %66, i64* null) #9
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %375

; <label>:346:                                    ; preds = %209
  %347 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0)) #9
  br label %375

; <label>:348:                                    ; preds = %148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #9
  %349 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %66, i64* nonnull %7) #9
  %350 = load i8, i8* %21, align 2, !tbaa !6
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %353

; <label>:352:                                    ; preds = %348
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %369

; <label>:353:                                    ; preds = %348
  %354 = load i64, i64* %7, align 8, !tbaa !2
  %355 = call i64 @strlen(i8* %349) #11
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %360, label %357

; <label>:357:                                    ; preds = %353
  %358 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9
  %359 = load i64, i64* %7, align 8
  br label %360

; <label>:360:                                    ; preds = %357, %353
  %361 = phi i64 [ %359, %357 ], [ %354, %353 ]
  %362 = call i8* @strchr(i8* nonnull %18, i32 46) #11
  %363 = icmp eq i8* %362, null
  %364 = icmp ugt i64 %361, 99
  %365 = and i1 %363, %364
  br i1 %365, label %366, label %367

; <label>:366:                                    ; preds = %360
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #9
  br label %369

; <label>:367:                                    ; preds = %360
  %368 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 120, i8* nonnull %18, i8* %349) #9
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9
  br label %369

; <label>:369:                                    ; preds = %366, %367, %352
  %370 = phi i32 [ 0, %352 ], [ 0, %366 ], [ %368, %367 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #9
  br label %375

; <label>:371:                                    ; preds = %148
  %372 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* nonnull %18) #9
  br label %373

; <label>:373:                                    ; preds = %68, %371, %207
  %374 = phi i32 [ %208, %207 ], [ %372, %371 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #9
  br label %385

; <label>:375:                                    ; preds = %156, %160, %173, %191, %201, %369, %301, %339, %344, %346
  %376 = phi i32 [ %370, %369 ], [ %203, %201 ], [ %200, %191 ], [ %181, %173 ], [ %172, %160 ], [ %159, %156 ], [ 0, %301 ], [ 0, %339 ], [ 0, %344 ], [ 0, %346 ]
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* %16, align 8, !tbaa !7
  %379 = add i64 %378, %377
  store i64 %379, i64* %16, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #9
  br label %380

; <label>:380:                                    ; preds = %375, %57, %38
  %381 = phi i8* [ %41, %38 ], [ %60, %57 ], [ %153, %375 ]
  %382 = phi i32 [ %26, %38 ], [ %26, %57 ], [ %66, %375 ]
  %383 = icmp ult i8* %381, %12
  br i1 %383, label %25, label %384

; <label>:384:                                    ; preds = %380, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #9
  br label %385

; <label>:385:                                    ; preds = %373, %384
  %386 = phi i32 [ 1, %384 ], [ %374, %373 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %13) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  ret i32 %386
}

; Function Attrs: nounwind uwtable
define internal i32 @gmatch(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_gsub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #9
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #9
  %11 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #9
  %12 = load i64, i64* %3, align 8, !tbaa !2
  %13 = add i64 %12, 1
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %13) #9
  %15 = load i8, i8* %10, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 94
  %17 = bitcast %struct.MatchState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %17) #9
  %18 = bitcast %struct.luaL_Buffer* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %18) #9
  %19 = add i32 %11, -3
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %1
  %22 = call i32 @luaL_typeerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #9
  br label %23

; <label>:23:                                     ; preds = %21, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #9
  br i1 %16, label %26, label %24

; <label>:24:                                     ; preds = %23
  %25 = load i64, i64* %4, align 8, !tbaa !2
  br label %30

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i8, i8* %10, i64 1
  %28 = load i64, i64* %4, align 8, !tbaa !2
  %29 = add i64 %28, -1
  store i64 %29, i64* %4, align 8, !tbaa !2
  br label %30

; <label>:30:                                     ; preds = %24, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %24 ]
  %32 = phi i8* [ %27, %26 ], [ %10, %24 ]
  %33 = load i64, i64* %3, align 8, !tbaa !2
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %34, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 4
  store i32 200, i32* %35, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0
  store i8* %9, i8** %36, align 8, !tbaa !21
  %37 = getelementptr inbounds i8, i8* %9, i64 %33
  %38 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1
  store i8* %37, i8** %38, align 8, !tbaa !22
  %39 = getelementptr inbounds i8, i8* %32, i64 %31
  %40 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2
  store i8* %39, i8** %40, align 8, !tbaa !23
  %41 = icmp sgt i64 %14, 0
  br i1 %41, label %42, label %277

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 5
  %44 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 2
  %45 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 1
  %46 = bitcast i64* %2 to i8*
  %47 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 0
  %48 = bitcast %struct.MatchState* %5 to i64*
  %49 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 0, i32 1
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 0, i32 0
  %51 = bitcast i8** %50 to i64*
  %52 = xor i1 %16, true
  br label %53

; <label>:53:                                     ; preds = %265, %42
  %54 = phi i8* [ %9, %42 ], [ %269, %265 ]
  %55 = phi i32 [ 0, %42 ], [ %268, %265 ]
  %56 = phi i64 [ 0, %42 ], [ %267, %265 ]
  %57 = phi i8* [ null, %42 ], [ %266, %265 ]
  store i8 0, i8* %43, align 4, !tbaa !28
  %58 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %54, i8* %32)
  %59 = icmp eq i8* %58, null
  %60 = icmp eq i8* %58, %57
  %61 = or i1 %59, %60
  br i1 %61, label %248, label %62

; <label>:62:                                     ; preds = %53
  %63 = add nsw i64 %56, 1
  %64 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  switch i32 %11, label %143 [
    i32 6, label %65
    i32 5, label %117
  ]

; <label>:65:                                     ; preds = %62
  call void @lua_pushvalue(%struct.lua_State* %64, i32 3) #9
  %66 = load i8, i8* %43, align 4, !tbaa !28
  %67 = icmp eq i8 %66, 0
  %68 = icmp ne i8* %54, null
  %69 = and i1 %68, %67
  %70 = zext i8 %66 to i32
  %71 = select i1 %69, i32 1, i32 %70
  %72 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  call void @luaL_checkstack(%struct.lua_State* %72, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %116, label %74

; <label>:74:                                     ; preds = %65
  %75 = ptrtoint i8* %54 to i64
  %76 = ptrtoint i8* %58 to i64
  %77 = sub i64 %76, %75
  %78 = icmp eq i64 %77, -2
  %79 = zext i32 %71 to i64
  br label %80

; <label>:80:                                     ; preds = %113, %74
  %81 = phi i64 [ %114, %113 ], [ 0, %74 ]
  %82 = load i8, i8* %43, align 4, !tbaa !28
  %83 = zext i8 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %92, label %85

; <label>:85:                                     ; preds = %80
  %86 = icmp eq i64 %81, 0
  br i1 %86, label %106, label %87

; <label>:87:                                     ; preds = %85
  %88 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %89 = trunc i64 %81 to i32
  %90 = add i32 %89, 1
  %91 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %90) #9
  br label %106

; <label>:92:                                     ; preds = %80
  %93 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %81, i32 1
  %94 = load i64, i64* %93, align 8, !tbaa !29
  %95 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %81, i32 0
  %96 = bitcast i8** %95 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !31
  switch i64 %94, label %107 [
    i64 -1, label %98
    i64 -2, label %101
  ]

; <label>:98:                                     ; preds = %92
  %99 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %100 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %107

; <label>:101:                                    ; preds = %92
  %102 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %103 = load i64, i64* %48, align 8, !tbaa !21
  %104 = add i64 %97, 1
  %105 = sub i64 %104, %103
  call void @lua_pushinteger(%struct.lua_State* %102, i64 %105) #9
  br label %113

; <label>:106:                                    ; preds = %87, %85
  br i1 %78, label %113, label %107

; <label>:107:                                    ; preds = %106, %98, %92
  %108 = phi i64 [ %77, %106 ], [ -1, %98 ], [ %94, %92 ]
  %109 = phi i64 [ %75, %106 ], [ %97, %98 ], [ %97, %92 ]
  %110 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %111 = inttoptr i64 %109 to i8*
  %112 = call i8* @lua_pushlstring(%struct.lua_State* %110, i8* %111, i64 %108) #9
  br label %113

; <label>:113:                                    ; preds = %107, %106, %101
  %114 = add nuw nsw i64 %81, 1
  %115 = icmp eq i64 %114, %79
  br i1 %115, label %116, label %80

; <label>:116:                                    ; preds = %113, %65
  call void @lua_callk(%struct.lua_State* %64, i32 %71, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %230

; <label>:117:                                    ; preds = %62
  %118 = load i8, i8* %43, align 4, !tbaa !28
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %130, label %120

; <label>:120:                                    ; preds = %117
  %121 = load i64, i64* %49, align 8, !tbaa !29
  %122 = load i64, i64* %51, align 8, !tbaa !31
  switch i64 %121, label %135 [
    i64 -1, label %123
    i64 -2, label %126
  ]

; <label>:123:                                    ; preds = %120
  %124 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  %125 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  br label %135

; <label>:126:                                    ; preds = %120
  %127 = load i64, i64* %48, align 8, !tbaa !21
  %128 = add i64 %122, 1
  %129 = sub i64 %128, %127
  call void @lua_pushinteger(%struct.lua_State* %64, i64 %129) #9
  br label %141

; <label>:130:                                    ; preds = %117
  %131 = ptrtoint i8* %54 to i64
  %132 = ptrtoint i8* %58 to i64
  %133 = sub i64 %132, %131
  %134 = icmp eq i64 %133, -2
  br i1 %134, label %141, label %135

; <label>:135:                                    ; preds = %130, %123, %120
  %136 = phi %struct.lua_State* [ %64, %130 ], [ %125, %123 ], [ %64, %120 ]
  %137 = phi i64 [ %133, %130 ], [ -1, %123 ], [ %121, %120 ]
  %138 = phi i64 [ %131, %130 ], [ %122, %123 ], [ %122, %120 ]
  %139 = inttoptr i64 %138 to i8*
  %140 = call i8* @lua_pushlstring(%struct.lua_State* %136, i8* %139, i64 %137) #9
  br label %141

; <label>:141:                                    ; preds = %135, %130, %126
  %142 = call i32 @lua_gettable(%struct.lua_State* %64, i32 3) #9
  br label %230

; <label>:143:                                    ; preds = %62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #9
  %144 = call i8* @lua_tolstring(%struct.lua_State* %64, i32 3, i64* nonnull %2) #9
  %145 = load i64, i64* %2, align 8, !tbaa !2
  %146 = call i8* @memchr(i8* %144, i32 37, i64 %145) #11
  %147 = icmp eq i8* %146, null
  br i1 %147, label %227, label %148

; <label>:148:                                    ; preds = %143
  %149 = ptrtoint i8* %58 to i64
  %150 = ptrtoint i8* %54 to i64
  %151 = sub i64 %149, %150
  %152 = icmp eq i64 %151, -2
  br label %153

; <label>:153:                                    ; preds = %219, %148
  %154 = phi i8* [ %146, %148 ], [ %225, %219 ]
  %155 = phi i8* [ %144, %148 ], [ %220, %219 ]
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %155, i64 %158) #9
  %159 = getelementptr inbounds i8, i8* %154, i64 1
  %160 = load i8, i8* %159, align 1, !tbaa !6
  switch i8 %160, label %176 [
    i8 37, label %161
    i8 48, label %175
  ]

; <label>:161:                                    ; preds = %153
  %162 = load i64, i64* %44, align 8, !tbaa !7
  %163 = load i64, i64* %45, align 8, !tbaa !10
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %169, label %165

; <label>:165:                                    ; preds = %161
  %166 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #9
  %167 = load i8, i8* %159, align 1, !tbaa !6
  %168 = load i64, i64* %44, align 8, !tbaa !7
  br label %169

; <label>:169:                                    ; preds = %165, %161
  %170 = phi i64 [ %168, %165 ], [ %162, %161 ]
  %171 = phi i8 [ %167, %165 ], [ 37, %161 ]
  %172 = load i8*, i8** %47, align 8, !tbaa !11
  %173 = add i64 %170, 1
  store i64 %173, i64* %44, align 8, !tbaa !7
  %174 = getelementptr inbounds i8, i8* %172, i64 %170
  store i8 %171, i8* %174, align 1, !tbaa !6
  br label %219

; <label>:175:                                    ; preds = %153
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %54, i64 %151) #9
  br label %219

; <label>:176:                                    ; preds = %153
  %177 = tail call i16** @__ctype_b_loc() #10
  %178 = load i16*, i16** %177, align 8, !tbaa !12
  %179 = zext i8 %160 to i64
  %180 = getelementptr inbounds i16, i16* %178, i64 %179
  %181 = load i16, i16* %180, align 2, !tbaa !13
  %182 = and i16 %181, 2048
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %217, label %184

; <label>:184:                                    ; preds = %176
  %185 = sext i8 %160 to i32
  %186 = add nsw i32 %185, -49
  %187 = load i8, i8* %43, align 4, !tbaa !28
  %188 = zext i8 %187 to i32
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %196, label %190

; <label>:190:                                    ; preds = %184
  %191 = icmp eq i32 %186, 0
  br i1 %191, label %211, label %192

; <label>:192:                                    ; preds = %190
  %193 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %194 = add nsw i32 %185, -48
  %195 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %194) #9
  br label %211

; <label>:196:                                    ; preds = %184
  %197 = sext i32 %186 to i64
  %198 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %197, i32 1
  %199 = load i64, i64* %198, align 8, !tbaa !29
  %200 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %197, i32 0
  %201 = bitcast i8** %200 to i64*
  %202 = load i64, i64* %201, align 8, !tbaa !31
  switch i64 %199, label %213 [
    i64 -1, label %203
    i64 -2, label %206
  ]

; <label>:203:                                    ; preds = %196
  %204 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %205 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %213

; <label>:206:                                    ; preds = %196
  %207 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %208 = load i64, i64* %48, align 8, !tbaa !21
  %209 = add i64 %202, 1
  %210 = sub i64 %209, %208
  call void @lua_pushinteger(%struct.lua_State* %207, i64 %210) #9
  br label %212

; <label>:211:                                    ; preds = %192, %190
  br i1 %152, label %212, label %213

; <label>:212:                                    ; preds = %211, %206
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %6) #9
  br label %219

; <label>:213:                                    ; preds = %211, %203, %196
  %214 = phi i64 [ %151, %211 ], [ -1, %203 ], [ %199, %196 ]
  %215 = phi i64 [ %150, %211 ], [ %202, %203 ], [ %202, %196 ]
  %216 = inttoptr i64 %215 to i8*
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %216, i64 %214) #9
  br label %219

; <label>:217:                                    ; preds = %176
  %218 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #9
  br label %219

; <label>:219:                                    ; preds = %217, %213, %212, %175, %169
  %220 = getelementptr inbounds i8, i8* %154, i64 2
  %221 = ptrtoint i8* %220 to i64
  %222 = load i64, i64* %2, align 8, !tbaa !2
  %223 = sub i64 %157, %221
  %224 = add i64 %222, %223
  store i64 %224, i64* %2, align 8, !tbaa !2
  %225 = call i8* @memchr(i8* nonnull %220, i32 37, i64 %224) #11
  %226 = icmp eq i8* %225, null
  br i1 %226, label %227, label %153

; <label>:227:                                    ; preds = %219, %143
  %228 = phi i8* [ %144, %143 ], [ %220, %219 ]
  %229 = phi i64 [ %145, %143 ], [ %224, %219 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %228, i64 %229) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #9
  br label %245

; <label>:230:                                    ; preds = %141, %116
  %231 = call i32 @lua_toboolean(%struct.lua_State* %64, i32 -1) #9
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

; <label>:233:                                    ; preds = %230
  call void @lua_settop(%struct.lua_State* %64, i32 -2) #9
  %234 = ptrtoint i8* %58 to i64
  %235 = ptrtoint i8* %54 to i64
  %236 = sub i64 %234, %235
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %54, i64 %236) #9
  br label %245

; <label>:237:                                    ; preds = %230
  %238 = call i32 @lua_isstring(%struct.lua_State* %64, i32 -1) #9
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

; <label>:240:                                    ; preds = %237
  %241 = call i32 @lua_type(%struct.lua_State* %64, i32 -1) #9
  %242 = call i8* @lua_typename(%struct.lua_State* %64, i32 %241) #9
  %243 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* %242) #9
  br label %245

; <label>:244:                                    ; preds = %237
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %6) #9
  br label %245

; <label>:245:                                    ; preds = %227, %233, %240, %244
  %246 = phi i32 [ 1, %227 ], [ 1, %244 ], [ %243, %240 ], [ 0, %233 ]
  %247 = or i32 %246, %55
  br label %265

; <label>:248:                                    ; preds = %53
  %249 = load i8*, i8** %38, align 8, !tbaa !22
  %250 = icmp ult i8* %54, %249
  br i1 %250, label %251, label %272

; <label>:251:                                    ; preds = %248
  %252 = load i64, i64* %44, align 8, !tbaa !7
  %253 = load i64, i64* %45, align 8, !tbaa !10
  %254 = icmp ult i64 %252, %253
  br i1 %254, label %258, label %255

; <label>:255:                                    ; preds = %251
  %256 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #9
  %257 = load i64, i64* %44, align 8, !tbaa !7
  br label %258

; <label>:258:                                    ; preds = %255, %251
  %259 = phi i64 [ %257, %255 ], [ %252, %251 ]
  %260 = getelementptr inbounds i8, i8* %54, i64 1
  %261 = load i8, i8* %54, align 1, !tbaa !6
  %262 = load i8*, i8** %47, align 8, !tbaa !11
  %263 = add i64 %259, 1
  store i64 %263, i64* %44, align 8, !tbaa !7
  %264 = getelementptr inbounds i8, i8* %262, i64 %259
  store i8 %261, i8* %264, align 1, !tbaa !6
  br label %265

; <label>:265:                                    ; preds = %245, %258
  %266 = phi i8* [ %58, %245 ], [ %57, %258 ]
  %267 = phi i64 [ %63, %245 ], [ %56, %258 ]
  %268 = phi i32 [ %247, %245 ], [ %55, %258 ]
  %269 = phi i8* [ %58, %245 ], [ %260, %258 ]
  %270 = icmp slt i64 %267, %14
  %271 = and i1 %270, %52
  br i1 %271, label %53, label %272

; <label>:272:                                    ; preds = %248, %265
  %273 = phi i64 [ %56, %248 ], [ %267, %265 ]
  %274 = phi i32 [ %55, %248 ], [ %268, %265 ]
  %275 = phi i8* [ %54, %248 ], [ %269, %265 ]
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %277, label %279

; <label>:277:                                    ; preds = %30, %272
  %278 = phi i64 [ %273, %272 ], [ 0, %30 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %284

; <label>:279:                                    ; preds = %272
  %280 = bitcast i8** %38 to i64*
  %281 = load i64, i64* %280, align 8, !tbaa !22
  %282 = ptrtoint i8* %275 to i64
  %283 = sub i64 %281, %282
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %275, i64 %283) #9
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #9
  br label %284

; <label>:284:                                    ; preds = %279, %277
  %285 = phi i64 [ %273, %279 ], [ %278, %277 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %285) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_len(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %5 = load i64, i64* %2, align 8, !tbaa !2
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_lower(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #9
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_tolower_loc() #10
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !32
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_match(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_rep(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
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
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %28) #9
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %28) #9
  br label %50

; <label>:50:                                     ; preds = %11, %49, %21
  %51 = phi i32 [ %22, %21 ], [ 1, %49 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @str_reverse(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #9
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_sub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_upper(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #9
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #9
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #9
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_toupper_loc() #10
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !32
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
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %11) #9
  %12 = bitcast %struct.Header* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #9
  %13 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #9
  %14 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %14, i8** %4, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %15, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  store i32 1, i32* %16, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 2
  store i32 1, i32* %17, align 4, !tbaa !36
  tail call void @lua_pushnil(%struct.lua_State* %0) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #9
  %18 = load i8, i8* %14, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %503, label %20

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

; <label>:32:                                     ; preds = %20, %497
  %33 = phi i32 [ 1, %20 ], [ %499, %497 ]
  %34 = phi i64 [ 0, %20 ], [ %498, %497 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #9
  %35 = call fastcc i32 @getdetails(%struct.Header* nonnull %3, i64 %34, i8** nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %36 = load i32, i32* %6, align 4, !tbaa !32
  %37 = load i32, i32* %5, align 4, !tbaa !32
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = add i64 %34, %39
  %41 = add nsw i32 %36, -1
  store i32 %41, i32* %6, align 4, !tbaa !32
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
  store i32 %57, i32* %6, align 4, !tbaa !32
  br label %60

; <label>:60:                                     ; preds = %59, %32
  %61 = add nsw i32 %33, 1
  switch i32 %35, label %497 [
    i32 0, label %62
    i32 1, label %177
    i32 2, label %238
    i32 3, label %364
    i32 4, label %394
    i32 5, label %460
    i32 6, label %484
    i32 7, label %496
    i32 8, label %496
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
  %77 = load i32, i32* %16, align 8, !tbaa !35
  %78 = sext i32 %37 to i64
  %79 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %78) #9
  %80 = trunc i64 %63 to i8
  %81 = icmp ne i32 %77, 0
  %82 = add nsw i32 %37, -1
  %83 = sext i32 %82 to i64
  %84 = select i1 %81, i64 0, i64 %83
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8 %80, i8* %85, align 1, !tbaa !6
  %86 = icmp sgt i32 %37, 1
  br i1 %86, label %87, label %174

; <label>:87:                                     ; preds = %76
  %88 = add i32 %37, -1
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %37, 2
  br i1 %90, label %113, label %91

; <label>:91:                                     ; preds = %87
  %92 = sub i32 %88, %89
  br label %93

; <label>:93:                                     ; preds = %93, %91
  %94 = phi i32 [ 1, %91 ], [ %110, %93 ]
  %95 = phi i64 [ %63, %91 ], [ %104, %93 ]
  %96 = phi i32 [ %92, %91 ], [ %111, %93 ]
  %97 = lshr i64 %95, 8
  %98 = trunc i64 %97 to i8
  %99 = sub nsw i32 %82, %94
  %100 = select i1 %81, i32 %94, i32 %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %79, i64 %101
  store i8 %98, i8* %102, align 1, !tbaa !6
  %103 = add nuw nsw i32 %94, 1
  %104 = lshr i64 %95, 16
  %105 = trunc i64 %104 to i8
  %106 = sub nsw i32 %82, %103
  %107 = select i1 %81, i32 %103, i32 %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %79, i64 %108
  store i8 %105, i8* %109, align 1, !tbaa !6
  %110 = add nuw nsw i32 %94, 2
  %111 = add i32 %96, -2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %93

; <label>:113:                                    ; preds = %93, %87
  %114 = phi i32 [ 1, %87 ], [ %110, %93 ]
  %115 = phi i64 [ %63, %87 ], [ %104, %93 ]
  %116 = icmp eq i32 %89, 0
  br i1 %116, label %124, label %117

; <label>:117:                                    ; preds = %113
  %118 = lshr i64 %115, 8
  %119 = trunc i64 %118 to i8
  %120 = sub nsw i32 %82, %114
  %121 = select i1 %81, i32 %114, i32 %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %79, i64 %122
  store i8 %119, i8* %123, align 1, !tbaa !6
  br label %124

; <label>:124:                                    ; preds = %113, %117
  %125 = icmp slt i64 %63, 0
  %126 = icmp sgt i32 %37, 8
  %127 = and i1 %126, %125
  br i1 %127, label %128, label %174

; <label>:128:                                    ; preds = %124
  %129 = add i32 %37, -8
  %130 = add i32 %37, -9
  %131 = and i32 %129, 3
  %132 = icmp ult i32 %130, 3
  br i1 %132, label %160, label %133

; <label>:133:                                    ; preds = %128
  %134 = sub i32 %129, %131
  br label %135

; <label>:135:                                    ; preds = %135, %133
  %136 = phi i32 [ 8, %133 ], [ %157, %135 ]
  %137 = phi i32 [ %134, %133 ], [ %158, %135 ]
  %138 = sub nsw i32 %82, %136
  %139 = select i1 %81, i32 %136, i32 %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %79, i64 %140
  store i8 -1, i8* %141, align 1, !tbaa !6
  %142 = or i32 %136, 1
  %143 = sub nsw i32 %82, %142
  %144 = select i1 %81, i32 %142, i32 %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %79, i64 %145
  store i8 -1, i8* %146, align 1, !tbaa !6
  %147 = or i32 %136, 2
  %148 = sub nsw i32 %82, %147
  %149 = select i1 %81, i32 %147, i32 %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %79, i64 %150
  store i8 -1, i8* %151, align 1, !tbaa !6
  %152 = or i32 %136, 3
  %153 = sub nsw i32 %82, %152
  %154 = select i1 %81, i32 %152, i32 %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %79, i64 %155
  store i8 -1, i8* %156, align 1, !tbaa !6
  %157 = add nuw nsw i32 %136, 4
  %158 = add i32 %137, -4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %135

; <label>:160:                                    ; preds = %135, %128
  %161 = phi i32 [ 8, %128 ], [ %157, %135 ]
  %162 = icmp eq i32 %131, 0
  br i1 %162, label %174, label %163

; <label>:163:                                    ; preds = %160
  br label %164

; <label>:164:                                    ; preds = %164, %163
  %165 = phi i32 [ %171, %164 ], [ %161, %163 ]
  %166 = phi i32 [ %172, %164 ], [ %131, %163 ]
  %167 = sub nsw i32 %82, %165
  %168 = select i1 %81, i32 %165, i32 %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %79, i64 %169
  store i8 -1, i8* %170, align 1, !tbaa !6
  %171 = add nuw nsw i32 %165, 1
  %172 = add i32 %166, -1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %164, !llvm.loop !37

; <label>:174:                                    ; preds = %160, %164, %76, %124
  %175 = load i64, i64* %23, align 8, !tbaa !7
  %176 = add i64 %175, %78
  store i64 %176, i64* %23, align 8, !tbaa !7
  br label %497

; <label>:177:                                    ; preds = %60
  %178 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %61) #9
  %179 = icmp slt i32 %37, 8
  br i1 %179, label %180, label %187

; <label>:180:                                    ; preds = %177
  %181 = shl nsw i32 %37, 3
  %182 = zext i32 %181 to i64
  %183 = shl i64 1, %182
  %184 = icmp ult i64 %178, %183
  br i1 %184, label %187, label %185

; <label>:185:                                    ; preds = %180
  %186 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #9
  br label %187

; <label>:187:                                    ; preds = %180, %185, %177
  %188 = load i32, i32* %16, align 8, !tbaa !35
  %189 = sext i32 %37 to i64
  %190 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %189) #9
  %191 = trunc i64 %178 to i8
  %192 = icmp ne i32 %188, 0
  %193 = add nsw i32 %37, -1
  %194 = sext i32 %193 to i64
  %195 = select i1 %192, i64 0, i64 %194
  %196 = getelementptr inbounds i8, i8* %190, i64 %195
  store i8 %191, i8* %196, align 1, !tbaa !6
  %197 = icmp sgt i32 %37, 1
  br i1 %197, label %198, label %235

; <label>:198:                                    ; preds = %187
  %199 = add i32 %37, -1
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %37, 2
  br i1 %201, label %224, label %202

; <label>:202:                                    ; preds = %198
  %203 = sub i32 %199, %200
  br label %204

; <label>:204:                                    ; preds = %204, %202
  %205 = phi i32 [ 1, %202 ], [ %221, %204 ]
  %206 = phi i64 [ %178, %202 ], [ %215, %204 ]
  %207 = phi i32 [ %203, %202 ], [ %222, %204 ]
  %208 = lshr i64 %206, 8
  %209 = trunc i64 %208 to i8
  %210 = sub nsw i32 %193, %205
  %211 = select i1 %192, i32 %205, i32 %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %190, i64 %212
  store i8 %209, i8* %213, align 1, !tbaa !6
  %214 = add nuw nsw i32 %205, 1
  %215 = lshr i64 %206, 16
  %216 = trunc i64 %215 to i8
  %217 = sub nsw i32 %193, %214
  %218 = select i1 %192, i32 %214, i32 %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %190, i64 %219
  store i8 %216, i8* %220, align 1, !tbaa !6
  %221 = add nuw nsw i32 %205, 2
  %222 = add i32 %207, -2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %204

; <label>:224:                                    ; preds = %204, %198
  %225 = phi i32 [ 1, %198 ], [ %221, %204 ]
  %226 = phi i64 [ %178, %198 ], [ %215, %204 ]
  %227 = icmp eq i32 %200, 0
  br i1 %227, label %235, label %228

; <label>:228:                                    ; preds = %224
  %229 = lshr i64 %226, 8
  %230 = trunc i64 %229 to i8
  %231 = sub nsw i32 %193, %225
  %232 = select i1 %192, i32 %225, i32 %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %190, i64 %233
  store i8 %230, i8* %234, align 1, !tbaa !6
  br label %235

; <label>:235:                                    ; preds = %228, %224, %187
  %236 = load i64, i64* %23, align 8, !tbaa !7
  %237 = add i64 %236, %189
  store i64 %237, i64* %23, align 8, !tbaa !7
  br label %497

; <label>:238:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #9
  %239 = sext i32 %37 to i64
  %240 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %239) #9
  %241 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %61) #9
  %242 = icmp eq i32 %37, 4
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %238
  %244 = fptrunc double %241 to float
  store volatile float %244, float* %30, align 8, !tbaa !6
  br label %246

; <label>:245:                                    ; preds = %238
  store volatile double %241, double* %31, align 8, !tbaa !6
  br label %246

; <label>:246:                                    ; preds = %245, %243
  %247 = load i32, i32* %16, align 8, !tbaa !35
  %248 = icmp eq i32 %247, 1
  %249 = icmp eq i32 %37, 0
  br i1 %248, label %250, label %303

; <label>:250:                                    ; preds = %246
  br i1 %249, label %359, label %251

; <label>:251:                                    ; preds = %250
  %252 = add i32 %37, -1
  %253 = and i32 %37, 7
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %267, label %255

; <label>:255:                                    ; preds = %251
  br label %256

; <label>:256:                                    ; preds = %256, %255
  %257 = phi i8* [ %264, %256 ], [ %240, %255 ]
  %258 = phi i32 [ %261, %256 ], [ %37, %255 ]
  %259 = phi i8* [ %262, %256 ], [ %26, %255 ]
  %260 = phi i32 [ %265, %256 ], [ %253, %255 ]
  %261 = add nsw i32 %258, -1
  %262 = getelementptr inbounds i8, i8* %259, i64 1
  %263 = load volatile i8, i8* %259, align 1, !tbaa !6
  %264 = getelementptr inbounds i8, i8* %257, i64 1
  store volatile i8 %263, i8* %257, align 1, !tbaa !6
  %265 = add i32 %260, -1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %256, !llvm.loop !39

; <label>:267:                                    ; preds = %256, %251
  %268 = phi i8* [ %240, %251 ], [ %264, %256 ]
  %269 = phi i32 [ %37, %251 ], [ %261, %256 ]
  %270 = phi i8* [ %26, %251 ], [ %262, %256 ]
  %271 = icmp ult i32 %252, 7
  br i1 %271, label %359, label %272

; <label>:272:                                    ; preds = %267
  br label %273

; <label>:273:                                    ; preds = %273, %272
  %274 = phi i8* [ %268, %272 ], [ %301, %273 ]
  %275 = phi i32 [ %269, %272 ], [ %298, %273 ]
  %276 = phi i8* [ %270, %272 ], [ %299, %273 ]
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  %278 = load volatile i8, i8* %276, align 1, !tbaa !6
  %279 = getelementptr inbounds i8, i8* %274, i64 1
  store volatile i8 %278, i8* %274, align 1, !tbaa !6
  %280 = getelementptr inbounds i8, i8* %276, i64 2
  %281 = load volatile i8, i8* %277, align 1, !tbaa !6
  %282 = getelementptr inbounds i8, i8* %274, i64 2
  store volatile i8 %281, i8* %279, align 1, !tbaa !6
  %283 = getelementptr inbounds i8, i8* %276, i64 3
  %284 = load volatile i8, i8* %280, align 1, !tbaa !6
  %285 = getelementptr inbounds i8, i8* %274, i64 3
  store volatile i8 %284, i8* %282, align 1, !tbaa !6
  %286 = getelementptr inbounds i8, i8* %276, i64 4
  %287 = load volatile i8, i8* %283, align 1, !tbaa !6
  %288 = getelementptr inbounds i8, i8* %274, i64 4
  store volatile i8 %287, i8* %285, align 1, !tbaa !6
  %289 = getelementptr inbounds i8, i8* %276, i64 5
  %290 = load volatile i8, i8* %286, align 1, !tbaa !6
  %291 = getelementptr inbounds i8, i8* %274, i64 5
  store volatile i8 %290, i8* %288, align 1, !tbaa !6
  %292 = getelementptr inbounds i8, i8* %276, i64 6
  %293 = load volatile i8, i8* %289, align 1, !tbaa !6
  %294 = getelementptr inbounds i8, i8* %274, i64 6
  store volatile i8 %293, i8* %291, align 1, !tbaa !6
  %295 = getelementptr inbounds i8, i8* %276, i64 7
  %296 = load volatile i8, i8* %292, align 1, !tbaa !6
  %297 = getelementptr inbounds i8, i8* %274, i64 7
  store volatile i8 %296, i8* %294, align 1, !tbaa !6
  %298 = add nsw i32 %275, -8
  %299 = getelementptr inbounds i8, i8* %276, i64 8
  %300 = load volatile i8, i8* %295, align 1, !tbaa !6
  %301 = getelementptr inbounds i8, i8* %274, i64 8
  store volatile i8 %300, i8* %297, align 1, !tbaa !6
  %302 = icmp eq i32 %298, 0
  br i1 %302, label %359, label %273

; <label>:303:                                    ; preds = %246
  br i1 %249, label %359, label %304

; <label>:304:                                    ; preds = %303
  %305 = add nsw i32 %37, -1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %240, i64 %306
  %308 = add i32 %37, -1
  %309 = and i32 %37, 7
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %323, label %311

; <label>:311:                                    ; preds = %304
  br label %312

; <label>:312:                                    ; preds = %312, %311
  %313 = phi i8* [ %307, %311 ], [ %320, %312 ]
  %314 = phi i32 [ %37, %311 ], [ %317, %312 ]
  %315 = phi i8* [ %26, %311 ], [ %318, %312 ]
  %316 = phi i32 [ %309, %311 ], [ %321, %312 ]
  %317 = add nsw i32 %314, -1
  %318 = getelementptr inbounds i8, i8* %315, i64 1
  %319 = load volatile i8, i8* %315, align 1, !tbaa !6
  %320 = getelementptr inbounds i8, i8* %313, i64 -1
  store volatile i8 %319, i8* %313, align 1, !tbaa !6
  %321 = add i32 %316, -1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %312, !llvm.loop !40

; <label>:323:                                    ; preds = %312, %304
  %324 = phi i8* [ %307, %304 ], [ %320, %312 ]
  %325 = phi i32 [ %37, %304 ], [ %317, %312 ]
  %326 = phi i8* [ %26, %304 ], [ %318, %312 ]
  %327 = icmp ult i32 %308, 7
  br i1 %327, label %359, label %328

; <label>:328:                                    ; preds = %323
  br label %329

; <label>:329:                                    ; preds = %329, %328
  %330 = phi i8* [ %324, %328 ], [ %357, %329 ]
  %331 = phi i32 [ %325, %328 ], [ %354, %329 ]
  %332 = phi i8* [ %326, %328 ], [ %355, %329 ]
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load volatile i8, i8* %332, align 1, !tbaa !6
  %335 = getelementptr inbounds i8, i8* %330, i64 -1
  store volatile i8 %334, i8* %330, align 1, !tbaa !6
  %336 = getelementptr inbounds i8, i8* %332, i64 2
  %337 = load volatile i8, i8* %333, align 1, !tbaa !6
  %338 = getelementptr inbounds i8, i8* %330, i64 -2
  store volatile i8 %337, i8* %335, align 1, !tbaa !6
  %339 = getelementptr inbounds i8, i8* %332, i64 3
  %340 = load volatile i8, i8* %336, align 1, !tbaa !6
  %341 = getelementptr inbounds i8, i8* %330, i64 -3
  store volatile i8 %340, i8* %338, align 1, !tbaa !6
  %342 = getelementptr inbounds i8, i8* %332, i64 4
  %343 = load volatile i8, i8* %339, align 1, !tbaa !6
  %344 = getelementptr inbounds i8, i8* %330, i64 -4
  store volatile i8 %343, i8* %341, align 1, !tbaa !6
  %345 = getelementptr inbounds i8, i8* %332, i64 5
  %346 = load volatile i8, i8* %342, align 1, !tbaa !6
  %347 = getelementptr inbounds i8, i8* %330, i64 -5
  store volatile i8 %346, i8* %344, align 1, !tbaa !6
  %348 = getelementptr inbounds i8, i8* %332, i64 6
  %349 = load volatile i8, i8* %345, align 1, !tbaa !6
  %350 = getelementptr inbounds i8, i8* %330, i64 -6
  store volatile i8 %349, i8* %347, align 1, !tbaa !6
  %351 = getelementptr inbounds i8, i8* %332, i64 7
  %352 = load volatile i8, i8* %348, align 1, !tbaa !6
  %353 = getelementptr inbounds i8, i8* %330, i64 -7
  store volatile i8 %352, i8* %350, align 1, !tbaa !6
  %354 = add nsw i32 %331, -8
  %355 = getelementptr inbounds i8, i8* %332, i64 8
  %356 = load volatile i8, i8* %351, align 1, !tbaa !6
  %357 = getelementptr inbounds i8, i8* %330, i64 -8
  store volatile i8 %356, i8* %353, align 1, !tbaa !6
  %358 = icmp eq i32 %354, 0
  br i1 %358, label %359, label %329

; <label>:359:                                    ; preds = %323, %329, %267, %273, %250, %303
  %360 = load i32, i32* %5, align 4, !tbaa !32
  %361 = sext i32 %360 to i64
  %362 = load i64, i64* %23, align 8, !tbaa !7
  %363 = add i64 %362, %361
  store i64 %363, i64* %23, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #9
  br label %497

; <label>:364:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #9
  %365 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %8) #9
  %366 = load i64, i64* %8, align 8, !tbaa !2
  %367 = sext i32 %37 to i64
  %368 = icmp ugt i64 %366, %367
  br i1 %368, label %369, label %372

; <label>:369:                                    ; preds = %364
  %370 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0)) #9
  %371 = load i64, i64* %8, align 8, !tbaa !2
  br label %372

; <label>:372:                                    ; preds = %364, %369
  %373 = phi i64 [ %366, %364 ], [ %371, %369 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %365, i64 %373) #9
  %374 = load i64, i64* %8, align 8, !tbaa !2
  %375 = add i64 %374, 1
  store i64 %375, i64* %8, align 8, !tbaa !2
  %376 = icmp ult i64 %374, %367
  br i1 %376, label %377, label %393

; <label>:377:                                    ; preds = %372
  br label %378

; <label>:378:                                    ; preds = %377, %385
  %379 = load i64, i64* %23, align 8, !tbaa !7
  %380 = load i64, i64* %24, align 8, !tbaa !10
  %381 = icmp ult i64 %379, %380
  br i1 %381, label %385, label %382

; <label>:382:                                    ; preds = %378
  %383 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %384 = load i64, i64* %23, align 8, !tbaa !7
  br label %385

; <label>:385:                                    ; preds = %382, %378
  %386 = phi i64 [ %384, %382 ], [ %379, %378 ]
  %387 = load i8*, i8** %25, align 8, !tbaa !11
  %388 = add i64 %386, 1
  store i64 %388, i64* %23, align 8, !tbaa !7
  %389 = getelementptr inbounds i8, i8* %387, i64 %386
  store i8 0, i8* %389, align 1, !tbaa !6
  %390 = load i64, i64* %8, align 8, !tbaa !2
  %391 = add i64 %390, 1
  store i64 %391, i64* %8, align 8, !tbaa !2
  %392 = icmp ult i64 %390, %367
  br i1 %392, label %378, label %393

; <label>:393:                                    ; preds = %385, %372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #9
  br label %497

; <label>:394:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #9
  %395 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %9) #9
  %396 = icmp sgt i32 %37, 7
  br i1 %396, label %405, label %397

; <label>:397:                                    ; preds = %394
  %398 = load i64, i64* %9, align 8, !tbaa !2
  %399 = shl nsw i32 %37, 3
  %400 = zext i32 %399 to i64
  %401 = shl i64 1, %400
  %402 = icmp ult i64 %398, %401
  br i1 %402, label %405, label %403

; <label>:403:                                    ; preds = %397
  %404 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #9
  br label %405

; <label>:405:                                    ; preds = %403, %397, %394
  %406 = load i64, i64* %9, align 8, !tbaa !2
  %407 = load i32, i32* %16, align 8, !tbaa !35
  %408 = sext i32 %37 to i64
  %409 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %408) #9
  %410 = trunc i64 %406 to i8
  %411 = icmp ne i32 %407, 0
  %412 = add nsw i32 %37, -1
  %413 = sext i32 %412 to i64
  %414 = select i1 %411, i64 0, i64 %413
  %415 = getelementptr inbounds i8, i8* %409, i64 %414
  store i8 %410, i8* %415, align 1, !tbaa !6
  %416 = icmp sgt i32 %37, 1
  br i1 %416, label %417, label %454

; <label>:417:                                    ; preds = %405
  %418 = add i32 %37, -1
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %37, 2
  br i1 %420, label %443, label %421

; <label>:421:                                    ; preds = %417
  %422 = sub i32 %418, %419
  br label %423

; <label>:423:                                    ; preds = %423, %421
  %424 = phi i32 [ 1, %421 ], [ %440, %423 ]
  %425 = phi i64 [ %406, %421 ], [ %434, %423 ]
  %426 = phi i32 [ %422, %421 ], [ %441, %423 ]
  %427 = lshr i64 %425, 8
  %428 = trunc i64 %427 to i8
  %429 = sub nsw i32 %412, %424
  %430 = select i1 %411, i32 %424, i32 %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %409, i64 %431
  store i8 %428, i8* %432, align 1, !tbaa !6
  %433 = add nuw nsw i32 %424, 1
  %434 = lshr i64 %425, 16
  %435 = trunc i64 %434 to i8
  %436 = sub nsw i32 %412, %433
  %437 = select i1 %411, i32 %433, i32 %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, i8* %409, i64 %438
  store i8 %435, i8* %439, align 1, !tbaa !6
  %440 = add nuw nsw i32 %424, 2
  %441 = add i32 %426, -2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %423

; <label>:443:                                    ; preds = %423, %417
  %444 = phi i32 [ 1, %417 ], [ %440, %423 ]
  %445 = phi i64 [ %406, %417 ], [ %434, %423 ]
  %446 = icmp eq i32 %419, 0
  br i1 %446, label %454, label %447

; <label>:447:                                    ; preds = %443
  %448 = lshr i64 %445, 8
  %449 = trunc i64 %448 to i8
  %450 = sub nsw i32 %412, %444
  %451 = select i1 %411, i32 %444, i32 %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %409, i64 %452
  store i8 %449, i8* %453, align 1, !tbaa !6
  br label %454

; <label>:454:                                    ; preds = %447, %443, %405
  %455 = load i64, i64* %23, align 8, !tbaa !7
  %456 = add i64 %455, %408
  store i64 %456, i64* %23, align 8, !tbaa !7
  %457 = load i64, i64* %9, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %395, i64 %457) #9
  %458 = load i64, i64* %9, align 8, !tbaa !2
  %459 = add i64 %458, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #9
  br label %497

; <label>:460:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #9
  %461 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %10) #9
  %462 = call i64 @strlen(i8* %461) #11
  %463 = load i64, i64* %10, align 8, !tbaa !2
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %468, label %465

; <label>:465:                                    ; preds = %460
  %466 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9
  %467 = load i64, i64* %10, align 8, !tbaa !2
  br label %468

; <label>:468:                                    ; preds = %465, %460
  %469 = phi i64 [ %467, %465 ], [ %462, %460 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %461, i64 %469) #9
  %470 = load i64, i64* %23, align 8, !tbaa !7
  %471 = load i64, i64* %24, align 8, !tbaa !10
  %472 = icmp ult i64 %470, %471
  br i1 %472, label %476, label %473

; <label>:473:                                    ; preds = %468
  %474 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %475 = load i64, i64* %23, align 8, !tbaa !7
  br label %476

; <label>:476:                                    ; preds = %473, %468
  %477 = phi i64 [ %475, %473 ], [ %470, %468 ]
  %478 = load i8*, i8** %25, align 8, !tbaa !11
  %479 = add i64 %477, 1
  store i64 %479, i64* %23, align 8, !tbaa !7
  %480 = getelementptr inbounds i8, i8* %478, i64 %477
  store i8 0, i8* %480, align 1, !tbaa !6
  %481 = load i64, i64* %10, align 8, !tbaa !2
  %482 = add i64 %40, 1
  %483 = add i64 %482, %481
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  br label %497

; <label>:484:                                    ; preds = %60
  %485 = load i64, i64* %23, align 8, !tbaa !7
  %486 = load i64, i64* %24, align 8, !tbaa !10
  %487 = icmp ult i64 %485, %486
  br i1 %487, label %491, label %488

; <label>:488:                                    ; preds = %484
  %489 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %490 = load i64, i64* %23, align 8, !tbaa !7
  br label %491

; <label>:491:                                    ; preds = %488, %484
  %492 = phi i64 [ %490, %488 ], [ %485, %484 ]
  %493 = load i8*, i8** %25, align 8, !tbaa !11
  %494 = add i64 %492, 1
  store i64 %494, i64* %23, align 8, !tbaa !7
  %495 = getelementptr inbounds i8, i8* %493, i64 %492
  store i8 0, i8* %495, align 1, !tbaa !6
  br label %496

; <label>:496:                                    ; preds = %60, %60, %491
  br label %497

; <label>:497:                                    ; preds = %60, %496, %476, %454, %393, %359, %235, %174
  %498 = phi i64 [ %40, %60 ], [ %40, %496 ], [ %483, %476 ], [ %459, %454 ], [ %40, %393 ], [ %40, %359 ], [ %40, %235 ], [ %40, %174 ]
  %499 = phi i32 [ %61, %60 ], [ %33, %496 ], [ %61, %476 ], [ %61, %454 ], [ %61, %393 ], [ %61, %359 ], [ %61, %235 ], [ %61, %174 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #9
  %500 = load i8*, i8** %4, align 8, !tbaa !12
  %501 = load i8, i8* %500, align 1, !tbaa !6
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %32

; <label>:503:                                    ; preds = %497, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %11) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_packsize(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %8 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %8, i8** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %10, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %11, align 4, !tbaa !36
  %12 = load i8, i8* %8, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

; <label>:14:                                     ; preds = %1
  %15 = bitcast i32* %4 to i8*
  %16 = bitcast i32* %5 to i8*
  br label %17

; <label>:17:                                     ; preds = %14, %33
  %18 = phi i64 [ 0, %14 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9
  %19 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %18, i8** nonnull %3, i32* nonnull %4, i32* nonnull %5)
  %20 = or i32 %19, 1
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0)) #9
  br label %24

; <label>:24:                                     ; preds = %17, %22
  %25 = load i32, i32* %5, align 4, !tbaa !32
  %26 = load i32, i32* %4, align 4, !tbaa !32
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4, !tbaa !32
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 2147483647, %28
  %30 = icmp ugt i64 %18, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0)) #9
  br label %33

; <label>:33:                                     ; preds = %24, %31
  %34 = add i64 %18, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #9
  %35 = load i8*, i8** %3, align 8, !tbaa !12
  %36 = load i8, i8* %35, align 1, !tbaa !6
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %17

; <label>:38:                                     ; preds = %33, %1
  %39 = phi i64 [ 0, %1 ], [ %34, %33 ]
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %39) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_unpack(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.Ftypes, align 8
  %8 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #9
  %9 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #9
  store i8* %10, i8** %3, align 8, !tbaa !12
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #9
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
  store %struct.lua_State* %0, %struct.lua_State** %31, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %32, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %33, align 4, !tbaa !36
  %34 = load i8, i8* %10, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %308, label %36

; <label>:36:                                     ; preds = %30
  %37 = bitcast i32* %5 to i8*
  %38 = bitcast i32* %6 to i8*
  %39 = bitcast %union.Ftypes* %7 to i8*
  %40 = bitcast %union.Ftypes* %7 to float*
  %41 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %42

; <label>:42:                                     ; preds = %36, %300
  %43 = phi i64 [ %26, %36 ], [ %304, %300 ]
  %44 = phi i32 [ 0, %36 ], [ %302, %300 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #9
  %45 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %43, i8** nonnull %3, i32* nonnull %5, i32* nonnull %6)
  %46 = load i32, i32* %6, align 4, !tbaa !32
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %5, align 4, !tbaa !32
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
  switch i32 %45, label %300 [
    i32 0, label %59
    i32 1, label %59
    i32 2, label %111
    i32 3, label %236
    i32 4, label %239
    i32 5, label %286
    i32 7, label %299
    i32 6, label %299
    i32 8, label %299
  ]

; <label>:59:                                     ; preds = %56, %56
  %60 = getelementptr inbounds i8, i8* %12, i64 %57
  %61 = load i32, i32* %32, align 8, !tbaa !35
  %62 = icmp eq i32 %45, 0
  %63 = icmp slt i32 %48, 8
  %64 = icmp sgt i32 %48, 0
  br i1 %64, label %65, label %76

; <label>:65:                                     ; preds = %59
  %66 = icmp eq i32 %61, 0
  %67 = select i1 %63, i32 %48, i32 8
  %68 = add nsw i32 %67, -1
  %69 = sub i32 %48, %67
  %70 = select i1 %66, i32 %69, i32 %68
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %60, i64 %71
  %73 = load i8, i8* %72, align 1, !tbaa !6
  %74 = zext i8 %73 to i64
  %75 = icmp sgt i32 %67, 1
  br i1 %75, label %389, label %76

; <label>:76:                                     ; preds = %65, %400, %422, %444, %455, %389, %411, %433, %59
  %77 = phi i64 [ 0, %59 ], [ %74, %65 ], [ %398, %389 ], [ %409, %400 ], [ %420, %411 ], [ %431, %422 ], [ %442, %433 ], [ %453, %444 ], [ %464, %455 ]
  br i1 %63, label %78, label %86

; <label>:78:                                     ; preds = %76
  br i1 %62, label %79, label %109

; <label>:79:                                     ; preds = %78
  %80 = shl i32 %48, 3
  %81 = add nsw i32 %80, -1
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = xor i64 %77, %83
  %85 = sub i64 %84, %83
  br label %109

; <label>:86:                                     ; preds = %76
  %87 = icmp eq i32 %48, 8
  br i1 %87, label %109, label %88

; <label>:88:                                     ; preds = %86
  %89 = xor i1 %62, true
  %90 = icmp sgt i64 %77, -1
  %91 = or i1 %90, %89
  %92 = select i1 %91, i32 0, i32 255
  %93 = icmp eq i32 %61, 0
  %94 = add nsw i32 %48, -1
  br label %95

; <label>:95:                                     ; preds = %106, %88
  %96 = phi i32 [ 8, %88 ], [ %107, %106 ]
  %97 = sub i32 %94, %96
  %98 = select i1 %93, i32 %97, i32 %96
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %60, i64 %99
  %101 = load i8, i8* %100, align 1, !tbaa !6
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %92, %102
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %95
  %105 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %106

; <label>:106:                                    ; preds = %104, %95
  %107 = add nuw nsw i32 %96, 1
  %108 = icmp eq i32 %107, %48
  br i1 %108, label %109, label %95

; <label>:109:                                    ; preds = %106, %78, %79, %86
  %110 = phi i64 [ %85, %79 ], [ %77, %78 ], [ %77, %86 ], [ %77, %106 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %110) #9
  br label %300

; <label>:111:                                    ; preds = %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %39) #9
  %112 = getelementptr inbounds i8, i8* %12, i64 %57
  %113 = load i32, i32* %32, align 8, !tbaa !35
  %114 = icmp eq i32 %113, 1
  %115 = icmp eq i32 %48, 0
  br i1 %114, label %116, label %169

; <label>:116:                                    ; preds = %111
  br i1 %115, label %225, label %117

; <label>:117:                                    ; preds = %116
  %118 = add i32 %48, -1
  %119 = and i32 %48, 7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

; <label>:121:                                    ; preds = %117
  br label %122

; <label>:122:                                    ; preds = %122, %121
  %123 = phi i8* [ %130, %122 ], [ %39, %121 ]
  %124 = phi i32 [ %127, %122 ], [ %48, %121 ]
  %125 = phi i8* [ %128, %122 ], [ %112, %121 ]
  %126 = phi i32 [ %131, %122 ], [ %119, %121 ]
  %127 = add nsw i32 %124, -1
  %128 = getelementptr inbounds i8, i8* %125, i64 1
  %129 = load volatile i8, i8* %125, align 1, !tbaa !6
  %130 = getelementptr inbounds i8, i8* %123, i64 1
  store volatile i8 %129, i8* %123, align 1, !tbaa !6
  %131 = add i32 %126, -1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %122, !llvm.loop !41

; <label>:133:                                    ; preds = %122, %117
  %134 = phi i8* [ %39, %117 ], [ %130, %122 ]
  %135 = phi i32 [ %48, %117 ], [ %127, %122 ]
  %136 = phi i8* [ %112, %117 ], [ %128, %122 ]
  %137 = icmp ult i32 %118, 7
  br i1 %137, label %225, label %138

; <label>:138:                                    ; preds = %133
  br label %139

; <label>:139:                                    ; preds = %139, %138
  %140 = phi i8* [ %134, %138 ], [ %167, %139 ]
  %141 = phi i32 [ %135, %138 ], [ %164, %139 ]
  %142 = phi i8* [ %136, %138 ], [ %165, %139 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load volatile i8, i8* %142, align 1, !tbaa !6
  %145 = getelementptr inbounds i8, i8* %140, i64 1
  store volatile i8 %144, i8* %140, align 1, !tbaa !6
  %146 = getelementptr inbounds i8, i8* %142, i64 2
  %147 = load volatile i8, i8* %143, align 1, !tbaa !6
  %148 = getelementptr inbounds i8, i8* %140, i64 2
  store volatile i8 %147, i8* %145, align 1, !tbaa !6
  %149 = getelementptr inbounds i8, i8* %142, i64 3
  %150 = load volatile i8, i8* %146, align 1, !tbaa !6
  %151 = getelementptr inbounds i8, i8* %140, i64 3
  store volatile i8 %150, i8* %148, align 1, !tbaa !6
  %152 = getelementptr inbounds i8, i8* %142, i64 4
  %153 = load volatile i8, i8* %149, align 1, !tbaa !6
  %154 = getelementptr inbounds i8, i8* %140, i64 4
  store volatile i8 %153, i8* %151, align 1, !tbaa !6
  %155 = getelementptr inbounds i8, i8* %142, i64 5
  %156 = load volatile i8, i8* %152, align 1, !tbaa !6
  %157 = getelementptr inbounds i8, i8* %140, i64 5
  store volatile i8 %156, i8* %154, align 1, !tbaa !6
  %158 = getelementptr inbounds i8, i8* %142, i64 6
  %159 = load volatile i8, i8* %155, align 1, !tbaa !6
  %160 = getelementptr inbounds i8, i8* %140, i64 6
  store volatile i8 %159, i8* %157, align 1, !tbaa !6
  %161 = getelementptr inbounds i8, i8* %142, i64 7
  %162 = load volatile i8, i8* %158, align 1, !tbaa !6
  %163 = getelementptr inbounds i8, i8* %140, i64 7
  store volatile i8 %162, i8* %160, align 1, !tbaa !6
  %164 = add nsw i32 %141, -8
  %165 = getelementptr inbounds i8, i8* %142, i64 8
  %166 = load volatile i8, i8* %161, align 1, !tbaa !6
  %167 = getelementptr inbounds i8, i8* %140, i64 8
  store volatile i8 %166, i8* %163, align 1, !tbaa !6
  %168 = icmp eq i32 %164, 0
  br i1 %168, label %225, label %139

; <label>:169:                                    ; preds = %111
  br i1 %115, label %225, label %170

; <label>:170:                                    ; preds = %169
  %171 = add nsw i32 %48, -1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %39, i64 %172
  %174 = add i32 %48, -1
  %175 = and i32 %48, 7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %189, label %177

; <label>:177:                                    ; preds = %170
  br label %178

; <label>:178:                                    ; preds = %178, %177
  %179 = phi i8* [ %173, %177 ], [ %186, %178 ]
  %180 = phi i32 [ %48, %177 ], [ %183, %178 ]
  %181 = phi i8* [ %112, %177 ], [ %184, %178 ]
  %182 = phi i32 [ %175, %177 ], [ %187, %178 ]
  %183 = add nsw i32 %180, -1
  %184 = getelementptr inbounds i8, i8* %181, i64 1
  %185 = load volatile i8, i8* %181, align 1, !tbaa !6
  %186 = getelementptr inbounds i8, i8* %179, i64 -1
  store volatile i8 %185, i8* %179, align 1, !tbaa !6
  %187 = add i32 %182, -1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %178, !llvm.loop !42

; <label>:189:                                    ; preds = %178, %170
  %190 = phi i8* [ %173, %170 ], [ %186, %178 ]
  %191 = phi i32 [ %48, %170 ], [ %183, %178 ]
  %192 = phi i8* [ %112, %170 ], [ %184, %178 ]
  %193 = icmp ult i32 %174, 7
  br i1 %193, label %225, label %194

; <label>:194:                                    ; preds = %189
  br label %195

; <label>:195:                                    ; preds = %195, %194
  %196 = phi i8* [ %190, %194 ], [ %223, %195 ]
  %197 = phi i32 [ %191, %194 ], [ %220, %195 ]
  %198 = phi i8* [ %192, %194 ], [ %221, %195 ]
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load volatile i8, i8* %198, align 1, !tbaa !6
  %201 = getelementptr inbounds i8, i8* %196, i64 -1
  store volatile i8 %200, i8* %196, align 1, !tbaa !6
  %202 = getelementptr inbounds i8, i8* %198, i64 2
  %203 = load volatile i8, i8* %199, align 1, !tbaa !6
  %204 = getelementptr inbounds i8, i8* %196, i64 -2
  store volatile i8 %203, i8* %201, align 1, !tbaa !6
  %205 = getelementptr inbounds i8, i8* %198, i64 3
  %206 = load volatile i8, i8* %202, align 1, !tbaa !6
  %207 = getelementptr inbounds i8, i8* %196, i64 -3
  store volatile i8 %206, i8* %204, align 1, !tbaa !6
  %208 = getelementptr inbounds i8, i8* %198, i64 4
  %209 = load volatile i8, i8* %205, align 1, !tbaa !6
  %210 = getelementptr inbounds i8, i8* %196, i64 -4
  store volatile i8 %209, i8* %207, align 1, !tbaa !6
  %211 = getelementptr inbounds i8, i8* %198, i64 5
  %212 = load volatile i8, i8* %208, align 1, !tbaa !6
  %213 = getelementptr inbounds i8, i8* %196, i64 -5
  store volatile i8 %212, i8* %210, align 1, !tbaa !6
  %214 = getelementptr inbounds i8, i8* %198, i64 6
  %215 = load volatile i8, i8* %211, align 1, !tbaa !6
  %216 = getelementptr inbounds i8, i8* %196, i64 -6
  store volatile i8 %215, i8* %213, align 1, !tbaa !6
  %217 = getelementptr inbounds i8, i8* %198, i64 7
  %218 = load volatile i8, i8* %214, align 1, !tbaa !6
  %219 = getelementptr inbounds i8, i8* %196, i64 -7
  store volatile i8 %218, i8* %216, align 1, !tbaa !6
  %220 = add nsw i32 %197, -8
  %221 = getelementptr inbounds i8, i8* %198, i64 8
  %222 = load volatile i8, i8* %217, align 1, !tbaa !6
  %223 = getelementptr inbounds i8, i8* %196, i64 -8
  store volatile i8 %222, i8* %219, align 1, !tbaa !6
  %224 = icmp eq i32 %220, 0
  br i1 %224, label %225, label %195

; <label>:225:                                    ; preds = %189, %195, %133, %139, %116, %169
  %226 = load i32, i32* %5, align 4, !tbaa !32
  %227 = icmp eq i32 %226, 4
  br i1 %227, label %228, label %231

; <label>:228:                                    ; preds = %225
  %229 = load volatile float, float* %40, align 8, !tbaa !6
  %230 = fpext float %229 to double
  br label %233

; <label>:231:                                    ; preds = %225
  %232 = load volatile double, double* %41, align 8, !tbaa !6
  br label %233

; <label>:233:                                    ; preds = %231, %228
  %234 = phi double [ %230, %228 ], [ %232, %231 ]
  call void @lua_pushnumber(%struct.lua_State* %0, double %234) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %39) #9
  %235 = sext i32 %226 to i64
  br label %300

; <label>:236:                                    ; preds = %56
  %237 = getelementptr inbounds i8, i8* %12, i64 %57
  %238 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %237, i64 %49) #9
  br label %300

; <label>:239:                                    ; preds = %56
  %240 = getelementptr inbounds i8, i8* %12, i64 %57
  %241 = load i32, i32* %32, align 8, !tbaa !35
  %242 = icmp sgt i32 %48, 0
  br i1 %242, label %243, label %281

; <label>:243:                                    ; preds = %239
  %244 = icmp slt i32 %48, 8
  %245 = icmp eq i32 %241, 0
  %246 = select i1 %244, i32 %48, i32 8
  %247 = add nsw i32 %246, -1
  %248 = sub i32 %48, %246
  %249 = select i1 %245, i32 %248, i32 %247
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %240, i64 %250
  %252 = load i8, i8* %251, align 1, !tbaa !6
  %253 = zext i8 %252 to i64
  %254 = icmp sgt i32 %246, 1
  br i1 %254, label %313, label %255

; <label>:255:                                    ; preds = %357, %335, %313, %379, %368, %346, %324, %243
  %256 = phi i64 [ %253, %243 ], [ %322, %313 ], [ %333, %324 ], [ %344, %335 ], [ %355, %346 ], [ %366, %357 ], [ %377, %368 ], [ %388, %379 ]
  %257 = icmp slt i32 %48, 9
  br i1 %257, label %274, label %258

; <label>:258:                                    ; preds = %255
  %259 = icmp eq i32 %241, 0
  %260 = add nsw i32 %48, -1
  br label %261

; <label>:261:                                    ; preds = %271, %258
  %262 = phi i32 [ 8, %258 ], [ %272, %271 ]
  %263 = sub i32 %260, %262
  %264 = select i1 %259, i32 %263, i32 %262
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %240, i64 %265
  %267 = load i8, i8* %266, align 1, !tbaa !6
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %271, label %269

; <label>:269:                                    ; preds = %261
  %270 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %271

; <label>:271:                                    ; preds = %269, %261
  %272 = add nuw nsw i32 %262, 1
  %273 = icmp eq i32 %272, %48
  br i1 %273, label %274, label %261

; <label>:274:                                    ; preds = %271, %255
  %275 = load i64, i64* %4, align 8, !tbaa !2
  %276 = add i64 %57, %49
  %277 = sub i64 %275, %276
  %278 = icmp ugt i64 %256, %277
  br i1 %278, label %279, label %281

; <label>:279:                                    ; preds = %274
  %280 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #9
  br label %281

; <label>:281:                                    ; preds = %239, %274, %279
  %282 = phi i64 [ %256, %274 ], [ %256, %279 ], [ 0, %239 ]
  %283 = getelementptr inbounds i8, i8* %240, i64 %49
  %284 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %283, i64 %282) #9
  %285 = add i64 %282, %57
  br label %300

; <label>:286:                                    ; preds = %56
  %287 = getelementptr inbounds i8, i8* %12, i64 %57
  %288 = call i64 @strlen(i8* %287) #11
  %289 = shl i64 %288, 32
  %290 = ashr exact i64 %289, 32
  %291 = add i64 %290, %57
  %292 = load i64, i64* %4, align 8, !tbaa !2
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %296, label %294

; <label>:294:                                    ; preds = %286
  %295 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #9
  br label %296

; <label>:296:                                    ; preds = %294, %286
  %297 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %287, i64 %290) #9
  %298 = add i64 %291, 1
  br label %300

; <label>:299:                                    ; preds = %56, %56, %56
  br label %300

; <label>:300:                                    ; preds = %56, %299, %296, %281, %236, %233, %109
  %301 = phi i64 [ %49, %56 ], [ %49, %299 ], [ %49, %296 ], [ %49, %281 ], [ %49, %236 ], [ %235, %233 ], [ %49, %109 ]
  %302 = phi i32 [ %58, %56 ], [ %44, %299 ], [ %58, %296 ], [ %58, %281 ], [ %58, %236 ], [ %58, %233 ], [ %58, %109 ]
  %303 = phi i64 [ %57, %56 ], [ %57, %299 ], [ %298, %296 ], [ %285, %281 ], [ %57, %236 ], [ %57, %233 ], [ %57, %109 ]
  %304 = add i64 %303, %301
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  %305 = load i8*, i8** %3, align 8, !tbaa !12
  %306 = load i8, i8* %305, align 1, !tbaa !6
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %42

; <label>:308:                                    ; preds = %300, %30
  %309 = phi i32 [ 0, %30 ], [ %302, %300 ]
  %310 = phi i64 [ %26, %30 ], [ %304, %300 ]
  %311 = add i64 %310, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %311) #9
  %312 = add nsw i32 %309, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9
  ret i32 %312

; <label>:313:                                    ; preds = %243
  %314 = add nsw i32 %246, -2
  %315 = shl nuw nsw i64 %253, 8
  %316 = sub i32 %48, %247
  %317 = select i1 %245, i32 %316, i32 %314
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %240, i64 %318
  %320 = load i8, i8* %319, align 1, !tbaa !6
  %321 = zext i8 %320 to i64
  %322 = or i64 %315, %321
  %323 = icmp eq i32 %246, 2
  br i1 %323, label %255, label %324

; <label>:324:                                    ; preds = %313
  %325 = add nsw i32 %246, -3
  %326 = shl nuw nsw i64 %322, 8
  %327 = sub i32 %48, %314
  %328 = select i1 %245, i32 %327, i32 %325
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %240, i64 %329
  %331 = load i8, i8* %330, align 1, !tbaa !6
  %332 = zext i8 %331 to i64
  %333 = or i64 %326, %332
  %334 = icmp sgt i32 %246, 3
  br i1 %334, label %335, label %255

; <label>:335:                                    ; preds = %324
  %336 = add nsw i32 %246, -4
  %337 = shl nuw nsw i64 %333, 8
  %338 = sub i32 %48, %325
  %339 = select i1 %245, i32 %338, i32 %336
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %240, i64 %340
  %342 = load i8, i8* %341, align 1, !tbaa !6
  %343 = zext i8 %342 to i64
  %344 = or i64 %337, %343
  %345 = icmp eq i32 %246, 4
  br i1 %345, label %255, label %346

; <label>:346:                                    ; preds = %335
  %347 = add nsw i32 %246, -5
  %348 = shl i64 %344, 8
  %349 = sub i32 %48, %336
  %350 = select i1 %245, i32 %349, i32 %347
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %240, i64 %351
  %353 = load i8, i8* %352, align 1, !tbaa !6
  %354 = zext i8 %353 to i64
  %355 = or i64 %348, %354
  %356 = icmp sgt i32 %246, 5
  br i1 %356, label %357, label %255

; <label>:357:                                    ; preds = %346
  %358 = add nsw i32 %246, -6
  %359 = shl i64 %355, 8
  %360 = sub i32 %48, %347
  %361 = select i1 %245, i32 %360, i32 %358
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %240, i64 %362
  %364 = load i8, i8* %363, align 1, !tbaa !6
  %365 = zext i8 %364 to i64
  %366 = or i64 %359, %365
  %367 = icmp eq i32 %246, 6
  br i1 %367, label %255, label %368

; <label>:368:                                    ; preds = %357
  %369 = add nsw i32 %246, -7
  %370 = shl i64 %366, 8
  %371 = sub i32 %48, %358
  %372 = select i1 %245, i32 %371, i32 %369
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %240, i64 %373
  %375 = load i8, i8* %374, align 1, !tbaa !6
  %376 = zext i8 %375 to i64
  %377 = or i64 %370, %376
  %378 = icmp sgt i32 %246, 7
  br i1 %378, label %379, label %255

; <label>:379:                                    ; preds = %368
  %380 = add nsw i32 %246, -8
  %381 = shl i64 %377, 8
  %382 = sub i32 %48, %369
  %383 = select i1 %245, i32 %382, i32 %380
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %240, i64 %384
  %386 = load i8, i8* %385, align 1, !tbaa !6
  %387 = zext i8 %386 to i64
  %388 = or i64 %381, %387
  br label %255

; <label>:389:                                    ; preds = %65
  %390 = add nsw i32 %67, -2
  %391 = shl nuw nsw i64 %74, 8
  %392 = sub i32 %48, %68
  %393 = select i1 %66, i32 %392, i32 %390
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %60, i64 %394
  %396 = load i8, i8* %395, align 1, !tbaa !6
  %397 = zext i8 %396 to i64
  %398 = or i64 %391, %397
  %399 = icmp eq i32 %67, 2
  br i1 %399, label %76, label %400

; <label>:400:                                    ; preds = %389
  %401 = add nsw i32 %67, -3
  %402 = shl nuw nsw i64 %398, 8
  %403 = sub i32 %48, %390
  %404 = select i1 %66, i32 %403, i32 %401
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %60, i64 %405
  %407 = load i8, i8* %406, align 1, !tbaa !6
  %408 = zext i8 %407 to i64
  %409 = or i64 %402, %408
  %410 = icmp sgt i32 %67, 3
  br i1 %410, label %411, label %76

; <label>:411:                                    ; preds = %400
  %412 = add nsw i32 %67, -4
  %413 = shl nuw nsw i64 %409, 8
  %414 = sub i32 %48, %401
  %415 = select i1 %66, i32 %414, i32 %412
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, i8* %60, i64 %416
  %418 = load i8, i8* %417, align 1, !tbaa !6
  %419 = zext i8 %418 to i64
  %420 = or i64 %413, %419
  %421 = icmp eq i32 %67, 4
  br i1 %421, label %76, label %422

; <label>:422:                                    ; preds = %411
  %423 = add nsw i32 %67, -5
  %424 = shl i64 %420, 8
  %425 = sub i32 %48, %412
  %426 = select i1 %66, i32 %425, i32 %423
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %60, i64 %427
  %429 = load i8, i8* %428, align 1, !tbaa !6
  %430 = zext i8 %429 to i64
  %431 = or i64 %424, %430
  %432 = icmp sgt i32 %67, 5
  br i1 %432, label %433, label %76

; <label>:433:                                    ; preds = %422
  %434 = add nsw i32 %67, -6
  %435 = shl i64 %431, 8
  %436 = sub i32 %48, %423
  %437 = select i1 %66, i32 %436, i32 %434
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, i8* %60, i64 %438
  %440 = load i8, i8* %439, align 1, !tbaa !6
  %441 = zext i8 %440 to i64
  %442 = or i64 %435, %441
  %443 = icmp eq i32 %67, 6
  br i1 %443, label %76, label %444

; <label>:444:                                    ; preds = %433
  %445 = add nsw i32 %67, -7
  %446 = shl i64 %442, 8
  %447 = sub i32 %48, %434
  %448 = select i1 %66, i32 %447, i32 %445
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %60, i64 %449
  %451 = load i8, i8* %450, align 1, !tbaa !6
  %452 = zext i8 %451 to i64
  %453 = or i64 %446, %452
  %454 = icmp sgt i32 %67, 7
  br i1 %454, label %455, label %76

; <label>:455:                                    ; preds = %444
  %456 = add nsw i32 %67, -8
  %457 = shl i64 %453, 8
  %458 = sub i32 %48, %445
  %459 = select i1 %66, i32 %458, i32 %456
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %60, i64 %460
  %462 = load i8, i8* %461, align 1, !tbaa !6
  %463 = zext i8 %462 to i64
  %464 = or i64 %457, %463
  br label %76
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #9
  ret i32 0
}

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
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
  br label %223

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
  %36 = call i8* @strpbrk(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #11
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %83

; <label>:38:                                     ; preds = %33
  %39 = call i64 @strlen(i8* %35) #11
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
  br i1 %49, label %222, label %50

; <label>:50:                                     ; preds = %48
  %51 = add i64 %31, -1
  %52 = sub i64 %46, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %222, label %54

; <label>:54:                                     ; preds = %50
  %55 = load i8, i8* %9, align 1, !tbaa !6
  %56 = sext i8 %55 to i32
  %57 = getelementptr inbounds i8, i8* %9, i64 1
  br label %58

; <label>:58:                                     ; preds = %67, %54
  %59 = phi i64 [ %52, %54 ], [ %71, %67 ]
  %60 = phi i8* [ %44, %54 ], [ %64, %67 ]
  %61 = call i8* @memchr(i8* %60, i32 %56, i64 %59) #11
  %62 = icmp eq i8* %61, null
  br i1 %62, label %222, label %63

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %61, i64 1
  %65 = call i32 @memcmp(i8* nonnull %64, i8* nonnull %57, i64 %51) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

; <label>:67:                                     ; preds = %63
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %60 to i64
  %70 = add i64 %59, %69
  %71 = sub i64 %70, %68
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %222, label %58

; <label>:73:                                     ; preds = %43
  %74 = icmp eq i8* %44, null
  br i1 %74, label %222, label %75

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
  br label %223

; <label>:83:                                     ; preds = %33, %26
  %84 = bitcast %struct.MatchState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %84) #9
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

; <label>:106:                                    ; preds = %217, %94
  %107 = phi i8* [ %85, %94 ], [ %218, %217 ]
  store i8 0, i8* %105, align 4, !tbaa !28
  %108 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %107, i8* %96)
  %109 = icmp eq i8* %108, null
  br i1 %109, label %214, label %110

; <label>:110:                                    ; preds = %106
  br i1 %27, label %111, label %162

; <label>:111:                                    ; preds = %110
  %112 = ptrtoint i8* %107 to i64
  %113 = ptrtoint i8* %8 to i64
  %114 = sub i64 1, %113
  %115 = add i64 %114, %112
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %115) #9
  %116 = ptrtoint i8* %108 to i64
  %117 = sub i64 %116, %113
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %117) #9
  %118 = load i8, i8* %105, align 4, !tbaa !28
  %119 = zext i8 %118 to i32
  %120 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  call void @luaL_checkstack(%struct.lua_State* %120, i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %121 = icmp eq i8 %118, 0
  br i1 %121, label %160, label %122

; <label>:122:                                    ; preds = %111
  %123 = bitcast %struct.MatchState* %5 to i64*
  %124 = zext i8 %118 to i64
  br label %125

; <label>:125:                                    ; preds = %157, %122
  %126 = phi i64 [ %158, %157 ], [ 0, %122 ]
  %127 = load i8, i8* %105, align 4, !tbaa !28
  %128 = zext i8 %127 to i64
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %137, label %130

; <label>:130:                                    ; preds = %125
  %131 = icmp eq i64 %126, 0
  br i1 %131, label %151, label %132

; <label>:132:                                    ; preds = %130
  %133 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %134 = trunc i64 %126 to i32
  %135 = add i32 %134, 1
  %136 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %135) #9
  br label %151

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %126, i32 1
  %139 = load i64, i64* %138, align 8, !tbaa !29
  %140 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %126, i32 0
  %141 = bitcast i8** %140 to i64*
  %142 = load i64, i64* %141, align 8, !tbaa !31
  switch i64 %139, label %151 [
    i64 -1, label %143
    i64 -2, label %146
  ]

; <label>:143:                                    ; preds = %137
  %144 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %145 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %151

; <label>:146:                                    ; preds = %137
  %147 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %148 = load i64, i64* %123, align 8, !tbaa !21
  %149 = add i64 %142, 1
  %150 = sub i64 %149, %148
  call void @lua_pushinteger(%struct.lua_State* %147, i64 %150) #9
  br label %157

; <label>:151:                                    ; preds = %137, %143, %132, %130
  %152 = phi i64 [ 0, %130 ], [ 0, %132 ], [ %142, %143 ], [ %142, %137 ]
  %153 = phi i64 [ 0, %130 ], [ 0, %132 ], [ -1, %143 ], [ %139, %137 ]
  %154 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %155 = inttoptr i64 %152 to i8*
  %156 = call i8* @lua_pushlstring(%struct.lua_State* %154, i8* %155, i64 %153) #9
  br label %157

; <label>:157:                                    ; preds = %146, %151
  %158 = add nuw nsw i64 %126, 1
  %159 = icmp eq i64 %158, %124
  br i1 %159, label %160, label %125

; <label>:160:                                    ; preds = %157, %111
  %161 = add nuw nsw i32 %119, 2
  br label %220

; <label>:162:                                    ; preds = %110
  %163 = load i8, i8* %105, align 4, !tbaa !28
  %164 = icmp eq i8 %163, 0
  %165 = icmp ne i8* %107, null
  %166 = and i1 %165, %164
  %167 = zext i8 %163 to i32
  %168 = select i1 %166, i32 1, i32 %167
  %169 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  call void @luaL_checkstack(%struct.lua_State* %169, i32 %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %170 = icmp eq i32 %168, 0
  br i1 %170, label %220, label %171

; <label>:171:                                    ; preds = %162
  %172 = bitcast %struct.MatchState* %5 to i64*
  %173 = ptrtoint i8* %107 to i64
  %174 = ptrtoint i8* %108 to i64
  %175 = sub i64 %174, %173
  %176 = icmp eq i64 %175, -2
  %177 = zext i32 %168 to i64
  br label %178

; <label>:178:                                    ; preds = %211, %171
  %179 = phi i64 [ %212, %211 ], [ 0, %171 ]
  %180 = load i8, i8* %105, align 4, !tbaa !28
  %181 = zext i8 %180 to i64
  %182 = icmp ult i64 %179, %181
  br i1 %182, label %190, label %183

; <label>:183:                                    ; preds = %178
  %184 = icmp eq i64 %179, 0
  br i1 %184, label %204, label %185

; <label>:185:                                    ; preds = %183
  %186 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %187 = trunc i64 %179 to i32
  %188 = add i32 %187, 1
  %189 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %188) #9
  br label %204

; <label>:190:                                    ; preds = %178
  %191 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %179, i32 1
  %192 = load i64, i64* %191, align 8, !tbaa !29
  %193 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %179, i32 0
  %194 = bitcast i8** %193 to i64*
  %195 = load i64, i64* %194, align 8, !tbaa !31
  switch i64 %192, label %205 [
    i64 -1, label %196
    i64 -2, label %199
  ]

; <label>:196:                                    ; preds = %190
  %197 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %198 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %205

; <label>:199:                                    ; preds = %190
  %200 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %201 = load i64, i64* %172, align 8, !tbaa !21
  %202 = add i64 %195, 1
  %203 = sub i64 %202, %201
  call void @lua_pushinteger(%struct.lua_State* %200, i64 %203) #9
  br label %211

; <label>:204:                                    ; preds = %183, %185
  br i1 %176, label %211, label %205

; <label>:205:                                    ; preds = %196, %190, %204
  %206 = phi i64 [ %175, %204 ], [ -1, %196 ], [ %192, %190 ]
  %207 = phi i64 [ %173, %204 ], [ %195, %196 ], [ %195, %190 ]
  %208 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %209 = inttoptr i64 %207 to i8*
  %210 = call i8* @lua_pushlstring(%struct.lua_State* %208, i8* %209, i64 %206) #9
  br label %211

; <label>:211:                                    ; preds = %199, %205, %204
  %212 = add nuw nsw i64 %179, 1
  %213 = icmp eq i64 %212, %177
  br i1 %213, label %220, label %178

; <label>:214:                                    ; preds = %106
  %215 = load i8*, i8** %102, align 8, !tbaa !22
  %216 = icmp ult i8* %107, %215
  br i1 %216, label %217, label %219

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds i8, i8* %107, i64 1
  br i1 %87, label %219, label %106

; <label>:219:                                    ; preds = %217, %214
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #9
  br label %222

; <label>:220:                                    ; preds = %211, %160, %162
  %221 = phi i32 [ 0, %162 ], [ %161, %160 ], [ %168, %211 ]
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #9
  br label %223

; <label>:222:                                    ; preds = %58, %67, %50, %48, %219, %73
  call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %223

; <label>:223:                                    ; preds = %220, %75, %222, %25
  %224 = phi i32 [ 1, %25 ], [ 1, %222 ], [ %221, %220 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  ret i32 %224
}

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  br i1 %15, label %592, label %16

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %19 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %20 = bitcast i8** %19 to i64*
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  br label %22

; <label>:22:                                     ; preds = %16, %587
  %23 = phi i8* [ %14, %16 ], [ %590, %587 ]
  %24 = phi i8* [ %1, %16 ], [ %589, %587 ]
  %25 = phi i8* [ %2, %16 ], [ %588, %587 ]
  %26 = getelementptr inbounds i8, i8* %24, i64 -1
  br label %30

; <label>:27:                                     ; preds = %285
  %28 = load i8*, i8** %13, align 8, !tbaa !23
  %29 = icmp eq i8* %203, %28
  br i1 %29, label %592, label %30

; <label>:30:                                     ; preds = %22, %27
  %31 = phi i8* [ %23, %22 ], [ %28, %27 ]
  %32 = phi i8* [ %25, %22 ], [ %203, %27 ]
  %33 = load i8, i8* %32, align 1, !tbaa !6
  %34 = sext i8 %33 to i32
  switch i32 %34, label %325 [
    i32 40, label %35
    i32 41, label %72
    i32 36, label %103
    i32 37, label %110
  ]

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds i8, i8* %32, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !6
  %38 = icmp eq i8 %37, 41
  br i1 %38, label %39, label %56

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %32, i64 2
  %41 = load i8, i8* %21, align 4, !tbaa !28
  %42 = icmp ugt i8 %41, 31
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %39
  %44 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %45 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  br label %46

; <label>:46:                                     ; preds = %43, %39
  %47 = zext i8 %41 to i64
  %48 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %47, i32 0
  store i8* %24, i8** %48, align 8, !tbaa !31
  %49 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %47, i32 1
  store i64 -2, i64* %49, align 8, !tbaa !29
  %50 = add i8 %41, 1
  store i8 %50, i8* %21, align 4, !tbaa !28
  %51 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %40) #9
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %592

; <label>:53:                                     ; preds = %46
  %54 = load i8, i8* %21, align 4, !tbaa !28
  %55 = add i8 %54, -1
  store i8 %55, i8* %21, align 4, !tbaa !28
  br label %592

; <label>:56:                                     ; preds = %35
  %57 = load i8, i8* %21, align 4, !tbaa !28
  %58 = icmp ugt i8 %57, 31
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %61 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  br label %62

; <label>:62:                                     ; preds = %59, %56
  %63 = zext i8 %57 to i64
  %64 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %63, i32 0
  store i8* %24, i8** %64, align 8, !tbaa !31
  %65 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %63, i32 1
  store i64 -1, i64* %65, align 8, !tbaa !29
  %66 = add i8 %57, 1
  store i8 %66, i8* %21, align 4, !tbaa !28
  %67 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %36) #9
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %592

; <label>:69:                                     ; preds = %62
  %70 = load i8, i8* %21, align 4, !tbaa !28
  %71 = add i8 %70, -1
  store i8 %71, i8* %21, align 4, !tbaa !28
  br label %592

; <label>:72:                                     ; preds = %30
  %73 = getelementptr inbounds i8, i8* %32, i64 1
  %74 = load i8, i8* %21, align 4, !tbaa !28
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %76

; <label>:76:                                     ; preds = %72
  %77 = zext i8 %74 to i64
  br label %80

; <label>:78:                                     ; preds = %80
  %79 = icmp sgt i64 %81, 1
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %82, %78 ]
  %82 = add nsw i64 %81, -1
  %83 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %82, i32 1
  %84 = load i64, i64* %83, align 8, !tbaa !29
  %85 = icmp eq i64 %84, -1
  br i1 %85, label %89, label %78

; <label>:86:                                     ; preds = %78, %72
  %87 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %88 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %91

; <label>:89:                                     ; preds = %80
  %90 = trunc i64 %82 to i32
  br label %91

; <label>:91:                                     ; preds = %89, %86
  %92 = phi i32 [ %88, %86 ], [ %90, %89 ]
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %93
  %95 = bitcast %struct.anon* %94 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !31
  %97 = ptrtoint i8* %24 to i64
  %98 = sub i64 %97, %96
  %99 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %93, i32 1
  store i64 %98, i64* %99, align 8, !tbaa !29
  %100 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %24, i8* nonnull %73) #9
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %592

; <label>:102:                                    ; preds = %91
  store i64 -1, i64* %99, align 8, !tbaa !29
  br label %592

; <label>:103:                                    ; preds = %30
  %104 = getelementptr inbounds i8, i8* %32, i64 1
  %105 = icmp eq i8* %104, %31
  br i1 %105, label %106, label %362

; <label>:106:                                    ; preds = %103
  %107 = load i8*, i8** %19, align 8, !tbaa !22
  %108 = icmp eq i8* %24, %107
  %109 = select i1 %108, i8* %24, i8* null
  br label %592

; <label>:110:                                    ; preds = %30
  %111 = getelementptr inbounds i8, i8* %32, i64 1
  %112 = load i8, i8* %111, align 1, !tbaa !6
  %113 = sext i8 %112 to i32
  switch i32 %113, label %114 [
    i32 98, label %117
    i32 102, label %155
    i32 48, label %288
    i32 49, label %288
    i32 50, label %288
    i32 51, label %288
    i32 52, label %288
    i32 53, label %288
    i32 54, label %288
    i32 55, label %288
    i32 56, label %288
    i32 57, label %288
  ]

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds i8, i8* %32, i64 1
  %116 = icmp eq i8* %115, %31
  br i1 %116, label %328, label %331

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds i8, i8* %32, i64 2
  %119 = getelementptr inbounds i8, i8* %31, i64 -1
  %120 = icmp ugt i8* %119, %118
  br i1 %120, label %124, label %121

; <label>:121:                                    ; preds = %117
  %122 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %123 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %122, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0)) #9
  br label %124

; <label>:124:                                    ; preds = %121, %117
  %125 = load i8, i8* %24, align 1, !tbaa !6
  %126 = load i8, i8* %118, align 1, !tbaa !6
  %127 = icmp eq i8 %125, %126
  br i1 %127, label %128, label %592

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds i8, i8* %32, i64 3
  %130 = load i8, i8* %129, align 1, !tbaa !6
  %131 = getelementptr inbounds i8, i8* %24, i64 1
  %132 = load i8*, i8** %19, align 8, !tbaa !22
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %592

; <label>:134:                                    ; preds = %128
  br label %135

; <label>:135:                                    ; preds = %134, %148
  %136 = phi i8* [ %150, %148 ], [ %131, %134 ]
  %137 = phi i32 [ %149, %148 ], [ 1, %134 ]
  %138 = phi i8* [ %136, %148 ], [ %24, %134 ]
  %139 = load i8, i8* %136, align 1, !tbaa !6
  %140 = icmp eq i8 %139, %130
  br i1 %140, label %141, label %144

; <label>:141:                                    ; preds = %135
  %142 = add nsw i32 %137, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %148

; <label>:144:                                    ; preds = %135
  %145 = icmp eq i8 %139, %125
  %146 = zext i1 %145 to i32
  %147 = add nsw i32 %137, %146
  br label %148

; <label>:148:                                    ; preds = %144, %141
  %149 = phi i32 [ %142, %141 ], [ %147, %144 ]
  %150 = getelementptr inbounds i8, i8* %136, i64 1
  %151 = icmp ult i8* %150, %132
  br i1 %151, label %135, label %592

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %138, i64 2
  %154 = getelementptr inbounds i8, i8* %32, i64 4
  br label %587

; <label>:155:                                    ; preds = %110
  %156 = getelementptr inbounds i8, i8* %32, i64 2
  %157 = load i8, i8* %156, align 1, !tbaa !6
  %158 = icmp eq i8 %157, 91
  br i1 %158, label %163, label %159

; <label>:159:                                    ; preds = %155
  %160 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %161 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #9
  %162 = load i8, i8* %156, align 1, !tbaa !6
  br label %163

; <label>:163:                                    ; preds = %155, %159
  %164 = phi i8 [ 91, %155 ], [ %162, %159 ]
  %165 = getelementptr inbounds i8, i8* %32, i64 3
  %166 = sext i8 %164 to i32
  switch i32 %166, label %202 [
    i32 37, label %167
    i32 91, label %175
  ]

; <label>:167:                                    ; preds = %163
  %168 = load i8*, i8** %13, align 8, !tbaa !23
  %169 = icmp eq i8* %165, %168
  br i1 %169, label %170, label %173

; <label>:170:                                    ; preds = %167
  %171 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %172 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %173

; <label>:173:                                    ; preds = %170, %167
  %174 = getelementptr inbounds i8, i8* %32, i64 4
  br label %202

; <label>:175:                                    ; preds = %163
  %176 = load i8, i8* %165, align 1, !tbaa !6
  %177 = icmp eq i8 %176, 94
  %178 = getelementptr inbounds i8, i8* %32, i64 4
  %179 = select i1 %177, i8* %178, i8* %165
  br label %180

; <label>:180:                                    ; preds = %196, %175
  %181 = phi i8* [ %179, %175 ], [ %197, %196 ]
  %182 = load i8*, i8** %13, align 8, !tbaa !23
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %187

; <label>:184:                                    ; preds = %180
  %185 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %186 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #9
  br label %187

; <label>:187:                                    ; preds = %184, %180
  %188 = getelementptr inbounds i8, i8* %181, i64 1
  %189 = load i8, i8* %181, align 1, !tbaa !6
  %190 = icmp eq i8 %189, 37
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %187
  %192 = load i8*, i8** %13, align 8, !tbaa !23
  %193 = icmp ult i8* %188, %192
  %194 = getelementptr inbounds i8, i8* %181, i64 2
  %195 = select i1 %193, i8* %194, i8* %188
  br label %196

; <label>:196:                                    ; preds = %191, %187
  %197 = phi i8* [ %188, %187 ], [ %195, %191 ]
  %198 = load i8, i8* %197, align 1, !tbaa !6
  %199 = icmp eq i8 %198, 93
  br i1 %199, label %200, label %180

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds i8, i8* %197, i64 1
  br label %202

; <label>:202:                                    ; preds = %163, %173, %200
  %203 = phi i8* [ %201, %200 ], [ %174, %173 ], [ %165, %163 ]
  %204 = load i8*, i8** %18, align 8, !tbaa !21
  %205 = icmp eq i8* %24, %204
  br i1 %205, label %208, label %206

; <label>:206:                                    ; preds = %202
  %207 = load i8, i8* %26, align 1, !tbaa !6
  br label %208

; <label>:208:                                    ; preds = %202, %206
  %209 = phi i8 [ %207, %206 ], [ 0, %202 ]
  %210 = zext i8 %209 to i32
  %211 = getelementptr inbounds i8, i8* %203, i64 -1
  %212 = load i8, i8* %165, align 1, !tbaa !6
  %213 = icmp eq i8 %212, 94
  %214 = select i1 %213, i8* %165, i8* %156
  %215 = xor i1 %213, true
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds i8, i8* %214, i64 1
  %218 = icmp ult i8* %217, %211
  br i1 %218, label %219, label %247

; <label>:219:                                    ; preds = %208
  br label %220

; <label>:220:                                    ; preds = %219, %243
  %221 = phi i8* [ %245, %243 ], [ %217, %219 ]
  %222 = phi i8* [ %244, %243 ], [ %214, %219 ]
  %223 = load i8, i8* %221, align 1, !tbaa !6
  %224 = icmp eq i8 %223, 37
  %225 = getelementptr inbounds i8, i8* %222, i64 2
  %226 = load i8, i8* %225, align 1, !tbaa !6
  br i1 %224, label %227, label %231

; <label>:227:                                    ; preds = %220
  %228 = zext i8 %226 to i32
  %229 = tail call fastcc i32 @match_class(i32 %210, i32 %228) #9
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %243, label %249

; <label>:231:                                    ; preds = %220
  %232 = icmp eq i8 %226, 45
  br i1 %232, label %233, label %241

; <label>:233:                                    ; preds = %231
  %234 = getelementptr inbounds i8, i8* %222, i64 3
  %235 = icmp ult i8* %234, %211
  br i1 %235, label %236, label %241

; <label>:236:                                    ; preds = %233
  %237 = icmp ugt i8 %223, %209
  br i1 %237, label %243, label %238

; <label>:238:                                    ; preds = %236
  %239 = load i8, i8* %234, align 1, !tbaa !6
  %240 = icmp ult i8 %239, %209
  br i1 %240, label %243, label %249

; <label>:241:                                    ; preds = %233, %231
  %242 = icmp eq i8 %223, %209
  br i1 %242, label %249, label %243

; <label>:243:                                    ; preds = %241, %238, %236, %227
  %244 = phi i8* [ %225, %227 ], [ %234, %238 ], [ %234, %236 ], [ %221, %241 ]
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  %246 = icmp ult i8* %245, %211
  br i1 %246, label %220, label %247

; <label>:247:                                    ; preds = %243, %208
  %248 = xor i32 %216, 1
  br label %249

; <label>:249:                                    ; preds = %227, %238, %241, %247
  %250 = phi i32 [ %248, %247 ], [ %216, %241 ], [ %216, %238 ], [ %216, %227 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %592

; <label>:252:                                    ; preds = %249
  %253 = load i8, i8* %24, align 1, !tbaa !6
  %254 = zext i8 %253 to i32
  br i1 %218, label %255, label %283

; <label>:255:                                    ; preds = %252
  br label %256

; <label>:256:                                    ; preds = %255, %279
  %257 = phi i8* [ %281, %279 ], [ %217, %255 ]
  %258 = phi i8* [ %280, %279 ], [ %214, %255 ]
  %259 = load i8, i8* %257, align 1, !tbaa !6
  %260 = icmp eq i8 %259, 37
  %261 = getelementptr inbounds i8, i8* %258, i64 2
  %262 = load i8, i8* %261, align 1, !tbaa !6
  br i1 %260, label %263, label %267

; <label>:263:                                    ; preds = %256
  %264 = zext i8 %262 to i32
  %265 = tail call fastcc i32 @match_class(i32 %254, i32 %264) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %279, label %285

; <label>:267:                                    ; preds = %256
  %268 = icmp eq i8 %262, 45
  br i1 %268, label %269, label %277

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds i8, i8* %258, i64 3
  %271 = icmp ult i8* %270, %211
  br i1 %271, label %272, label %277

; <label>:272:                                    ; preds = %269
  %273 = icmp ugt i8 %259, %253
  br i1 %273, label %279, label %274

; <label>:274:                                    ; preds = %272
  %275 = load i8, i8* %270, align 1, !tbaa !6
  %276 = icmp ult i8 %275, %253
  br i1 %276, label %279, label %285

; <label>:277:                                    ; preds = %269, %267
  %278 = icmp eq i8 %259, %253
  br i1 %278, label %285, label %279

; <label>:279:                                    ; preds = %277, %274, %272, %263
  %280 = phi i8* [ %261, %263 ], [ %270, %274 ], [ %270, %272 ], [ %257, %277 ]
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = icmp ult i8* %281, %211
  br i1 %282, label %256, label %283

; <label>:283:                                    ; preds = %279, %252
  %284 = xor i32 %216, 1
  br label %285

; <label>:285:                                    ; preds = %263, %274, %277, %283
  %286 = phi i32 [ %284, %283 ], [ %216, %277 ], [ %216, %274 ], [ %216, %263 ]
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %592, label %27

; <label>:288:                                    ; preds = %110, %110, %110, %110, %110, %110, %110, %110, %110, %110
  %289 = zext i8 %112 to i32
  %290 = add nsw i32 %289, -49
  %291 = icmp ult i8 %112, 49
  br i1 %291, label %301, label %292

; <label>:292:                                    ; preds = %288
  %293 = load i8, i8* %21, align 4, !tbaa !28
  %294 = zext i8 %293 to i32
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %301

; <label>:296:                                    ; preds = %292
  %297 = sext i32 %290 to i64
  %298 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %297, i32 1
  %299 = load i64, i64* %298, align 8, !tbaa !29
  %300 = icmp eq i64 %299, -1
  br i1 %300, label %301, label %308

; <label>:301:                                    ; preds = %296, %292, %288
  %302 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %303 = add nsw i32 %289, -48
  %304 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %303) #9
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %305, i32 1
  %307 = load i64, i64* %306, align 8, !tbaa !29
  br label %308

; <label>:308:                                    ; preds = %301, %296
  %309 = phi i64 [ %297, %296 ], [ %305, %301 ]
  %310 = phi i64 [ %299, %296 ], [ %307, %301 ]
  %311 = load i64, i64* %20, align 8, !tbaa !22
  %312 = ptrtoint i8* %24 to i64
  %313 = sub i64 %311, %312
  %314 = icmp ult i64 %313, %310
  br i1 %314, label %592, label %315

; <label>:315:                                    ; preds = %308
  %316 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %309, i32 0
  %317 = load i8*, i8** %316, align 8, !tbaa !31
  %318 = tail call i32 @memcmp(i8* %317, i8* %24, i64 %310) #11
  %319 = icmp ne i32 %318, 0
  %320 = getelementptr inbounds i8, i8* %24, i64 %310
  %321 = icmp eq i8* %320, null
  %322 = or i1 %321, %319
  br i1 %322, label %592, label %323

; <label>:323:                                    ; preds = %315
  %324 = getelementptr inbounds i8, i8* %32, i64 2
  br label %587

; <label>:325:                                    ; preds = %30
  %326 = getelementptr inbounds i8, i8* %32, i64 1
  %327 = icmp eq i8 %33, 91
  br i1 %327, label %333, label %362

; <label>:328:                                    ; preds = %114
  %329 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %330 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %329, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %331

; <label>:331:                                    ; preds = %328, %114
  %332 = getelementptr inbounds i8, i8* %32, i64 2
  br label %362

; <label>:333:                                    ; preds = %325
  %334 = load i8, i8* %326, align 1, !tbaa !6
  %335 = icmp eq i8 %334, 94
  %336 = getelementptr inbounds i8, i8* %32, i64 2
  %337 = select i1 %335, i8* %336, i8* %326
  br label %338

; <label>:338:                                    ; preds = %358, %333
  %339 = phi i8* [ %31, %333 ], [ %359, %358 ]
  %340 = phi i8* [ %337, %333 ], [ %355, %358 ]
  %341 = icmp eq i8* %340, %339
  br i1 %341, label %342, label %345

; <label>:342:                                    ; preds = %338
  %343 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !17
  %344 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %343, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #9
  br label %345

; <label>:345:                                    ; preds = %342, %338
  %346 = getelementptr inbounds i8, i8* %340, i64 1
  %347 = load i8, i8* %340, align 1, !tbaa !6
  %348 = icmp eq i8 %347, 37
  br i1 %348, label %349, label %354

; <label>:349:                                    ; preds = %345
  %350 = load i8*, i8** %13, align 8, !tbaa !23
  %351 = icmp ult i8* %346, %350
  %352 = getelementptr inbounds i8, i8* %340, i64 2
  %353 = select i1 %351, i8* %352, i8* %346
  br label %354

; <label>:354:                                    ; preds = %349, %345
  %355 = phi i8* [ %346, %345 ], [ %353, %349 ]
  %356 = load i8, i8* %355, align 1, !tbaa !6
  %357 = icmp eq i8 %356, 93
  br i1 %357, label %360, label %358

; <label>:358:                                    ; preds = %354
  %359 = load i8*, i8** %13, align 8, !tbaa !23
  br label %338

; <label>:360:                                    ; preds = %354
  %361 = getelementptr inbounds i8, i8* %355, i64 1
  br label %362

; <label>:362:                                    ; preds = %103, %325, %331, %360
  %363 = phi i8* [ %326, %360 ], [ %115, %331 ], [ %326, %325 ], [ %104, %103 ]
  %364 = phi i8* [ %361, %360 ], [ %332, %331 ], [ %326, %325 ], [ %104, %103 ]
  %365 = load i8*, i8** %19, align 8, !tbaa !22
  %366 = icmp ugt i8* %365, %24
  br i1 %366, label %369, label %367

; <label>:367:                                    ; preds = %362
  %368 = load i8, i8* %364, align 1, !tbaa !6
  br label %426

; <label>:369:                                    ; preds = %362
  %370 = load i8, i8* %24, align 1, !tbaa !6
  %371 = zext i8 %370 to i32
  %372 = load i8, i8* %32, align 1, !tbaa !6
  %373 = sext i8 %372 to i32
  switch i32 %373, label %419 [
    i32 46, label %374
    i32 37, label %376
    i32 91, label %380
  ]

; <label>:374:                                    ; preds = %369
  %375 = load i8, i8* %364, align 1, !tbaa !6
  br label %430

; <label>:376:                                    ; preds = %369
  %377 = load i8, i8* %363, align 1, !tbaa !6
  %378 = zext i8 %377 to i32
  %379 = tail call fastcc i32 @match_class(i32 %371, i32 %378) #9
  br label %422

; <label>:380:                                    ; preds = %369
  %381 = getelementptr inbounds i8, i8* %364, i64 -1
  %382 = load i8, i8* %363, align 1, !tbaa !6
  %383 = icmp eq i8 %382, 94
  %384 = select i1 %383, i8* %363, i8* %32
  %385 = xor i1 %383, true
  %386 = zext i1 %385 to i32
  %387 = getelementptr inbounds i8, i8* %384, i64 1
  %388 = icmp ult i8* %387, %381
  br i1 %388, label %389, label %417

; <label>:389:                                    ; preds = %380
  br label %390

; <label>:390:                                    ; preds = %389, %413
  %391 = phi i8* [ %415, %413 ], [ %387, %389 ]
  %392 = phi i8* [ %414, %413 ], [ %384, %389 ]
  %393 = load i8, i8* %391, align 1, !tbaa !6
  %394 = icmp eq i8 %393, 37
  %395 = getelementptr inbounds i8, i8* %392, i64 2
  %396 = load i8, i8* %395, align 1, !tbaa !6
  br i1 %394, label %397, label %401

; <label>:397:                                    ; preds = %390
  %398 = zext i8 %396 to i32
  %399 = tail call fastcc i32 @match_class(i32 %371, i32 %398) #9
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %413, label %422

; <label>:401:                                    ; preds = %390
  %402 = icmp eq i8 %396, 45
  br i1 %402, label %403, label %411

; <label>:403:                                    ; preds = %401
  %404 = getelementptr inbounds i8, i8* %392, i64 3
  %405 = icmp ult i8* %404, %381
  br i1 %405, label %406, label %411

; <label>:406:                                    ; preds = %403
  %407 = icmp ugt i8 %393, %370
  br i1 %407, label %413, label %408

; <label>:408:                                    ; preds = %406
  %409 = load i8, i8* %404, align 1, !tbaa !6
  %410 = icmp ult i8 %409, %370
  br i1 %410, label %413, label %422

; <label>:411:                                    ; preds = %403, %401
  %412 = icmp eq i8 %393, %370
  br i1 %412, label %422, label %413

; <label>:413:                                    ; preds = %411, %408, %406, %397
  %414 = phi i8* [ %395, %397 ], [ %404, %408 ], [ %404, %406 ], [ %391, %411 ]
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  %416 = icmp ult i8* %415, %381
  br i1 %416, label %390, label %417

; <label>:417:                                    ; preds = %413, %380
  %418 = xor i32 %386, 1
  br label %422

; <label>:419:                                    ; preds = %369
  %420 = icmp eq i8 %372, %370
  %421 = zext i1 %420 to i32
  br label %422

; <label>:422:                                    ; preds = %411, %408, %397, %417, %376, %419
  %423 = phi i32 [ %421, %419 ], [ %379, %376 ], [ %418, %417 ], [ %386, %397 ], [ %386, %408 ], [ %386, %411 ]
  %424 = icmp eq i32 %423, 0
  %425 = load i8, i8* %364, align 1, !tbaa !6
  br i1 %424, label %426, label %430

; <label>:426:                                    ; preds = %367, %422
  %427 = phi i8 [ %368, %367 ], [ %425, %422 ]
  switch i8 %427, label %592 [
    i8 42, label %428
    i8 63, label %428
    i8 45, label %428
  ]

; <label>:428:                                    ; preds = %426, %426, %426
  %429 = getelementptr inbounds i8, i8* %364, i64 1
  br label %587

; <label>:430:                                    ; preds = %374, %422
  %431 = phi i8 [ %375, %374 ], [ %425, %422 ]
  %432 = sext i8 %431 to i32
  switch i32 %432, label %585 [
    i32 63, label %433
    i32 43, label %438
    i32 42, label %440
    i32 45, label %518
  ]

; <label>:433:                                    ; preds = %430
  %434 = getelementptr inbounds i8, i8* %24, i64 1
  %435 = getelementptr inbounds i8, i8* %364, i64 1
  %436 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %434, i8* nonnull %435)
  %437 = icmp eq i8* %436, null
  br i1 %437, label %587, label %592

; <label>:438:                                    ; preds = %430
  %439 = getelementptr inbounds i8, i8* %24, i64 1
  br label %440

; <label>:440:                                    ; preds = %430, %438
  %441 = phi i8* [ %439, %438 ], [ %24, %430 ]
  %442 = sext i8 %372 to i32
  %443 = icmp ugt i8* %365, %441
  br i1 %443, label %444, label %506

; <label>:444:                                    ; preds = %440
  %445 = getelementptr inbounds i8, i8* %364, i64 -1
  br label %446

; <label>:446:                                    ; preds = %444, %499
  %447 = phi i8* [ %441, %444 ], [ %501, %499 ]
  %448 = phi i64 [ 0, %444 ], [ %500, %499 ]
  %449 = load i8, i8* %447, align 1, !tbaa !6
  %450 = zext i8 %449 to i32
  switch i32 %442, label %493 [
    i32 46, label %499
    i32 37, label %451
    i32 91, label %455
  ]

; <label>:451:                                    ; preds = %446
  %452 = load i8, i8* %363, align 1, !tbaa !6
  %453 = zext i8 %452 to i32
  %454 = tail call fastcc i32 @match_class(i32 %450, i32 %453) #9
  br label %496

; <label>:455:                                    ; preds = %446
  %456 = load i8, i8* %363, align 1, !tbaa !6
  %457 = icmp eq i8 %456, 94
  %458 = select i1 %457, i8* %363, i8* %32
  %459 = xor i1 %457, true
  %460 = zext i1 %459 to i32
  %461 = getelementptr inbounds i8, i8* %458, i64 1
  %462 = icmp ult i8* %461, %445
  br i1 %462, label %463, label %491

; <label>:463:                                    ; preds = %455
  br label %464

; <label>:464:                                    ; preds = %463, %487
  %465 = phi i8* [ %489, %487 ], [ %461, %463 ]
  %466 = phi i8* [ %488, %487 ], [ %458, %463 ]
  %467 = load i8, i8* %465, align 1, !tbaa !6
  %468 = icmp eq i8 %467, 37
  %469 = getelementptr inbounds i8, i8* %466, i64 2
  %470 = load i8, i8* %469, align 1, !tbaa !6
  br i1 %468, label %471, label %475

; <label>:471:                                    ; preds = %464
  %472 = zext i8 %470 to i32
  %473 = tail call fastcc i32 @match_class(i32 %450, i32 %472) #9
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %487, label %496

; <label>:475:                                    ; preds = %464
  %476 = icmp eq i8 %470, 45
  br i1 %476, label %477, label %485

; <label>:477:                                    ; preds = %475
  %478 = getelementptr inbounds i8, i8* %466, i64 3
  %479 = icmp ult i8* %478, %445
  br i1 %479, label %480, label %485

; <label>:480:                                    ; preds = %477
  %481 = icmp ugt i8 %467, %449
  br i1 %481, label %487, label %482

; <label>:482:                                    ; preds = %480
  %483 = load i8, i8* %478, align 1, !tbaa !6
  %484 = icmp ult i8 %483, %449
  br i1 %484, label %487, label %496

; <label>:485:                                    ; preds = %477, %475
  %486 = icmp eq i8 %467, %449
  br i1 %486, label %496, label %487

; <label>:487:                                    ; preds = %485, %482, %480, %471
  %488 = phi i8* [ %469, %471 ], [ %478, %482 ], [ %478, %480 ], [ %465, %485 ]
  %489 = getelementptr inbounds i8, i8* %488, i64 1
  %490 = icmp ult i8* %489, %445
  br i1 %490, label %464, label %491

; <label>:491:                                    ; preds = %487, %455
  %492 = xor i32 %460, 1
  br label %496

; <label>:493:                                    ; preds = %446
  %494 = icmp eq i8 %372, %449
  %495 = zext i1 %494 to i32
  br label %496

; <label>:496:                                    ; preds = %485, %482, %471, %491, %493, %451
  %497 = phi i32 [ %495, %493 ], [ %454, %451 ], [ %492, %491 ], [ %460, %471 ], [ %460, %482 ], [ %460, %485 ]
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %503, label %499

; <label>:499:                                    ; preds = %446, %496
  %500 = add nuw nsw i64 %448, 1
  %501 = getelementptr inbounds i8, i8* %441, i64 %500
  %502 = icmp ugt i8* %365, %501
  br i1 %502, label %446, label %503

; <label>:503:                                    ; preds = %496, %499
  %504 = phi i64 [ %448, %496 ], [ %500, %499 ]
  %505 = icmp sgt i64 %504, -1
  br i1 %505, label %506, label %592

; <label>:506:                                    ; preds = %440, %503
  %507 = phi i64 [ %504, %503 ], [ 0, %440 ]
  %508 = getelementptr inbounds i8, i8* %364, i64 1
  br label %511

; <label>:509:                                    ; preds = %511
  %510 = icmp sgt i64 %517, -1
  br i1 %510, label %511, label %592

; <label>:511:                                    ; preds = %506, %509
  %512 = phi i64 [ %507, %506 ], [ %517, %509 ]
  %513 = getelementptr inbounds i8, i8* %441, i64 %512
  %514 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %513, i8* nonnull %508) #9
  %515 = icmp eq i8* %514, null
  %516 = sext i1 %515 to i64
  %517 = add nsw i64 %512, %516
  br i1 %515, label %509, label %592

; <label>:518:                                    ; preds = %430
  %519 = getelementptr inbounds i8, i8* %364, i64 1
  %520 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %24, i8* nonnull %519) #9
  %521 = icmp eq i8* %520, null
  br i1 %521, label %522, label %592

; <label>:522:                                    ; preds = %518
  %523 = getelementptr inbounds i8, i8* %364, i64 -1
  br label %524

; <label>:524:                                    ; preds = %522, %581
  %525 = phi i8* [ %24, %522 ], [ %582, %581 ]
  %526 = load i8*, i8** %19, align 8, !tbaa !22
  %527 = icmp ugt i8* %526, %525
  br i1 %527, label %528, label %592

; <label>:528:                                    ; preds = %524
  %529 = load i8, i8* %525, align 1, !tbaa !6
  %530 = zext i8 %529 to i32
  %531 = load i8, i8* %32, align 1, !tbaa !6
  %532 = sext i8 %531 to i32
  switch i32 %532, label %575 [
    i32 46, label %581
    i32 37, label %533
    i32 91, label %537
  ]

; <label>:533:                                    ; preds = %528
  %534 = load i8, i8* %363, align 1, !tbaa !6
  %535 = zext i8 %534 to i32
  %536 = tail call fastcc i32 @match_class(i32 %530, i32 %535) #9
  br label %578

; <label>:537:                                    ; preds = %528
  %538 = load i8, i8* %363, align 1, !tbaa !6
  %539 = icmp eq i8 %538, 94
  %540 = select i1 %539, i8* %363, i8* %32
  %541 = xor i1 %539, true
  %542 = zext i1 %541 to i32
  %543 = getelementptr inbounds i8, i8* %540, i64 1
  %544 = icmp ult i8* %543, %523
  br i1 %544, label %545, label %573

; <label>:545:                                    ; preds = %537
  br label %546

; <label>:546:                                    ; preds = %545, %569
  %547 = phi i8* [ %571, %569 ], [ %543, %545 ]
  %548 = phi i8* [ %570, %569 ], [ %540, %545 ]
  %549 = load i8, i8* %547, align 1, !tbaa !6
  %550 = icmp eq i8 %549, 37
  %551 = getelementptr inbounds i8, i8* %548, i64 2
  %552 = load i8, i8* %551, align 1, !tbaa !6
  br i1 %550, label %553, label %557

; <label>:553:                                    ; preds = %546
  %554 = zext i8 %552 to i32
  %555 = tail call fastcc i32 @match_class(i32 %530, i32 %554) #9
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %569, label %578

; <label>:557:                                    ; preds = %546
  %558 = icmp eq i8 %552, 45
  br i1 %558, label %559, label %567

; <label>:559:                                    ; preds = %557
  %560 = getelementptr inbounds i8, i8* %548, i64 3
  %561 = icmp ult i8* %560, %523
  br i1 %561, label %562, label %567

; <label>:562:                                    ; preds = %559
  %563 = icmp ugt i8 %549, %529
  br i1 %563, label %569, label %564

; <label>:564:                                    ; preds = %562
  %565 = load i8, i8* %560, align 1, !tbaa !6
  %566 = icmp ult i8 %565, %529
  br i1 %566, label %569, label %578

; <label>:567:                                    ; preds = %559, %557
  %568 = icmp eq i8 %549, %529
  br i1 %568, label %578, label %569

; <label>:569:                                    ; preds = %567, %564, %562, %553
  %570 = phi i8* [ %551, %553 ], [ %560, %564 ], [ %560, %562 ], [ %547, %567 ]
  %571 = getelementptr inbounds i8, i8* %570, i64 1
  %572 = icmp ult i8* %571, %523
  br i1 %572, label %546, label %573

; <label>:573:                                    ; preds = %569, %537
  %574 = xor i32 %542, 1
  br label %578

; <label>:575:                                    ; preds = %528
  %576 = icmp eq i8 %531, %529
  %577 = zext i1 %576 to i32
  br label %578

; <label>:578:                                    ; preds = %553, %564, %567, %533, %575, %573
  %579 = phi i32 [ %577, %575 ], [ %536, %533 ], [ %574, %573 ], [ %542, %567 ], [ %542, %564 ], [ %542, %553 ]
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %592, label %581

; <label>:581:                                    ; preds = %528, %578
  %582 = getelementptr inbounds i8, i8* %525, i64 1
  %583 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %582, i8* nonnull %519) #9
  %584 = icmp eq i8* %583, null
  br i1 %584, label %524, label %592

; <label>:585:                                    ; preds = %430
  %586 = getelementptr inbounds i8, i8* %24, i64 1
  br label %587

; <label>:587:                                    ; preds = %428, %433, %585, %323, %152
  %588 = phi i8* [ %154, %152 ], [ %324, %323 ], [ %429, %428 ], [ %435, %433 ], [ %364, %585 ]
  %589 = phi i8* [ %153, %152 ], [ %320, %323 ], [ %24, %428 ], [ %24, %433 ], [ %586, %585 ]
  %590 = load i8*, i8** %13, align 8, !tbaa !23
  %591 = icmp eq i8* %588, %590
  br i1 %591, label %592, label %22

; <label>:592:                                    ; preds = %587, %315, %308, %128, %124, %426, %433, %27, %285, %249, %148, %578, %524, %581, %511, %509, %503, %518, %12, %102, %91, %69, %62, %53, %46, %106
  %593 = phi i8* [ %109, %106 ], [ %51, %46 ], [ null, %53 ], [ %67, %62 ], [ null, %69 ], [ %100, %91 ], [ null, %102 ], [ %1, %12 ], [ null, %503 ], [ %520, %518 ], [ %514, %511 ], [ null, %509 ], [ null, %578 ], [ null, %524 ], [ %583, %581 ], [ null, %148 ], [ null, %249 ], [ null, %285 ], [ %24, %27 ], [ null, %426 ], [ %436, %433 ], [ %589, %587 ], [ null, %124 ], [ null, %128 ], [ null, %315 ], [ null, %308 ]
  %594 = load i32, i32* %4, align 8, !tbaa !20
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %4, align 8, !tbaa !20
  ret i8* %593
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #5 {
  %3 = add i32 %1, 128
  %4 = icmp ult i32 %3, 384
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %2
  %6 = tail call i32** @__ctype_tolower_loc() #10
  %7 = load i32*, i32** %6, align 8, !tbaa !12
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !32
  br label %11

; <label>:11:                                     ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ %1, %2 ]
  switch i32 %12, label %97 [
    i32 97, label %13
    i32 99, label %21
    i32 100, label %29
    i32 103, label %37
    i32 108, label %45
    i32 112, label %53
    i32 115, label %61
    i32 117, label %69
    i32 119, label %77
    i32 120, label %85
    i32 122, label %93
  ]

; <label>:13:                                     ; preds = %11
  %14 = tail call i16** @__ctype_b_loc() #10
  %15 = load i16*, i16** %14, align 8, !tbaa !12
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds i16, i16* %15, i64 %16
  %18 = load i16, i16* %17, align 2, !tbaa !13
  %19 = and i16 %18, 1024
  %20 = zext i16 %19 to i32
  br label %100

; <label>:21:                                     ; preds = %11
  %22 = tail call i16** @__ctype_b_loc() #10
  %23 = load i16*, i16** %22, align 8, !tbaa !12
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds i16, i16* %23, i64 %24
  %26 = load i16, i16* %25, align 2, !tbaa !13
  %27 = and i16 %26, 2
  %28 = zext i16 %27 to i32
  br label %100

; <label>:29:                                     ; preds = %11
  %30 = tail call i16** @__ctype_b_loc() #10
  %31 = load i16*, i16** %30, align 8, !tbaa !12
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds i16, i16* %31, i64 %32
  %34 = load i16, i16* %33, align 2, !tbaa !13
  %35 = and i16 %34, 2048
  %36 = zext i16 %35 to i32
  br label %100

; <label>:37:                                     ; preds = %11
  %38 = tail call i16** @__ctype_b_loc() #10
  %39 = load i16*, i16** %38, align 8, !tbaa !12
  %40 = sext i32 %0 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  %42 = load i16, i16* %41, align 2, !tbaa !13
  %43 = and i16 %42, -32768
  %44 = zext i16 %43 to i32
  br label %100

; <label>:45:                                     ; preds = %11
  %46 = tail call i16** @__ctype_b_loc() #10
  %47 = load i16*, i16** %46, align 8, !tbaa !12
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds i16, i16* %47, i64 %48
  %50 = load i16, i16* %49, align 2, !tbaa !13
  %51 = and i16 %50, 512
  %52 = zext i16 %51 to i32
  br label %100

; <label>:53:                                     ; preds = %11
  %54 = tail call i16** @__ctype_b_loc() #10
  %55 = load i16*, i16** %54, align 8, !tbaa !12
  %56 = sext i32 %0 to i64
  %57 = getelementptr inbounds i16, i16* %55, i64 %56
  %58 = load i16, i16* %57, align 2, !tbaa !13
  %59 = and i16 %58, 4
  %60 = zext i16 %59 to i32
  br label %100

; <label>:61:                                     ; preds = %11
  %62 = tail call i16** @__ctype_b_loc() #10
  %63 = load i16*, i16** %62, align 8, !tbaa !12
  %64 = sext i32 %0 to i64
  %65 = getelementptr inbounds i16, i16* %63, i64 %64
  %66 = load i16, i16* %65, align 2, !tbaa !13
  %67 = and i16 %66, 8192
  %68 = zext i16 %67 to i32
  br label %100

; <label>:69:                                     ; preds = %11
  %70 = tail call i16** @__ctype_b_loc() #10
  %71 = load i16*, i16** %70, align 8, !tbaa !12
  %72 = sext i32 %0 to i64
  %73 = getelementptr inbounds i16, i16* %71, i64 %72
  %74 = load i16, i16* %73, align 2, !tbaa !13
  %75 = and i16 %74, 256
  %76 = zext i16 %75 to i32
  br label %100

; <label>:77:                                     ; preds = %11
  %78 = tail call i16** @__ctype_b_loc() #10
  %79 = load i16*, i16** %78, align 8, !tbaa !12
  %80 = sext i32 %0 to i64
  %81 = getelementptr inbounds i16, i16* %79, i64 %80
  %82 = load i16, i16* %81, align 2, !tbaa !13
  %83 = and i16 %82, 8
  %84 = zext i16 %83 to i32
  br label %100

; <label>:85:                                     ; preds = %11
  %86 = tail call i16** @__ctype_b_loc() #10
  %87 = load i16*, i16** %86, align 8, !tbaa !12
  %88 = sext i32 %0 to i64
  %89 = getelementptr inbounds i16, i16* %87, i64 %88
  %90 = load i16, i16* %89, align 2, !tbaa !13
  %91 = and i16 %90, 4096
  %92 = zext i16 %91 to i32
  br label %100

; <label>:93:                                     ; preds = %11
  %94 = icmp eq i32 %0, 0
  %95 = zext i1 %94 to i32
  %96 = tail call i16** @__ctype_b_loc() #10
  br label %100

; <label>:97:                                     ; preds = %11
  %98 = icmp eq i32 %1, %0
  %99 = zext i1 %98 to i32
  br label %112

; <label>:100:                                    ; preds = %93, %85, %77, %69, %61, %53, %45, %37, %29, %21, %13
  %101 = phi i16** [ %96, %93 ], [ %86, %85 ], [ %78, %77 ], [ %70, %69 ], [ %62, %61 ], [ %54, %53 ], [ %46, %45 ], [ %38, %37 ], [ %30, %29 ], [ %22, %21 ], [ %14, %13 ]
  %102 = phi i32 [ %95, %93 ], [ %92, %85 ], [ %84, %77 ], [ %76, %69 ], [ %68, %61 ], [ %60, %53 ], [ %52, %45 ], [ %44, %37 ], [ %36, %29 ], [ %28, %21 ], [ %20, %13 ]
  %103 = load i16*, i16** %101, align 8, !tbaa !12
  %104 = sext i32 %1 to i64
  %105 = getelementptr inbounds i16, i16* %103, i64 %104
  %106 = load i16, i16* %105, align 2, !tbaa !13
  %107 = and i16 %106, 512
  %108 = icmp eq i16 %107, 0
  %109 = icmp eq i32 %102, 0
  %110 = zext i1 %109 to i32
  %111 = select i1 %108, i32 %110, i32 %102
  br label %112

; <label>:112:                                    ; preds = %100, %97
  %113 = phi i32 [ %99, %97 ], [ %111, %100 ]
  ret i32 %113
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #6

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

declare double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #8

declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #7

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gmatch_aux(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001003) #9
  %3 = getelementptr inbounds i8, i8* %2, i64 24
  %4 = bitcast i8* %3 to %struct.MatchState*
  %5 = getelementptr inbounds i8, i8* %2, i64 48
  %6 = bitcast i8* %5 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !tbaa !43
  %7 = bitcast i8* %2 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !44
  %12 = icmp ugt i8* %8, %11
  br i1 %12, label %83, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 60
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i8**
  %17 = getelementptr inbounds i8, i8* %2, i64 16
  %18 = bitcast i8* %17 to i8**
  br label %19

; <label>:19:                                     ; preds = %13, %79
  %20 = phi i8* [ %8, %13 ], [ %80, %79 ]
  store i8 0, i8* %14, align 4, !tbaa !28
  %21 = load i8*, i8** %16, align 8, !tbaa !26
  %22 = tail call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %20, i8* %21)
  %23 = icmp eq i8* %22, null
  br i1 %23, label %79, label %24

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %18, align 8, !tbaa !27
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %79, label %27

; <label>:27:                                     ; preds = %24
  store i8* %22, i8** %18, align 8, !tbaa !27
  store i8* %22, i8** %7, align 8, !tbaa !24
  %28 = load i8, i8* %14, align 4, !tbaa !28
  %29 = icmp eq i8 %28, 0
  %30 = icmp ne i8* %20, null
  %31 = and i1 %30, %29
  %32 = zext i8 %28 to i32
  %33 = select i1 %31, i32 1, i32 %32
  %34 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  tail call void @luaL_checkstack(%struct.lua_State* %34, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %83, label %36

; <label>:36:                                     ; preds = %27
  %37 = bitcast i8* %3 to i64*
  %38 = ptrtoint i8* %20 to i64
  %39 = ptrtoint i8* %22 to i64
  %40 = sub i64 %39, %38
  %41 = icmp eq i64 %40, -2
  %42 = zext i32 %33 to i64
  br label %43

; <label>:43:                                     ; preds = %76, %36
  %44 = phi i64 [ %77, %76 ], [ 0, %36 ]
  %45 = load i8, i8* %14, align 4, !tbaa !28
  %46 = zext i8 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %55, label %48

; <label>:48:                                     ; preds = %43
  %49 = icmp eq i64 %44, 0
  br i1 %49, label %69, label %50

; <label>:50:                                     ; preds = %48
  %51 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %52 = trunc i64 %44 to i32
  %53 = add i32 %52, 1
  %54 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %53) #9
  br label %69

; <label>:55:                                     ; preds = %43
  %56 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %44, i32 1
  %57 = load i64, i64* %56, align 8, !tbaa !29
  %58 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %44, i32 0
  %59 = bitcast i8** %58 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !31
  switch i64 %57, label %70 [
    i64 -1, label %61
    i64 -2, label %64
  ]

; <label>:61:                                     ; preds = %55
  %62 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %63 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %70

; <label>:64:                                     ; preds = %55
  %65 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %66 = load i64, i64* %37, align 8, !tbaa !21
  %67 = add i64 %60, 1
  %68 = sub i64 %67, %66
  tail call void @lua_pushinteger(%struct.lua_State* %65, i64 %68) #9
  br label %76

; <label>:69:                                     ; preds = %48, %50
  br i1 %41, label %76, label %70

; <label>:70:                                     ; preds = %61, %55, %69
  %71 = phi i64 [ %40, %69 ], [ -1, %61 ], [ %57, %55 ]
  %72 = phi i64 [ %38, %69 ], [ %60, %61 ], [ %60, %55 ]
  %73 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %74 = inttoptr i64 %72 to i8*
  %75 = tail call i8* @lua_pushlstring(%struct.lua_State* %73, i8* %74, i64 %71) #9
  br label %76

; <label>:76:                                     ; preds = %64, %70, %69
  %77 = add nuw nsw i64 %44, 1
  %78 = icmp eq i64 %77, %42
  br i1 %78, label %83, label %43

; <label>:79:                                     ; preds = %24, %19
  %80 = getelementptr inbounds i8, i8* %20, i64 1
  %81 = load i8*, i8** %10, align 8, !tbaa !44
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %19

; <label>:83:                                     ; preds = %79, %76, %1, %27
  %84 = phi i32 [ 0, %27 ], [ 0, %1 ], [ %33, %76 ], [ 0, %79 ]
  ret i32 %84
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getdetails(%struct.Header* nocapture, i64, i8** nocapture, i32* nocapture, i32* nocapture) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @getoption(%struct.Header* %0, i8** %2, i32* %3)
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  %9 = load i32, i32* %3, align 4, !tbaa !32
  store i32 %9, i32* %6, align 4, !tbaa !32
  %10 = icmp eq i32 %7, 7
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %5
  %12 = load i8*, i8** %2, align 8, !tbaa !12
  %13 = load i8, i8* %12, align 1, !tbaa !6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %11
  %16 = call fastcc i32 @getoption(%struct.Header* %0, i8** nonnull %2, i32* nonnull %6)
  %17 = icmp eq i32 %16, 3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %15, %11
  %22 = phi i32 [ %18, %15 ], [ %9, %11 ]
  %23 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !33
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
  %33 = load i32, i32* %32, align 4, !tbaa !36
  %34 = icmp sgt i32 %27, %33
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  store i32 %33, i32* %6, align 4, !tbaa !32
  br label %36

; <label>:36:                                     ; preds = %35, %31
  %37 = phi i32 [ %33, %35 ], [ %27, %31 ]
  %38 = add nsw i32 %37, -1
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %43 = load %struct.lua_State*, %struct.lua_State** %42, align 8, !tbaa !33
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
  store i32 %51, i32* %4, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getoption(%struct.Header* nocapture, i8** nocapture, i32* nocapture) unnamed_addr #0 {
  %4 = load i8*, i8** %1, align 8, !tbaa !12
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %5, i8** %1, align 8, !tbaa !12
  %6 = load i8, i8* %4, align 1, !tbaa !6
  %7 = sext i8 %6 to i32
  store i32 0, i32* %2, align 4, !tbaa !32
  switch i32 %7, label %177 [
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
    i32 73, label %50
    i32 115, label %80
    i32 99, label %110
    i32 122, label %182
    i32 120, label %138
    i32 88, label %139
    i32 32, label %181
    i32 60, label %140
    i32 62, label %142
    i32 61, label %144
    i32 33, label %146
  ]

; <label>:8:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:9:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:10:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:11:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:12:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:13:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:14:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:15:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:16:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:17:                                     ; preds = %3
  store i32 4, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:18:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:19:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:20:                                     ; preds = %3
  %21 = load i8, i8* %5, align 1, !tbaa !6
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ugt i32 %23, 9
  br i1 %24, label %48, label %25

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25, %26
  %27 = phi i8* [ %30, %26 ], [ %5, %25 ]
  %28 = phi i32 [ %34, %26 ], [ 0, %25 ]
  %29 = mul nsw i32 %28, 10
  %30 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %30, i8** %1, align 8, !tbaa !12
  %31 = load i8, i8* %27, align 1, !tbaa !6
  %32 = sext i8 %31 to i32
  %33 = add i32 %29, -48
  %34 = add i32 %33, %32
  %35 = load i8, i8* %30, align 1, !tbaa !6
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  %39 = icmp slt i32 %34, 214748364
  %40 = and i1 %39, %38
  br i1 %40, label %26, label %41

; <label>:41:                                     ; preds = %26
  %42 = add i32 %34, -1
  %43 = icmp ugt i32 %42, 15
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %46 = load %struct.lua_State*, %struct.lua_State** %45, align 8, !tbaa !33
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %34, i32 16) #9
  br label %48

; <label>:48:                                     ; preds = %20, %41, %44
  %49 = phi i32 [ %47, %44 ], [ %34, %41 ], [ 4, %20 ]
  store i32 %49, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:50:                                     ; preds = %3
  %51 = load i8, i8* %5, align 1, !tbaa !6
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ugt i32 %53, 9
  br i1 %54, label %78, label %55

; <label>:55:                                     ; preds = %50
  br label %56

; <label>:56:                                     ; preds = %55, %56
  %57 = phi i8* [ %60, %56 ], [ %5, %55 ]
  %58 = phi i32 [ %64, %56 ], [ 0, %55 ]
  %59 = mul nsw i32 %58, 10
  %60 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %60, i8** %1, align 8, !tbaa !12
  %61 = load i8, i8* %57, align 1, !tbaa !6
  %62 = sext i8 %61 to i32
  %63 = add i32 %59, -48
  %64 = add i32 %63, %62
  %65 = load i8, i8* %60, align 1, !tbaa !6
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %66, -48
  %68 = icmp ult i32 %67, 10
  %69 = icmp slt i32 %64, 214748364
  %70 = and i1 %69, %68
  br i1 %70, label %56, label %71

; <label>:71:                                     ; preds = %56
  %72 = add i32 %64, -1
  %73 = icmp ugt i32 %72, 15
  br i1 %73, label %74, label %78

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %76 = load %struct.lua_State*, %struct.lua_State** %75, align 8, !tbaa !33
  %77 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %64, i32 16) #9
  br label %78

; <label>:78:                                     ; preds = %50, %71, %74
  %79 = phi i32 [ %77, %74 ], [ %64, %71 ], [ 4, %50 ]
  store i32 %79, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:80:                                     ; preds = %3
  %81 = load i8, i8* %5, align 1, !tbaa !6
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, -48
  %84 = icmp ugt i32 %83, 9
  br i1 %84, label %108, label %85

; <label>:85:                                     ; preds = %80
  br label %86

; <label>:86:                                     ; preds = %85, %86
  %87 = phi i8* [ %90, %86 ], [ %5, %85 ]
  %88 = phi i32 [ %94, %86 ], [ 0, %85 ]
  %89 = mul nsw i32 %88, 10
  %90 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %90, i8** %1, align 8, !tbaa !12
  %91 = load i8, i8* %87, align 1, !tbaa !6
  %92 = sext i8 %91 to i32
  %93 = add i32 %89, -48
  %94 = add i32 %93, %92
  %95 = load i8, i8* %90, align 1, !tbaa !6
  %96 = sext i8 %95 to i32
  %97 = add nsw i32 %96, -48
  %98 = icmp ult i32 %97, 10
  %99 = icmp slt i32 %94, 214748364
  %100 = and i1 %99, %98
  br i1 %100, label %86, label %101

; <label>:101:                                    ; preds = %86
  %102 = add i32 %94, -1
  %103 = icmp ugt i32 %102, 15
  br i1 %103, label %104, label %108

; <label>:104:                                    ; preds = %101
  %105 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %106 = load %struct.lua_State*, %struct.lua_State** %105, align 8, !tbaa !33
  %107 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %94, i32 16) #9
  br label %108

; <label>:108:                                    ; preds = %80, %101, %104
  %109 = phi i32 [ %107, %104 ], [ %94, %101 ], [ 8, %80 ]
  store i32 %109, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:110:                                    ; preds = %3
  %111 = load i8, i8* %5, align 1, !tbaa !6
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 %112, -48
  %114 = icmp ugt i32 %113, 9
  br i1 %114, label %116, label %115

; <label>:115:                                    ; preds = %110
  br label %117

; <label>:116:                                    ; preds = %110
  store i32 -1, i32* %2, align 4, !tbaa !32
  br label %134

; <label>:117:                                    ; preds = %115, %117
  %118 = phi i8* [ %121, %117 ], [ %5, %115 ]
  %119 = phi i32 [ %125, %117 ], [ 0, %115 ]
  %120 = mul nsw i32 %119, 10
  %121 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %121, i8** %1, align 8, !tbaa !12
  %122 = load i8, i8* %118, align 1, !tbaa !6
  %123 = sext i8 %122 to i32
  %124 = add i32 %120, -48
  %125 = add i32 %124, %123
  %126 = load i8, i8* %121, align 1, !tbaa !6
  %127 = sext i8 %126 to i32
  %128 = add nsw i32 %127, -48
  %129 = icmp ult i32 %128, 10
  %130 = icmp slt i32 %125, 214748364
  %131 = and i1 %130, %129
  br i1 %131, label %117, label %132

; <label>:132:                                    ; preds = %117
  store i32 %125, i32* %2, align 4, !tbaa !32
  %133 = icmp eq i32 %125, -1
  br i1 %133, label %134, label %182

; <label>:134:                                    ; preds = %116, %132
  %135 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %136 = load %struct.lua_State*, %struct.lua_State** %135, align 8, !tbaa !33
  %137 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0)) #9
  br label %182

; <label>:138:                                    ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !32
  br label %182

; <label>:139:                                    ; preds = %3
  br label %182

; <label>:140:                                    ; preds = %3
  %141 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %141, align 8, !tbaa !35
  br label %181

; <label>:142:                                    ; preds = %3
  %143 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 0, i32* %143, align 8, !tbaa !35
  br label %181

; <label>:144:                                    ; preds = %3
  %145 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %145, align 8, !tbaa !35
  br label %181

; <label>:146:                                    ; preds = %3
  %147 = load i8, i8* %5, align 1, !tbaa !6
  %148 = sext i8 %147 to i32
  %149 = add nsw i32 %148, -48
  %150 = icmp ugt i32 %149, 9
  br i1 %150, label %174, label %151

; <label>:151:                                    ; preds = %146
  br label %152

; <label>:152:                                    ; preds = %151, %152
  %153 = phi i8* [ %156, %152 ], [ %5, %151 ]
  %154 = phi i32 [ %160, %152 ], [ 0, %151 ]
  %155 = mul nsw i32 %154, 10
  %156 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %156, i8** %1, align 8, !tbaa !12
  %157 = load i8, i8* %153, align 1, !tbaa !6
  %158 = sext i8 %157 to i32
  %159 = add i32 %155, -48
  %160 = add i32 %159, %158
  %161 = load i8, i8* %156, align 1, !tbaa !6
  %162 = sext i8 %161 to i32
  %163 = add nsw i32 %162, -48
  %164 = icmp ult i32 %163, 10
  %165 = icmp slt i32 %160, 214748364
  %166 = and i1 %165, %164
  br i1 %166, label %152, label %167

; <label>:167:                                    ; preds = %152
  %168 = add i32 %160, -1
  %169 = icmp ugt i32 %168, 15
  br i1 %169, label %170, label %174

; <label>:170:                                    ; preds = %167
  %171 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %172 = load %struct.lua_State*, %struct.lua_State** %171, align 8, !tbaa !33
  %173 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %160, i32 16) #9
  br label %174

; <label>:174:                                    ; preds = %146, %167, %170
  %175 = phi i32 [ %173, %170 ], [ %160, %167 ], [ 8, %146 ]
  %176 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  store i32 %175, i32* %176, align 4, !tbaa !36
  br label %181

; <label>:177:                                    ; preds = %3
  %178 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %179 = load %struct.lua_State*, %struct.lua_State** %178, align 8, !tbaa !33
  %180 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 %7) #9
  br label %181

; <label>:181:                                    ; preds = %177, %174, %144, %142, %140, %3
  br label %182

; <label>:182:                                    ; preds = %3, %132, %134, %181, %139, %138, %108, %78, %48, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %183 = phi i32 [ 8, %181 ], [ 7, %139 ], [ 6, %138 ], [ 4, %108 ], [ 1, %78 ], [ 0, %48 ], [ 2, %19 ], [ 2, %18 ], [ 2, %17 ], [ 1, %16 ], [ 1, %15 ], [ 0, %14 ], [ 1, %13 ], [ 0, %12 ], [ 1, %11 ], [ 0, %10 ], [ 1, %9 ], [ 0, %8 ], [ 3, %134 ], [ 3, %132 ], [ 5, %3 ]
  ret i32 %183
}

declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @arith_add(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_sub(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_mul(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_mod(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_pow(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_div(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_idiv(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_unm(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith(%struct.lua_State*, i32, i8*) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #9
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %19

; <label>:9:                                      ; preds = %3
  %10 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  %11 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %5) #9
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  br label %34

; <label>:14:                                     ; preds = %9
  %15 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %11) #9
  %16 = load i64, i64* %5, align 8, !tbaa !2
  %17 = add i64 %16, 1
  %18 = icmp eq i64 %15, %17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  br i1 %18, label %19, label %34

; <label>:19:                                     ; preds = %14, %8
  %20 = call i32 @lua_type(%struct.lua_State* %0, i32 2) #9
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #9
  br label %33

; <label>:23:                                     ; preds = %19
  %24 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #9
  %25 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #9
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #9
  br label %34

; <label>:28:                                     ; preds = %23
  %29 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %25) #9
  %30 = load i64, i64* %4, align 8, !tbaa !2
  %31 = add i64 %30, 1
  %32 = icmp eq i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #9
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %28, %22
  call void @lua_arith(%struct.lua_State* %0, i32 %1) #9
  br label %48

; <label>:34:                                     ; preds = %28, %14, %27, %13
  call void @lua_settop(%struct.lua_State* %0, i32 2) #9
  %35 = call i32 @lua_type(%struct.lua_State* %0, i32 2) #9
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %34
  %38 = call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 2, i8* %2) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %37, %34
  %41 = getelementptr inbounds i8, i8* %2, i64 2
  %42 = call i32 @lua_type(%struct.lua_State* %0, i32 -2) #9
  %43 = call i8* @lua_typename(%struct.lua_State* %0, i32 %42) #9
  %44 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #9
  %45 = call i8* @lua_typename(%struct.lua_State* %0, i32 %44) #9
  %46 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %41, i8* %43, i8* %45) #9
  br label %47

; <label>:47:                                     ; preds = %37, %40
  call void @lua_rotate(%struct.lua_State* %0, i32 -3, i32 1) #9
  call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %48

; <label>:48:                                     ; preds = %47, %33
  ret void
}

declare void @lua_arith(%struct.lua_State*, i32) local_unnamed_addr #1

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!29 = !{!30, !3, i64 8}
!30 = !{!"", !9, i64 0, !3, i64 8}
!31 = !{!30, !9, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{!34, !9, i64 0}
!34 = !{!"Header", !9, i64 0, !19, i64 8, !19, i64 12}
!35 = !{!34, !19, i64 8}
!36 = !{!34, !19, i64 12}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = !{!25, !9, i64 48}
!44 = !{!25, !9, i64 32}
