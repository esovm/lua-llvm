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
@utf8_decode.limits = internal constant [6 x i32] [i32 -1, i32 128, i32 2048, i32 65536, i32 2097152, i32 67108864], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"final position out of string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_utf8(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.040000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 6)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @funcs, i32 0, i32 0), i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @lua_pushlstring(%struct.lua_State* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i64 14)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %8, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byteoffset(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* %4)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %10, i32 2)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  br label %18

; <label>:15:                                     ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 1
  br label %18

; <label>:18:                                     ; preds = %15, %14
  %19 = phi i64 [ 1, %14 ], [ %17, %15 ]
  store i64 %19, i64* %7, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @luaL_optinteger(%struct.lua_State* %20, i32 3, i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @u_posrelat(i64 %22, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sle i64 1, %25
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %27, %18
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = call i32 @luaL_argerror(%struct.lua_State* %33, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %35 = icmp ne i32 %34, 0
  br label %36

; <label>:36:                                     ; preds = %32, %27
  %37 = phi i1 [ true, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

; <label>:41:                                     ; preds = %36
  br label %42

; <label>:42:                                     ; preds = %55, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %50, 192
  %52 = icmp eq i32 %51, 128
  br label %53

; <label>:53:                                     ; preds = %45, %42
  %54 = phi i1 [ false, %42 ], [ %52, %45 ]
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %53
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %7, align 8
  br label %42

; <label>:58:                                     ; preds = %53
  br label %132

; <label>:59:                                     ; preds = %36
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 192
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %59
  %68 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %69 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  store i32 %69, i32* %2, align 4
  br label %142

; <label>:70:                                     ; preds = %59
  %71 = load i64, i64* %6, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %103

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %99, %73
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = icmp sgt i64 %78, 0
  br label %80

; <label>:80:                                     ; preds = %77, %74
  %81 = phi i1 [ false, %74 ], [ %79, %77 ]
  br i1 %81, label %82, label %102

; <label>:82:                                     ; preds = %80
  br label %83

; <label>:83:                                     ; preds = %97, %82
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %7, align 8
  br label %86

; <label>:86:                                     ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 192
  %96 = icmp eq i32 %95, 128
  br label %97

; <label>:97:                                     ; preds = %89, %86
  %98 = phi i1 [ false, %86 ], [ %96, %89 ]
  br i1 %98, label %83, label %99

; <label>:99:                                     ; preds = %97
  %100 = load i64, i64* %6, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %74

; <label>:102:                                    ; preds = %80
  br label %131

; <label>:103:                                    ; preds = %70
  %104 = load i64, i64* %6, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %6, align 8
  br label %106

; <label>:106:                                    ; preds = %127, %103
  %107 = load i64, i64* %6, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %106
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %4, align 8
  %112 = icmp slt i64 %110, %111
  br label %113

; <label>:113:                                    ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %130

; <label>:115:                                    ; preds = %113
  br label %116

; <label>:116:                                    ; preds = %119, %115
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %119

; <label>:119:                                    ; preds = %116
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %124, 192
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %116, label %127

; <label>:127:                                    ; preds = %119
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %6, align 8
  br label %106

; <label>:130:                                    ; preds = %113
  br label %131

; <label>:131:                                    ; preds = %130, %102
  br label %132

; <label>:132:                                    ; preds = %131, %58
  %133 = load i64, i64* %6, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %132
  %136 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 1
  call void @lua_pushinteger(%struct.lua_State* %136, i64 %138)
  br label %141

; <label>:139:                                    ; preds = %132
  %140 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %140)
  br label %141

; <label>:141:                                    ; preds = %139, %135
  store i32 1, i32* %2, align 4
  br label %142

; <label>:142:                                    ; preds = %141, %67
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codepoint(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @luaL_checklstring(%struct.lua_State* %12, i32 1, i64* %4)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i64 @luaL_optinteger(%struct.lua_State* %14, i32 2, i64 1)
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @u_posrelat(i64 %15, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @luaL_optinteger(%struct.lua_State* %18, i32 3, i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @u_posrelat(i64 %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32 @lua_toboolean(%struct.lua_State* %23, i32 4)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %6, align 8
  %26 = icmp sge i64 %25, 1
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %1
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = call i32 @luaL_argerror(%struct.lua_State* %28, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %30 = icmp ne i32 %29, 0
  br label %31

; <label>:31:                                     ; preds = %27, %1
  %32 = phi i1 [ true, %1 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %31
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = call i32 @luaL_argerror(%struct.lua_State* %38, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %40 = icmp ne i32 %39, 0
  br label %41

; <label>:41:                                     ; preds = %37, %31
  %42 = phi i1 [ true, %31 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %41
  store i32 0, i32* %2, align 4
  br label %95

; <label>:48:                                     ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp sge i64 %51, 2147483647
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %48
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  store i32 %55, i32* %2, align 4
  br label %95

; <label>:56:                                     ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = load i32, i32* %9, align 4
  call void @luaL_checkstack(%struct.lua_State* %62, i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %5, align 8
  br label %71

; <label>:71:                                     ; preds = %87, %56
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %93

; <label>:75:                                     ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i8* @utf8_decode(i8* %76, i32* %11, i32 %80)
  store i8* %81, i8** %5, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

; <label>:84:                                     ; preds = %75
  %85 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %86 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  store i32 %86, i32* %2, align 4
  br label %95

; <label>:87:                                     ; preds = %75
  %88 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  call void @lua_pushinteger(%struct.lua_State* %88, i64 %90)
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %71

; <label>:93:                                     ; preds = %71
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %2, align 4
  br label %95

; <label>:95:                                     ; preds = %93, %84, %53, %47
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utfchar(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @pushutfchar(%struct.lua_State* %11, i32 1)
  br label %25

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* %13, %struct.luaL_Buffer* %5)
  store i32 1, i32* %4, align 4
  br label %14

; <label>:14:                                     ; preds = %21, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %14
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load i32, i32* %4, align 4
  call void @pushutfchar(%struct.lua_State* %19, i32 %20)
  call void @luaL_addvalue(%struct.luaL_Buffer* %5)
  br label %21

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %14

; <label>:24:                                     ; preds = %14
  call void @luaL_pushresult(%struct.luaL_Buffer* %5)
  br label %25

; <label>:25:                                     ; preds = %24, %10
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utflen(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @luaL_checklstring(%struct.lua_State* %11, i32 1, i64* %5)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %13, i32 2, i64 1)
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @u_posrelat(i64 %14, i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i64 @luaL_optinteger(%struct.lua_State* %17, i32 3, i64 -1)
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @u_posrelat(i64 %18, i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i32 @lua_toboolean(%struct.lua_State* %21, i32 4)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %7, align 8
  %24 = icmp sle i64 1, %23
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %1
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %25, %1
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = call i32 @luaL_argerror(%struct.lua_State* %31, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  %33 = icmp ne i32 %32, 0
  br label %34

; <label>:34:                                     ; preds = %30, %25
  %35 = phi i1 [ true, %25 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %34
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = call i32 @luaL_argerror(%struct.lua_State* %42, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  %44 = icmp ne i32 %43, 0
  br label %45

; <label>:45:                                     ; preds = %41, %34
  %46 = phi i1 [ true, %34 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  br label %48

; <label>:48:                                     ; preds = %68, %45
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %76

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i8* @utf8_decode(i8* %55, i32* null, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %52
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %64)
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  call void @lua_pushinteger(%struct.lua_State* %65, i64 %67)
  store i32 2, i32* %2, align 4
  br label %79

; <label>:68:                                     ; preds = %52
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %48

; <label>:76:                                     ; preds = %48
  %77 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %78 = load i64, i64* %4, align 8
  call void @lua_pushinteger(%struct.lua_State* %77, i64 %78)
  store i32 1, i32* %2, align 4
  br label %79

; <label>:79:                                     ; preds = %76, %63
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_codes(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_toboolean(%struct.lua_State* %4, i32 2)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 (%struct.lua_State*)* @iter_auxlax, i32 (%struct.lua_State*)* @iter_auxstrict
  call void @lua_pushcclosure(%struct.lua_State* %8, i32 (%struct.lua_State*)* %12, i32 0)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %13, i32 1)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* %14, i64 0)
  ret i32 3
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @u_posrelat(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %3, align 8
  br label %21

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = sub i64 0, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  store i64 0, i64* %3, align 8
  br label %21

; <label>:16:                                     ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %17, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %21

; <label>:21:                                     ; preds = %16, %15, %8
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @utf8_decode(i8*, i32*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %16, 128
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  br label %72

; <label>:20:                                     ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %43, %20
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, 192
  %35 = icmp ne i32 %34, 128
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %25
  store i8* null, i8** %4, align 8
  br label %95

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 6
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 63
  %42 = or i32 %39, %41
  store i32 %42, i32* %9, align 4
  br label %43

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %21

; <label>:46:                                     ; preds = %21
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 127
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 5
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %66, label %56

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %57, 2147483647
  br i1 %58, label %66, label %59

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* @utf8_decode.limits, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %59, %56, %46
  store i8* null, i8** %4, align 8
  br label %95

; <label>:67:                                     ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %5, align 8
  br label %72

; <label>:72:                                     ; preds = %67, %18
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ugt i32 %76, 1114111
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp ule i32 55296, %79
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ule i32 %82, 57343
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %81, %75
  store i8* null, i8** %4, align 8
  br label %95

; <label>:85:                                     ; preds = %81, %78
  br label %86

; <label>:86:                                     ; preds = %85, %72
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %92

; <label>:92:                                     ; preds = %89, %86
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %4, align 8
  br label %95

; <label>:95:                                     ; preds = %92, %84, %66, %36
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushutfchar(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %9, 2147483647
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i64 %20)
  ret void
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_auxlax(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @iter_aux(%struct.lua_State* %3, i32 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_auxstrict(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @iter_aux(%struct.lua_State* %3, i32 1)
  ret i32 %4
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_aux(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call i8* @luaL_checklstring(%struct.lua_State* %11, i32 1, i64* %6)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call i64 @lua_tointegerx(%struct.lua_State* %13, i32 2, i32* null)
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  store i64 0, i64* %8, align 8
  br label %39

; <label>:19:                                     ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %38

; <label>:23:                                     ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %26

; <label>:26:                                     ; preds = %34, %23
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 192
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %26

; <label>:37:                                     ; preds = %26
  br label %38

; <label>:38:                                     ; preds = %37, %19
  br label %39

; <label>:39:                                     ; preds = %38, %18
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %39
  store i32 0, i32* %3, align 4
  br label %62

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @utf8_decode(i8* %47, i32* %9, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %44
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  store i32 %54, i32* %3, align 4
  br label %62

; <label>:55:                                     ; preds = %44
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  call void @lua_pushinteger(%struct.lua_State* %56, i64 %58)
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  call void @lua_pushinteger(%struct.lua_State* %59, i64 %61)
  store i32 2, i32* %3, align 4
  br label %62

; <label>:62:                                     ; preds = %55, %52, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
