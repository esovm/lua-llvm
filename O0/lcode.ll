; ModuleID = 'lcode.c'
source_filename = "lcode.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expdesc = type { i32, %union.anon.4, i32, i32 }
%union.anon.4 = type { i64 }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.UpVal = type opaque
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i64, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.Dyndata = type { %struct.anon.3, %struct.Labellist, %struct.Labellist }
%struct.anon.3 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }
%struct.BlockCnt = type opaque
%union.GCUnion = type { %struct.lua_State }
%struct.anon.5 = type { i16, i8, i8 }

@.str = private unnamed_addr constant [48 x i8] c"function or expression needs too many registers\00", align 1
@luaK_prefix.ef = internal constant %struct.expdesc { i32 6, %union.anon.4 zeroinitializer, i32 -1, i32 -1 }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"constructor too long\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@luaP_opmodes = external hidden constant [47 x i8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"constants\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_nil(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %100

; <label>:22:                                     ; preds = %3
  %23 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 0
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 15
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = lshr i32 %35, 0
  %37 = and i32 %36, 63
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %99

; <label>:39:                                     ; preds = %22
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = lshr i32 %41, 6
  %43 = and i32 %42, 255
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = lshr i32 %46, 23
  %48 = and i32 %47, 511
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp sle i32 %54, %56
  br i1 %57, label %67, label %58

; <label>:58:                                     ; preds = %53, %39
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %98

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = icmp sle i32 %63, %65
  br i1 %66, label %67, label %98

; <label>:67:                                     ; preds = %62, %53
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %5, align 4
  br label %73

; <label>:73:                                     ; preds = %71, %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %8, align 4
  br label %79

; <label>:79:                                     ; preds = %77, %73
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -16321
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 6
  %85 = and i32 %84, 16320
  %86 = or i32 %82, %85
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 8388607
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  %94 = shl i32 %93, 23
  %95 = and i32 %94, -8388608
  %96 = or i32 %90, %95
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %106

; <label>:98:                                     ; preds = %62, %58
  br label %99

; <label>:99:                                     ; preds = %98, %22
  br label %100

; <label>:100:                                    ; preds = %99, %3
  %101 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @luaK_codeABC(%struct.FuncState* %101, i32 4, i32 %102, i32 %104, i32 0)
  br label %106

; <label>:106:                                    ; preds = %100, %79
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codeABC(%struct.FuncState*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 0
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 6
  %16 = or i32 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %17, 23
  %19 = or i32 %16, %18
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 14
  %22 = or i32 %19, %21
  %23 = call i32 @luaK_code(%struct.FuncState* %11, i32 %22)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_concat(%struct.FuncState*, i32*, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  br label %34

; <label>:12:                                     ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %33

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %27, %19
  %23 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @getjump(%struct.FuncState* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %7, align 4
  br label %22

; <label>:29:                                     ; preds = %22
  %30 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  call void @fixjump(%struct.FuncState* %30, i32 %31, i32 %32)
  br label %33

; <label>:33:                                     ; preds = %29, %16
  br label %34

; <label>:34:                                     ; preds = %11, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getjump(%struct.FuncState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 15
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %15, 14
  %17 = and i32 %16, 262143
  %18 = sub nsw i32 %17, 131071
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %22, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixjump(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 15
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @abs(i32 %21) #5
  %23 = icmp sgt i32 %22, 131071
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %3
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 2
  %27 = load %struct.LexState*, %struct.LexState** %26, align 8
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

; <label>:28:                                     ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 16383
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 131071
  %34 = shl i32 %33, 14
  %35 = and i32 %34, -16384
  %36 = or i32 %31, %35
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_jump(%struct.FuncState*) #0 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %5 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 6
  store i32 -1, i32* %9, align 8
  %10 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %11 = call i32 @luaK_codeABx(%struct.FuncState* %10, i32 30, i32 0, i32 131070)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %13 = load i32, i32* %3, align 4
  call void @luaK_concat(%struct.FuncState* %12, i32* %4, i32 %13)
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 0
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 6
  %14 = or i32 %11, %13
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 14
  %17 = or i32 %14, %16
  %18 = call i32 @luaK_code(%struct.FuncState* %9, i32 %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_ret(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i32 @luaK_codeABC(%struct.FuncState* %7, i32 38, i32 %8, i32 %10, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState*) #0 {
  %2 = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_patchtohere(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = call i32 @luaK_getlabel(%struct.FuncState* %5)
  %7 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 6
  %10 = load i32, i32* %4, align 4
  call void @luaK_concat(%struct.FuncState* %7, i32* %9, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %3
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = load i32, i32* %5, align 4
  call void @luaK_patchtohere(%struct.FuncState* %13, i32 %14)
  br label %20

; <label>:15:                                     ; preds = %3
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  call void @patchlistaux(%struct.FuncState* %16, i32 %17, i32 %18, i32 255, i32 %19)
  br label %20

; <label>:20:                                     ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patchlistaux(%struct.FuncState*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %12

; <label>:12:                                     ; preds = %32, %5
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %12
  %16 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @getjump(%struct.FuncState* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @patchtestreg(%struct.FuncState* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %15
  %25 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  call void @fixjump(%struct.FuncState* %25, i32 %26, i32 %27)
  br label %32

; <label>:28:                                     ; preds = %15
  %29 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  call void @fixjump(%struct.FuncState* %29, i32 %30, i32 %31)
  br label %32

; <label>:32:                                     ; preds = %28, %24
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %7, align 4
  br label %12

; <label>:34:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_patchclose(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  br label %9

; <label>:9:                                      ; preds = %35, %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -16321
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 6
  %25 = and i32 %24, 16320
  %26 = or i32 %22, %25
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 0
  %29 = load %struct.Proto*, %struct.Proto** %28, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 15
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %26, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %12
  %36 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @getjump(%struct.FuncState* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %9

; <label>:39:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_code(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Proto*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8
  store %struct.Proto* %8, %struct.Proto** %5, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @dischargejpc(%struct.FuncState* %9)
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load %struct.Proto*, %struct.Proto** %5, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %2
  %19 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 2
  %21 = load %struct.LexState*, %struct.LexState** %20, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 6
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8
  %24 = load %struct.Proto*, %struct.Proto** %5, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 15
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.Proto*, %struct.Proto** %5, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 8
  %30 = call i8* @luaM_growaux_(%struct.lua_State* %23, i8* %27, i32* %29, i64 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.Proto*, %struct.Proto** %5, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 15
  store i32* %31, i32** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %18, %2
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.Proto*, %struct.Proto** %5, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 15
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %35, i32* %43, align 4
  %44 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load %struct.Proto*, %struct.Proto** %5, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %34
  %53 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i32 0, i32 2
  %55 = load %struct.LexState*, %struct.LexState** %54, align 8
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 6
  %57 = load %struct.lua_State*, %struct.lua_State** %56, align 8
  %58 = load %struct.Proto*, %struct.Proto** %5, align 8
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 17
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.Proto*, %struct.Proto** %5, align 8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 9
  %64 = call i8* @luaM_growaux_(%struct.lua_State* %57, i8* %61, i32* %63, i64 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.Proto*, %struct.Proto** %5, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 17
  store i32* %65, i32** %67, align 8
  br label %68

; <label>:68:                                     ; preds = %52, %34
  %69 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %69, i32 0, i32 2
  %71 = load %struct.LexState*, %struct.LexState** %70, align 8
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.Proto*, %struct.Proto** %5, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 17
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %78 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 %73, i32* %81, align 4
  %82 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codek(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 262143
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @luaK_codeABx(%struct.FuncState* %12, i32 1, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %24

; <label>:16:                                     ; preds = %3
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @luaK_codeABx(%struct.FuncState* %17, i32 2, i32 %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @codeextraarg(%struct.FuncState* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeextraarg(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 6
  %8 = or i32 46, %7
  %9 = call i32 @luaK_code(%struct.FuncState* %5, i32 %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_checkstack(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 13
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 5
  %17 = load i8, i8* %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 255
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 2
  %26 = load %struct.LexState*, %struct.LexState** %25, align 8
  call void @luaX_syntaxerror(%struct.LexState* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = trunc i32 %28 to i8
  %30 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 0
  %32 = load %struct.Proto*, %struct.Proto** %31, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 5
  store i8 %29, i8* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %27, %2
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_reserveregs(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @luaK_checkstack(%struct.FuncState* %5, i32 %6)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 13
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, %7
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.TString*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %6, align 8
  %8 = load %struct.TString*, %struct.TString** %4, align 8
  store %struct.TString* %8, %struct.TString** %7, align 8
  %9 = load %struct.TString*, %struct.TString** %7, align 8
  %10 = bitcast %struct.TString* %9 to %union.GCUnion*
  %11 = bitcast %union.GCUnion* %10 to %struct.GCObject*
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  store %struct.GCObject* %11, %struct.GCObject** %14, align 8
  %15 = load %struct.TString*, %struct.TString** %7, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, 64
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %23 = call i32 @addk(%struct.FuncState* %22, %struct.lua_TValue* %5, %struct.lua_TValue* %5)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addk(%struct.FuncState*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca %struct.Proto*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %15 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 2
  %17 = load %struct.LexState*, %struct.LexState** %16, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 6
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8
  store %struct.lua_State* %19, %struct.lua_State** %8, align 8
  %20 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %20, i32 0, i32 0
  %22 = load %struct.Proto*, %struct.Proto** %21, align 8
  store %struct.Proto* %22, %struct.Proto** %9, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %24 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 2
  %26 = load %struct.LexState*, %struct.LexState** %25, align 8
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 9
  %28 = load %struct.Table*, %struct.Table** %27, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %30 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %23, %struct.Table* %28, %struct.lua_TValue* %29)
  store %struct.lua_TValue* %30, %struct.lua_TValue** %10, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 19
  br i1 %34, label %35, label %74

; <label>:35:                                     ; preds = %3
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %73

; <label>:46:                                     ; preds = %35
  %47 = load %struct.Proto*, %struct.Proto** %9, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 14
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i64 %51
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 63
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 63
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %73

; <label>:61:                                     ; preds = %46
  %62 = load %struct.Proto*, %struct.Proto** %9, align 8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 14
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 %66
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %69 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %67, %struct.lua_TValue* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %173

; <label>:73:                                     ; preds = %61, %46, %35
  br label %74

; <label>:74:                                     ; preds = %73, %3
  %75 = load %struct.Proto*, %struct.Proto** %9, align 8
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %81, %struct.lua_TValue** %13, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i32 0, i32 1
  store i32 19, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.Proto*, %struct.Proto** %9, align 8
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %107

; <label>:95:                                     ; preds = %74
  %96 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %97 = load %struct.Proto*, %struct.Proto** %9, align 8
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %97, i32 0, i32 14
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8
  %100 = bitcast %struct.lua_TValue* %99 to i8*
  %101 = load %struct.Proto*, %struct.Proto** %9, align 8
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i32 0, i32 7
  %103 = call i8* @luaM_growaux_(%struct.lua_State* %96, i8* %100, i32* %102, i64 16, i32 67108863, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %104 = bitcast i8* %103 to %struct.lua_TValue*
  %105 = load %struct.Proto*, %struct.Proto** %9, align 8
  %106 = getelementptr inbounds %struct.Proto, %struct.Proto* %105, i32 0, i32 14
  store %struct.lua_TValue* %104, %struct.lua_TValue** %106, align 8
  br label %107

; <label>:107:                                    ; preds = %95, %74
  br label %108

; <label>:108:                                    ; preds = %114, %107
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.Proto*, %struct.Proto** %9, align 8
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %123

; <label>:114:                                    ; preds = %108
  %115 = load %struct.Proto*, %struct.Proto** %9, align 8
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %115, i32 0, i32 14
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 %120
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i32 0, i32 1
  store i32 0, i32* %122, align 8
  br label %108

; <label>:123:                                    ; preds = %108
  %124 = load %struct.Proto*, %struct.Proto** %9, align 8
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %124, i32 0, i32 14
  %126 = load %struct.lua_TValue*, %struct.lua_TValue** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %126, i64 %128
  store %struct.lua_TValue* %129, %struct.lua_TValue** %14, align 8
  %130 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %131 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %132 = bitcast %struct.lua_TValue* %130 to i8*
  %133 = bitcast %struct.lua_TValue* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 8, i1 false)
  %134 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %135 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %140 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 64
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

; <label>:144:                                    ; preds = %123
  %145 = load %struct.Proto*, %struct.Proto** %9, align 8
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i32 0, i32 2
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %170

; <label>:151:                                    ; preds = %144
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i32 0, i32 0
  %154 = bitcast %union.Value* %153 to %struct.GCObject**
  %155 = load %struct.GCObject*, %struct.GCObject** %154, align 8
  %156 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %155, i32 0, i32 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 3
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

; <label>:161:                                    ; preds = %151
  %162 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %163 = load %struct.Proto*, %struct.Proto** %9, align 8
  %164 = bitcast %struct.Proto* %163 to %union.GCUnion*
  %165 = bitcast %union.GCUnion* %164 to %struct.GCObject*
  %166 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %166, i32 0, i32 0
  %168 = bitcast %union.Value* %167 to %struct.GCObject**
  %169 = load %struct.GCObject*, %struct.GCObject** %168, align 8
  call void @luaC_barrier_(%struct.lua_State* %162, %struct.GCObject* %165, %struct.GCObject* %169)
  br label %171

; <label>:170:                                    ; preds = %151, %144, %123
  br label %171

; <label>:171:                                    ; preds = %170, %161
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %4, align 4
  br label %173

; <label>:173:                                    ; preds = %171, %71
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_intK(%struct.FuncState*, i64) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to i8**
  store i8* %10, i8** %13, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 2, i32* %15, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %8, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  store i32 19, i32* %21, align 8
  %22 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %23 = call i32 @addk(%struct.FuncState* %22, %struct.lua_TValue* %5, %struct.lua_TValue* %6)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %12, label %42

; <label>:12:                                     ; preds = %3
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %20 = bitcast %union.anon.4* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -8372225
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = shl i32 %27, 14
  %29 = and i32 %28, 8372224
  %30 = or i32 %25, %29
  %31 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 0
  %33 = load %struct.Proto*, %struct.Proto** %32, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 15
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %38 = bitcast %union.anon.4* %37 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  store i32 %30, i32* %41, align 4
  br label %82

; <label>:42:                                     ; preds = %3
  %43 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 14
  br i1 %46, label %47, label %80

; <label>:47:                                     ; preds = %42
  %48 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 0
  %50 = load %struct.Proto*, %struct.Proto** %49, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 15
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %53, i32 0, i32 1
  %55 = bitcast %union.anon.4* %54 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 8388607
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = shl i32 %63, 23
  %65 = and i32 %64, -8388608
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -16321
  %71 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %71, i32 0, i32 13
  %73 = load i8, i8* %72, align 4
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 6
  %76 = and i32 %75, 16320
  %77 = or i32 %70, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_reserveregs(%struct.FuncState* %79, i32 1)
  br label %81

; <label>:80:                                     ; preds = %42
  br label %81

; <label>:81:                                     ; preds = %80, %47
  br label %82

; <label>:82:                                     ; preds = %81, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 13
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %2
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  store i32 7, i32* %11, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 15
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %19 = bitcast %union.anon.4* %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %23, 6
  %25 = and i32 %24, 255
  %26 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to i32*
  store i32 %25, i32* %28, align 8
  br label %63

; <label>:29:                                     ; preds = %2
  %30 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 14
  br i1 %33, label %34, label %62

; <label>:34:                                     ; preds = %29
  %35 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 0
  %37 = load %struct.Proto*, %struct.Proto** %36, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 15
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 1
  %42 = bitcast %union.anon.4* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 8388607
  %48 = or i32 %47, 16777216
  %49 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %49, i32 0, i32 0
  %51 = load %struct.Proto*, %struct.Proto** %50, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 15
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.4* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %48, i32* %59, align 4
  %60 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %60, i32 0, i32 0
  store i32 12, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %34, %29
  br label %63

; <label>:63:                                     ; preds = %62, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %72 [
    i32 8, label %9
    i32 9, label %12
    i32 10, label %24
    i32 14, label %69
    i32 13, label %69
  ]

; <label>:9:                                      ; preds = %2
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  store i32 7, i32* %11, align 8
  br label %73

; <label>:12:                                     ; preds = %2
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %16 = bitcast %union.anon.4* %15 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @luaK_codeABC(%struct.FuncState* %13, i32 5, i32 0, i32 %17, i32 0)
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.4* %20 to i32*
  store i32 %18, i32* %21, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 0
  store i32 12, i32* %23, align 8
  br label %73

; <label>:24:                                     ; preds = %2
  %25 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %26 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to %struct.anon.5*
  %29 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  %31 = sext i16 %30 to i32
  call void @freereg(%struct.FuncState* %25, i32 %31)
  %32 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %32, i32 0, i32 1
  %34 = bitcast %union.anon.4* %33 to %struct.anon.5*
  %35 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %34, i32 0, i32 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %24
  %40 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 1
  %43 = bitcast %union.anon.4* %42 to %struct.anon.5*
  %44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 2
  %46 = zext i8 %45 to i32
  call void @freereg(%struct.FuncState* %40, i32 %46)
  store i32 7, i32* %5, align 4
  br label %48

; <label>:47:                                     ; preds = %24
  store i32 6, i32* %5, align 4
  br label %48

; <label>:48:                                     ; preds = %47, %39
  %49 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 1
  %53 = bitcast %union.anon.4* %52 to %struct.anon.5*
  %54 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 2
  %56 = zext i8 %55 to i32
  %57 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %57, i32 0, i32 1
  %59 = bitcast %union.anon.4* %58 to %struct.anon.5*
  %60 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %59, i32 0, i32 0
  %61 = load i16, i16* %60, align 8
  %62 = sext i16 %61 to i32
  %63 = call i32 @luaK_codeABC(%struct.FuncState* %49, i32 %50, i32 0, i32 %56, i32 %62)
  %64 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %64, i32 0, i32 1
  %66 = bitcast %union.anon.4* %65 to i32*
  store i32 %63, i32* %66, align 8
  %67 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %67, i32 0, i32 0
  store i32 12, i32* %68, align 8
  br label %73

; <label>:69:                                     ; preds = %2, %2
  %70 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %71 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_setoneret(%struct.FuncState* %70, %struct.expdesc* %71)
  br label %73

; <label>:72:                                     ; preds = %2
  br label %73

; <label>:73:                                     ; preds = %72, %69, %48, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freereg(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 11
  %12 = load i8, i8* %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %8
  %16 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 13
  %18 = load i8, i8* %17, align 4
  %19 = add i8 %18, -1
  store i8 %19, i8* %17, align 4
  br label %20

; <label>:20:                                     ; preds = %15, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %5, %struct.expdesc* %6)
  %7 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @freeexp(%struct.FuncState* %7, %struct.expdesc* %8)
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 1)
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 13
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %15, 1
  call void @exp2reg(%struct.FuncState* %10, %struct.expdesc* %11, i32 %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeexp(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 1
  %13 = bitcast %union.anon.4* %12 to i32*
  %14 = load i32, i32* %13, align 8
  call void @freereg(%struct.FuncState* %10, i32 %14)
  br label %15

; <label>:15:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp2reg(%struct.FuncState*, %struct.expdesc*, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void @discharge2reg(%struct.FuncState* %11, %struct.expdesc* %12, i32 %13)
  %14 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 11
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %3
  %19 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 2
  %22 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 1
  %24 = bitcast %union.anon.4* %23 to i32*
  %25 = load i32, i32* %24, align 8
  call void @luaK_concat(%struct.FuncState* %19, i32* %21, i32 %25)
  br label %26

; <label>:26:                                     ; preds = %18, %3
  %27 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %84

; <label>:34:                                     ; preds = %26
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %35 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @need_value(%struct.FuncState* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

; <label>:41:                                     ; preds = %34
  %42 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %43 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @need_value(%struct.FuncState* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

; <label>:48:                                     ; preds = %41, %34
  %49 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 11
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %48
  br label %57

; <label>:54:                                     ; preds = %48
  %55 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %56 = call i32 @luaK_jump(%struct.FuncState* %55)
  br label %57

; <label>:57:                                     ; preds = %54, %53
  %58 = phi i32 [ -1, %53 ], [ %56, %54 ]
  store i32 %58, i32* %10, align 4
  %59 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @code_loadbool(%struct.FuncState* %59, i32 %60, i32 0, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @code_loadbool(%struct.FuncState* %62, i32 %63, i32 1, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %66 = load i32, i32* %10, align 4
  call void @luaK_patchtohere(%struct.FuncState* %65, i32 %66)
  br label %67

; <label>:67:                                     ; preds = %57, %41
  %68 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %69 = call i32 @luaK_getlabel(%struct.FuncState* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %71 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  call void @patchlistaux(%struct.FuncState* %70, i32 %73, i32 %74, i32 %75, i32 %76)
  %77 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %78 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  call void @patchlistaux(%struct.FuncState* %77, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %84

; <label>:84:                                     ; preds = %67, %26
  %85 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %85, i32 0, i32 2
  store i32 -1, i32* %86, align 8
  %87 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %88 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %87, i32 0, i32 3
  store i32 -1, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %90, i32 0, i32 1
  %92 = bitcast %union.anon.4* %91 to i32*
  store i32 %89, i32* %92, align 8
  %93 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %93, i32 0, i32 0
  store i32 7, i32* %94, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_dischargevars(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %47

; <label>:12:                                     ; preds = %2
  %13 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %12
  %21 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 1
  %23 = bitcast %union.anon.4* %22 to i32*
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %54

; <label>:25:                                     ; preds = %12
  %26 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 11
  %32 = load i8, i8* %31, align 2
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %46

; <label>:35:                                     ; preds = %25
  %36 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %38 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %38, i32 0, i32 1
  %40 = bitcast %union.anon.4* %39 to i32*
  %41 = load i32, i32* %40, align 8
  call void @exp2reg(%struct.FuncState* %36, %struct.expdesc* %37, i32 %41)
  %42 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 1
  %44 = bitcast %union.anon.4* %43 to i32*
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %54

; <label>:46:                                     ; preds = %25
  br label %47

; <label>:47:                                     ; preds = %46, %2
  %48 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %49 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %48, %struct.expdesc* %49)
  %50 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %50, i32 0, i32 1
  %52 = bitcast %union.anon.4* %51 to i32*
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %47, %35, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 9
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %2
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %9, %2
  %18 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %20 = call i32 @luaK_exp2anyreg(%struct.FuncState* %18, %struct.expdesc* %19)
  br label %21

; <label>:21:                                     ; preds = %17, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %2
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %15 = call i32 @luaK_exp2anyreg(%struct.FuncState* %13, %struct.expdesc* %14)
  br label %19

; <label>:16:                                     ; preds = %2
  %17 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %17, %struct.expdesc* %18)
  br label %19

; <label>:19:                                     ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_exp2val(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %65 [
    i32 2, label %11
    i32 3, label %17
    i32 1, label %23
    i32 6, label %29
    i32 5, label %39
    i32 4, label %49
  ]

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = call i32 @boolK(%struct.FuncState* %12, i32 1)
  %14 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %16 = bitcast %union.anon.4* %15 to i32*
  store i32 %13, i32* %16, align 8
  br label %50

; <label>:17:                                     ; preds = %2
  %18 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %19 = call i32 @boolK(%struct.FuncState* %18, i32 0)
  %20 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 1
  %22 = bitcast %union.anon.4* %21 to i32*
  store i32 %19, i32* %22, align 8
  br label %50

; <label>:23:                                     ; preds = %2
  %24 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %25 = call i32 @nilK(%struct.FuncState* %24)
  %26 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to i32*
  store i32 %25, i32* %28, align 8
  br label %50

; <label>:29:                                     ; preds = %2
  %30 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %31 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.4* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @luaK_intK(%struct.FuncState* %30, i64 %34)
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %38 = bitcast %union.anon.4* %37 to i32*
  store i32 %35, i32* %38, align 8
  br label %50

; <label>:39:                                     ; preds = %2
  %40 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 1
  %43 = bitcast %union.anon.4* %42 to double*
  %44 = load double, double* %43, align 8
  %45 = call i32 @luaK_numberK(%struct.FuncState* %40, double %44)
  %46 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i32 0, i32 1
  %48 = bitcast %union.anon.4* %47 to i32*
  store i32 %45, i32* %48, align 8
  br label %50

; <label>:49:                                     ; preds = %2
  br label %50

; <label>:50:                                     ; preds = %49, %39, %29, %23, %17, %11
  %51 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %53, i32 0, i32 1
  %55 = bitcast %union.anon.4* %54 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %56, 255
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %50
  %59 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %59, i32 0, i32 1
  %61 = bitcast %union.anon.4* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, 256
  store i32 %63, i32* %3, align 4
  br label %70

; <label>:64:                                     ; preds = %50
  br label %66

; <label>:65:                                     ; preds = %2
  br label %66

; <label>:66:                                     ; preds = %65, %64
  %67 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %68 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %69 = call i32 @luaK_exp2anyreg(%struct.FuncState* %67, %struct.expdesc* %68)
  store i32 %69, i32* %3, align 4
  br label %70

; <label>:70:                                     ; preds = %66, %58
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boolK(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.lua_TValue* %5, %struct.lua_TValue** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %10 = bitcast %union.Value* %9 to i32*
  store i32 %7, i32* %10, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = call i32 @addk(%struct.FuncState* %13, %struct.lua_TValue* %5, %struct.lua_TValue* %5)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilK(%struct.FuncState*) #0 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca %struct.lua_TValue, align 8
  %4 = alloca %struct.lua_TValue, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 0, i32* %7, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %5, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 2
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 9
  %12 = load %struct.Table*, %struct.Table** %11, align 8
  store %struct.Table* %12, %struct.Table** %6, align 8
  %13 = load %struct.Table*, %struct.Table** %6, align 8
  %14 = bitcast %struct.Table* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %struct.GCObject*
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  store %struct.GCObject* %15, %struct.GCObject** %18, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  store i32 69, i32* %20, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %22 = call i32 @addk(%struct.FuncState* %21, %struct.lua_TValue* %3, %struct.lua_TValue* %4)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_numberK(%struct.FuncState*, double) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store double %1, double* %4, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %6, align 8
  %7 = load double, double* %4, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %10 = bitcast %union.Value* %9 to double*
  store double %7, double* %10, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 3, i32* %12, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = call i32 @addk(%struct.FuncState* %13, %struct.lua_TValue* %5, %struct.lua_TValue* %5)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %62 [
    i32 8, label %13
    i32 9, label %22
    i32 10, label %33
  ]

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %14, %struct.expdesc* %15)
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %20 = bitcast %union.anon.4* %19 to i32*
  %21 = load i32, i32* %20, align 8
  call void @exp2reg(%struct.FuncState* %16, %struct.expdesc* %17, i32 %21)
  br label %66

; <label>:22:                                     ; preds = %3
  %23 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %25 = call i32 @luaK_exp2anyreg(%struct.FuncState* %23, %struct.expdesc* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.4* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @luaK_codeABC(%struct.FuncState* %26, i32 9, i32 %27, i32 %31, i32 0)
  br label %63

; <label>:33:                                     ; preds = %3
  %34 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %34, i32 0, i32 1
  %36 = bitcast %union.anon.4* %35 to %struct.anon.5*
  %37 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 8
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 10, i32 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %45 = call i32 @luaK_exp2RK(%struct.FuncState* %43, %struct.expdesc* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %48, i32 0, i32 1
  %50 = bitcast %union.anon.4* %49 to %struct.anon.5*
  %51 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 2
  %53 = zext i8 %52 to i32
  %54 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.4* %55 to %struct.anon.5*
  %57 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = sext i16 %58 to i32
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @luaK_codeABC(%struct.FuncState* %46, i32 %47, i32 %53, i32 %59, i32 %60)
  br label %63

; <label>:62:                                     ; preds = %3
  br label %63

; <label>:63:                                     ; preds = %62, %33, %22
  %64 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %65 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %64, %struct.expdesc* %65)
  br label %66

; <label>:66:                                     ; preds = %63, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %10 = call i32 @luaK_exp2anyreg(%struct.FuncState* %8, %struct.expdesc* %9)
  %11 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 1
  %13 = bitcast %union.anon.4* %12 to i32*
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @freeexp(%struct.FuncState* %15, %struct.expdesc* %16)
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 13
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 1
  %23 = bitcast %union.anon.4* %22 to i32*
  store i32 %20, i32* %23, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 0
  store i32 7, i32* %25, align 8
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 2)
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.4* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %34 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %35 = call i32 @luaK_exp2RK(%struct.FuncState* %33, %struct.expdesc* %34)
  %36 = call i32 @luaK_codeABC(%struct.FuncState* %27, i32 12, i32 %31, i32 %32, i32 %35)
  %37 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %38 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %37, %struct.expdesc* %38)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %19 [
    i32 11, label %11
    i32 4, label %18
    i32 5, label %18
    i32 6, label %18
    i32 2, label %18
  ]

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @negatecondition(%struct.FuncState* %12, %struct.expdesc* %13)
  %14 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %16 = bitcast %union.anon.4* %15 to i32*
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  br label %23

; <label>:18:                                     ; preds = %2, %2, %2, %2
  store i32 -1, i32* %5, align 4
  br label %23

; <label>:19:                                     ; preds = %2
  %20 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %22 = call i32 @jumponcond(%struct.FuncState* %20, %struct.expdesc* %21, i32 0)
  store i32 %22, i32* %5, align 4
  br label %23

; <label>:23:                                     ; preds = %19, %18, %11
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 3
  %27 = load i32, i32* %5, align 4
  call void @luaK_concat(%struct.FuncState* %24, i32* %26, i32 %27)
  %28 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %31)
  %32 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @negatecondition(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %9 = bitcast %union.anon.4* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @getjumpcontrol(%struct.FuncState* %6, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -16321
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %16, 6
  %18 = and i32 %17, 255
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = shl i32 %21, 6
  %23 = and i32 %22, 16320
  %24 = or i32 %14, %23
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumponcond(%struct.FuncState*, %struct.expdesc*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store %struct.expdesc* %1, %struct.expdesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %45

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 15
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.4* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = lshr i32 %26, 0
  %28 = and i32 %27, 63
  %29 = icmp eq i32 %28, 27
  br i1 %29, label %30, label %44

; <label>:30:                                     ; preds = %13
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %36, 23
  %38 = and i32 %37, 511
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @condjump(%struct.FuncState* %35, i32 34, i32 %38, i32 0, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %57

; <label>:44:                                     ; preds = %13
  br label %45

; <label>:45:                                     ; preds = %44, %3
  %46 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %47 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @discharge2anyreg(%struct.FuncState* %46, %struct.expdesc* %47)
  %48 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %49 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %48, %struct.expdesc* %49)
  %50 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %51 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 1
  %53 = bitcast %union.anon.4* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @condjump(%struct.FuncState* %50, i32 35, i32 255, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

; <label>:57:                                     ; preds = %45, %30
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %17 [
    i32 11, label %11
    i32 1, label %16
    i32 3, label %16
  ]

; <label>:11:                                     ; preds = %2
  %12 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %14 = bitcast %union.anon.4* %13 to i32*
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %21

; <label>:16:                                     ; preds = %2, %2
  store i32 -1, i32* %5, align 4
  br label %21

; <label>:17:                                     ; preds = %2
  %18 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %20 = call i32 @jumponcond(%struct.FuncState* %18, %struct.expdesc* %19, i32 1)
  store i32 %20, i32* %5, align 4
  br label %21

; <label>:21:                                     ; preds = %17, %16, %11
  %22 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %23 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 2
  %25 = load i32, i32* %5, align 4
  call void @luaK_concat(%struct.FuncState* %22, i32* %24, i32 %25)
  %26 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  call void @luaK_patchtohere(%struct.FuncState* %26, i32 %29)
  %30 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 3
  store i32 -1, i32* %31, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %9 = bitcast %union.anon.4* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = trunc i32 %10 to i8
  %12 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %14 = bitcast %union.anon.4* %13 to %struct.anon.5*
  %15 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %14, i32 0, i32 1
  store i8 %11, i8* %15, align 2
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %18 = call i32 @luaK_exp2RK(%struct.FuncState* %16, %struct.expdesc* %17)
  %19 = trunc i32 %18 to i16
  %20 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 1
  %22 = bitcast %union.anon.4* %21 to %struct.anon.5*
  %23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %22, i32 0, i32 0
  store i16 %19, i16* %23, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 9
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 9, i32 8
  %30 = trunc i32 %29 to i8
  %31 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.4* %32 to %struct.anon.5*
  %34 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %33, i32 0, i32 2
  store i8 %30, i8* %34, align 1
  %35 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %35, i32 0, i32 0
  store i32 10, i32* %36, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %10
    i32 3, label %19
    i32 2, label %25
  ]

; <label>:10:                                     ; preds = %4, %4
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, 12
  %14 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %15 = call i32 @constfolding(%struct.FuncState* %11, i32 %13, %struct.expdesc* %14, %struct.expdesc* @luaK_prefix.ef)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %10
  br label %29

; <label>:18:                                     ; preds = %10
  br label %19

; <label>:19:                                     ; preds = %4, %18
  %20 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 25
  %23 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %24 = load i32, i32* %8, align 4
  call void @codeunexpval(%struct.FuncState* %20, i32 %22, %struct.expdesc* %23, i32 %24)
  br label %29

; <label>:25:                                     ; preds = %4
  %26 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @codenot(%struct.FuncState* %26, %struct.expdesc* %27)
  br label %29

; <label>:28:                                     ; preds = %4
  br label %29

; <label>:29:                                     ; preds = %28, %25, %19, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constfolding(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca %struct.lua_TValue, align 8
  %11 = alloca %struct.lua_TValue, align 8
  %12 = alloca %struct.lua_TValue, align 8
  %13 = alloca double, align 8
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %15 = call i32 @tonumeral(%struct.expdesc* %14, %struct.lua_TValue* %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %4
  %18 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %19 = call i32 @tonumeral(%struct.expdesc* %18, %struct.lua_TValue* %11)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @validop(i32 %22, %struct.lua_TValue* %10, %struct.lua_TValue* %11)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21, %17, %4
  store i32 0, i32* %5, align 4
  br label %64

; <label>:26:                                     ; preds = %21
  %27 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 2
  %29 = load %struct.LexState*, %struct.LexState** %28, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 6
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8
  %32 = load i32, i32* %7, align 4
  call void @luaO_arith(%struct.lua_State* %31, i32 %32, %struct.lua_TValue* %10, %struct.lua_TValue* %11, %struct.lua_TValue* %12)
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 19
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %26
  %37 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 0
  store i32 6, i32* %38, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %40 = bitcast %union.Value* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 1
  %44 = bitcast %union.anon.4* %43 to i64*
  store i64 %41, i64* %44, align 8
  br label %63

; <label>:45:                                     ; preds = %26
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to double*
  %48 = load double, double* %47, align 8
  store double %48, double* %13, align 8
  %49 = load double, double* %13, align 8
  %50 = load double, double* %13, align 8
  %51 = fcmp oeq double %49, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %45
  %53 = load double, double* %13, align 8
  %54 = fcmp oeq double %53, 0.000000e+00
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %52, %45
  store i32 0, i32* %5, align 4
  br label %64

; <label>:56:                                     ; preds = %52
  %57 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %57, i32 0, i32 0
  store i32 5, i32* %58, align 8
  %59 = load double, double* %13, align 8
  %60 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %60, i32 0, i32 1
  %62 = bitcast %union.anon.4* %61 to double*
  store double %59, double* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %36
  store i32 1, i32* %5, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %55, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeunexpval(%struct.FuncState*, i32, %struct.expdesc*, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %12 = call i32 @luaK_exp2anyreg(%struct.FuncState* %10, %struct.expdesc* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @freeexp(%struct.FuncState* %13, %struct.expdesc* %14)
  %15 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @luaK_codeABC(%struct.FuncState* %15, i32 %16, i32 0, i32 %17, i32 0)
  %19 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.4* %20 to i32*
  store i32 %18, i32* %21, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 0
  store i32 12, i32* %23, align 8
  %24 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %25 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %24, i32 %25)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codenot(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %36 [
    i32 1, label %11
    i32 3, label %11
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
    i32 2, label %14
    i32 11, label %17
    i32 12, label %20
    i32 7, label %20
  ]

; <label>:11:                                     ; preds = %2, %2
  %12 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  br label %37

; <label>:14:                                     ; preds = %2, %2, %2, %2
  %15 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 0
  store i32 3, i32* %16, align 8
  br label %37

; <label>:17:                                     ; preds = %2
  %18 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @negatecondition(%struct.FuncState* %18, %struct.expdesc* %19)
  br label %37

; <label>:20:                                     ; preds = %2, %2
  %21 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @discharge2anyreg(%struct.FuncState* %21, %struct.expdesc* %22)
  %23 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @freeexp(%struct.FuncState* %23, %struct.expdesc* %24)
  %25 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %26 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @luaK_codeABC(%struct.FuncState* %25, i32 27, i32 0, i32 %29, i32 0)
  %31 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.4* %32 to i32*
  store i32 %30, i32* %33, align 8
  %34 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %34, i32 0, i32 0
  store i32 12, i32* %35, align 8
  br label %37

; <label>:36:                                     ; preds = %2
  br label %37

; <label>:37:                                     ; preds = %36, %20, %17, %14, %11
  %38 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %50 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  call void @removevalues(%struct.FuncState* %49, i32 %52)
  %53 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %54 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  call void @removevalues(%struct.FuncState* %53, i32 %56)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 19, label %8
    i32 20, label %11
    i32 12, label %14
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 5, label %17
    i32 6, label %17
    i32 3, label %17
    i32 4, label %17
    i32 7, label %17
    i32 8, label %17
    i32 9, label %17
    i32 10, label %17
    i32 11, label %17
  ]

; <label>:8:                                      ; preds = %3
  %9 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_goiftrue(%struct.FuncState* %9, %struct.expdesc* %10)
  br label %30

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_goiffalse(%struct.FuncState* %12, %struct.expdesc* %13)
  br label %30

; <label>:14:                                     ; preds = %3
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %15, %struct.expdesc* %16)
  br label %30

; <label>:17:                                     ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %18 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %19 = call i32 @tonumeral(%struct.expdesc* %18, %struct.lua_TValue* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17
  %22 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %23 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %24 = call i32 @luaK_exp2RK(%struct.FuncState* %22, %struct.expdesc* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %17
  br label %30

; <label>:26:                                     ; preds = %3
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %29 = call i32 @luaK_exp2RK(%struct.FuncState* %27, %struct.expdesc* %28)
  br label %30

; <label>:30:                                     ; preds = %26, %25, %14, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonumeral(%struct.expdesc*, %struct.lua_TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

; <label>:16:                                     ; preds = %2
  %17 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %50 [
    i32 6, label %20
    i32 5, label %35
  ]

; <label>:20:                                     ; preds = %16
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %22 = icmp ne %struct.lua_TValue* %21, null
  br i1 %22, label %23, label %34

; <label>:23:                                     ; preds = %20
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %24, %struct.lua_TValue** %6, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %27 = bitcast %union.anon.4* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 19, i32* %33, align 8
  br label %34

; <label>:34:                                     ; preds = %23, %20
  store i32 1, i32* %3, align 4
  br label %51

; <label>:35:                                     ; preds = %16
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %37 = icmp ne %struct.lua_TValue* %36, null
  br i1 %37, label %38, label %49

; <label>:38:                                     ; preds = %35
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %39, %struct.lua_TValue** %7, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 1
  %42 = bitcast %union.anon.4* %41 to double*
  %43 = load double, double* %42, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to double*
  store double %43, double* %46, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  store i32 3, i32* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %38, %35
  store i32 1, i32* %3, align 4
  br label %51

; <label>:50:                                     ; preds = %16
  store i32 0, i32* %3, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %49, %34, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #0 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %133 [
    i32 19, label %12
    i32 20, label %25
    i32 12, label %38
    i32 0, label %112
    i32 1, label %112
    i32 2, label %112
    i32 5, label %112
    i32 6, label %112
    i32 3, label %112
    i32 4, label %112
    i32 7, label %112
    i32 8, label %112
    i32 9, label %112
    i32 10, label %112
    i32 11, label %112
    i32 13, label %128
    i32 14, label %128
    i32 15, label %128
    i32 16, label %128
    i32 17, label %128
    i32 18, label %128
  ]

; <label>:12:                                     ; preds = %5
  %13 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_dischargevars(%struct.FuncState* %13, %struct.expdesc* %14)
  %15 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 3
  %18 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  call void @luaK_concat(%struct.FuncState* %15, i32* %17, i32 %20)
  %21 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %23 = bitcast %struct.expdesc* %21 to i8*
  %24 = bitcast %struct.expdesc* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false)
  br label %134

; <label>:25:                                     ; preds = %5
  %26 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_dischargevars(%struct.FuncState* %26, %struct.expdesc* %27)
  %28 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 2
  %31 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  call void @luaK_concat(%struct.FuncState* %28, i32* %30, i32 %33)
  %34 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %36 = bitcast %struct.expdesc* %34 to i8*
  %37 = bitcast %struct.expdesc* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 8, i1 false)
  br label %134

; <label>:38:                                     ; preds = %5
  %39 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_exp2val(%struct.FuncState* %39, %struct.expdesc* %40)
  %41 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %104

; <label>:45:                                     ; preds = %38
  %46 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %46, i32 0, i32 0
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 15
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 1
  %53 = bitcast %union.anon.4* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = lshr i32 %57, 0
  %59 = and i32 %58, 63
  %60 = icmp eq i32 %59, 29
  br i1 %60, label %61, label %104

; <label>:61:                                     ; preds = %45
  %62 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %63 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @freeexp(%struct.FuncState* %62, %struct.expdesc* %63)
  %64 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %64, i32 0, i32 0
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 15
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %69, i32 0, i32 1
  %71 = bitcast %union.anon.4* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 8388607
  %77 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %77, i32 0, i32 1
  %79 = bitcast %union.anon.4* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 23
  %82 = and i32 %81, -8388608
  %83 = or i32 %76, %82
  %84 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %84, i32 0, i32 0
  %86 = load %struct.Proto*, %struct.Proto** %85, align 8
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i32 0, i32 15
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %89, i32 0, i32 1
  %91 = bitcast %union.anon.4* %90 to i32*
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  store i32 %83, i32* %94, align 4
  %95 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %96 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %95, i32 0, i32 0
  store i32 12, i32* %96, align 8
  %97 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %98 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %97, i32 0, i32 1
  %99 = bitcast %union.anon.4* %98 to i32*
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %101, i32 0, i32 1
  %103 = bitcast %union.anon.4* %102 to i32*
  store i32 %100, i32* %103, align 8
  br label %111

; <label>:104:                                    ; preds = %45, %38
  %105 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %106 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %105, %struct.expdesc* %106)
  %107 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %108 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %109 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %110 = load i32, i32* %10, align 4
  call void @codebinexpval(%struct.FuncState* %107, i32 29, %struct.expdesc* %108, %struct.expdesc* %109, i32 %110)
  br label %111

; <label>:111:                                    ; preds = %104, %61
  br label %134

; <label>:112:                                    ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %113 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 0
  %116 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %117 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %118 = call i32 @constfolding(%struct.FuncState* %113, i32 %115, %struct.expdesc* %116, %struct.expdesc* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

; <label>:120:                                    ; preds = %112
  %121 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 13
  %124 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %125 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %126 = load i32, i32* %10, align 4
  call void @codebinexpval(%struct.FuncState* %121, i32 %123, %struct.expdesc* %124, %struct.expdesc* %125, i32 %126)
  br label %127

; <label>:127:                                    ; preds = %120, %112
  br label %134

; <label>:128:                                    ; preds = %5, %5, %5, %5, %5, %5
  %129 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %132 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @codecomp(%struct.FuncState* %129, i32 %130, %struct.expdesc* %131, %struct.expdesc* %132)
  br label %134

; <label>:133:                                    ; preds = %5
  br label %134

; <label>:134:                                    ; preds = %133, %128, %127, %111, %25, %12
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codebinexpval(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #0 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %15 = call i32 @luaK_exp2RK(%struct.FuncState* %13, %struct.expdesc* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %18 = call i32 @luaK_exp2RK(%struct.FuncState* %16, %struct.expdesc* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @freeexps(%struct.FuncState* %19, %struct.expdesc* %20, %struct.expdesc* %21)
  %22 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @luaK_codeABC(%struct.FuncState* %22, i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 1
  %29 = bitcast %union.anon.4* %28 to i32*
  store i32 %26, i32* %29, align 8
  %30 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 0
  store i32 12, i32* %31, align 8
  %32 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %33 = load i32, i32* %10, align 4
  call void @luaK_fixline(%struct.FuncState* %32, i32 %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codecomp(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store %struct.expdesc* %3, %struct.expdesc** %8, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %4
  %18 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %20 = bitcast %union.anon.4* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, 256
  br label %28

; <label>:23:                                     ; preds = %4
  %24 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 1
  %26 = bitcast %union.anon.4* %25 to i32*
  %27 = load i32, i32* %26, align 8
  br label %28

; <label>:28:                                     ; preds = %23, %17
  %29 = phi i32 [ %22, %17 ], [ %27, %23 ]
  store i32 %29, i32* %9, align 4
  %30 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %31 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %32 = call i32 @luaK_exp2RK(%struct.FuncState* %30, %struct.expdesc* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %34 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @freeexps(%struct.FuncState* %33, %struct.expdesc* %34, %struct.expdesc* %35)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %57 [
    i32 16, label %37
    i32 17, label %45
    i32 18, label %45
  ]

; <label>:37:                                     ; preds = %28
  %38 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @condjump(%struct.FuncState* %38, i32 31, i32 0, i32 %39, i32 %40)
  %42 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 1
  %44 = bitcast %union.anon.4* %43 to i32*
  store i32 %41, i32* %44, align 8
  br label %69

; <label>:45:                                     ; preds = %28, %28
  %46 = load i32, i32* %6, align 4
  %47 = sub i32 %46, 16
  %48 = add i32 %47, 31
  store i32 %48, i32* %11, align 4
  %49 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @condjump(%struct.FuncState* %49, i32 %50, i32 1, i32 %51, i32 %52)
  %54 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.4* %55 to i32*
  store i32 %53, i32* %56, align 8
  br label %69

; <label>:57:                                     ; preds = %28
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, 13
  %60 = add i32 %59, 31
  store i32 %60, i32* %12, align 4
  %61 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @condjump(%struct.FuncState* %61, i32 %62, i32 1, i32 %63, i32 %64)
  %66 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %66, i32 0, i32 1
  %68 = bitcast %union.anon.4* %67 to i32*
  store i32 %65, i32* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %57, %45, %37
  %70 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %70, i32 0, i32 0
  store i32 11, i32* %71, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_fixline(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 17
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  store i32 %5, i32* %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 50
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %4
  br label %20

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %8, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %17
  %21 = phi i32 [ 0, %17 ], [ %19, %18 ]
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 511
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %20
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @luaK_codeABC(%struct.FuncState* %25, i32 43, i32 %26, i32 %27, i32 %28)
  br label %46

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 67108863
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %30
  %34 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @luaK_codeABC(%struct.FuncState* %34, i32 43, i32 %35, i32 %36, i32 0)
  %38 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @codeextraarg(%struct.FuncState* %38, i32 %39)
  br label %45

; <label>:41:                                     ; preds = %30
  %42 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i32 0, i32 2
  %44 = load %struct.LexState*, %struct.LexState** %43, align 8
  call void @luaX_syntaxerror(%struct.LexState* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

; <label>:45:                                     ; preds = %33
  br label %46

; <label>:46:                                     ; preds = %45, %24
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = trunc i32 %48 to i8
  %50 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i32 0, i32 13
  store i8 %49, i8* %51, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patchtestreg(%struct.FuncState*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32* @getjumpcontrol(%struct.FuncState* %9, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = lshr i32 %13, 0
  %15 = and i32 %14, 63
  %16 = icmp ne i32 %15, 35
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 23
  %26 = and i32 %25, 511
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -16321
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 6
  %34 = and i32 %33, 16320
  %35 = or i32 %31, %34
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %51

; <label>:37:                                     ; preds = %21, %18
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = lshr i32 %39, 23
  %41 = and i32 %40, 511
  %42 = shl i32 %41, 6
  %43 = or i32 34, %42
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %45, 14
  %47 = and i32 %46, 511
  %48 = shl i32 %47, 14
  %49 = or i32 %43, %48
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %37, %28
  store i32 1, i32* %4, align 4
  br label %52

; <label>:52:                                     ; preds = %51, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getjumpcontrol(%struct.FuncState*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 15
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 1
  br i1 %16, label %17, label %32

; <label>:17:                                     ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %20, 0
  %22 = and i32 %21, 63
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [47 x i8], [47 x i8]* @luaP_opmodes, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %17
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 -1
  store i32* %31, i32** %3, align 8
  br label %34

; <label>:32:                                     ; preds = %17, %2
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %3, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %29
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dischargejpc(%struct.FuncState*) #0 {
  %2 = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %4 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  call void @patchlistaux(%struct.FuncState* %3, i32 %6, i32 %9, i32 255, i32 %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 6
  store i32 -1, i32* %14, align 8
  ret void
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) #4

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #4

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discharge2reg(%struct.FuncState*, %struct.expdesc*, i32) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_dischargevars(%struct.FuncState* %8, %struct.expdesc* %9)
  %10 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %89 [
    i32 1, label %13
    i32 3, label %16
    i32 2, label %16
    i32 4, label %25
    i32 5, label %33
    i32 6, label %43
    i32 12, label %53
    i32 7, label %73
  ]

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = load i32, i32* %6, align 4
  call void @luaK_nil(%struct.FuncState* %14, i32 %15, i32 1)
  br label %90

; <label>:16:                                     ; preds = %3, %3
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i32 @luaK_codeABC(%struct.FuncState* %17, i32 3, i32 %18, i32 %23, i32 0)
  br label %90

; <label>:25:                                     ; preds = %3
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.4* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @luaK_codek(%struct.FuncState* %26, i32 %27, i32 %31)
  br label %90

; <label>:33:                                     ; preds = %3
  %34 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 1
  %39 = bitcast %union.anon.4* %38 to double*
  %40 = load double, double* %39, align 8
  %41 = call i32 @luaK_numberK(%struct.FuncState* %36, double %40)
  %42 = call i32 @luaK_codek(%struct.FuncState* %34, i32 %35, i32 %41)
  br label %90

; <label>:43:                                     ; preds = %3
  %44 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %47 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.4* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @luaK_intK(%struct.FuncState* %46, i64 %50)
  %52 = call i32 @luaK_codek(%struct.FuncState* %44, i32 %45, i32 %51)
  br label %90

; <label>:53:                                     ; preds = %3
  %54 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 0
  %56 = load %struct.Proto*, %struct.Proto** %55, align 8
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 15
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %59, i32 0, i32 1
  %61 = bitcast %union.anon.4* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -16321
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 6
  %70 = and i32 %69, 16320
  %71 = or i32 %67, %70
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %90

; <label>:73:                                     ; preds = %3
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %75, i32 0, i32 1
  %77 = bitcast %union.anon.4* %76 to i32*
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %88

; <label>:80:                                     ; preds = %73
  %81 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %83, i32 0, i32 1
  %85 = bitcast %union.anon.4* %84 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @luaK_codeABC(%struct.FuncState* %81, i32 0, i32 %82, i32 %86, i32 0)
  br label %88

; <label>:88:                                     ; preds = %80, %73
  br label %90

; <label>:89:                                     ; preds = %3
  br label %97

; <label>:90:                                     ; preds = %88, %53, %43, %33, %25, %16, %13
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %93 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %92, i32 0, i32 1
  %94 = bitcast %union.anon.4* %93 to i32*
  store i32 %91, i32* %94, align 8
  %95 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %96 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %95, i32 0, i32 0
  store i32 7, i32* %96, align 8
  br label %97

; <label>:97:                                     ; preds = %90, %89
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_value(%struct.FuncState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %7
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @getjumpcontrol(%struct.FuncState* %11, i32 %12)
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 0
  %17 = and i32 %16, 63
  %18 = icmp ne i32 %17, 35
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10
  store i32 1, i32* %3, align 4
  br label %26

; <label>:20:                                     ; preds = %10
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @getjump(%struct.FuncState* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %7

; <label>:25:                                     ; preds = %7
  store i32 0, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @code_loadbool(%struct.FuncState*, i32, i32, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %10 = call i32 @luaK_getlabel(%struct.FuncState* %9)
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @luaK_codeABC(%struct.FuncState* %11, i32 3, i32 %12, i32 %13, i32 %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @condjump(%struct.FuncState*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @luaK_codeABC(%struct.FuncState* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %18 = call i32 @luaK_jump(%struct.FuncState* %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discharge2anyreg(%struct.FuncState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 7
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %2
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_reserveregs(%struct.FuncState* %10, i32 1)
  %11 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 13
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 %16, 1
  call void @discharge2reg(%struct.FuncState* %11, %struct.expdesc* %12, i32 %17)
  br label %18

; <label>:18:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validop(i32, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %63 [
    i32 7, label %10
    i32 8, label %10
    i32 9, label %10
    i32 10, label %10
    i32 11, label %10
    i32 13, label %10
    i32 5, label %43
    i32 6, label %43
    i32 3, label %43
  ]

; <label>:10:                                     ; preds = %3, %3, %3, %3, %3, %3
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 19
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %10
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  br i1 true, label %24, label %40

; <label>:20:                                     ; preds = %10
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = call i32 @luaV_tointeger(%struct.lua_TValue* %21, i64* %8, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %20, %15
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 19
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %24
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %37

; <label>:34:                                     ; preds = %24
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %36 = call i32 @luaV_tointeger(%struct.lua_TValue* %35, i64* %8, i32 0)
  br label %37

; <label>:37:                                     ; preds = %34, %29
  %38 = phi i32 [ 1, %29 ], [ %36, %34 ]
  %39 = icmp ne i32 %38, 0
  br label %40

; <label>:40:                                     ; preds = %37, %20, %15
  %41 = phi i1 [ false, %20 ], [ false, %15 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %64

; <label>:43:                                     ; preds = %3, %3, %3
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %43
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 0
  %51 = bitcast %union.Value* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  br label %59

; <label>:54:                                     ; preds = %43
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to double*
  %58 = load double, double* %57, align 8
  br label %59

; <label>:59:                                     ; preds = %54, %48
  %60 = phi double [ %53, %48 ], [ %58, %54 ]
  %61 = fcmp une double %60, 0.000000e+00
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %64

; <label>:63:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %59, %40
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #4

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removevalues(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %12, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %5
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @patchtestreg(%struct.FuncState* %9, i32 %10, i32 255)
  br label %12

; <label>:12:                                     ; preds = %8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @getjump(%struct.FuncState* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %5

; <label>:16:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeexps(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %3
  %14 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %16 = bitcast %union.anon.4* %15 to i32*
  %17 = load i32, i32* %16, align 8
  br label %19

; <label>:18:                                     ; preds = %3
  br label %19

; <label>:19:                                     ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ -1, %18 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %19
  %26 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.4* %27 to i32*
  %29 = load i32, i32* %28, align 8
  br label %31

; <label>:30:                                     ; preds = %19
  br label %31

; <label>:31:                                     ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ -1, %30 ]
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %31
  %37 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %38 = load i32, i32* %7, align 4
  call void @freereg(%struct.FuncState* %37, i32 %38)
  %39 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %40 = load i32, i32* %8, align 4
  call void @freereg(%struct.FuncState* %39, i32 %40)
  br label %46

; <label>:41:                                     ; preds = %31
  %42 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %43 = load i32, i32* %8, align 4
  call void @freereg(%struct.FuncState* %42, i32 %43)
  %44 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %45 = load i32, i32* %7, align 4
  call void @freereg(%struct.FuncState* %44, i32 %45)
  br label %46

; <label>:46:                                     ; preds = %41, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
