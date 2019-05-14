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

; Function Attrs: nounwind uwtable
define i32 @luaopen_utf8(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 6) #5
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @funcs, i64 0, i64 0), i32 0) #5
  %2 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #5
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @byteoffset(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5
  %6 = icmp sgt i64 %5, -1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, 1
  %9 = select i1 %6, i64 1, i64 %8
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %9) #5
  %11 = load i64, i64* %2, align 8, !tbaa !2
  %12 = call fastcc i64 @u_posrelat(i64 %10, i64 %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %1
  %15 = add nsw i64 %12, -1
  %16 = icmp sgt i64 %15, %11
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %14, %1
  %18 = phi i64 [ %15, %14 ], [ %12, %1 ]
  %19 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %20

; <label>:20:                                     ; preds = %14, %17
  %21 = phi i64 [ %15, %14 ], [ %18, %17 ]
  %22 = icmp eq i64 %5, 0
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %20
  %24 = icmp sgt i64 %21, 0
  br i1 %24, label %25, label %91

; <label>:25:                                     ; preds = %23
  br label %26

; <label>:26:                                     ; preds = %25, %32
  %27 = phi i64 [ %33, %32 ], [ %21, %25 ]
  %28 = getelementptr inbounds i8, i8* %4, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !6
  %30 = and i8 %29, -64
  %31 = icmp eq i8 %30, -128
  br i1 %31, label %32, label %87

; <label>:32:                                     ; preds = %26
  %33 = add nsw i64 %27, -1
  %34 = icmp sgt i64 %27, 1
  br i1 %34, label %26, label %87

; <label>:35:                                     ; preds = %20
  %36 = getelementptr inbounds i8, i8* %4, i64 %21
  %37 = load i8, i8* %36, align 1, !tbaa !6
  %38 = and i8 %37, -64
  %39 = icmp eq i8 %38, -128
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %35
  %41 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %95

; <label>:42:                                     ; preds = %35
  %43 = icmp slt i64 %5, 0
  br i1 %43, label %44, label %64

; <label>:44:                                     ; preds = %42
  %45 = icmp sgt i64 %21, 0
  br i1 %45, label %46, label %94

; <label>:46:                                     ; preds = %44
  br label %47

; <label>:47:                                     ; preds = %46, %61
  %48 = phi i64 [ %52, %61 ], [ %21, %46 ]
  %49 = phi i64 [ %62, %61 ], [ %5, %46 ]
  br label %50

; <label>:50:                                     ; preds = %56, %47
  %51 = phi i64 [ %48, %47 ], [ %52, %56 ]
  %52 = add nsw i64 %51, -1
  %53 = icmp sgt i64 %51, 1
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %50
  %55 = add nsw i64 %49, 1
  br label %87

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds i8, i8* %4, i64 %52
  %58 = load i8, i8* %57, align 1, !tbaa !6
  %59 = and i8 %58, -64
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %50, label %61

; <label>:61:                                     ; preds = %56
  %62 = add nsw i64 %49, 1
  %63 = icmp slt i64 %49, -1
  br i1 %63, label %47, label %87

; <label>:64:                                     ; preds = %42
  %65 = add nsw i64 %5, -1
  %66 = icmp sgt i64 %5, 1
  %67 = load i64, i64* %2, align 8
  %68 = icmp slt i64 %21, %67
  %69 = and i1 %66, %68
  br i1 %69, label %70, label %87

; <label>:70:                                     ; preds = %64
  %71 = load i64, i64* %2, align 8
  br label %72

; <label>:72:                                     ; preds = %70, %82
  %73 = phi i64 [ %65, %70 ], [ %83, %82 ]
  %74 = phi i64 [ %21, %70 ], [ %77, %82 ]
  br label %75

; <label>:75:                                     ; preds = %75, %72
  %76 = phi i64 [ %74, %72 ], [ %77, %75 ]
  %77 = add nsw i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %4, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !6
  %80 = and i8 %79, -64
  %81 = icmp eq i8 %80, -128
  br i1 %81, label %75, label %82

; <label>:82:                                     ; preds = %75
  %83 = add nsw i64 %73, -1
  %84 = icmp sgt i64 %73, 1
  %85 = icmp slt i64 %77, %71
  %86 = and i1 %84, %85
  br i1 %86, label %72, label %87

; <label>:87:                                     ; preds = %82, %61, %32, %26, %54, %64
  %88 = phi i64 [ %65, %64 ], [ %55, %54 ], [ %5, %26 ], [ %5, %32 ], [ %62, %61 ], [ %83, %82 ]
  %89 = phi i64 [ %21, %64 ], [ %52, %54 ], [ %33, %32 ], [ %27, %26 ], [ %52, %61 ], [ %77, %82 ]
  %90 = icmp eq i64 %88, 0
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %23, %87
  %92 = phi i64 [ %89, %87 ], [ %21, %23 ]
  %93 = add nsw i64 %92, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %93) #5
  br label %95

; <label>:94:                                     ; preds = %44, %87
  call void @lua_pushnil(%struct.lua_State* %0) #5
  br label %95

; <label>:95:                                     ; preds = %91, %94, %40
  %96 = phi i32 [ %41, %40 ], [ 1, %94 ], [ 1, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @codepoint(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5
  %6 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5
  %7 = load i64, i64* %2, align 8, !tbaa !2
  %8 = call fastcc i64 @u_posrelat(i64 %6, i64 %7)
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %8) #5
  %10 = load i64, i64* %2, align 8, !tbaa !2
  %11 = call fastcc i64 @u_posrelat(i64 %9, i64 %10)
  %12 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #5
  %13 = icmp sgt i64 %8, 0
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %1
  %15 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %16

; <label>:16:                                     ; preds = %14, %1
  %17 = load i64, i64* %2, align 8, !tbaa !2
  %18 = icmp sgt i64 %11, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %21

; <label>:21:                                     ; preds = %16, %19
  %22 = icmp slt i64 %11, %8
  br i1 %22, label %50, label %23

; <label>:23:                                     ; preds = %21
  %24 = sub nsw i64 %11, %8
  %25 = icmp sgt i64 %24, 2147483646
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %50

; <label>:28:                                     ; preds = %23
  %29 = trunc i64 %24 to i32
  %30 = add nsw i32 %29, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #5
  %31 = getelementptr inbounds i8, i8* %5, i64 %11
  %32 = add nsw i64 %8, -1
  %33 = getelementptr inbounds i8, i8* %5, i64 %32
  %34 = bitcast i32* %3 to i8*
  %35 = icmp eq i32 %12, 0
  %36 = zext i1 %35 to i32
  br label %37

; <label>:37:                                     ; preds = %28, %45
  %38 = phi i32 [ 0, %28 ], [ %48, %45 ]
  %39 = phi i8* [ %33, %28 ], [ %40, %45 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #5
  %40 = call fastcc i8* @utf8_decode(i8* %39, i32* nonnull %3, i32 %36)
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %37
  %43 = bitcast i32* %3 to i8*
  %44 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #5
  br label %50

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %3, align 4, !tbaa !7
  %47 = zext i32 %46 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %47) #5
  %48 = add nuw nsw i32 %38, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #5
  %49 = icmp ult i8* %40, %31
  br i1 %49, label %37, label %50

; <label>:50:                                     ; preds = %45, %42, %21, %26
  %51 = phi i32 [ %27, %26 ], [ %44, %42 ], [ 0, %21 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @utfchar(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  tail call fastcc void @pushutfchar(%struct.lua_State* %0, i32 1)
  br label %15

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %7) #5
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #5
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %6
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi i32 [ %12, %10 ], [ 1, %9 ]
  call fastcc void @pushutfchar(%struct.lua_State* %0, i32 %11)
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #5
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %11, %3
  br i1 %13, label %14, label %10

; <label>:14:                                     ; preds = %10, %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %7) #5
  br label %15

; <label>:15:                                     ; preds = %14, %5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @utflen(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5
  %6 = load i64, i64* %2, align 8, !tbaa !2
  %7 = call fastcc i64 @u_posrelat(i64 %5, i64 %6)
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #5
  %9 = load i64, i64* %2, align 8, !tbaa !2
  %10 = call fastcc i64 @u_posrelat(i64 %8, i64 %9)
  %11 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #5
  %12 = icmp sgt i64 %7, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %1
  %14 = add nsw i64 %7, -1
  %15 = load i64, i64* %2, align 8, !tbaa !2
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13, %1
  %18 = phi i64 [ %14, %13 ], [ %7, %1 ]
  %19 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %20

; <label>:20:                                     ; preds = %13, %17
  %21 = phi i64 [ %14, %13 ], [ %18, %17 ]
  %22 = load i64, i64* %2, align 8, !tbaa !2
  %23 = icmp sgt i64 %10, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %26

; <label>:26:                                     ; preds = %20, %24
  %27 = icmp slt i64 %21, %10
  br i1 %27, label %28, label %45

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %11, 0
  %30 = zext i1 %29 to i32
  %31 = ptrtoint i8* %4 to i64
  br label %32

; <label>:32:                                     ; preds = %28, %40
  %33 = phi i64 [ 0, %28 ], [ %43, %40 ]
  %34 = phi i64 [ %21, %28 ], [ %42, %40 ]
  %35 = getelementptr inbounds i8, i8* %4, i64 %34
  %36 = call fastcc i8* @utf8_decode(i8* %35, i32* null, i32 %30)
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %32
  call void @lua_pushnil(%struct.lua_State* %0) #5
  %39 = add nsw i64 %34, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %39) #5
  br label %47

; <label>:40:                                     ; preds = %32
  %41 = ptrtoint i8* %36 to i64
  %42 = sub i64 %41, %31
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp slt i64 %42, %10
  br i1 %44, label %32, label %45

; <label>:45:                                     ; preds = %40, %26
  %46 = phi i64 [ 0, %26 ], [ %43, %40 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %46) #5
  br label %47

; <label>:47:                                     ; preds = %38, %45
  %48 = phi i32 [ 2, %38 ], [ 1, %45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @iter_codes(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #5
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 (%struct.lua_State*)* @iter_auxstrict, i32 (%struct.lua_State*)* @iter_auxlax
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull %5, i32 0) #5
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #5
  ret i32 3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i64 @u_posrelat(i64, i64) unnamed_addr #3 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %10, label %4

; <label>:4:                                      ; preds = %2
  %5 = sub i64 0, %0
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = add i64 %0, 1
  %9 = add i64 %8, %1
  br label %10

; <label>:10:                                     ; preds = %4, %2, %7
  %11 = phi i64 [ %9, %7 ], [ %0, %2 ], [ 0, %4 ]
  ret i64 %11
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i8* @utf8_decode(i8* readonly, i32*, i32) unnamed_addr #4 {
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

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pushutfchar(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #5
  %4 = icmp ult i64 %3, 2147483648
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %7

; <label>:7:                                      ; preds = %5, %2
  %8 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 %3) #5
  ret void
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxlax(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxstrict(%struct.lua_State*) #0 {
  %2 = tail call fastcc i32 @iter_aux(%struct.lua_State* %0, i32 1)
  ret i32 %2
}

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iter_aux(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #5
  %7 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 2, i32* null) #5
  %8 = icmp slt i64 %7, 1
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %2
  %10 = add nsw i64 %7, -1
  %11 = load i64, i64* %3, align 8, !tbaa !2
  %12 = icmp sgt i64 %7, %11
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %20, %14 ], [ %7, %13 ]
  %16 = getelementptr inbounds i8, i8* %6, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = and i8 %17, -64
  %19 = icmp eq i8 %18, -128
  %20 = add nsw i64 %15, 1
  br i1 %19, label %14, label %21

; <label>:21:                                     ; preds = %14, %2, %9
  %22 = phi i64 [ %10, %9 ], [ 0, %2 ], [ %15, %14 ]
  %23 = load i64, i64* %3, align 8, !tbaa !2
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %38

; <label>:25:                                     ; preds = %21
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  %27 = getelementptr inbounds i8, i8* %6, i64 %22
  %28 = call fastcc i8* @utf8_decode(i8* %27, i32* nonnull %4, i32 %1)
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %25
  %31 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %36

; <label>:32:                                     ; preds = %25
  %33 = add nsw i64 %22, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %33) #5
  %34 = load i32, i32* %4, align 4, !tbaa !7
  %35 = zext i32 %34 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %35) #5
  br label %36

; <label>:36:                                     ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ 2, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %38

; <label>:38:                                     ; preds = %21, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  ret i32 %39
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

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
