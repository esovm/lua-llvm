; ModuleID = 'lstrlib.c'
source_filename = "lstrlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.MatchState = type { i8*, i8*, i8*, %struct.lua_State*, i32, i8, [32 x %struct.anon] }
%struct.anon = type { i8*, i64 }
%struct.Header = type { %struct.lua_State*, i32, i32 }
%union.Ftypes = type { double, [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

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
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #12
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 17) #12
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([18 x %struct.luaL_Reg], [18 x %struct.luaL_Reg]* @strlib, i64 0, i64 0), i32 0) #12
  tail call fastcc void @createmetatable(%struct.lua_State* %0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @createmetatable(%struct.lua_State*) unnamed_addr #0 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #12
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @stringmetamethods, i64 0, i64 0), i32 0) #12
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #12
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #12
  %3 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #12
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #12
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @str_byte(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #12
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = call fastcc i64 @posrelatI(i64 %5, i64 %6)
  %8 = call fastcc i64 @getendpos(%struct.lua_State* %0, i64 %5, i64 %6)
  %9 = icmp ult i64 %8, %7
  br i1 %9, label %31, label %10

; <label>:10:                                     ; preds = %1
  %11 = sub i64 %8, %7
  %12 = icmp ugt i64 %11, 2147483646
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #12
  br label %31

; <label>:15:                                     ; preds = %10
  %16 = trunc i64 %11 to i32
  %17 = add nsw i32 %16, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #12
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %31, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %7, -1
  %21 = add i64 %11, 1
  %22 = and i64 %21, 4294967295
  br label %23

; <label>:23:                                     ; preds = %23, %19
  %24 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %25 = add i64 %20, %24
  %26 = getelementptr inbounds i8, i8* %4, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !6
  %28 = zext i8 %27 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %28) #12
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23

; <label>:31:                                     ; preds = %23, %15, %1, %13
  %32 = phi i32 [ %14, %13 ], [ 0, %1 ], [ %17, %15 ], [ %17, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @str_char(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #12
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #12
  %5 = sext i32 %3 to i64
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %5) #12
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %25, label %8

; <label>:8:                                      ; preds = %1
  %9 = add i32 %3, 1
  %10 = zext i32 %9 to i64
  br label %11

; <label>:11:                                     ; preds = %19, %8
  %12 = phi i64 [ %23, %19 ], [ 1, %8 ]
  %13 = trunc i64 %12 to i32
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %13) #12
  %15 = icmp ult i64 %14, 256
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %11
  %17 = trunc i64 %12 to i32
  %18 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #12
  br label %19

; <label>:19:                                     ; preds = %16, %11
  %20 = trunc i64 %14 to i8
  %21 = add nsw i64 %12, -1
  %22 = getelementptr inbounds i8, i8* %6, i64 %21
  store i8 %20, i8* %22, align 1, !tbaa !6
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %11

; <label>:25:                                     ; preds = %19, %1
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %2, i64 %5) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_dump(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %3) #12
  %4 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #12
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #12
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #12
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #12
  %5 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3, i32 %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #12
  br label %10

; <label>:9:                                      ; preds = %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #12
  br label %10

; <label>:10:                                     ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %3) #12
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @str_find(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_format(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #12
  %7 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %11) #12
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #12
  %12 = icmp sgt i64 %9, 0
  br i1 %12, label %13, label %138

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 1
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 2
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 2
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 2
  %23 = bitcast i64* %5 to i8*
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 2
  br label %25

; <label>:25:                                     ; preds = %13, %134
  %26 = phi i32 [ 1, %13 ], [ %136, %134 ]
  %27 = phi i8* [ %8, %13 ], [ %135, %134 ]
  %28 = load i8, i8* %27, align 1, !tbaa !6
  %29 = icmp eq i8 %28, 37
  br i1 %29, label %43, label %30

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* %14, align 8, !tbaa !7
  %32 = load i64, i64* %15, align 8, !tbaa !10
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %3, i64 1) #12
  br label %36

; <label>:36:                                     ; preds = %34, %30
  %37 = getelementptr inbounds i8, i8* %27, i64 1
  %38 = load i8, i8* %27, align 1, !tbaa !6
  %39 = load i8*, i8** %19, align 8, !tbaa !11
  %40 = load i64, i64* %14, align 8, !tbaa !7
  %41 = add i64 %40, 1
  store i64 %41, i64* %14, align 8, !tbaa !7
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %42, align 1, !tbaa !6
  br label %134

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds i8, i8* %27, i64 1
  %45 = load i8, i8* %44, align 1, !tbaa !6
  %46 = icmp eq i8 %45, 37
  br i1 %46, label %47, label %60

; <label>:47:                                     ; preds = %43
  %48 = load i64, i64* %16, align 8, !tbaa !7
  %49 = load i64, i64* %17, align 8, !tbaa !10
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %53, label %51

; <label>:51:                                     ; preds = %47
  %52 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %3, i64 1) #12
  br label %53

; <label>:53:                                     ; preds = %51, %47
  %54 = getelementptr inbounds i8, i8* %27, i64 2
  %55 = load i8, i8* %44, align 1, !tbaa !6
  %56 = load i8*, i8** %20, align 8, !tbaa !11
  %57 = load i64, i64* %16, align 8, !tbaa !7
  %58 = add i64 %57, 1
  store i64 %58, i64* %16, align 8, !tbaa !7
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %59, align 1, !tbaa !6
  br label %134

; <label>:60:                                     ; preds = %43
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #12
  %61 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %3, i64 120) #12
  %62 = add nsw i32 %26, 1
  %63 = icmp slt i32 %26, %6
  br i1 %63, label %66, label %64

; <label>:64:                                     ; preds = %60
  %65 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #12
  br label %127

; <label>:66:                                     ; preds = %60
  %67 = call fastcc i8* @scanformat(%struct.lua_State* %0, i8* nonnull %44, i8* nonnull %18)
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %67, align 1, !tbaa !6
  %70 = sext i8 %69 to i32
  switch i32 %70, label %125 [
    i32 99, label %71
    i32 100, label %75
    i32 105, label %75
    i32 111, label %75
    i32 117, label %75
    i32 120, label %75
    i32 88, label %75
    i32 97, label %78
    i32 65, label %78
    i32 101, label %81
    i32 69, label %81
    i32 102, label %81
    i32 103, label %81
    i32 71, label %81
    i32 112, label %94
    i32 113, label %97
    i32 115, label %103
  ]

; <label>:71:                                     ; preds = %66
  %72 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %62) #12
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 120, i8* nonnull %18, i32 %73) #12
  br label %129

; <label>:75:                                     ; preds = %66, %66, %66, %66, %66, %66
  %76 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %62) #12
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 120, i8* nonnull %18, i64 %76) #12
  br label %129

; <label>:78:                                     ; preds = %66, %66
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0))
  %79 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %62) #12
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 120, i8* nonnull %18, double %79) #12
  br label %129

; <label>:81:                                     ; preds = %66, %66, %66, %66, %66
  %82 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %62) #12
  %83 = load i8, i8* %67, align 1, !tbaa !6
  %84 = icmp ne i8 %83, 102
  %85 = call double @llvm.fabs.f64(double %82)
  %86 = fcmp ult double %85, 1.000000e+100
  %87 = or i1 %84, %86
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %81
  %89 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %3, i64 418) #12
  br label %90

; <label>:90:                                     ; preds = %81, %88
  %91 = phi i8* [ %89, %88 ], [ %61, %81 ]
  %92 = phi i64 [ 418, %88 ], [ 120, %81 ]
  call fastcc void @addlenmod(i8* nonnull %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0))
  %93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %91, i64 %92, i8* nonnull %18, double %82) #12
  br label %129

; <label>:94:                                     ; preds = %66
  %95 = call i8* @lua_topointer(%struct.lua_State* %0, i32 %62) #12
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 120, i8* nonnull %18, i8* %95) #12
  br label %129

; <label>:97:                                     ; preds = %66
  %98 = load i8, i8* %22, align 2, !tbaa !6
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

; <label>:100:                                    ; preds = %97
  %101 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #12
  br label %127

; <label>:102:                                    ; preds = %97
  call fastcc void @addliteral(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i32 %62)
  br label %129

; <label>:103:                                    ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12
  %104 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %62, i64* nonnull %5) #12
  %105 = load i8, i8* %24, align 2, !tbaa !6
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %103
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %3) #12
  br label %123

; <label>:108:                                    ; preds = %103
  %109 = load i64, i64* %5, align 8, !tbaa !2
  %110 = call i64 @strlen(i8* %104) #13
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %114, label %112

; <label>:112:                                    ; preds = %108
  %113 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #12
  br label %114

; <label>:114:                                    ; preds = %112, %108
  %115 = call i8* @strchr(i8* nonnull %18, i32 46) #13
  %116 = icmp eq i8* %115, null
  %117 = load i64, i64* %5, align 8
  %118 = icmp ugt i64 %117, 99
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %114
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %3) #12
  br label %123

; <label>:121:                                    ; preds = %114
  %122 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 120, i8* nonnull %18, i8* %104) #12
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #12
  br label %123

; <label>:123:                                    ; preds = %120, %121, %107
  %124 = phi i32 [ 0, %107 ], [ 0, %120 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12
  br label %129

; <label>:125:                                    ; preds = %66
  %126 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* nonnull %18) #12
  br label %127

; <label>:127:                                    ; preds = %64, %125, %100
  %128 = phi i32 [ %101, %100 ], [ %126, %125 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #12
  br label %139

; <label>:129:                                    ; preds = %71, %75, %78, %90, %94, %102, %123
  %130 = phi i32 [ %124, %123 ], [ 0, %102 ], [ %96, %94 ], [ %93, %90 ], [ %80, %78 ], [ %77, %75 ], [ %74, %71 ]
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %21, align 8, !tbaa !7
  %133 = add i64 %132, %131
  store i64 %133, i64* %21, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #12
  br label %134

; <label>:134:                                    ; preds = %129, %53, %36
  %135 = phi i8* [ %37, %36 ], [ %54, %53 ], [ %68, %129 ]
  %136 = phi i32 [ %26, %36 ], [ %26, %53 ], [ %62, %129 ]
  %137 = icmp ult i8* %135, %10
  br i1 %137, label %25, label %138

; <label>:138:                                    ; preds = %134, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #12
  br label %139

; <label>:139:                                    ; preds = %127, %138
  %140 = phi i32 [ 1, %138 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %11) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define internal i32 @gmatch(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %3) #12
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #12
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = call fastcc i64 @posrelatI(i64 %8, i64 %9)
  %11 = add i64 %10, -1
  call void @lua_settop(%struct.lua_State* %0, i32 2) #12
  %12 = call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 576, i32 0) #12
  %13 = load i64, i64* %2, align 8, !tbaa !2
  %14 = icmp ugt i64 %11, %13
  %15 = add i64 %13, 1
  %16 = select i1 %14, i64 %15, i64 %11
  %17 = getelementptr inbounds i8, i8* %12, i64 24
  %18 = bitcast i8* %17 to %struct.MatchState*
  %19 = load i64, i64* %3, align 8, !tbaa !2
  call fastcc void @prepstate(%struct.MatchState* nonnull %18, %struct.lua_State* %0, i8* %6, i64 %13, i8* %7, i64 %19)
  %20 = getelementptr inbounds i8, i8* %6, i64 %16
  %21 = bitcast i8* %12 to i8**
  store i8* %20, i8** %21, align 8, !tbaa !12
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i8**
  store i8* %7, i8** %23, align 8, !tbaa !16
  %24 = getelementptr inbounds i8, i8* %12, i64 16
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8, !tbaa !17
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_gsub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.MatchState, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %3) #12
  %10 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #12
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = add i64 %11, 1
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %12) #12
  %14 = load i8, i8* %9, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 94
  %16 = bitcast %struct.MatchState* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %16) #12
  %17 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %17) #12
  %18 = add i32 %10, -3
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %1
  %21 = call i32 @luaL_typeerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #12
  br label %22

; <label>:22:                                     ; preds = %20, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #12
  br i1 %15, label %23, label %27

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds i8, i8* %9, i64 1
  %25 = load i64, i64* %3, align 8, !tbaa !2
  %26 = add i64 %25, -1
  store i64 %26, i64* %3, align 8, !tbaa !2
  br label %27

; <label>:27:                                     ; preds = %23, %22
  %28 = phi i8* [ %24, %23 ], [ %9, %22 ]
  %29 = load i64, i64* %2, align 8, !tbaa !2
  %30 = load i64, i64* %3, align 8, !tbaa !2
  call fastcc void @prepstate(%struct.MatchState* nonnull %4, %struct.lua_State* %0, i8* %8, i64 %29, i8* %28, i64 %30)
  %31 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 1
  %32 = icmp sgt i64 %13, 0
  br i1 %32, label %33, label %79

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %35 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %37 = xor i1 %15, true
  br label %38

; <label>:38:                                     ; preds = %67, %33
  %39 = phi i8* [ %8, %33 ], [ %71, %67 ]
  %40 = phi i32 [ 0, %33 ], [ %70, %67 ]
  %41 = phi i64 [ 0, %33 ], [ %69, %67 ]
  %42 = phi i8* [ null, %33 ], [ %68, %67 ]
  call fastcc void @reprepstate(%struct.MatchState* nonnull %4)
  %43 = call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %39, i8* %28)
  %44 = icmp eq i8* %43, null
  %45 = icmp eq i8* %43, %42
  %46 = or i1 %44, %45
  br i1 %46, label %51, label %47

; <label>:47:                                     ; preds = %38
  %48 = add nsw i64 %41, 1
  %49 = call fastcc i32 @add_value(%struct.MatchState* nonnull %4, %struct.luaL_Buffer* nonnull %5, i8* %39, i8* nonnull %43, i32 %10)
  %50 = or i32 %49, %40
  br label %67

; <label>:51:                                     ; preds = %38
  %52 = load i8*, i8** %31, align 8, !tbaa !18
  %53 = icmp ult i8* %39, %52
  br i1 %53, label %54, label %74

; <label>:54:                                     ; preds = %51
  %55 = load i64, i64* %34, align 8, !tbaa !7
  %56 = load i64, i64* %35, align 8, !tbaa !10
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %54
  %59 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #12
  br label %60

; <label>:60:                                     ; preds = %58, %54
  %61 = getelementptr inbounds i8, i8* %39, i64 1
  %62 = load i8, i8* %39, align 1, !tbaa !6
  %63 = load i8*, i8** %36, align 8, !tbaa !11
  %64 = load i64, i64* %34, align 8, !tbaa !7
  %65 = add i64 %64, 1
  store i64 %65, i64* %34, align 8, !tbaa !7
  %66 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %66, align 1, !tbaa !6
  br label %67

; <label>:67:                                     ; preds = %47, %60
  %68 = phi i8* [ %43, %47 ], [ %42, %60 ]
  %69 = phi i64 [ %48, %47 ], [ %41, %60 ]
  %70 = phi i32 [ %50, %47 ], [ %40, %60 ]
  %71 = phi i8* [ %43, %47 ], [ %61, %60 ]
  %72 = icmp slt i64 %69, %13
  %73 = and i1 %72, %37
  br i1 %73, label %38, label %74

; <label>:74:                                     ; preds = %51, %67
  %75 = phi i64 [ %41, %51 ], [ %69, %67 ]
  %76 = phi i32 [ %40, %51 ], [ %70, %67 ]
  %77 = phi i8* [ %39, %51 ], [ %71, %67 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %27, %74
  %80 = phi i64 [ %75, %74 ], [ 0, %27 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #12
  br label %87

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 1
  %83 = bitcast i8** %82 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !18
  %85 = ptrtoint i8* %77 to i64
  %86 = sub i64 %84, %85
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %77, i64 %86) #12
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #12
  br label %87

; <label>:87:                                     ; preds = %81, %79
  %88 = phi i64 [ %75, %81 ], [ %80, %79 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %88) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %17) #12
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %16) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_len(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %5 = load i64, i64* %2, align 8, !tbaa !2
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_lower(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #12
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_tolower_loc() #14
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !19
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !20
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add nuw i64 %14, 1
  %24 = load i64, i64* %2, align 8, !tbaa !2
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %13, label %26

; <label>:26:                                     ; preds = %13, %1
  %27 = phi i64 [ 0, %1 ], [ %24, %13 ]
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %27) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #12
  %9 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), i64* nonnull %3) #12
  %10 = icmp slt i64 %8, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #12
  br label %49

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
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0)) #12
  br label %49

; <label>:23:                                     ; preds = %18
  %24 = mul i64 %14, %8
  %25 = add nsw i64 %8, -1
  %26 = mul i64 %15, %25
  %27 = add i64 %26, %24
  %28 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %28) #12
  %29 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4, i64 %27) #12
  %30 = icmp sgt i64 %8, 1
  %31 = load i64, i64* %2, align 8, !tbaa !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %7, i64 %31, i32 1, i1 false)
  br i1 %30, label %32, label %48

; <label>:32:                                     ; preds = %23
  br label %33

; <label>:33:                                     ; preds = %32, %44
  %34 = phi i64 [ %36, %44 ], [ %8, %32 ]
  %35 = phi i8* [ %45, %44 ], [ %29, %32 ]
  %36 = add nsw i64 %34, -1
  %37 = load i64, i64* %2, align 8, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* %3, align 8, !tbaa !2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %9, i64 %39, i32 1, i1 false)
  %42 = load i64, i64* %3, align 8, !tbaa !2
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  br label %44

; <label>:44:                                     ; preds = %33, %41
  %45 = phi i8* [ %43, %41 ], [ %38, %33 ]
  %46 = icmp sgt i64 %34, 2
  %47 = load i64, i64* %2, align 8, !tbaa !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %7, i64 %47, i32 1, i1 false)
  br i1 %46, label %33, label %48

; <label>:48:                                     ; preds = %44, %23
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %4, i64 %27) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %28) #12
  br label %49

; <label>:49:                                     ; preds = %11, %48, %21
  %50 = phi i32 [ %22, %21 ], [ 1, %48 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @str_reverse(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #12
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
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %24) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_sub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #12
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = call fastcc i64 @posrelatI(i64 %5, i64 %6)
  %8 = call fastcc i64 @getendpos(%struct.lua_State* %0, i64 -1, i64 %6)
  %9 = icmp ult i64 %8, %7
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds i8, i8* %4, i64 %7
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = sub i64 1, %7
  %14 = add i64 %13, %8
  %15 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %12, i64 %14) #12
  br label %18

; <label>:16:                                     ; preds = %1
  %17 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #12
  br label %18

; <label>:18:                                     ; preds = %16, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_upper(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #12
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #12
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11

; <label>:11:                                     ; preds = %1
  %12 = tail call i32** @__ctype_toupper_loc() #14
  br label %13

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = load i32*, i32** %12, align 8, !tbaa !19
  %16 = getelementptr inbounds i8, i8* %6, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !20
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add nuw i64 %14, 1
  %24 = load i64, i64* %2, align 8, !tbaa !2
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %13, label %26

; <label>:26:                                     ; preds = %13, %1
  %27 = phi i64 [ 0, %1 ], [ %24, %13 ]
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %27) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
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
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %11) #12
  %12 = bitcast %struct.Header* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #12
  %13 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #12
  %14 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #12
  store i8* %14, i8** %4, align 8, !tbaa !19
  call fastcc void @initheader(%struct.lua_State* %0, %struct.Header* nonnull %3)
  tail call void @lua_pushnil(%struct.lua_State* %0) #12
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #12
  %15 = load i8, i8* %14, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %200, label %17

; <label>:17:                                     ; preds = %1
  %18 = bitcast i32* %5 to i8*
  %19 = bitcast i32* %6 to i8*
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %23 = bitcast %union.Ftypes* %7 to i8*
  %24 = bitcast i64* %8 to i8*
  %25 = bitcast i64* %9 to i8*
  %26 = bitcast i64* %10 to i8*
  %27 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %29 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  %30 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  %31 = bitcast %union.Ftypes* %7 to float*
  %32 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %34 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  %35 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %38 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %39 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %40 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  br label %43

; <label>:43:                                     ; preds = %17, %194
  %44 = phi i32 [ 1, %17 ], [ %196, %194 ]
  %45 = phi i64 [ 0, %17 ], [ %195, %194 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12
  %46 = call fastcc i32 @getdetails(%struct.Header* nonnull %3, i64 %45, i8** nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %47 = load i32, i32* %6, align 4, !tbaa !20
  %48 = load i32, i32* %5, align 4, !tbaa !20
  %49 = add nsw i32 %48, %47
  %50 = sext i32 %49 to i64
  %51 = add i64 %45, %50
  %52 = add nsw i32 %47, -1
  store i32 %52, i32* %6, align 4, !tbaa !20
  %53 = icmp sgt i32 %47, 0
  br i1 %53, label %54, label %71

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %6, align 4, !tbaa !20
  br label %56

; <label>:56:                                     ; preds = %54, %63
  %57 = phi i32 [ %55, %54 ], [ %68, %63 ]
  %58 = load i64, i64* %20, align 8, !tbaa !7
  %59 = load i64, i64* %21, align 8, !tbaa !10
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %63, label %61

; <label>:61:                                     ; preds = %56
  %62 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #12
  br label %63

; <label>:63:                                     ; preds = %61, %56
  %64 = load i8*, i8** %22, align 8, !tbaa !11
  %65 = load i64, i64* %20, align 8, !tbaa !7
  %66 = add i64 %65, 1
  store i64 %66, i64* %20, align 8, !tbaa !7
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %67, align 1, !tbaa !6
  %68 = add nsw i32 %57, -1
  %69 = icmp sgt i32 %57, 0
  br i1 %69, label %56, label %70

; <label>:70:                                     ; preds = %63
  store i32 %68, i32* %6, align 4, !tbaa !20
  br label %71

; <label>:71:                                     ; preds = %70, %43
  %72 = add nsw i32 %44, 1
  switch i32 %46, label %194 [
    i32 0, label %73
    i32 1, label %91
    i32 2, label %103
    i32 3, label %115
    i32 4, label %143
    i32 5, label %160
    i32 6, label %182
    i32 7, label %193
    i32 8, label %193
  ]

; <label>:73:                                     ; preds = %71
  %74 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %72) #12
  %75 = icmp slt i32 %48, 8
  br i1 %75, label %76, label %87

; <label>:76:                                     ; preds = %73
  %77 = shl i32 %48, 3
  %78 = add nsw i32 %77, -1
  %79 = zext i32 %78 to i64
  %80 = shl i64 1, %79
  %81 = sub nsw i64 0, %80
  %82 = icmp sge i64 %74, %81
  %83 = icmp slt i64 %74, %80
  %84 = and i1 %82, %83
  br i1 %84, label %87, label %85

; <label>:85:                                     ; preds = %76
  %86 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #12
  br label %87

; <label>:87:                                     ; preds = %85, %76, %73
  %88 = load i32, i32* %29, align 8, !tbaa !21
  %89 = lshr i64 %74, 63
  %90 = trunc i64 %89 to i32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %74, i32 %88, i32 %48, i32 %90)
  br label %194

; <label>:91:                                     ; preds = %71
  %92 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %72) #12
  %93 = icmp slt i32 %48, 8
  br i1 %93, label %94, label %101

; <label>:94:                                     ; preds = %91
  %95 = shl nsw i32 %48, 3
  %96 = zext i32 %95 to i64
  %97 = shl i64 1, %96
  %98 = icmp ult i64 %92, %97
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %94
  %100 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #12
  br label %101

; <label>:101:                                    ; preds = %94, %99, %91
  %102 = load i32, i32* %30, align 8, !tbaa !21
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %92, i32 %102, i32 %48, i32 0)
  br label %194

; <label>:103:                                    ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #12
  %104 = sext i32 %48 to i64
  %105 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %104) #12
  %106 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %72) #12
  %107 = icmp eq i32 %48, 4
  br i1 %107, label %108, label %110

; <label>:108:                                    ; preds = %103
  %109 = fptrunc double %106 to float
  store volatile float %109, float* %31, align 8, !tbaa !6
  br label %111

; <label>:110:                                    ; preds = %103
  store volatile double %106, double* %34, align 8, !tbaa !6
  br label %111

; <label>:111:                                    ; preds = %110, %108
  %112 = load i32, i32* %32, align 8, !tbaa !21
  call fastcc void @copywithendian(i8* %105, i8* nonnull %23, i32 %48, i32 %112)
  %113 = load i64, i64* %33, align 8, !tbaa !7
  %114 = add i64 %113, %104
  store i64 %114, i64* %33, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #12
  br label %194

; <label>:115:                                    ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #12
  %116 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %72, i64* nonnull %8) #12
  %117 = load i64, i64* %8, align 8, !tbaa !2
  %118 = sext i32 %48 to i64
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %122

; <label>:120:                                    ; preds = %115
  %121 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0)) #12
  br label %122

; <label>:122:                                    ; preds = %115, %120
  %123 = load i64, i64* %8, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %116, i64 %123) #12
  %124 = load i64, i64* %8, align 8, !tbaa !2
  %125 = add i64 %124, 1
  store i64 %125, i64* %8, align 8, !tbaa !2
  %126 = icmp ult i64 %124, %118
  br i1 %126, label %127, label %142

; <label>:127:                                    ; preds = %122
  br label %128

; <label>:128:                                    ; preds = %127, %134
  %129 = load i64, i64* %39, align 8, !tbaa !7
  %130 = load i64, i64* %40, align 8, !tbaa !10
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %134, label %132

; <label>:132:                                    ; preds = %128
  %133 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #12
  br label %134

; <label>:134:                                    ; preds = %132, %128
  %135 = load i8*, i8** %41, align 8, !tbaa !11
  %136 = load i64, i64* %39, align 8, !tbaa !7
  %137 = add i64 %136, 1
  store i64 %137, i64* %39, align 8, !tbaa !7
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %138, align 1, !tbaa !6
  %139 = load i64, i64* %8, align 8, !tbaa !2
  %140 = add i64 %139, 1
  store i64 %140, i64* %8, align 8, !tbaa !2
  %141 = icmp ult i64 %139, %118
  br i1 %141, label %128, label %142

; <label>:142:                                    ; preds = %134, %122
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #12
  br label %194

; <label>:143:                                    ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12
  %144 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %72, i64* nonnull %9) #12
  %145 = icmp sgt i32 %48, 7
  br i1 %145, label %154, label %146

; <label>:146:                                    ; preds = %143
  %147 = load i64, i64* %9, align 8, !tbaa !2
  %148 = shl nsw i32 %48, 3
  %149 = zext i32 %148 to i64
  %150 = shl i64 1, %149
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %154, label %152

; <label>:152:                                    ; preds = %146
  %153 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #12
  br label %154

; <label>:154:                                    ; preds = %152, %146, %143
  %155 = load i64, i64* %9, align 8, !tbaa !2
  %156 = load i32, i32* %35, align 8, !tbaa !21
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %155, i32 %156, i32 %48, i32 0)
  %157 = load i64, i64* %9, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %144, i64 %157) #12
  %158 = load i64, i64* %9, align 8, !tbaa !2
  %159 = add i64 %158, %51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12
  br label %194

; <label>:160:                                    ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #12
  %161 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %72, i64* nonnull %10) #12
  %162 = call i64 @strlen(i8* %161) #13
  %163 = load i64, i64* %10, align 8, !tbaa !2
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %167, label %165

; <label>:165:                                    ; preds = %160
  %166 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #12
  br label %167

; <label>:167:                                    ; preds = %165, %160
  %168 = load i64, i64* %10, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %161, i64 %168) #12
  %169 = load i64, i64* %36, align 8, !tbaa !7
  %170 = load i64, i64* %37, align 8, !tbaa !10
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %174, label %172

; <label>:172:                                    ; preds = %167
  %173 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #12
  br label %174

; <label>:174:                                    ; preds = %172, %167
  %175 = load i8*, i8** %42, align 8, !tbaa !11
  %176 = load i64, i64* %36, align 8, !tbaa !7
  %177 = add i64 %176, 1
  store i64 %177, i64* %36, align 8, !tbaa !7
  %178 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 0, i8* %178, align 1, !tbaa !6
  %179 = load i64, i64* %10, align 8, !tbaa !2
  %180 = add i64 %51, 1
  %181 = add i64 %180, %179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #12
  br label %194

; <label>:182:                                    ; preds = %71
  %183 = load i64, i64* %27, align 8, !tbaa !7
  %184 = load i64, i64* %28, align 8, !tbaa !10
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %188, label %186

; <label>:186:                                    ; preds = %182
  %187 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #12
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = load i8*, i8** %38, align 8, !tbaa !11
  %190 = load i64, i64* %27, align 8, !tbaa !7
  %191 = add i64 %190, 1
  store i64 %191, i64* %27, align 8, !tbaa !7
  %192 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8 0, i8* %192, align 1, !tbaa !6
  br label %193

; <label>:193:                                    ; preds = %71, %71, %188
  br label %194

; <label>:194:                                    ; preds = %71, %193, %174, %154, %142, %111, %101, %87
  %195 = phi i64 [ %51, %71 ], [ %51, %193 ], [ %181, %174 ], [ %159, %154 ], [ %51, %142 ], [ %51, %111 ], [ %51, %101 ], [ %51, %87 ]
  %196 = phi i32 [ %72, %71 ], [ %44, %193 ], [ %72, %174 ], [ %72, %154 ], [ %72, %142 ], [ %72, %111 ], [ %72, %101 ], [ %72, %87 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #12
  %197 = load i8*, i8** %4, align 8, !tbaa !19
  %198 = load i8, i8* %197, align 1, !tbaa !6
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %43

; <label>:200:                                    ; preds = %194, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %11) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_packsize(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #12
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #12
  store i8* %8, i8** %3, align 8, !tbaa !19
  call fastcc void @initheader(%struct.lua_State* %0, %struct.Header* nonnull %2)
  %9 = load i8, i8* %8, align 1, !tbaa !6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

; <label>:11:                                     ; preds = %1
  %12 = bitcast i32* %4 to i8*
  %13 = bitcast i32* %5 to i8*
  br label %14

; <label>:14:                                     ; preds = %11, %30
  %15 = phi i64 [ 0, %11 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #12
  %16 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %15, i8** nonnull %3, i32* nonnull %4, i32* nonnull %5)
  %17 = or i32 %16, 1
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %14
  %20 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0)) #12
  br label %21

; <label>:21:                                     ; preds = %14, %19
  %22 = load i32, i32* %5, align 4, !tbaa !20
  %23 = load i32, i32* %4, align 4, !tbaa !20
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %4, align 4, !tbaa !20
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 2147483647, %25
  %27 = icmp ugt i64 %15, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %21
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0)) #12
  br label %30

; <label>:30:                                     ; preds = %21, %28
  %31 = add i64 %15, %25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #12
  %32 = load i8*, i8** %3, align 8, !tbaa !19
  %33 = load i8, i8* %32, align 1, !tbaa !6
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %14

; <label>:35:                                     ; preds = %30, %1
  %36 = phi i64 [ 0, %1 ], [ %31, %30 ]
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %36) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #12
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #12
  %9 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #12
  store i8* %10, i8** %3, align 8, !tbaa !19
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12
  %12 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #12
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #12
  %14 = load i64, i64* %4, align 8, !tbaa !2
  %15 = call fastcc i64 @posrelatI(i64 %13, i64 %14)
  %16 = add i64 %15, -1
  %17 = icmp ugt i64 %16, %14
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %1
  %19 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0)) #12
  br label %20

; <label>:20:                                     ; preds = %1, %18
  call fastcc void @initheader(%struct.lua_State* %0, %struct.Header* nonnull %2)
  %21 = load i8*, i8** %3, align 8, !tbaa !19
  %22 = load i8, i8* %21, align 1, !tbaa !6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %106, label %24

; <label>:24:                                     ; preds = %20
  %25 = bitcast i32* %5 to i8*
  %26 = bitcast i32* %6 to i8*
  %27 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  %28 = bitcast %union.Ftypes* %7 to i8*
  %29 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  %30 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  %31 = bitcast %union.Ftypes* %7 to float*
  %32 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %33

; <label>:33:                                     ; preds = %24, %99
  %34 = phi i64 [ %16, %24 ], [ %102, %99 ]
  %35 = phi i32 [ 0, %24 ], [ %100, %99 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12
  %36 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %34, i8** nonnull %3, i32* nonnull %5, i32* nonnull %6)
  %37 = load i32, i32* %6, align 4, !tbaa !20
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %5, align 4, !tbaa !20
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = load i64, i64* %4, align 8, !tbaa !2
  %43 = sub i64 %42, %34
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %33
  %46 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #12
  br label %47

; <label>:47:                                     ; preds = %33, %45
  %48 = add i64 %34, %38
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0)) #12
  %49 = add nsw i32 %35, 1
  switch i32 %36, label %99 [
    i32 0, label %50
    i32 1, label %50
    i32 2, label %56
    i32 3, label %67
    i32 4, label %70
    i32 5, label %84
    i32 7, label %98
    i32 6, label %98
    i32 8, label %98
  ]

; <label>:50:                                     ; preds = %47, %47
  %51 = getelementptr inbounds i8, i8* %12, i64 %48
  %52 = load i32, i32* %27, align 8, !tbaa !21
  %53 = icmp eq i32 %36, 0
  %54 = zext i1 %53 to i32
  %55 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %51, i32 %52, i32 %39, i32 %54)
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %55) #12
  br label %99

; <label>:56:                                     ; preds = %47
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %28) #12
  %57 = getelementptr inbounds i8, i8* %12, i64 %48
  %58 = load i32, i32* %29, align 8, !tbaa !21
  call fastcc void @copywithendian(i8* nonnull %28, i8* %57, i32 %39, i32 %58)
  %59 = icmp eq i32 %39, 4
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %56
  %61 = load volatile float, float* %31, align 8, !tbaa !6
  %62 = fpext float %61 to double
  br label %65

; <label>:63:                                     ; preds = %56
  %64 = load volatile double, double* %32, align 8, !tbaa !6
  br label %65

; <label>:65:                                     ; preds = %63, %60
  %66 = phi double [ %62, %60 ], [ %64, %63 ]
  call void @lua_pushnumber(%struct.lua_State* %0, double %66) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %28) #12
  br label %99

; <label>:67:                                     ; preds = %47
  %68 = getelementptr inbounds i8, i8* %12, i64 %48
  %69 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %68, i64 %40) #12
  br label %99

; <label>:70:                                     ; preds = %47
  %71 = getelementptr inbounds i8, i8* %12, i64 %48
  %72 = load i32, i32* %30, align 8, !tbaa !21
  %73 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %71, i32 %72, i32 %39, i32 0)
  %74 = load i64, i64* %4, align 8, !tbaa !2
  %75 = add i64 %48, %40
  %76 = sub i64 %74, %75
  %77 = icmp ugt i64 %73, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %70
  %79 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #12
  br label %80

; <label>:80:                                     ; preds = %70, %78
  %81 = getelementptr inbounds i8, i8* %71, i64 %40
  %82 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %81, i64 %73) #12
  %83 = add i64 %73, %48
  br label %99

; <label>:84:                                     ; preds = %47
  %85 = getelementptr inbounds i8, i8* %12, i64 %48
  %86 = call i64 @strlen(i8* %85) #13
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = add i64 %88, %48
  %90 = load i64, i64* %4, align 8, !tbaa !2
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %84
  %93 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #12
  br label %94

; <label>:94:                                     ; preds = %92, %84
  %95 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %85, i64 %88) #12
  %96 = add i64 %88, %48
  %97 = add i64 %96, 1
  br label %99

; <label>:98:                                     ; preds = %47, %47, %47
  br label %99

; <label>:99:                                     ; preds = %47, %98, %94, %80, %67, %65, %50
  %100 = phi i32 [ %49, %47 ], [ %35, %98 ], [ %49, %94 ], [ %49, %80 ], [ %49, %67 ], [ %49, %65 ], [ %49, %50 ]
  %101 = phi i64 [ %48, %47 ], [ %48, %98 ], [ %97, %94 ], [ %83, %80 ], [ %48, %67 ], [ %48, %65 ], [ %48, %50 ]
  %102 = add i64 %101, %40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #12
  %103 = load i8*, i8** %3, align 8, !tbaa !19
  %104 = load i8, i8* %103, align 1, !tbaa !6
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %33

; <label>:106:                                    ; preds = %99, %20
  %107 = phi i32 [ 0, %20 ], [ %100, %99 ]
  %108 = phi i64 [ %16, %20 ], [ %102, %99 ]
  %109 = add i64 %108, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %109) #12
  %110 = add nsw i32 %107, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #12
  ret i32 %110
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i64 @posrelatI(i64, i64) unnamed_addr #3 {
  %3 = icmp sgt i64 %0, 0
  br i1 %3, label %12, label %4

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i64 %0, 0
  %6 = sub nsw i64 0, %1
  %7 = icmp sgt i64 %6, %0
  %8 = or i1 %5, %7
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %4
  %10 = add i64 %0, 1
  %11 = add i64 %10, %1
  br label %12

; <label>:12:                                     ; preds = %4, %2, %9
  %13 = phi i64 [ %11, %9 ], [ %0, %2 ], [ 1, %4 ]
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @getendpos(%struct.lua_State*, i64, i64) unnamed_addr #0 {
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %1) #12
  %5 = icmp sgt i64 %4, %2
  br i1 %5, label %14, label %6

; <label>:6:                                      ; preds = %3
  %7 = icmp sgt i64 %4, -1
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %6
  %9 = sub nsw i64 0, %2
  %10 = icmp slt i64 %4, %9
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = add i64 %2, 1
  %13 = add i64 %12, %4
  br label %14

; <label>:14:                                     ; preds = %8, %6, %3, %11
  %15 = phi i64 [ %13, %11 ], [ %2, %3 ], [ %4, %6 ], [ 0, %8 ]
  ret i64 %15
}

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
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #12
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #12
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #12
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #12
  %11 = load i64, i64* %3, align 8, !tbaa !2
  %12 = call fastcc i64 @posrelatI(i64 %10, i64 %11)
  %13 = add i64 %12, -1
  %14 = icmp ugt i64 %13, %11
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  call void @lua_pushnil(%struct.lua_State* %0) #12
  br label %78

; <label>:16:                                     ; preds = %2
  %17 = icmp ne i32 %1, 0
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %16
  %19 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %4, align 8, !tbaa !2
  %23 = call fastcc i32 @nospecials(i8* %9, i64 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

; <label>:25:                                     ; preds = %21, %18
  %26 = getelementptr inbounds i8, i8* %8, i64 %13
  %27 = load i64, i64* %3, align 8, !tbaa !2
  %28 = sub i64 %27, %13
  %29 = load i64, i64* %4, align 8, !tbaa !2
  %30 = call fastcc i8* @lmemfind(i8* %26, i64 %28, i8* %9, i64 %29)
  %31 = icmp eq i8* %30, null
  br i1 %31, label %77, label %32

; <label>:32:                                     ; preds = %25
  %33 = ptrtoint i8* %30 to i64
  %34 = ptrtoint i8* %8 to i64
  %35 = sub i64 %33, %34
  %36 = add nsw i64 %35, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %36) #12
  %37 = load i64, i64* %4, align 8, !tbaa !2
  %38 = add i64 %37, %35
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %38) #12
  br label %78

; <label>:39:                                     ; preds = %21, %16
  %40 = bitcast %struct.MatchState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %40) #12
  %41 = getelementptr inbounds i8, i8* %8, i64 %13
  %42 = load i8, i8* %9, align 1, !tbaa !6
  %43 = icmp eq i8 %42, 94
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds i8, i8* %9, i64 1
  %46 = load i64, i64* %4, align 8, !tbaa !2
  %47 = add i64 %46, -1
  store i64 %47, i64* %4, align 8, !tbaa !2
  br label %48

; <label>:48:                                     ; preds = %44, %39
  %49 = phi i8* [ %45, %44 ], [ %9, %39 ]
  %50 = load i64, i64* %3, align 8, !tbaa !2
  %51 = load i64, i64* %4, align 8, !tbaa !2
  call fastcc void @prepstate(%struct.MatchState* nonnull %5, %struct.lua_State* %0, i8* %8, i64 %50, i8* nonnull %49, i64 %51)
  %52 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1
  br label %53

; <label>:53:                                     ; preds = %72, %48
  %54 = phi i8* [ %41, %48 ], [ %73, %72 ]
  call fastcc void @reprepstate(%struct.MatchState* nonnull %5)
  %55 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %54, i8* %49)
  %56 = icmp eq i8* %55, null
  br i1 %56, label %69, label %57

; <label>:57:                                     ; preds = %53
  br i1 %17, label %58, label %67

; <label>:58:                                     ; preds = %57
  %59 = ptrtoint i8* %54 to i64
  %60 = ptrtoint i8* %8 to i64
  %61 = sub i64 1, %60
  %62 = add i64 %61, %59
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %62) #12
  %63 = ptrtoint i8* %55 to i64
  %64 = sub i64 %63, %60
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #12
  %65 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* null, i8* null)
  %66 = add nsw i32 %65, 2
  br label %75

; <label>:67:                                     ; preds = %57
  %68 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* %54, i8* nonnull %55)
  br label %75

; <label>:69:                                     ; preds = %53
  %70 = load i8*, i8** %52, align 8, !tbaa !18
  %71 = icmp ult i8* %54, %70
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds i8, i8* %54, i64 1
  br i1 %43, label %74, label %53

; <label>:74:                                     ; preds = %72, %69
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %40) #12
  br label %77

; <label>:75:                                     ; preds = %58, %67
  %76 = phi i32 [ %68, %67 ], [ %66, %58 ]
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %40) #12
  br label %78

; <label>:77:                                     ; preds = %74, %25
  call void @lua_pushnil(%struct.lua_State* %0) #12
  br label %78

; <label>:78:                                     ; preds = %75, %32, %77, %15
  %79 = phi i32 [ 1, %15 ], [ 1, %77 ], [ %76, %75 ], [ 2, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  ret i32 %79
}

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @nospecials(i8* readonly, i64) unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %8, %2
  %4 = phi i64 [ 0, %2 ], [ %11, %8 ]
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = tail call i8* @strpbrk(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #13
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %3
  %9 = tail call i64 @strlen(i8* %5) #13
  %10 = add i64 %4, 1
  %11 = add i64 %10, %9
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %3

; <label>:13:                                     ; preds = %8, %3
  %14 = phi i32 [ 0, %3 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind readonly uwtable
define internal fastcc i8* @lmemfind(i8*, i64, i8* nocapture readonly, i64) unnamed_addr #4 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %31, label %6

; <label>:6:                                      ; preds = %4
  %7 = icmp ugt i64 %3, %1
  br i1 %7, label %31, label %8

; <label>:8:                                      ; preds = %6
  %9 = add i64 %3, -1
  %10 = sub i64 %1, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %31, label %12

; <label>:12:                                     ; preds = %8
  %13 = load i8, i8* %2, align 1, !tbaa !6
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds i8, i8* %2, i64 1
  br label %16

; <label>:16:                                     ; preds = %12, %25
  %17 = phi i64 [ %10, %12 ], [ %29, %25 ]
  %18 = phi i8* [ %0, %12 ], [ %22, %25 ]
  %19 = tail call i8* @memchr(i8* %18, i32 %14, i64 %17) #13
  %20 = icmp eq i8* %19, null
  br i1 %20, label %31, label %21

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds i8, i8* %19, i64 1
  %23 = tail call i32 @memcmp(i8* nonnull %22, i8* nonnull %15, i64 %9) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %21
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %18 to i64
  %28 = add i64 %17, %27
  %29 = sub i64 %28, %26
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %16

; <label>:31:                                     ; preds = %25, %16, %21, %8, %6, %4
  %32 = phi i8* [ %0, %4 ], [ null, %6 ], [ null, %8 ], [ null, %25 ], [ null, %16 ], [ %19, %21 ]
  ret i8* %32
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @prepstate(%struct.MatchState* nocapture, %struct.lua_State*, i8*, i64, i8*, i64) unnamed_addr #5 {
  %7 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  store %struct.lua_State* %1, %struct.lua_State** %7, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4
  store i32 200, i32* %8, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  store i8* %2, i8** %9, align 8, !tbaa !25
  %10 = getelementptr inbounds i8, i8* %2, i64 %3
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  store i8* %10, i8** %11, align 8, !tbaa !18
  %12 = getelementptr inbounds i8, i8* %4, i64 %5
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  store i8* %12, i8** %13, align 8, !tbaa !26
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @reprepstate(%struct.MatchState* nocapture) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  store i8 0, i8* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @match(%struct.MatchState* nocapture, i8*, i8*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !24
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8, !tbaa !24
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !23
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0)) #12
  br label %12

; <label>:12:                                     ; preds = %8, %3
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8, !tbaa !26
  %15 = icmp eq i8* %14, %2
  br i1 %15, label %121, label %16

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %18 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br label %19

; <label>:19:                                     ; preds = %16, %116
  %20 = phi i8* [ %14, %16 ], [ %119, %116 ]
  %21 = phi i8* [ %1, %16 ], [ %118, %116 ]
  %22 = phi i8* [ %2, %16 ], [ %117, %116 ]
  %23 = getelementptr inbounds i8, i8* %21, i64 -1
  br label %27

; <label>:24:                                     ; preds = %81
  %25 = load i8*, i8** %13, align 8, !tbaa !26
  %26 = icmp eq i8* %70, %25
  br i1 %26, label %121, label %27

; <label>:27:                                     ; preds = %19, %24
  %28 = phi i8* [ %20, %19 ], [ %25, %24 ]
  %29 = phi i8* [ %22, %19 ], [ %70, %24 ]
  %30 = load i8, i8* %29, align 1, !tbaa !6
  %31 = sext i8 %30 to i32
  switch i32 %31, label %92 [
    i32 40, label %32
    i32 41, label %41
    i32 36, label %44
    i32 37, label %52
  ]

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %29, i64 1
  %34 = load i8, i8* %33, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 41
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds i8, i8* %29, i64 2
  %38 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %21, i8* nonnull %37, i32 -2)
  br label %121

; <label>:39:                                     ; preds = %32
  %40 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %21, i8* nonnull %33, i32 -1)
  br label %121

; <label>:41:                                     ; preds = %27
  %42 = getelementptr inbounds i8, i8* %29, i64 1
  %43 = tail call fastcc i8* @end_capture(%struct.MatchState* nonnull %0, i8* %21, i8* nonnull %42)
  br label %121

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %29, i64 1
  %46 = icmp eq i8* %45, %28
  br i1 %46, label %47, label %92

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %49 = load i8*, i8** %48, align 8, !tbaa !18
  %50 = icmp eq i8* %21, %49
  %51 = select i1 %50, i8* %21, i8* null
  br label %121

; <label>:52:                                     ; preds = %27
  %53 = getelementptr inbounds i8, i8* %29, i64 1
  %54 = load i8, i8* %53, align 1, !tbaa !6
  %55 = sext i8 %54 to i32
  switch i32 %55, label %92 [
    i32 98, label %56
    i32 102, label %62
    i32 48, label %86
    i32 49, label %86
    i32 50, label %86
    i32 51, label %86
    i32 52, label %86
    i32 53, label %86
    i32 54, label %86
    i32 55, label %86
    i32 56, label %86
    i32 57, label %86
  ]

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %29, i64 2
  %58 = tail call fastcc i8* @matchbalance(%struct.MatchState* %0, i8* %21, i8* nonnull %57)
  %59 = icmp eq i8* %58, null
  br i1 %59, label %121, label %60

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %29, i64 4
  br label %116

; <label>:62:                                     ; preds = %52
  %63 = getelementptr inbounds i8, i8* %29, i64 2
  %64 = load i8, i8* %63, align 1, !tbaa !6
  %65 = icmp eq i8 %64, 91
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %62
  %67 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !tbaa !23
  %68 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #12
  br label %69

; <label>:69:                                     ; preds = %62, %66
  %70 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %63)
  %71 = load i8*, i8** %17, align 8, !tbaa !25
  %72 = icmp eq i8* %21, %71
  br i1 %72, label %75, label %73

; <label>:73:                                     ; preds = %69
  %74 = load i8, i8* %23, align 1, !tbaa !6
  br label %75

; <label>:75:                                     ; preds = %69, %73
  %76 = phi i8 [ %74, %73 ], [ 0, %69 ]
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i8, i8* %70, i64 -1
  %79 = tail call fastcc i32 @matchbracketclass(i32 %77, i8* nonnull %63, i8* nonnull %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %121

; <label>:81:                                     ; preds = %75
  %82 = load i8, i8* %21, align 1, !tbaa !6
  %83 = zext i8 %82 to i32
  %84 = tail call fastcc i32 @matchbracketclass(i32 %83, i8* nonnull %63, i8* nonnull %78)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %121, label %24

; <label>:86:                                     ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52, %52
  %87 = zext i8 %54 to i32
  %88 = tail call fastcc i8* @match_capture(%struct.MatchState* %0, i8* %21, i32 %87)
  %89 = icmp eq i8* %88, null
  br i1 %89, label %121, label %90

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %29, i64 2
  br label %116

; <label>:92:                                     ; preds = %27, %52, %44
  %93 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %29)
  %94 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %21, i8* nonnull %29, i8* nonnull %93)
  %95 = icmp eq i32 %94, 0
  %96 = load i8, i8* %93, align 1, !tbaa !6
  br i1 %95, label %97, label %100

; <label>:97:                                     ; preds = %92
  switch i8 %96, label %121 [
    i8 42, label %98
    i8 63, label %98
    i8 45, label %98
  ]

; <label>:98:                                     ; preds = %97, %97, %97
  %99 = getelementptr inbounds i8, i8* %93, i64 1
  br label %116

; <label>:100:                                    ; preds = %92
  %101 = sext i8 %96 to i32
  switch i32 %101, label %114 [
    i32 63, label %102
    i32 43, label %107
    i32 42, label %109
    i32 45, label %112
  ]

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds i8, i8* %21, i64 1
  %104 = getelementptr inbounds i8, i8* %93, i64 1
  %105 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %103, i8* nonnull %104)
  %106 = icmp eq i8* %105, null
  br i1 %106, label %116, label %121

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds i8, i8* %21, i64 1
  br label %109

; <label>:109:                                    ; preds = %100, %107
  %110 = phi i8* [ %108, %107 ], [ %21, %100 ]
  %111 = tail call fastcc i8* @max_expand(%struct.MatchState* %0, i8* %110, i8* nonnull %29, i8* nonnull %93)
  br label %121

; <label>:112:                                    ; preds = %100
  %113 = tail call fastcc i8* @min_expand(%struct.MatchState* %0, i8* %21, i8* nonnull %29, i8* nonnull %93)
  br label %121

; <label>:114:                                    ; preds = %100
  %115 = getelementptr inbounds i8, i8* %21, i64 1
  br label %116

; <label>:116:                                    ; preds = %98, %102, %114, %90, %60
  %117 = phi i8* [ %61, %60 ], [ %91, %90 ], [ %99, %98 ], [ %104, %102 ], [ %93, %114 ]
  %118 = phi i8* [ %58, %60 ], [ %88, %90 ], [ %21, %98 ], [ %21, %102 ], [ %115, %114 ]
  %119 = load i8*, i8** %13, align 8, !tbaa !26
  %120 = icmp eq i8* %117, %119
  br i1 %120, label %121, label %19

; <label>:121:                                    ; preds = %116, %56, %86, %97, %102, %24, %81, %75, %112, %109, %12, %41, %47, %39, %36
  %122 = phi i8* [ %51, %47 ], [ %43, %41 ], [ %38, %36 ], [ %40, %39 ], [ %1, %12 ], [ %113, %112 ], [ %111, %109 ], [ null, %75 ], [ null, %81 ], [ %21, %24 ], [ null, %97 ], [ %105, %102 ], [ %118, %116 ], [ null, %86 ], [ null, %56 ]
  %123 = load i32, i32* %4, align 8, !tbaa !24
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 8, !tbaa !24
  ret i8* %122
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @push_captures(%struct.MatchState* nocapture readonly, i8*, i8*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %5 = load i8, i8* %4, align 4, !tbaa !27
  %6 = icmp eq i8 %5, 0
  %7 = icmp ne i8* %1, null
  %8 = and i1 %7, %6
  %9 = zext i8 %5 to i32
  %10 = select i1 %8, i32 1, i32 %9
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !23
  tail call void @luaL_checkstack(%struct.lua_State* %12, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #12
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %3
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi i32 [ %17, %15 ], [ 0, %14 ]
  tail call fastcc void @push_onecapture(%struct.MatchState* %0, i32 %16, i8* %1, i8* %2)
  %17 = add nuw nsw i32 %16, 1
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %19, label %15

; <label>:19:                                     ; preds = %15, %3
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i8* @start_capture(%struct.MatchState* nocapture, i8*, i8*, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %6 = load i8, i8* %5, align 4, !tbaa !27
  %7 = icmp ugt i8 %6, 31
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !23
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #12
  br label %12

; <label>:12:                                     ; preds = %8, %4
  %13 = zext i8 %6 to i64
  %14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %13, i32 0
  store i8* %1, i8** %14, align 8, !tbaa !28
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %13, i32 1
  store i64 %15, i64* %16, align 8, !tbaa !30
  %17 = add i8 %6, 1
  store i8 %17, i8* %5, align 4, !tbaa !27
  %18 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %1, i8* %2)
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %12
  %21 = load i8, i8* %5, align 4, !tbaa !27
  %22 = add i8 %21, -1
  store i8 %22, i8* %5, align 4, !tbaa !27
  br label %23

; <label>:23:                                     ; preds = %20, %12
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @end_capture(%struct.MatchState* nocapture, i8*, i8*) unnamed_addr #0 {
  %4 = tail call fastcc i32 @capture_to_close(%struct.MatchState* %0)
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %5
  %7 = bitcast %struct.anon* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !28
  %9 = ptrtoint i8* %1 to i64
  %10 = sub i64 %9, %8
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %5, i32 1
  store i64 %10, i64* %11, align 8, !tbaa !30
  %12 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %1, i8* %2)
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  store i64 -1, i64* %11, align 8, !tbaa !30
  br label %15

; <label>:15:                                     ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @matchbalance(%struct.MatchState* nocapture readonly, i8* readonly, i8* readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  %7 = icmp ugt i8* %6, %2
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !23
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0)) #12
  br label %12

; <label>:12:                                     ; preds = %3, %8
  %13 = load i8, i8* %1, align 1, !tbaa !6
  %14 = load i8, i8* %2, align 1, !tbaa !6
  %15 = icmp eq i8 %13, %14
  br i1 %15, label %16, label %44

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i8, i8* %2, i64 1
  %18 = load i8, i8* %17, align 1, !tbaa !6
  %19 = getelementptr inbounds i8, i8* %1, i64 1
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %21 = load i8*, i8** %20, align 8, !tbaa !18
  %22 = icmp ult i8* %19, %21
  br i1 %22, label %23, label %44

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %37
  %25 = phi i8* [ %39, %37 ], [ %19, %23 ]
  %26 = phi i32 [ %38, %37 ], [ 1, %23 ]
  %27 = phi i8* [ %25, %37 ], [ %1, %23 ]
  %28 = load i8, i8* %25, align 1, !tbaa !6
  %29 = icmp eq i8 %28, %18
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %24
  %31 = add nsw i32 %26, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %37

; <label>:33:                                     ; preds = %24
  %34 = icmp eq i8 %28, %14
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %26, %35
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %33 ]
  %39 = getelementptr inbounds i8, i8* %25, i64 1
  %40 = load i8*, i8** %20, align 8, !tbaa !18
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %24, label %44

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds i8, i8* %27, i64 2
  br label %44

; <label>:44:                                     ; preds = %37, %16, %12, %42
  %45 = phi i8* [ %43, %42 ], [ null, %12 ], [ null, %16 ], [ null, %37 ]
  ret i8* %45
}

; Function Attrs: nounwind uwtable
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
  %8 = load i8*, i8** %7, align 8, !tbaa !26
  %9 = icmp eq i8* %3, %8
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !23
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #12
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
  %25 = load i8*, i8** %21, align 8, !tbaa !26
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !23
  %29 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #12
  br label %30

; <label>:30:                                     ; preds = %27, %23
  %31 = getelementptr inbounds i8, i8* %24, i64 1
  %32 = load i8, i8* %24, align 1, !tbaa !6
  %33 = icmp eq i8 %32, 37
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %21, align 8, !tbaa !26
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

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @matchbracketclass(i32, i8* readonly, i8* readnone) unnamed_addr #4 {
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
  %22 = tail call fastcc i32 @match_class(i32 %0, i32 %21)
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

; Function Attrs: nounwind uwtable
define internal fastcc i8* @match_capture(%struct.MatchState* nocapture readonly, i8*, i32) unnamed_addr #0 {
  %4 = tail call fastcc i32 @check_capture(%struct.MatchState* %0, i32 %2)
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %5, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %9 = bitcast i8** %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !18
  %11 = ptrtoint i8* %1 to i64
  %12 = sub i64 %10, %11
  %13 = icmp ult i64 %12, %7
  br i1 %13, label %21, label %14

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %5, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !28
  %17 = tail call i32 @memcmp(i8* %16, i8* %1, i64 %7) #13
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds i8, i8* %1, i64 %7
  %20 = select i1 %18, i8* %19, i8* null
  ret i8* %20

; <label>:21:                                     ; preds = %3
  ret i8* null
}

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @singlematch(%struct.MatchState* nocapture readonly, i8* readonly, i8* readonly, i8* readnone) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8, !tbaa !18
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
  %17 = tail call fastcc i32 @match_class(i32 %10, i32 %16)
  br label %24

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %3, i64 -1
  %20 = tail call fastcc i32 @matchbracketclass(i32 %10, i8* nonnull %2, i8* nonnull %19)
  br label %24

; <label>:21:                                     ; preds = %8
  %22 = icmp eq i8 %11, %9
  %23 = zext i1 %22 to i32
  br label %24

; <label>:24:                                     ; preds = %13, %18, %21, %8, %4
  %25 = phi i32 [ 0, %4 ], [ %23, %21 ], [ %20, %18 ], [ %17, %13 ], [ 1, %8 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @max_expand(%struct.MatchState* nocapture, i8*, i8* readonly, i8*) unnamed_addr #0 {
  br label %5

; <label>:5:                                      ; preds = %5, %4
  %6 = phi i64 [ 0, %4 ], [ %10, %5 ]
  %7 = getelementptr inbounds i8, i8* %1, i64 %6
  %8 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %7, i8* %2, i8* %3)
  %9 = icmp eq i32 %8, 0
  %10 = add nuw nsw i64 %6, 1
  br i1 %9, label %11, label %5

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %3, i64 1
  br label %15

; <label>:13:                                     ; preds = %15
  %14 = icmp sgt i64 %21, -1
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11, %13
  %16 = phi i64 [ %6, %11 ], [ %21, %13 ]
  %17 = getelementptr inbounds i8, i8* %1, i64 %16
  %18 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %17, i8* nonnull %12)
  %19 = icmp eq i8* %18, null
  %20 = sext i1 %19 to i64
  %21 = add nsw i64 %16, %20
  br i1 %19, label %13, label %22

; <label>:22:                                     ; preds = %15, %13
  %23 = phi i8* [ %18, %15 ], [ null, %13 ]
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @min_expand(%struct.MatchState* nocapture, i8*, i8* readonly, i8*) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, i8* %3, i64 1
  %6 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %1, i8* nonnull %5)
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %4
  br label %12

; <label>:9:                                      ; preds = %12
  %10 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %16, i8* nonnull %5)
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %8, %9
  %13 = phi i8* [ %16, %9 ], [ %1, %8 ]
  %14 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %13, i8* %2, i8* %3)
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  br i1 %15, label %17, label %9

; <label>:17:                                     ; preds = %9, %12, %4
  %18 = phi i8* [ %6, %4 ], [ null, %12 ], [ %10, %9 ]
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @capture_to_close(%struct.MatchState* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %3 = load i8, i8* %2, align 4, !tbaa !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = zext i8 %3 to i64
  br label %9

; <label>:7:                                      ; preds = %9
  %8 = icmp sgt i64 %10, 1
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %6, %5 ], [ %11, %7 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %11, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !30
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %19, label %7

; <label>:15:                                     ; preds = %7, %1
  %16 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !23
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #12
  br label %21

; <label>:19:                                     ; preds = %9
  %20 = trunc i64 %11 to i32
  br label %21

; <label>:21:                                     ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #4 {
  %3 = tail call i32 @tolower(i32 %1) #13
  switch i32 %3, label %87 [
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
  %5 = tail call i16** @__ctype_b_loc() #14
  %6 = load i16*, i16** %5, align 8, !tbaa !19
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i16, i16* %6, i64 %7
  %9 = load i16, i16* %8, align 2, !tbaa !31
  %10 = and i16 %9, 1024
  %11 = zext i16 %10 to i32
  br label %90

; <label>:12:                                     ; preds = %2
  %13 = tail call i16** @__ctype_b_loc() #14
  %14 = load i16*, i16** %13, align 8, !tbaa !19
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2, !tbaa !31
  %18 = and i16 %17, 2
  %19 = zext i16 %18 to i32
  br label %90

; <label>:20:                                     ; preds = %2
  %21 = tail call i16** @__ctype_b_loc() #14
  %22 = load i16*, i16** %21, align 8, !tbaa !19
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i16, i16* %22, i64 %23
  %25 = load i16, i16* %24, align 2, !tbaa !31
  %26 = and i16 %25, 2048
  %27 = zext i16 %26 to i32
  br label %90

; <label>:28:                                     ; preds = %2
  %29 = tail call i16** @__ctype_b_loc() #14
  %30 = load i16*, i16** %29, align 8, !tbaa !19
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds i16, i16* %30, i64 %31
  %33 = load i16, i16* %32, align 2, !tbaa !31
  %34 = and i16 %33, -32768
  %35 = zext i16 %34 to i32
  br label %90

; <label>:36:                                     ; preds = %2
  %37 = tail call i16** @__ctype_b_loc() #14
  %38 = load i16*, i16** %37, align 8, !tbaa !19
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  %41 = load i16, i16* %40, align 2, !tbaa !31
  %42 = and i16 %41, 512
  %43 = zext i16 %42 to i32
  br label %90

; <label>:44:                                     ; preds = %2
  %45 = tail call i16** @__ctype_b_loc() #14
  %46 = load i16*, i16** %45, align 8, !tbaa !19
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i16, i16* %46, i64 %47
  %49 = load i16, i16* %48, align 2, !tbaa !31
  %50 = and i16 %49, 4
  %51 = zext i16 %50 to i32
  br label %90

; <label>:52:                                     ; preds = %2
  %53 = tail call i16** @__ctype_b_loc() #14
  %54 = load i16*, i16** %53, align 8, !tbaa !19
  %55 = sext i32 %0 to i64
  %56 = getelementptr inbounds i16, i16* %54, i64 %55
  %57 = load i16, i16* %56, align 2, !tbaa !31
  %58 = and i16 %57, 8192
  %59 = zext i16 %58 to i32
  br label %90

; <label>:60:                                     ; preds = %2
  %61 = tail call i16** @__ctype_b_loc() #14
  %62 = load i16*, i16** %61, align 8, !tbaa !19
  %63 = sext i32 %0 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  %65 = load i16, i16* %64, align 2, !tbaa !31
  %66 = and i16 %65, 256
  %67 = zext i16 %66 to i32
  br label %90

; <label>:68:                                     ; preds = %2
  %69 = tail call i16** @__ctype_b_loc() #14
  %70 = load i16*, i16** %69, align 8, !tbaa !19
  %71 = sext i32 %0 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !31
  %74 = and i16 %73, 8
  %75 = zext i16 %74 to i32
  br label %90

; <label>:76:                                     ; preds = %2
  %77 = tail call i16** @__ctype_b_loc() #14
  %78 = load i16*, i16** %77, align 8, !tbaa !19
  %79 = sext i32 %0 to i64
  %80 = getelementptr inbounds i16, i16* %78, i64 %79
  %81 = load i16, i16* %80, align 2, !tbaa !31
  %82 = and i16 %81, 4096
  %83 = zext i16 %82 to i32
  br label %90

; <label>:84:                                     ; preds = %2
  %85 = icmp eq i32 %0, 0
  %86 = zext i1 %85 to i32
  br label %90

; <label>:87:                                     ; preds = %2
  %88 = icmp eq i32 %1, %0
  %89 = zext i1 %88 to i32
  br label %102

; <label>:90:                                     ; preds = %84, %76, %68, %60, %52, %44, %36, %28, %20, %12, %4
  %91 = phi i32 [ %86, %84 ], [ %83, %76 ], [ %75, %68 ], [ %67, %60 ], [ %59, %52 ], [ %51, %44 ], [ %43, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ], [ %11, %4 ]
  %92 = tail call i16** @__ctype_b_loc() #14
  %93 = load i16*, i16** %92, align 8, !tbaa !19
  %94 = sext i32 %1 to i64
  %95 = getelementptr inbounds i16, i16* %93, i64 %94
  %96 = load i16, i16* %95, align 2, !tbaa !31
  %97 = and i16 %96, 512
  %98 = icmp eq i16 %97, 0
  %99 = icmp eq i32 %91, 0
  %100 = zext i1 %99 to i32
  %101 = select i1 %98, i32 %100, i32 %91
  br label %102

; <label>:102:                                    ; preds = %90, %87
  %103 = phi i32 [ %89, %87 ], [ %101, %90 ]
  ret i32 %103
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @tolower(i32) local_unnamed_addr #8 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

; <label>:4:                                      ; preds = %1
  %5 = tail call i32** @__ctype_tolower_loc() #14
  %6 = load i32*, i32** %5, align 8, !tbaa !19
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !20
  br label %10

; <label>:10:                                     ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_capture(%struct.MatchState* nocapture readonly, i32) unnamed_addr #0 {
  %3 = add nsw i32 %1, -49
  %4 = icmp slt i32 %1, 49
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %7 = load i8, i8* %6, align 4, !tbaa !27
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %3, %8
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %5
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %11, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !30
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %5, %10, %2
  %16 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !23
  %18 = add nsw i32 %1, -48
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %18) #12
  br label %20

; <label>:20:                                     ; preds = %10, %15
  %21 = phi i32 [ %19, %15 ], [ %3, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = call fastcc i64 @get_onecapture(%struct.MatchState* %0, i32 %1, i8* %2, i8* %3, i8** nonnull %5)
  %8 = icmp eq i64 %7, -2
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !23
  %12 = load i8*, i8** %5, align 8, !tbaa !19
  %13 = tail call i8* @lua_pushlstring(%struct.lua_State* %11, i8* %12, i64 %7) #12
  br label %14

; <label>:14:                                     ; preds = %4, %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @get_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*, i8** nocapture) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %7 = load i8, i8* %6, align 4, !tbaa !27
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %21, label %10

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !23
  %15 = add nsw i32 %1, 1
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %15) #12
  br label %17

; <label>:17:                                     ; preds = %10, %12
  store i8* %2, i8** %4, align 8, !tbaa !19
  %18 = ptrtoint i8* %3 to i64
  %19 = ptrtoint i8* %2 to i64
  %20 = sub i64 %18, %19
  br label %41

; <label>:21:                                     ; preds = %5
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %22, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %22, i32 0
  %26 = bitcast i8** %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !28
  %28 = bitcast i8** %4 to i64*
  store i64 %27, i64* %28, align 8, !tbaa !19
  switch i64 %24, label %41 [
    i64 -1, label %29
    i64 -2, label %33
  ]

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !23
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #12
  br label %41

; <label>:33:                                     ; preds = %21
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !23
  %36 = load i64, i64* %26, align 8, !tbaa !28
  %37 = bitcast %struct.MatchState* %0 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !25
  %39 = add i64 %36, 1
  %40 = sub i64 %39, %38
  tail call void @lua_pushinteger(%struct.lua_State* %35, i64 %40) #12
  br label %41

; <label>:41:                                     ; preds = %29, %33, %21, %17
  %42 = phi i64 [ %20, %17 ], [ %24, %21 ], [ -2, %33 ], [ -1, %29 ]
  ret i64 %42
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @scanformat(%struct.lua_State*, i8*, i8* nocapture) unnamed_addr #0 {
  %4 = load i8, i8* %1, align 1, !tbaa !6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

; <label>:6:                                      ; preds = %3
  br label %7

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %19, %17 ], [ %4, %6 ]
  %9 = phi i8* [ %18, %17 ], [ %1, %6 ]
  %10 = sext i8 %8 to i64
  %11 = and i64 %10, 4294967295
  %12 = icmp ult i64 %11, 64
  %13 = shl i64 1, %11
  %14 = and i64 %13, 325494096527361
  %15 = icmp ne i64 %14, 0
  %16 = and i1 %12, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 1
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %7

; <label>:21:                                     ; preds = %7, %17, %3
  %22 = phi i8* [ %1, %3 ], [ %18, %17 ], [ %9, %7 ]
  %23 = ptrtoint i8* %22 to i64
  %24 = ptrtoint i8* %1 to i64
  %25 = sub i64 %23, %24
  %26 = icmp ugt i64 %25, 5
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %21
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #12
  br label %29

; <label>:29:                                     ; preds = %27, %21
  %30 = tail call i16** @__ctype_b_loc() #14
  %31 = load i16*, i16** %30, align 8, !tbaa !19
  %32 = load i8, i8* %22, align 1, !tbaa !6
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2, !tbaa !31
  %36 = and i16 %35, 2048
  %37 = icmp eq i16 %36, 0
  %38 = getelementptr inbounds i8, i8* %22, i64 1
  %39 = select i1 %37, i8* %22, i8* %38
  %40 = load i8, i8* %39, align 1, !tbaa !6
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i16, i16* %31, i64 %41
  %43 = load i16, i16* %42, align 2, !tbaa !31
  %44 = and i16 %43, 2048
  %45 = icmp eq i16 %44, 0
  %46 = getelementptr inbounds i8, i8* %39, i64 1
  %47 = select i1 %45, i8* %39, i8* %46
  %48 = load i8, i8* %47, align 1, !tbaa !6
  %49 = icmp eq i8 %48, 46
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %29
  %51 = getelementptr inbounds i8, i8* %47, i64 1
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i16, i16* %31, i64 %53
  %55 = load i16, i16* %54, align 2, !tbaa !31
  %56 = and i16 %55, 2048
  %57 = icmp eq i16 %56, 0
  %58 = getelementptr inbounds i8, i8* %47, i64 2
  %59 = select i1 %57, i8* %51, i8* %58
  %60 = load i8, i8* %59, align 1, !tbaa !6
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %31, i64 %61
  %63 = load i16, i16* %62, align 2, !tbaa !31
  %64 = and i16 %63, 2048
  %65 = icmp eq i16 %64, 0
  %66 = getelementptr inbounds i8, i8* %59, i64 1
  %67 = select i1 %65, i8* %59, i8* %66
  br label %68

; <label>:68:                                     ; preds = %50, %29
  %69 = phi i8* [ %47, %29 ], [ %67, %50 ]
  %70 = load i8, i8* %69, align 1, !tbaa !6
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i16, i16* %31, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !31
  %74 = and i16 %73, 2048
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %68
  %77 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0)) #12
  br label %78

; <label>:78:                                     ; preds = %68, %76
  %79 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 37, i8* %2, align 1, !tbaa !6
  %80 = ptrtoint i8* %69 to i64
  %81 = sub i64 %80, %24
  %82 = add nsw i64 %81, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %79, i8* %1, i64 %82, i32 1, i1 false)
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 0, i8* %83, align 1, !tbaa !6
  ret i8* %69
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @addlenmod(i8*, i8* nocapture readonly) unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %0) #13
  %4 = tail call i64 @strlen(i8* %1) #13
  %5 = add i64 %3, -1
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, i8* %0, i64 %3
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  %10 = tail call i8* @strcpy(i8* nonnull %9, i8* %1) #12
  %11 = add i64 %4, %3
  %12 = add i64 %11, -1
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 %7, i8* %13, align 1, !tbaa !6
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  store i8 0, i8* %14, align 1, !tbaa !6
  ret void
}

declare double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #11

declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addliteral(%struct.lua_State*, %struct.luaL_Buffer*, i32) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %2) #12
  switch i32 %5, label %30 [
    i32 4, label %6
    i32 3, label %10
    i32 0, label %28
    i32 1, label %28
  ]

; <label>:6:                                      ; preds = %3
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* nonnull %4) #12
  %9 = load i64, i64* %4, align 8, !tbaa !2
  call fastcc void @addquoted(%struct.luaL_Buffer* %1, i8* %8, i64 %9)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  br label %32

; <label>:10:                                     ; preds = %3
  %11 = tail call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %1, i64 120) #12
  %12 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %10
  %15 = tail call double @lua_tonumberx(%struct.lua_State* %0, i32 %2, i32* null) #12
  %16 = tail call fastcc i32 @quotefloat(i8* %11, double %15)
  br label %22

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %2, i32* null) #12
  %19 = icmp eq i64 %18, -9223372036854775808
  %20 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %21 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 120, i8* %20, i64 %18) #12
  br label %22

; <label>:22:                                     ; preds = %17, %14
  %23 = phi i32 [ %21, %17 ], [ %16, %14 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2
  %26 = load i64, i64* %25, align 8, !tbaa !7
  %27 = add i64 %26, %24
  store i64 %27, i64* %25, align 8, !tbaa !7
  br label %32

; <label>:28:                                     ; preds = %3, %3
  %29 = tail call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %2, i64* null) #12
  tail call void @luaL_addvalue(%struct.luaL_Buffer* %1) #12
  br label %32

; <label>:30:                                     ; preds = %3
  %31 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0)) #12
  br label %32

; <label>:32:                                     ; preds = %30, %28, %22, %6
  ret void
}

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #10

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addquoted(%struct.luaL_Buffer*, i8* nocapture readonly, i64) unnamed_addr #0 {
  %4 = alloca [10 x i8], align 1
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !10
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %3
  %11 = tail call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %0, i64 1) #12
  br label %12

; <label>:12:                                     ; preds = %10, %3
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !11
  %15 = load i64, i64* %5, align 8, !tbaa !7
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8, !tbaa !7
  %17 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 34, i8* %17, align 1, !tbaa !6
  %18 = icmp eq i64 %2, 0
  br i1 %18, label %85, label %19

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  br label %21

; <label>:21:                                     ; preds = %19, %82
  %22 = phi i64 [ %2, %19 ], [ %24, %82 ]
  %23 = phi i8* [ %1, %19 ], [ %83, %82 ]
  %24 = add i64 %22, -1
  %25 = load i8, i8* %23, align 1, !tbaa !6
  switch i8 %25, label %48 [
    i8 34, label %26
    i8 92, label %26
    i8 10, label %26
  ]

; <label>:26:                                     ; preds = %21, %21, %21
  %27 = load i64, i64* %5, align 8, !tbaa !7
  %28 = load i64, i64* %7, align 8, !tbaa !10
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %26
  %31 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %0, i64 1) #12
  br label %32

; <label>:32:                                     ; preds = %30, %26
  %33 = load i8*, i8** %13, align 8, !tbaa !11
  %34 = load i64, i64* %5, align 8, !tbaa !7
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 92, i8* %36, align 1, !tbaa !6
  %37 = load i64, i64* %5, align 8, !tbaa !7
  %38 = load i64, i64* %7, align 8, !tbaa !10
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %42, label %40

; <label>:40:                                     ; preds = %32
  %41 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %0, i64 1) #12
  br label %42

; <label>:42:                                     ; preds = %40, %32
  %43 = load i8, i8* %23, align 1, !tbaa !6
  %44 = load i8*, i8** %13, align 8, !tbaa !11
  %45 = load i64, i64* %5, align 8, !tbaa !7
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8, !tbaa !7
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %47, align 1, !tbaa !6
  br label %82

; <label>:48:                                     ; preds = %21
  %49 = tail call i16** @__ctype_b_loc() #14
  %50 = load i16*, i16** %49, align 8, !tbaa !19
  %51 = zext i8 %25 to i64
  %52 = getelementptr inbounds i16, i16* %50, i64 %51
  %53 = load i16, i16* %52, align 2, !tbaa !31
  %54 = and i16 %53, 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %70, label %56

; <label>:56:                                     ; preds = %48
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %20) #12
  %57 = getelementptr inbounds i8, i8* %23, i64 1
  %58 = load i8, i8* %57, align 1, !tbaa !6
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i16, i16* %50, i64 %59
  %61 = load i16, i16* %60, align 2, !tbaa !31
  %62 = and i16 %61, 2048
  %63 = icmp eq i16 %62, 0
  %64 = zext i8 %25 to i32
  br i1 %63, label %65, label %67

; <label>:65:                                     ; preds = %56
  %66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %20, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %64) #12
  br label %69

; <label>:67:                                     ; preds = %56
  %68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %20, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 %64) #12
  br label %69

; <label>:69:                                     ; preds = %67, %65
  call void @luaL_addstring(%struct.luaL_Buffer* %0, i8* nonnull %20) #12
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %20) #12
  br label %82

; <label>:70:                                     ; preds = %48
  %71 = load i64, i64* %5, align 8, !tbaa !7
  %72 = load i64, i64* %7, align 8, !tbaa !10
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %76, label %74

; <label>:74:                                     ; preds = %70
  %75 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %0, i64 1) #12
  br label %76

; <label>:76:                                     ; preds = %74, %70
  %77 = load i8, i8* %23, align 1, !tbaa !6
  %78 = load i8*, i8** %13, align 8, !tbaa !11
  %79 = load i64, i64* %5, align 8, !tbaa !7
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8, !tbaa !7
  %81 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 %77, i8* %81, align 1, !tbaa !6
  br label %82

; <label>:82:                                     ; preds = %69, %76, %42
  %83 = getelementptr inbounds i8, i8* %23, i64 1
  %84 = icmp eq i64 %24, 0
  br i1 %84, label %85, label %21

; <label>:85:                                     ; preds = %82, %12
  %86 = load i64, i64* %5, align 8, !tbaa !7
  %87 = load i64, i64* %7, align 8, !tbaa !10
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %91, label %89

; <label>:89:                                     ; preds = %85
  %90 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %0, i64 1) #12
  br label %91

; <label>:91:                                     ; preds = %89, %85
  %92 = load i8*, i8** %13, align 8, !tbaa !11
  %93 = load i64, i64* %5, align 8, !tbaa !7
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8, !tbaa !7
  %95 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 34, i8* %95, align 1, !tbaa !6
  ret void
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @quotefloat(i8*, double) unnamed_addr #0 {
  %3 = fcmp oeq double %1, 0x7FF0000000000000
  br i1 %3, label %22, label %4

; <label>:4:                                      ; preds = %2
  %5 = fcmp oeq double %1, 0xFFF0000000000000
  br i1 %5, label %22, label %6

; <label>:6:                                      ; preds = %4
  %7 = fcmp uno double %1, 0.000000e+00
  br i1 %7, label %22, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), double %1) #12
  %10 = sext i32 %9 to i64
  %11 = tail call i8* @memchr(i8* %0, i32 46, i64 %10) #13
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %25

; <label>:13:                                     ; preds = %8
  %14 = tail call %struct.lconv* @localeconv() #12
  %15 = getelementptr inbounds %struct.lconv, %struct.lconv* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !33
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = sext i8 %17 to i32
  %19 = tail call i8* @memchr(i8* %0, i32 %18, i64 %10) #13
  %20 = icmp eq i8* %19, null
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %13
  store i8 46, i8* %19, align 1, !tbaa !6
  br label %25

; <label>:22:                                     ; preds = %6, %4, %2
  %23 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), %2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %4 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), %6 ]
  %24 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %23) #12
  br label %25

; <label>:25:                                     ; preds = %8, %13, %21, %22
  %26 = phi i32 [ %24, %22 ], [ %9, %21 ], [ %9, %13 ], [ %9, %8 ]
  ret i32 %26
}

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #10

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gmatch_aux(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001003) #12
  %3 = getelementptr inbounds i8, i8* %2, i64 24
  %4 = bitcast i8* %3 to %struct.MatchState*
  %5 = getelementptr inbounds i8, i8* %2, i64 48
  %6 = bitcast i8* %5 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !tbaa !35
  %7 = bitcast i8* %2 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !36
  %12 = icmp ugt i8* %8, %11
  br i1 %12, label %33, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 8
  %15 = bitcast i8* %14 to i8**
  %16 = getelementptr inbounds i8, i8* %2, i64 16
  %17 = bitcast i8* %16 to i8**
  br label %18

; <label>:18:                                     ; preds = %13, %29
  %19 = phi i8* [ %8, %13 ], [ %30, %29 ]
  tail call fastcc void @reprepstate(%struct.MatchState* nonnull %4)
  %20 = load i8*, i8** %15, align 8, !tbaa !16
  %21 = tail call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %19, i8* %20)
  %22 = icmp eq i8* %21, null
  br i1 %22, label %29, label %23

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %17, align 8, !tbaa !17
  %25 = icmp eq i8* %21, %24
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = bitcast i8* %16 to i8**
  store i8* %21, i8** %27, align 8, !tbaa !17
  store i8* %21, i8** %7, align 8, !tbaa !12
  %28 = tail call fastcc i32 @push_captures(%struct.MatchState* nonnull %4, i8* %19, i8* nonnull %21)
  br label %33

; <label>:29:                                     ; preds = %23, %18
  %30 = getelementptr inbounds i8, i8* %19, i64 1
  %31 = load i8*, i8** %10, align 8, !tbaa !36
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %18

; <label>:33:                                     ; preds = %29, %1, %26
  %34 = phi i32 [ %28, %26 ], [ 0, %1 ], [ 0, %29 ]
  ret i32 %34
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_value(%struct.MatchState* nocapture readonly, %struct.luaL_Buffer*, i8*, i8*, i32) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !23
  switch i32 %4, label %12 [
    i32 6, label %8
    i32 5, label %10
  ]

; <label>:8:                                      ; preds = %5
  tail call void @lua_pushvalue(%struct.lua_State* %7, i32 3) #12
  %9 = tail call fastcc i32 @push_captures(%struct.MatchState* nonnull %0, i8* %2, i8* %3)
  tail call void @lua_callk(%struct.lua_State* %7, i32 %9, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #12
  br label %13

; <label>:10:                                     ; preds = %5
  tail call fastcc void @push_onecapture(%struct.MatchState* nonnull %0, i32 0, i8* %2, i8* %3)
  %11 = tail call i32 @lua_gettable(%struct.lua_State* %7, i32 3) #12
  br label %13

; <label>:12:                                     ; preds = %5
  tail call fastcc void @add_s(%struct.MatchState* nonnull %0, %struct.luaL_Buffer* %1, i8* %2, i8* %3)
  br label %28

; <label>:13:                                     ; preds = %10, %8
  %14 = tail call i32 @lua_toboolean(%struct.lua_State* %7, i32 -1) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %13
  tail call void @lua_settop(%struct.lua_State* %7, i32 -2) #12
  %17 = ptrtoint i8* %3 to i64
  %18 = ptrtoint i8* %2 to i64
  %19 = sub i64 %17, %18
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %1, i8* %2, i64 %19) #12
  br label %28

; <label>:20:                                     ; preds = %13
  %21 = tail call i32 @lua_isstring(%struct.lua_State* %7, i32 -1) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @lua_type(%struct.lua_State* %7, i32 -1) #12
  %25 = tail call i8* @lua_typename(%struct.lua_State* %7, i32 %24) #12
  %26 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* %25) #12
  br label %28

; <label>:27:                                     ; preds = %20
  tail call void @luaL_addvalue(%struct.luaL_Buffer* %1) #12
  br label %28

; <label>:28:                                     ; preds = %27, %23, %16, %12
  %29 = phi i32 [ 1, %12 ], [ 1, %27 ], [ %26, %23 ], [ 0, %16 ]
  ret i32 %29
}

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_s(%struct.MatchState* nocapture readonly, %struct.luaL_Buffer*, i8*, i8*) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !23
  %10 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 3, i64* nonnull %5) #12
  %11 = load i64, i64* %5, align 8, !tbaa !2
  %12 = call i8* @memchr(i8* %10, i32 37, i64 %11) #13
  %13 = icmp eq i8* %12, null
  br i1 %13, label %70, label %14

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1
  %17 = ptrtoint i8* %3 to i64
  %18 = ptrtoint i8* %2 to i64
  %19 = sub i64 %17, %18
  %20 = bitcast i8** %6 to i8*
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 0
  br label %22

; <label>:22:                                     ; preds = %14, %62
  %23 = phi i8* [ %12, %14 ], [ %68, %62 ]
  %24 = phi i8* [ %10, %14 ], [ %63, %62 ]
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  call void @luaL_addlstring(%struct.luaL_Buffer* %1, i8* %24, i64 %27) #12
  %28 = getelementptr inbounds i8, i8* %23, i64 1
  %29 = load i8, i8* %28, align 1, !tbaa !6
  switch i8 %29, label %43 [
    i8 37, label %30
    i8 48, label %42
  ]

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* %15, align 8, !tbaa !7
  %32 = load i64, i64* %16, align 8, !tbaa !10
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %1, i64 1) #12
  br label %36

; <label>:36:                                     ; preds = %34, %30
  %37 = load i8, i8* %28, align 1, !tbaa !6
  %38 = load i8*, i8** %21, align 8, !tbaa !11
  %39 = load i64, i64* %15, align 8, !tbaa !7
  %40 = add i64 %39, 1
  store i64 %40, i64* %15, align 8, !tbaa !7
  %41 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 %37, i8* %41, align 1, !tbaa !6
  br label %62

; <label>:42:                                     ; preds = %22
  call void @luaL_addlstring(%struct.luaL_Buffer* %1, i8* %2, i64 %19) #12
  br label %62

; <label>:43:                                     ; preds = %22
  %44 = tail call i16** @__ctype_b_loc() #14
  %45 = load i16*, i16** %44, align 8, !tbaa !19
  %46 = zext i8 %29 to i64
  %47 = getelementptr inbounds i16, i16* %45, i64 %46
  %48 = load i16, i16* %47, align 2, !tbaa !31
  %49 = and i16 %48, 2048
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %60, label %51

; <label>:51:                                     ; preds = %43
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #12
  %52 = sext i8 %29 to i32
  %53 = add nsw i32 %52, -49
  %54 = call fastcc i64 @get_onecapture(%struct.MatchState* %0, i32 %53, i8* %2, i8* %3, i8** nonnull %6)
  %55 = icmp eq i64 %54, -2
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %51
  call void @luaL_addvalue(%struct.luaL_Buffer* %1) #12
  br label %59

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %6, align 8, !tbaa !19
  call void @luaL_addlstring(%struct.luaL_Buffer* %1, i8* %58, i64 %54) #12
  br label %59

; <label>:59:                                     ; preds = %57, %56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #12
  br label %62

; <label>:60:                                     ; preds = %43
  %61 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #12
  br label %62

; <label>:62:                                     ; preds = %42, %60, %59, %36
  %63 = getelementptr inbounds i8, i8* %23, i64 2
  %64 = ptrtoint i8* %63 to i64
  %65 = load i64, i64* %5, align 8, !tbaa !2
  %66 = sub i64 %26, %64
  %67 = add i64 %66, %65
  store i64 %67, i64* %5, align 8, !tbaa !2
  %68 = call i8* @memchr(i8* nonnull %63, i32 37, i64 %67) #13
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %22

; <label>:70:                                     ; preds = %62, %4
  %71 = phi i8* [ %10, %4 ], [ %63, %62 ]
  %72 = phi i64 [ %11, %4 ], [ %67, %62 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* %1, i8* %71, i64 %72) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  ret void
}

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @initheader(%struct.lua_State*, %struct.Header* nocapture) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Header, %struct.Header* %1, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.Header, %struct.Header* %1, i64 0, i32 1
  store i32 1, i32* %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.Header, %struct.Header* %1, i64 0, i32 2
  store i32 1, i32* %5, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getdetails(%struct.Header* nocapture, i64, i8** nocapture, i32* nocapture, i32* nocapture) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @getoption(%struct.Header* %0, i8** %2, i32* %3)
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #12
  %9 = load i32, i32* %3, align 4, !tbaa !20
  store i32 %9, i32* %6, align 4, !tbaa !20
  %10 = icmp eq i32 %7, 7
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %5
  %12 = load i8*, i8** %2, align 8, !tbaa !19
  %13 = load i8, i8* %12, align 1, !tbaa !6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %11
  %16 = call fastcc i32 @getoption(%struct.Header* %0, i8** nonnull %2, i32* nonnull %6)
  %17 = icmp eq i32 %16, 3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %15, %11
  %22 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !37
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %23, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0)) #12
  br label %25

; <label>:25:                                     ; preds = %21, %15, %5
  %26 = load i32, i32* %6, align 4, !tbaa !20
  %27 = icmp slt i32 %26, 2
  %28 = icmp eq i32 %7, 3
  %29 = or i1 %28, %27
  br i1 %29, label %49, label %30

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !38
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  store i32 %32, i32* %6, align 4, !tbaa !20
  br label %35

; <label>:35:                                     ; preds = %34, %30
  %36 = load i32, i32* %6, align 4, !tbaa !20
  %37 = add nsw i32 %36, -1
  %38 = and i32 %37, %36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %42 = load %struct.lua_State*, %struct.lua_State** %41, align 8, !tbaa !37
  %43 = tail call i32 @luaL_argerror(%struct.lua_State* %42, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #12
  br label %44

; <label>:44:                                     ; preds = %35, %40
  %45 = trunc i64 %1 to i32
  %46 = and i32 %37, %45
  %47 = sub nsw i32 %36, %46
  %48 = and i32 %47, %37
  br label %49

; <label>:49:                                     ; preds = %25, %44
  %50 = phi i32 [ %48, %44 ], [ 0, %25 ]
  store i32 %50, i32* %4, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #12
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @packint(%struct.luaL_Buffer*, i64, i32, i32, i32) unnamed_addr #0 {
  %6 = sext i32 %3 to i64
  %7 = tail call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %0, i64 %6) #12
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

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @copywithendian(i8*, i8*, i32, i32) unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  %6 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %18

; <label>:7:                                      ; preds = %4
  br i1 %6, label %32, label %8

; <label>:8:                                      ; preds = %7
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i8* [ %16, %9 ], [ %0, %8 ]
  %11 = phi i32 [ %13, %9 ], [ %2, %8 ]
  %12 = phi i8* [ %14, %9 ], [ %1, %8 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load volatile i8, i8* %12, align 1, !tbaa !6
  %16 = getelementptr inbounds i8, i8* %10, i64 1
  store volatile i8 %15, i8* %10, align 1, !tbaa !6
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %32, label %9

; <label>:18:                                     ; preds = %4
  br i1 %6, label %32, label %19

; <label>:19:                                     ; preds = %18
  %20 = add nsw i32 %2, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  br label %23

; <label>:23:                                     ; preds = %19, %23
  %24 = phi i8* [ %22, %19 ], [ %30, %23 ]
  %25 = phi i32 [ %2, %19 ], [ %27, %23 ]
  %26 = phi i8* [ %1, %19 ], [ %28, %23 ]
  %27 = add nsw i32 %25, -1
  %28 = getelementptr inbounds i8, i8* %26, i64 1
  %29 = load volatile i8, i8* %26, align 1, !tbaa !6
  %30 = getelementptr inbounds i8, i8* %24, i64 -1
  store volatile i8 %29, i8* %24, align 1, !tbaa !6
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %23

; <label>:32:                                     ; preds = %23, %9, %18, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getoption(%struct.Header* nocapture, i8** nocapture, i32* nocapture) unnamed_addr #0 {
  %4 = load i8*, i8** %1, align 8, !tbaa !19
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %5, i8** %1, align 8, !tbaa !19
  %6 = load i8, i8* %4, align 1, !tbaa !6
  %7 = sext i8 %6 to i32
  store i32 0, i32* %2, align 4, !tbaa !20
  switch i32 %7, label %44 [
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
    i32 122, label %49
    i32 120, label %33
    i32 88, label %34
    i32 32, label %48
    i32 60, label %35
    i32 62, label %37
    i32 61, label %39
    i32 33, label %41
  ]

; <label>:8:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:9:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:10:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:11:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:12:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:13:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:14:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:15:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:16:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:17:                                     ; preds = %3
  store i32 4, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:18:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:19:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:20:                                     ; preds = %3
  %21 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4)
  store i32 %21, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:22:                                     ; preds = %3
  %23 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4)
  store i32 %23, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:24:                                     ; preds = %3
  %25 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8)
  store i32 %25, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:26:                                     ; preds = %3
  %27 = tail call fastcc i32 @getnum(i8** nonnull %1, i32 -1)
  store i32 %27, i32* %2, align 4, !tbaa !20
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %49

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !37
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0)) #12
  br label %49

; <label>:33:                                     ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !20
  br label %49

; <label>:34:                                     ; preds = %3
  br label %49

; <label>:35:                                     ; preds = %3
  %36 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %36, align 8, !tbaa !21
  br label %48

; <label>:37:                                     ; preds = %3
  %38 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 0, i32* %38, align 8, !tbaa !21
  br label %48

; <label>:39:                                     ; preds = %3
  %40 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %40, align 8, !tbaa !21
  br label %48

; <label>:41:                                     ; preds = %3
  %42 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8)
  %43 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  store i32 %42, i32* %43, align 4, !tbaa !38
  br label %48

; <label>:44:                                     ; preds = %3
  %45 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %46 = load %struct.lua_State*, %struct.lua_State** %45, align 8, !tbaa !37
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 %7) #12
  br label %48

; <label>:48:                                     ; preds = %44, %41, %39, %37, %35, %3
  br label %49

; <label>:49:                                     ; preds = %3, %26, %29, %48, %34, %33, %24, %22, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %50 = phi i32 [ 8, %48 ], [ 7, %34 ], [ 6, %33 ], [ 4, %24 ], [ 1, %22 ], [ 0, %20 ], [ 2, %19 ], [ 2, %18 ], [ 2, %17 ], [ 1, %16 ], [ 1, %15 ], [ 0, %14 ], [ 1, %13 ], [ 0, %12 ], [ 1, %11 ], [ 0, %10 ], [ 1, %9 ], [ 0, %8 ], [ 3, %29 ], [ 3, %26 ], [ 5, %3 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getnumlimit(%struct.Header* nocapture readonly, i8** nocapture, i32) unnamed_addr #0 {
  %4 = tail call fastcc i32 @getnum(i8** %1, i32 %2)
  %5 = add i32 %4, -1
  %6 = icmp ugt i32 %5, 15
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !37
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %4, i32 16) #12
  br label %11

; <label>:11:                                     ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  ret i32 %12
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @getnum(i8** nocapture, i32) unnamed_addr #5 {
  %3 = load i8*, i8** %0, align 8, !tbaa !19
  %4 = load i8, i8* %3, align 1, !tbaa !6
  %5 = sext i8 %4 to i32
  %6 = tail call fastcc i32 @digit(i32 %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %8 ]
  %11 = mul nsw i32 %10, 10
  %12 = load i8*, i8** %0, align 8, !tbaa !19
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %0, align 8, !tbaa !19
  %14 = load i8, i8* %12, align 1, !tbaa !6
  %15 = sext i8 %14 to i32
  %16 = add i32 %11, -48
  %17 = add i32 %16, %15
  %18 = load i8, i8* %13, align 1, !tbaa !6
  %19 = sext i8 %18 to i32
  %20 = tail call fastcc i32 @digit(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = icmp slt i32 %17, 214748364
  %23 = and i1 %21, %22
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %9, %2
  %25 = phi i32 [ %1, %2 ], [ %17, %9 ]
  ret i32 %25
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @digit(i32) unnamed_addr #3 {
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
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
  %56 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %3) #12
  br label %57

; <label>:57:                                     ; preds = %46, %55
  %58 = add nuw nsw i32 %47, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %46

; <label>:60:                                     ; preds = %57, %28, %37, %30
  %61 = phi i64 [ %36, %30 ], [ %27, %28 ], [ %27, %37 ], [ %27, %57 ]
  ret i64 %61
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
  %4 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  tail call void @lua_arith(%struct.lua_State* %0, i32 %1) #12
  br label %11

; <label>:10:                                     ; preds = %6, %3
  tail call fastcc void @trymt(%struct.lua_State* %0, i8* %2)
  br label %11

; <label>:11:                                     ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tonum(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #12
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #12
  br label %19

; <label>:7:                                      ; preds = %2
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12
  %9 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* nonnull %3) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %7
  %12 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %9) #12
  %13 = load i64, i64* %3, align 8, !tbaa !2
  %14 = add i64 %13, 1
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  br label %17

; <label>:17:                                     ; preds = %7, %11
  %18 = phi i32 [ 0, %7 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12
  br label %19

; <label>:19:                                     ; preds = %17, %6
  %20 = phi i32 [ 1, %6 ], [ %18, %17 ]
  ret i32 %20
}

declare void @lua_arith(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @trymt(%struct.lua_State*, i8*) unnamed_addr #0 {
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #12
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #12
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 2, i8* %1) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %5, %2
  %9 = getelementptr inbounds i8, i8* %1, i64 2
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #12
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #12
  %12 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #12
  %13 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %12) #12
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %9, i8* %11, i8* %13) #12
  br label %15

; <label>:15:                                     ; preds = %5, %8
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -3, i32 1) #12
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #12
  ret void
}

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone speculatable }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

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
!12 = !{!13, !9, i64 0}
!13 = !{!"GMatchState", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24}
!14 = !{!"MatchState", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !15, i64 32, !4, i64 36, !4, i64 40}
!15 = !{!"int", !4, i64 0}
!16 = !{!13, !9, i64 8}
!17 = !{!13, !9, i64 16}
!18 = !{!14, !9, i64 8}
!19 = !{!9, !9, i64 0}
!20 = !{!15, !15, i64 0}
!21 = !{!22, !15, i64 8}
!22 = !{!"Header", !9, i64 0, !15, i64 8, !15, i64 12}
!23 = !{!14, !9, i64 24}
!24 = !{!14, !15, i64 32}
!25 = !{!14, !9, i64 0}
!26 = !{!14, !9, i64 16}
!27 = !{!14, !4, i64 36}
!28 = !{!29, !9, i64 0}
!29 = !{!"", !9, i64 0, !3, i64 8}
!30 = !{!29, !3, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !4, i64 0}
!33 = !{!34, !9, i64 0}
!34 = !{!"lconv", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !4, i64 84, !4, i64 85, !4, i64 86, !4, i64 87, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93}
!35 = !{!13, !9, i64 48}
!36 = !{!13, !9, i64 32}
!37 = !{!22, !9, i64 0}
!38 = !{!22, !15, i64 12}
