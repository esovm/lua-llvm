; ModuleID = 'ldump.c'
source_filename = "ldump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1

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
  %4 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), align 1
  %5 = sext i8 %4 to i32
  %6 = sub nsw i32 %5, 48
  %7 = mul nsw i32 %6, 16
  %8 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 %9, 48
  %11 = add nsw i32 %7, %10
  %12 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 %11, %struct.DumpState* %12)
  %13 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 0, %struct.DumpState* %13)
  %14 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpBlock(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 6, %struct.DumpState* %14)
  %15 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 4, %struct.DumpState* %15)
  %16 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 8, %struct.DumpState* %16)
  %17 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 4, %struct.DumpState* %17)
  %18 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 8, %struct.DumpState* %18)
  %19 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpByte(i32 8, %struct.DumpState* %19)
  %20 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpInteger(i64 22136, %struct.DumpState* %20)
  %21 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpNumber(double 3.705000e+02, %struct.DumpState* %21)
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
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 21
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
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 21
  %22 = load %struct.TString*, %struct.TString** %21, align 8
  %23 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpString(%struct.TString* %22, %struct.DumpState* %23)
  br label %24

; <label>:24:                                     ; preds = %19, %17
  %25 = load %struct.Proto*, %struct.Proto** %4, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpInt(i32 %27, %struct.DumpState* %28)
  %29 = load %struct.Proto*, %struct.Proto** %4, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
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
  call void @DumpByte(i32 0, %struct.DumpState* %10)
  br label %49

; <label>:11:                                     ; preds = %2
  %12 = load %struct.TString*, %struct.TString** %3, align 8
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 4
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
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  %30 = load %struct.TString*, %struct.TString** %3, align 8
  %31 = bitcast %struct.TString* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 24
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %33, 255
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %37, %struct.DumpState* %38)
  br label %43

; <label>:39:                                     ; preds = %27
  %40 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 255, %struct.DumpState* %40)
  %41 = bitcast i64* %5 to i8*
  %42 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %41, i64 8, %struct.DumpState* %42)
  br label %43

; <label>:43:                                     ; preds = %39, %35
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %45, 1
  %47 = mul i64 %46, 1
  %48 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %44, i64 %47, %struct.DumpState* %48)
  br label %49

; <label>:49:                                     ; preds = %43, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpInt(i32, %struct.DumpState*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DumpState*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = bitcast i32* %3 to i8*
  %6 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %5, i64 4, %struct.DumpState* %6)
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
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 15
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
  %7 = alloca %struct.lua_TValue*, align 8
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

; <label>:13:                                     ; preds = %62, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %65

; <label>:17:                                     ; preds = %13
  %18 = load %struct.Proto*, %struct.Proto** %3, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 14
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %22
  store %struct.lua_TValue* %23, %struct.lua_TValue** %7, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 63
  %28 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %27, %struct.DumpState* %28)
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 63
  switch i32 %32, label %60 [
    i32 0, label %33
    i32 1, label %34
    i32 3, label %40
    i32 19, label %46
    i32 4, label %52
    i32 20, label %52
  ]

; <label>:33:                                     ; preds = %17
  br label %61

; <label>:34:                                     ; preds = %17
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpByte(i32 %38, %struct.DumpState* %39)
  br label %61

; <label>:40:                                     ; preds = %17
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %42 to double*
  %44 = load double, double* %43, align 8
  %45 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpNumber(double %44, %struct.DumpState* %45)
  br label %61

; <label>:46:                                     ; preds = %17
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInteger(i64 %50, %struct.DumpState* %51)
  br label %61

; <label>:52:                                     ; preds = %17, %17
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to %struct.GCObject**
  %56 = load %struct.GCObject*, %struct.GCObject** %55, align 8
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*
  %58 = bitcast %union.GCUnion* %57 to %struct.TString*
  %59 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %58, %struct.DumpState* %59)
  br label %61

; <label>:60:                                     ; preds = %17
  br label %61

; <label>:61:                                     ; preds = %60, %52, %46, %40, %34, %33
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %13

; <label>:65:                                     ; preds = %13
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
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 19
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
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 19
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
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 16
  %19 = load %struct.Proto**, %struct.Proto*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Proto*, %struct.Proto** %19, i64 %21
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8
  %24 = load %struct.Proto*, %struct.Proto** %3, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 21
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
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 17
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* %23, i64 %26, %struct.DumpState* %27)
  %28 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %29 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %16
  br label %37

; <label>:33:                                     ; preds = %16
  %34 = load %struct.Proto*, %struct.Proto** %3, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  br label %37

; <label>:37:                                     ; preds = %33, %32
  %38 = phi i32 [ 0, %32 ], [ %36, %33 ]
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %39, %struct.DumpState* %40)
  store i32 0, i32* %5, align 4
  br label %41

; <label>:41:                                     ; preds = %73, %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %76

; <label>:45:                                     ; preds = %41
  %46 = load %struct.Proto*, %struct.Proto** %3, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 18
  %48 = load %struct.LocVar*, %struct.LocVar** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %48, i64 %50
  %52 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %51, i32 0, i32 0
  %53 = load %struct.TString*, %struct.TString** %52, align 8
  %54 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %53, %struct.DumpState* %54)
  %55 = load %struct.Proto*, %struct.Proto** %3, align 8
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 18
  %57 = load %struct.LocVar*, %struct.LocVar** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %57, i64 %59
  %61 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %62, %struct.DumpState* %63)
  %64 = load %struct.Proto*, %struct.Proto** %3, align 8
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 18
  %66 = load %struct.LocVar*, %struct.LocVar** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %66, i64 %68
  %70 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %71, %struct.DumpState* %72)
  br label %73

; <label>:73:                                     ; preds = %45
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %41

; <label>:76:                                     ; preds = %41
  %77 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %78 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %76
  br label %86

; <label>:82:                                     ; preds = %76
  %83 = load %struct.Proto*, %struct.Proto** %3, align 8
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  br label %86

; <label>:86:                                     ; preds = %82, %81
  %87 = phi i32 [ 0, %81 ], [ %85, %82 ]
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 %88, %struct.DumpState* %89)
  store i32 0, i32* %5, align 4
  br label %90

; <label>:90:                                     ; preds = %104, %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

; <label>:94:                                     ; preds = %90
  %95 = load %struct.Proto*, %struct.Proto** %3, align 8
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i32 0, i32 19
  %97 = load %struct.Upvaldesc*, %struct.Upvaldesc** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %97, i64 %99
  %101 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %100, i32 0, i32 0
  %102 = load %struct.TString*, %struct.TString** %101, align 8
  %103 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%struct.TString* %102, %struct.DumpState* %103)
  br label %104

; <label>:104:                                    ; preds = %94
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %90

; <label>:107:                                    ; preds = %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
