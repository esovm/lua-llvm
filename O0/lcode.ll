; ModuleID = 'lcode.c'
source_filename = "lcode.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expdesc = type { i32, %union.anon.7, i32, i32 }
%union.anon.7 = type { i64 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.BlockCnt = type opaque
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%struct.Dyndata = type { %struct.anon.4, %struct.Labellist, %struct.Labellist }
%struct.anon.4 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%union.GCUnion = type { %struct.lua_State }
%struct.anon.8 = type { i16, i8 }

@.str = private unnamed_addr constant [48 x i8] c"function or expression needs too many registers\00", align 1
@luaK_prefix.ef = internal constant %struct.expdesc { i32 6, %union.anon.7 zeroinitializer, i32 -1, i32 -1 }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"constructor too long\00", align 1
@previousinstruction.invalidinstruction = internal constant i32 -1, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@luaP_opmodes = external hidden constant [84 x i8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lines\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaK_semerror(%struct.LexState*, i8*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = load i8*, i8** %4, align 8
  call void @luaX_syntaxerror(%struct.LexState* %8, i8* %9) #6
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_nil(%struct.FuncState*, i32, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = call i32* @previousinstruction(%struct.FuncState* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = lshr i32 %18, 0
  %20 = and i32 %19, 127
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %82

; <label>:22:                                     ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 7
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %36, %22
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %81

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %81

; <label>:50:                                     ; preds = %45, %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %5, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %7, align 4
  br label %62

; <label>:62:                                     ; preds = %60, %56
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -32641
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 7
  %68 = and i32 %67, 32640
  %69 = or i32 %65, %68
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -16711681
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %74, %75
  %77 = shl i32 %76, 16
  %78 = and i32 %77, 16711680
  %79 = or i32 %73, %78
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  br label %88

; <label>:81:                                     ; preds = %45, %41
  br label %82

; <label>:82:                                     ; preds = %81, %3
  %83 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @luaK_codeABCk(%struct.FuncState* %83, i32 6, i32 %84, i32 %86, i32 0, i32 0)
  br label %88

; <label>:88:                                     ; preds = %82, %62
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @previousinstruction(%struct.FuncState*) #2 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %1
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 16
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** %2, align 8
  br label %24

; <label>:23:                                     ; preds = %1
  store i32* @previousinstruction.invalidinstruction, i32** %2, align 8
  br label %24

; <label>:24:                                     ; preds = %23, %11
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) #2 {
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 0
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 7
  %18 = or i32 %15, %17
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %18, %20
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 24
  %24 = or i32 %21, %23
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %25, 15
  %27 = or i32 %24, %26
  %28 = call i32 @luaK_code(%struct.FuncState* %13, i32 %27)
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_concat(%struct.FuncState*, i32*, i32) #2 {
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
define internal i32 @getjump(%struct.FuncState*, i32) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 16
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 33554431
  %18 = sub nsw i32 %17, 16777215
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
define internal void @fixjump(%struct.FuncState*, i32, i32) #2 {
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
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 16
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
  %22 = icmp sle i32 -16777215, %21
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 16777216
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %23, %3
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 2
  %29 = load %struct.LexState*, %struct.LexState** %28, align 8
  call void @luaX_syntaxerror(%struct.LexState* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

; <label>:30:                                     ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 127
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 16777215
  %36 = shl i32 %35, 7
  %37 = and i32 %36, -128
  %38 = or i32 %33, %37
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_jump(%struct.FuncState*) #2 {
  %2 = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %4 = call i32 @codesJ(%struct.FuncState* %3, i32 57, i32 -1, i32 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codesJ(%struct.FuncState*, i32, i32, i32) #2 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 16777215
  store i32 %11, i32* %9, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 0
  %15 = load i32, i32* %9, align 4
  %16 = shl i32 %15, 7
  %17 = or i32 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, 15
  %20 = or i32 %17, %19
  %21 = call i32 @luaK_code(%struct.FuncState* %12, i32 %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_ret(%struct.FuncState*, i32, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %11 [
    i32 0, label %9
    i32 1, label %10
  ]

; <label>:9:                                      ; preds = %3
  store i32 72, i32* %7, align 4
  br label %12

; <label>:10:                                     ; preds = %3
  store i32 73, i32* %7, align 4
  br label %12

; <label>:11:                                     ; preds = %3
  store i32 71, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %10, %9
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @luaK_codeABCk(%struct.FuncState* %13, i32 %14, i32 %15, i32 %17, i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState*) #2 {
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
define hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  call void @patchlistaux(%struct.FuncState* %7, i32 %8, i32 %9, i32 255, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patchlistaux(%struct.FuncState*, i32, i32, i32, i32) #2 {
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
define hidden void @luaK_patchtohere(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = call i32 @luaK_getlabel(%struct.FuncState* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  call void @luaK_patchlist(%struct.FuncState* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_code(%struct.FuncState*, i32) #2 {
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
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 2
  %11 = load %struct.LexState*, %struct.LexState** %10, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8
  %14 = load %struct.Proto*, %struct.Proto** %5, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 16
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.Proto*, %struct.Proto** %5, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 8
  %23 = call i8* @luaM_growaux_(%struct.lua_State* %13, i8* %17, i32 %20, i32* %22, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.Proto*, %struct.Proto** %5, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 16
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.Proto*, %struct.Proto** %5, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 16
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32 %27, i32* %36, align 4
  %37 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %38 = load %struct.Proto*, %struct.Proto** %5, align 8
  %39 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 2
  %41 = load %struct.LexState*, %struct.LexState** %40, align 8
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  call void @savelineinfo(%struct.FuncState* %37, %struct.Proto* %38, i32 %43)
  %44 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) #2 {
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
  %13 = shl i32 %12, 7
  %14 = or i32 %11, %13
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 15
  %17 = or i32 %14, %16
  %18 = call i32 @luaK_code(%struct.FuncState* %9, i32 %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_codeAsBx(%struct.FuncState*, i32, i32, i32) #2 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, 65535
  store i32 %11, i32* %9, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 0
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 7
  %17 = or i32 %14, %16
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 15
  %20 = or i32 %17, %19
  %21 = call i32 @luaK_code(%struct.FuncState* %12, i32 %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_checkstack(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 15
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

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_reserveregs(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @luaK_checkstack(%struct.FuncState* %5, i32 %6)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 15
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, %7
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TString*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  store %struct.TValue* %5, %struct.TValue** %6, align 8
  %8 = load %struct.TString*, %struct.TString** %4, align 8
  store %struct.TString* %8, %struct.TString** %7, align 8
  %9 = load %struct.TString*, %struct.TString** %7, align 8
  %10 = bitcast %struct.TString* %9 to %union.GCUnion*
  %11 = bitcast %union.GCUnion* %10 to %struct.GCObject*
  %12 = load %struct.TValue*, %struct.TValue** %6, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  store %struct.GCObject* %11, %struct.GCObject** %14, align 8
  %15 = load %struct.TString*, %struct.TString** %7, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, 64
  %20 = trunc i32 %19 to i8
  %21 = load %struct.TValue*, %struct.TValue** %6, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 8
  %23 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %24 = call i32 @addk(%struct.FuncState* %23, %struct.TValue* %5, %struct.TValue* %5)
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addk(%struct.FuncState*, %struct.TValue*, %struct.TValue*) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca %struct.Proto*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %16 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 2
  %18 = load %struct.LexState*, %struct.LexState** %17, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  store %struct.lua_State* %20, %struct.lua_State** %8, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8
  store %struct.Proto* %23, %struct.Proto** %9, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 2
  %27 = load %struct.LexState*, %struct.LexState** %26, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 9
  %29 = load %struct.Table*, %struct.Table** %28, align 8
  %30 = load %struct.TValue*, %struct.TValue** %6, align 8
  %31 = call %struct.TValue* @luaH_set(%struct.lua_State* %24, %struct.Table* %29, %struct.TValue* %30)
  store %struct.TValue* %31, %struct.TValue** %10, align 8
  %32 = load %struct.TValue*, %struct.TValue** %10, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %78

; <label>:37:                                     ; preds = %3
  %38 = load %struct.TValue*, %struct.TValue** %10, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 0
  %40 = bitcast %union.Value* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %77

; <label>:48:                                     ; preds = %37
  %49 = load %struct.Proto*, %struct.Proto** %9, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 15
  %51 = load %struct.TValue*, %struct.TValue** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i64 %53
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 8
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 63
  %59 = load %struct.TValue*, %struct.TValue** %7, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 63
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %77

; <label>:65:                                     ; preds = %48
  %66 = load %struct.Proto*, %struct.Proto** %9, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 15
  %68 = load %struct.TValue*, %struct.TValue** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i64 %70
  %72 = load %struct.TValue*, %struct.TValue** %7, align 8
  %73 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %71, %struct.TValue* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %179

; <label>:77:                                     ; preds = %65, %48, %37
  br label %78

; <label>:78:                                     ; preds = %77, %3
  %79 = load %struct.Proto*, %struct.Proto** %9, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  %82 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %85, %struct.TValue** %13, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TValue*, %struct.TValue** %13, align 8
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %88, i32 0, i32 0
  %90 = bitcast %union.Value* %89 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load %struct.TValue*, %struct.TValue** %13, align 8
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %91, i32 0, i32 1
  store i8 35, i8* %92, align 8
  %93 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %94 = load %struct.Proto*, %struct.Proto** %9, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 15
  %96 = load %struct.TValue*, %struct.TValue** %95, align 8
  %97 = bitcast %struct.TValue* %96 to i8*
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.Proto*, %struct.Proto** %9, align 8
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %99, i32 0, i32 7
  %101 = call i8* @luaM_growaux_(%struct.lua_State* %93, i8* %97, i32 %98, i32* %100, i32 16, i32 33554431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %102 = bitcast i8* %101 to %struct.TValue*
  %103 = load %struct.Proto*, %struct.Proto** %9, align 8
  %104 = getelementptr inbounds %struct.Proto, %struct.Proto* %103, i32 0, i32 15
  store %struct.TValue* %102, %struct.TValue** %104, align 8
  br label %105

; <label>:105:                                    ; preds = %111, %78
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.Proto*, %struct.Proto** %9, align 8
  %108 = getelementptr inbounds %struct.Proto, %struct.Proto* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %120

; <label>:111:                                    ; preds = %105
  %112 = load %struct.Proto*, %struct.Proto** %9, align 8
  %113 = getelementptr inbounds %struct.Proto, %struct.Proto* %112, i32 0, i32 15
  %114 = load %struct.TValue*, %struct.TValue** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds %struct.TValue, %struct.TValue* %114, i64 %117
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %118, i32 0, i32 1
  store i8 0, i8* %119, align 8
  br label %105

; <label>:120:                                    ; preds = %105
  %121 = load %struct.Proto*, %struct.Proto** %9, align 8
  %122 = getelementptr inbounds %struct.Proto, %struct.Proto* %121, i32 0, i32 15
  %123 = load %struct.TValue*, %struct.TValue** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TValue, %struct.TValue* %123, i64 %125
  store %struct.TValue* %126, %struct.TValue** %14, align 8
  %127 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %127, %struct.TValue** %15, align 8
  %128 = load %struct.TValue*, %struct.TValue** %14, align 8
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 0
  %130 = load %struct.TValue*, %struct.TValue** %15, align 8
  %131 = getelementptr inbounds %struct.TValue, %struct.TValue* %130, i32 0, i32 0
  %132 = bitcast %union.Value* %129 to i8*
  %133 = bitcast %union.Value* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 8, i32 8, i1 false)
  %134 = load %struct.TValue*, %struct.TValue** %15, align 8
  %135 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i32 0, i32 1
  %136 = load i8, i8* %135, align 8
  %137 = load %struct.TValue*, %struct.TValue** %14, align 8
  %138 = getelementptr inbounds %struct.TValue, %struct.TValue* %137, i32 0, i32 1
  store i8 %136, i8* %138, align 8
  %139 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %140 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %141 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TValue*, %struct.TValue** %7, align 8
  %145 = getelementptr inbounds %struct.TValue, %struct.TValue* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 64
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %176

; <label>:150:                                    ; preds = %120
  %151 = load %struct.Proto*, %struct.Proto** %9, align 8
  %152 = getelementptr inbounds %struct.Proto, %struct.Proto* %151, i32 0, i32 2
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

; <label>:157:                                    ; preds = %150
  %158 = load %struct.TValue*, %struct.TValue** %7, align 8
  %159 = getelementptr inbounds %struct.TValue, %struct.TValue* %158, i32 0, i32 0
  %160 = bitcast %union.Value* %159 to %struct.GCObject**
  %161 = load %struct.GCObject*, %struct.GCObject** %160, align 8
  %162 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %161, i32 0, i32 2
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 24
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

; <label>:167:                                    ; preds = %157
  %168 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %169 = load %struct.Proto*, %struct.Proto** %9, align 8
  %170 = bitcast %struct.Proto* %169 to %union.GCUnion*
  %171 = bitcast %union.GCUnion* %170 to %struct.GCObject*
  %172 = load %struct.TValue*, %struct.TValue** %7, align 8
  %173 = getelementptr inbounds %struct.TValue, %struct.TValue* %172, i32 0, i32 0
  %174 = bitcast %union.Value* %173 to %struct.GCObject**
  %175 = load %struct.GCObject*, %struct.GCObject** %174, align 8
  call void @luaC_barrier_(%struct.lua_State* %168, %struct.GCObject* %171, %struct.GCObject* %175)
  br label %177

; <label>:176:                                    ; preds = %157, %150, %120
  br label %177

; <label>:177:                                    ; preds = %176, %167
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %4, align 4
  br label %179

; <label>:179:                                    ; preds = %177, %75
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_int(%struct.FuncState*, i32, i64) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @fitsBx(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %3
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @luaK_codeAsBx(%struct.FuncState* %11, i32 1, i32 %12, i32 %14)
  br label %23

; <label>:16:                                     ; preds = %3
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @luaK_intK(%struct.FuncState* %19, i64 %20)
  %22 = call i32 @luaK_codek(%struct.FuncState* %17, i32 %18, i32 %21)
  br label %23

; <label>:23:                                     ; preds = %16, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fitsBx(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp sle i64 -65535, %3
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = icmp sle i64 %6, 65536
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_codek(%struct.FuncState*, i32, i32) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 131071
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @luaK_codeABx(%struct.FuncState* %12, i32 3, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %24

; <label>:16:                                     ; preds = %3
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @luaK_codeABx(%struct.FuncState* %17, i32 4, i32 %18, i32 0)
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
define internal i32 @luaK_intK(%struct.FuncState*, i64) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TValue* %5, %struct.TValue** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.TValue*, %struct.TValue** %7, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to i8**
  store i8* %10, i8** %13, align 8
  %14 = load %struct.TValue*, %struct.TValue** %7, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  store i8 2, i8* %15, align 8
  store %struct.TValue* %6, %struct.TValue** %8, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TValue*, %struct.TValue** %8, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load %struct.TValue*, %struct.TValue** %8, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  store i8 35, i8* %21, align 8
  %22 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %23 = call i32 @addk(%struct.FuncState* %22, %struct.TValue* %5, %struct.TValue* %6)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 16
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 1
  %15 = bitcast %union.anon.7* %14 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %33

; <label>:23:                                     ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 16777215
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = shl i32 %28, 24
  %30 = and i32 %29, -16777216
  %31 = or i32 %26, %30
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %62

; <label>:33:                                     ; preds = %3
  %34 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 17
  br i1 %37, label %38, label %60

; <label>:38:                                     ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16777215
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = shl i32 %43, 24
  %45 = and i32 %44, -16777216
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -32641
  %51 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %51, i32 0, i32 15
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 7
  %56 = and i32 %55, 32640
  %57 = or i32 %50, %56
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_reserveregs(%struct.FuncState* %59, i32 1)
  br label %61

; <label>:60:                                     ; preds = %33
  br label %61

; <label>:61:                                     ; preds = %60, %38
  br label %62

; <label>:62:                                     ; preds = %61, %23
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %2
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  store i32 7, i32* %11, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 16
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %19 = bitcast %union.anon.7* %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %23, 7
  %25 = and i32 %24, 255
  %26 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  store i32 %25, i32* %28, align 8
  br label %63

; <label>:29:                                     ; preds = %2
  %30 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 17
  br i1 %33, label %34, label %62

; <label>:34:                                     ; preds = %29
  %35 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 0
  %37 = load %struct.Proto*, %struct.Proto** %36, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 16
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 1
  %42 = bitcast %union.anon.7* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 16777215
  %48 = or i32 %47, 33554432
  %49 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %49, i32 0, i32 0
  %51 = load %struct.Proto*, %struct.Proto** %50, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 16
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.7* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %48, i32* %59, align 4
  %60 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %60, i32 0, i32 0
  store i32 15, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %34, %29
  br label %63

; <label>:63:                                     ; preds = %62, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %133 [
    i32 8, label %8
    i32 9, label %11
    i32 11, label %23
    i32 12, label %43
    i32 13, label %70
    i32 10, label %97
    i32 17, label %130
    i32 16, label %130
  ]

; <label>:8:                                      ; preds = %2
  %9 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 0
  store i32 7, i32* %10, align 8
  br label %134

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 1
  %15 = bitcast %union.anon.7* %14 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @luaK_codeABCk(%struct.FuncState* %12, i32 7, i32 0, i32 %16, i32 0, i32 0)
  %18 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %20 = bitcast %union.anon.7* %19 to i32*
  store i32 %17, i32* %20, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 0
  store i32 15, i32* %22, align 8
  br label %134

; <label>:23:                                     ; preds = %2
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %27 = bitcast %union.anon.7* %26 to %struct.anon.8*
  %28 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i32
  %31 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.7* %32 to %struct.anon.8*
  %34 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 8
  %36 = sext i16 %35 to i32
  %37 = call i32 @luaK_codeABCk(%struct.FuncState* %24, i32 9, i32 0, i32 %30, i32 %36, i32 0)
  %38 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %38, i32 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  store i32 %37, i32* %40, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 0
  store i32 15, i32* %42, align 8
  br label %134

; <label>:43:                                     ; preds = %2
  %44 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %45 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %45, i32 0, i32 1
  %47 = bitcast %union.anon.7* %46 to %struct.anon.8*
  %48 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i32
  call void @freereg(%struct.FuncState* %44, i32 %50)
  %51 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %52 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %52, i32 0, i32 1
  %54 = bitcast %union.anon.7* %53 to %struct.anon.8*
  %55 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 2
  %57 = zext i8 %56 to i32
  %58 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %58, i32 0, i32 1
  %60 = bitcast %union.anon.7* %59 to %struct.anon.8*
  %61 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 8
  %63 = sext i16 %62 to i32
  %64 = call i32 @luaK_codeABCk(%struct.FuncState* %51, i32 11, i32 0, i32 %57, i32 %63, i32 0)
  %65 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %65, i32 0, i32 1
  %67 = bitcast %union.anon.7* %66 to i32*
  store i32 %64, i32* %67, align 8
  %68 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %68, i32 0, i32 0
  store i32 15, i32* %69, align 8
  br label %134

; <label>:70:                                     ; preds = %2
  %71 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %72 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %72, i32 0, i32 1
  %74 = bitcast %union.anon.7* %73 to %struct.anon.8*
  %75 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 2
  %77 = zext i8 %76 to i32
  call void @freereg(%struct.FuncState* %71, i32 %77)
  %78 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %79 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %79, i32 0, i32 1
  %81 = bitcast %union.anon.7* %80 to %struct.anon.8*
  %82 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 2
  %84 = zext i8 %83 to i32
  %85 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %85, i32 0, i32 1
  %87 = bitcast %union.anon.7* %86 to %struct.anon.8*
  %88 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %87, i32 0, i32 0
  %89 = load i16, i16* %88, align 8
  %90 = sext i16 %89 to i32
  %91 = call i32 @luaK_codeABCk(%struct.FuncState* %78, i32 12, i32 0, i32 %84, i32 %90, i32 0)
  %92 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %93 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %92, i32 0, i32 1
  %94 = bitcast %union.anon.7* %93 to i32*
  store i32 %91, i32* %94, align 8
  %95 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %96 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %95, i32 0, i32 0
  store i32 15, i32* %96, align 8
  br label %134

; <label>:97:                                     ; preds = %2
  %98 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %99 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %100 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %99, i32 0, i32 1
  %101 = bitcast %union.anon.7* %100 to %struct.anon.8*
  %102 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 2
  %104 = zext i8 %103 to i32
  %105 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %106 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %105, i32 0, i32 1
  %107 = bitcast %union.anon.7* %106 to %struct.anon.8*
  %108 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %107, i32 0, i32 0
  %109 = load i16, i16* %108, align 8
  %110 = sext i16 %109 to i32
  call void @freeregs(%struct.FuncState* %98, i32 %104, i32 %110)
  %111 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %112 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %113 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %112, i32 0, i32 1
  %114 = bitcast %union.anon.7* %113 to %struct.anon.8*
  %115 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %114, i32 0, i32 1
  %116 = load i8, i8* %115, align 2
  %117 = zext i8 %116 to i32
  %118 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %119 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %118, i32 0, i32 1
  %120 = bitcast %union.anon.7* %119 to %struct.anon.8*
  %121 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %120, i32 0, i32 0
  %122 = load i16, i16* %121, align 8
  %123 = sext i16 %122 to i32
  %124 = call i32 @luaK_codeABCk(%struct.FuncState* %111, i32 10, i32 0, i32 %117, i32 %123, i32 0)
  %125 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %126 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %125, i32 0, i32 1
  %127 = bitcast %union.anon.7* %126 to i32*
  store i32 %124, i32* %127, align 8
  %128 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %129 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %128, i32 0, i32 0
  store i32 15, i32* %129, align 8
  br label %134

; <label>:130:                                    ; preds = %2, %2
  %131 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %132 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_setoneret(%struct.FuncState* %131, %struct.expdesc* %132)
  br label %134

; <label>:133:                                    ; preds = %2
  br label %134

; <label>:134:                                    ; preds = %133, %130, %97, %70, %43, %23, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freereg(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 13
  %8 = load i8, i8* %7, align 2
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %5, %9
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 15
  %14 = load i8, i8* %13, align 4
  %15 = add i8 %14, -1
  store i8 %15, i8* %13, align 4
  br label %16

; <label>:16:                                     ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeregs(%struct.FuncState*, i32, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = load i32, i32* %5, align 4
  call void @freereg(%struct.FuncState* %11, i32 %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = load i32, i32* %6, align 4
  call void @freereg(%struct.FuncState* %13, i32 %14)
  br label %20

; <label>:15:                                     ; preds = %3
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = load i32, i32* %6, align 4
  call void @freereg(%struct.FuncState* %16, i32 %17)
  %18 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %19 = load i32, i32* %5, align 4
  call void @freereg(%struct.FuncState* %18, i32 %19)
  br label %20

; <label>:20:                                     ; preds = %15, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) #2 {
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
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 15
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %15, 1
  call void @exp2reg(%struct.FuncState* %10, %struct.expdesc* %11, i32 %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeexp(%struct.FuncState*, %struct.expdesc*) #2 {
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
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8
  call void @freereg(%struct.FuncState* %10, i32 %14)
  br label %15

; <label>:15:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp2reg(%struct.FuncState*, %struct.expdesc*, i32) #2 {
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
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %3
  %19 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 2
  %22 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
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
  %52 = icmp eq i32 %51, 14
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
  %92 = bitcast %union.anon.7* %91 to i32*
  store i32 %89, i32* %92, align 8
  %93 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %93, i32 0, i32 0
  store i32 7, i32* %94, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #2 {
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
  %23 = bitcast %union.anon.7* %22 to i32*
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %54

; <label>:25:                                     ; preds = %12
  %26 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 13
  %32 = load i8, i8* %31, align 2
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %46

; <label>:35:                                     ; preds = %25
  %36 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %38 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %38, i32 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8
  call void @exp2reg(%struct.FuncState* %36, %struct.expdesc* %37, i32 %41)
  %42 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 1
  %44 = bitcast %union.anon.7* %43 to i32*
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
  %52 = bitcast %union.anon.7* %51 to i32*
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %47, %35, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) #2 {
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
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) #2 {
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
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %8 = call i32 @luaK_exp2K(%struct.FuncState* %6, %struct.expdesc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %14 = call i32 @luaK_exp2anyreg(%struct.FuncState* %12, %struct.expdesc* %13)
  store i32 0, i32* %3, align 4
  br label %15

; <label>:15:                                     ; preds = %11, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_exp2K(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %58, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %46 [
    i32 2, label %18
    i32 3, label %21
    i32 1, label %24
    i32 6, label %27
    i32 5, label %34
    i32 4, label %41
  ]

; <label>:18:                                     ; preds = %14
  %19 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %20 = call i32 @boolK(%struct.FuncState* %19, i32 1)
  store i32 %20, i32* %6, align 4
  br label %47

; <label>:21:                                     ; preds = %14
  %22 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %23 = call i32 @boolK(%struct.FuncState* %22, i32 0)
  store i32 %23, i32* %6, align 4
  br label %47

; <label>:24:                                     ; preds = %14
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %26 = call i32 @nilK(%struct.FuncState* %25)
  store i32 %26, i32* %6, align 4
  br label %47

; <label>:27:                                     ; preds = %14
  %28 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 1
  %31 = bitcast %union.anon.7* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @luaK_intK(%struct.FuncState* %28, i64 %32)
  store i32 %33, i32* %6, align 4
  br label %47

; <label>:34:                                     ; preds = %14
  %35 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %38 = bitcast %union.anon.7* %37 to double*
  %39 = load double, double* %38, align 8
  %40 = call i32 @luaK_numberK(%struct.FuncState* %35, double %39)
  store i32 %40, i32* %6, align 4
  br label %47

; <label>:41:                                     ; preds = %14
  %42 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 1
  %44 = bitcast %union.anon.7* %43 to i32*
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  br label %47

; <label>:46:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %59

; <label>:47:                                     ; preds = %41, %34, %27, %24, %21, %18
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 255
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %47
  %51 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.7* %55 to i32*
  store i32 %53, i32* %56, align 8
  store i32 1, i32* %3, align 4
  br label %59

; <label>:57:                                     ; preds = %47
  br label %58

; <label>:58:                                     ; preds = %57, %2
  store i32 0, i32* %3, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %50, %46
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %91 [
    i32 8, label %11
    i32 9, label %20
    i32 11, label %31
    i32 12, label %46
    i32 13, label %61
    i32 10, label %76
  ]

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %12, %struct.expdesc* %13)
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  %19 = load i32, i32* %18, align 8
  call void @exp2reg(%struct.FuncState* %14, %struct.expdesc* %15, i32 %19)
  br label %95

; <label>:20:                                     ; preds = %3
  %21 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %23 = call i32 @luaK_exp2anyreg(%struct.FuncState* %21, %struct.expdesc* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @luaK_codeABCk(%struct.FuncState* %24, i32 8, i32 %25, i32 %29, i32 0, i32 0)
  br label %92

; <label>:31:                                     ; preds = %3
  %32 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %33 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %33, i32 0, i32 1
  %35 = bitcast %union.anon.7* %34 to %struct.anon.8*
  %36 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %39, i32 0, i32 1
  %41 = bitcast %union.anon.7* %40 to %struct.anon.8*
  %42 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 8
  %44 = sext i16 %43 to i32
  %45 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeABRK(%struct.FuncState* %32, i32 13, i32 %38, i32 %44, %struct.expdesc* %45)
  br label %92

; <label>:46:                                     ; preds = %3
  %47 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %48 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %48, i32 0, i32 1
  %50 = bitcast %union.anon.7* %49 to %struct.anon.8*
  %51 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 2
  %53 = zext i8 %52 to i32
  %54 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.7* %55 to %struct.anon.8*
  %57 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = sext i16 %58 to i32
  %60 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeABRK(%struct.FuncState* %47, i32 15, i32 %53, i32 %59, %struct.expdesc* %60)
  br label %92

; <label>:61:                                     ; preds = %3
  %62 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %63 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %63, i32 0, i32 1
  %65 = bitcast %union.anon.7* %64 to %struct.anon.8*
  %66 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 2
  %68 = zext i8 %67 to i32
  %69 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %69, i32 0, i32 1
  %71 = bitcast %union.anon.7* %70 to %struct.anon.8*
  %72 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %71, i32 0, i32 0
  %73 = load i16, i16* %72, align 8
  %74 = sext i16 %73 to i32
  %75 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeABRK(%struct.FuncState* %62, i32 16, i32 %68, i32 %74, %struct.expdesc* %75)
  br label %92

; <label>:76:                                     ; preds = %3
  %77 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %78 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %78, i32 0, i32 1
  %80 = bitcast %union.anon.7* %79 to %struct.anon.8*
  %81 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 2
  %83 = zext i8 %82 to i32
  %84 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %84, i32 0, i32 1
  %86 = bitcast %union.anon.7* %85 to %struct.anon.8*
  %87 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %86, i32 0, i32 0
  %88 = load i16, i16* %87, align 8
  %89 = sext i16 %88 to i32
  %90 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeABRK(%struct.FuncState* %77, i32 14, i32 %83, i32 %89, %struct.expdesc* %90)
  br label %92

; <label>:91:                                     ; preds = %3
  br label %92

; <label>:92:                                     ; preds = %91, %76, %61, %46, %31, %20
  %93 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %94 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %93, %struct.expdesc* %94)
  br label %95

; <label>:95:                                     ; preds = %92, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeABRK(%struct.FuncState*, i32, i32, i32, %struct.expdesc*) #2 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.expdesc*, align 8
  %11 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.expdesc* %4, %struct.expdesc** %10, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %14 = call i32 @luaK_exp2RK(%struct.FuncState* %12, %struct.expdesc* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @luaK_codeABCk(%struct.FuncState* %15, i32 %16, i32 %17, i32 %18, i32 %22, i32 %23)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2 {
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
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @freeexp(%struct.FuncState* %15, %struct.expdesc* %16)
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 15
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  store i32 %20, i32* %23, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 0
  store i32 7, i32* %25, align 8
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 2)
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeABRK(%struct.FuncState* %27, i32 18, i32 %31, i32 %32, %struct.expdesc* %33)
  %34 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %34, %struct.expdesc* %35)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) #2 {
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
    i32 14, label %11
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
  %16 = bitcast %union.anon.7* %15 to i32*
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
define internal void @negatecondition(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @getjumpcontrol(%struct.FuncState* %6, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -32769
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %16, 15
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = shl i32 %19, 15
  %21 = and i32 %20, 32768
  %22 = or i32 %14, %21
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumponcond(%struct.FuncState*, %struct.expdesc*, i32) #2 {
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
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %42

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 16
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = lshr i32 %26, 0
  %28 = and i32 %27, 127
  %29 = icmp eq i32 %28, 52
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %13
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @removelastinstruction(%struct.FuncState* %31)
  %32 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @condjump(%struct.FuncState* %32, i32 67, i32 %35, i32 0, i32 0, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %54

; <label>:41:                                     ; preds = %13
  br label %42

; <label>:42:                                     ; preds = %41, %3
  %43 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @discharge2anyreg(%struct.FuncState* %43, %struct.expdesc* %44)
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %46 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @freeexp(%struct.FuncState* %45, %struct.expdesc* %46)
  %47 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %48 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %48, i32 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @condjump(%struct.FuncState* %47, i32 68, i32 255, i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

; <label>:54:                                     ; preds = %42, %30
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) #2 {
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
    i32 14, label %11
    i32 1, label %16
    i32 3, label %16
  ]

; <label>:11:                                     ; preds = %2
  %12 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
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
define hidden i32 @luaK_isKint(%struct.expdesc*) #2 {
  %2 = alloca %struct.expdesc*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %2, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %1
  %8 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  %15 = xor i1 %14, true
  br label %16

; <label>:16:                                     ; preds = %7, %1
  %17 = phi i1 [ false, %1 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %14 = call i32 @isKstr(%struct.FuncState* %12, %struct.expdesc* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %11
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %19 = call i32 @luaK_exp2anyreg(%struct.FuncState* %17, %struct.expdesc* %18)
  br label %20

; <label>:20:                                     ; preds = %16, %11, %3
  %21 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = trunc i32 %24 to i8
  %26 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.7* %27 to %struct.anon.8*
  %29 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %28, i32 0, i32 1
  store i8 %25, i8* %29, align 2
  %30 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %20
  %35 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %35, i32 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = trunc i32 %38 to i16
  %40 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 1
  %42 = bitcast %union.anon.7* %41 to %struct.anon.8*
  %43 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %42, i32 0, i32 0
  store i16 %39, i16* %43, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %44, i32 0, i32 0
  store i32 11, i32* %45, align 8
  br label %93

; <label>:46:                                     ; preds = %20
  %47 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %48 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %49 = call i32 @isKstr(%struct.FuncState* %47, %struct.expdesc* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %46
  %52 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %52, i32 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = trunc i32 %55 to i16
  %57 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %57, i32 0, i32 1
  %59 = bitcast %union.anon.7* %58 to %struct.anon.8*
  %60 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %59, i32 0, i32 0
  store i16 %56, i16* %60, align 8
  %61 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %62 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %61, i32 0, i32 0
  store i32 13, i32* %62, align 8
  br label %92

; <label>:63:                                     ; preds = %46
  %64 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %65 = call i32 @isCint(%struct.expdesc* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

; <label>:67:                                     ; preds = %63
  %68 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %68, i32 0, i32 1
  %70 = bitcast %union.anon.7* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = trunc i32 %72 to i16
  %74 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %74, i32 0, i32 1
  %76 = bitcast %union.anon.7* %75 to %struct.anon.8*
  %77 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %76, i32 0, i32 0
  store i16 %73, i16* %77, align 8
  %78 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %78, i32 0, i32 0
  store i32 12, i32* %79, align 8
  br label %91

; <label>:80:                                     ; preds = %63
  %81 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %82 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %83 = call i32 @luaK_exp2anyreg(%struct.FuncState* %81, %struct.expdesc* %82)
  %84 = trunc i32 %83 to i16
  %85 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %85, i32 0, i32 1
  %87 = bitcast %union.anon.7* %86 to %struct.anon.8*
  %88 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %87, i32 0, i32 0
  store i16 %84, i16* %88, align 8
  %89 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %89, i32 0, i32 0
  store i32 10, i32* %90, align 8
  br label %91

; <label>:91:                                     ; preds = %80, %67
  br label %92

; <label>:92:                                     ; preds = %91, %51
  br label %93

; <label>:93:                                     ; preds = %92, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isKstr(%struct.FuncState*, %struct.expdesc*) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %39

; <label>:9:                                      ; preds = %2
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %39, label %17

; <label>:17:                                     ; preds = %9
  %18 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %20 = bitcast %union.anon.7* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 255
  br i1 %22, label %23, label %39

; <label>:23:                                     ; preds = %17
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 0
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 15
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 1
  %31 = bitcast %union.anon.7* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %33
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 84
  br label %39

; <label>:39:                                     ; preds = %23, %17, %9, %2
  %40 = phi i1 [ false, %17 ], [ false, %9 ], [ false, %2 ], [ %38, %23 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isCint(%struct.expdesc*) #2 {
  %2 = alloca %struct.expdesc*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %2, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %4 = call i32 @luaK_isKint(%struct.expdesc* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %1
  %7 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %10, 255
  br label %12

; <label>:12:                                     ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) #2 {
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
  %22 = add i32 %21, 50
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
define internal i32 @constfolding(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca %struct.TValue, align 8
  %11 = alloca %struct.TValue, align 8
  %12 = alloca %struct.TValue, align 8
  %13 = alloca double, align 8
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %15 = call i32 @tonumeral(%struct.expdesc* %14, %struct.TValue* %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %4
  %18 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %19 = call i32 @tonumeral(%struct.expdesc* %18, %struct.TValue* %11)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @validop(i32 %22, %struct.TValue* %10, %struct.TValue* %11)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21, %17, %4
  store i32 0, i32* %5, align 4
  br label %66

; <label>:26:                                     ; preds = %21
  %27 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 2
  %29 = load %struct.LexState*, %struct.LexState** %28, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 6
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @luaO_rawarith(%struct.lua_State* %31, i32 %32, %struct.TValue* %10, %struct.TValue* %11, %struct.TValue* %12)
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %47

; <label>:38:                                     ; preds = %26
  %39 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %39, i32 0, i32 0
  store i32 6, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 0
  %42 = bitcast %union.Value* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %44, i32 0, i32 1
  %46 = bitcast %union.anon.7* %45 to i64*
  store i64 %43, i64* %46, align 8
  br label %65

; <label>:47:                                     ; preds = %26
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to double*
  %50 = load double, double* %49, align 8
  store double %50, double* %13, align 8
  %51 = load double, double* %13, align 8
  %52 = load double, double* %13, align 8
  %53 = fcmp oeq double %51, %52
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %47
  %55 = load double, double* %13, align 8
  %56 = fcmp oeq double %55, 0.000000e+00
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54, %47
  store i32 0, i32* %5, align 4
  br label %66

; <label>:58:                                     ; preds = %54
  %59 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %59, i32 0, i32 0
  store i32 5, i32* %60, align 8
  %61 = load double, double* %13, align 8
  %62 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %62, i32 0, i32 1
  %64 = bitcast %union.anon.7* %63 to double*
  store double %61, double* %64, align 8
  br label %65

; <label>:65:                                     ; preds = %58, %38
  store i32 1, i32* %5, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %57, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeunexpval(%struct.FuncState*, i32, %struct.expdesc*, i32) #2 {
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
  %18 = call i32 @luaK_codeABCk(%struct.FuncState* %15, i32 %16, i32 0, i32 %17, i32 0, i32 0)
  %19 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  store i32 %18, i32* %21, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 0
  store i32 15, i32* %23, align 8
  %24 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %25 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %24, i32 %25)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codenot(%struct.FuncState*, %struct.expdesc*) #2 {
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
    i32 14, label %17
    i32 15, label %20
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
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @luaK_codeABCk(%struct.FuncState* %25, i32 52, i32 0, i32 %29, i32 0, i32 0)
  %31 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.7* %32 to i32*
  store i32 %30, i32* %33, align 8
  %34 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %34, i32 0, i32 0
  store i32 15, i32* %35, align 8
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
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %46 [
    i32 19, label %10
    i32 20, label %13
    i32 12, label %16
    i32 0, label %19
    i32 1, label %19
    i32 2, label %19
    i32 5, label %19
    i32 6, label %19
    i32 3, label %19
    i32 4, label %19
    i32 7, label %19
    i32 8, label %19
    i32 9, label %19
    i32 10, label %19
    i32 11, label %19
    i32 13, label %28
    i32 16, label %28
    i32 14, label %37
    i32 15, label %37
    i32 17, label %37
    i32 18, label %37
  ]

; <label>:10:                                     ; preds = %3
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* %12)
  br label %47

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_goiffalse(%struct.FuncState* %14, %struct.expdesc* %15)
  br label %47

; <label>:16:                                     ; preds = %3
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %17, %struct.expdesc* %18)
  br label %47

; <label>:19:                                     ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %20 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %21 = call i32 @tonumeral(%struct.expdesc* %20, %struct.TValue* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19
  %24 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %26 = call i32 @luaK_exp2anyreg(%struct.FuncState* %24, %struct.expdesc* %25)
  br label %27

; <label>:27:                                     ; preds = %23, %19
  br label %47

; <label>:28:                                     ; preds = %3, %3
  %29 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %30 = call i32 @tonumeral(%struct.expdesc* %29, %struct.TValue* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %28
  %33 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %34 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %35 = call i32 @luaK_exp2RK(%struct.FuncState* %33, %struct.expdesc* %34)
  br label %36

; <label>:36:                                     ; preds = %32, %28
  br label %47

; <label>:37:                                     ; preds = %3, %3, %3, %3
  %38 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %39 = call i32 @isSCnumber(%struct.expdesc* %38, i64* %7, i32* %8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %37
  %42 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %43 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %44 = call i32 @luaK_exp2anyreg(%struct.FuncState* %42, %struct.expdesc* %43)
  br label %45

; <label>:45:                                     ; preds = %41, %37
  br label %47

; <label>:46:                                     ; preds = %3
  br label %47

; <label>:47:                                     ; preds = %46, %45, %36, %27, %16, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonumeral(%struct.expdesc*, %struct.TValue*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
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
  %21 = load %struct.TValue*, %struct.TValue** %5, align 8
  %22 = icmp ne %struct.TValue* %21, null
  br i1 %22, label %23, label %34

; <label>:23:                                     ; preds = %20
  %24 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %24, %struct.TValue** %6, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %27 = bitcast %union.anon.7* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TValue*, %struct.TValue** %6, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load %struct.TValue*, %struct.TValue** %6, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  store i8 35, i8* %33, align 8
  br label %34

; <label>:34:                                     ; preds = %23, %20
  store i32 1, i32* %3, align 4
  br label %51

; <label>:35:                                     ; preds = %16
  %36 = load %struct.TValue*, %struct.TValue** %5, align 8
  %37 = icmp ne %struct.TValue* %36, null
  br i1 %37, label %38, label %49

; <label>:38:                                     ; preds = %35
  %39 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %39, %struct.TValue** %7, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 1
  %42 = bitcast %union.anon.7* %41 to double*
  %43 = load double, double* %42, align 8
  %44 = load %struct.TValue*, %struct.TValue** %7, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to double*
  store double %43, double* %46, align 8
  %47 = load %struct.TValue*, %struct.TValue** %7, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 1
  store i8 19, i8* %48, align 8
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
define internal i32 @isSCnumber(%struct.expdesc*, i64*, i32*) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %3
  %13 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 1
  %15 = bitcast %union.anon.7* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  br label %35

; <label>:18:                                     ; preds = %3
  %19 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %18
  %24 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 1
  %26 = bitcast %union.anon.7* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = call i32 @floatI(double %27, i64* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %23, %18
  store i32 0, i32* %4, align 4
  br label %53

; <label>:32:                                     ; preds = %23
  %33 = load i32*, i32** %7, align 8
  store i32 1, i32* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %32
  br label %35

; <label>:35:                                     ; preds = %34, %12
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %35
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @fitsC(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %43
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 127
  store i64 %51, i64* %49, align 8
  store i32 1, i32* %4, align 4
  br label %53

; <label>:52:                                     ; preds = %43, %35
  store i32 0, i32* %4, align 4
  br label %53

; <label>:53:                                     ; preds = %52, %48, %31
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2 {
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
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %153 [
    i32 19, label %14
    i32 20, label %27
    i32 12, label %40
    i32 0, label %47
    i32 2, label %47
    i32 1, label %63
    i32 5, label %63
    i32 6, label %63
    i32 3, label %63
    i32 4, label %63
    i32 7, label %79
    i32 8, label %79
    i32 9, label %79
    i32 10, label %94
    i32 11, label %118
    i32 13, label %130
    i32 16, label %130
    i32 14, label %135
    i32 15, label %135
    i32 17, label %143
    i32 18, label %143
  ]

; <label>:14:                                     ; preds = %5
  %15 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_dischargevars(%struct.FuncState* %15, %struct.expdesc* %16)
  %17 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 3
  %20 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  call void @luaK_concat(%struct.FuncState* %17, i32* %19, i32 %22)
  %23 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %25 = bitcast %struct.expdesc* %23 to i8*
  %26 = bitcast %struct.expdesc* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false)
  br label %154

; <label>:27:                                     ; preds = %5
  %28 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_dischargevars(%struct.FuncState* %28, %struct.expdesc* %29)
  %30 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %31 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 2
  %33 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  call void @luaK_concat(%struct.FuncState* %30, i32* %32, i32 %35)
  %36 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %38 = bitcast %struct.expdesc* %36 to i8*
  %39 = bitcast %struct.expdesc* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 8, i1 false)
  br label %154

; <label>:40:                                     ; preds = %5
  %41 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %42 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %41, %struct.expdesc* %42)
  %43 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %45 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %46 = load i32, i32* %10, align 4
  call void @codeconcat(%struct.FuncState* %43, %struct.expdesc* %44, %struct.expdesc* %45, i32 %46)
  br label %154

; <label>:47:                                     ; preds = %5, %5
  %48 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 0
  %51 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %52 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %53 = call i32 @constfolding(%struct.FuncState* %48, i32 %50, %struct.expdesc* %51, %struct.expdesc* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

; <label>:55:                                     ; preds = %47
  %56 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 38
  %59 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %60 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %61 = load i32, i32* %10, align 4
  call void @codecommutative(%struct.FuncState* %56, i32 %58, %struct.expdesc* %59, %struct.expdesc* %60, i32 %61)
  br label %62

; <label>:62:                                     ; preds = %55, %47
  br label %154

; <label>:63:                                     ; preds = %5, %5, %5, %5, %5
  %64 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 0
  %67 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %68 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %69 = call i32 @constfolding(%struct.FuncState* %64, i32 %66, %struct.expdesc* %67, %struct.expdesc* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

; <label>:71:                                     ; preds = %63
  %72 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 38
  %75 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %76 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %77 = load i32, i32* %10, align 4
  call void @codearith(%struct.FuncState* %72, i32 %74, %struct.expdesc* %75, %struct.expdesc* %76, i32 0, i32 %77)
  br label %78

; <label>:78:                                     ; preds = %71, %63
  br label %154

; <label>:79:                                     ; preds = %5, %5, %5
  %80 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 0
  %83 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %84 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %85 = call i32 @constfolding(%struct.FuncState* %80, i32 %82, %struct.expdesc* %83, %struct.expdesc* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

; <label>:87:                                     ; preds = %79
  %88 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %91 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %92 = load i32, i32* %10, align 4
  call void @codebitwise(%struct.FuncState* %88, i32 %89, %struct.expdesc* %90, %struct.expdesc* %91, i32 %92)
  br label %93

; <label>:93:                                     ; preds = %87, %79
  br label %154

; <label>:94:                                     ; preds = %5
  %95 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %96 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %97 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %98 = call i32 @constfolding(%struct.FuncState* %95, i32 10, %struct.expdesc* %96, %struct.expdesc* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %117, label %100

; <label>:100:                                    ; preds = %94
  %101 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %102 = call i32 @isSCint(%struct.expdesc* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

; <label>:104:                                    ; preds = %100
  %105 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %106 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @swapexps(%struct.expdesc* %105, %struct.expdesc* %106)
  %107 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %108 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %109 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %110 = load i32, i32* %10, align 4
  call void @codebini(%struct.FuncState* %107, i32 37, %struct.expdesc* %108, %struct.expdesc* %109, i32 1, i32 %110)
  br label %116

; <label>:111:                                    ; preds = %100
  %112 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %113 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %114 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %115 = load i32, i32* %10, align 4
  call void @codeshift(%struct.FuncState* %112, i32 48, %struct.expdesc* %113, %struct.expdesc* %114, i32 %115)
  br label %116

; <label>:116:                                    ; preds = %111, %104
  br label %117

; <label>:117:                                    ; preds = %116, %94
  br label %154

; <label>:118:                                    ; preds = %5
  %119 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %120 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %121 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %122 = call i32 @constfolding(%struct.FuncState* %119, i32 11, %struct.expdesc* %120, %struct.expdesc* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

; <label>:124:                                    ; preds = %118
  %125 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %126 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %127 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %128 = load i32, i32* %10, align 4
  call void @codeshift(%struct.FuncState* %125, i32 49, %struct.expdesc* %126, %struct.expdesc* %127, i32 %128)
  br label %129

; <label>:129:                                    ; preds = %124, %118
  br label %154

; <label>:130:                                    ; preds = %5, %5
  %131 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %134 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @codeeq(%struct.FuncState* %131, i32 %132, %struct.expdesc* %133, %struct.expdesc* %134)
  br label %154

; <label>:135:                                    ; preds = %5, %5
  %136 = load i32, i32* %7, align 4
  %137 = sub i32 %136, 13
  %138 = add i32 %137, 58
  store i32 %138, i32* %11, align 4
  %139 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %142 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @codeorder(%struct.FuncState* %139, i32 %140, %struct.expdesc* %141, %struct.expdesc* %142)
  br label %154

; <label>:143:                                    ; preds = %5, %5
  %144 = load i32, i32* %7, align 4
  %145 = sub i32 %144, 16
  %146 = add i32 %145, 58
  store i32 %146, i32* %12, align 4
  %147 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %148 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @swapexps(%struct.expdesc* %147, %struct.expdesc* %148)
  %149 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %152 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @codeorder(%struct.FuncState* %149, i32 %150, %struct.expdesc* %151, %struct.expdesc* %152)
  br label %154

; <label>:153:                                    ; preds = %5
  br label %154

; <label>:154:                                    ; preds = %153, %143, %135, %130, %129, %117, %93, %78, %62, %40, %27, %14
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeconcat(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*, i32) #2 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store %struct.expdesc* %1, %struct.expdesc** %6, align 8
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = call i32* @previousinstruction(%struct.FuncState* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 0
  %16 = and i32 %15, 127
  %17 = icmp eq i32 %16, 54
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  store i32 %22, i32* %10, align 4
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @freeexp(%struct.FuncState* %23, %struct.expdesc* %24)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -32641
  %28 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 7
  %33 = and i32 %32, 32640
  %34 = or i32 %27, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -16711681
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = shl i32 %40, 16
  %42 = and i32 %41, 16711680
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %56

; <label>:45:                                     ; preds = %4
  %46 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %47 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @luaK_codeABCk(%struct.FuncState* %46, i32 54, i32 %50, i32 2, i32 0, i32 0)
  %52 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %53 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @freeexp(%struct.FuncState* %52, %struct.expdesc* %53)
  %54 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %55 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %54, i32 %55)
  br label %56

; <label>:56:                                     ; preds = %45, %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codecommutative(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %13 = call i32 @tonumeral(%struct.expdesc* %12, %struct.TValue* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %5
  %16 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @swapexps(%struct.expdesc* %16, %struct.expdesc* %17)
  store i32 1, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %15, %5
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  call void @codearith(%struct.FuncState* %19, i32 %20, %struct.expdesc* %21, %struct.expdesc* %22, i32 %23, i32 %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codearith(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32, i32) #2 {
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca %struct.expdesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.expdesc* %2, %struct.expdesc** %9, align 8
  store %struct.expdesc* %3, %struct.expdesc** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %15 = call i32 @isSCint(%struct.expdesc* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %6
  %18 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sub i32 %19, 38
  %21 = add i32 %20, 19
  %22 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %23 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  call void @codebini(%struct.FuncState* %18, i32 %21, %struct.expdesc* %22, %struct.expdesc* %23, i32 %24, i32 %25)
  br label %63

; <label>:26:                                     ; preds = %6
  %27 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %28 = call i32 @tonumeral(%struct.expdesc* %27, %struct.TValue* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

; <label>:30:                                     ; preds = %26
  %31 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %32 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %33 = call i32 @luaK_exp2K(%struct.FuncState* %31, %struct.expdesc* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

; <label>:35:                                     ; preds = %30
  %36 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %38 = bitcast %union.anon.7* %37 to i32*
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 38
  %42 = add i32 %41, 26
  store i32 %42, i32* %8, align 4
  %43 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %45 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  call void @finishbinexpval(%struct.FuncState* %43, %struct.expdesc* %44, %struct.expdesc* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  br label %62

; <label>:50:                                     ; preds = %30, %26
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %50
  %54 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %55 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  call void @swapexps(%struct.expdesc* %54, %struct.expdesc* %55)
  br label %56

; <label>:56:                                     ; preds = %53, %50
  %57 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %60 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %61 = load i32, i32* %12, align 4
  call void @codebinexpval(%struct.FuncState* %57, i32 %58, %struct.expdesc* %59, %struct.expdesc* %60, i32 %61)
  br label %62

; <label>:62:                                     ; preds = %56, %35
  br label %63

; <label>:63:                                     ; preds = %62, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codebitwise(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %5
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %21 = call i32 @luaK_exp2RK(%struct.FuncState* %19, %struct.expdesc* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %18
  %24 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  call void @swapexps(%struct.expdesc* %24, %struct.expdesc* %25)
  store i32 1, i32* %11, align 4
  br label %46

; <label>:26:                                     ; preds = %18, %5
  %27 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %26
  %32 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %33 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %34 = call i32 @luaK_exp2RK(%struct.FuncState* %32, %struct.expdesc* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %31, %26
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, 7
  %39 = add i32 %38, 45
  store i32 %39, i32* %13, align 4
  %40 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %43 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %44 = load i32, i32* %10, align 4
  call void @codebinexpval(%struct.FuncState* %40, i32 %41, %struct.expdesc* %42, %struct.expdesc* %43, i32 %44)
  br label %61

; <label>:45:                                     ; preds = %31
  br label %46

; <label>:46:                                     ; preds = %45, %23
  %47 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 7
  %53 = add i32 %52, 33
  store i32 %53, i32* %13, align 4
  %54 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %55 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %56 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  call void @finishbinexpval(%struct.FuncState* %54, %struct.expdesc* %55, %struct.expdesc* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %61

; <label>:61:                                     ; preds = %46, %36
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isSCint(%struct.expdesc*) #2 {
  %2 = alloca %struct.expdesc*, align 8
  store %struct.expdesc* %0, %struct.expdesc** %2, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %4 = call i32 @luaK_isKint(%struct.expdesc* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %1
  %7 = load %struct.expdesc*, %struct.expdesc** %2, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @fitsC(i64 %10)
  %12 = icmp ne i32 %11, 0
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapexps(%struct.expdesc*, %struct.expdesc*) #2 {
  %3 = alloca %struct.expdesc*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.expdesc, align 8
  store %struct.expdesc* %0, %struct.expdesc** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %3, align 8
  %7 = bitcast %struct.expdesc* %5 to i8*
  %8 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  %9 = load %struct.expdesc*, %struct.expdesc** %3, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %11 = bitcast %struct.expdesc* %9 to i8*
  %12 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  %13 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %14 = bitcast %struct.expdesc* %13 to i8*
  %15 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codebini(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32, i32) #2 {
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca %struct.expdesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.expdesc* %2, %struct.expdesc** %9, align 8
  store %struct.expdesc* %3, %struct.expdesc** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %18, 127
  store i32 %19, i32* %13, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  call void @finishbinexpval(%struct.FuncState* %20, %struct.expdesc* %21, %struct.expdesc* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeshift(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %13 = call i32 @isSCint(%struct.expdesc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

; <label>:15:                                     ; preds = %5
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %18, label %27

; <label>:18:                                     ; preds = %15
  store i32 1, i32* %11, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 0, %22
  %24 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i64*
  store i64 %23, i64* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %18, %15
  %28 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %30 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  call void @codebini(%struct.FuncState* %28, i32 36, %struct.expdesc* %29, %struct.expdesc* %30, i32 %31, i32 %32)
  br label %39

; <label>:33:                                     ; preds = %5
  %34 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %38 = load i32, i32* %10, align 4
  call void @codebinexpval(%struct.FuncState* %34, i32 %35, %struct.expdesc* %36, %struct.expdesc* %37, i32 %38)
  br label %39

; <label>:39:                                     ; preds = %33, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeeq(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #2 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store %struct.expdesc* %3, %struct.expdesc** %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 7
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %4
  %19 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @swapexps(%struct.expdesc* %19, %struct.expdesc* %20)
  br label %21

; <label>:21:                                     ; preds = %18, %4
  %22 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %23 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %24 = call i32 @luaK_exp2anyreg(%struct.FuncState* %22, %struct.expdesc* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %26 = call i32 @isSCnumber(%struct.expdesc* %25, i64* %11, i32* %12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %21
  store i32 62, i32* %13, align 4
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  br label %46

; <label>:31:                                     ; preds = %21
  %32 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %33 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %34 = call i32 @luaK_exp2RK(%struct.FuncState* %32, %struct.expdesc* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %31
  store i32 61, i32* %13, align 4
  %37 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 1
  %39 = bitcast %union.anon.7* %38 to i32*
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  br label %45

; <label>:41:                                     ; preds = %31
  store i32 58, i32* %13, align 4
  %42 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %43 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %44 = call i32 @luaK_exp2anyreg(%struct.FuncState* %42, %struct.expdesc* %43)
  store i32 %44, i32* %10, align 4
  br label %45

; <label>:45:                                     ; preds = %41, %36
  br label %46

; <label>:46:                                     ; preds = %45, %28
  %47 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %48 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %49 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @freeexps(%struct.FuncState* %47, %struct.expdesc* %48, %struct.expdesc* %49)
  %50 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 13
  %57 = zext i1 %56 to i32
  %58 = call i32 @condjump(%struct.FuncState* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %57)
  %59 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %59, i32 0, i32 1
  %61 = bitcast %union.anon.7* %60 to i32*
  store i32 %58, i32* %61, align 8
  %62 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %62, i32 0, i32 0
  store i32 14, i32* %63, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeorder(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #2 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store %struct.expdesc* %3, %struct.expdesc** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %14 = call i32 @isSCnumber(%struct.expdesc* %13, i64* %11, i32* %12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %4
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %19 = call i32 @luaK_exp2anyreg(%struct.FuncState* %17, %struct.expdesc* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %11, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, 59
  %24 = add i32 %23, 63
  store i32 %24, i32* %6, align 4
  br label %47

; <label>:25:                                     ; preds = %4
  %26 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %27 = call i32 @isSCnumber(%struct.expdesc* %26, i64* %11, i32* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %25
  %30 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %31 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %32 = call i32 @luaK_exp2anyreg(%struct.FuncState* %30, %struct.expdesc* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 59
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 65, i32 66
  store i32 %38, i32* %6, align 4
  br label %46

; <label>:39:                                     ; preds = %25
  %40 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %42 = call i32 @luaK_exp2anyreg(%struct.FuncState* %40, %struct.expdesc* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %45 = call i32 @luaK_exp2anyreg(%struct.FuncState* %43, %struct.expdesc* %44)
  store i32 %45, i32* %10, align 4
  br label %46

; <label>:46:                                     ; preds = %39, %29
  br label %47

; <label>:47:                                     ; preds = %46, %16
  %48 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %49 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %50 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @freeexps(%struct.FuncState* %48, %struct.expdesc* %49, %struct.expdesc* %50)
  %51 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @condjump(%struct.FuncState* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %57, i32 0, i32 1
  %59 = bitcast %union.anon.7* %58 to i32*
  store i32 %56, i32* %59, align 8
  %60 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %60, i32 0, i32 0
  store i32 14, i32* %61, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_fixline(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @removelastlineinfo(%struct.FuncState* %5)
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = load i32, i32* %4, align 4
  call void @savelineinfo(%struct.FuncState* %6, %struct.Proto* %9, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removelastlineinfo(%struct.FuncState*) #2 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %5 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8
  store %struct.Proto* %7, %struct.Proto** %3, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.Proto*, %struct.Proto** %3, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 19
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, -128
  br i1 %20, label %21, label %38

; <label>:21:                                     ; preds = %1
  %22 = load %struct.Proto*, %struct.Proto** %3, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 19
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i32 0, i32 16
  %36 = load i8, i8* %35, align 1
  %37 = add i8 %36, -1
  store i8 %37, i8* %35, align 1
  br label %45

; <label>:38:                                     ; preds = %1
  %39 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 16
  store i8 121, i8* %44, align 1
  br label %45

; <label>:45:                                     ; preds = %38, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savelineinfo(%struct.FuncState*, %struct.Proto*, i32) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.Proto* %1, %struct.Proto** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @abs(i32 %18) #7
  %20 = icmp sge i32 %19, 128
  br i1 %20, label %28, label %21

; <label>:21:                                     ; preds = %3
  %22 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i32 0, i32 16
  %24 = load i8, i8* %23, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* %23, align 1
  %26 = zext i8 %24 to i32
  %27 = icmp sgt i32 %26, 120
  br i1 %27, label %28, label %70

; <label>:28:                                     ; preds = %21, %3
  %29 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i32 0, i32 2
  %31 = load %struct.LexState*, %struct.LexState** %30, align 8
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 6
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 20
  %36 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %35, align 8
  %37 = bitcast %struct.AbsLineInfo* %36 to i8*
  %38 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.Proto*, %struct.Proto** %5, align 8
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 12
  %43 = call i8* @luaM_growaux_(%struct.lua_State* %33, i8* %37, i32 %40, i32* %42, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %44 = bitcast i8* %43 to %struct.AbsLineInfo*
  %45 = load %struct.Proto*, %struct.Proto** %5, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 20
  store %struct.AbsLineInfo* %44, %struct.AbsLineInfo** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.Proto*, %struct.Proto** %5, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 20
  %50 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %49, align 8
  %51 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %50, i64 %54
  %56 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %55, i32 0, i32 0
  store i32 %47, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.Proto*, %struct.Proto** %5, align 8
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 20
  %60 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %59, align 8
  %61 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %60, i64 %65
  %67 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %66, i32 0, i32 1
  store i32 %57, i32* %67, align 4
  store i32 -128, i32* %7, align 4
  %68 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %68, i32 0, i32 16
  store i8 0, i8* %69, align 1
  br label %70

; <label>:70:                                     ; preds = %28, %21
  %71 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %71, i32 0, i32 2
  %73 = load %struct.LexState*, %struct.LexState** %72, align 8
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 6
  %75 = load %struct.lua_State*, %struct.lua_State** %74, align 8
  %76 = load %struct.Proto*, %struct.Proto** %5, align 8
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %76, i32 0, i32 19
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.Proto*, %struct.Proto** %5, align 8
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i32 0, i32 9
  %82 = call i8* @luaM_growaux_(%struct.lua_State* %75, i8* %78, i32 %79, i32* %81, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %83 = load %struct.Proto*, %struct.Proto** %5, align 8
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i32 0, i32 19
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = trunc i32 %85 to i8
  %87 = load %struct.Proto*, %struct.Proto** %5, align 8
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %87, i32 0, i32 19
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %86, i8* %92, align 1
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) #2 {
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
  %23 = icmp sle i32 %22, 255
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %20
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @luaK_codeABCk(%struct.FuncState* %25, i32 79, i32 %26, i32 %27, i32 %28, i32 0)
  br label %46

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 33554431
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %30
  %34 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @luaK_codeABCk(%struct.FuncState* %34, i32 79, i32 %35, i32 %36, i32 0, i32 0)
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
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i32 0, i32 15
  store i8 %49, i8* %51, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeextraarg(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 7
  %8 = or i32 83, %7
  %9 = call i32 @luaK_code(%struct.FuncState* %5, i32 %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaK_finish(%struct.FuncState*) #2 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  store %struct.Proto* %9, %struct.Proto** %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

; <label>:10:                                     ; preds = %97, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %100

; <label>:16:                                     ; preds = %10
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 16
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 0
  %26 = and i32 %25, 127
  switch i32 %26, label %95 [
    i32 72, label %27
    i32 73, label %27
    i32 71, label %46
    i32 70, label %46
    i32 57, label %86
  ]

; <label>:27:                                     ; preds = %16, %16
  %28 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 17
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

; <label>:33:                                     ; preds = %27
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %33
  br label %96

; <label>:40:                                     ; preds = %33, %27
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -128
  %44 = or i32 %43, 71
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %46

; <label>:46:                                     ; preds = %16, %16, %40
  %47 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i32 0, i32 17
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

; <label>:52:                                     ; preds = %46
  %53 = load %struct.Proto*, %struct.Proto** %4, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

; <label>:58:                                     ; preds = %52, %46
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 16777215
  %62 = load %struct.Proto*, %struct.Proto** %4, align 8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 4
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

; <label>:67:                                     ; preds = %58
  %68 = load %struct.Proto*, %struct.Proto** %4, align 8
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %68, i32 0, i32 3
  %70 = load i8, i8* %69, align 2
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, 1
  br label %74

; <label>:73:                                     ; preds = %58
  br label %74

; <label>:74:                                     ; preds = %73, %67
  %75 = phi i32 [ %72, %67 ], [ 0, %73 ]
  %76 = shl i32 %75, 24
  %77 = and i32 %76, -16777216
  %78 = or i32 %61, %77
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -32769
  %83 = or i32 %82, 32768
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  br label %85

; <label>:85:                                     ; preds = %74, %52
  br label %96

; <label>:86:                                     ; preds = %16
  %87 = load %struct.Proto*, %struct.Proto** %4, align 8
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %87, i32 0, i32 16
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @finaltarget(i32* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %6, align 4
  call void @fixjump(%struct.FuncState* %92, i32 %93, i32 %94)
  br label %96

; <label>:95:                                     ; preds = %16
  br label %96

; <label>:96:                                     ; preds = %95, %86, %85, %39
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %10

; <label>:100:                                    ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finaltarget(i32*, i32) #2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %33

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = lshr i32 %16, 0
  %18 = and i32 %17, 127
  %19 = icmp ne i32 %18, 57
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %10
  br label %33

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 7
  %24 = and i32 %23, 33554431
  %25 = sub nsw i32 %24, 16777215
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %21
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

; <label>:33:                                     ; preds = %20, %7
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patchtestreg(%struct.FuncState*, i32, i32) #2 {
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
  %15 = and i32 %14, 127
  %16 = icmp ne i32 %15, 68
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
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -32641
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 7
  %34 = and i32 %33, 32640
  %35 = or i32 %31, %34
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %51

; <label>:37:                                     ; preds = %21, %18
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = shl i32 %41, 7
  %43 = or i32 67, %42
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %45, 15
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 15
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
define internal i32* @getjumpcontrol(%struct.FuncState*, i32) #2 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 16
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
  %22 = and i32 %21, 127
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 16
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

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) #4

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) #4

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #4

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discharge2reg(%struct.FuncState*, %struct.expdesc*, i32) #2 {
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
  switch i32 %12, label %83 [
    i32 1, label %13
    i32 3, label %16
    i32 2, label %16
    i32 4, label %25
    i32 5, label %33
    i32 6, label %40
    i32 15, label %47
    i32 7, label %67
  ]

; <label>:13:                                     ; preds = %3
  %14 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %15 = load i32, i32* %6, align 4
  call void @luaK_nil(%struct.FuncState* %14, i32 %15, i32 1)
  br label %84

; <label>:16:                                     ; preds = %3, %3
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i32 @luaK_codeABCk(%struct.FuncState* %17, i32 5, i32 %18, i32 %23, i32 0, i32 0)
  br label %84

; <label>:25:                                     ; preds = %3
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @luaK_codek(%struct.FuncState* %26, i32 %27, i32 %31)
  br label %84

; <label>:33:                                     ; preds = %3
  %34 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %38 = bitcast %union.anon.7* %37 to double*
  %39 = load double, double* %38, align 8
  call void @luaK_float(%struct.FuncState* %34, i32 %35, double %39)
  br label %84

; <label>:40:                                     ; preds = %3
  %41 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %43, i32 0, i32 1
  %45 = bitcast %union.anon.7* %44 to i64*
  %46 = load i64, i64* %45, align 8
  call void @luaK_int(%struct.FuncState* %41, i32 %42, i64 %46)
  br label %84

; <label>:47:                                     ; preds = %3
  %48 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 0
  %50 = load %struct.Proto*, %struct.Proto** %49, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 16
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %53, i32 0, i32 1
  %55 = bitcast %union.anon.7* %54 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -32641
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 7
  %64 = and i32 %63, 32640
  %65 = or i32 %61, %64
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %84

; <label>:67:                                     ; preds = %3
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %69, i32 0, i32 1
  %71 = bitcast %union.anon.7* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %67
  %75 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %77, i32 0, i32 1
  %79 = bitcast %union.anon.7* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @luaK_codeABCk(%struct.FuncState* %75, i32 0, i32 %76, i32 %80, i32 0, i32 0)
  br label %82

; <label>:82:                                     ; preds = %74, %67
  br label %84

; <label>:83:                                     ; preds = %3
  br label %91

; <label>:84:                                     ; preds = %82, %47, %40, %33, %25, %16, %13
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %87 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %86, i32 0, i32 1
  %88 = bitcast %union.anon.7* %87 to i32*
  store i32 %85, i32* %88, align 8
  %89 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %89, i32 0, i32 0
  store i32 7, i32* %90, align 8
  br label %91

; <label>:91:                                     ; preds = %84, %83
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_value(%struct.FuncState*, i32) #2 {
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
  %17 = and i32 %16, 127
  %18 = icmp ne i32 %17, 68
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
define internal i32 @code_loadbool(%struct.FuncState*, i32, i32, i32) #2 {
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
  %15 = call i32 @luaK_codeABCk(%struct.FuncState* %11, i32 5, i32 %12, i32 %13, i32 %14, i32 0)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaK_float(%struct.FuncState*, i32, double) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = call i32 @floatI(double %8, i64* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %3
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @luaK_codeAsBx(%struct.FuncState* %12, i32 2, i32 %13, i32 %15)
  br label %24

; <label>:17:                                     ; preds = %3
  %18 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %21 = load double, double* %6, align 8
  %22 = call i32 @luaK_numberK(%struct.FuncState* %20, double %21)
  %23 = call i32 @luaK_codek(%struct.FuncState* %18, i32 %19, i32 %22)
  br label %24

; <label>:24:                                     ; preds = %17, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floatI(double, i64*) #2 {
  %3 = alloca double, align 8
  %4 = alloca i64*, align 8
  store double %0, double* %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call i32 @luaV_flttointeger(double %5, i64* %6, i32 0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %2
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @fitsBx(i64 %11)
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_numberK(%struct.FuncState*, double) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store double %1, double* %4, align 8
  store %struct.TValue* %5, %struct.TValue** %6, align 8
  %7 = load double, double* %4, align 8
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 0
  %10 = bitcast %union.Value* %9 to double*
  store double %7, double* %10, align 8
  %11 = load %struct.TValue*, %struct.TValue** %6, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 1
  store i8 19, i8* %12, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = call i32 @addk(%struct.FuncState* %13, %struct.TValue* %5, %struct.TValue* %5)
  ret i32 %14
}

declare hidden i32 @luaV_flttointeger(double, i64*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boolK(%struct.FuncState*, i32) #2 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TValue* %5, %struct.TValue** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 0
  %10 = bitcast %union.Value* %9 to i32*
  store i32 %7, i32* %10, align 8
  %11 = load %struct.TValue*, %struct.TValue** %6, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 1
  store i8 1, i8* %12, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %14 = call i32 @addk(%struct.FuncState* %13, %struct.TValue* %5, %struct.TValue* %5)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilK(%struct.FuncState*) #2 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i32 0, i32 1
  store i8 0, i8* %7, align 8
  store %struct.TValue* %3, %struct.TValue** %5, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 2
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 9
  %12 = load %struct.Table*, %struct.Table** %11, align 8
  store %struct.Table* %12, %struct.Table** %6, align 8
  %13 = load %struct.Table*, %struct.Table** %6, align 8
  %14 = bitcast %struct.Table* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %struct.GCObject*
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  store %struct.GCObject* %15, %struct.GCObject** %18, align 8
  %19 = load %struct.TValue*, %struct.TValue** %5, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 1
  store i8 69, i8* %20, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %22 = call i32 @addk(%struct.FuncState* %21, %struct.TValue* %3, %struct.TValue* %4)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removelastinstruction(%struct.FuncState*) #2 {
  %2 = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  call void @removelastlineinfo(%struct.FuncState* %3)
  %4 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @condjump(%struct.FuncState*, i32, i32, i32, i32, i32) #2 {
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @luaK_codeABCk(%struct.FuncState* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %21 = call i32 @luaK_jump(%struct.FuncState* %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discharge2anyreg(%struct.FuncState*, %struct.expdesc*) #2 {
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
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 15
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 %16, 1
  call void @discharge2reg(%struct.FuncState* %11, %struct.expdesc* %12, i32 %17)
  br label %18

; <label>:18:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validop(i32, %struct.TValue*, %struct.TValue*) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %66 [
    i32 7, label %10
    i32 8, label %10
    i32 9, label %10
    i32 10, label %10
    i32 11, label %10
    i32 13, label %10
    i32 5, label %45
    i32 6, label %45
    i32 3, label %45
  ]

; <label>:10:                                     ; preds = %3, %3, %3, %3, %3, %3
  %11 = load %struct.TValue*, %struct.TValue** %6, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 35
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %10
  %17 = load %struct.TValue*, %struct.TValue** %6, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br i1 true, label %25, label %42

; <label>:21:                                     ; preds = %10
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = call i32 @luaV_tointegerns(%struct.TValue* %22, i64* %8, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

; <label>:25:                                     ; preds = %21, %16
  %26 = load %struct.TValue*, %struct.TValue** %7, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %25
  %32 = load %struct.TValue*, %struct.TValue** %7, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  br label %39

; <label>:36:                                     ; preds = %25
  %37 = load %struct.TValue*, %struct.TValue** %7, align 8
  %38 = call i32 @luaV_tointegerns(%struct.TValue* %37, i64* %8, i32 0)
  br label %39

; <label>:39:                                     ; preds = %36, %31
  %40 = phi i32 [ 1, %31 ], [ %38, %36 ]
  %41 = icmp ne i32 %40, 0
  br label %42

; <label>:42:                                     ; preds = %39, %21, %16
  %43 = phi i1 [ false, %21 ], [ false, %16 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %67

; <label>:45:                                     ; preds = %3, %3, %3
  %46 = load %struct.TValue*, %struct.TValue** %7, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %51, label %57

; <label>:51:                                     ; preds = %45
  %52 = load %struct.TValue*, %struct.TValue** %7, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to double
  br label %62

; <label>:57:                                     ; preds = %45
  %58 = load %struct.TValue*, %struct.TValue** %7, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to double*
  %61 = load double, double* %60, align 8
  br label %62

; <label>:62:                                     ; preds = %57, %51
  %63 = phi double [ %56, %51 ], [ %61, %57 ]
  %64 = fcmp une double %63, 0.000000e+00
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %67

; <label>:66:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %67

; <label>:67:                                     ; preds = %66, %62, %42
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) #4

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removevalues(%struct.FuncState*, i32) #2 {
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
define internal i32 @fitsC(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp sle i64 -127, %3
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = icmp sle i64 %6, 128
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishbinexpval(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*, i32, i32, i32, i32) #2 {
  %8 = alloca %struct.FuncState*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca %struct.expdesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %8, align 8
  store %struct.expdesc* %1, %struct.expdesc** %9, align 8
  store %struct.expdesc* %2, %struct.expdesc** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %19 = call i32 @luaK_exp2anyreg(%struct.FuncState* %17, %struct.expdesc* %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @luaK_codeABCk(%struct.FuncState* %20, i32 %21, i32 0, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %10, align 8
  call void @freeexps(%struct.FuncState* %26, %struct.expdesc* %27, %struct.expdesc* %28)
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 1
  %32 = bitcast %union.anon.7* %31 to i32*
  store i32 %29, i32* %32, align 8
  %33 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %33, i32 0, i32 0
  store i32 15, i32* %34, align 8
  %35 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %36 = load i32, i32* %14, align 4
  call void @luaK_fixline(%struct.FuncState* %35, i32 %36)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codebinexpval(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2 {
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.expdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expdesc* %2, %struct.expdesc** %8, align 8
  store %struct.expdesc* %3, %struct.expdesc** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %14 = call i32 @luaK_exp2anyreg(%struct.FuncState* %12, %struct.expdesc* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  call void @finishbinexpval(%struct.FuncState* %15, %struct.expdesc* %16, %struct.expdesc* %17, i32 %18, i32 %19, i32 0, i32 %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeexps(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2 {
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
  %16 = bitcast %union.anon.7* %15 to i32*
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
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8
  br label %31

; <label>:30:                                     ; preds = %19
  br label %31

; <label>:31:                                     ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ -1, %30 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  call void @freeregs(%struct.FuncState* %33, i32 %34, i32 %35)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
