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
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 6) #3
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @funcs, i64 0, i64 0), i32 0) #3
  %2 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14) #3
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #3
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #3
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #3
  %6 = icmp sgt i64 %5, -1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, 1
  %9 = select i1 %6, i64 1, i64 %8
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %9) #3
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
  %27 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #3
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
  %49 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #3
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
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %101) #3
  br label %103

; <label>:102:                                    ; preds = %52, %95
  call void @lua_pushnil(%struct.lua_State* %0) #3
  br label %103

; <label>:103:                                    ; preds = %99, %102, %48
  %104 = phi i32 [ %49, %48 ], [ 1, %102 ], [ 1, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define internal i32 @codepoint(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #3
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #3
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
  %16 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %15) #3
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
  %27 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #3
  %28 = icmp sgt i64 %15, 0
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %25
  %30 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %31

; <label>:31:                                     ; preds = %29, %25
  %32 = load i64, i64* %2, align 8, !tbaa !2
  %33 = icmp sgt i64 %26, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %36

; <label>:36:                                     ; preds = %31, %34
  %37 = icmp slt i64 %26, %15
  br i1 %37, label %111, label %38

; <label>:38:                                     ; preds = %36
  %39 = sub nsw i64 %26, %15
  %40 = icmp sgt i64 %39, 2147483646
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %111

; <label>:43:                                     ; preds = %38
  %44 = trunc i64 %39 to i32
  %45 = add nsw i32 %44, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #3
  %46 = getelementptr inbounds i8, i8* %4, i64 %26
  %47 = add nsw i64 %15, -1
  %48 = getelementptr inbounds i8, i8* %4, i64 %47
  %49 = icmp eq i32 %27, 0
  br label %50

; <label>:50:                                     ; preds = %43, %106
  %51 = phi i32 [ 0, %43 ], [ %109, %106 ]
  %52 = phi i8* [ %48, %43 ], [ %107, %106 ]
  %53 = load i8, i8* %52, align 1, !tbaa !6
  %54 = zext i8 %53 to i32
  %55 = icmp sgt i8 %53, -1
  br i1 %55, label %96, label %56

; <label>:56:                                     ; preds = %50
  %57 = and i32 %54, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %70
  %61 = phi i64 [ %64, %70 ], [ 0, %59 ]
  %62 = phi i32 [ %73, %70 ], [ 0, %59 ]
  %63 = phi i32 [ %74, %70 ], [ %54, %59 ]
  %64 = add nuw i64 %61, 1
  %65 = getelementptr inbounds i8, i8* %52, i64 %64
  %66 = load i8, i8* %65, align 1, !tbaa !6
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 192
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %104

; <label>:70:                                     ; preds = %60
  %71 = shl i32 %62, 6
  %72 = and i32 %67, 63
  %73 = or i32 %72, %71
  %74 = shl i32 %63, 1
  %75 = and i32 %63, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %60

; <label>:77:                                     ; preds = %70
  %78 = trunc i64 %64 to i32
  br label %79

; <label>:79:                                     ; preds = %77, %56
  %80 = phi i32 [ %54, %56 ], [ %74, %77 ]
  %81 = phi i32 [ 0, %56 ], [ %73, %77 ]
  %82 = phi i32 [ 0, %56 ], [ %78, %77 ]
  %83 = and i32 %80, 127
  %84 = mul nsw i32 %82, 5
  %85 = shl i32 %83, %84
  %86 = or i32 %85, %81
  %87 = icmp ugt i32 %82, 5
  %88 = icmp slt i32 %86, 0
  %89 = or i1 %87, %88
  br i1 %89, label %104, label %90

; <label>:90:                                     ; preds = %79
  %91 = zext i32 %82 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !7
  %94 = icmp ult i32 %86, %93
  %95 = getelementptr inbounds i8, i8* %52, i64 %91
  br i1 %94, label %104, label %96

; <label>:96:                                     ; preds = %90, %50
  %97 = phi i8* [ %52, %50 ], [ %95, %90 ]
  %98 = phi i32 [ %54, %50 ], [ %86, %90 ]
  br i1 %49, label %99, label %106

; <label>:99:                                     ; preds = %96
  %100 = icmp ugt i32 %98, 1114111
  %101 = and i32 %98, -2048
  %102 = icmp eq i32 %101, 55296
  %103 = or i1 %100, %102
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %90, %79, %99, %60
  %105 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %111

; <label>:106:                                    ; preds = %96, %99
  %107 = getelementptr inbounds i8, i8* %97, i64 1
  %108 = zext i32 %98 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %108) #3
  %109 = add nuw nsw i32 %51, 1
  %110 = icmp ult i8* %107, %46
  br i1 %110, label %50, label %111

; <label>:111:                                    ; preds = %106, %104, %36, %41
  %112 = phi i32 [ %42, %41 ], [ %105, %104 ], [ 0, %36 ], [ %109, %106 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @utfchar(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #3
  %7 = icmp ult i64 %6, 2147483648
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %10

; <label>:10:                                     ; preds = %5, %8
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 %6) #3
  br label %27

; <label>:12:                                     ; preds = %1
  %13 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %13) #3
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #3
  %14 = icmp slt i32 %3, 1
  br i1 %14, label %26, label %15

; <label>:15:                                     ; preds = %12
  br label %16

; <label>:16:                                     ; preds = %15, %22
  %17 = phi i32 [ %24, %22 ], [ 1, %15 ]
  %18 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %17) #3
  %19 = icmp ult i64 %18, 2147483648
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %16
  %21 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %22

; <label>:22:                                     ; preds = %16, %20
  %23 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 %18) #3
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #3
  %24 = add nuw nsw i32 %17, 1
  %25 = icmp eq i32 %17, %3
  br i1 %25, label %26, label %16

; <label>:26:                                     ; preds = %22, %12
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %13) #3
  br label %27

; <label>:27:                                     ; preds = %26, %10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @utflen(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #3
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #3
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
  %16 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #3
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
  %27 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #3
  %28 = icmp sgt i64 %15, 0
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %25
  %30 = add nsw i64 %15, -1
  %31 = load i64, i64* %2, align 8, !tbaa !2
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %29, %25
  %34 = phi i64 [ %30, %29 ], [ %15, %25 ]
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #3
  %36 = load i64, i64* %2, align 8, !tbaa !2
  br label %37

; <label>:37:                                     ; preds = %29, %33
  %38 = phi i64 [ %31, %29 ], [ %36, %33 ]
  %39 = phi i64 [ %30, %29 ], [ %34, %33 ]
  %40 = icmp sgt i64 %26, %38
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37
  %42 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %43

; <label>:43:                                     ; preds = %37, %41
  %44 = icmp slt i64 %39, %26
  br i1 %44, label %45, label %111

; <label>:45:                                     ; preds = %43
  %46 = icmp eq i32 %27, 0
  %47 = ptrtoint i8* %4 to i64
  br label %48

; <label>:48:                                     ; preds = %45, %105
  %49 = phi i64 [ 0, %45 ], [ %109, %105 ]
  %50 = phi i64 [ %39, %45 ], [ %108, %105 ]
  %51 = getelementptr inbounds i8, i8* %4, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %53 = zext i8 %52 to i32
  %54 = icmp sgt i8 %52, -1
  br i1 %54, label %95, label %55

; <label>:55:                                     ; preds = %48
  %56 = and i32 %53, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

; <label>:58:                                     ; preds = %55
  br label %59

; <label>:59:                                     ; preds = %58, %69
  %60 = phi i64 [ %63, %69 ], [ 0, %58 ]
  %61 = phi i32 [ %72, %69 ], [ 0, %58 ]
  %62 = phi i32 [ %73, %69 ], [ %53, %58 ]
  %63 = add nuw i64 %60, 1
  %64 = getelementptr inbounds i8, i8* %51, i64 %63
  %65 = load i8, i8* %64, align 1, !tbaa !6
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 192
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %103

; <label>:69:                                     ; preds = %59
  %70 = shl i32 %61, 6
  %71 = and i32 %66, 63
  %72 = or i32 %71, %70
  %73 = shl i32 %62, 1
  %74 = and i32 %62, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %59

; <label>:76:                                     ; preds = %69
  %77 = trunc i64 %63 to i32
  br label %78

; <label>:78:                                     ; preds = %76, %55
  %79 = phi i32 [ %53, %55 ], [ %73, %76 ]
  %80 = phi i32 [ 0, %55 ], [ %72, %76 ]
  %81 = phi i32 [ 0, %55 ], [ %77, %76 ]
  %82 = and i32 %79, 127
  %83 = mul nsw i32 %81, 5
  %84 = shl i32 %82, %83
  %85 = or i32 %84, %80
  %86 = icmp ugt i32 %81, 5
  %87 = icmp slt i32 %85, 0
  %88 = or i1 %86, %87
  br i1 %88, label %103, label %89

; <label>:89:                                     ; preds = %78
  %90 = zext i32 %81 to i64
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !7
  %93 = icmp ult i32 %85, %92
  %94 = getelementptr inbounds i8, i8* %51, i64 %90
  br i1 %93, label %103, label %95

; <label>:95:                                     ; preds = %89, %48
  %96 = phi i8* [ %51, %48 ], [ %94, %89 ]
  %97 = phi i32 [ %53, %48 ], [ %85, %89 ]
  br i1 %46, label %98, label %105

; <label>:98:                                     ; preds = %95
  %99 = icmp ugt i32 %97, 1114111
  %100 = and i32 %97, -2048
  %101 = icmp eq i32 %100, 55296
  %102 = or i1 %99, %101
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %89, %78, %98, %59
  call void @lua_pushnil(%struct.lua_State* %0) #3
  %104 = add nsw i64 %50, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %104) #3
  br label %113

; <label>:105:                                    ; preds = %95, %98
  %106 = getelementptr inbounds i8, i8* %96, i64 1
  %107 = ptrtoint i8* %106 to i64
  %108 = sub i64 %107, %47
  %109 = add nuw nsw i64 %49, 1
  %110 = icmp slt i64 %108, %26
  br i1 %110, label %48, label %111

; <label>:111:                                    ; preds = %105, %43
  %112 = phi i64 [ 0, %43 ], [ %109, %105 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %112) #3
  br label %113

; <label>:113:                                    ; preds = %103, %111
  %114 = phi i32 [ 2, %103 ], [ 1, %111 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @iter_codes(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #3
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #3
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 (%struct.lua_State*)* @iter_auxstrict, i32 (%struct.lua_State*)* @iter_auxlax
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull %5, i32 0) #3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #3
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #3
  ret i32 3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

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
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #3
  %6 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 2, i32* null) #3
  %7 = icmp slt i64 %6, 1
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %3, align 8, !tbaa !2
  br label %22

; <label>:10:                                     ; preds = %2
  %11 = add nsw i64 %6, -1
  %12 = load i64, i64* %3, align 8, !tbaa !2
  %13 = icmp sgt i64 %6, %12
  br i1 %13, label %22, label %14

; <label>:14:                                     ; preds = %10
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi i64 [ %21, %15 ], [ %6, %14 ]
  %17 = getelementptr inbounds i8, i8* %5, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !6
  %19 = and i8 %18, -64
  %20 = icmp eq i8 %19, -128
  %21 = add nsw i64 %16, 1
  br i1 %20, label %15, label %22

; <label>:22:                                     ; preds = %15, %8, %10
  %23 = phi i64 [ %12, %10 ], [ %9, %8 ], [ %12, %15 ]
  %24 = phi i64 [ %11, %10 ], [ 0, %8 ], [ %16, %15 ]
  %25 = icmp slt i64 %24, %23
  br i1 %25, label %26, label %83

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %5, i64 %24
  %28 = load i8, i8* %27, align 1, !tbaa !6
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i8 %28, -1
  br i1 %30, label %70, label %31

; <label>:31:                                     ; preds = %26
  %32 = and i32 %29, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

; <label>:34:                                     ; preds = %31
  br label %35

; <label>:35:                                     ; preds = %34, %45
  %36 = phi i64 [ %39, %45 ], [ 0, %34 ]
  %37 = phi i32 [ %48, %45 ], [ 0, %34 ]
  %38 = phi i32 [ %49, %45 ], [ %29, %34 ]
  %39 = add nuw i64 %36, 1
  %40 = getelementptr inbounds i8, i8* %27, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !6
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %78

; <label>:45:                                     ; preds = %35
  %46 = shl i32 %37, 6
  %47 = and i32 %42, 63
  %48 = or i32 %47, %46
  %49 = shl i32 %38, 1
  %50 = and i32 %38, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35

; <label>:52:                                     ; preds = %45
  %53 = trunc i64 %39 to i32
  br label %54

; <label>:54:                                     ; preds = %52, %31
  %55 = phi i32 [ %29, %31 ], [ %49, %52 ]
  %56 = phi i32 [ 0, %31 ], [ %48, %52 ]
  %57 = phi i32 [ 0, %31 ], [ %53, %52 ]
  %58 = and i32 %55, 127
  %59 = mul nsw i32 %57, 5
  %60 = shl i32 %58, %59
  %61 = or i32 %60, %56
  %62 = icmp ugt i32 %57, 5
  %63 = icmp slt i32 %61, 0
  %64 = or i1 %62, %63
  br i1 %64, label %78, label %65

; <label>:65:                                     ; preds = %54
  %66 = zext i32 %57 to i64
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !7
  %69 = icmp ult i32 %61, %68
  br i1 %69, label %78, label %70

; <label>:70:                                     ; preds = %65, %26
  %71 = phi i32 [ %29, %26 ], [ %61, %65 ]
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %80, label %73

; <label>:73:                                     ; preds = %70
  %74 = icmp ugt i32 %71, 1114111
  %75 = and i32 %71, -2048
  %76 = icmp eq i32 %75, 55296
  %77 = or i1 %74, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %35, %73, %54, %65
  %79 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %83

; <label>:80:                                     ; preds = %73, %70
  %81 = add nsw i64 %24, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %81) #3
  %82 = zext i32 %71 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %82) #3
  br label %83

; <label>:83:                                     ; preds = %78, %80, %22
  %84 = phi i32 [ 0, %22 ], [ %79, %78 ], [ 2, %80 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  ret i32 %84
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

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
