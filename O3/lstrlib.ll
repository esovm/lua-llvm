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
  br i1 %41, label %42, label %384

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

; <label>:53:                                     ; preds = %372, %42
  %54 = phi i8* [ %9, %42 ], [ %376, %372 ]
  %55 = phi i32 [ 0, %42 ], [ %375, %372 ]
  %56 = phi i64 [ 0, %42 ], [ %374, %372 ]
  %57 = phi i8* [ null, %42 ], [ %373, %372 ]
  store i8 0, i8* %43, align 4, !tbaa !28
  %58 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %54, i8* %32)
  %59 = icmp eq i8* %58, null
  %60 = icmp eq i8* %58, %57
  %61 = or i1 %59, %60
  br i1 %61, label %355, label %62

; <label>:62:                                     ; preds = %53
  %63 = add nsw i64 %56, 1
  %64 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  switch i32 %11, label %178 [
    i32 6, label %65
    i32 5, label %152
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
  br i1 %73, label %151, label %74

; <label>:74:                                     ; preds = %65
  %75 = ptrtoint i8* %54 to i64
  %76 = ptrtoint i8* %58 to i64
  %77 = sub i64 %76, %75
  %78 = icmp eq i64 %77, -2
  %79 = zext i32 %71 to i64
  br i1 %78, label %81, label %80

; <label>:80:                                     ; preds = %74
  br label %116

; <label>:81:                                     ; preds = %74
  br label %82

; <label>:82:                                     ; preds = %81, %113
  %83 = phi i64 [ %114, %113 ], [ 0, %81 ]
  %84 = load i8, i8* %43, align 4, !tbaa !28
  %85 = zext i8 %84 to i64
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %94, label %87

; <label>:87:                                     ; preds = %82
  %88 = icmp eq i64 %83, 0
  br i1 %88, label %113, label %89

; <label>:89:                                     ; preds = %87
  %90 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %91 = trunc i64 %83 to i32
  %92 = add i32 %91, 1
  %93 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %92) #9
  br label %113

; <label>:94:                                     ; preds = %82
  %95 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %83, i32 1
  %96 = load i64, i64* %95, align 8, !tbaa !29
  %97 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %83, i32 0
  %98 = bitcast i8** %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !31
  switch i64 %96, label %108 [
    i64 -1, label %105
    i64 -2, label %100
  ]

; <label>:100:                                    ; preds = %94
  %101 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %102 = load i64, i64* %48, align 8, !tbaa !21
  %103 = add i64 %99, 1
  %104 = sub i64 %103, %102
  call void @lua_pushinteger(%struct.lua_State* %101, i64 %104) #9
  br label %113

; <label>:105:                                    ; preds = %94
  %106 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %107 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %108

; <label>:108:                                    ; preds = %105, %94
  %109 = phi i64 [ -1, %105 ], [ %96, %94 ]
  %110 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %111 = inttoptr i64 %99 to i8*
  %112 = call i8* @lua_pushlstring(%struct.lua_State* %110, i8* %111, i64 %109) #9
  br label %113

; <label>:113:                                    ; preds = %108, %100, %89, %87
  %114 = add nuw nsw i64 %83, 1
  %115 = icmp eq i64 %114, %79
  br i1 %115, label %151, label %82

; <label>:116:                                    ; preds = %80, %148
  %117 = phi i64 [ %149, %148 ], [ 0, %80 ]
  %118 = load i8, i8* %43, align 4, !tbaa !28
  %119 = zext i8 %118 to i64
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %128, label %121

; <label>:121:                                    ; preds = %116
  %122 = icmp eq i64 %117, 0
  br i1 %122, label %142, label %123

; <label>:123:                                    ; preds = %121
  %124 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %125 = trunc i64 %117 to i32
  %126 = add i32 %125, 1
  %127 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %126) #9
  br label %142

; <label>:128:                                    ; preds = %116
  %129 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %117, i32 1
  %130 = load i64, i64* %129, align 8, !tbaa !29
  %131 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %117, i32 0
  %132 = bitcast i8** %131 to i64*
  %133 = load i64, i64* %132, align 8, !tbaa !31
  switch i64 %130, label %142 [
    i64 -1, label %134
    i64 -2, label %137
  ]

; <label>:134:                                    ; preds = %128
  %135 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %136 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %142

; <label>:137:                                    ; preds = %128
  %138 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %139 = load i64, i64* %48, align 8, !tbaa !21
  %140 = add i64 %133, 1
  %141 = sub i64 %140, %139
  call void @lua_pushinteger(%struct.lua_State* %138, i64 %141) #9
  br label %148

; <label>:142:                                    ; preds = %134, %128, %123, %121
  %143 = phi i64 [ -1, %134 ], [ %130, %128 ], [ %77, %121 ], [ %77, %123 ]
  %144 = phi i64 [ %133, %134 ], [ %133, %128 ], [ %75, %121 ], [ %75, %123 ]
  %145 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %146 = inttoptr i64 %144 to i8*
  %147 = call i8* @lua_pushlstring(%struct.lua_State* %145, i8* %146, i64 %143) #9
  br label %148

; <label>:148:                                    ; preds = %142, %137
  %149 = add nuw nsw i64 %117, 1
  %150 = icmp eq i64 %149, %79
  br i1 %150, label %151, label %116

; <label>:151:                                    ; preds = %148, %113, %65
  call void @lua_callk(%struct.lua_State* %64, i32 %71, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #9
  br label %337

; <label>:152:                                    ; preds = %62
  %153 = load i8, i8* %43, align 4, !tbaa !28
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %165, label %155

; <label>:155:                                    ; preds = %152
  %156 = load i64, i64* %49, align 8, !tbaa !29
  %157 = load i64, i64* %51, align 8, !tbaa !31
  switch i64 %156, label %170 [
    i64 -1, label %158
    i64 -2, label %161
  ]

; <label>:158:                                    ; preds = %155
  %159 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  %160 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  br label %170

; <label>:161:                                    ; preds = %155
  %162 = load i64, i64* %48, align 8, !tbaa !21
  %163 = add i64 %157, 1
  %164 = sub i64 %163, %162
  call void @lua_pushinteger(%struct.lua_State* %64, i64 %164) #9
  br label %176

; <label>:165:                                    ; preds = %152
  %166 = ptrtoint i8* %54 to i64
  %167 = ptrtoint i8* %58 to i64
  %168 = sub i64 %167, %166
  %169 = icmp eq i64 %168, -2
  br i1 %169, label %176, label %170

; <label>:170:                                    ; preds = %165, %158, %155
  %171 = phi %struct.lua_State* [ %64, %165 ], [ %160, %158 ], [ %64, %155 ]
  %172 = phi i64 [ %168, %165 ], [ -1, %158 ], [ %156, %155 ]
  %173 = phi i64 [ %166, %165 ], [ %157, %158 ], [ %157, %155 ]
  %174 = inttoptr i64 %173 to i8*
  %175 = call i8* @lua_pushlstring(%struct.lua_State* %171, i8* %174, i64 %172) #9
  br label %176

; <label>:176:                                    ; preds = %170, %165, %161
  %177 = call i32 @lua_gettable(%struct.lua_State* %64, i32 3) #9
  br label %337

; <label>:178:                                    ; preds = %62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #9
  %179 = call i8* @lua_tolstring(%struct.lua_State* %64, i32 3, i64* nonnull %2) #9
  %180 = load i64, i64* %2, align 8, !tbaa !2
  %181 = call i8* @memchr(i8* %179, i32 37, i64 %180) #11
  %182 = icmp eq i8* %181, null
  br i1 %182, label %334, label %183

; <label>:183:                                    ; preds = %178
  %184 = ptrtoint i8* %58 to i64
  %185 = ptrtoint i8* %54 to i64
  %186 = sub i64 %184, %185
  %187 = icmp eq i64 %186, -2
  br i1 %187, label %189, label %188

; <label>:188:                                    ; preds = %183
  br label %262

; <label>:189:                                    ; preds = %183
  br label %190

; <label>:190:                                    ; preds = %189, %254
  %191 = phi i8* [ %260, %254 ], [ %181, %189 ]
  %192 = phi i8* [ %255, %254 ], [ %179, %189 ]
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %192, i64 %195) #9
  %196 = getelementptr inbounds i8, i8* %191, i64 1
  %197 = load i8, i8* %196, align 1, !tbaa !6
  switch i8 %197, label %213 [
    i8 37, label %199
    i8 48, label %198
  ]

; <label>:198:                                    ; preds = %190
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %54, i64 -2) #9
  br label %254

; <label>:199:                                    ; preds = %190
  %200 = load i64, i64* %44, align 8, !tbaa !7
  %201 = load i64, i64* %45, align 8, !tbaa !10
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %207, label %203

; <label>:203:                                    ; preds = %199
  %204 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #9
  %205 = load i8, i8* %196, align 1, !tbaa !6
  %206 = load i64, i64* %44, align 8, !tbaa !7
  br label %207

; <label>:207:                                    ; preds = %203, %199
  %208 = phi i64 [ %206, %203 ], [ %200, %199 ]
  %209 = phi i8 [ %205, %203 ], [ 37, %199 ]
  %210 = load i8*, i8** %47, align 8, !tbaa !11
  %211 = add i64 %208, 1
  store i64 %211, i64* %44, align 8, !tbaa !7
  %212 = getelementptr inbounds i8, i8* %210, i64 %208
  store i8 %209, i8* %212, align 1, !tbaa !6
  br label %254

; <label>:213:                                    ; preds = %190
  %214 = tail call i16** @__ctype_b_loc() #10
  %215 = load i16*, i16** %214, align 8, !tbaa !12
  %216 = zext i8 %197 to i64
  %217 = getelementptr inbounds i16, i16* %215, i64 %216
  %218 = load i16, i16* %217, align 2, !tbaa !13
  %219 = and i16 %218, 2048
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %252, label %221

; <label>:221:                                    ; preds = %213
  %222 = sext i8 %197 to i32
  %223 = add nsw i32 %222, -49
  %224 = load i8, i8* %43, align 4, !tbaa !28
  %225 = zext i8 %224 to i32
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %233, label %227

; <label>:227:                                    ; preds = %221
  %228 = icmp eq i32 %223, 0
  br i1 %228, label %245, label %229

; <label>:229:                                    ; preds = %227
  %230 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %231 = add nsw i32 %222, -48
  %232 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %231) #9
  br label %245

; <label>:233:                                    ; preds = %221
  %234 = sext i32 %223 to i64
  %235 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %234, i32 1
  %236 = load i64, i64* %235, align 8, !tbaa !29
  %237 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %234, i32 0
  %238 = bitcast i8** %237 to i64*
  %239 = load i64, i64* %238, align 8, !tbaa !31
  switch i64 %236, label %249 [
    i64 -1, label %246
    i64 -2, label %240
  ]

; <label>:240:                                    ; preds = %233
  %241 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %242 = load i64, i64* %48, align 8, !tbaa !21
  %243 = add i64 %239, 1
  %244 = sub i64 %243, %242
  call void @lua_pushinteger(%struct.lua_State* %241, i64 %244) #9
  br label %245

; <label>:245:                                    ; preds = %240, %229, %227
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %6) #9
  br label %254

; <label>:246:                                    ; preds = %233
  %247 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %248 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %249

; <label>:249:                                    ; preds = %246, %233
  %250 = phi i64 [ -1, %246 ], [ %236, %233 ]
  %251 = inttoptr i64 %239 to i8*
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %251, i64 %250) #9
  br label %254

; <label>:252:                                    ; preds = %213
  %253 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #9
  br label %254

; <label>:254:                                    ; preds = %252, %249, %245, %207, %198
  %255 = getelementptr inbounds i8, i8* %191, i64 2
  %256 = ptrtoint i8* %255 to i64
  %257 = load i64, i64* %2, align 8, !tbaa !2
  %258 = sub i64 %194, %256
  %259 = add i64 %257, %258
  store i64 %259, i64* %2, align 8, !tbaa !2
  %260 = call i8* @memchr(i8* nonnull %255, i32 37, i64 %259) #11
  %261 = icmp eq i8* %260, null
  br i1 %261, label %334, label %190

; <label>:262:                                    ; preds = %188, %326
  %263 = phi i8* [ %332, %326 ], [ %181, %188 ]
  %264 = phi i8* [ %327, %326 ], [ %179, %188 ]
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %264, i64 %267) #9
  %268 = getelementptr inbounds i8, i8* %263, i64 1
  %269 = load i8, i8* %268, align 1, !tbaa !6
  switch i8 %269, label %285 [
    i8 37, label %270
    i8 48, label %284
  ]

; <label>:270:                                    ; preds = %262
  %271 = load i64, i64* %44, align 8, !tbaa !7
  %272 = load i64, i64* %45, align 8, !tbaa !10
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %278, label %274

; <label>:274:                                    ; preds = %270
  %275 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #9
  %276 = load i8, i8* %268, align 1, !tbaa !6
  %277 = load i64, i64* %44, align 8, !tbaa !7
  br label %278

; <label>:278:                                    ; preds = %274, %270
  %279 = phi i64 [ %277, %274 ], [ %271, %270 ]
  %280 = phi i8 [ %276, %274 ], [ 37, %270 ]
  %281 = load i8*, i8** %47, align 8, !tbaa !11
  %282 = add i64 %279, 1
  store i64 %282, i64* %44, align 8, !tbaa !7
  %283 = getelementptr inbounds i8, i8* %281, i64 %279
  store i8 %280, i8* %283, align 1, !tbaa !6
  br label %326

; <label>:284:                                    ; preds = %262
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %54, i64 %186) #9
  br label %326

; <label>:285:                                    ; preds = %262
  %286 = tail call i16** @__ctype_b_loc() #10
  %287 = load i16*, i16** %286, align 8, !tbaa !12
  %288 = zext i8 %269 to i64
  %289 = getelementptr inbounds i16, i16* %287, i64 %288
  %290 = load i16, i16* %289, align 2, !tbaa !13
  %291 = and i16 %290, 2048
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %324, label %293

; <label>:293:                                    ; preds = %285
  %294 = sext i8 %269 to i32
  %295 = add nsw i32 %294, -49
  %296 = load i8, i8* %43, align 4, !tbaa !28
  %297 = zext i8 %296 to i32
  %298 = icmp slt i32 %295, %297
  br i1 %298, label %305, label %299

; <label>:299:                                    ; preds = %293
  %300 = icmp eq i32 %295, 0
  br i1 %300, label %320, label %301

; <label>:301:                                    ; preds = %299
  %302 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %303 = add nsw i32 %294, -48
  %304 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %303) #9
  br label %320

; <label>:305:                                    ; preds = %293
  %306 = sext i32 %295 to i64
  %307 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %306, i32 1
  %308 = load i64, i64* %307, align 8, !tbaa !29
  %309 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %306, i32 0
  %310 = bitcast i8** %309 to i64*
  %311 = load i64, i64* %310, align 8, !tbaa !31
  switch i64 %308, label %320 [
    i64 -1, label %312
    i64 -2, label %315
  ]

; <label>:312:                                    ; preds = %305
  %313 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %314 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %313, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %320

; <label>:315:                                    ; preds = %305
  %316 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %317 = load i64, i64* %48, align 8, !tbaa !21
  %318 = add i64 %311, 1
  %319 = sub i64 %318, %317
  call void @lua_pushinteger(%struct.lua_State* %316, i64 %319) #9
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %6) #9
  br label %326

; <label>:320:                                    ; preds = %312, %305, %301, %299
  %321 = phi i64 [ -1, %312 ], [ %308, %305 ], [ %186, %299 ], [ %186, %301 ]
  %322 = phi i64 [ %311, %312 ], [ %311, %305 ], [ %185, %299 ], [ %185, %301 ]
  %323 = inttoptr i64 %322 to i8*
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %323, i64 %321) #9
  br label %326

; <label>:324:                                    ; preds = %285
  %325 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #9
  br label %326

; <label>:326:                                    ; preds = %324, %320, %315, %284, %278
  %327 = getelementptr inbounds i8, i8* %263, i64 2
  %328 = ptrtoint i8* %327 to i64
  %329 = load i64, i64* %2, align 8, !tbaa !2
  %330 = sub i64 %266, %328
  %331 = add i64 %329, %330
  store i64 %331, i64* %2, align 8, !tbaa !2
  %332 = call i8* @memchr(i8* nonnull %327, i32 37, i64 %331) #11
  %333 = icmp eq i8* %332, null
  br i1 %333, label %334, label %262

; <label>:334:                                    ; preds = %326, %254, %178
  %335 = phi i8* [ %179, %178 ], [ %255, %254 ], [ %327, %326 ]
  %336 = phi i64 [ %180, %178 ], [ %259, %254 ], [ %331, %326 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %335, i64 %336) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #9
  br label %352

; <label>:337:                                    ; preds = %176, %151
  %338 = call i32 @lua_toboolean(%struct.lua_State* %64, i32 -1) #9
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %344

; <label>:340:                                    ; preds = %337
  call void @lua_settop(%struct.lua_State* %64, i32 -2) #9
  %341 = ptrtoint i8* %58 to i64
  %342 = ptrtoint i8* %54 to i64
  %343 = sub i64 %341, %342
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %54, i64 %343) #9
  br label %352

; <label>:344:                                    ; preds = %337
  %345 = call i32 @lua_isstring(%struct.lua_State* %64, i32 -1) #9
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %351

; <label>:347:                                    ; preds = %344
  %348 = call i32 @lua_type(%struct.lua_State* %64, i32 -1) #9
  %349 = call i8* @lua_typename(%struct.lua_State* %64, i32 %348) #9
  %350 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* %349) #9
  br label %352

; <label>:351:                                    ; preds = %344
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %6) #9
  br label %352

; <label>:352:                                    ; preds = %334, %340, %347, %351
  %353 = phi i32 [ 1, %334 ], [ 1, %351 ], [ %350, %347 ], [ 0, %340 ]
  %354 = or i32 %353, %55
  br label %372

; <label>:355:                                    ; preds = %53
  %356 = load i8*, i8** %38, align 8, !tbaa !22
  %357 = icmp ult i8* %54, %356
  br i1 %357, label %358, label %379

; <label>:358:                                    ; preds = %355
  %359 = load i64, i64* %44, align 8, !tbaa !7
  %360 = load i64, i64* %45, align 8, !tbaa !10
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %365, label %362

; <label>:362:                                    ; preds = %358
  %363 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #9
  %364 = load i64, i64* %44, align 8, !tbaa !7
  br label %365

; <label>:365:                                    ; preds = %362, %358
  %366 = phi i64 [ %364, %362 ], [ %359, %358 ]
  %367 = getelementptr inbounds i8, i8* %54, i64 1
  %368 = load i8, i8* %54, align 1, !tbaa !6
  %369 = load i8*, i8** %47, align 8, !tbaa !11
  %370 = add i64 %366, 1
  store i64 %370, i64* %44, align 8, !tbaa !7
  %371 = getelementptr inbounds i8, i8* %369, i64 %366
  store i8 %368, i8* %371, align 1, !tbaa !6
  br label %372

; <label>:372:                                    ; preds = %352, %365
  %373 = phi i8* [ %58, %352 ], [ %57, %365 ]
  %374 = phi i64 [ %63, %352 ], [ %56, %365 ]
  %375 = phi i32 [ %354, %352 ], [ %55, %365 ]
  %376 = phi i8* [ %58, %352 ], [ %367, %365 ]
  %377 = icmp slt i64 %374, %14
  %378 = and i1 %377, %52
  br i1 %378, label %53, label %379

; <label>:379:                                    ; preds = %355, %372
  %380 = phi i64 [ %56, %355 ], [ %374, %372 ]
  %381 = phi i32 [ %55, %355 ], [ %375, %372 ]
  %382 = phi i8* [ %54, %355 ], [ %376, %372 ]
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %386

; <label>:384:                                    ; preds = %30, %379
  %385 = phi i64 [ %380, %379 ], [ 0, %30 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #9
  br label %391

; <label>:386:                                    ; preds = %379
  %387 = bitcast i8** %38 to i64*
  %388 = load i64, i64* %387, align 8, !tbaa !22
  %389 = ptrtoint i8* %382 to i64
  %390 = sub i64 %388, %389
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %6, i8* %382, i64 %390) #9
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #9
  br label %391

; <label>:391:                                    ; preds = %386, %384
  %392 = phi i64 [ %380, %386 ], [ %385, %384 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %392) #9
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
  br i1 %19, label %641, label %20

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

; <label>:32:                                     ; preds = %20, %635
  %33 = phi i32 [ 1, %20 ], [ %637, %635 ]
  %34 = phi i64 [ 0, %20 ], [ %636, %635 ]
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
  switch i32 %35, label %635 [
    i32 0, label %62
    i32 1, label %201
    i32 2, label %319
    i32 3, label %445
    i32 4, label %475
    i32 5, label %598
    i32 6, label %622
    i32 7, label %634
    i32 8, label %634
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
  br i1 %86, label %87, label %198

; <label>:87:                                     ; preds = %76
  %88 = zext i32 %37 to i64
  %89 = add nsw i64 %88, -2
  %90 = add i32 %37, 3
  %91 = and i32 %90, 3
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %89, 3
  br i1 %81, label %98, label %94

; <label>:94:                                     ; preds = %87
  br i1 %93, label %165, label %95

; <label>:95:                                     ; preds = %94
  %96 = add nsw i64 %88, -1
  %97 = sub nsw i64 %96, %92
  br label %124

; <label>:98:                                     ; preds = %87
  br i1 %93, label %150, label %99

; <label>:99:                                     ; preds = %98
  %100 = add nsw i64 %88, -1
  %101 = sub nsw i64 %100, %92
  br label %102

; <label>:102:                                    ; preds = %102, %99
  %103 = phi i64 [ 1, %99 ], [ %121, %102 ]
  %104 = phi i64 [ %63, %99 ], [ %118, %102 ]
  %105 = phi i64 [ %101, %99 ], [ %122, %102 ]
  %106 = lshr i64 %104, 8
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds i8, i8* %79, i64 %103
  store i8 %107, i8* %108, align 1, !tbaa !6
  %109 = add nuw nsw i64 %103, 1
  %110 = lshr i64 %104, 16
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, i8* %79, i64 %109
  store i8 %111, i8* %112, align 1, !tbaa !6
  %113 = add nuw nsw i64 %103, 2
  %114 = lshr i64 %104, 24
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds i8, i8* %79, i64 %113
  store i8 %115, i8* %116, align 1, !tbaa !6
  %117 = add nuw nsw i64 %103, 3
  %118 = lshr i64 %104, 32
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds i8, i8* %79, i64 %117
  store i8 %119, i8* %120, align 1, !tbaa !6
  %121 = add nuw nsw i64 %103, 4
  %122 = add i64 %105, -4
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %150, label %102

; <label>:124:                                    ; preds = %124, %95
  %125 = phi i64 [ 1, %95 ], [ %147, %124 ]
  %126 = phi i64 [ %63, %95 ], [ %143, %124 ]
  %127 = phi i64 [ %97, %95 ], [ %148, %124 ]
  %128 = lshr i64 %126, 8
  %129 = trunc i64 %128 to i8
  %130 = sub nsw i64 %83, %125
  %131 = getelementptr inbounds i8, i8* %79, i64 %130
  store i8 %129, i8* %131, align 1, !tbaa !6
  %132 = add nuw nsw i64 %125, 1
  %133 = lshr i64 %126, 16
  %134 = trunc i64 %133 to i8
  %135 = sub nsw i64 %83, %132
  %136 = getelementptr inbounds i8, i8* %79, i64 %135
  store i8 %134, i8* %136, align 1, !tbaa !6
  %137 = add nuw nsw i64 %125, 2
  %138 = lshr i64 %126, 24
  %139 = trunc i64 %138 to i8
  %140 = sub nsw i64 %83, %137
  %141 = getelementptr inbounds i8, i8* %79, i64 %140
  store i8 %139, i8* %141, align 1, !tbaa !6
  %142 = add nuw nsw i64 %125, 3
  %143 = lshr i64 %126, 32
  %144 = trunc i64 %143 to i8
  %145 = sub nsw i64 %83, %142
  %146 = getelementptr inbounds i8, i8* %79, i64 %145
  store i8 %144, i8* %146, align 1, !tbaa !6
  %147 = add nuw nsw i64 %125, 4
  %148 = add i64 %127, -4
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %165, label %124

; <label>:150:                                    ; preds = %102, %98
  %151 = phi i64 [ 1, %98 ], [ %121, %102 ]
  %152 = phi i64 [ %63, %98 ], [ %118, %102 ]
  %153 = icmp eq i32 %91, 0
  br i1 %153, label %181, label %154

; <label>:154:                                    ; preds = %150
  br label %155

; <label>:155:                                    ; preds = %155, %154
  %156 = phi i64 [ %162, %155 ], [ %151, %154 ]
  %157 = phi i64 [ %159, %155 ], [ %152, %154 ]
  %158 = phi i64 [ %163, %155 ], [ %92, %154 ]
  %159 = lshr i64 %157, 8
  %160 = trunc i64 %159 to i8
  %161 = getelementptr inbounds i8, i8* %79, i64 %156
  store i8 %160, i8* %161, align 1, !tbaa !6
  %162 = add nuw nsw i64 %156, 1
  %163 = add i64 %158, -1
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %181, label %155, !llvm.loop !37

; <label>:165:                                    ; preds = %124, %94
  %166 = phi i64 [ 1, %94 ], [ %147, %124 ]
  %167 = phi i64 [ %63, %94 ], [ %143, %124 ]
  %168 = icmp eq i32 %91, 0
  br i1 %168, label %181, label %169

; <label>:169:                                    ; preds = %165
  br label %170

; <label>:170:                                    ; preds = %170, %169
  %171 = phi i64 [ %178, %170 ], [ %166, %169 ]
  %172 = phi i64 [ %174, %170 ], [ %167, %169 ]
  %173 = phi i64 [ %179, %170 ], [ %92, %169 ]
  %174 = lshr i64 %172, 8
  %175 = trunc i64 %174 to i8
  %176 = sub nsw i64 %83, %171
  %177 = getelementptr inbounds i8, i8* %79, i64 %176
  store i8 %175, i8* %177, align 1, !tbaa !6
  %178 = add nuw nsw i64 %171, 1
  %179 = add i64 %173, -1
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %170, !llvm.loop !39

; <label>:181:                                    ; preds = %165, %170, %150, %155
  %182 = icmp slt i64 %63, 0
  %183 = icmp sgt i32 %37, 8
  %184 = and i1 %183, %182
  br i1 %184, label %185, label %198

; <label>:185:                                    ; preds = %181
  br i1 %81, label %186, label %190

; <label>:186:                                    ; preds = %185
  %187 = getelementptr i8, i8* %79, i64 8
  %188 = add i32 %37, -8
  %189 = zext i32 %188 to i64
  call void @llvm.memset.p0i8.i64(i8* %187, i8 -1, i64 %189, i32 1, i1 false) #9
  br label %198

; <label>:190:                                    ; preds = %185
  %191 = add nsw i64 %83, -8
  %192 = add i32 %37, -9
  %193 = zext i32 %192 to i64
  %194 = sub nsw i64 %191, %193
  %195 = getelementptr i8, i8* %79, i64 %194
  %196 = add i32 %37, -8
  %197 = zext i32 %196 to i64
  call void @llvm.memset.p0i8.i64(i8* %195, i8 -1, i64 %197, i32 1, i1 false) #9
  br label %198

; <label>:198:                                    ; preds = %76, %181, %186, %190
  %199 = load i64, i64* %23, align 8, !tbaa !7
  %200 = add i64 %199, %78
  store i64 %200, i64* %23, align 8, !tbaa !7
  br label %635

; <label>:201:                                    ; preds = %60
  %202 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %61) #9
  %203 = icmp slt i32 %37, 8
  br i1 %203, label %204, label %211

; <label>:204:                                    ; preds = %201
  %205 = shl nsw i32 %37, 3
  %206 = zext i32 %205 to i64
  %207 = shl i64 1, %206
  %208 = icmp ult i64 %202, %207
  br i1 %208, label %211, label %209

; <label>:209:                                    ; preds = %204
  %210 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #9
  br label %211

; <label>:211:                                    ; preds = %204, %209, %201
  %212 = load i32, i32* %16, align 8, !tbaa !35
  %213 = sext i32 %37 to i64
  %214 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %213) #9
  %215 = trunc i64 %202 to i8
  %216 = icmp ne i32 %212, 0
  %217 = add nsw i32 %37, -1
  %218 = sext i32 %217 to i64
  %219 = select i1 %216, i64 0, i64 %218
  %220 = getelementptr inbounds i8, i8* %214, i64 %219
  store i8 %215, i8* %220, align 1, !tbaa !6
  %221 = icmp sgt i32 %37, 1
  br i1 %221, label %222, label %316

; <label>:222:                                    ; preds = %211
  %223 = zext i32 %37 to i64
  %224 = add nsw i64 %223, -2
  %225 = add i32 %37, 3
  %226 = and i32 %225, 3
  %227 = zext i32 %226 to i64
  %228 = icmp ult i64 %224, 3
  br i1 %216, label %233, label %229

; <label>:229:                                    ; preds = %222
  br i1 %228, label %300, label %230

; <label>:230:                                    ; preds = %229
  %231 = add nsw i64 %223, -1
  %232 = sub nsw i64 %231, %227
  br label %259

; <label>:233:                                    ; preds = %222
  br i1 %228, label %285, label %234

; <label>:234:                                    ; preds = %233
  %235 = add nsw i64 %223, -1
  %236 = sub nsw i64 %235, %227
  br label %237

; <label>:237:                                    ; preds = %237, %234
  %238 = phi i64 [ 1, %234 ], [ %256, %237 ]
  %239 = phi i64 [ %202, %234 ], [ %253, %237 ]
  %240 = phi i64 [ %236, %234 ], [ %257, %237 ]
  %241 = lshr i64 %239, 8
  %242 = trunc i64 %241 to i8
  %243 = getelementptr inbounds i8, i8* %214, i64 %238
  store i8 %242, i8* %243, align 1, !tbaa !6
  %244 = add nuw nsw i64 %238, 1
  %245 = lshr i64 %239, 16
  %246 = trunc i64 %245 to i8
  %247 = getelementptr inbounds i8, i8* %214, i64 %244
  store i8 %246, i8* %247, align 1, !tbaa !6
  %248 = add nuw nsw i64 %238, 2
  %249 = lshr i64 %239, 24
  %250 = trunc i64 %249 to i8
  %251 = getelementptr inbounds i8, i8* %214, i64 %248
  store i8 %250, i8* %251, align 1, !tbaa !6
  %252 = add nuw nsw i64 %238, 3
  %253 = lshr i64 %239, 32
  %254 = trunc i64 %253 to i8
  %255 = getelementptr inbounds i8, i8* %214, i64 %252
  store i8 %254, i8* %255, align 1, !tbaa !6
  %256 = add nuw nsw i64 %238, 4
  %257 = add i64 %240, -4
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %285, label %237

; <label>:259:                                    ; preds = %259, %230
  %260 = phi i64 [ 1, %230 ], [ %282, %259 ]
  %261 = phi i64 [ %202, %230 ], [ %278, %259 ]
  %262 = phi i64 [ %232, %230 ], [ %283, %259 ]
  %263 = lshr i64 %261, 8
  %264 = trunc i64 %263 to i8
  %265 = sub nsw i64 %218, %260
  %266 = getelementptr inbounds i8, i8* %214, i64 %265
  store i8 %264, i8* %266, align 1, !tbaa !6
  %267 = add nuw nsw i64 %260, 1
  %268 = lshr i64 %261, 16
  %269 = trunc i64 %268 to i8
  %270 = sub nsw i64 %218, %267
  %271 = getelementptr inbounds i8, i8* %214, i64 %270
  store i8 %269, i8* %271, align 1, !tbaa !6
  %272 = add nuw nsw i64 %260, 2
  %273 = lshr i64 %261, 24
  %274 = trunc i64 %273 to i8
  %275 = sub nsw i64 %218, %272
  %276 = getelementptr inbounds i8, i8* %214, i64 %275
  store i8 %274, i8* %276, align 1, !tbaa !6
  %277 = add nuw nsw i64 %260, 3
  %278 = lshr i64 %261, 32
  %279 = trunc i64 %278 to i8
  %280 = sub nsw i64 %218, %277
  %281 = getelementptr inbounds i8, i8* %214, i64 %280
  store i8 %279, i8* %281, align 1, !tbaa !6
  %282 = add nuw nsw i64 %260, 4
  %283 = add i64 %262, -4
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %300, label %259

; <label>:285:                                    ; preds = %237, %233
  %286 = phi i64 [ 1, %233 ], [ %256, %237 ]
  %287 = phi i64 [ %202, %233 ], [ %253, %237 ]
  %288 = icmp eq i32 %226, 0
  br i1 %288, label %316, label %289

; <label>:289:                                    ; preds = %285
  br label %290

; <label>:290:                                    ; preds = %290, %289
  %291 = phi i64 [ %297, %290 ], [ %286, %289 ]
  %292 = phi i64 [ %294, %290 ], [ %287, %289 ]
  %293 = phi i64 [ %298, %290 ], [ %227, %289 ]
  %294 = lshr i64 %292, 8
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds i8, i8* %214, i64 %291
  store i8 %295, i8* %296, align 1, !tbaa !6
  %297 = add nuw nsw i64 %291, 1
  %298 = add i64 %293, -1
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %316, label %290, !llvm.loop !40

; <label>:300:                                    ; preds = %259, %229
  %301 = phi i64 [ 1, %229 ], [ %282, %259 ]
  %302 = phi i64 [ %202, %229 ], [ %278, %259 ]
  %303 = icmp eq i32 %226, 0
  br i1 %303, label %316, label %304

; <label>:304:                                    ; preds = %300
  br label %305

; <label>:305:                                    ; preds = %305, %304
  %306 = phi i64 [ %313, %305 ], [ %301, %304 ]
  %307 = phi i64 [ %309, %305 ], [ %302, %304 ]
  %308 = phi i64 [ %314, %305 ], [ %227, %304 ]
  %309 = lshr i64 %307, 8
  %310 = trunc i64 %309 to i8
  %311 = sub nsw i64 %218, %306
  %312 = getelementptr inbounds i8, i8* %214, i64 %311
  store i8 %310, i8* %312, align 1, !tbaa !6
  %313 = add nuw nsw i64 %306, 1
  %314 = add i64 %308, -1
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %305, !llvm.loop !41

; <label>:316:                                    ; preds = %300, %305, %285, %290, %211
  %317 = load i64, i64* %23, align 8, !tbaa !7
  %318 = add i64 %317, %213
  store i64 %318, i64* %23, align 8, !tbaa !7
  br label %635

; <label>:319:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #9
  %320 = sext i32 %37 to i64
  %321 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %320) #9
  %322 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %61) #9
  %323 = icmp eq i32 %37, 4
  br i1 %323, label %324, label %326

; <label>:324:                                    ; preds = %319
  %325 = fptrunc double %322 to float
  store volatile float %325, float* %30, align 8, !tbaa !6
  br label %327

; <label>:326:                                    ; preds = %319
  store volatile double %322, double* %31, align 8, !tbaa !6
  br label %327

; <label>:327:                                    ; preds = %326, %324
  %328 = load i32, i32* %16, align 8, !tbaa !35
  %329 = icmp eq i32 %328, 1
  %330 = icmp eq i32 %37, 0
  br i1 %329, label %331, label %384

; <label>:331:                                    ; preds = %327
  br i1 %330, label %440, label %332

; <label>:332:                                    ; preds = %331
  %333 = add i32 %37, -1
  %334 = and i32 %37, 7
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %348, label %336

; <label>:336:                                    ; preds = %332
  br label %337

; <label>:337:                                    ; preds = %337, %336
  %338 = phi i8* [ %345, %337 ], [ %321, %336 ]
  %339 = phi i32 [ %342, %337 ], [ %37, %336 ]
  %340 = phi i8* [ %343, %337 ], [ %26, %336 ]
  %341 = phi i32 [ %346, %337 ], [ %334, %336 ]
  %342 = add nsw i32 %339, -1
  %343 = getelementptr inbounds i8, i8* %340, i64 1
  %344 = load volatile i8, i8* %340, align 1, !tbaa !6
  %345 = getelementptr inbounds i8, i8* %338, i64 1
  store volatile i8 %344, i8* %338, align 1, !tbaa !6
  %346 = add i32 %341, -1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %337, !llvm.loop !42

; <label>:348:                                    ; preds = %337, %332
  %349 = phi i8* [ %321, %332 ], [ %345, %337 ]
  %350 = phi i32 [ %37, %332 ], [ %342, %337 ]
  %351 = phi i8* [ %26, %332 ], [ %343, %337 ]
  %352 = icmp ult i32 %333, 7
  br i1 %352, label %440, label %353

; <label>:353:                                    ; preds = %348
  br label %354

; <label>:354:                                    ; preds = %354, %353
  %355 = phi i8* [ %349, %353 ], [ %382, %354 ]
  %356 = phi i32 [ %350, %353 ], [ %379, %354 ]
  %357 = phi i8* [ %351, %353 ], [ %380, %354 ]
  %358 = getelementptr inbounds i8, i8* %357, i64 1
  %359 = load volatile i8, i8* %357, align 1, !tbaa !6
  %360 = getelementptr inbounds i8, i8* %355, i64 1
  store volatile i8 %359, i8* %355, align 1, !tbaa !6
  %361 = getelementptr inbounds i8, i8* %357, i64 2
  %362 = load volatile i8, i8* %358, align 1, !tbaa !6
  %363 = getelementptr inbounds i8, i8* %355, i64 2
  store volatile i8 %362, i8* %360, align 1, !tbaa !6
  %364 = getelementptr inbounds i8, i8* %357, i64 3
  %365 = load volatile i8, i8* %361, align 1, !tbaa !6
  %366 = getelementptr inbounds i8, i8* %355, i64 3
  store volatile i8 %365, i8* %363, align 1, !tbaa !6
  %367 = getelementptr inbounds i8, i8* %357, i64 4
  %368 = load volatile i8, i8* %364, align 1, !tbaa !6
  %369 = getelementptr inbounds i8, i8* %355, i64 4
  store volatile i8 %368, i8* %366, align 1, !tbaa !6
  %370 = getelementptr inbounds i8, i8* %357, i64 5
  %371 = load volatile i8, i8* %367, align 1, !tbaa !6
  %372 = getelementptr inbounds i8, i8* %355, i64 5
  store volatile i8 %371, i8* %369, align 1, !tbaa !6
  %373 = getelementptr inbounds i8, i8* %357, i64 6
  %374 = load volatile i8, i8* %370, align 1, !tbaa !6
  %375 = getelementptr inbounds i8, i8* %355, i64 6
  store volatile i8 %374, i8* %372, align 1, !tbaa !6
  %376 = getelementptr inbounds i8, i8* %357, i64 7
  %377 = load volatile i8, i8* %373, align 1, !tbaa !6
  %378 = getelementptr inbounds i8, i8* %355, i64 7
  store volatile i8 %377, i8* %375, align 1, !tbaa !6
  %379 = add nsw i32 %356, -8
  %380 = getelementptr inbounds i8, i8* %357, i64 8
  %381 = load volatile i8, i8* %376, align 1, !tbaa !6
  %382 = getelementptr inbounds i8, i8* %355, i64 8
  store volatile i8 %381, i8* %378, align 1, !tbaa !6
  %383 = icmp eq i32 %379, 0
  br i1 %383, label %440, label %354

; <label>:384:                                    ; preds = %327
  br i1 %330, label %440, label %385

; <label>:385:                                    ; preds = %384
  %386 = add nsw i32 %37, -1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %321, i64 %387
  %389 = add i32 %37, -1
  %390 = and i32 %37, 7
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %404, label %392

; <label>:392:                                    ; preds = %385
  br label %393

; <label>:393:                                    ; preds = %393, %392
  %394 = phi i8* [ %388, %392 ], [ %401, %393 ]
  %395 = phi i32 [ %37, %392 ], [ %398, %393 ]
  %396 = phi i8* [ %26, %392 ], [ %399, %393 ]
  %397 = phi i32 [ %390, %392 ], [ %402, %393 ]
  %398 = add nsw i32 %395, -1
  %399 = getelementptr inbounds i8, i8* %396, i64 1
  %400 = load volatile i8, i8* %396, align 1, !tbaa !6
  %401 = getelementptr inbounds i8, i8* %394, i64 -1
  store volatile i8 %400, i8* %394, align 1, !tbaa !6
  %402 = add i32 %397, -1
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %393, !llvm.loop !43

; <label>:404:                                    ; preds = %393, %385
  %405 = phi i8* [ %388, %385 ], [ %401, %393 ]
  %406 = phi i32 [ %37, %385 ], [ %398, %393 ]
  %407 = phi i8* [ %26, %385 ], [ %399, %393 ]
  %408 = icmp ult i32 %389, 7
  br i1 %408, label %440, label %409

; <label>:409:                                    ; preds = %404
  br label %410

; <label>:410:                                    ; preds = %410, %409
  %411 = phi i8* [ %405, %409 ], [ %438, %410 ]
  %412 = phi i32 [ %406, %409 ], [ %435, %410 ]
  %413 = phi i8* [ %407, %409 ], [ %436, %410 ]
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  %415 = load volatile i8, i8* %413, align 1, !tbaa !6
  %416 = getelementptr inbounds i8, i8* %411, i64 -1
  store volatile i8 %415, i8* %411, align 1, !tbaa !6
  %417 = getelementptr inbounds i8, i8* %413, i64 2
  %418 = load volatile i8, i8* %414, align 1, !tbaa !6
  %419 = getelementptr inbounds i8, i8* %411, i64 -2
  store volatile i8 %418, i8* %416, align 1, !tbaa !6
  %420 = getelementptr inbounds i8, i8* %413, i64 3
  %421 = load volatile i8, i8* %417, align 1, !tbaa !6
  %422 = getelementptr inbounds i8, i8* %411, i64 -3
  store volatile i8 %421, i8* %419, align 1, !tbaa !6
  %423 = getelementptr inbounds i8, i8* %413, i64 4
  %424 = load volatile i8, i8* %420, align 1, !tbaa !6
  %425 = getelementptr inbounds i8, i8* %411, i64 -4
  store volatile i8 %424, i8* %422, align 1, !tbaa !6
  %426 = getelementptr inbounds i8, i8* %413, i64 5
  %427 = load volatile i8, i8* %423, align 1, !tbaa !6
  %428 = getelementptr inbounds i8, i8* %411, i64 -5
  store volatile i8 %427, i8* %425, align 1, !tbaa !6
  %429 = getelementptr inbounds i8, i8* %413, i64 6
  %430 = load volatile i8, i8* %426, align 1, !tbaa !6
  %431 = getelementptr inbounds i8, i8* %411, i64 -6
  store volatile i8 %430, i8* %428, align 1, !tbaa !6
  %432 = getelementptr inbounds i8, i8* %413, i64 7
  %433 = load volatile i8, i8* %429, align 1, !tbaa !6
  %434 = getelementptr inbounds i8, i8* %411, i64 -7
  store volatile i8 %433, i8* %431, align 1, !tbaa !6
  %435 = add nsw i32 %412, -8
  %436 = getelementptr inbounds i8, i8* %413, i64 8
  %437 = load volatile i8, i8* %432, align 1, !tbaa !6
  %438 = getelementptr inbounds i8, i8* %411, i64 -8
  store volatile i8 %437, i8* %434, align 1, !tbaa !6
  %439 = icmp eq i32 %435, 0
  br i1 %439, label %440, label %410

; <label>:440:                                    ; preds = %404, %410, %348, %354, %331, %384
  %441 = load i32, i32* %5, align 4, !tbaa !32
  %442 = sext i32 %441 to i64
  %443 = load i64, i64* %23, align 8, !tbaa !7
  %444 = add i64 %443, %442
  store i64 %444, i64* %23, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #9
  br label %635

; <label>:445:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #9
  %446 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %8) #9
  %447 = load i64, i64* %8, align 8, !tbaa !2
  %448 = sext i32 %37 to i64
  %449 = icmp ugt i64 %447, %448
  br i1 %449, label %450, label %453

; <label>:450:                                    ; preds = %445
  %451 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0)) #9
  %452 = load i64, i64* %8, align 8, !tbaa !2
  br label %453

; <label>:453:                                    ; preds = %445, %450
  %454 = phi i64 [ %447, %445 ], [ %452, %450 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %446, i64 %454) #9
  %455 = load i64, i64* %8, align 8, !tbaa !2
  %456 = add i64 %455, 1
  store i64 %456, i64* %8, align 8, !tbaa !2
  %457 = icmp ult i64 %455, %448
  br i1 %457, label %458, label %474

; <label>:458:                                    ; preds = %453
  br label %459

; <label>:459:                                    ; preds = %458, %466
  %460 = load i64, i64* %23, align 8, !tbaa !7
  %461 = load i64, i64* %24, align 8, !tbaa !10
  %462 = icmp ult i64 %460, %461
  br i1 %462, label %466, label %463

; <label>:463:                                    ; preds = %459
  %464 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %465 = load i64, i64* %23, align 8, !tbaa !7
  br label %466

; <label>:466:                                    ; preds = %463, %459
  %467 = phi i64 [ %465, %463 ], [ %460, %459 ]
  %468 = load i8*, i8** %25, align 8, !tbaa !11
  %469 = add i64 %467, 1
  store i64 %469, i64* %23, align 8, !tbaa !7
  %470 = getelementptr inbounds i8, i8* %468, i64 %467
  store i8 0, i8* %470, align 1, !tbaa !6
  %471 = load i64, i64* %8, align 8, !tbaa !2
  %472 = add i64 %471, 1
  store i64 %472, i64* %8, align 8, !tbaa !2
  %473 = icmp ult i64 %471, %448
  br i1 %473, label %459, label %474

; <label>:474:                                    ; preds = %466, %453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #9
  br label %635

; <label>:475:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #9
  %476 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %9) #9
  %477 = icmp sgt i32 %37, 7
  br i1 %477, label %486, label %478

; <label>:478:                                    ; preds = %475
  %479 = load i64, i64* %9, align 8, !tbaa !2
  %480 = shl nsw i32 %37, 3
  %481 = zext i32 %480 to i64
  %482 = shl i64 1, %481
  %483 = icmp ult i64 %479, %482
  br i1 %483, label %486, label %484

; <label>:484:                                    ; preds = %478
  %485 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #9
  br label %486

; <label>:486:                                    ; preds = %484, %478, %475
  %487 = load i64, i64* %9, align 8, !tbaa !2
  %488 = load i32, i32* %16, align 8, !tbaa !35
  %489 = sext i32 %37 to i64
  %490 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %489) #9
  %491 = trunc i64 %487 to i8
  %492 = icmp ne i32 %488, 0
  %493 = add nsw i32 %37, -1
  %494 = sext i32 %493 to i64
  %495 = select i1 %492, i64 0, i64 %494
  %496 = getelementptr inbounds i8, i8* %490, i64 %495
  store i8 %491, i8* %496, align 1, !tbaa !6
  %497 = icmp sgt i32 %37, 1
  br i1 %497, label %498, label %592

; <label>:498:                                    ; preds = %486
  %499 = zext i32 %37 to i64
  %500 = add nsw i64 %499, -2
  %501 = add i32 %37, 3
  %502 = and i32 %501, 3
  %503 = zext i32 %502 to i64
  %504 = icmp ult i64 %500, 3
  br i1 %492, label %509, label %505

; <label>:505:                                    ; preds = %498
  br i1 %504, label %576, label %506

; <label>:506:                                    ; preds = %505
  %507 = add nsw i64 %499, -1
  %508 = sub nsw i64 %507, %503
  br label %535

; <label>:509:                                    ; preds = %498
  br i1 %504, label %561, label %510

; <label>:510:                                    ; preds = %509
  %511 = add nsw i64 %499, -1
  %512 = sub nsw i64 %511, %503
  br label %513

; <label>:513:                                    ; preds = %513, %510
  %514 = phi i64 [ 1, %510 ], [ %532, %513 ]
  %515 = phi i64 [ %487, %510 ], [ %529, %513 ]
  %516 = phi i64 [ %512, %510 ], [ %533, %513 ]
  %517 = lshr i64 %515, 8
  %518 = trunc i64 %517 to i8
  %519 = getelementptr inbounds i8, i8* %490, i64 %514
  store i8 %518, i8* %519, align 1, !tbaa !6
  %520 = add nuw nsw i64 %514, 1
  %521 = lshr i64 %515, 16
  %522 = trunc i64 %521 to i8
  %523 = getelementptr inbounds i8, i8* %490, i64 %520
  store i8 %522, i8* %523, align 1, !tbaa !6
  %524 = add nuw nsw i64 %514, 2
  %525 = lshr i64 %515, 24
  %526 = trunc i64 %525 to i8
  %527 = getelementptr inbounds i8, i8* %490, i64 %524
  store i8 %526, i8* %527, align 1, !tbaa !6
  %528 = add nuw nsw i64 %514, 3
  %529 = lshr i64 %515, 32
  %530 = trunc i64 %529 to i8
  %531 = getelementptr inbounds i8, i8* %490, i64 %528
  store i8 %530, i8* %531, align 1, !tbaa !6
  %532 = add nuw nsw i64 %514, 4
  %533 = add i64 %516, -4
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %561, label %513

; <label>:535:                                    ; preds = %535, %506
  %536 = phi i64 [ 1, %506 ], [ %558, %535 ]
  %537 = phi i64 [ %487, %506 ], [ %554, %535 ]
  %538 = phi i64 [ %508, %506 ], [ %559, %535 ]
  %539 = lshr i64 %537, 8
  %540 = trunc i64 %539 to i8
  %541 = sub nsw i64 %494, %536
  %542 = getelementptr inbounds i8, i8* %490, i64 %541
  store i8 %540, i8* %542, align 1, !tbaa !6
  %543 = add nuw nsw i64 %536, 1
  %544 = lshr i64 %537, 16
  %545 = trunc i64 %544 to i8
  %546 = sub nsw i64 %494, %543
  %547 = getelementptr inbounds i8, i8* %490, i64 %546
  store i8 %545, i8* %547, align 1, !tbaa !6
  %548 = add nuw nsw i64 %536, 2
  %549 = lshr i64 %537, 24
  %550 = trunc i64 %549 to i8
  %551 = sub nsw i64 %494, %548
  %552 = getelementptr inbounds i8, i8* %490, i64 %551
  store i8 %550, i8* %552, align 1, !tbaa !6
  %553 = add nuw nsw i64 %536, 3
  %554 = lshr i64 %537, 32
  %555 = trunc i64 %554 to i8
  %556 = sub nsw i64 %494, %553
  %557 = getelementptr inbounds i8, i8* %490, i64 %556
  store i8 %555, i8* %557, align 1, !tbaa !6
  %558 = add nuw nsw i64 %536, 4
  %559 = add i64 %538, -4
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %576, label %535

; <label>:561:                                    ; preds = %513, %509
  %562 = phi i64 [ 1, %509 ], [ %532, %513 ]
  %563 = phi i64 [ %487, %509 ], [ %529, %513 ]
  %564 = icmp eq i32 %502, 0
  br i1 %564, label %592, label %565

; <label>:565:                                    ; preds = %561
  br label %566

; <label>:566:                                    ; preds = %566, %565
  %567 = phi i64 [ %573, %566 ], [ %562, %565 ]
  %568 = phi i64 [ %570, %566 ], [ %563, %565 ]
  %569 = phi i64 [ %574, %566 ], [ %503, %565 ]
  %570 = lshr i64 %568, 8
  %571 = trunc i64 %570 to i8
  %572 = getelementptr inbounds i8, i8* %490, i64 %567
  store i8 %571, i8* %572, align 1, !tbaa !6
  %573 = add nuw nsw i64 %567, 1
  %574 = add i64 %569, -1
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %592, label %566, !llvm.loop !44

; <label>:576:                                    ; preds = %535, %505
  %577 = phi i64 [ 1, %505 ], [ %558, %535 ]
  %578 = phi i64 [ %487, %505 ], [ %554, %535 ]
  %579 = icmp eq i32 %502, 0
  br i1 %579, label %592, label %580

; <label>:580:                                    ; preds = %576
  br label %581

; <label>:581:                                    ; preds = %581, %580
  %582 = phi i64 [ %589, %581 ], [ %577, %580 ]
  %583 = phi i64 [ %585, %581 ], [ %578, %580 ]
  %584 = phi i64 [ %590, %581 ], [ %503, %580 ]
  %585 = lshr i64 %583, 8
  %586 = trunc i64 %585 to i8
  %587 = sub nsw i64 %494, %582
  %588 = getelementptr inbounds i8, i8* %490, i64 %587
  store i8 %586, i8* %588, align 1, !tbaa !6
  %589 = add nuw nsw i64 %582, 1
  %590 = add i64 %584, -1
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %592, label %581, !llvm.loop !45

; <label>:592:                                    ; preds = %576, %581, %561, %566, %486
  %593 = load i64, i64* %23, align 8, !tbaa !7
  %594 = add i64 %593, %489
  store i64 %594, i64* %23, align 8, !tbaa !7
  %595 = load i64, i64* %9, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %476, i64 %595) #9
  %596 = load i64, i64* %9, align 8, !tbaa !2
  %597 = add i64 %596, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #9
  br label %635

; <label>:598:                                    ; preds = %60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #9
  %599 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %61, i64* nonnull %10) #9
  %600 = call i64 @strlen(i8* %599) #11
  %601 = load i64, i64* %10, align 8, !tbaa !2
  %602 = icmp eq i64 %600, %601
  br i1 %602, label %606, label %603

; <label>:603:                                    ; preds = %598
  %604 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9
  %605 = load i64, i64* %10, align 8, !tbaa !2
  br label %606

; <label>:606:                                    ; preds = %603, %598
  %607 = phi i64 [ %605, %603 ], [ %600, %598 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %599, i64 %607) #9
  %608 = load i64, i64* %23, align 8, !tbaa !7
  %609 = load i64, i64* %24, align 8, !tbaa !10
  %610 = icmp ult i64 %608, %609
  br i1 %610, label %614, label %611

; <label>:611:                                    ; preds = %606
  %612 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %613 = load i64, i64* %23, align 8, !tbaa !7
  br label %614

; <label>:614:                                    ; preds = %611, %606
  %615 = phi i64 [ %613, %611 ], [ %608, %606 ]
  %616 = load i8*, i8** %25, align 8, !tbaa !11
  %617 = add i64 %615, 1
  store i64 %617, i64* %23, align 8, !tbaa !7
  %618 = getelementptr inbounds i8, i8* %616, i64 %615
  store i8 0, i8* %618, align 1, !tbaa !6
  %619 = load i64, i64* %10, align 8, !tbaa !2
  %620 = add i64 %40, 1
  %621 = add i64 %620, %619
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  br label %635

; <label>:622:                                    ; preds = %60
  %623 = load i64, i64* %23, align 8, !tbaa !7
  %624 = load i64, i64* %24, align 8, !tbaa !10
  %625 = icmp ult i64 %623, %624
  br i1 %625, label %629, label %626

; <label>:626:                                    ; preds = %622
  %627 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #9
  %628 = load i64, i64* %23, align 8, !tbaa !7
  br label %629

; <label>:629:                                    ; preds = %626, %622
  %630 = phi i64 [ %628, %626 ], [ %623, %622 ]
  %631 = load i8*, i8** %25, align 8, !tbaa !11
  %632 = add i64 %630, 1
  store i64 %632, i64* %23, align 8, !tbaa !7
  %633 = getelementptr inbounds i8, i8* %631, i64 %630
  store i8 0, i8* %633, align 1, !tbaa !6
  br label %634

; <label>:634:                                    ; preds = %60, %60, %629
  br label %635

; <label>:635:                                    ; preds = %60, %634, %614, %592, %474, %440, %316, %198
  %636 = phi i64 [ %40, %60 ], [ %40, %634 ], [ %621, %614 ], [ %597, %592 ], [ %40, %474 ], [ %40, %440 ], [ %40, %316 ], [ %40, %198 ]
  %637 = phi i32 [ %61, %60 ], [ %33, %634 ], [ %61, %614 ], [ %61, %592 ], [ %61, %474 ], [ %61, %440 ], [ %61, %316 ], [ %61, %198 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #9
  %638 = load i8*, i8** %4, align 8, !tbaa !12
  %639 = load i8, i8* %638, align 1, !tbaa !6
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %641, label %32

; <label>:641:                                    ; preds = %635, %1
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
  br i1 %35, label %371, label %36

; <label>:36:                                     ; preds = %30
  %37 = bitcast i32* %5 to i8*
  %38 = bitcast i32* %6 to i8*
  %39 = bitcast %union.Ftypes* %7 to i8*
  %40 = bitcast %union.Ftypes* %7 to float*
  %41 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %42

; <label>:42:                                     ; preds = %36, %363
  %43 = phi i64 [ %26, %36 ], [ %367, %363 ]
  %44 = phi i32 [ 0, %36 ], [ %365, %363 ]
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
  switch i32 %45, label %363 [
    i32 0, label %59
    i32 1, label %59
    i32 2, label %143
    i32 3, label %268
    i32 4, label %271
    i32 5, label %349
    i32 7, label %362
    i32 6, label %362
    i32 8, label %362
  ]

; <label>:59:                                     ; preds = %56, %56
  %60 = getelementptr inbounds i8, i8* %12, i64 %57
  %61 = load i32, i32* %32, align 8, !tbaa !35
  %62 = icmp eq i32 %45, 0
  %63 = icmp slt i32 %48, 8
  %64 = add i32 %48, -1
  %65 = icmp sgt i32 %48, 0
  br i1 %65, label %66, label %95

; <label>:66:                                     ; preds = %59
  %67 = icmp eq i32 %61, 0
  %68 = sext i32 %64 to i64
  %69 = select i1 %63, i64 %68, i64 7
  br i1 %67, label %71, label %70

; <label>:70:                                     ; preds = %66
  br label %85

; <label>:71:                                     ; preds = %66
  br label %72

; <label>:72:                                     ; preds = %71, %72
  %73 = phi i64 [ %83, %72 ], [ %69, %71 ]
  %74 = phi i64 [ %82, %72 ], [ 0, %71 ]
  %75 = shl i64 %74, 8
  %76 = trunc i64 %73 to i32
  %77 = sub i32 %64, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %60, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !6
  %81 = zext i8 %80 to i64
  %82 = or i64 %75, %81
  %83 = add nsw i64 %73, -1
  %84 = icmp sgt i64 %73, 0
  br i1 %84, label %72, label %95

; <label>:85:                                     ; preds = %70, %85
  %86 = phi i64 [ %93, %85 ], [ %69, %70 ]
  %87 = phi i64 [ %92, %85 ], [ 0, %70 ]
  %88 = shl i64 %87, 8
  %89 = getelementptr inbounds i8, i8* %60, i64 %86
  %90 = load i8, i8* %89, align 1, !tbaa !6
  %91 = zext i8 %90 to i64
  %92 = or i64 %88, %91
  %93 = add nsw i64 %86, -1
  %94 = icmp sgt i64 %86, 0
  br i1 %94, label %85, label %95

; <label>:95:                                     ; preds = %85, %72, %59
  %96 = phi i64 [ 0, %59 ], [ %82, %72 ], [ %92, %85 ]
  br i1 %63, label %97, label %105

; <label>:97:                                     ; preds = %95
  br i1 %62, label %98, label %141

; <label>:98:                                     ; preds = %97
  %99 = shl i32 %48, 3
  %100 = add nsw i32 %99, -1
  %101 = zext i32 %100 to i64
  %102 = shl i64 1, %101
  %103 = xor i64 %96, %102
  %104 = sub i64 %103, %102
  br label %141

; <label>:105:                                    ; preds = %95
  %106 = icmp eq i32 %48, 8
  br i1 %106, label %141, label %107

; <label>:107:                                    ; preds = %105
  %108 = xor i1 %62, true
  %109 = icmp sgt i64 %96, -1
  %110 = or i1 %109, %108
  %111 = select i1 %110, i32 0, i32 255
  %112 = icmp eq i32 %61, 0
  %113 = zext i32 %48 to i64
  br i1 %112, label %115, label %114

; <label>:114:                                    ; preds = %107
  br label %130

; <label>:115:                                    ; preds = %107
  br label %116

; <label>:116:                                    ; preds = %115, %127
  %117 = phi i64 [ %128, %127 ], [ 8, %115 ]
  %118 = trunc i64 %117 to i32
  %119 = sub i32 %64, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %60, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !6
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %111, %123
  br i1 %124, label %127, label %125

; <label>:125:                                    ; preds = %116
  %126 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %127

; <label>:127:                                    ; preds = %125, %116
  %128 = add nuw nsw i64 %117, 1
  %129 = icmp eq i64 %128, %113
  br i1 %129, label %141, label %116

; <label>:130:                                    ; preds = %114, %138
  %131 = phi i64 [ %139, %138 ], [ 8, %114 ]
  %132 = getelementptr inbounds i8, i8* %60, i64 %131
  %133 = load i8, i8* %132, align 1, !tbaa !6
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %111, %134
  br i1 %135, label %138, label %136

; <label>:136:                                    ; preds = %130
  %137 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %138

; <label>:138:                                    ; preds = %136, %130
  %139 = add nuw nsw i64 %131, 1
  %140 = icmp eq i64 %139, %113
  br i1 %140, label %141, label %130

; <label>:141:                                    ; preds = %138, %127, %97, %98, %105
  %142 = phi i64 [ %104, %98 ], [ %96, %97 ], [ %96, %105 ], [ %96, %127 ], [ %96, %138 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %142) #9
  br label %363

; <label>:143:                                    ; preds = %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %39) #9
  %144 = getelementptr inbounds i8, i8* %12, i64 %57
  %145 = load i32, i32* %32, align 8, !tbaa !35
  %146 = icmp eq i32 %145, 1
  %147 = icmp eq i32 %48, 0
  br i1 %146, label %148, label %201

; <label>:148:                                    ; preds = %143
  br i1 %147, label %257, label %149

; <label>:149:                                    ; preds = %148
  %150 = add i32 %48, -1
  %151 = and i32 %48, 7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %165, label %153

; <label>:153:                                    ; preds = %149
  br label %154

; <label>:154:                                    ; preds = %154, %153
  %155 = phi i8* [ %162, %154 ], [ %39, %153 ]
  %156 = phi i32 [ %159, %154 ], [ %48, %153 ]
  %157 = phi i8* [ %160, %154 ], [ %144, %153 ]
  %158 = phi i32 [ %163, %154 ], [ %151, %153 ]
  %159 = add nsw i32 %156, -1
  %160 = getelementptr inbounds i8, i8* %157, i64 1
  %161 = load volatile i8, i8* %157, align 1, !tbaa !6
  %162 = getelementptr inbounds i8, i8* %155, i64 1
  store volatile i8 %161, i8* %155, align 1, !tbaa !6
  %163 = add i32 %158, -1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %154, !llvm.loop !46

; <label>:165:                                    ; preds = %154, %149
  %166 = phi i8* [ %39, %149 ], [ %162, %154 ]
  %167 = phi i32 [ %48, %149 ], [ %159, %154 ]
  %168 = phi i8* [ %144, %149 ], [ %160, %154 ]
  %169 = icmp ult i32 %150, 7
  br i1 %169, label %257, label %170

; <label>:170:                                    ; preds = %165
  br label %171

; <label>:171:                                    ; preds = %171, %170
  %172 = phi i8* [ %166, %170 ], [ %199, %171 ]
  %173 = phi i32 [ %167, %170 ], [ %196, %171 ]
  %174 = phi i8* [ %168, %170 ], [ %197, %171 ]
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load volatile i8, i8* %174, align 1, !tbaa !6
  %177 = getelementptr inbounds i8, i8* %172, i64 1
  store volatile i8 %176, i8* %172, align 1, !tbaa !6
  %178 = getelementptr inbounds i8, i8* %174, i64 2
  %179 = load volatile i8, i8* %175, align 1, !tbaa !6
  %180 = getelementptr inbounds i8, i8* %172, i64 2
  store volatile i8 %179, i8* %177, align 1, !tbaa !6
  %181 = getelementptr inbounds i8, i8* %174, i64 3
  %182 = load volatile i8, i8* %178, align 1, !tbaa !6
  %183 = getelementptr inbounds i8, i8* %172, i64 3
  store volatile i8 %182, i8* %180, align 1, !tbaa !6
  %184 = getelementptr inbounds i8, i8* %174, i64 4
  %185 = load volatile i8, i8* %181, align 1, !tbaa !6
  %186 = getelementptr inbounds i8, i8* %172, i64 4
  store volatile i8 %185, i8* %183, align 1, !tbaa !6
  %187 = getelementptr inbounds i8, i8* %174, i64 5
  %188 = load volatile i8, i8* %184, align 1, !tbaa !6
  %189 = getelementptr inbounds i8, i8* %172, i64 5
  store volatile i8 %188, i8* %186, align 1, !tbaa !6
  %190 = getelementptr inbounds i8, i8* %174, i64 6
  %191 = load volatile i8, i8* %187, align 1, !tbaa !6
  %192 = getelementptr inbounds i8, i8* %172, i64 6
  store volatile i8 %191, i8* %189, align 1, !tbaa !6
  %193 = getelementptr inbounds i8, i8* %174, i64 7
  %194 = load volatile i8, i8* %190, align 1, !tbaa !6
  %195 = getelementptr inbounds i8, i8* %172, i64 7
  store volatile i8 %194, i8* %192, align 1, !tbaa !6
  %196 = add nsw i32 %173, -8
  %197 = getelementptr inbounds i8, i8* %174, i64 8
  %198 = load volatile i8, i8* %193, align 1, !tbaa !6
  %199 = getelementptr inbounds i8, i8* %172, i64 8
  store volatile i8 %198, i8* %195, align 1, !tbaa !6
  %200 = icmp eq i32 %196, 0
  br i1 %200, label %257, label %171

; <label>:201:                                    ; preds = %143
  br i1 %147, label %257, label %202

; <label>:202:                                    ; preds = %201
  %203 = add nsw i32 %48, -1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %39, i64 %204
  %206 = add i32 %48, -1
  %207 = and i32 %48, 7
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %221, label %209

; <label>:209:                                    ; preds = %202
  br label %210

; <label>:210:                                    ; preds = %210, %209
  %211 = phi i8* [ %205, %209 ], [ %218, %210 ]
  %212 = phi i32 [ %48, %209 ], [ %215, %210 ]
  %213 = phi i8* [ %144, %209 ], [ %216, %210 ]
  %214 = phi i32 [ %207, %209 ], [ %219, %210 ]
  %215 = add nsw i32 %212, -1
  %216 = getelementptr inbounds i8, i8* %213, i64 1
  %217 = load volatile i8, i8* %213, align 1, !tbaa !6
  %218 = getelementptr inbounds i8, i8* %211, i64 -1
  store volatile i8 %217, i8* %211, align 1, !tbaa !6
  %219 = add i32 %214, -1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %210, !llvm.loop !47

; <label>:221:                                    ; preds = %210, %202
  %222 = phi i8* [ %205, %202 ], [ %218, %210 ]
  %223 = phi i32 [ %48, %202 ], [ %215, %210 ]
  %224 = phi i8* [ %144, %202 ], [ %216, %210 ]
  %225 = icmp ult i32 %206, 7
  br i1 %225, label %257, label %226

; <label>:226:                                    ; preds = %221
  br label %227

; <label>:227:                                    ; preds = %227, %226
  %228 = phi i8* [ %222, %226 ], [ %255, %227 ]
  %229 = phi i32 [ %223, %226 ], [ %252, %227 ]
  %230 = phi i8* [ %224, %226 ], [ %253, %227 ]
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load volatile i8, i8* %230, align 1, !tbaa !6
  %233 = getelementptr inbounds i8, i8* %228, i64 -1
  store volatile i8 %232, i8* %228, align 1, !tbaa !6
  %234 = getelementptr inbounds i8, i8* %230, i64 2
  %235 = load volatile i8, i8* %231, align 1, !tbaa !6
  %236 = getelementptr inbounds i8, i8* %228, i64 -2
  store volatile i8 %235, i8* %233, align 1, !tbaa !6
  %237 = getelementptr inbounds i8, i8* %230, i64 3
  %238 = load volatile i8, i8* %234, align 1, !tbaa !6
  %239 = getelementptr inbounds i8, i8* %228, i64 -3
  store volatile i8 %238, i8* %236, align 1, !tbaa !6
  %240 = getelementptr inbounds i8, i8* %230, i64 4
  %241 = load volatile i8, i8* %237, align 1, !tbaa !6
  %242 = getelementptr inbounds i8, i8* %228, i64 -4
  store volatile i8 %241, i8* %239, align 1, !tbaa !6
  %243 = getelementptr inbounds i8, i8* %230, i64 5
  %244 = load volatile i8, i8* %240, align 1, !tbaa !6
  %245 = getelementptr inbounds i8, i8* %228, i64 -5
  store volatile i8 %244, i8* %242, align 1, !tbaa !6
  %246 = getelementptr inbounds i8, i8* %230, i64 6
  %247 = load volatile i8, i8* %243, align 1, !tbaa !6
  %248 = getelementptr inbounds i8, i8* %228, i64 -6
  store volatile i8 %247, i8* %245, align 1, !tbaa !6
  %249 = getelementptr inbounds i8, i8* %230, i64 7
  %250 = load volatile i8, i8* %246, align 1, !tbaa !6
  %251 = getelementptr inbounds i8, i8* %228, i64 -7
  store volatile i8 %250, i8* %248, align 1, !tbaa !6
  %252 = add nsw i32 %229, -8
  %253 = getelementptr inbounds i8, i8* %230, i64 8
  %254 = load volatile i8, i8* %249, align 1, !tbaa !6
  %255 = getelementptr inbounds i8, i8* %228, i64 -8
  store volatile i8 %254, i8* %251, align 1, !tbaa !6
  %256 = icmp eq i32 %252, 0
  br i1 %256, label %257, label %227

; <label>:257:                                    ; preds = %221, %227, %165, %171, %148, %201
  %258 = load i32, i32* %5, align 4, !tbaa !32
  %259 = icmp eq i32 %258, 4
  br i1 %259, label %260, label %263

; <label>:260:                                    ; preds = %257
  %261 = load volatile float, float* %40, align 8, !tbaa !6
  %262 = fpext float %261 to double
  br label %265

; <label>:263:                                    ; preds = %257
  %264 = load volatile double, double* %41, align 8, !tbaa !6
  br label %265

; <label>:265:                                    ; preds = %263, %260
  %266 = phi double [ %262, %260 ], [ %264, %263 ]
  call void @lua_pushnumber(%struct.lua_State* %0, double %266) #9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %39) #9
  %267 = sext i32 %258 to i64
  br label %363

; <label>:268:                                    ; preds = %56
  %269 = getelementptr inbounds i8, i8* %12, i64 %57
  %270 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %269, i64 %49) #9
  br label %363

; <label>:271:                                    ; preds = %56
  %272 = getelementptr inbounds i8, i8* %12, i64 %57
  %273 = load i32, i32* %32, align 8, !tbaa !35
  %274 = add i32 %48, -1
  %275 = icmp sgt i32 %48, 0
  br i1 %275, label %276, label %344

; <label>:276:                                    ; preds = %271
  %277 = icmp slt i32 %48, 8
  %278 = icmp eq i32 %273, 0
  %279 = sext i32 %274 to i64
  %280 = select i1 %277, i64 %279, i64 7
  br i1 %278, label %282, label %281

; <label>:281:                                    ; preds = %276
  br label %296

; <label>:282:                                    ; preds = %276
  br label %283

; <label>:283:                                    ; preds = %282, %283
  %284 = phi i64 [ %294, %283 ], [ %280, %282 ]
  %285 = phi i64 [ %293, %283 ], [ 0, %282 ]
  %286 = shl i64 %285, 8
  %287 = trunc i64 %284 to i32
  %288 = sub i32 %274, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %272, i64 %289
  %291 = load i8, i8* %290, align 1, !tbaa !6
  %292 = zext i8 %291 to i64
  %293 = or i64 %286, %292
  %294 = add nsw i64 %284, -1
  %295 = icmp sgt i64 %284, 0
  br i1 %295, label %283, label %306

; <label>:296:                                    ; preds = %281, %296
  %297 = phi i64 [ %304, %296 ], [ %280, %281 ]
  %298 = phi i64 [ %303, %296 ], [ 0, %281 ]
  %299 = shl i64 %298, 8
  %300 = getelementptr inbounds i8, i8* %272, i64 %297
  %301 = load i8, i8* %300, align 1, !tbaa !6
  %302 = zext i8 %301 to i64
  %303 = or i64 %299, %302
  %304 = add nsw i64 %297, -1
  %305 = icmp sgt i64 %297, 0
  br i1 %305, label %296, label %306

; <label>:306:                                    ; preds = %296, %283
  %307 = phi i64 [ %293, %283 ], [ %303, %296 ]
  %308 = icmp slt i32 %48, 9
  br i1 %308, label %337, label %309

; <label>:309:                                    ; preds = %306
  %310 = icmp eq i32 %273, 0
  %311 = zext i32 %48 to i64
  br i1 %310, label %313, label %312

; <label>:312:                                    ; preds = %309
  br label %327

; <label>:313:                                    ; preds = %309
  br label %314

; <label>:314:                                    ; preds = %313, %324
  %315 = phi i64 [ %325, %324 ], [ 8, %313 ]
  %316 = trunc i64 %315 to i32
  %317 = sub i32 %274, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %272, i64 %318
  %320 = load i8, i8* %319, align 1, !tbaa !6
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %324, label %322

; <label>:322:                                    ; preds = %314
  %323 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %324

; <label>:324:                                    ; preds = %322, %314
  %325 = add nuw nsw i64 %315, 1
  %326 = icmp eq i64 %325, %311
  br i1 %326, label %337, label %314

; <label>:327:                                    ; preds = %312, %334
  %328 = phi i64 [ %335, %334 ], [ 8, %312 ]
  %329 = getelementptr inbounds i8, i8* %272, i64 %328
  %330 = load i8, i8* %329, align 1, !tbaa !6
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %334, label %332

; <label>:332:                                    ; preds = %327
  %333 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %48) #9
  br label %334

; <label>:334:                                    ; preds = %332, %327
  %335 = add nuw nsw i64 %328, 1
  %336 = icmp eq i64 %335, %311
  br i1 %336, label %337, label %327

; <label>:337:                                    ; preds = %334, %324, %306
  %338 = load i64, i64* %4, align 8, !tbaa !2
  %339 = add i64 %57, %49
  %340 = sub i64 %338, %339
  %341 = icmp ugt i64 %307, %340
  br i1 %341, label %342, label %344

; <label>:342:                                    ; preds = %337
  %343 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #9
  br label %344

; <label>:344:                                    ; preds = %271, %337, %342
  %345 = phi i64 [ %307, %337 ], [ %307, %342 ], [ 0, %271 ]
  %346 = getelementptr inbounds i8, i8* %272, i64 %49
  %347 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %346, i64 %345) #9
  %348 = add i64 %345, %57
  br label %363

; <label>:349:                                    ; preds = %56
  %350 = getelementptr inbounds i8, i8* %12, i64 %57
  %351 = call i64 @strlen(i8* %350) #11
  %352 = shl i64 %351, 32
  %353 = ashr exact i64 %352, 32
  %354 = add i64 %353, %57
  %355 = load i64, i64* %4, align 8, !tbaa !2
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %359, label %357

; <label>:357:                                    ; preds = %349
  %358 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #9
  br label %359

; <label>:359:                                    ; preds = %357, %349
  %360 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %350, i64 %353) #9
  %361 = add i64 %354, 1
  br label %363

; <label>:362:                                    ; preds = %56, %56, %56
  br label %363

; <label>:363:                                    ; preds = %56, %362, %359, %344, %268, %265, %141
  %364 = phi i64 [ %49, %56 ], [ %49, %362 ], [ %49, %359 ], [ %49, %344 ], [ %49, %268 ], [ %267, %265 ], [ %49, %141 ]
  %365 = phi i32 [ %58, %56 ], [ %44, %362 ], [ %58, %359 ], [ %58, %344 ], [ %58, %268 ], [ %58, %265 ], [ %58, %141 ]
  %366 = phi i64 [ %57, %56 ], [ %57, %362 ], [ %361, %359 ], [ %348, %344 ], [ %57, %268 ], [ %57, %265 ], [ %57, %141 ]
  %367 = add i64 %366, %364
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #9
  %368 = load i8*, i8** %3, align 8, !tbaa !12
  %369 = load i8, i8* %368, align 1, !tbaa !6
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %371, label %42

; <label>:371:                                    ; preds = %363, %30
  %372 = phi i32 [ 0, %30 ], [ %365, %363 ]
  %373 = phi i64 [ %26, %30 ], [ %367, %363 ]
  %374 = add i64 %373, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %374) #9
  %375 = add nsw i32 %372, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9
  ret i32 %375
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
  br label %266

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
  br i1 %49, label %265, label %50

; <label>:50:                                     ; preds = %48
  %51 = add i64 %31, -1
  %52 = sub i64 %46, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %265, label %54

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
  br i1 %62, label %265, label %63

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
  br i1 %72, label %265, label %58

; <label>:73:                                     ; preds = %43
  %74 = icmp eq i8* %44, null
  br i1 %74, label %265, label %75

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
  br label %266

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
  store i8 0, i8* %105, align 4, !tbaa !28
  br i1 %87, label %106, label %109

; <label>:106:                                    ; preds = %94
  %107 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %85, i8* nonnull %96)
  %108 = icmp eq i8* %107, null
  br i1 %108, label %262, label %113

; <label>:109:                                    ; preds = %94
  %110 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %85, i8* %96)
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %109
  br label %254

; <label>:113:                                    ; preds = %258, %109, %106
  %114 = phi i8* [ %85, %106 ], [ %85, %109 ], [ %259, %258 ]
  %115 = phi i8* [ %107, %106 ], [ %110, %109 ], [ %260, %258 ]
  br i1 %27, label %116, label %167

; <label>:116:                                    ; preds = %113
  %117 = ptrtoint i8* %114 to i64
  %118 = ptrtoint i8* %8 to i64
  %119 = sub i64 1, %118
  %120 = add i64 %119, %117
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %120) #9
  %121 = ptrtoint i8* %115 to i64
  %122 = sub i64 %121, %118
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %122) #9
  %123 = load i8, i8* %105, align 4, !tbaa !28
  %124 = zext i8 %123 to i32
  %125 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  call void @luaL_checkstack(%struct.lua_State* %125, i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %126 = icmp eq i8 %123, 0
  br i1 %126, label %165, label %127

; <label>:127:                                    ; preds = %116
  %128 = bitcast %struct.MatchState* %5 to i64*
  %129 = zext i8 %123 to i64
  br label %130

; <label>:130:                                    ; preds = %162, %127
  %131 = phi i64 [ %163, %162 ], [ 0, %127 ]
  %132 = load i8, i8* %105, align 4, !tbaa !28
  %133 = zext i8 %132 to i64
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %142, label %135

; <label>:135:                                    ; preds = %130
  %136 = icmp eq i64 %131, 0
  br i1 %136, label %156, label %137

; <label>:137:                                    ; preds = %135
  %138 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %139 = trunc i64 %131 to i32
  %140 = add i32 %139, 1
  %141 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %140) #9
  br label %156

; <label>:142:                                    ; preds = %130
  %143 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %131, i32 1
  %144 = load i64, i64* %143, align 8, !tbaa !29
  %145 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %131, i32 0
  %146 = bitcast i8** %145 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !31
  switch i64 %144, label %156 [
    i64 -1, label %148
    i64 -2, label %151
  ]

; <label>:148:                                    ; preds = %142
  %149 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %150 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %156

; <label>:151:                                    ; preds = %142
  %152 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %153 = load i64, i64* %128, align 8, !tbaa !21
  %154 = add i64 %147, 1
  %155 = sub i64 %154, %153
  call void @lua_pushinteger(%struct.lua_State* %152, i64 %155) #9
  br label %162

; <label>:156:                                    ; preds = %142, %148, %137, %135
  %157 = phi i64 [ 0, %135 ], [ 0, %137 ], [ %147, %148 ], [ %147, %142 ]
  %158 = phi i64 [ 0, %135 ], [ 0, %137 ], [ -1, %148 ], [ %144, %142 ]
  %159 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %160 = inttoptr i64 %157 to i8*
  %161 = call i8* @lua_pushlstring(%struct.lua_State* %159, i8* %160, i64 %158) #9
  br label %162

; <label>:162:                                    ; preds = %151, %156
  %163 = add nuw nsw i64 %131, 1
  %164 = icmp eq i64 %163, %129
  br i1 %164, label %165, label %130

; <label>:165:                                    ; preds = %162, %116
  %166 = add nuw nsw i32 %124, 2
  br label %263

; <label>:167:                                    ; preds = %113
  %168 = load i8, i8* %105, align 4, !tbaa !28
  %169 = icmp eq i8 %168, 0
  %170 = icmp ne i8* %114, null
  %171 = and i1 %170, %169
  %172 = zext i8 %168 to i32
  %173 = select i1 %171, i32 1, i32 %172
  %174 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  call void @luaL_checkstack(%struct.lua_State* %174, i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #9
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %263, label %176

; <label>:176:                                    ; preds = %167
  %177 = bitcast %struct.MatchState* %5 to i64*
  %178 = ptrtoint i8* %114 to i64
  %179 = ptrtoint i8* %115 to i64
  %180 = sub i64 %179, %178
  %181 = icmp eq i64 %180, -2
  %182 = zext i32 %173 to i64
  br i1 %181, label %184, label %183

; <label>:183:                                    ; preds = %176
  br label %219

; <label>:184:                                    ; preds = %176
  br label %185

; <label>:185:                                    ; preds = %184, %216
  %186 = phi i64 [ %217, %216 ], [ 0, %184 ]
  %187 = load i8, i8* %105, align 4, !tbaa !28
  %188 = zext i8 %187 to i64
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %197, label %190

; <label>:190:                                    ; preds = %185
  %191 = icmp eq i64 %186, 0
  br i1 %191, label %216, label %192

; <label>:192:                                    ; preds = %190
  %193 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %194 = trunc i64 %186 to i32
  %195 = add i32 %194, 1
  %196 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %195) #9
  br label %216

; <label>:197:                                    ; preds = %185
  %198 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %186, i32 1
  %199 = load i64, i64* %198, align 8, !tbaa !29
  %200 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %186, i32 0
  %201 = bitcast i8** %200 to i64*
  %202 = load i64, i64* %201, align 8, !tbaa !31
  switch i64 %199, label %211 [
    i64 -1, label %208
    i64 -2, label %203
  ]

; <label>:203:                                    ; preds = %197
  %204 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %205 = load i64, i64* %177, align 8, !tbaa !21
  %206 = add i64 %202, 1
  %207 = sub i64 %206, %205
  call void @lua_pushinteger(%struct.lua_State* %204, i64 %207) #9
  br label %216

; <label>:208:                                    ; preds = %197
  %209 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %210 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %211

; <label>:211:                                    ; preds = %208, %197
  %212 = phi i64 [ -1, %208 ], [ %199, %197 ]
  %213 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %214 = inttoptr i64 %202 to i8*
  %215 = call i8* @lua_pushlstring(%struct.lua_State* %213, i8* %214, i64 %212) #9
  br label %216

; <label>:216:                                    ; preds = %190, %192, %211, %203
  %217 = add nuw nsw i64 %186, 1
  %218 = icmp eq i64 %217, %182
  br i1 %218, label %263, label %185

; <label>:219:                                    ; preds = %183, %251
  %220 = phi i64 [ %252, %251 ], [ 0, %183 ]
  %221 = load i8, i8* %105, align 4, !tbaa !28
  %222 = zext i8 %221 to i64
  %223 = icmp ult i64 %220, %222
  br i1 %223, label %231, label %224

; <label>:224:                                    ; preds = %219
  %225 = icmp eq i64 %220, 0
  br i1 %225, label %245, label %226

; <label>:226:                                    ; preds = %224
  %227 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %228 = trunc i64 %220 to i32
  %229 = add i32 %228, 1
  %230 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %229) #9
  br label %245

; <label>:231:                                    ; preds = %219
  %232 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %220, i32 1
  %233 = load i64, i64* %232, align 8, !tbaa !29
  %234 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 6, i64 %220, i32 0
  %235 = bitcast i8** %234 to i64*
  %236 = load i64, i64* %235, align 8, !tbaa !31
  switch i64 %233, label %245 [
    i64 -1, label %237
    i64 -2, label %240
  ]

; <label>:237:                                    ; preds = %231
  %238 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %239 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %238, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %245

; <label>:240:                                    ; preds = %231
  %241 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %242 = load i64, i64* %177, align 8, !tbaa !21
  %243 = add i64 %236, 1
  %244 = sub i64 %243, %242
  call void @lua_pushinteger(%struct.lua_State* %241, i64 %244) #9
  br label %251

; <label>:245:                                    ; preds = %226, %224, %237, %231
  %246 = phi i64 [ -1, %237 ], [ %233, %231 ], [ %180, %224 ], [ %180, %226 ]
  %247 = phi i64 [ %236, %237 ], [ %236, %231 ], [ %178, %224 ], [ %178, %226 ]
  %248 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !17
  %249 = inttoptr i64 %247 to i8*
  %250 = call i8* @lua_pushlstring(%struct.lua_State* %248, i8* %249, i64 %246) #9
  br label %251

; <label>:251:                                    ; preds = %240, %245
  %252 = add nuw nsw i64 %220, 1
  %253 = icmp eq i64 %252, %182
  br i1 %253, label %263, label %219

; <label>:254:                                    ; preds = %112, %258
  %255 = phi i8* [ %259, %258 ], [ %85, %112 ]
  %256 = load i8*, i8** %102, align 8, !tbaa !22
  %257 = icmp ult i8* %255, %256
  br i1 %257, label %258, label %262

; <label>:258:                                    ; preds = %254
  %259 = getelementptr inbounds i8, i8* %255, i64 1
  store i8 0, i8* %105, align 4, !tbaa !28
  %260 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* nonnull %259, i8* %96)
  %261 = icmp eq i8* %260, null
  br i1 %261, label %254, label %113

; <label>:262:                                    ; preds = %254, %106
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #9
  br label %265

; <label>:263:                                    ; preds = %251, %216, %165, %167
  %264 = phi i32 [ 0, %167 ], [ %166, %165 ], [ %173, %216 ], [ %173, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %84) #9
  br label %266

; <label>:265:                                    ; preds = %58, %67, %50, %48, %262, %73
  call void @lua_pushnil(%struct.lua_State* %0) #9
  br label %266

; <label>:266:                                    ; preds = %263, %75, %265, %25
  %267 = phi i32 [ 1, %25 ], [ 1, %265 ], [ %264, %263 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  ret i32 %267
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
  br i1 %15, label %607, label %16

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %19 = getelementptr %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %20 = bitcast i8** %19 to i64*
  %21 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  br label %22

; <label>:22:                                     ; preds = %16, %602
  %23 = phi i8* [ %14, %16 ], [ %605, %602 ]
  %24 = phi i8* [ %1, %16 ], [ %604, %602 ]
  %25 = phi i8* [ %2, %16 ], [ %603, %602 ]
  %26 = getelementptr inbounds i8, i8* %24, i64 -1
  br label %30

; <label>:27:                                     ; preds = %285
  %28 = load i8*, i8** %13, align 8, !tbaa !23
  %29 = icmp eq i8* %203, %28
  br i1 %29, label %607, label %30

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
  br i1 %52, label %53, label %607

; <label>:53:                                     ; preds = %46
  %54 = load i8, i8* %21, align 4, !tbaa !28
  %55 = add i8 %54, -1
  store i8 %55, i8* %21, align 4, !tbaa !28
  br label %607

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
  br i1 %68, label %69, label %607

; <label>:69:                                     ; preds = %62
  %70 = load i8, i8* %21, align 4, !tbaa !28
  %71 = add i8 %70, -1
  store i8 %71, i8* %21, align 4, !tbaa !28
  br label %607

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
  br i1 %101, label %102, label %607

; <label>:102:                                    ; preds = %91
  store i64 -1, i64* %99, align 8, !tbaa !29
  br label %607

; <label>:103:                                    ; preds = %30
  %104 = getelementptr inbounds i8, i8* %32, i64 1
  %105 = icmp eq i8* %104, %31
  br i1 %105, label %106, label %362

; <label>:106:                                    ; preds = %103
  %107 = load i8*, i8** %19, align 8, !tbaa !22
  %108 = icmp eq i8* %24, %107
  %109 = select i1 %108, i8* %24, i8* null
  br label %607

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
  br i1 %127, label %128, label %607

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds i8, i8* %32, i64 3
  %130 = load i8, i8* %129, align 1, !tbaa !6
  %131 = getelementptr inbounds i8, i8* %24, i64 1
  %132 = load i8*, i8** %19, align 8, !tbaa !22
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %607

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
  br i1 %151, label %135, label %607

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %138, i64 2
  %154 = getelementptr inbounds i8, i8* %32, i64 4
  br label %602

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
  br i1 %251, label %252, label %607

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
  br i1 %287, label %607, label %27

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
  br i1 %314, label %607, label %315

; <label>:315:                                    ; preds = %308
  %316 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %309, i32 0
  %317 = load i8*, i8** %316, align 8, !tbaa !31
  %318 = tail call i32 @memcmp(i8* %317, i8* %24, i64 %310) #11
  %319 = icmp ne i32 %318, 0
  %320 = getelementptr inbounds i8, i8* %24, i64 %310
  %321 = icmp eq i8* %320, null
  %322 = or i1 %321, %319
  br i1 %322, label %607, label %323

; <label>:323:                                    ; preds = %315
  %324 = getelementptr inbounds i8, i8* %32, i64 2
  br label %602

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

; <label>:422:                                    ; preds = %397, %408, %411, %376, %417, %419
  %423 = phi i32 [ %421, %419 ], [ %379, %376 ], [ %418, %417 ], [ %386, %411 ], [ %386, %408 ], [ %386, %397 ]
  %424 = icmp eq i32 %423, 0
  %425 = load i8, i8* %364, align 1, !tbaa !6
  br i1 %424, label %426, label %430

; <label>:426:                                    ; preds = %367, %422
  %427 = phi i8 [ %368, %367 ], [ %425, %422 ]
  switch i8 %427, label %607 [
    i8 42, label %428
    i8 63, label %428
    i8 45, label %428
  ]

; <label>:428:                                    ; preds = %426, %426, %426
  %429 = getelementptr inbounds i8, i8* %364, i64 1
  br label %602

; <label>:430:                                    ; preds = %374, %422
  %431 = phi i8 [ %375, %374 ], [ %425, %422 ]
  %432 = sext i8 %431 to i32
  switch i32 %432, label %600 [
    i32 63, label %433
    i32 43, label %438
    i32 42, label %440
    i32 45, label %533
  ]

; <label>:433:                                    ; preds = %430
  %434 = getelementptr inbounds i8, i8* %24, i64 1
  %435 = getelementptr inbounds i8, i8* %364, i64 1
  %436 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %434, i8* nonnull %435)
  %437 = icmp eq i8* %436, null
  br i1 %437, label %602, label %607

; <label>:438:                                    ; preds = %430
  %439 = getelementptr inbounds i8, i8* %24, i64 1
  br label %440

; <label>:440:                                    ; preds = %430, %438
  %441 = phi i8* [ %439, %438 ], [ %24, %430 ]
  %442 = sext i8 %372 to i32
  %443 = ptrtoint i8* %441 to i64
  %444 = icmp ugt i8* %365, %441
  br i1 %444, label %445, label %521

; <label>:445:                                    ; preds = %440
  %446 = getelementptr inbounds i8, i8* %364, i64 -1
  switch i32 %442, label %447 [
    i32 46, label %448
    i32 37, label %451
  ]

; <label>:447:                                    ; preds = %445
  br label %465

; <label>:448:                                    ; preds = %445
  %449 = ptrtoint i8* %365 to i64
  %450 = sub i64 %449, %443
  br label %518

; <label>:451:                                    ; preds = %445
  %452 = load i8, i8* %363, align 1, !tbaa !6
  %453 = zext i8 %452 to i32
  br label %454

; <label>:454:                                    ; preds = %461, %451
  %455 = phi i8* [ %441, %451 ], [ %463, %461 ]
  %456 = phi i64 [ 0, %451 ], [ %462, %461 ]
  %457 = load i8, i8* %455, align 1, !tbaa !6
  %458 = zext i8 %457 to i32
  %459 = tail call fastcc i32 @match_class(i32 %458, i32 %453) #9
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %518, label %461

; <label>:461:                                    ; preds = %454
  %462 = add nuw nsw i64 %456, 1
  %463 = getelementptr inbounds i8, i8* %441, i64 %462
  %464 = icmp ugt i8* %365, %463
  br i1 %464, label %454, label %518

; <label>:465:                                    ; preds = %447, %514
  %466 = phi i8* [ %516, %514 ], [ %441, %447 ]
  %467 = phi i64 [ %515, %514 ], [ 0, %447 ]
  %468 = load i8, i8* %466, align 1, !tbaa !6
  %469 = zext i8 %468 to i32
  switch i32 %442, label %508 [
    i32 46, label %514
    i32 91, label %470
  ]

; <label>:470:                                    ; preds = %465
  %471 = load i8, i8* %363, align 1, !tbaa !6
  %472 = icmp eq i8 %471, 94
  %473 = select i1 %472, i8* %363, i8* %32
  %474 = xor i1 %472, true
  %475 = zext i1 %474 to i32
  %476 = getelementptr inbounds i8, i8* %473, i64 1
  %477 = icmp ult i8* %476, %446
  br i1 %477, label %478, label %506

; <label>:478:                                    ; preds = %470
  br label %479

; <label>:479:                                    ; preds = %478, %502
  %480 = phi i8* [ %504, %502 ], [ %476, %478 ]
  %481 = phi i8* [ %503, %502 ], [ %473, %478 ]
  %482 = load i8, i8* %480, align 1, !tbaa !6
  %483 = icmp eq i8 %482, 37
  %484 = getelementptr inbounds i8, i8* %481, i64 2
  %485 = load i8, i8* %484, align 1, !tbaa !6
  br i1 %483, label %486, label %490

; <label>:486:                                    ; preds = %479
  %487 = zext i8 %485 to i32
  %488 = tail call fastcc i32 @match_class(i32 %469, i32 %487) #9
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %502, label %511

; <label>:490:                                    ; preds = %479
  %491 = icmp eq i8 %485, 45
  br i1 %491, label %492, label %500

; <label>:492:                                    ; preds = %490
  %493 = getelementptr inbounds i8, i8* %481, i64 3
  %494 = icmp ult i8* %493, %446
  br i1 %494, label %495, label %500

; <label>:495:                                    ; preds = %492
  %496 = icmp ugt i8 %482, %468
  br i1 %496, label %502, label %497

; <label>:497:                                    ; preds = %495
  %498 = load i8, i8* %493, align 1, !tbaa !6
  %499 = icmp ult i8 %498, %468
  br i1 %499, label %502, label %511

; <label>:500:                                    ; preds = %492, %490
  %501 = icmp eq i8 %482, %468
  br i1 %501, label %511, label %502

; <label>:502:                                    ; preds = %500, %497, %495, %486
  %503 = phi i8* [ %484, %486 ], [ %493, %497 ], [ %493, %495 ], [ %480, %500 ]
  %504 = getelementptr inbounds i8, i8* %503, i64 1
  %505 = icmp ult i8* %504, %446
  br i1 %505, label %479, label %506

; <label>:506:                                    ; preds = %502, %470
  %507 = xor i32 %475, 1
  br label %511

; <label>:508:                                    ; preds = %465
  %509 = icmp eq i8 %372, %468
  %510 = zext i1 %509 to i32
  br label %511

; <label>:511:                                    ; preds = %500, %497, %486, %508, %506
  %512 = phi i32 [ %510, %508 ], [ %507, %506 ], [ %475, %486 ], [ %475, %497 ], [ %475, %500 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %518, label %514

; <label>:514:                                    ; preds = %465, %511
  %515 = add nuw nsw i64 %467, 1
  %516 = getelementptr inbounds i8, i8* %441, i64 %515
  %517 = icmp ugt i8* %365, %516
  br i1 %517, label %465, label %518

; <label>:518:                                    ; preds = %454, %461, %511, %514, %448
  %519 = phi i64 [ %450, %448 ], [ %515, %514 ], [ %467, %511 ], [ %462, %461 ], [ %456, %454 ]
  %520 = icmp sgt i64 %519, -1
  br i1 %520, label %521, label %607

; <label>:521:                                    ; preds = %440, %518
  %522 = phi i64 [ %519, %518 ], [ 0, %440 ]
  %523 = getelementptr inbounds i8, i8* %364, i64 1
  br label %526

; <label>:524:                                    ; preds = %526
  %525 = icmp sgt i64 %532, -1
  br i1 %525, label %526, label %607

; <label>:526:                                    ; preds = %521, %524
  %527 = phi i64 [ %522, %521 ], [ %532, %524 ]
  %528 = getelementptr inbounds i8, i8* %441, i64 %527
  %529 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %528, i8* nonnull %523) #9
  %530 = icmp eq i8* %529, null
  %531 = sext i1 %530 to i64
  %532 = add nsw i64 %527, %531
  br i1 %530, label %524, label %607

; <label>:533:                                    ; preds = %430
  %534 = getelementptr inbounds i8, i8* %364, i64 1
  %535 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %24, i8* nonnull %534) #9
  %536 = icmp eq i8* %535, null
  br i1 %536, label %537, label %607

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %364, i64 -1
  br label %539

; <label>:539:                                    ; preds = %537, %596
  %540 = phi i8* [ %24, %537 ], [ %597, %596 ]
  %541 = load i8*, i8** %19, align 8, !tbaa !22
  %542 = icmp ugt i8* %541, %540
  br i1 %542, label %543, label %607

; <label>:543:                                    ; preds = %539
  %544 = load i8, i8* %540, align 1, !tbaa !6
  %545 = zext i8 %544 to i32
  %546 = load i8, i8* %32, align 1, !tbaa !6
  %547 = sext i8 %546 to i32
  switch i32 %547, label %590 [
    i32 46, label %596
    i32 37, label %548
    i32 91, label %552
  ]

; <label>:548:                                    ; preds = %543
  %549 = load i8, i8* %363, align 1, !tbaa !6
  %550 = zext i8 %549 to i32
  %551 = tail call fastcc i32 @match_class(i32 %545, i32 %550) #9
  br label %593

; <label>:552:                                    ; preds = %543
  %553 = load i8, i8* %363, align 1, !tbaa !6
  %554 = icmp eq i8 %553, 94
  %555 = select i1 %554, i8* %363, i8* %32
  %556 = xor i1 %554, true
  %557 = zext i1 %556 to i32
  %558 = getelementptr inbounds i8, i8* %555, i64 1
  %559 = icmp ult i8* %558, %538
  br i1 %559, label %560, label %588

; <label>:560:                                    ; preds = %552
  br label %561

; <label>:561:                                    ; preds = %560, %584
  %562 = phi i8* [ %586, %584 ], [ %558, %560 ]
  %563 = phi i8* [ %585, %584 ], [ %555, %560 ]
  %564 = load i8, i8* %562, align 1, !tbaa !6
  %565 = icmp eq i8 %564, 37
  %566 = getelementptr inbounds i8, i8* %563, i64 2
  %567 = load i8, i8* %566, align 1, !tbaa !6
  br i1 %565, label %568, label %572

; <label>:568:                                    ; preds = %561
  %569 = zext i8 %567 to i32
  %570 = tail call fastcc i32 @match_class(i32 %545, i32 %569) #9
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %584, label %593

; <label>:572:                                    ; preds = %561
  %573 = icmp eq i8 %567, 45
  br i1 %573, label %574, label %582

; <label>:574:                                    ; preds = %572
  %575 = getelementptr inbounds i8, i8* %563, i64 3
  %576 = icmp ult i8* %575, %538
  br i1 %576, label %577, label %582

; <label>:577:                                    ; preds = %574
  %578 = icmp ugt i8 %564, %544
  br i1 %578, label %584, label %579

; <label>:579:                                    ; preds = %577
  %580 = load i8, i8* %575, align 1, !tbaa !6
  %581 = icmp ult i8 %580, %544
  br i1 %581, label %584, label %593

; <label>:582:                                    ; preds = %574, %572
  %583 = icmp eq i8 %564, %544
  br i1 %583, label %593, label %584

; <label>:584:                                    ; preds = %582, %579, %577, %568
  %585 = phi i8* [ %566, %568 ], [ %575, %579 ], [ %575, %577 ], [ %562, %582 ]
  %586 = getelementptr inbounds i8, i8* %585, i64 1
  %587 = icmp ult i8* %586, %538
  br i1 %587, label %561, label %588

; <label>:588:                                    ; preds = %584, %552
  %589 = xor i32 %557, 1
  br label %593

; <label>:590:                                    ; preds = %543
  %591 = icmp eq i8 %546, %544
  %592 = zext i1 %591 to i32
  br label %593

; <label>:593:                                    ; preds = %568, %579, %582, %548, %588, %590
  %594 = phi i32 [ %592, %590 ], [ %551, %548 ], [ %589, %588 ], [ %557, %582 ], [ %557, %579 ], [ %557, %568 ]
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %607, label %596

; <label>:596:                                    ; preds = %543, %593
  %597 = getelementptr inbounds i8, i8* %540, i64 1
  %598 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %597, i8* nonnull %534) #9
  %599 = icmp eq i8* %598, null
  br i1 %599, label %539, label %607

; <label>:600:                                    ; preds = %430
  %601 = getelementptr inbounds i8, i8* %24, i64 1
  br label %602

; <label>:602:                                    ; preds = %428, %433, %600, %323, %152
  %603 = phi i8* [ %154, %152 ], [ %324, %323 ], [ %429, %428 ], [ %435, %433 ], [ %364, %600 ]
  %604 = phi i8* [ %153, %152 ], [ %320, %323 ], [ %24, %428 ], [ %24, %433 ], [ %601, %600 ]
  %605 = load i8*, i8** %13, align 8, !tbaa !23
  %606 = icmp eq i8* %603, %605
  br i1 %606, label %607, label %22

; <label>:607:                                    ; preds = %602, %315, %308, %128, %124, %426, %433, %27, %285, %249, %148, %593, %539, %596, %526, %524, %518, %533, %12, %102, %91, %69, %62, %53, %46, %106
  %608 = phi i8* [ %109, %106 ], [ %51, %46 ], [ null, %53 ], [ %67, %62 ], [ null, %69 ], [ %100, %91 ], [ null, %102 ], [ %1, %12 ], [ null, %518 ], [ %535, %533 ], [ %529, %526 ], [ null, %524 ], [ null, %593 ], [ null, %539 ], [ %598, %596 ], [ null, %148 ], [ null, %249 ], [ null, %285 ], [ %24, %27 ], [ null, %426 ], [ %436, %433 ], [ %604, %602 ], [ null, %124 ], [ null, %128 ], [ null, %315 ], [ null, %308 ]
  %609 = load i32, i32* %4, align 8, !tbaa !20
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %4, align 8, !tbaa !20
  ret i8* %608
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
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !tbaa !48
  %7 = bitcast i8* %2 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !49
  %12 = icmp ugt i8* %8, %11
  br i1 %12, label %118, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 60
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i8**
  %17 = getelementptr inbounds i8, i8* %2, i64 16
  %18 = bitcast i8* %17 to i8**
  br label %19

; <label>:19:                                     ; preds = %13, %114
  %20 = phi i8* [ %8, %13 ], [ %115, %114 ]
  store i8 0, i8* %14, align 4, !tbaa !28
  %21 = load i8*, i8** %16, align 8, !tbaa !26
  %22 = tail call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %20, i8* %21)
  %23 = icmp eq i8* %22, null
  br i1 %23, label %114, label %24

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %18, align 8, !tbaa !27
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %114, label %27

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
  br i1 %35, label %118, label %36

; <label>:36:                                     ; preds = %27
  %37 = bitcast i8* %3 to i64*
  %38 = ptrtoint i8* %20 to i64
  %39 = ptrtoint i8* %22 to i64
  %40 = sub i64 %39, %38
  %41 = icmp eq i64 %40, -2
  %42 = zext i32 %33 to i64
  br i1 %41, label %44, label %43

; <label>:43:                                     ; preds = %36
  br label %79

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %44, %76
  %46 = phi i64 [ %77, %76 ], [ 0, %44 ]
  %47 = load i8, i8* %14, align 4, !tbaa !28
  %48 = zext i8 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %57, label %50

; <label>:50:                                     ; preds = %45
  %51 = icmp eq i64 %46, 0
  br i1 %51, label %76, label %52

; <label>:52:                                     ; preds = %50
  %53 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %54 = trunc i64 %46 to i32
  %55 = add i32 %54, 1
  %56 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %55) #9
  br label %76

; <label>:57:                                     ; preds = %45
  %58 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %46, i32 1
  %59 = load i64, i64* %58, align 8, !tbaa !29
  %60 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %46, i32 0
  %61 = bitcast i8** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !31
  switch i64 %59, label %71 [
    i64 -1, label %68
    i64 -2, label %63
  ]

; <label>:63:                                     ; preds = %57
  %64 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %65 = load i64, i64* %37, align 8, !tbaa !21
  %66 = add i64 %62, 1
  %67 = sub i64 %66, %65
  tail call void @lua_pushinteger(%struct.lua_State* %64, i64 %67) #9
  br label %76

; <label>:68:                                     ; preds = %57
  %69 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %70 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %71

; <label>:71:                                     ; preds = %68, %57
  %72 = phi i64 [ -1, %68 ], [ %59, %57 ]
  %73 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %74 = inttoptr i64 %62 to i8*
  %75 = tail call i8* @lua_pushlstring(%struct.lua_State* %73, i8* %74, i64 %72) #9
  br label %76

; <label>:76:                                     ; preds = %50, %52, %71, %63
  %77 = add nuw nsw i64 %46, 1
  %78 = icmp eq i64 %77, %42
  br i1 %78, label %118, label %45

; <label>:79:                                     ; preds = %43, %111
  %80 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %81 = load i8, i8* %14, align 4, !tbaa !28
  %82 = zext i8 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %91, label %84

; <label>:84:                                     ; preds = %79
  %85 = icmp eq i64 %80, 0
  br i1 %85, label %105, label %86

; <label>:86:                                     ; preds = %84
  %87 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %88 = trunc i64 %80 to i32
  %89 = add i32 %88, 1
  %90 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %89) #9
  br label %105

; <label>:91:                                     ; preds = %79
  %92 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %80, i32 1
  %93 = load i64, i64* %92, align 8, !tbaa !29
  %94 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 6, i64 %80, i32 0
  %95 = bitcast i8** %94 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !31
  switch i64 %93, label %105 [
    i64 -1, label %97
    i64 -2, label %100
  ]

; <label>:97:                                     ; preds = %91
  %98 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %99 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #9
  br label %105

; <label>:100:                                    ; preds = %91
  %101 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %102 = load i64, i64* %37, align 8, !tbaa !21
  %103 = add i64 %96, 1
  %104 = sub i64 %103, %102
  tail call void @lua_pushinteger(%struct.lua_State* %101, i64 %104) #9
  br label %111

; <label>:105:                                    ; preds = %86, %84, %97, %91
  %106 = phi i64 [ -1, %97 ], [ %93, %91 ], [ %40, %84 ], [ %40, %86 ]
  %107 = phi i64 [ %96, %97 ], [ %96, %91 ], [ %38, %84 ], [ %38, %86 ]
  %108 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !17
  %109 = inttoptr i64 %107 to i8*
  %110 = tail call i8* @lua_pushlstring(%struct.lua_State* %108, i8* %109, i64 %106) #9
  br label %111

; <label>:111:                                    ; preds = %100, %105
  %112 = add nuw nsw i64 %80, 1
  %113 = icmp eq i64 %112, %42
  br i1 %113, label %118, label %79

; <label>:114:                                    ; preds = %24, %19
  %115 = getelementptr inbounds i8, i8* %20, i64 1
  %116 = load i8*, i8** %10, align 8, !tbaa !49
  %117 = icmp ugt i8* %115, %116
  br i1 %117, label %118, label %19

; <label>:118:                                    ; preds = %114, %111, %76, %1, %27
  %119 = phi i32 [ 0, %27 ], [ 0, %1 ], [ %33, %76 ], [ %33, %111 ], [ 0, %114 ]
  ret i32 %119
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

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
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !38}
!48 = !{!25, !9, i64 48}
!49 = !{!25, !9, i64 32}
