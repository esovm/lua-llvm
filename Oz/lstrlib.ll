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

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_string(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #11
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 17) #11
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([18 x %struct.luaL_Reg], [18 x %struct.luaL_Reg]* @strlib, i64 0, i64 0), i32 0) #11
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 9) #11
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @stringmetamethods, i64 0, i64 0), i32 0) #11
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #11
  %3 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #11
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #11
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #11
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #11
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #11
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_byte(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #11
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = call fastcc i64 @posrelatI(i64 %5, i64 %6) #13
  %8 = call fastcc i64 @getendpos(%struct.lua_State* %0, i64 %5, i64 %6) #13
  %9 = icmp ult i64 %8, %7
  br i1 %9, label %30, label %10

; <label>:10:                                     ; preds = %1
  %11 = sub i64 %8, %7
  %12 = icmp ugt i64 %11, 2147483646
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #11
  br label %30

; <label>:15:                                     ; preds = %10
  %16 = trunc i64 %11 to i32
  %17 = add nsw i32 %16, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #11
  %18 = add i64 %7, -1
  %19 = shl i64 %11, 32
  %20 = ashr exact i64 %19, 32
  br label %21

; <label>:21:                                     ; preds = %24, %15
  %22 = phi i64 [ %29, %24 ], [ 0, %15 ]
  %23 = icmp sgt i64 %22, %20
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %21
  %25 = add i64 %18, %22
  %26 = getelementptr inbounds i8, i8* %4, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !6
  %28 = zext i8 %27 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %28) #11
  %29 = add nuw nsw i64 %22, 1
  br label %21

; <label>:30:                                     ; preds = %21, %1, %13
  %31 = phi i32 [ %14, %13 ], [ 0, %1 ], [ %17, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 %31
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_char(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #11
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #12
  %5 = sext i32 %3 to i64
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %5) #11
  br label %7

; <label>:7:                                      ; preds = %16, %1
  %8 = phi i64 [ %20, %16 ], [ 1, %1 ]
  %9 = icmp sgt i64 %8, %5
  br i1 %9, label %21, label %10

; <label>:10:                                     ; preds = %7
  %11 = trunc i64 %8 to i32
  %12 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #11
  %13 = icmp ult i64 %12, 256
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %10
  %15 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #11
  br label %16

; <label>:16:                                     ; preds = %14, %10
  %17 = trunc i64 %12 to i8
  %18 = add nsw i64 %8, -1
  %19 = getelementptr inbounds i8, i8* %6, i64 %18
  store i8 %17, i8* %19, align 1, !tbaa !6
  %20 = add nuw nsw i64 %8, 1
  br label %7

; <label>:21:                                     ; preds = %7
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %2, i64 %5) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_dump(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %3) #12
  %4 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #11
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #11
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #11
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #11
  %5 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3, i32 %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #11
  br label %10

; <label>:9:                                      ; preds = %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #11
  br label %10

; <label>:10:                                     ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %3) #12
  ret i32 %11
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_find(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1) #13
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_format(%struct.lua_State*) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #11
  %9 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #11
  %11 = load i64, i64* %4, align 8, !tbaa !2
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %13) #12
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #11
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 1
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 2
  %20 = bitcast i64* %7 to i8*
  %21 = bitcast i64* %3 to i8*
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  br label %23

; <label>:23:                                     ; preds = %352, %1
  %24 = phi i8* [ %153, %352 ], [ %10, %1 ]
  %25 = phi i32 [ %70, %352 ], [ 1, %1 ]
  br label %26

; <label>:26:                                     ; preds = %66, %23
  %27 = phi i8* [ %24, %23 ], [ %67, %66 ]
  %28 = icmp ult i8* %27, %12
  br i1 %28, label %29, label %357

; <label>:29:                                     ; preds = %26
  %30 = load i8, i8* %27, align 1, !tbaa !6
  %31 = icmp eq i8 %30, 37
  br i1 %31, label %47, label %32

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %14, align 8, !tbaa !7
  %34 = load i64, i64* %15, align 8, !tbaa !10
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %32
  %37 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %38 = load i8, i8* %27, align 1, !tbaa !6
  %39 = load i64, i64* %14, align 8, !tbaa !7
  br label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i64 [ %39, %36 ], [ %33, %32 ]
  %42 = phi i8 [ %38, %36 ], [ %30, %32 ]
  %43 = getelementptr inbounds i8, i8* %27, i64 1
  %44 = load i8*, i8** %17, align 8, !tbaa !11
  %45 = add i64 %41, 1
  store i64 %45, i64* %14, align 8, !tbaa !7
  %46 = getelementptr inbounds i8, i8* %44, i64 %41
  store i8 %42, i8* %46, align 1, !tbaa !6
  br label %66

; <label>:47:                                     ; preds = %29
  %48 = getelementptr inbounds i8, i8* %27, i64 1
  %49 = load i8, i8* %48, align 1, !tbaa !6
  %50 = icmp eq i8 %49, 37
  br i1 %50, label %51, label %68

; <label>:51:                                     ; preds = %47
  %52 = load i64, i64* %14, align 8, !tbaa !7
  %53 = load i64, i64* %15, align 8, !tbaa !10
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %59, label %55

; <label>:55:                                     ; preds = %51
  %56 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %57 = load i8, i8* %48, align 1, !tbaa !6
  %58 = load i64, i64* %14, align 8, !tbaa !7
  br label %59

; <label>:59:                                     ; preds = %55, %51
  %60 = phi i64 [ %58, %55 ], [ %52, %51 ]
  %61 = phi i8 [ %57, %55 ], [ 37, %51 ]
  %62 = getelementptr inbounds i8, i8* %27, i64 2
  %63 = load i8*, i8** %17, align 8, !tbaa !11
  %64 = add i64 %60, 1
  store i64 %64, i64* %14, align 8, !tbaa !7
  %65 = getelementptr inbounds i8, i8* %63, i64 %60
  store i8 %61, i8* %65, align 1, !tbaa !6
  br label %66

; <label>:66:                                     ; preds = %59, %40
  %67 = phi i8* [ %43, %40 ], [ %62, %59 ]
  br label %26

; <label>:68:                                     ; preds = %47
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #12
  %69 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #11
  %70 = add nuw nsw i32 %25, 1
  %71 = icmp slt i32 %25, %8
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %68
  br label %75

; <label>:73:                                     ; preds = %68
  %74 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #11
  br label %350

; <label>:75:                                     ; preds = %72, %87
  %76 = phi i8* [ %88, %87 ], [ %48, %72 ]
  %77 = load i8, i8* %76, align 1, !tbaa !6
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %89, label %79

; <label>:79:                                     ; preds = %75
  %80 = sext i8 %77 to i64
  %81 = and i64 %80, 4294967295
  %82 = icmp ult i64 %81, 64
  %83 = shl i64 1, %81
  %84 = and i64 %83, 325494096527361
  %85 = icmp ne i64 %84, 0
  %86 = and i1 %82, %85
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %79
  %88 = getelementptr inbounds i8, i8* %76, i64 1
  br label %75

; <label>:89:                                     ; preds = %79, %75
  %90 = phi i8 [ %77, %79 ], [ 0, %75 ]
  %91 = ptrtoint i8* %76 to i64
  %92 = ptrtoint i8* %48 to i64
  %93 = sub i64 %91, %92
  %94 = icmp ugt i64 %93, 5
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %89
  %96 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #11
  %97 = load i8, i8* %76, align 1, !tbaa !6
  br label %98

; <label>:98:                                     ; preds = %95, %89
  %99 = phi i8 [ %97, %95 ], [ %90, %89 ]
  %100 = tail call i16** @__ctype_b_loc() #14
  %101 = load i16*, i16** %100, align 8, !tbaa !12
  %102 = zext i8 %99 to i64
  %103 = getelementptr inbounds i16, i16* %101, i64 %102
  %104 = load i16, i16* %103, align 2, !tbaa !13
  %105 = and i16 %104, 2048
  %106 = icmp eq i16 %105, 0
  %107 = getelementptr inbounds i8, i8* %76, i64 1
  %108 = select i1 %106, i8* %76, i8* %107
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
  %147 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0)) #11
  br label %148

; <label>:148:                                    ; preds = %138, %146
  store i8 37, i8* %16, align 16, !tbaa !6
  %149 = ptrtoint i8* %140 to i64
  %150 = sub i64 %149, %92
  %151 = add nsw i64 %150, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* nonnull %48, i64 %151, i32 1, i1 false) #12
  %152 = getelementptr inbounds i8, i8* %18, i64 %151
  store i8 0, i8* %152, align 1, !tbaa !6
  %153 = getelementptr inbounds i8, i8* %140, i64 1
  %154 = load i8, i8* %140, align 1, !tbaa !6
  %155 = sext i8 %154 to i32
  switch i32 %155, label %348 [
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
    i32 115, label %325
  ]

; <label>:156:                                    ; preds = %148
  %157 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %70) #11
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 120, i8* nonnull %16, i32 %158) #11
  br label %352

; <label>:160:                                    ; preds = %148, %148, %148, %148, %148, %148
  %161 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %70) #11
  call fastcc void @addlenmod(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #13
  %162 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 120, i8* nonnull %16, i64 %161) #11
  br label %352

; <label>:163:                                    ; preds = %148, %148
  call fastcc void @addlenmod(i8* nonnull %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #13
  %164 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %70) #11
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 120, i8* nonnull %16, double %164) #11
  br label %352

; <label>:166:                                    ; preds = %148, %148, %148, %148, %148
  %167 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %70) #11
  %168 = load i8, i8* %140, align 1, !tbaa !6
  %169 = icmp ne i8 %168, 102
  %170 = call double @llvm.fabs.f64(double %167)
  %171 = fcmp ult double %170, 1.000000e+100
  %172 = or i1 %169, %171
  br i1 %172, label %175, label %173

; <label>:173:                                    ; preds = %166
  %174 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 418) #11
  br label %175

; <label>:175:                                    ; preds = %166, %173
  %176 = phi i8* [ %174, %173 ], [ %69, %166 ]
  %177 = phi i64 [ 418, %173 ], [ 120, %166 ]
  call fastcc void @addlenmod(i8* nonnull %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #13
  %178 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %176, i64 %177, i8* nonnull %16, double %167) #11
  br label %352

; <label>:179:                                    ; preds = %148
  %180 = call i8* @lua_topointer(%struct.lua_State* %0, i32 %70) #11
  %181 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 120, i8* nonnull %16, i8* %180) #11
  br label %352

; <label>:182:                                    ; preds = %148
  %183 = load i8, i8* %19, align 2, !tbaa !6
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185

; <label>:185:                                    ; preds = %182
  %186 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #11
  br label %350

; <label>:187:                                    ; preds = %182
  %188 = call i32 @lua_type(%struct.lua_State* %0, i32 %70) #11
  switch i32 %188, label %323 [
    i32 4, label %189
    i32 3, label %283
    i32 0, label %321
    i32 1, label %321
  ]

; <label>:189:                                    ; preds = %187
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #12
  %190 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %70, i64* nonnull %3) #11
  %191 = load i64, i64* %3, align 8, !tbaa !2
  %192 = load i64, i64* %14, align 8, !tbaa !7
  %193 = load i64, i64* %15, align 8, !tbaa !10
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %198, label %195

; <label>:195:                                    ; preds = %189
  %196 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %197 = load i64, i64* %14, align 8, !tbaa !7
  br label %198

; <label>:198:                                    ; preds = %195, %189
  %199 = phi i64 [ %197, %195 ], [ %192, %189 ]
  %200 = load i8*, i8** %17, align 8, !tbaa !11
  %201 = add i64 %199, 1
  store i64 %201, i64* %14, align 8, !tbaa !7
  %202 = getelementptr inbounds i8, i8* %200, i64 %199
  store i8 34, i8* %202, align 1, !tbaa !6
  br label %203

; <label>:203:                                    ; preds = %269, %198
  %204 = phi i8* [ %190, %198 ], [ %270, %269 ]
  %205 = phi i64 [ %191, %198 ], [ %206, %269 ]
  %206 = add i64 %205, -1
  %207 = icmp eq i64 %205, 0
  br i1 %207, label %271, label %208

; <label>:208:                                    ; preds = %203
  %209 = load i8, i8* %204, align 1, !tbaa !6
  switch i8 %209, label %234 [
    i8 34, label %210
    i8 92, label %210
    i8 10, label %210
  ]

; <label>:210:                                    ; preds = %208, %208, %208
  %211 = load i64, i64* %14, align 8, !tbaa !7
  %212 = load i64, i64* %15, align 8, !tbaa !10
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %217, label %214

; <label>:214:                                    ; preds = %210
  %215 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %216 = load i64, i64* %14, align 8, !tbaa !7
  br label %217

; <label>:217:                                    ; preds = %214, %210
  %218 = phi i64 [ %216, %214 ], [ %211, %210 ]
  %219 = load i8*, i8** %17, align 8, !tbaa !11
  %220 = add i64 %218, 1
  store i64 %220, i64* %14, align 8, !tbaa !7
  %221 = getelementptr inbounds i8, i8* %219, i64 %218
  store i8 92, i8* %221, align 1, !tbaa !6
  %222 = load i64, i64* %14, align 8, !tbaa !7
  %223 = load i64, i64* %15, align 8, !tbaa !10
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %228, label %225

; <label>:225:                                    ; preds = %217
  %226 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %227 = load i64, i64* %14, align 8, !tbaa !7
  br label %228

; <label>:228:                                    ; preds = %225, %217
  %229 = phi i64 [ %227, %225 ], [ %222, %217 ]
  %230 = load i8, i8* %204, align 1, !tbaa !6
  %231 = load i8*, i8** %17, align 8, !tbaa !11
  %232 = add i64 %229, 1
  store i64 %232, i64* %14, align 8, !tbaa !7
  %233 = getelementptr inbounds i8, i8* %231, i64 %229
  store i8 %230, i8* %233, align 1, !tbaa !6
  br label %269

; <label>:234:                                    ; preds = %208
  %235 = load i16*, i16** %100, align 8, !tbaa !12
  %236 = zext i8 %209 to i64
  %237 = getelementptr inbounds i16, i16* %235, i64 %236
  %238 = load i16, i16* %237, align 2, !tbaa !13
  %239 = and i16 %238, 2
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %255, label %241

; <label>:241:                                    ; preds = %234
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %22) #12
  %242 = getelementptr inbounds i8, i8* %204, i64 1
  %243 = load i8, i8* %242, align 1, !tbaa !6
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds i16, i16* %235, i64 %244
  %246 = load i16, i16* %245, align 2, !tbaa !13
  %247 = and i16 %246, 2048
  %248 = icmp eq i16 %247, 0
  %249 = zext i8 %209 to i32
  br i1 %248, label %250, label %252

; <label>:250:                                    ; preds = %241
  %251 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %22, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %249) #11
  br label %254

; <label>:252:                                    ; preds = %241
  %253 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %22, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 %249) #11
  br label %254

; <label>:254:                                    ; preds = %252, %250
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %22) #11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %22) #12
  br label %269

; <label>:255:                                    ; preds = %234
  %256 = load i64, i64* %14, align 8, !tbaa !7
  %257 = load i64, i64* %15, align 8, !tbaa !10
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %263, label %259

; <label>:259:                                    ; preds = %255
  %260 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %261 = load i8, i8* %204, align 1, !tbaa !6
  %262 = load i64, i64* %14, align 8, !tbaa !7
  br label %263

; <label>:263:                                    ; preds = %259, %255
  %264 = phi i64 [ %262, %259 ], [ %256, %255 ]
  %265 = phi i8 [ %261, %259 ], [ %209, %255 ]
  %266 = load i8*, i8** %17, align 8, !tbaa !11
  %267 = add i64 %264, 1
  store i64 %267, i64* %14, align 8, !tbaa !7
  %268 = getelementptr inbounds i8, i8* %266, i64 %264
  store i8 %265, i8* %268, align 1, !tbaa !6
  br label %269

; <label>:269:                                    ; preds = %263, %254, %228
  %270 = getelementptr inbounds i8, i8* %204, i64 1
  br label %203

; <label>:271:                                    ; preds = %203
  %272 = load i64, i64* %14, align 8, !tbaa !7
  %273 = load i64, i64* %15, align 8, !tbaa !10
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %278, label %275

; <label>:275:                                    ; preds = %271
  %276 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #11
  %277 = load i64, i64* %14, align 8, !tbaa !7
  br label %278

; <label>:278:                                    ; preds = %275, %271
  %279 = phi i64 [ %277, %275 ], [ %272, %271 ]
  %280 = load i8*, i8** %17, align 8, !tbaa !11
  %281 = add i64 %279, 1
  store i64 %281, i64* %14, align 8, !tbaa !7
  %282 = getelementptr inbounds i8, i8* %280, i64 %279
  store i8 34, i8* %282, align 1, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #12
  br label %352

; <label>:283:                                    ; preds = %187
  %284 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 120) #11
  %285 = call i32 @lua_isinteger(%struct.lua_State* %0, i32 %70) #11
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %311

; <label>:287:                                    ; preds = %283
  %288 = call double @lua_tonumberx(%struct.lua_State* %0, i32 %70, i32* null) #11
  %289 = fcmp oeq double %288, 0x7FF0000000000000
  br i1 %289, label %308, label %290

; <label>:290:                                    ; preds = %287
  %291 = fcmp oeq double %288, 0xFFF0000000000000
  br i1 %291, label %308, label %292

; <label>:292:                                    ; preds = %290
  %293 = fcmp uno double %288, 0.000000e+00
  br i1 %293, label %308, label %294

; <label>:294:                                    ; preds = %292
  %295 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %284, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), double %288) #11
  %296 = sext i32 %295 to i64
  %297 = call i8* @memchr(i8* %284, i32 46, i64 %296) #15
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %316

; <label>:299:                                    ; preds = %294
  %300 = call %struct.lconv* @localeconv() #11
  %301 = getelementptr inbounds %struct.lconv, %struct.lconv* %300, i64 0, i32 0
  %302 = load i8*, i8** %301, align 8, !tbaa !15
  %303 = load i8, i8* %302, align 1, !tbaa !6
  %304 = sext i8 %303 to i32
  %305 = call i8* @memchr(i8* %284, i32 %304, i64 %296) #15
  %306 = icmp eq i8* %305, null
  br i1 %306, label %316, label %307

; <label>:307:                                    ; preds = %299
  store i8 46, i8* %305, align 1, !tbaa !6
  br label %316

; <label>:308:                                    ; preds = %292, %290, %287
  %309 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), %287 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %290 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), %292 ]
  %310 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %284, i64 120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %309) #11
  br label %316

; <label>:311:                                    ; preds = %283
  %312 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 %70, i32* null) #11
  %313 = icmp eq i64 %312, -9223372036854775808
  %314 = select i1 %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %315 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %284, i64 120, i8* %314, i64 %312) #11
  br label %316

; <label>:316:                                    ; preds = %311, %308, %307, %299, %294
  %317 = phi i32 [ %315, %311 ], [ %310, %308 ], [ %295, %307 ], [ %295, %299 ], [ %295, %294 ]
  %318 = sext i32 %317 to i64
  %319 = load i64, i64* %14, align 8, !tbaa !7
  %320 = add i64 %319, %318
  store i64 %320, i64* %14, align 8, !tbaa !7
  br label %352

; <label>:321:                                    ; preds = %187, %187
  %322 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %70, i64* null) #11
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #11
  br label %352

; <label>:323:                                    ; preds = %187
  %324 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0)) #11
  br label %352

; <label>:325:                                    ; preds = %148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #12
  %326 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %70, i64* nonnull %7) #11
  %327 = load i8, i8* %19, align 2, !tbaa !6
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %330

; <label>:329:                                    ; preds = %325
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #11
  br label %346

; <label>:330:                                    ; preds = %325
  %331 = load i64, i64* %7, align 8, !tbaa !2
  %332 = call i64 @strlen(i8* %326) #15
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %337, label %334

; <label>:334:                                    ; preds = %330
  %335 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #11
  %336 = load i64, i64* %7, align 8
  br label %337

; <label>:337:                                    ; preds = %334, %330
  %338 = phi i64 [ %336, %334 ], [ %331, %330 ]
  %339 = call i8* @strchr(i8* nonnull %16, i32 46) #15
  %340 = icmp eq i8* %339, null
  %341 = icmp ugt i64 %338, 99
  %342 = and i1 %340, %341
  br i1 %342, label %343, label %344

; <label>:343:                                    ; preds = %337
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #11
  br label %346

; <label>:344:                                    ; preds = %337
  %345 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 120, i8* nonnull %16, i8* %326) #11
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #11
  br label %346

; <label>:346:                                    ; preds = %343, %344, %329
  %347 = phi i32 [ 0, %329 ], [ 0, %343 ], [ %345, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #12
  br label %352

; <label>:348:                                    ; preds = %148
  %349 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* nonnull %16) #11
  br label %350

; <label>:350:                                    ; preds = %73, %348, %185
  %351 = phi i32 [ %186, %185 ], [ %349, %348 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #12
  br label %358

; <label>:352:                                    ; preds = %156, %160, %163, %175, %179, %346, %278, %316, %321, %323
  %353 = phi i32 [ %347, %346 ], [ %181, %179 ], [ %178, %175 ], [ %165, %163 ], [ %162, %160 ], [ %159, %156 ], [ 0, %278 ], [ 0, %316 ], [ 0, %321 ], [ 0, %323 ]
  %354 = sext i32 %353 to i64
  %355 = load i64, i64* %14, align 8, !tbaa !7
  %356 = add i64 %355, %354
  store i64 %356, i64* %14, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #12
  br label %23

; <label>:357:                                    ; preds = %26
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #11
  br label %358

; <label>:358:                                    ; preds = %350, %357
  %359 = phi i32 [ 1, %357 ], [ %351, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  ret i32 %359
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @gmatch(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %3) #11
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #11
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = call fastcc i64 @posrelatI(i64 %8, i64 %9) #13
  %11 = add i64 %10, -1
  call void @lua_settop(%struct.lua_State* %0, i32 2) #11
  %12 = call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 576, i32 0) #11
  %13 = load i64, i64* %2, align 8, !tbaa !2
  %14 = icmp ugt i64 %11, %13
  %15 = add i64 %13, 1
  %16 = select i1 %14, i64 %15, i64 %11
  %17 = getelementptr inbounds i8, i8* %12, i64 24
  %18 = load i64, i64* %3, align 8, !tbaa !2
  %19 = getelementptr inbounds i8, i8* %12, i64 48
  %20 = bitcast i8* %19 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %20, align 8, !tbaa !17
  %21 = getelementptr inbounds i8, i8* %12, i64 56
  %22 = bitcast i8* %21 to i32*
  store i32 200, i32* %22, align 8, !tbaa !20
  %23 = bitcast i8* %17 to i8**
  store i8* %6, i8** %23, align 8, !tbaa !21
  %24 = getelementptr inbounds i8, i8* %6, i64 %13
  %25 = getelementptr inbounds i8, i8* %12, i64 32
  %26 = bitcast i8* %25 to i8**
  store i8* %24, i8** %26, align 8, !tbaa !22
  %27 = getelementptr inbounds i8, i8* %7, i64 %18
  %28 = getelementptr inbounds i8, i8* %12, i64 40
  %29 = bitcast i8* %28 to i8**
  store i8* %27, i8** %29, align 8, !tbaa !23
  %30 = getelementptr inbounds i8, i8* %6, i64 %16
  %31 = bitcast i8* %12 to i8**
  store i8* %30, i8** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds i8, i8* %12, i64 8
  %33 = bitcast i8* %32 to i8**
  store i8* %7, i8** %33, align 8, !tbaa !26
  %34 = getelementptr inbounds i8, i8* %12, i64 16
  %35 = bitcast i8* %34 to i8**
  store i8* null, i8** %35, align 8, !tbaa !27
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_gsub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.MatchState, align 8
  %7 = alloca %struct.luaL_Buffer, align 8
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12
  %9 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #11
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %5) #11
  %12 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #11
  %13 = load i64, i64* %4, align 8, !tbaa !2
  %14 = add i64 %13, 1
  %15 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %14) #11
  %16 = load i8, i8* %11, align 1, !tbaa !6
  %17 = icmp eq i8 %16, 94
  %18 = bitcast %struct.MatchState* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %18) #12
  %19 = bitcast %struct.luaL_Buffer* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %19) #12
  %20 = add i32 %12, -3
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %1
  %23 = call i32 @luaL_typeerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #11
  br label %24

; <label>:24:                                     ; preds = %22, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %7) #11
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
  %42 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i64 0, i32 5
  %43 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 2
  %44 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 1
  %45 = bitcast i64* %2 to i8*
  %46 = bitcast i8** %3 to i8*
  %47 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 0
  br label %48

; <label>:48:                                     ; preds = %159, %31
  %49 = phi i8* [ null, %31 ], [ %160, %159 ]
  %50 = phi i64 [ 0, %31 ], [ %161, %159 ]
  %51 = phi i32 [ 0, %31 ], [ %162, %159 ]
  %52 = phi i8* [ %10, %31 ], [ %163, %159 ]
  %53 = icmp slt i64 %50, %15
  br i1 %53, label %54, label %164

; <label>:54:                                     ; preds = %48
  store i8 0, i8* %42, align 4, !tbaa !28
  %55 = call fastcc i8* @match(%struct.MatchState* nonnull %6, i8* %52, i8* %33) #13
  %56 = icmp eq i8* %55, null
  %57 = icmp eq i8* %55, %49
  %58 = or i1 %56, %57
  br i1 %58, label %142, label %59

; <label>:59:                                     ; preds = %54
  %60 = add nsw i64 %50, 1
  %61 = load %struct.lua_State*, %struct.lua_State** %35, align 8, !tbaa !17
  switch i32 %12, label %66 [
    i32 6, label %62
    i32 5, label %64
  ]

; <label>:62:                                     ; preds = %59
  call void @lua_pushvalue(%struct.lua_State* %61, i32 3) #11
  %63 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %6, i8* %52, i8* nonnull %55) #11
  call void @lua_callk(%struct.lua_State* %61, i32 %63, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #11
  br label %124

; <label>:64:                                     ; preds = %59
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %6, i32 0, i8* %52, i8* nonnull %55) #11
  %65 = call i32 @lua_gettable(%struct.lua_State* %61, i32 3) #11
  br label %124

; <label>:66:                                     ; preds = %59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #12
  %67 = call i8* @lua_tolstring(%struct.lua_State* %61, i32 3, i64* nonnull %2) #11
  %68 = ptrtoint i8* %55 to i64
  %69 = ptrtoint i8* %52 to i64
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %2, align 8, !tbaa !2
  br label %72

; <label>:72:                                     ; preds = %117, %66
  %73 = phi i64 [ %71, %66 ], [ %122, %117 ]
  %74 = phi i8* [ %67, %66 ], [ %118, %117 ]
  %75 = call i8* @memchr(i8* %74, i32 37, i64 %73) #15
  %76 = icmp eq i8* %75, null
  br i1 %76, label %123, label %77

; <label>:77:                                     ; preds = %72
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %74 to i64
  %80 = sub i64 %78, %79
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %74, i64 %80) #11
  %81 = getelementptr inbounds i8, i8* %75, i64 1
  %82 = load i8, i8* %81, align 1, !tbaa !6
  switch i8 %82, label %98 [
    i8 37, label %83
    i8 48, label %97
  ]

; <label>:83:                                     ; preds = %77
  %84 = load i64, i64* %43, align 8, !tbaa !7
  %85 = load i64, i64* %44, align 8, !tbaa !10
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %83
  %88 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %7, i64 1) #11
  %89 = load i8, i8* %81, align 1, !tbaa !6
  %90 = load i64, i64* %43, align 8, !tbaa !7
  br label %91

; <label>:91:                                     ; preds = %87, %83
  %92 = phi i64 [ %90, %87 ], [ %84, %83 ]
  %93 = phi i8 [ %89, %87 ], [ 37, %83 ]
  %94 = load i8*, i8** %47, align 8, !tbaa !11
  %95 = add i64 %92, 1
  store i64 %95, i64* %43, align 8, !tbaa !7
  %96 = getelementptr inbounds i8, i8* %94, i64 %92
  store i8 %93, i8* %96, align 1, !tbaa !6
  br label %117

; <label>:97:                                     ; preds = %77
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %52, i64 %70) #11
  br label %117

; <label>:98:                                     ; preds = %77
  %99 = tail call i16** @__ctype_b_loc() #14
  %100 = load i16*, i16** %99, align 8, !tbaa !12
  %101 = zext i8 %82 to i64
  %102 = getelementptr inbounds i16, i16* %100, i64 %101
  %103 = load i16, i16* %102, align 2, !tbaa !13
  %104 = and i16 %103, 2048
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %115, label %106

; <label>:106:                                    ; preds = %98
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #12
  %107 = sext i8 %82 to i32
  %108 = add nsw i32 %107, -49
  %109 = call fastcc i64 @get_onecapture(%struct.MatchState* nonnull %6, i32 %108, i8* %52, i8* %55, i8** nonnull %3) #11
  %110 = icmp eq i64 %109, -2
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %106
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %7) #11
  br label %114

; <label>:112:                                    ; preds = %106
  %113 = load i8*, i8** %3, align 8, !tbaa !12
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %113, i64 %109) #11
  br label %114

; <label>:114:                                    ; preds = %112, %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #12
  br label %117

; <label>:115:                                    ; preds = %98
  %116 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i64 0, i64 0), i32 37) #11
  br label %117

; <label>:117:                                    ; preds = %115, %114, %97, %91
  %118 = getelementptr inbounds i8, i8* %75, i64 2
  %119 = ptrtoint i8* %118 to i64
  %120 = load i64, i64* %2, align 8, !tbaa !2
  %121 = sub i64 %79, %119
  %122 = add i64 %120, %121
  store i64 %122, i64* %2, align 8, !tbaa !2
  br label %72

; <label>:123:                                    ; preds = %72
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %74, i64 %73) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #12
  br label %139

; <label>:124:                                    ; preds = %64, %62
  %125 = call i32 @lua_toboolean(%struct.lua_State* %61, i32 -1) #11
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

; <label>:127:                                    ; preds = %124
  call void @lua_settop(%struct.lua_State* %61, i32 -2) #11
  %128 = ptrtoint i8* %55 to i64
  %129 = ptrtoint i8* %52 to i64
  %130 = sub i64 %128, %129
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %52, i64 %130) #11
  br label %139

; <label>:131:                                    ; preds = %124
  %132 = call i32 @lua_isstring(%struct.lua_State* %61, i32 -1) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

; <label>:134:                                    ; preds = %131
  %135 = call i32 @lua_type(%struct.lua_State* %61, i32 -1) #11
  %136 = call i8* @lua_typename(%struct.lua_State* %61, i32 %135) #11
  %137 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i8* %136) #11
  br label %139

; <label>:138:                                    ; preds = %131
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %7) #11
  br label %139

; <label>:139:                                    ; preds = %123, %127, %134, %138
  %140 = phi i32 [ 1, %123 ], [ 1, %138 ], [ %137, %134 ], [ 0, %127 ]
  %141 = or i32 %140, %51
  br label %159

; <label>:142:                                    ; preds = %54
  %143 = load i8*, i8** %39, align 8, !tbaa !22
  %144 = icmp ult i8* %52, %143
  br i1 %144, label %145, label %164

; <label>:145:                                    ; preds = %142
  %146 = load i64, i64* %43, align 8, !tbaa !7
  %147 = load i64, i64* %44, align 8, !tbaa !10
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %152, label %149

; <label>:149:                                    ; preds = %145
  %150 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %7, i64 1) #11
  %151 = load i64, i64* %43, align 8, !tbaa !7
  br label %152

; <label>:152:                                    ; preds = %149, %145
  %153 = phi i64 [ %151, %149 ], [ %146, %145 ]
  %154 = getelementptr inbounds i8, i8* %52, i64 1
  %155 = load i8, i8* %52, align 1, !tbaa !6
  %156 = load i8*, i8** %47, align 8, !tbaa !11
  %157 = add i64 %153, 1
  store i64 %157, i64* %43, align 8, !tbaa !7
  %158 = getelementptr inbounds i8, i8* %156, i64 %153
  store i8 %155, i8* %158, align 1, !tbaa !6
  br label %159

; <label>:159:                                    ; preds = %139, %152
  %160 = phi i8* [ %55, %139 ], [ %49, %152 ]
  %161 = phi i64 [ %60, %139 ], [ %50, %152 ]
  %162 = phi i32 [ %141, %139 ], [ %51, %152 ]
  %163 = phi i8* [ %55, %139 ], [ %154, %152 ]
  br i1 %17, label %164, label %48

; <label>:164:                                    ; preds = %159, %142, %48
  %165 = phi i64 [ %161, %159 ], [ %50, %48 ], [ %50, %142 ]
  %166 = phi i32 [ %162, %159 ], [ %51, %48 ], [ %51, %142 ]
  %167 = phi i8* [ %163, %159 ], [ %52, %48 ], [ %52, %142 ]
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %164
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #11
  br label %175

; <label>:170:                                    ; preds = %164
  %171 = bitcast i8** %39 to i64*
  %172 = load i64, i64* %171, align 8, !tbaa !22
  %173 = ptrtoint i8* %167 to i64
  %174 = sub i64 %172, %173
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %7, i8* %167, i64 %174) #11
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %7) #11
  br label %175

; <label>:175:                                    ; preds = %170, %169
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %165) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %19) #12
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12
  ret i32 2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_len(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %5 = load i64, i64* %2, align 8, !tbaa !2
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_lower(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #11
  br label %9

; <label>:9:                                      ; preds = %13, %1
  %10 = phi i64 [ 0, %1 ], [ %23, %13 ]
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %24

; <label>:13:                                     ; preds = %9
  %14 = tail call i32** @__ctype_tolower_loc() #14
  %15 = load i32*, i32** %14, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %10
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !29
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add i64 %10, 1
  br label %9

; <label>:24:                                     ; preds = %9
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %11) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_match(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0) #13
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_rep(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #11
  %9 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), i64* nonnull %3) #11
  %10 = icmp slt i64 %8, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %1
  %12 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %47

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
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0)) #11
  br label %47

; <label>:23:                                     ; preds = %18
  %24 = mul i64 %14, %8
  %25 = add nsw i64 %8, -1
  %26 = mul i64 %15, %25
  %27 = add i64 %26, %24
  %28 = bitcast %struct.luaL_Buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %28) #12
  %29 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4, i64 %27) #11
  br label %30

; <label>:30:                                     ; preds = %41, %23
  %31 = phi i64 [ %8, %23 ], [ %33, %41 ]
  %32 = phi i8* [ %29, %23 ], [ %42, %41 ]
  %33 = add nsw i64 %31, -1
  %34 = icmp sgt i64 %31, 1
  %35 = load i64, i64* %2, align 8, !tbaa !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %7, i64 %35, i32 1, i1 false)
  br i1 %34, label %36, label %46

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %2, align 8, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i64, i64* %3, align 8, !tbaa !2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %36, %43
  %42 = phi i8* [ %38, %36 ], [ %45, %43 ]
  br label %30

; <label>:43:                                     ; preds = %36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %9, i64 %39, i32 1, i1 false)
  %44 = load i64, i64* %3, align 8, !tbaa !2
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  br label %41

; <label>:46:                                     ; preds = %30
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %4, i64 %27) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %28) #12
  br label %47

; <label>:47:                                     ; preds = %11, %46, %21
  %48 = phi i32 [ %22, %21 ], [ 1, %46 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  ret i32 %48
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_reverse(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #11
  br label %9

; <label>:9:                                      ; preds = %13, %1
  %10 = phi i64 [ 0, %1 ], [ %19, %13 ]
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = icmp ugt i64 %11, %10
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  %14 = xor i64 %10, -1
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds i8, i8* %6, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8 %17, i8* %18, align 1, !tbaa !6
  %19 = add i64 %10, 1
  br label %9

; <label>:20:                                     ; preds = %9
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %11) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_sub(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #11
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = call fastcc i64 @posrelatI(i64 %5, i64 %6) #13
  %8 = call fastcc i64 @getendpos(%struct.lua_State* %0, i64 -1, i64 %6) #13
  %9 = icmp ult i64 %8, %7
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds i8, i8* %4, i64 %7
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = sub i64 1, %7
  %14 = add i64 %13, %8
  %15 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %12, i64 %14) #11
  br label %18

; <label>:16:                                     ; preds = %1
  %17 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #11
  br label %18

; <label>:18:                                     ; preds = %16, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_upper(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %5) #12
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #11
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call i8* @luaL_buffinitsize(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3, i64 %7) #11
  br label %9

; <label>:9:                                      ; preds = %13, %1
  %10 = phi i64 [ 0, %1 ], [ %23, %13 ]
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %24

; <label>:13:                                     ; preds = %9
  %14 = tail call i32** @__ctype_toupper_loc() #14
  %15 = load i32*, i32** %14, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %6, i64 %10
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !29
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8 %21, i8* %22, align 1, !tbaa !6
  %23 = add i64 %10, 1
  br label %9

; <label>:24:                                     ; preds = %9
  call void @luaL_pushresultsize(%struct.luaL_Buffer* nonnull %3, i64 %11) #11
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %14 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #11
  store i8* %14, i8** %4, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %15, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1
  store i32 1, i32* %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 2
  store i32 1, i32* %17, align 4, !tbaa !33
  tail call void @lua_pushnil(%struct.lua_State* %0) #11
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #11
  %18 = bitcast i32* %5 to i8*
  %19 = bitcast i32* %6 to i8*
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 2
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %23 = bitcast %union.Ftypes* %7 to i8*
  %24 = bitcast i64* %8 to i8*
  %25 = bitcast i64* %9 to i8*
  %26 = bitcast i64* %10 to i8*
  %27 = bitcast %union.Ftypes* %7 to float*
  %28 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %29

; <label>:29:                                     ; preds = %183, %1
  %30 = phi i8* [ %14, %1 ], [ %186, %183 ]
  %31 = phi i64 [ 0, %1 ], [ %184, %183 ]
  %32 = phi i32 [ 1, %1 ], [ %185, %183 ]
  %33 = load i8, i8* %30, align 1, !tbaa !6
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %187, label %35

; <label>:35:                                     ; preds = %29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12
  %36 = call fastcc i32 @getdetails(%struct.Header* nonnull %3, i64 %31, i8** nonnull %4, i32* nonnull %5, i32* nonnull %6) #13
  %37 = load i32, i32* %6, align 4, !tbaa !29
  %38 = load i32, i32* %5, align 4, !tbaa !29
  %39 = add nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  br label %41

; <label>:41:                                     ; preds = %52, %35
  %42 = phi i32 [ %43, %52 ], [ %37, %35 ]
  %43 = add nsw i32 %42, -1
  %44 = icmp sgt i32 %42, 0
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %41
  %46 = load i64, i64* %20, align 8, !tbaa !7
  %47 = load i64, i64* %21, align 8, !tbaa !10
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %45
  %50 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #11
  %51 = load i64, i64* %20, align 8, !tbaa !7
  br label %52

; <label>:52:                                     ; preds = %49, %45
  %53 = phi i64 [ %51, %49 ], [ %46, %45 ]
  %54 = load i8*, i8** %22, align 8, !tbaa !11
  %55 = add i64 %53, 1
  store i64 %55, i64* %20, align 8, !tbaa !7
  %56 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8 0, i8* %56, align 1, !tbaa !6
  br label %41

; <label>:57:                                     ; preds = %41
  %58 = add i64 %31, %40
  store i32 %43, i32* %6, align 4, !tbaa !29
  %59 = add nsw i32 %32, 1
  switch i32 %36, label %183 [
    i32 0, label %60
    i32 1, label %78
    i32 2, label %90
    i32 3, label %102
    i32 4, label %129
    i32 5, label %146
    i32 6, label %170
    i32 7, label %182
    i32 8, label %182
  ]

; <label>:60:                                     ; preds = %57
  %61 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %59) #11
  %62 = icmp slt i32 %38, 8
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %60
  %64 = shl i32 %38, 3
  %65 = add nsw i32 %64, -1
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = sub nsw i64 0, %67
  %69 = icmp sge i64 %61, %68
  %70 = icmp slt i64 %61, %67
  %71 = and i1 %69, %70
  br i1 %71, label %74, label %72

; <label>:72:                                     ; preds = %63
  %73 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #11
  br label %74

; <label>:74:                                     ; preds = %72, %63, %60
  %75 = load i32, i32* %16, align 8, !tbaa !32
  %76 = lshr i64 %61, 63
  %77 = trunc i64 %76 to i32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %61, i32 %75, i32 %38, i32 %77) #13
  br label %183

; <label>:78:                                     ; preds = %57
  %79 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %59) #11
  %80 = icmp slt i32 %38, 8
  br i1 %80, label %81, label %88

; <label>:81:                                     ; preds = %78
  %82 = shl nsw i32 %38, 3
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = icmp ult i64 %79, %84
  br i1 %85, label %88, label %86

; <label>:86:                                     ; preds = %81
  %87 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #11
  br label %88

; <label>:88:                                     ; preds = %81, %86, %78
  %89 = load i32, i32* %16, align 8, !tbaa !32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %79, i32 %89, i32 %38, i32 0) #13
  br label %183

; <label>:90:                                     ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #12
  %91 = sext i32 %38 to i64
  %92 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 %91) #11
  %93 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %59) #11
  %94 = icmp eq i32 %38, 4
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %90
  %96 = fptrunc double %93 to float
  store volatile float %96, float* %27, align 8, !tbaa !6
  br label %98

; <label>:97:                                     ; preds = %90
  store volatile double %93, double* %28, align 8, !tbaa !6
  br label %98

; <label>:98:                                     ; preds = %97, %95
  %99 = load i32, i32* %16, align 8, !tbaa !32
  call fastcc void @copywithendian(i8* %92, i8* nonnull %23, i32 %38, i32 %99) #13
  %100 = load i64, i64* %20, align 8, !tbaa !7
  %101 = add i64 %100, %91
  store i64 %101, i64* %20, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #12
  br label %183

; <label>:102:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #12
  %103 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %59, i64* nonnull %8) #11
  %104 = load i64, i64* %8, align 8, !tbaa !2
  %105 = sext i32 %38 to i64
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %110

; <label>:107:                                    ; preds = %102
  %108 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0)) #11
  %109 = load i64, i64* %8, align 8, !tbaa !2
  br label %110

; <label>:110:                                    ; preds = %102, %107
  %111 = phi i64 [ %104, %102 ], [ %109, %107 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %103, i64 %111) #11
  br label %112

; <label>:112:                                    ; preds = %123, %110
  %113 = load i64, i64* %8, align 8, !tbaa !2
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8, !tbaa !2
  %115 = icmp ult i64 %113, %105
  br i1 %115, label %116, label %128

; <label>:116:                                    ; preds = %112
  %117 = load i64, i64* %20, align 8, !tbaa !7
  %118 = load i64, i64* %21, align 8, !tbaa !10
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %123, label %120

; <label>:120:                                    ; preds = %116
  %121 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #11
  %122 = load i64, i64* %20, align 8, !tbaa !7
  br label %123

; <label>:123:                                    ; preds = %120, %116
  %124 = phi i64 [ %122, %120 ], [ %117, %116 ]
  %125 = load i8*, i8** %22, align 8, !tbaa !11
  %126 = add i64 %124, 1
  store i64 %126, i64* %20, align 8, !tbaa !7
  %127 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8 0, i8* %127, align 1, !tbaa !6
  br label %112

; <label>:128:                                    ; preds = %112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #12
  br label %183

; <label>:129:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12
  %130 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %59, i64* nonnull %9) #11
  %131 = icmp sgt i32 %38, 7
  br i1 %131, label %140, label %132

; <label>:132:                                    ; preds = %129
  %133 = load i64, i64* %9, align 8, !tbaa !2
  %134 = shl nsw i32 %38, 3
  %135 = zext i32 %134 to i64
  %136 = shl i64 1, %135
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %140, label %138

; <label>:138:                                    ; preds = %132
  %139 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #11
  br label %140

; <label>:140:                                    ; preds = %138, %132, %129
  %141 = load i64, i64* %9, align 8, !tbaa !2
  %142 = load i32, i32* %16, align 8, !tbaa !32
  call fastcc void @packint(%struct.luaL_Buffer* nonnull %2, i64 %141, i32 %142, i32 %38, i32 0) #13
  %143 = load i64, i64* %9, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %130, i64 %143) #11
  %144 = load i64, i64* %9, align 8, !tbaa !2
  %145 = add i64 %144, %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12
  br label %183

; <label>:146:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #12
  %147 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %59, i64* nonnull %10) #11
  %148 = call i64 @strlen(i8* %147) #15
  %149 = load i64, i64* %10, align 8, !tbaa !2
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %154, label %151

; <label>:151:                                    ; preds = %146
  %152 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #11
  %153 = load i64, i64* %10, align 8, !tbaa !2
  br label %154

; <label>:154:                                    ; preds = %151, %146
  %155 = phi i64 [ %153, %151 ], [ %148, %146 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %147, i64 %155) #11
  %156 = load i64, i64* %20, align 8, !tbaa !7
  %157 = load i64, i64* %21, align 8, !tbaa !10
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %162, label %159

; <label>:159:                                    ; preds = %154
  %160 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #11
  %161 = load i64, i64* %20, align 8, !tbaa !7
  br label %162

; <label>:162:                                    ; preds = %159, %154
  %163 = phi i64 [ %161, %159 ], [ %156, %154 ]
  %164 = load i8*, i8** %22, align 8, !tbaa !11
  %165 = add i64 %163, 1
  store i64 %165, i64* %20, align 8, !tbaa !7
  %166 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8 0, i8* %166, align 1, !tbaa !6
  %167 = load i64, i64* %10, align 8, !tbaa !2
  %168 = add i64 %58, 1
  %169 = add i64 %168, %167
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #12
  br label %183

; <label>:170:                                    ; preds = %57
  %171 = load i64, i64* %20, align 8, !tbaa !7
  %172 = load i64, i64* %21, align 8, !tbaa !10
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %177, label %174

; <label>:174:                                    ; preds = %170
  %175 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %2, i64 1) #11
  %176 = load i64, i64* %20, align 8, !tbaa !7
  br label %177

; <label>:177:                                    ; preds = %174, %170
  %178 = phi i64 [ %176, %174 ], [ %171, %170 ]
  %179 = load i8*, i8** %22, align 8, !tbaa !11
  %180 = add i64 %178, 1
  store i64 %180, i64* %20, align 8, !tbaa !7
  %181 = getelementptr inbounds i8, i8* %179, i64 %178
  store i8 0, i8* %181, align 1, !tbaa !6
  br label %182

; <label>:182:                                    ; preds = %57, %57, %177
  br label %183

; <label>:183:                                    ; preds = %57, %182, %162, %140, %128, %98, %88, %74
  %184 = phi i64 [ %58, %57 ], [ %58, %182 ], [ %169, %162 ], [ %145, %140 ], [ %58, %128 ], [ %58, %98 ], [ %58, %88 ], [ %58, %74 ]
  %185 = phi i32 [ %59, %57 ], [ %32, %182 ], [ %59, %162 ], [ %59, %140 ], [ %59, %128 ], [ %59, %98 ], [ %59, %88 ], [ %59, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #12
  %186 = load i8*, i8** %4, align 8, !tbaa !12
  br label %29

; <label>:187:                                    ; preds = %29
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #12
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %11) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @str_packsize(%struct.lua_State*) #0 {
  %2 = alloca %struct.Header, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Header* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #12
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #11
  store i8* %8, i8** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %10, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %11, align 4, !tbaa !33
  %12 = bitcast i32* %4 to i8*
  %13 = bitcast i32* %5 to i8*
  br label %14

; <label>:14:                                     ; preds = %34, %1
  %15 = phi i8* [ %8, %1 ], [ %36, %34 ]
  %16 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %17 = load i8, i8* %15, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %19

; <label>:19:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #12
  %20 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %16, i8** nonnull %3, i32* nonnull %4, i32* nonnull %5) #13
  %21 = or i32 %20, 1
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %19
  %24 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0)) #11
  br label %25

; <label>:25:                                     ; preds = %19, %23
  %26 = load i32, i32* %5, align 4, !tbaa !29
  %27 = load i32, i32* %4, align 4, !tbaa !29
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %4, align 4, !tbaa !29
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 2147483647, %29
  %31 = icmp ugt i64 %16, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %25
  %33 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0)) #11
  br label %34

; <label>:34:                                     ; preds = %25, %32
  %35 = add i64 %16, %29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #12
  %36 = load i8*, i8** %3, align 8, !tbaa !12
  br label %14

; <label>:37:                                     ; preds = %14
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #12
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #11
  store i8* %10, i8** %3, align 8, !tbaa !12
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12
  %12 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #11
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #11
  %14 = load i64, i64* %4, align 8, !tbaa !2
  %15 = call fastcc i64 @posrelatI(i64 %13, i64 %14) #13
  %16 = add i64 %15, -1
  %17 = icmp ugt i64 %16, %14
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %1
  %19 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0)) #11
  br label %20

; <label>:20:                                     ; preds = %1, %18
  %21 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %21, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1
  store i32 1, i32* %22, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 2
  store i32 1, i32* %23, align 4, !tbaa !33
  %24 = bitcast i32* %5 to i8*
  %25 = bitcast i32* %6 to i8*
  %26 = bitcast %union.Ftypes* %7 to i8*
  %27 = bitcast %union.Ftypes* %7 to float*
  %28 = getelementptr inbounds %union.Ftypes, %union.Ftypes* %7, i64 0, i32 0
  br label %29

; <label>:29:                                     ; preds = %98, %20
  %30 = phi i8* [ %10, %20 ], [ %102, %98 ]
  %31 = phi i32 [ 0, %20 ], [ %99, %98 ]
  %32 = phi i64 [ %16, %20 ], [ %101, %98 ]
  %33 = load i8, i8* %30, align 1, !tbaa !6
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %103, label %35

; <label>:35:                                     ; preds = %29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #12
  %36 = call fastcc i32 @getdetails(%struct.Header* nonnull %2, i64 %32, i8** nonnull %3, i32* nonnull %5, i32* nonnull %6) #13
  %37 = load i32, i32* %6, align 4, !tbaa !29
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %5, align 4, !tbaa !29
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = load i64, i64* %4, align 8, !tbaa !2
  %43 = sub i64 %42, %32
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %35
  %46 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #11
  br label %47

; <label>:47:                                     ; preds = %35, %45
  %48 = add i64 %32, %38
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0)) #11
  %49 = add nsw i32 %31, 1
  switch i32 %36, label %98 [
    i32 0, label %50
    i32 1, label %50
    i32 2, label %56
    i32 3, label %67
    i32 4, label %70
    i32 5, label %84
    i32 7, label %97
    i32 6, label %97
    i32 8, label %97
  ]

; <label>:50:                                     ; preds = %47, %47
  %51 = getelementptr inbounds i8, i8* %12, i64 %48
  %52 = load i32, i32* %22, align 8, !tbaa !32
  %53 = icmp eq i32 %36, 0
  %54 = zext i1 %53 to i32
  %55 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %51, i32 %52, i32 %39, i32 %54) #13
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %55) #11
  br label %98

; <label>:56:                                     ; preds = %47
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #12
  %57 = getelementptr inbounds i8, i8* %12, i64 %48
  %58 = load i32, i32* %22, align 8, !tbaa !32
  call fastcc void @copywithendian(i8* nonnull %26, i8* %57, i32 %39, i32 %58) #13
  %59 = icmp eq i32 %39, 4
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %56
  %61 = load volatile float, float* %27, align 8, !tbaa !6
  %62 = fpext float %61 to double
  br label %65

; <label>:63:                                     ; preds = %56
  %64 = load volatile double, double* %28, align 8, !tbaa !6
  br label %65

; <label>:65:                                     ; preds = %63, %60
  %66 = phi double [ %62, %60 ], [ %64, %63 ]
  call void @lua_pushnumber(%struct.lua_State* %0, double %66) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #12
  br label %98

; <label>:67:                                     ; preds = %47
  %68 = getelementptr inbounds i8, i8* %12, i64 %48
  %69 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %68, i64 %40) #11
  br label %98

; <label>:70:                                     ; preds = %47
  %71 = getelementptr inbounds i8, i8* %12, i64 %48
  %72 = load i32, i32* %22, align 8, !tbaa !32
  %73 = call fastcc i64 @unpackint(%struct.lua_State* %0, i8* %71, i32 %72, i32 %39, i32 0) #13
  %74 = load i64, i64* %4, align 8, !tbaa !2
  %75 = add i64 %48, %40
  %76 = sub i64 %74, %75
  %77 = icmp ugt i64 %73, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %70
  %79 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #11
  br label %80

; <label>:80:                                     ; preds = %70, %78
  %81 = getelementptr inbounds i8, i8* %71, i64 %40
  %82 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %81, i64 %73) #11
  %83 = add i64 %73, %48
  br label %98

; <label>:84:                                     ; preds = %47
  %85 = getelementptr inbounds i8, i8* %12, i64 %48
  %86 = call i64 @strlen(i8* %85) #15
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = add i64 %88, %48
  %90 = load i64, i64* %4, align 8, !tbaa !2
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %84
  %93 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #11
  br label %94

; <label>:94:                                     ; preds = %92, %84
  %95 = call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %85, i64 %88) #11
  %96 = add i64 %89, 1
  br label %98

; <label>:97:                                     ; preds = %47, %47, %47
  br label %98

; <label>:98:                                     ; preds = %47, %97, %94, %80, %67, %65, %50
  %99 = phi i32 [ %49, %47 ], [ %31, %97 ], [ %49, %94 ], [ %49, %80 ], [ %49, %67 ], [ %49, %65 ], [ %49, %50 ]
  %100 = phi i64 [ %48, %47 ], [ %48, %97 ], [ %96, %94 ], [ %83, %80 ], [ %48, %67 ], [ %48, %65 ], [ %48, %50 ]
  %101 = add i64 %100, %40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12
  %102 = load i8*, i8** %3, align 8, !tbaa !12
  br label %29

; <label>:103:                                    ; preds = %29
  %104 = add i64 %32, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %104) #11
  %105 = add nsw i32 %31, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #12
  ret i32 %105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @getendpos(%struct.lua_State*, i64, i64) unnamed_addr #0 {
  %4 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %1) #11
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

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #11
  ret i32 0
}

; Function Attrs: minsize optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #11
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #11
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #11
  %11 = load i64, i64* %3, align 8, !tbaa !2
  %12 = call fastcc i64 @posrelatI(i64 %10, i64 %11) #13
  %13 = add i64 %12, -1
  %14 = icmp ugt i64 %13, %11
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  call void @lua_pushnil(%struct.lua_State* %0) #11
  br label %120

; <label>:16:                                     ; preds = %2
  %17 = icmp ne i32 %1, 0
  br i1 %17, label %18, label %72

; <label>:18:                                     ; preds = %16
  %19 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #11
  %20 = icmp eq i32 %19, 0
  %21 = load i64, i64* %4, align 8, !tbaa !2
  br i1 %20, label %22, label %33

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %28
  %24 = phi i64 [ %31, %28 ], [ 0, %22 ]
  %25 = getelementptr inbounds i8, i8* %9, i64 %24
  %26 = call i8* @strpbrk(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #15
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %72

; <label>:28:                                     ; preds = %23
  %29 = call i64 @strlen(i8* %25) #15
  %30 = add i64 %24, 1
  %31 = add i64 %30, %29
  %32 = icmp ugt i64 %31, %21
  br i1 %32, label %33, label %23

; <label>:33:                                     ; preds = %28, %18
  %34 = getelementptr inbounds i8, i8* %8, i64 %13
  %35 = load i64, i64* %3, align 8, !tbaa !2
  %36 = sub i64 %35, %13
  %37 = icmp eq i64 %21, 0
  br i1 %37, label %62, label %38

; <label>:38:                                     ; preds = %33
  %39 = icmp ugt i64 %21, %36
  br i1 %39, label %119, label %40

; <label>:40:                                     ; preds = %38
  %41 = add i64 %21, -1
  %42 = sub i64 %36, %41
  %43 = getelementptr inbounds i8, i8* %9, i64 1
  br label %44

; <label>:44:                                     ; preds = %57, %40
  %45 = phi i8* [ %34, %40 ], [ %54, %57 ]
  %46 = phi i64 [ %42, %40 ], [ %61, %57 ]
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %119, label %48

; <label>:48:                                     ; preds = %44
  %49 = load i8, i8* %9, align 1, !tbaa !6
  %50 = sext i8 %49 to i32
  %51 = call i8* @memchr(i8* %45, i32 %50, i64 %46) #15
  %52 = icmp eq i8* %51, null
  br i1 %52, label %119, label %53

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds i8, i8* %51, i64 1
  %55 = call i32 @memcmp(i8* nonnull %54, i8* nonnull %43, i64 %41) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

; <label>:57:                                     ; preds = %53
  %58 = ptrtoint i8* %54 to i64
  %59 = ptrtoint i8* %45 to i64
  %60 = add i64 %46, %59
  %61 = sub i64 %60, %58
  br label %44

; <label>:62:                                     ; preds = %33
  %63 = icmp eq i8* %34, null
  br i1 %63, label %119, label %64

; <label>:64:                                     ; preds = %53, %62
  %65 = phi i8* [ %34, %62 ], [ %51, %53 ]
  %66 = ptrtoint i8* %65 to i64
  %67 = ptrtoint i8* %8 to i64
  %68 = sub i64 %66, %67
  %69 = add nsw i64 %68, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %69) #11
  %70 = load i64, i64* %4, align 8, !tbaa !2
  %71 = add i64 %68, %70
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %71) #11
  br label %120

; <label>:72:                                     ; preds = %23, %16
  %73 = bitcast %struct.MatchState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 552, i8* nonnull %73) #12
  %74 = getelementptr inbounds i8, i8* %8, i64 %13
  %75 = load i8, i8* %9, align 1, !tbaa !6
  %76 = icmp eq i8 %75, 94
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %72
  %78 = load i64, i64* %4, align 8, !tbaa !2
  br label %83

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds i8, i8* %9, i64 1
  %81 = load i64, i64* %4, align 8, !tbaa !2
  %82 = add i64 %81, -1
  store i64 %82, i64* %4, align 8, !tbaa !2
  br label %83

; <label>:83:                                     ; preds = %77, %79
  %84 = phi i64 [ %82, %79 ], [ %78, %77 ]
  %85 = phi i8* [ %80, %79 ], [ %9, %77 ]
  %86 = load i64, i64* %3, align 8, !tbaa !2
  %87 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  store %struct.lua_State* %0, %struct.lua_State** %87, align 8, !tbaa !17
  %88 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 4
  store i32 200, i32* %88, align 8, !tbaa !20
  %89 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0
  store i8* %8, i8** %89, align 8, !tbaa !21
  %90 = getelementptr inbounds i8, i8* %8, i64 %86
  %91 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1
  store i8* %90, i8** %91, align 8, !tbaa !22
  %92 = getelementptr inbounds i8, i8* %85, i64 %84
  %93 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2
  store i8* %92, i8** %93, align 8, !tbaa !23
  %94 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 5
  br label %95

; <label>:95:                                     ; preds = %114, %83
  %96 = phi i8* [ %74, %83 ], [ %115, %114 ]
  store i8 0, i8* %94, align 4, !tbaa !28
  %97 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %96, i8* %85) #13
  %98 = icmp eq i8* %97, null
  br i1 %98, label %111, label %99

; <label>:99:                                     ; preds = %95
  br i1 %17, label %100, label %109

; <label>:100:                                    ; preds = %99
  %101 = ptrtoint i8* %96 to i64
  %102 = ptrtoint i8* %8 to i64
  %103 = sub i64 1, %102
  %104 = add i64 %103, %101
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %104) #11
  %105 = ptrtoint i8* %97 to i64
  %106 = sub i64 %105, %102
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %106) #11
  %107 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* null, i8* null) #13
  %108 = add nsw i32 %107, 2
  br label %117

; <label>:109:                                    ; preds = %99
  %110 = call fastcc i32 @push_captures(%struct.MatchState* nonnull %5, i8* %96, i8* nonnull %97) #13
  br label %117

; <label>:111:                                    ; preds = %95
  %112 = load i8*, i8** %91, align 8, !tbaa !22
  %113 = icmp ult i8* %96, %112
  br i1 %113, label %114, label %116

; <label>:114:                                    ; preds = %111
  %115 = getelementptr inbounds i8, i8* %96, i64 1
  br i1 %76, label %116, label %95

; <label>:116:                                    ; preds = %114, %111
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %73) #12
  br label %119

; <label>:117:                                    ; preds = %100, %109
  %118 = phi i32 [ %110, %109 ], [ %108, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 552, i8* nonnull %73) #12
  br label %120

; <label>:119:                                    ; preds = %48, %44, %38, %116, %62
  call void @lua_pushnil(%struct.lua_State* %0) #11
  br label %120

; <label>:120:                                    ; preds = %117, %64, %119, %15
  %121 = phi i32 [ 1, %15 ], [ 1, %119 ], [ %118, %117 ], [ 2, %64 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  ret i32 %121
}

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @match(%struct.MatchState*, i8*, i8*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !20
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8, !tbaa !20
  %7 = icmp eq i32 %5, 0
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br i1 %7, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !17
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0)) #11
  br label %12

; <label>:12:                                     ; preds = %3, %9
  %13 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %15 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %16 = bitcast i8** %15 to i64*
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  br label %18

; <label>:18:                                     ; preds = %116, %12
  %19 = phi i8* [ %2, %12 ], [ %117, %116 ]
  %20 = phi i8* [ %1, %12 ], [ %118, %116 ]
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = getelementptr inbounds i8, i8* %20, i64 1
  br label %23

; <label>:23:                                     ; preds = %188, %18
  %24 = phi i8* [ %19, %18 ], [ %189, %188 ]
  br label %25

; <label>:25:                                     ; preds = %138, %23
  %26 = phi i8* [ %127, %138 ], [ %24, %23 ]
  %27 = load i8*, i8** %13, align 8, !tbaa !23
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %229, label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8, i8* %26, align 1, !tbaa !6
  %31 = sext i8 %30 to i32
  switch i32 %31, label %180 [
    i32 40, label %32
    i32 41, label %41
    i32 36, label %70
    i32 37, label %77
  ]

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds i8, i8* %26, i64 1
  %34 = load i8, i8* %33, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 41
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds i8, i8* %26, i64 2
  %38 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %20, i8* nonnull %37, i32 -2) #13
  br label %229

; <label>:39:                                     ; preds = %32
  %40 = tail call fastcc i8* @start_capture(%struct.MatchState* nonnull %0, i8* %20, i8* nonnull %33, i32 -1) #13
  br label %229

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds i8, i8* %26, i64 1
  %43 = load i8, i8* %17, align 4, !tbaa !28
  %44 = zext i8 %43 to i64
  br label %45

; <label>:45:                                     ; preds = %49, %41
  %46 = phi i64 [ %47, %49 ], [ %44, %41 ]
  %47 = add nsw i64 %46, -1
  %48 = icmp sgt i64 %46, 0
  br i1 %48, label %49, label %53

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %47, i32 1
  %51 = load i64, i64* %50, align 8, !tbaa !34
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %56, label %45

; <label>:53:                                     ; preds = %45
  %54 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !17
  %55 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #11
  br label %58

; <label>:56:                                     ; preds = %49
  %57 = trunc i64 %47 to i32
  br label %58

; <label>:58:                                     ; preds = %56, %53
  %59 = phi i32 [ %55, %53 ], [ %57, %56 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %60
  %62 = bitcast %struct.anon* %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !36
  %64 = ptrtoint i8* %20 to i64
  %65 = sub i64 %64, %63
  %66 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %60, i32 1
  store i64 %65, i64* %66, align 8, !tbaa !34
  %67 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %20, i8* nonnull %42) #11
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %229

; <label>:69:                                     ; preds = %58
  store i64 -1, i64* %66, align 8, !tbaa !34
  br label %229

; <label>:70:                                     ; preds = %29
  %71 = getelementptr inbounds i8, i8* %26, i64 1
  %72 = icmp eq i8* %71, %27
  br i1 %72, label %73, label %180

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %15, align 8, !tbaa !22
  %75 = icmp eq i8* %20, %74
  %76 = select i1 %75, i8* %20, i8* null
  br label %229

; <label>:77:                                     ; preds = %29
  %78 = getelementptr inbounds i8, i8* %26, i64 1
  %79 = load i8, i8* %78, align 1, !tbaa !6
  %80 = sext i8 %79 to i32
  switch i32 %80, label %180 [
    i32 98, label %81
    i32 102, label %119
    i32 48, label %143
    i32 49, label %143
    i32 50, label %143
    i32 51, label %143
    i32 52, label %143
    i32 53, label %143
    i32 54, label %143
    i32 55, label %143
    i32 56, label %143
    i32 57, label %143
  ]

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %26, i64 2
  %83 = getelementptr inbounds i8, i8* %27, i64 -1
  %84 = icmp ugt i8* %83, %82
  br i1 %84, label %88, label %85

; <label>:85:                                     ; preds = %81
  %86 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !17
  %87 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0)) #11
  br label %88

; <label>:88:                                     ; preds = %85, %81
  %89 = load i8, i8* %20, align 1, !tbaa !6
  %90 = load i8, i8* %82, align 1, !tbaa !6
  %91 = icmp eq i8 %89, %90
  br i1 %91, label %92, label %229

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %26, i64 3
  %94 = load i8, i8* %93, align 1, !tbaa !6
  %95 = load i8*, i8** %15, align 8, !tbaa !22
  br label %96

; <label>:96:                                     ; preds = %111, %92
  %97 = phi i8* [ %20, %92 ], [ %99, %111 ]
  %98 = phi i32 [ 1, %92 ], [ %112, %111 ]
  %99 = getelementptr inbounds i8, i8* %97, i64 1
  %100 = icmp ult i8* %99, %95
  br i1 %100, label %101, label %229

; <label>:101:                                    ; preds = %96
  %102 = load i8, i8* %99, align 1, !tbaa !6
  %103 = icmp eq i8 %102, %94
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %101
  %105 = add nsw i32 %98, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %111

; <label>:107:                                    ; preds = %101
  %108 = icmp eq i8 %102, %89
  %109 = zext i1 %108 to i32
  %110 = add nsw i32 %98, %109
  br label %111

; <label>:111:                                    ; preds = %107, %104
  %112 = phi i32 [ %110, %107 ], [ %105, %104 ]
  br label %96

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds i8, i8* %97, i64 2
  %115 = getelementptr inbounds i8, i8* %26, i64 4
  br label %116

; <label>:116:                                    ; preds = %113, %178, %227
  %117 = phi i8* [ %181, %227 ], [ %179, %178 ], [ %115, %113 ]
  %118 = phi i8* [ %228, %227 ], [ %175, %178 ], [ %114, %113 ]
  br label %18

; <label>:119:                                    ; preds = %77
  %120 = getelementptr inbounds i8, i8* %26, i64 2
  %121 = load i8, i8* %120, align 1, !tbaa !6
  %122 = icmp eq i8 %121, 91
  br i1 %122, label %126, label %123

; <label>:123:                                    ; preds = %119
  %124 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !17
  %125 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #11
  br label %126

; <label>:126:                                    ; preds = %119, %123
  %127 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %120) #13
  %128 = load i8*, i8** %14, align 8, !tbaa !21
  %129 = icmp eq i8* %20, %128
  br i1 %129, label %132, label %130

; <label>:130:                                    ; preds = %126
  %131 = load i8, i8* %21, align 1, !tbaa !6
  br label %132

; <label>:132:                                    ; preds = %126, %130
  %133 = phi i8 [ %131, %130 ], [ 0, %126 ]
  %134 = zext i8 %133 to i32
  %135 = getelementptr inbounds i8, i8* %127, i64 -1
  %136 = tail call fastcc i32 @matchbracketclass(i32 %134, i8* nonnull %120, i8* nonnull %135) #13
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %229

; <label>:138:                                    ; preds = %132
  %139 = load i8, i8* %20, align 1, !tbaa !6
  %140 = zext i8 %139 to i32
  %141 = tail call fastcc i32 @matchbracketclass(i32 %140, i8* nonnull %120, i8* nonnull %135) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %229, label %25

; <label>:143:                                    ; preds = %77, %77, %77, %77, %77, %77, %77, %77, %77, %77
  %144 = zext i8 %79 to i32
  %145 = add nsw i32 %144, -49
  %146 = icmp ult i8 %79, 49
  br i1 %146, label %156, label %147

; <label>:147:                                    ; preds = %143
  %148 = load i8, i8* %17, align 4, !tbaa !28
  %149 = zext i8 %148 to i32
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %156

; <label>:151:                                    ; preds = %147
  %152 = sext i32 %145 to i64
  %153 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %152, i32 1
  %154 = load i64, i64* %153, align 8, !tbaa !34
  %155 = icmp eq i64 %154, -1
  br i1 %155, label %156, label %163

; <label>:156:                                    ; preds = %151, %147, %143
  %157 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !17
  %158 = add nsw i32 %144, -48
  %159 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %158) #11
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %160, i32 1
  %162 = load i64, i64* %161, align 8, !tbaa !34
  br label %163

; <label>:163:                                    ; preds = %156, %151
  %164 = phi i64 [ %152, %151 ], [ %160, %156 ]
  %165 = phi i64 [ %154, %151 ], [ %162, %156 ]
  %166 = load i64, i64* %16, align 8, !tbaa !22
  %167 = ptrtoint i8* %20 to i64
  %168 = sub i64 %166, %167
  %169 = icmp ult i64 %168, %165
  br i1 %169, label %229, label %170

; <label>:170:                                    ; preds = %163
  %171 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 6, i64 %164, i32 0
  %172 = load i8*, i8** %171, align 8, !tbaa !36
  %173 = tail call i32 @memcmp(i8* %172, i8* %20, i64 %165) #15
  %174 = icmp ne i32 %173, 0
  %175 = getelementptr inbounds i8, i8* %20, i64 %165
  %176 = icmp eq i8* %175, null
  %177 = or i1 %176, %174
  br i1 %177, label %229, label %178

; <label>:178:                                    ; preds = %170
  %179 = getelementptr inbounds i8, i8* %26, i64 2
  br label %116

; <label>:180:                                    ; preds = %29, %77, %70
  %181 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %26) #13
  %182 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %20, i8* nonnull %26, i8* nonnull %181) #13
  %183 = icmp eq i32 %182, 0
  %184 = load i8, i8* %181, align 1, !tbaa !6
  br i1 %183, label %185, label %190

; <label>:185:                                    ; preds = %180
  switch i8 %184, label %229 [
    i8 42, label %186
    i8 63, label %186
    i8 45, label %186
  ]

; <label>:186:                                    ; preds = %185, %185, %185
  %187 = getelementptr inbounds i8, i8* %181, i64 1
  br label %188

; <label>:188:                                    ; preds = %186, %192
  %189 = phi i8* [ %187, %186 ], [ %193, %192 ]
  br label %23

; <label>:190:                                    ; preds = %180
  %191 = sext i8 %184 to i32
  switch i32 %191, label %227 [
    i32 63, label %192
    i32 43, label %196
    i32 42, label %198
    i32 45, label %217
  ]

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds i8, i8* %181, i64 1
  %194 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %22, i8* nonnull %193) #13
  %195 = icmp eq i8* %194, null
  br i1 %195, label %188, label %229

; <label>:196:                                    ; preds = %190
  %197 = getelementptr inbounds i8, i8* %20, i64 1
  br label %198

; <label>:198:                                    ; preds = %190, %196
  %199 = phi i8* [ %197, %196 ], [ %20, %190 ]
  br label %200

; <label>:200:                                    ; preds = %200, %198
  %201 = phi i64 [ 0, %198 ], [ %205, %200 ]
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %202, i8* %26, i8* nonnull %181) #11
  %204 = icmp eq i32 %203, 0
  %205 = add nuw nsw i64 %201, 1
  br i1 %204, label %206, label %200

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds i8, i8* %181, i64 1
  br label %208

; <label>:208:                                    ; preds = %211, %206
  %209 = phi i64 [ %201, %206 ], [ %216, %211 ]
  %210 = icmp sgt i64 %209, -1
  br i1 %210, label %211, label %229

; <label>:211:                                    ; preds = %208
  %212 = getelementptr inbounds i8, i8* %199, i64 %209
  %213 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %212, i8* nonnull %207) #11
  %214 = icmp eq i8* %213, null
  %215 = sext i1 %214 to i64
  %216 = add nsw i64 %209, %215
  br i1 %214, label %208, label %229

; <label>:217:                                    ; preds = %190
  %218 = getelementptr inbounds i8, i8* %181, i64 1
  br label %219

; <label>:219:                                    ; preds = %223, %217
  %220 = phi i8* [ %20, %217 ], [ %226, %223 ]
  %221 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %220, i8* nonnull %218) #11
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %229

; <label>:223:                                    ; preds = %219
  %224 = tail call fastcc i32 @singlematch(%struct.MatchState* %0, i8* %220, i8* %26, i8* nonnull %181) #11
  %225 = icmp eq i32 %224, 0
  %226 = getelementptr inbounds i8, i8* %220, i64 1
  br i1 %225, label %229, label %219

; <label>:227:                                    ; preds = %190
  %228 = getelementptr inbounds i8, i8* %20, i64 1
  br label %116

; <label>:229:                                    ; preds = %185, %192, %170, %163, %88, %132, %138, %25, %96, %219, %223, %208, %211, %69, %58, %73, %39, %36
  %230 = phi i8* [ %76, %73 ], [ %38, %36 ], [ %40, %39 ], [ %67, %58 ], [ null, %69 ], [ null, %208 ], [ %213, %211 ], [ %221, %219 ], [ null, %223 ], [ null, %96 ], [ %20, %25 ], [ null, %138 ], [ null, %132 ], [ %194, %192 ], [ null, %185 ], [ null, %170 ], [ null, %163 ], [ null, %88 ]
  %231 = load i32, i32* %4, align 8, !tbaa !20
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 8, !tbaa !20
  ret i8* %230
}

; Function Attrs: minsize nounwind optsize uwtable
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
  tail call void @luaL_checkstack(%struct.lua_State* %12, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #11
  br label %13

; <label>:13:                                     ; preds = %16, %3
  %14 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %13
  tail call fastcc void @push_onecapture(%struct.MatchState* %0, i32 %14, i8* %1, i8* %2) #13
  %17 = add nuw nsw i32 %14, 1
  br label %13

; <label>:18:                                     ; preds = %13
  ret i32 %10
}

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @start_capture(%struct.MatchState*, i8*, i8*, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 5
  %6 = load i8, i8* %5, align 4, !tbaa !28
  %7 = icmp ugt i8 %6, 31
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !17
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #11
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
  %18 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %1, i8* %2) #13
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #11
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
  %29 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #11
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

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @matchbracketclass(i32, i8* readonly, i8* readnone) unnamed_addr #6 {
  %4 = getelementptr inbounds i8, i8* %1, i64 1
  %5 = load i8, i8* %4, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 94
  %7 = select i1 %6, i8* %4, i8* %1
  %8 = xor i1 %6, true
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %23, %3
  %11 = phi i8* [ %7, %3 ], [ %24, %23 ]
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = icmp ult i8* %12, %2
  br i1 %13, label %14, label %40

; <label>:14:                                     ; preds = %10
  %15 = load i8, i8* %12, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 37
  %17 = getelementptr inbounds i8, i8* %11, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !6
  br i1 %16, label %19, label %25

; <label>:19:                                     ; preds = %14
  %20 = zext i8 %18 to i32
  %21 = tail call fastcc i32 @match_class(i32 %0, i32 %20) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

; <label>:23:                                     ; preds = %19, %33, %30, %37
  %24 = phi i8* [ %17, %19 ], [ %28, %33 ], [ %28, %30 ], [ %12, %37 ]
  br label %10

; <label>:25:                                     ; preds = %14
  %26 = icmp eq i8 %18, 45
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds i8, i8* %11, i64 3
  %29 = icmp ult i8* %28, %2
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %27
  %31 = zext i8 %15 to i32
  %32 = icmp sgt i32 %31, %0
  br i1 %32, label %23, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i8, i8* %28, align 1, !tbaa !6
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, %0
  br i1 %36, label %23, label %42

; <label>:37:                                     ; preds = %27, %25
  %38 = zext i8 %15 to i32
  %39 = icmp eq i32 %38, %0
  br i1 %39, label %42, label %23

; <label>:40:                                     ; preds = %10
  %41 = xor i32 %9, 1
  br label %42

; <label>:42:                                     ; preds = %37, %33, %19, %40
  %43 = phi i32 [ %41, %40 ], [ %9, %19 ], [ %9, %33 ], [ %9, %37 ]
  ret i32 %43
}

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @singlematch(%struct.MatchState* nocapture readonly, i8* readonly, i8* readonly, i8* readnone) unnamed_addr #6 {
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
  %17 = tail call fastcc i32 @match_class(i32 %10, i32 %16) #13
  br label %24

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %3, i64 -1
  %20 = tail call fastcc i32 @matchbracketclass(i32 %10, i8* nonnull %2, i8* nonnull %19) #13
  br label %24

; <label>:21:                                     ; preds = %8
  %22 = icmp eq i8 %11, %9
  %23 = zext i1 %22 to i32
  br label %24

; <label>:24:                                     ; preds = %13, %18, %21, %8, %4
  %25 = phi i32 [ 0, %4 ], [ %23, %21 ], [ %20, %18 ], [ %17, %13 ], [ 1, %8 ]
  ret i32 %25
}

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #6 {
  %3 = tail call i32 @tolower(i32 %1) #15
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
  %5 = tail call i16** @__ctype_b_loc() #14
  %6 = load i16*, i16** %5, align 8, !tbaa !12
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i16, i16* %6, i64 %7
  %9 = load i16, i16* %8, align 2, !tbaa !13
  %10 = and i16 %9, 1024
  %11 = zext i16 %10 to i32
  br label %91

; <label>:12:                                     ; preds = %2
  %13 = tail call i16** @__ctype_b_loc() #14
  %14 = load i16*, i16** %13, align 8, !tbaa !12
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2, !tbaa !13
  %18 = and i16 %17, 2
  %19 = zext i16 %18 to i32
  br label %91

; <label>:20:                                     ; preds = %2
  %21 = tail call i16** @__ctype_b_loc() #14
  %22 = load i16*, i16** %21, align 8, !tbaa !12
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i16, i16* %22, i64 %23
  %25 = load i16, i16* %24, align 2, !tbaa !13
  %26 = and i16 %25, 2048
  %27 = zext i16 %26 to i32
  br label %91

; <label>:28:                                     ; preds = %2
  %29 = tail call i16** @__ctype_b_loc() #14
  %30 = load i16*, i16** %29, align 8, !tbaa !12
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds i16, i16* %30, i64 %31
  %33 = load i16, i16* %32, align 2, !tbaa !13
  %34 = and i16 %33, -32768
  %35 = zext i16 %34 to i32
  br label %91

; <label>:36:                                     ; preds = %2
  %37 = tail call i16** @__ctype_b_loc() #14
  %38 = load i16*, i16** %37, align 8, !tbaa !12
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  %41 = load i16, i16* %40, align 2, !tbaa !13
  %42 = and i16 %41, 512
  %43 = zext i16 %42 to i32
  br label %91

; <label>:44:                                     ; preds = %2
  %45 = tail call i16** @__ctype_b_loc() #14
  %46 = load i16*, i16** %45, align 8, !tbaa !12
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i16, i16* %46, i64 %47
  %49 = load i16, i16* %48, align 2, !tbaa !13
  %50 = and i16 %49, 4
  %51 = zext i16 %50 to i32
  br label %91

; <label>:52:                                     ; preds = %2
  %53 = tail call i16** @__ctype_b_loc() #14
  %54 = load i16*, i16** %53, align 8, !tbaa !12
  %55 = sext i32 %0 to i64
  %56 = getelementptr inbounds i16, i16* %54, i64 %55
  %57 = load i16, i16* %56, align 2, !tbaa !13
  %58 = and i16 %57, 8192
  %59 = zext i16 %58 to i32
  br label %91

; <label>:60:                                     ; preds = %2
  %61 = tail call i16** @__ctype_b_loc() #14
  %62 = load i16*, i16** %61, align 8, !tbaa !12
  %63 = sext i32 %0 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  %65 = load i16, i16* %64, align 2, !tbaa !13
  %66 = and i16 %65, 256
  %67 = zext i16 %66 to i32
  br label %91

; <label>:68:                                     ; preds = %2
  %69 = tail call i16** @__ctype_b_loc() #14
  %70 = load i16*, i16** %69, align 8, !tbaa !12
  %71 = sext i32 %0 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !13
  %74 = and i16 %73, 8
  %75 = zext i16 %74 to i32
  br label %91

; <label>:76:                                     ; preds = %2
  %77 = tail call i16** @__ctype_b_loc() #14
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
  %87 = tail call i16** @__ctype_b_loc() #14
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

; Function Attrs: minsize nounwind optsize readonly
declare i32 @tolower(i32) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %7 = call fastcc i64 @get_onecapture(%struct.MatchState* %0, i32 %1, i8* %2, i8* %3, i8** nonnull %5) #13
  %8 = icmp eq i64 %7, -2
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !17
  %12 = load i8*, i8** %5, align 8, !tbaa !12
  %13 = tail call i8* @lua_pushlstring(%struct.lua_State* %11, i8* %12, i64 %7) #11
  br label %14

; <label>:14:                                     ; preds = %4, %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %15) #11
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
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #11
  br label %41

; <label>:33:                                     ; preds = %21
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !17
  %36 = load i64, i64* %26, align 8, !tbaa !36
  %37 = bitcast %struct.MatchState* %0 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !21
  %39 = add i64 %36, 1
  %40 = sub i64 %39, %38
  tail call void @lua_pushinteger(%struct.lua_State* %35, i64 %40) #11
  br label %41

; <label>:41:                                     ; preds = %29, %33, %21, %17
  %42 = phi i64 [ %20, %17 ], [ %24, %21 ], [ -2, %33 ], [ -1, %29 ]
  ret i64 %42
}

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #8

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @addlenmod(i8*, i8* nocapture readonly) unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %0) #15
  %4 = tail call i64 @strlen(i8* %1) #15
  %5 = add i64 %3, -1
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %8 = getelementptr inbounds i8, i8* %0, i64 %3
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  %10 = tail call i8* @strcpy(i8* nonnull %9, i8* %1) #11
  %11 = add i64 %4, %3
  %12 = add i64 %11, -1
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 %7, i8* %13, align 1, !tbaa !6
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  store i8 0, i8* %14, align 1, !tbaa !6
  ret void
}

; Function Attrs: minsize optsize
declare double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #9

; Function Attrs: minsize optsize
declare i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: minsize nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #8

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare %struct.lconv* @localeconv() local_unnamed_addr #8

; Function Attrs: minsize optsize
declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @gmatch_aux(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001003) #11
  %3 = getelementptr inbounds i8, i8* %2, i64 24
  %4 = bitcast i8* %3 to %struct.MatchState*
  %5 = getelementptr inbounds i8, i8* %2, i64 48
  %6 = bitcast i8* %5 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !tbaa !37
  %7 = bitcast i8* %2 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = getelementptr inbounds i8, i8* %2, i64 60
  %12 = getelementptr inbounds i8, i8* %2, i64 8
  %13 = bitcast i8* %12 to i8**
  %14 = getelementptr inbounds i8, i8* %2, i64 16
  %15 = bitcast i8* %14 to i8**
  br label %16

; <label>:16:                                     ; preds = %29, %1
  %17 = phi i8* [ %8, %1 ], [ %30, %29 ]
  %18 = load i8*, i8** %10, align 8, !tbaa !38
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %31, label %20

; <label>:20:                                     ; preds = %16
  store i8 0, i8* %11, align 4, !tbaa !28
  %21 = load i8*, i8** %13, align 8, !tbaa !26
  %22 = tail call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %17, i8* %21) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %15, align 8, !tbaa !27
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  store i8* %22, i8** %15, align 8, !tbaa !27
  store i8* %22, i8** %7, align 8, !tbaa !24
  %28 = tail call fastcc i32 @push_captures(%struct.MatchState* nonnull %4, i8* %17, i8* nonnull %22) #13
  br label %31

; <label>:29:                                     ; preds = %24, %20
  %30 = getelementptr inbounds i8, i8* %17, i64 1
  br label %16

; <label>:31:                                     ; preds = %16, %27
  %32 = phi i32 [ %28, %27 ], [ 0, %16 ]
  ret i32 %32
}

; Function Attrs: minsize optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #7

; Function Attrs: minsize optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @getdetails(%struct.Header* nocapture, i64, i8** nocapture, i32* nocapture, i32* nocapture) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @getoption(%struct.Header* %0, i8** %2, i32* %3) #13
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #12
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
  %16 = call fastcc i32 @getoption(%struct.Header* %0, i8** nonnull %2, i32* nonnull %6) #13
  %17 = icmp eq i32 %16, 3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %15, %11
  %22 = phi i32 [ %18, %15 ], [ %9, %11 ]
  %23 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !30
  %25 = tail call i32 @luaL_argerror(%struct.lua_State* %24, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0)) #11
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
  %44 = tail call i32 @luaL_argerror(%struct.lua_State* %43, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #11
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #12
  ret i32 %7
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @packint(%struct.luaL_Buffer*, i64, i32, i32, i32) unnamed_addr #0 {
  %6 = sext i32 %3 to i64
  %7 = tail call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %0, i64 %6) #11
  %8 = trunc i64 %1 to i8
  %9 = icmp ne i32 %2, 0
  %10 = add nsw i32 %3, -1
  %11 = sext i32 %10 to i64
  %12 = select i1 %9, i64 0, i64 %11
  %13 = getelementptr inbounds i8, i8* %7, i64 %12
  store i8 %8, i8* %13, align 1, !tbaa !6
  br label %14

; <label>:14:                                     ; preds = %18, %5
  %15 = phi i64 [ %1, %5 ], [ %19, %18 ]
  %16 = phi i32 [ 1, %5 ], [ %25, %18 ]
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %14
  %19 = lshr i64 %15, 8
  %20 = trunc i64 %19 to i8
  %21 = sub nsw i32 %10, %16
  %22 = select i1 %9, i32 %16, i32 %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %7, i64 %23
  store i8 %20, i8* %24, align 1, !tbaa !6
  %25 = add nuw nsw i32 %16, 1
  br label %14

; <label>:26:                                     ; preds = %14
  %27 = icmp ne i32 %4, 0
  %28 = icmp sgt i32 %3, 8
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %30, %34
  %32 = phi i32 [ %39, %34 ], [ 8, %30 ]
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %31
  %35 = sub nsw i32 %10, %32
  %36 = select i1 %9, i32 %32, i32 %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %7, i64 %37
  store i8 -1, i8* %38, align 1, !tbaa !6
  %39 = add nuw nsw i32 %32, 1
  br label %31

; <label>:40:                                     ; preds = %31, %26
  %41 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %42 = load i64, i64* %41, align 8, !tbaa !7
  %43 = add i64 %42, %6
  store i64 %43, i64* %41, align 8, !tbaa !7
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @copywithendian(i8*, i8*, i32, i32) unnamed_addr #10 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %17

; <label>:6:                                      ; preds = %4
  br label %7

; <label>:7:                                      ; preds = %6, %12
  %8 = phi i8* [ %14, %12 ], [ %1, %6 ]
  %9 = phi i32 [ %13, %12 ], [ %2, %6 ]
  %10 = phi i8* [ %16, %12 ], [ %0, %6 ]
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %31, label %12

; <label>:12:                                     ; preds = %7
  %13 = add nsw i32 %9, -1
  %14 = getelementptr inbounds i8, i8* %8, i64 1
  %15 = load volatile i8, i8* %8, align 1, !tbaa !6
  %16 = getelementptr inbounds i8, i8* %10, i64 1
  store volatile i8 %15, i8* %10, align 1, !tbaa !6
  br label %7

; <label>:17:                                     ; preds = %4
  %18 = add nsw i32 %2, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  br label %21

; <label>:21:                                     ; preds = %26, %17
  %22 = phi i8* [ %1, %17 ], [ %28, %26 ]
  %23 = phi i32 [ %2, %17 ], [ %27, %26 ]
  %24 = phi i8* [ %20, %17 ], [ %30, %26 ]
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %31, label %26

; <label>:26:                                     ; preds = %21
  %27 = add nsw i32 %23, -1
  %28 = getelementptr inbounds i8, i8* %22, i64 1
  %29 = load volatile i8, i8* %22, align 1, !tbaa !6
  %30 = getelementptr inbounds i8, i8* %24, i64 -1
  store volatile i8 %29, i8* %24, align 1, !tbaa !6
  br label %21

; <label>:31:                                     ; preds = %21, %7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @getoption(%struct.Header* nocapture, i8** nocapture, i32* nocapture) unnamed_addr #0 {
  %4 = load i8*, i8** %1, align 8, !tbaa !12
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %5, i8** %1, align 8, !tbaa !12
  %6 = load i8, i8* %4, align 1, !tbaa !6
  %7 = sext i8 %6 to i32
  store i32 0, i32* %2, align 4, !tbaa !29
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
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:9:                                      ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:10:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:11:                                     ; preds = %3
  store i32 2, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:12:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:13:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:14:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:15:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:16:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:17:                                     ; preds = %3
  store i32 4, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:18:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:19:                                     ; preds = %3
  store i32 8, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:20:                                     ; preds = %3
  %21 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4) #13
  store i32 %21, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:22:                                     ; preds = %3
  %23 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 4) #13
  store i32 %23, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:24:                                     ; preds = %3
  %25 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8) #13
  store i32 %25, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:26:                                     ; preds = %3
  %27 = tail call fastcc i32 @getnum(i8** nonnull %1, i32 -1) #13
  store i32 %27, i32* %2, align 4, !tbaa !29
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %49

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !30
  %32 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0)) #11
  br label %49

; <label>:33:                                     ; preds = %3
  store i32 1, i32* %2, align 4, !tbaa !29
  br label %49

; <label>:34:                                     ; preds = %3
  br label %49

; <label>:35:                                     ; preds = %3
  %36 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %36, align 8, !tbaa !32
  br label %48

; <label>:37:                                     ; preds = %3
  %38 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 0, i32* %38, align 8, !tbaa !32
  br label %48

; <label>:39:                                     ; preds = %3
  %40 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 1
  store i32 1, i32* %40, align 8, !tbaa !32
  br label %48

; <label>:41:                                     ; preds = %3
  %42 = tail call fastcc i32 @getnumlimit(%struct.Header* %0, i8** nonnull %1, i32 8) #13
  %43 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 2
  store i32 %42, i32* %43, align 4, !tbaa !33
  br label %48

; <label>:44:                                     ; preds = %3
  %45 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %46 = load %struct.lua_State*, %struct.lua_State** %45, align 8, !tbaa !30
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 %7) #11
  br label %48

; <label>:48:                                     ; preds = %44, %41, %39, %37, %35, %3
  br label %49

; <label>:49:                                     ; preds = %3, %26, %29, %48, %34, %33, %24, %22, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %50 = phi i32 [ 8, %48 ], [ 7, %34 ], [ 6, %33 ], [ 4, %24 ], [ 1, %22 ], [ 0, %20 ], [ 2, %19 ], [ 2, %18 ], [ 2, %17 ], [ 1, %16 ], [ 1, %15 ], [ 0, %14 ], [ 1, %13 ], [ 0, %12 ], [ 1, %11 ], [ 0, %10 ], [ 1, %9 ], [ 0, %8 ], [ 3, %29 ], [ 3, %26 ], [ 5, %3 ]
  ret i32 %50
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @getnumlimit(%struct.Header* nocapture readonly, i8** nocapture, i32) unnamed_addr #0 {
  %4 = tail call fastcc i32 @getnum(i8** %1, i32 %2) #13
  %5 = add i32 %4, -1
  %6 = icmp ugt i32 %5, 15
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !30
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i32 %4, i32 16) #11
  br label %11

; <label>:11:                                     ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  ret i32 %12
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc i32 @getnum(i8** nocapture, i32) unnamed_addr #10 {
  %3 = load i8*, i8** %0, align 8, !tbaa !12
  %4 = load i8, i8* %3, align 1, !tbaa !6
  %5 = sext i8 %4 to i32
  %6 = add nsw i32 %5, -48
  %7 = icmp ugt i32 %6, 9
  br i1 %7, label %24, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i8* [ %13, %9 ], [ %3, %8 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %8 ]
  %12 = mul nsw i32 %11, 10
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %13, i8** %0, align 8, !tbaa !12
  %14 = load i8, i8* %10, align 1, !tbaa !6
  %15 = sext i8 %14 to i32
  %16 = add i32 %12, -48
  %17 = add i32 %16, %15
  %18 = load i8, i8* %13, align 1, !tbaa !6
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp slt i32 %17, 214748364
  %23 = and i1 %22, %21
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %9, %2
  %25 = phi i32 [ %1, %2 ], [ %17, %9 ]
  ret i32 %25
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @unpackint(%struct.lua_State*, i8* nocapture readonly, i32, i32, i32) unnamed_addr #0 {
  %6 = icmp slt i32 %3, 8
  %7 = icmp eq i32 %2, 0
  %8 = add nsw i32 %3, -1
  %9 = select i1 %6, i32 %3, i32 8
  br label %10

; <label>:10:                                     ; preds = %5, %15
  %11 = phi i32 [ %13, %15 ], [ %9, %5 ]
  %12 = phi i64 [ %24, %15 ], [ 0, %5 ]
  %13 = add nsw i32 %11, -1
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %10
  %16 = shl i64 %12, 8
  %17 = sub i32 1, %11
  %18 = add i32 %8, %17
  %19 = select i1 %7, i32 %18, i32 %13
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %1, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  %24 = or i64 %16, %23
  br label %10

; <label>:25:                                     ; preds = %10
  br i1 %6, label %26, label %35

; <label>:26:                                     ; preds = %25
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %57, label %28

; <label>:28:                                     ; preds = %26
  %29 = shl i32 %3, 3
  %30 = add nsw i32 %29, -1
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = xor i64 %12, %32
  %34 = sub i64 %33, %32
  br label %57

; <label>:35:                                     ; preds = %25
  %36 = icmp eq i32 %3, 8
  br i1 %36, label %57, label %37

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i32 %4, 0
  %39 = icmp sgt i64 %12, -1
  %40 = or i1 %38, %39
  %41 = select i1 %40, i32 0, i32 255
  br label %42

; <label>:42:                                     ; preds = %55, %37
  %43 = phi i32 [ 8, %37 ], [ %56, %55 ]
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %57, label %45

; <label>:45:                                     ; preds = %42
  %46 = sub i32 %8, %43
  %47 = select i1 %7, i32 %46, i32 %43
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %1, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !6
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %41, %51
  br i1 %52, label %55, label %53

; <label>:53:                                     ; preds = %45
  %54 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0), i32 %3) #11
  br label %55

; <label>:55:                                     ; preds = %45, %53
  %56 = add nuw nsw i32 %43, 1
  br label %42

; <label>:57:                                     ; preds = %42, %26, %35, %28
  %58 = phi i64 [ %34, %28 ], [ %12, %26 ], [ %12, %35 ], [ %12, %42 ]
  ret i64 %58
}

; Function Attrs: minsize optsize
declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_add(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_sub(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_mul(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_mod(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_pow(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_div(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_idiv(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @arith_unm(%struct.lua_State*) #0 {
  tail call fastcc void @arith(%struct.lua_State* %0, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @arith(%struct.lua_State*, i32, i8*) unnamed_addr #0 {
  %4 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 1) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32 @tonum(%struct.lua_State* %0, i32 2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  tail call void @lua_arith(%struct.lua_State* %0, i32 %1) #11
  br label %24

; <label>:10:                                     ; preds = %6, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #11
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #11
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 2, i8* %2) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %13, %10
  %17 = getelementptr inbounds i8, i8* %2, i64 2
  %18 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #11
  %19 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %18) #11
  %20 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #11
  %21 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %20) #11
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %17, i8* %19, i8* %21) #11
  br label %23

; <label>:23:                                     ; preds = %13, %16
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -3, i32 1) #11
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #11
  br label %24

; <label>:24:                                     ; preds = %23, %9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @tonum(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #11
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #11
  br label %19

; <label>:7:                                      ; preds = %2
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12
  %9 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* nonnull %3) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %7
  %12 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %9) #11
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

; Function Attrs: minsize optsize
declare void @lua_arith(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { minsize norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable }
attributes #10 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { minsize nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { minsize optsize }
attributes #14 = { minsize nounwind optsize readnone }
attributes #15 = { minsize nounwind optsize readonly }

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
