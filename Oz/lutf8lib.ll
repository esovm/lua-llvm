; ModuleID = 'lutf8lib.c'
source_filename = "lutf8lib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }

@funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @byteoffset }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @codepoint }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @utfchar }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @utflen }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @iter_codes }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"[\00-\7F\C2-\FD][\80-\BF]*\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"charpattern\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"codepoint\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"position out of range\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@utf8_decode.limits = internal unnamed_addr constant [6 x i32] [i32 -1, i32 128, i32 2048, i32 65536, i32 2097152, i32 67108864], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"final position out of string\00", align 1

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_utf8(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 6) #4
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @funcs, i64 0, i64 0), i32 0) #4
  %2 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #4
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @byteoffset(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4
  %6 = icmp sgt i64 %5, -1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, 1
  %9 = select i1 %6, i64 1, i64 %8
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %9) #4
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = icmp sgt i64 %10, -1
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %1
  %14 = sub i64 0, %10
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %25, label %16

; <label>:16:                                     ; preds = %13
  %17 = add i64 %10, 1
  %18 = add i64 %17, %11
  br label %19

; <label>:19:                                     ; preds = %1, %16
  %20 = phi i64 [ %18, %16 ], [ %10, %1 ]
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = add nsw i64 %20, -1
  %24 = icmp sgt i64 %23, %11
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %13, %22, %19
  %26 = phi i64 [ %23, %22 ], [ %20, %19 ], [ 0, %13 ]
  %27 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %28

; <label>:28:                                     ; preds = %22, %25
  %29 = phi i64 [ %23, %22 ], [ %26, %25 ]
  %30 = icmp eq i64 %5, 0
  br i1 %30, label %31, label %42

; <label>:31:                                     ; preds = %28
  br label %32

; <label>:32:                                     ; preds = %31, %40
  %33 = phi i64 [ %41, %40 ], [ %29, %31 ]
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %92

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds i8, i8* %4, i64 %33
  %37 = load i8, i8* %36, align 1, !tbaa !6
  %38 = and i8 %37, -64
  %39 = icmp eq i8 %38, -128
  br i1 %39, label %40, label %92

; <label>:40:                                     ; preds = %35
  %41 = add nsw i64 %33, -1
  br label %32

; <label>:42:                                     ; preds = %28
  %43 = getelementptr inbounds i8, i8* %4, i64 %29
  %44 = load i8, i8* %43, align 1, !tbaa !6
  %45 = and i8 %44, -64
  %46 = icmp eq i8 %45, -128
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %42
  %48 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %96

; <label>:49:                                     ; preds = %42
  %50 = icmp slt i64 %5, 0
  br i1 %50, label %51, label %70

; <label>:51:                                     ; preds = %49
  br label %52

; <label>:52:                                     ; preds = %51, %68
  %53 = phi i64 [ %69, %68 ], [ %5, %51 ]
  %54 = phi i64 [ %61, %68 ], [ %29, %51 ]
  %55 = icmp slt i64 %53, 0
  %56 = icmp sgt i64 %54, 0
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %88

; <label>:58:                                     ; preds = %52
  br label %59

; <label>:59:                                     ; preds = %58, %63
  %60 = phi i64 [ %61, %63 ], [ %54, %58 ]
  %61 = add nsw i64 %60, -1
  %62 = icmp sgt i64 %60, 1
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds i8, i8* %4, i64 %61
  %65 = load i8, i8* %64, align 1, !tbaa !6
  %66 = and i8 %65, -64
  %67 = icmp eq i8 %66, -128
  br i1 %67, label %59, label %68

; <label>:68:                                     ; preds = %59, %63
  %69 = add nsw i64 %53, 1
  br label %52

; <label>:70:                                     ; preds = %49
  %71 = load i64, i64* %2, align 8
  br label %73

; <label>:72:                                     ; preds = %81
  br label %73

; <label>:73:                                     ; preds = %72, %70
  %74 = phi i64 [ %5, %70 ], [ %76, %72 ]
  %75 = phi i64 [ %29, %70 ], [ %83, %72 ]
  %76 = add nsw i64 %74, -1
  %77 = icmp sgt i64 %74, 1
  %78 = icmp slt i64 %75, %71
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %88

; <label>:80:                                     ; preds = %73
  br label %81

; <label>:81:                                     ; preds = %80, %81
  %82 = phi i64 [ %83, %81 ], [ %75, %80 ]
  %83 = add nsw i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %4, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !6
  %86 = and i8 %85, -64
  %87 = icmp eq i8 %86, -128
  br i1 %87, label %81, label %72

; <label>:88:                                     ; preds = %73, %52
  %89 = phi i64 [ %53, %52 ], [ %76, %73 ]
  %90 = phi i64 [ %54, %52 ], [ %75, %73 ]
  %91 = icmp eq i64 %89, 0
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %35, %32, %88
  %93 = phi i64 [ %90, %88 ], [ %33, %32 ], [ %33, %35 ]
  %94 = add nsw i64 %93, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %94) #4
  br label %96

; <label>:95:                                     ; preds = %88
  call void @lua_pushnil(%struct.lua_State* %0) #4
  br label %96

; <label>:96:                                     ; preds = %92, %95, %47
  %97 = phi i32 [ %48, %47 ], [ 1, %95 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %97
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @codepoint(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4
  %6 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #4
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = icmp sgt i64 %6, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %1
  %10 = sub i64 0, %6
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %9
  %13 = add i64 %6, 1
  %14 = add i64 %13, %7
  br label %15

; <label>:15:                                     ; preds = %1, %9, %12
  %16 = phi i64 [ %14, %12 ], [ %6, %1 ], [ 0, %9 ]
  %17 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %16) #4
  %18 = load i64, i64* %2, align 8, !tbaa !2
  %19 = icmp sgt i64 %17, -1
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %15
  %21 = sub i64 0, %17
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %20
  %24 = add i64 %17, 1
  %25 = add i64 %24, %18
  br label %26

; <label>:26:                                     ; preds = %15, %20, %23
  %27 = phi i64 [ %25, %23 ], [ %17, %15 ], [ 0, %20 ]
  %28 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #4
  %29 = icmp sgt i64 %16, 0
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %26
  %31 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %32

; <label>:32:                                     ; preds = %30, %26
  %33 = load i64, i64* %2, align 8, !tbaa !2
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %32
  %36 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %37

; <label>:37:                                     ; preds = %32, %35
  %38 = icmp slt i64 %27, %16
  br i1 %38, label %66, label %39

; <label>:39:                                     ; preds = %37
  %40 = sub nsw i64 %27, %16
  %41 = icmp sgt i64 %40, 2147483646
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %39
  %43 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %66

; <label>:44:                                     ; preds = %39
  %45 = trunc i64 %40 to i32
  %46 = add nsw i32 %45, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #4
  %47 = getelementptr inbounds i8, i8* %5, i64 %27
  %48 = add nsw i64 %16, -1
  %49 = getelementptr inbounds i8, i8* %5, i64 %48
  %50 = bitcast i32* %3 to i8*
  %51 = icmp eq i32 %28, 0
  %52 = zext i1 %51 to i32
  br label %53

; <label>:53:                                     ; preds = %62, %44
  %54 = phi i8* [ %49, %44 ], [ %58, %62 ]
  %55 = phi i32 [ 0, %44 ], [ %65, %62 ]
  %56 = icmp ult i8* %54, %47
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #5
  %58 = call fastcc i8* @utf8_decode(i8* %54, i32* nonnull %3, i32 %52) #6
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %57
  %61 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5
  br label %66

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %3, align 4, !tbaa !7
  %64 = zext i32 %63 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #4
  %65 = add nuw nsw i32 %55, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5
  br label %53

; <label>:66:                                     ; preds = %53, %60, %37, %42
  %67 = phi i32 [ %43, %42 ], [ %61, %60 ], [ 0, %37 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  ret i32 %67
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @utfchar(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  tail call fastcc void @pushutfchar(%struct.lua_State* %0, i32 1) #6
  br label %14

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %7) #5
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4
  br label %8

; <label>:8:                                      ; preds = %11, %6
  %9 = phi i32 [ 1, %6 ], [ %12, %11 ]
  %10 = icmp sgt i32 %9, %3
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %8
  call fastcc void @pushutfchar(%struct.lua_State* %0, i32 %9) #6
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4
  %12 = add nuw nsw i32 %9, 1
  br label %8

; <label>:13:                                     ; preds = %8
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %7) #5
  br label %14

; <label>:14:                                     ; preds = %13, %5
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @utflen(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #4
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = icmp sgt i64 %5, -1
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %1
  %9 = sub i64 0, %5
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = add i64 %5, 1
  %13 = add i64 %12, %6
  br label %14

; <label>:14:                                     ; preds = %1, %8, %11
  %15 = phi i64 [ %13, %11 ], [ %5, %1 ], [ 0, %8 ]
  %16 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #4
  %17 = load i64, i64* %2, align 8, !tbaa !2
  %18 = icmp sgt i64 %16, -1
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %14
  %20 = sub i64 0, %16
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %25, label %22

; <label>:22:                                     ; preds = %19
  %23 = add i64 %16, 1
  %24 = add i64 %23, %17
  br label %25

; <label>:25:                                     ; preds = %14, %19, %22
  %26 = phi i64 [ %24, %22 ], [ %16, %14 ], [ 0, %19 ]
  %27 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #4
  %28 = icmp sgt i64 %15, 0
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %25
  %30 = add nsw i64 %15, -1
  %31 = load i64, i64* %2, align 8, !tbaa !2
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %29, %25
  %34 = phi i64 [ %30, %29 ], [ %15, %25 ]
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #4
  %36 = load i64, i64* %2, align 8, !tbaa !2
  br label %37

; <label>:37:                                     ; preds = %29, %33
  %38 = phi i64 [ %31, %29 ], [ %36, %33 ]
  %39 = phi i64 [ %30, %29 ], [ %34, %33 ]
  %40 = icmp sgt i64 %26, %38
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37
  %42 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %43

; <label>:43:                                     ; preds = %37, %41
  %44 = icmp eq i32 %27, 0
  %45 = zext i1 %44 to i32
  %46 = ptrtoint i8* %4 to i64
  br label %47

; <label>:47:                                     ; preds = %57, %43
  %48 = phi i64 [ %39, %43 ], [ %59, %57 ]
  %49 = phi i64 [ 0, %43 ], [ %60, %57 ]
  %50 = icmp slt i64 %48, %26
  br i1 %50, label %51, label %61

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %4, i64 %48
  %53 = call fastcc i8* @utf8_decode(i8* %52, i32* null, i32 %45) #6
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %51
  call void @lua_pushnil(%struct.lua_State* %0) #4
  %56 = add nsw i64 %48, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %56) #4
  br label %62

; <label>:57:                                     ; preds = %51
  %58 = ptrtoint i8* %53 to i64
  %59 = sub i64 %58, %46
  %60 = add nuw nsw i64 %49, 1
  br label %47

; <label>:61:                                     ; preds = %47
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %49) #4
  br label %62

; <label>:62:                                     ; preds = %55, %61
  %63 = phi i32 [ 2, %55 ], [ 1, %61 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %63
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @iter_codes(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #4
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 (%struct.lua_State*)* @iter_auxstrict, i32 (%struct.lua_State*)* @iter_auxlax
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull %5, i32 0) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #4
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #4
  ret i32 3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc i8* @utf8_decode(i8* readonly, i32*, i32) unnamed_addr #3 {
  %4 = load i8, i8* %0, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i8 %4, -1
  br i1 %6, label %41, label %7

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7, %21
  %9 = phi i64 [ %15, %21 ], [ 0, %7 ]
  %10 = phi i32 [ %25, %21 ], [ %5, %7 ]
  %11 = phi i32 [ %24, %21 ], [ 0, %7 ]
  %12 = and i32 %10, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

; <label>:14:                                     ; preds = %8
  %15 = add nuw i64 %9, 1
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 192
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %55

; <label>:21:                                     ; preds = %14
  %22 = shl i32 %11, 6
  %23 = and i32 %18, 63
  %24 = or i32 %23, %22
  %25 = shl i32 %10, 1
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = trunc i64 %9 to i32
  %28 = and i32 %10, 127
  %29 = mul nsw i32 %27, 5
  %30 = shl i32 %28, %29
  %31 = or i32 %30, %11
  %32 = icmp ugt i32 %27, 5
  %33 = icmp slt i32 %31, 0
  %34 = or i1 %32, %33
  br i1 %34, label %55, label %35

; <label>:35:                                     ; preds = %26
  %36 = and i64 %9, 4294967295
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !7
  %39 = icmp ult i32 %31, %38
  %40 = getelementptr inbounds i8, i8* %0, i64 %36
  br i1 %39, label %55, label %41

; <label>:41:                                     ; preds = %35, %3
  %42 = phi i8* [ %0, %3 ], [ %40, %35 ]
  %43 = phi i32 [ %5, %3 ], [ %31, %35 ]
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %50, label %45

; <label>:45:                                     ; preds = %41
  %46 = icmp ugt i32 %43, 1114111
  %47 = and i32 %43, -2048
  %48 = icmp eq i32 %47, 55296
  %49 = or i1 %46, %48
  br i1 %49, label %55, label %50

; <label>:50:                                     ; preds = %45, %41
  %51 = icmp eq i32* %1, null
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %50
  store i32 %43, i32* %1, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %50, %52
  %54 = getelementptr inbounds i8, i8* %42, i64 1
  br label %55

; <label>:55:                                     ; preds = %14, %35, %26, %45, %53
  %56 = phi i8* [ %54, %53 ], [ null, %45 ], [ null, %26 ], [ null, %35 ], [ null, %14 ]
  ret i8* %56
}

; Function Attrs: minsize optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @pushutfchar(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #4
  %4 = icmp ult i64 %3, 2147483648
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %7

; <label>:7:                                      ; preds = %5, %2
  %8 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 %3) #4
  ret void
}

; Function Attrs: minsize optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @iter_auxlax(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 0) #6
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @iter_auxstrict(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 1) #6
  ret i32 %2
}

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @iter_aux(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4
  %7 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 2, i32* null) #4
  %8 = icmp slt i64 %7, 1
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %3, align 8, !tbaa !2
  br label %23

; <label>:11:                                     ; preds = %2
  %12 = add nsw i64 %7, -1
  %13 = load i64, i64* %3, align 8, !tbaa !2
  %14 = icmp sgt i64 %7, %13
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %11
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi i64 [ %22, %16 ], [ %7, %15 ]
  %18 = getelementptr inbounds i8, i8* %6, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %20 = and i8 %19, -64
  %21 = icmp eq i8 %20, -128
  %22 = add nsw i64 %17, 1
  br i1 %21, label %16, label %23

; <label>:23:                                     ; preds = %16, %9, %11
  %24 = phi i64 [ %13, %11 ], [ %10, %9 ], [ %13, %16 ]
  %25 = phi i64 [ %12, %11 ], [ 0, %9 ], [ %17, %16 ]
  %26 = icmp slt i64 %25, %24
  br i1 %26, label %27, label %40

; <label>:27:                                     ; preds = %23
  %28 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  %29 = getelementptr inbounds i8, i8* %6, i64 %25
  %30 = call fastcc i8* @utf8_decode(i8* %29, i32* nonnull %4, i32 %1) #6
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %38

; <label>:34:                                     ; preds = %27
  %35 = add nsw i64 %25, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %35) #4
  %36 = load i32, i32* %4, align 4, !tbaa !7
  %37 = zext i32 %36 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %37) #4
  br label %38

; <label>:38:                                     ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ 2, %34 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  br label %40

; <label>:40:                                     ; preds = %23, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  ret i32 %41
}

; Function Attrs: minsize optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { minsize optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
