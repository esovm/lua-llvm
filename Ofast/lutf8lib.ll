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
  br i1 %37, label %165, label %38

; <label>:38:                                     ; preds = %36
  %39 = sub nsw i64 %26, %15
  %40 = icmp sgt i64 %39, 2147483646
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %165

; <label>:43:                                     ; preds = %38
  %44 = trunc i64 %39 to i32
  %45 = add nsw i32 %44, 1
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #3
  %46 = getelementptr inbounds i8, i8* %4, i64 %26
  %47 = add nsw i64 %15, -1
  %48 = getelementptr inbounds i8, i8* %4, i64 %47
  %49 = icmp eq i32 %27, 0
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %43
  br label %110

; <label>:51:                                     ; preds = %43
  br label %52

; <label>:52:                                     ; preds = %51, %105
  %53 = phi i32 [ %108, %105 ], [ 0, %51 ]
  %54 = phi i8* [ %106, %105 ], [ %48, %51 ]
  %55 = load i8, i8* %54, align 1, !tbaa !6
  %56 = zext i8 %55 to i32
  %57 = icmp sgt i8 %55, -1
  br i1 %57, label %98, label %58

; <label>:58:                                     ; preds = %52
  %59 = and i32 %56, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %81, label %61

; <label>:61:                                     ; preds = %58
  br label %62

; <label>:62:                                     ; preds = %61, %72
  %63 = phi i64 [ %66, %72 ], [ 0, %61 ]
  %64 = phi i32 [ %75, %72 ], [ 0, %61 ]
  %65 = phi i32 [ %76, %72 ], [ %56, %61 ]
  %66 = add nuw i64 %63, 1
  %67 = getelementptr inbounds i8, i8* %54, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !6
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 192
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %156

; <label>:72:                                     ; preds = %62
  %73 = shl i32 %64, 6
  %74 = and i32 %69, 63
  %75 = or i32 %74, %73
  %76 = shl i32 %65, 1
  %77 = and i32 %65, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %62

; <label>:79:                                     ; preds = %72
  %80 = trunc i64 %66 to i32
  br label %81

; <label>:81:                                     ; preds = %79, %58
  %82 = phi i32 [ %56, %58 ], [ %76, %79 ]
  %83 = phi i32 [ 0, %58 ], [ %75, %79 ]
  %84 = phi i32 [ 0, %58 ], [ %80, %79 ]
  %85 = and i32 %82, 127
  %86 = mul nsw i32 %84, 5
  %87 = shl i32 %85, %86
  %88 = or i32 %87, %83
  %89 = icmp ugt i32 %84, 5
  %90 = icmp slt i32 %88, 0
  %91 = or i1 %89, %90
  br i1 %91, label %156, label %92

; <label>:92:                                     ; preds = %81
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !7
  %96 = icmp ult i32 %88, %95
  %97 = getelementptr inbounds i8, i8* %54, i64 %93
  br i1 %96, label %156, label %98

; <label>:98:                                     ; preds = %52, %92
  %99 = phi i8* [ %54, %52 ], [ %97, %92 ]
  %100 = phi i32 [ %56, %52 ], [ %88, %92 ]
  %101 = icmp ugt i32 %100, 1114111
  %102 = and i32 %100, -2048
  %103 = icmp eq i32 %102, 55296
  %104 = or i1 %101, %103
  br i1 %104, label %156, label %105

; <label>:105:                                    ; preds = %98
  %106 = getelementptr inbounds i8, i8* %99, i64 1
  %107 = zext i32 %100 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %107) #3
  %108 = add nuw nsw i32 %53, 1
  %109 = icmp ult i8* %106, %46
  br i1 %109, label %52, label %165

; <label>:110:                                    ; preds = %50, %158
  %111 = phi i32 [ %163, %158 ], [ 0, %50 ]
  %112 = phi i8* [ %161, %158 ], [ %48, %50 ]
  %113 = load i8, i8* %112, align 1, !tbaa !6
  %114 = zext i8 %113 to i32
  %115 = icmp sgt i8 %113, -1
  br i1 %115, label %158, label %116

; <label>:116:                                    ; preds = %110
  %117 = and i32 %114, 64
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

; <label>:119:                                    ; preds = %116
  br label %120

; <label>:120:                                    ; preds = %119, %130
  %121 = phi i64 [ %124, %130 ], [ 0, %119 ]
  %122 = phi i32 [ %133, %130 ], [ 0, %119 ]
  %123 = phi i32 [ %134, %130 ], [ %114, %119 ]
  %124 = add nuw i64 %121, 1
  %125 = getelementptr inbounds i8, i8* %112, i64 %124
  %126 = load i8, i8* %125, align 1, !tbaa !6
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 192
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %130, label %156

; <label>:130:                                    ; preds = %120
  %131 = shl i32 %122, 6
  %132 = and i32 %127, 63
  %133 = or i32 %132, %131
  %134 = shl i32 %123, 1
  %135 = and i32 %123, 32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %120

; <label>:137:                                    ; preds = %130
  %138 = trunc i64 %124 to i32
  br label %139

; <label>:139:                                    ; preds = %137, %116
  %140 = phi i32 [ %114, %116 ], [ %134, %137 ]
  %141 = phi i32 [ 0, %116 ], [ %133, %137 ]
  %142 = phi i32 [ 0, %116 ], [ %138, %137 ]
  %143 = and i32 %140, 127
  %144 = mul nsw i32 %142, 5
  %145 = shl i32 %143, %144
  %146 = or i32 %145, %141
  %147 = icmp ugt i32 %142, 5
  %148 = icmp slt i32 %146, 0
  %149 = or i1 %147, %148
  br i1 %149, label %156, label %150

; <label>:150:                                    ; preds = %139
  %151 = zext i32 %142 to i64
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !7
  %154 = icmp ult i32 %146, %153
  %155 = getelementptr inbounds i8, i8* %112, i64 %151
  br i1 %154, label %156, label %158

; <label>:156:                                    ; preds = %150, %139, %120, %98, %92, %81, %62
  %157 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %165

; <label>:158:                                    ; preds = %110, %150
  %159 = phi i8* [ %112, %110 ], [ %155, %150 ]
  %160 = phi i32 [ %114, %110 ], [ %146, %150 ]
  %161 = getelementptr inbounds i8, i8* %159, i64 1
  %162 = zext i32 %160 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %162) #3
  %163 = add nuw nsw i32 %111, 1
  %164 = icmp ult i8* %161, %46
  br i1 %164, label %110, label %165

; <label>:165:                                    ; preds = %158, %105, %156, %36, %41
  %166 = phi i32 [ %42, %41 ], [ %157, %156 ], [ 0, %36 ], [ %108, %105 ], [ %163, %158 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %166
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
  br i1 %44, label %45, label %167

; <label>:45:                                     ; preds = %43
  %46 = icmp eq i32 %27, 0
  %47 = ptrtoint i8* %4 to i64
  br i1 %46, label %49, label %48

; <label>:48:                                     ; preds = %45
  br label %110

; <label>:49:                                     ; preds = %45
  br label %50

; <label>:50:                                     ; preds = %49, %104
  %51 = phi i64 [ %108, %104 ], [ 0, %49 ]
  %52 = phi i64 [ %107, %104 ], [ %39, %49 ]
  %53 = getelementptr inbounds i8, i8* %4, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !6
  %55 = zext i8 %54 to i32
  %56 = icmp sgt i8 %54, -1
  br i1 %56, label %97, label %57

; <label>:57:                                     ; preds = %50
  %58 = and i32 %55, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60

; <label>:60:                                     ; preds = %57
  br label %61

; <label>:61:                                     ; preds = %60, %71
  %62 = phi i64 [ %65, %71 ], [ 0, %60 ]
  %63 = phi i32 [ %74, %71 ], [ 0, %60 ]
  %64 = phi i32 [ %75, %71 ], [ %55, %60 ]
  %65 = add nuw i64 %62, 1
  %66 = getelementptr inbounds i8, i8* %53, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !6
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 192
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %157

; <label>:71:                                     ; preds = %61
  %72 = shl i32 %63, 6
  %73 = and i32 %68, 63
  %74 = or i32 %73, %72
  %75 = shl i32 %64, 1
  %76 = and i32 %64, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %61

; <label>:78:                                     ; preds = %71
  %79 = trunc i64 %65 to i32
  br label %80

; <label>:80:                                     ; preds = %78, %57
  %81 = phi i32 [ %55, %57 ], [ %75, %78 ]
  %82 = phi i32 [ 0, %57 ], [ %74, %78 ]
  %83 = phi i32 [ 0, %57 ], [ %79, %78 ]
  %84 = and i32 %81, 127
  %85 = mul nsw i32 %83, 5
  %86 = shl i32 %84, %85
  %87 = or i32 %86, %82
  %88 = icmp ugt i32 %83, 5
  %89 = icmp slt i32 %87, 0
  %90 = or i1 %88, %89
  br i1 %90, label %157, label %91

; <label>:91:                                     ; preds = %80
  %92 = zext i32 %83 to i64
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !7
  %95 = icmp ult i32 %87, %94
  %96 = getelementptr inbounds i8, i8* %53, i64 %92
  br i1 %95, label %157, label %97

; <label>:97:                                     ; preds = %50, %91
  %98 = phi i8* [ %53, %50 ], [ %96, %91 ]
  %99 = phi i32 [ %55, %50 ], [ %87, %91 ]
  %100 = icmp ugt i32 %99, 1114111
  %101 = and i32 %99, -2048
  %102 = icmp eq i32 %101, 55296
  %103 = or i1 %100, %102
  br i1 %103, label %157, label %104

; <label>:104:                                    ; preds = %97
  %105 = getelementptr inbounds i8, i8* %98, i64 1
  %106 = ptrtoint i8* %105 to i64
  %107 = sub i64 %106, %47
  %108 = add nuw nsw i64 %51, 1
  %109 = icmp slt i64 %107, %26
  br i1 %109, label %50, label %167

; <label>:110:                                    ; preds = %48, %160
  %111 = phi i64 [ %165, %160 ], [ 0, %48 ]
  %112 = phi i64 [ %164, %160 ], [ %39, %48 ]
  %113 = getelementptr inbounds i8, i8* %4, i64 %112
  %114 = load i8, i8* %113, align 1, !tbaa !6
  %115 = zext i8 %114 to i32
  %116 = icmp sgt i8 %114, -1
  br i1 %116, label %160, label %117

; <label>:117:                                    ; preds = %110
  %118 = and i32 %115, 64
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %140, label %120

; <label>:120:                                    ; preds = %117
  br label %121

; <label>:121:                                    ; preds = %120, %131
  %122 = phi i64 [ %125, %131 ], [ 0, %120 ]
  %123 = phi i32 [ %134, %131 ], [ 0, %120 ]
  %124 = phi i32 [ %135, %131 ], [ %115, %120 ]
  %125 = add nuw i64 %122, 1
  %126 = getelementptr inbounds i8, i8* %113, i64 %125
  %127 = load i8, i8* %126, align 1, !tbaa !6
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 192
  %130 = icmp eq i32 %129, 128
  br i1 %130, label %131, label %157

; <label>:131:                                    ; preds = %121
  %132 = shl i32 %123, 6
  %133 = and i32 %128, 63
  %134 = or i32 %133, %132
  %135 = shl i32 %124, 1
  %136 = and i32 %124, 32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %121

; <label>:138:                                    ; preds = %131
  %139 = trunc i64 %125 to i32
  br label %140

; <label>:140:                                    ; preds = %138, %117
  %141 = phi i32 [ %115, %117 ], [ %135, %138 ]
  %142 = phi i32 [ 0, %117 ], [ %134, %138 ]
  %143 = phi i32 [ 0, %117 ], [ %139, %138 ]
  %144 = and i32 %141, 127
  %145 = mul nsw i32 %143, 5
  %146 = shl i32 %144, %145
  %147 = or i32 %146, %142
  %148 = icmp ugt i32 %143, 5
  %149 = icmp slt i32 %147, 0
  %150 = or i1 %148, %149
  br i1 %150, label %157, label %151

; <label>:151:                                    ; preds = %140
  %152 = zext i32 %143 to i64
  %153 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4, !tbaa !7
  %155 = icmp ult i32 %147, %154
  %156 = getelementptr inbounds i8, i8* %113, i64 %152
  br i1 %155, label %157, label %160

; <label>:157:                                    ; preds = %151, %140, %121, %97, %91, %80, %61
  %158 = phi i64 [ %52, %61 ], [ %52, %80 ], [ %52, %91 ], [ %52, %97 ], [ %112, %121 ], [ %112, %140 ], [ %112, %151 ]
  call void @lua_pushnil(%struct.lua_State* %0) #3
  %159 = add nsw i64 %158, 1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %159) #3
  br label %169

; <label>:160:                                    ; preds = %110, %151
  %161 = phi i8* [ %113, %110 ], [ %156, %151 ]
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = ptrtoint i8* %162 to i64
  %164 = sub i64 %163, %47
  %165 = add nuw nsw i64 %111, 1
  %166 = icmp slt i64 %164, %26
  br i1 %166, label %110, label %167

; <label>:167:                                    ; preds = %160, %104, %43
  %168 = phi i64 [ 0, %43 ], [ %108, %104 ], [ %165, %160 ]
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %168) #3
  br label %169

; <label>:169:                                    ; preds = %157, %167
  %170 = phi i32 [ 2, %157 ], [ 1, %167 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %170
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

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
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
