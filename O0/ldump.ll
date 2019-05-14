; ModuleID = 'ldump.c'
source_filename = "ldump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.DumpState, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.Proto* %1, %struct.Proto** %7, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 0
  store %struct.lua_State* %12, %struct.lua_State** %13, align 8
  %14 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  %15 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %14, i32 (%struct.lua_State*, i8*, i64, i8*)** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 4
  store i32 0, i32* %20, align 4
  call void @DumpHeader(%struct.DumpState* %11)
  %21 = load %struct.Proto*, %struct.Proto** %7, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  call void @DumpByte(i32 %23, %struct.DumpState* %11)
  %24 = load %struct.Proto*, %struct.Proto** %7, align 8
  call void @DumpFunction(%struct.Proto* %24, %struct.TString* null, %struct.DumpState* %11)
  %25 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpHeader(%struct.DumpState*) #0 {
  %2 = alloca %struct.DumpState*, align 8
  store %struct.DumpState* %0, %struct.DumpState** %2, align 8
  %3 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, %struct.DumpState* %3)
  %4 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpInt(i32 504, %struct.DumpState* %4)
  %5 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 0, %struct.DumpState* %5)
  %6 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpBlock(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 6, %struct.DumpState* %6)
  %7 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 4, %struct.DumpState* %7)
  %8 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 8, %struct.DumpState* %8)
  %9 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 8, %struct.DumpState* %9)
  %10 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpInteger(i64 22136, %struct.DumpState* %10)
  %11 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpNumber(double 3.705000e+02, %struct.DumpState* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpByte(i32, %struct.DumpState*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %5, align 1
  %8 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %5, i64 1, %struct.DumpState* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpFunction(%struct.Proto*, %struct.TString*, %struct.DumpState*) #0 {
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.DumpState*, align 8
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  store %struct.DumpState* %2, %struct.DumpState** %6, align 8
  %7 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %3
  %12 = load %struct.Proto*, %struct.Proto** %4, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 22
  %14 = load %struct.TString*, %struct.TString** %13, align 8
  %15 = load %struct.TString*, %struct.TString** %5, align 8
  %16 = icmp eq %struct.TString* %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11, %3
  %18 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpString(%struct.TString* null, %struct.DumpState* %18)
  br label %24

; <label>:19:                                     ; preds = %11
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 22
  %22 = load %struct.TString*, %struct.TString** %21, align 8
  %23 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpString(%struct.TString* %22, %struct.DumpState* %23)
  br label %24

; <label>:24:                                     ; preds = %19, %17
  %25 = load %struct.Proto*, %struct.Proto** %4, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpInt(i32 %27, %struct.DumpState* %28)
  %29 = load %struct.Proto*, %struct.Proto** %4, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpInt(i32 %31, %struct.DumpState* %32)
  %33 = load %struct.Proto*, %struct.Proto** %4, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 2
  %36 = zext i8 %35 to i32
  %37 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpByte(i32 %36, %struct.DumpState* %37)
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpByte(i32 %41, %struct.DumpState* %42)
  %43 = load %struct.Proto*, %struct.Proto** %4, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 5
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpByte(i32 %46, %struct.DumpState* %47)
  %48 = load %struct.Proto*, %struct.Proto** %4, align 8
  %49 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpCode(%struct.Proto* %48, %struct.DumpState* %49)
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpConstants(%struct.Proto* %50, %struct.DumpState* %51)
  %52 = load %struct.Proto*, %struct.Proto** %4, align 8
  %53 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpUpvalues(%struct.Proto* %52, %struct.DumpState* %53)
  %54 = load %struct.Proto*, %struct.Proto** %4, align 8
  %55 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpProtos(%struct.Proto* %54, %struct.DumpState* %55)
  %56 = load %struct.Proto*, %struct.Proto** %4, align 8
  %57 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpDebug(%struct.Proto* %56, %struct.DumpState* %57)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpBlock(i8*, i64, %struct.DumpState*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.DumpState*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.DumpState* %2, %struct.DumpState** %6, align 8
  %7 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %11
  %15 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %16 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %15, i32 0, i32 1
  %17 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8
  %18 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %18, i32 0, i32 0
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %24 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 %17(%struct.lua_State* %20, i8* %21, i64 %22, i8* %25)
  %27 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %28 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %14, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpInt(i32, %struct.DumpState*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DumpState*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpSize(i64 %6, %struct.DumpState* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpInteger(i64, %struct.DumpState*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.DumpState*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = bitcast i64* %3 to i8*
  %6 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %5, i64 8, %struct.DumpState* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpNumber(double, %struct.DumpState*) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.DumpState*, align 8
  store double %0, double* %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = bitcast double* %3 to i8*
  %6 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %5, i64 8, %struct.DumpState* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpSize(i64, %struct.DumpState*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 127
  %10 = trunc i64 %9 to i8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 10, %13
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %14
  store i8 %10, i8* %15, align 1
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %16, 7
  store i64 %17, i64* %3, align 8
  br label %18

; <label>:18:                                     ; preds = %7
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %7, label %21

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 9
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, 128
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %28 = getelementptr inbounds i8, i8* %27, i64 10
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %32, i64 %35, %struct.DumpState* %36)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpString(%struct.TString*, %struct.DumpState*) #0 {
  %3 = alloca %struct.TString*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TString* %0, %struct.TString** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %struct.TString*, %struct.TString** %3, align 8
  %8 = icmp eq %struct.TString* %7, null
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpSize(i64 0, %struct.DumpState* %10)
  br label %39

; <label>:11:                                     ; preds = %2
  %12 = load %struct.TString*, %struct.TString** %3, align 8
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 20
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %11
  %18 = load %struct.TString*, %struct.TString** %3, align 8
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %18, i32 0, i32 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  br label %27

; <label>:22:                                     ; preds = %11
  %23 = load %struct.TString*, %struct.TString** %3, align 8
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to i64*
  %26 = load i64, i64* %25, align 8
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = phi i64 [ %21, %17 ], [ %26, %22 ]
  store i64 %28, i64* %5, align 8
  %29 = load %struct.TString*, %struct.TString** %3, align 8
  %30 = bitcast %struct.TString* %29 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  store i8* %31, i8** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  %34 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpSize(i64 %33, %struct.DumpState* %34)
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = mul i64 %36, 1
  %38 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %35, i64 %37, %struct.DumpState* %38)
  br label %39

; <label>:39:                                     ; preds = %27, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpCode(%struct.Proto*, %struct.DumpState*) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = load %struct.Proto*, %struct.Proto** %3, align 8
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %7, %struct.DumpState* %8)
  %9 = load %struct.Proto*, %struct.Proto** %3, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 16
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load %struct.Proto*, %struct.Proto** %3, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %12, i64 %17, %struct.DumpState* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpConstants(%struct.Proto*, %struct.DumpState*) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %8 = load %struct.Proto*, %struct.Proto** %3, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %11, %struct.DumpState* %12)
  store i32 0, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %64, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %67

; <label>:17:                                     ; preds = %13
  %18 = load %struct.Proto*, %struct.Proto** %3, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 15
  %20 = load %struct.TValue*, %struct.TValue** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i64 %22
  store %struct.TValue* %23, %struct.TValue** %7, align 8
  %24 = load %struct.TValue*, %struct.TValue** %7, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 63
  %29 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %28, %struct.DumpState* %29)
  %30 = load %struct.TValue*, %struct.TValue** %7, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 63
  switch i32 %34, label %62 [
    i32 0, label %35
    i32 1, label %36
    i32 19, label %42
    i32 35, label %48
    i32 20, label %54
    i32 36, label %54
  ]

; <label>:35:                                     ; preds = %17
  br label %63

; <label>:36:                                     ; preds = %17
  %37 = load %struct.TValue*, %struct.TValue** %7, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %40, %struct.DumpState* %41)
  br label %63

; <label>:42:                                     ; preds = %17
  %43 = load %struct.TValue*, %struct.TValue** %7, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to double*
  %46 = load double, double* %45, align 8
  %47 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpNumber(double %46, %struct.DumpState* %47)
  br label %63

; <label>:48:                                     ; preds = %17
  %49 = load %struct.TValue*, %struct.TValue** %7, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 0
  %51 = bitcast %union.Value* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInteger(i64 %52, %struct.DumpState* %53)
  br label %63

; <label>:54:                                     ; preds = %17, %17
  %55 = load %struct.TValue*, %struct.TValue** %7, align 8
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to %struct.GCObject**
  %58 = load %struct.GCObject*, %struct.GCObject** %57, align 8
  %59 = bitcast %struct.GCObject* %58 to %union.GCUnion*
  %60 = bitcast %union.GCUnion* %59 to %struct.TString*
  %61 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %60, %struct.DumpState* %61)
  br label %63

; <label>:62:                                     ; preds = %17
  br label %63

; <label>:63:                                     ; preds = %62, %54, %48, %42, %36, %35
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %13

; <label>:67:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpUpvalues(%struct.Proto*, %struct.DumpState*) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %struct.Proto*, %struct.Proto** %3, align 8
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %10, %struct.DumpState* %11)
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %37, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

; <label>:16:                                     ; preds = %12
  %17 = load %struct.Proto*, %struct.Proto** %3, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 18
  %19 = load %struct.Upvaldesc*, %struct.Upvaldesc** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %19, i64 %21
  %23 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %25, %struct.DumpState* %26)
  %27 = load %struct.Proto*, %struct.Proto** %3, align 8
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 18
  %29 = load %struct.Upvaldesc*, %struct.Upvaldesc** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %29, i64 %31
  %33 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %32, i32 0, i32 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %35, %struct.DumpState* %36)
  br label %37

; <label>:37:                                     ; preds = %16
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %12

; <label>:40:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpProtos(%struct.Proto*, %struct.DumpState*) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %struct.Proto*, %struct.Proto** %3, align 8
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %10, %struct.DumpState* %11)
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %28, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

; <label>:16:                                     ; preds = %12
  %17 = load %struct.Proto*, %struct.Proto** %3, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 17
  %19 = load %struct.Proto**, %struct.Proto*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Proto*, %struct.Proto** %19, i64 %21
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8
  %24 = load %struct.Proto*, %struct.Proto** %3, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 22
  %26 = load %struct.TString*, %struct.TString** %25, align 8
  %27 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpFunction(%struct.Proto* %23, %struct.TString* %26, %struct.DumpState* %27)
  br label %28

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12

; <label>:31:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpDebug(%struct.Proto*, %struct.DumpState*) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = load %struct.Proto*, %struct.Proto** %3, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %11
  %17 = phi i32 [ 0, %11 ], [ %15, %12 ]
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %18, %struct.DumpState* %19)
  %20 = load %struct.Proto*, %struct.Proto** %3, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 19
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %22, i64 %25, %struct.DumpState* %26)
  %27 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %28 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %16
  br label %36

; <label>:32:                                     ; preds = %16
  %33 = load %struct.Proto*, %struct.Proto** %3, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  br label %36

; <label>:36:                                     ; preds = %32, %31
  %37 = phi i32 [ 0, %31 ], [ %35, %32 ]
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %38, %struct.DumpState* %39)
  store i32 0, i32* %5, align 4
  br label %40

; <label>:40:                                     ; preds = %63, %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %66

; <label>:44:                                     ; preds = %40
  %45 = load %struct.Proto*, %struct.Proto** %3, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 20
  %47 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %47, i64 %49
  %51 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %52, %struct.DumpState* %53)
  %54 = load %struct.Proto*, %struct.Proto** %3, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 20
  %56 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %61, %struct.DumpState* %62)
  br label %63

; <label>:63:                                     ; preds = %44
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %40

; <label>:66:                                     ; preds = %40
  %67 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %68 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %66
  br label %76

; <label>:72:                                     ; preds = %66
  %73 = load %struct.Proto*, %struct.Proto** %3, align 8
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  br label %76

; <label>:76:                                     ; preds = %72, %71
  %77 = phi i32 [ 0, %71 ], [ %75, %72 ]
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %78, %struct.DumpState* %79)
  store i32 0, i32* %5, align 4
  br label %80

; <label>:80:                                     ; preds = %112, %76
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %115

; <label>:84:                                     ; preds = %80
  %85 = load %struct.Proto*, %struct.Proto** %3, align 8
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %85, i32 0, i32 21
  %87 = load %struct.LocVar*, %struct.LocVar** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %87, i64 %89
  %91 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i32 0, i32 0
  %92 = load %struct.TString*, %struct.TString** %91, align 8
  %93 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %92, %struct.DumpState* %93)
  %94 = load %struct.Proto*, %struct.Proto** %3, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 21
  %96 = load %struct.LocVar*, %struct.LocVar** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %96, i64 %98
  %100 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %101, %struct.DumpState* %102)
  %103 = load %struct.Proto*, %struct.Proto** %3, align 8
  %104 = getelementptr inbounds %struct.Proto, %struct.Proto* %103, i32 0, i32 21
  %105 = load %struct.LocVar*, %struct.LocVar** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %105, i64 %107
  %109 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %110, %struct.DumpState* %111)
  br label %112

; <label>:112:                                    ; preds = %84
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %80

; <label>:115:                                    ; preds = %80
  %116 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %117 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %115
  br label %125

; <label>:121:                                    ; preds = %115
  %122 = load %struct.Proto*, %struct.Proto** %3, align 8
  %123 = getelementptr inbounds %struct.Proto, %struct.Proto* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  br label %125

; <label>:125:                                    ; preds = %121, %120
  %126 = phi i32 [ 0, %120 ], [ %124, %121 ]
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %127, %struct.DumpState* %128)
  store i32 0, i32* %5, align 4
  br label %129

; <label>:129:                                    ; preds = %143, %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %146

; <label>:133:                                    ; preds = %129
  %134 = load %struct.Proto*, %struct.Proto** %3, align 8
  %135 = getelementptr inbounds %struct.Proto, %struct.Proto* %134, i32 0, i32 18
  %136 = load %struct.Upvaldesc*, %struct.Upvaldesc** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %136, i64 %138
  %140 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %139, i32 0, i32 0
  %141 = load %struct.TString*, %struct.TString** %140, align 8
  %142 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %141, %struct.DumpState* %142)
  br label %143

; <label>:143:                                    ; preds = %133
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %129

; <label>:146:                                    ; preds = %129
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
