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

; Function Attrs: nounwind optsize uwtable
define i32 @luaopen_utf8(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 6) #4
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @funcs, i64 0, i64 0), i32 0) #4
  %2 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #4
  ret i32 1
}

; Function Attrs: optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
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
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %28
  %32 = icmp sgt i64 %29, 0
  br i1 %32, label %33, label %99

; <label>:33:                                     ; preds = %31
  br label %34

; <label>:34:                                     ; preds = %33, %40
  %35 = phi i64 [ %41, %40 ], [ %29, %33 ]
  %36 = getelementptr inbounds i8, i8* %4, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !6
  %38 = and i8 %37, -64
  %39 = icmp eq i8 %38, -128
  br i1 %39, label %40, label %99

; <label>:40:                                     ; preds = %34
  %41 = add nsw i64 %35, -1
  %42 = icmp sgt i64 %35, 1
  br i1 %42, label %34, label %99

; <label>:43:                                     ; preds = %28
  %44 = getelementptr inbounds i8, i8* %4, i64 %29
  %45 = load i8, i8* %44, align 1, !tbaa !6
  %46 = and i8 %45, -64
  %47 = icmp eq i8 %46, -128
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %43
  %49 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %103

; <label>:50:                                     ; preds = %43
  %51 = icmp slt i64 %5, 0
  br i1 %51, label %52, label %73

; <label>:52:                                     ; preds = %50
  %53 = icmp sgt i64 %29, 0
  br i1 %53, label %54, label %102

; <label>:54:                                     ; preds = %52
  br label %55

; <label>:55:                                     ; preds = %54, %69
  %56 = phi i64 [ %60, %69 ], [ %29, %54 ]
  %57 = phi i64 [ %70, %69 ], [ %5, %54 ]
  br label %58

; <label>:58:                                     ; preds = %64, %55
  %59 = phi i64 [ %56, %55 ], [ %60, %64 ]
  %60 = add nsw i64 %59, -1
  %61 = icmp sgt i64 %59, 1
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %58
  %63 = add nsw i64 %57, 1
  br label %95

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds i8, i8* %4, i64 %60
  %66 = load i8, i8* %65, align 1, !tbaa !6
  %67 = and i8 %66, -64
  %68 = icmp eq i8 %67, -128
  br i1 %68, label %58, label %69

; <label>:69:                                     ; preds = %64
  %70 = add nsw i64 %57, 1
  %71 = icmp slt i64 %57, -1
  %72 = and i1 %71, %61
  br i1 %72, label %55, label %95

; <label>:73:                                     ; preds = %50
  %74 = add nsw i64 %5, -1
  %75 = icmp sgt i64 %5, 1
  %76 = load i64, i64* %2, align 8
  %77 = icmp slt i64 %29, %76
  %78 = and i1 %75, %77
  br i1 %78, label %79, label %95

; <label>:79:                                     ; preds = %73
  br label %80

; <label>:80:                                     ; preds = %79, %90
  %81 = phi i64 [ %91, %90 ], [ %74, %79 ]
  %82 = phi i64 [ %85, %90 ], [ %29, %79 ]
  br label %83

; <label>:83:                                     ; preds = %83, %80
  %84 = phi i64 [ %82, %80 ], [ %85, %83 ]
  %85 = add nsw i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %4, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !6
  %88 = and i8 %87, -64
  %89 = icmp eq i8 %88, -128
  br i1 %89, label %83, label %90

; <label>:90:                                     ; preds = %83
  %91 = add nsw i64 %81, -1
  %92 = icmp sgt i64 %81, 1
  %93 = icmp slt i64 %85, %76
  %94 = and i1 %92, %93
  br i1 %94, label %80, label %95

; <label>:95:                                     ; preds = %90, %69, %62, %73
  %96 = phi i64 [ %74, %73 ], [ %63, %62 ], [ %70, %69 ], [ %91, %90 ]
  %97 = phi i64 [ %29, %73 ], [ %60, %62 ], [ %60, %69 ], [ %85, %90 ]
  %98 = icmp eq i64 %96, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %40, %34, %31, %95
  %100 = phi i64 [ %97, %95 ], [ %29, %31 ], [ %41, %40 ], [ %35, %34 ]
  %101 = add nsw i64 %100, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %101) #4
  br label %103

; <label>:102:                                    ; preds = %52, %95
  call void @lua_pushnil(%struct.lua_State* %0) #4
  br label %103

; <label>:103:                                    ; preds = %99, %102, %48
  %104 = phi i32 [ %49, %48 ], [ 1, %102 ], [ 1, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %104
}

; Function Attrs: nounwind optsize uwtable
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
  br i1 %38, label %65, label %39

; <label>:39:                                     ; preds = %37
  %40 = sub nsw i64 %27, %16
  %41 = icmp sgt i64 %40, 2147483646
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %39
  %43 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %65

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

; <label>:53:                                     ; preds = %44, %60
  %54 = phi i32 [ 0, %44 ], [ %63, %60 ]
  %55 = phi i8* [ %49, %44 ], [ %56, %60 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #5
  %56 = call fastcc i8* @utf8_decode(i8* %55, i32* nonnull %3, i32 %52) #6
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %53
  %59 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5
  br label %65

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* %3, align 4, !tbaa !7
  %62 = zext i32 %61 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %62) #4
  %63 = add nuw nsw i32 %54, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5
  %64 = icmp ult i8* %56, %47
  br i1 %64, label %53, label %65

; <label>:65:                                     ; preds = %60, %58, %37, %42
  %66 = phi i32 [ %43, %42 ], [ %59, %58 ], [ 0, %37 ], [ %63, %60 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  ret i32 %66
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @utfchar(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  tail call fastcc void @pushutfchar(%struct.lua_State* %0, i32 1) #6
  br label %15

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %7) #5
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %6
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi i32 [ %12, %10 ], [ 1, %9 ]
  call fastcc void @pushutfchar(%struct.lua_State* %0, i32 %11) #6
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %11, %3
  br i1 %13, label %14, label %10

; <label>:14:                                     ; preds = %10, %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %7) #5
  br label %15

; <label>:15:                                     ; preds = %14, %5
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
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
  %44 = icmp slt i64 %39, %26
  br i1 %44, label %45, label %62

; <label>:45:                                     ; preds = %43
  %46 = icmp eq i32 %27, 0
  %47 = zext i1 %46 to i32
  %48 = ptrtoint i8* %4 to i64
  br label %49

; <label>:49:                                     ; preds = %45, %57
  %50 = phi i64 [ 0, %45 ], [ %60, %57 ]
  %51 = phi i64 [ %39, %45 ], [ %59, %57 ]
  %52 = getelementptr inbounds i8, i8* %4, i64 %51
  %53 = call fastcc i8* @utf8_decode(i8* %52, i32* null, i32 %47) #6
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %49
  call void @lua_pushnil(%struct.lua_State* %0) #4
  %56 = add nsw i64 %51, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %56) #4
  br label %64

; <label>:57:                                     ; preds = %49
  %58 = ptrtoint i8* %53 to i64
  %59 = sub i64 %58, %48
  %60 = add nuw nsw i64 %50, 1
  %61 = icmp slt i64 %59, %26
  br i1 %61, label %49, label %62

; <label>:62:                                     ; preds = %57, %43
  %63 = phi i64 [ 0, %43 ], [ %60, %57 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %63) #4
  br label %64

; <label>:64:                                     ; preds = %55, %62
  %65 = phi i32 [ 2, %55 ], [ 1, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %65
}

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc i8* @utf8_decode(i8* readonly, i32*, i32) unnamed_addr #3 {
  %4 = load i8, i8* %0, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i8 %4, -1
  br i1 %6, label %47, label %7

; <label>:7:                                      ; preds = %3
  %8 = and i32 %5, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

; <label>:10:                                     ; preds = %7
  br label %11

; <label>:11:                                     ; preds = %10, %21
  %12 = phi i64 [ %15, %21 ], [ 0, %10 ]
  %13 = phi i32 [ %24, %21 ], [ 0, %10 ]
  %14 = phi i32 [ %25, %21 ], [ %5, %10 ]
  %15 = add nuw i64 %12, 1
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 192
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %61

; <label>:21:                                     ; preds = %11
  %22 = shl i32 %13, 6
  %23 = and i32 %18, 63
  %24 = or i32 %23, %22
  %25 = shl i32 %14, 1
  %26 = and i32 %14, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %11

; <label>:28:                                     ; preds = %21
  %29 = trunc i64 %15 to i32
  br label %30

; <label>:30:                                     ; preds = %28, %7
  %31 = phi i32 [ %5, %7 ], [ %25, %28 ]
  %32 = phi i32 [ 0, %7 ], [ %24, %28 ]
  %33 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %34 = and i32 %31, 127
  %35 = mul nsw i32 %33, 5
  %36 = shl i32 %34, %35
  %37 = or i32 %36, %32
  %38 = icmp ugt i32 %33, 5
  %39 = icmp slt i32 %37, 0
  %40 = or i1 %38, %39
  br i1 %40, label %61, label %41

; <label>:41:                                     ; preds = %30
  %42 = zext i32 %33 to i64
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = icmp ult i32 %37, %44
  %46 = getelementptr inbounds i8, i8* %0, i64 %42
  br i1 %45, label %61, label %47

; <label>:47:                                     ; preds = %41, %3
  %48 = phi i8* [ %0, %3 ], [ %46, %41 ]
  %49 = phi i32 [ %5, %3 ], [ %37, %41 ]
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %47
  %52 = icmp ugt i32 %49, 1114111
  %53 = and i32 %49, -2048
  %54 = icmp eq i32 %53, 55296
  %55 = or i1 %52, %54
  br i1 %55, label %61, label %56

; <label>:56:                                     ; preds = %51, %47
  %57 = icmp eq i32* %1, null
  br i1 %57, label %59, label %58

; <label>:58:                                     ; preds = %56
  store i32 %49, i32* %1, align 4, !tbaa !7
  br label %59

; <label>:59:                                     ; preds = %56, %58
  %60 = getelementptr inbounds i8, i8* %48, i64 1
  br label %61

; <label>:61:                                     ; preds = %11, %41, %30, %51, %59
  %62 = phi i8* [ %60, %59 ], [ null, %51 ], [ null, %30 ], [ null, %41 ], [ null, %11 ]
  ret i8* %62
}

; Function Attrs: optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @iter_auxlax(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 0) #6
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @iter_auxstrict(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 1) #6
  ret i32 %2
}

; Function Attrs: optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

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
