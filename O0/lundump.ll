; ModuleID = 'lundump.c'
source_filename = "lundump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, i8* }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"not a binary chunk\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"version mismatch\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"format mismatch\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"corrupted chunk\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lua_Integer\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"lua_Number\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"integer format mismatch\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"float format mismatch\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"truncated chunk\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: bad binary format (%s)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s size mismatch\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"bad format for constant string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Zio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.LoadState, align 8
  %8 = alloca %struct.LClosure*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.LClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Zio* %1, %struct.Zio** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %20, label %15

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 61
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %15, %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  br label %37

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %32, align 8
  br label %36

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  br label %36

; <label>:36:                                     ; preds = %33, %31
  br label %37

; <label>:37:                                     ; preds = %36, %20
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 0
  store %struct.lua_State* %38, %struct.lua_State** %39, align 8
  %40 = load %struct.Zio*, %struct.Zio** %5, align 8
  %41 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 1
  store %struct.Zio* %40, %struct.Zio** %41, align 8
  call void @checkHeader(%struct.LoadState* %7)
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = call zeroext i8 @LoadByte(%struct.LoadState* %7)
  %44 = zext i8 %43 to i32
  %45 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %42, i32 %44)
  store %struct.LClosure* %45, %struct.LClosure** %8, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 6
  %48 = load %union.StackValue*, %union.StackValue** %47, align 8
  %49 = bitcast %union.StackValue* %48 to %struct.TValue*
  store %struct.TValue* %49, %struct.TValue** %9, align 8
  %50 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  store %struct.LClosure* %50, %struct.LClosure** %10, align 8
  %51 = load %struct.LClosure*, %struct.LClosure** %10, align 8
  %52 = bitcast %struct.LClosure* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.GCObject*
  %54 = load %struct.TValue*, %struct.TValue** %9, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 0
  %56 = bitcast %union.Value* %55 to %struct.GCObject**
  store %struct.GCObject* %53, %struct.GCObject** %56, align 8
  %57 = load %struct.TValue*, %struct.TValue** %9, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 1
  store i8 86, i8* %58, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_inctop(%struct.lua_State* %59)
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %60)
  %62 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %63 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %62, i32 0, i32 5
  store %struct.Proto* %61, %struct.Proto** %63, align 8
  %64 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %65 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %64, i32 0, i32 5
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8
  call void @LoadFunction(%struct.LoadState* %7, %struct.Proto* %66, %struct.TString* null)
  %67 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  ret %struct.LClosure* %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkHeader(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %3 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @checkliteral(%struct.LoadState* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 1), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = call i32 @LoadInt(%struct.LoadState* %4)
  %6 = icmp ne i32 %5, 504
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

; <label>:9:                                      ; preds = %1
  %10 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %11 = call zeroext i8 @LoadByte(%struct.LoadState* %10)
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %9
  %15 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

; <label>:16:                                     ; preds = %9
  %17 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @checkliteral(%struct.LoadState* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %18 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %18, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %19 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %19, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %20 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %20, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %21 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %22 = call i64 @LoadInteger(%struct.LoadState* %21)
  %23 = icmp ne i64 %22, 22136
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %16
  %25 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #5
  unreachable

; <label>:26:                                     ; preds = %16
  %27 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %28 = call double @LoadNumber(%struct.LoadState* %27)
  %29 = fcmp une double %28, 3.705000e+02
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26
  %31 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)) #5
  unreachable

; <label>:32:                                     ; preds = %26
  ret void
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @LoadByte(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i32 0, i32 1
  %6 = load %struct.Zio*, %struct.Zio** %5, align 8
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = icmp ugt i64 %8, 0
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %1
  %12 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %12, i32 0, i32 1
  %14 = load %struct.Zio*, %struct.Zio** %13, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  br label %25

; <label>:20:                                     ; preds = %1
  %21 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %22 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %21, i32 0, i32 1
  %23 = load %struct.Zio*, %struct.Zio** %22, align 8
  %24 = call i32 @luaZ_fill(%struct.Zio* %23)
  br label %25

; <label>:25:                                     ; preds = %20, %11
  %26 = phi i32 [ %19, %11 ], [ %24, %20 ]
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #5
  unreachable

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = trunc i32 %32 to i8
  ret i8 %33
}

declare hidden void @luaD_inctop(%struct.lua_State*) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadFunction(%struct.LoadState*, %struct.Proto*, %struct.TString*) #0 {
  %4 = alloca %struct.LoadState*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca %struct.TString*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %4, align 8
  store %struct.Proto* %1, %struct.Proto** %5, align 8
  store %struct.TString* %2, %struct.TString** %6, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %8 = call %struct.TString* @LoadStringN(%struct.LoadState* %7)
  %9 = load %struct.Proto*, %struct.Proto** %5, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 22
  store %struct.TString* %8, %struct.TString** %10, align 8
  %11 = load %struct.Proto*, %struct.Proto** %5, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 22
  %13 = load %struct.TString*, %struct.TString** %12, align 8
  %14 = icmp eq %struct.TString* %13, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %3
  %16 = load %struct.TString*, %struct.TString** %6, align 8
  %17 = load %struct.Proto*, %struct.Proto** %5, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 22
  store %struct.TString* %16, %struct.TString** %18, align 8
  br label %19

; <label>:19:                                     ; preds = %15, %3
  %20 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %21 = call i32 @LoadInt(%struct.LoadState* %20)
  %22 = load %struct.Proto*, %struct.Proto** %5, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 4
  %24 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %25 = call i32 @LoadInt(%struct.LoadState* %24)
  %26 = load %struct.Proto*, %struct.Proto** %5, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 8
  %28 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %29 = call zeroext i8 @LoadByte(%struct.LoadState* %28)
  %30 = load %struct.Proto*, %struct.Proto** %5, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 3
  store i8 %29, i8* %31, align 2
  %32 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %33 = call zeroext i8 @LoadByte(%struct.LoadState* %32)
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 4
  store i8 %33, i8* %35, align 1
  %36 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %37 = call zeroext i8 @LoadByte(%struct.LoadState* %36)
  %38 = load %struct.Proto*, %struct.Proto** %5, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 5
  store i8 %37, i8* %39, align 4
  %40 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %41 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadCode(%struct.LoadState* %40, %struct.Proto* %41)
  %42 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %43 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadConstants(%struct.LoadState* %42, %struct.Proto* %43)
  %44 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %45 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadUpvalues(%struct.LoadState* %44, %struct.Proto* %45)
  %46 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %47 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadProtos(%struct.LoadState* %46, %struct.Proto* %47)
  %48 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %49 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadDebug(%struct.LoadState* %48, %struct.Proto* %49)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkliteral(%struct.LoadState*, i8*, i8*) #0 {
  %4 = alloca %struct.LoadState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [12 x i8], align 1
  %8 = alloca i64, align 8
  store %struct.LoadState* %0, %struct.LoadState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9) #6
  store i64 %10, i64* %8, align 8
  %11 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = mul i64 %13, 1
  call void @LoadBlock(%struct.LoadState* %11, i8* %12, i64 %14)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @memcmp(i8* %15, i8* %16, i64 %17) #6
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %3
  %21 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %22 = load i8*, i8** %6, align 8
  call void @error(%struct.LoadState* %21, i8* %22) #5
  unreachable

; <label>:23:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadInt(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %3 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %4 = call i64 @LoadUnsigned(%struct.LoadState* %3, i64 2147483647)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @error(%struct.LoadState*, i8*) #2 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i8*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %6 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %9 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* %10, i8* %11)
  %13 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %13, i32 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  call void @luaD_throw(%struct.lua_State* %15, i32 3) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fchecksize(%struct.LoadState*, i64, i8*) #0 {
  %4 = alloca %struct.LoadState*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %8 = call zeroext i8 @LoadByte(%struct.LoadState* %7)
  %9 = zext i8 %8 to i64
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %3
  %13 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %14 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %14, i32 0, i32 0
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* %17)
  call void @error(%struct.LoadState* %13, i8* %18) #5
  unreachable

; <label>:19:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadInteger(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i64, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = bitcast i64* %3 to i8*
  call void @LoadBlock(%struct.LoadState* %4, i8* %5, i64 8)
  %6 = load i64, i64* %3, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @LoadNumber(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca double, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = bitcast double* %3 to i8*
  call void @LoadBlock(%struct.LoadState* %4, i8* %5, i64 8)
  %6 = load double, double* %3, align 8
  ret double %6
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadBlock(%struct.LoadState*, i8*, i64) #0 {
  %4 = alloca %struct.LoadState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.LoadState* %0, %struct.LoadState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 1
  %9 = load %struct.Zio*, %struct.Zio** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @luaZ_read(%struct.Zio* %9, i8* %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %3
  %15 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  call void @error(%struct.LoadState* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #5
  unreachable

; <label>:16:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadUnsigned(%struct.LoadState*, i64) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = lshr i64 %7, 7
  store i64 %8, i64* %4, align 8
  br label %9

; <label>:9:                                      ; preds = %25, %2
  %10 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %11 = call zeroext i8 @LoadByte(%struct.LoadState* %10)
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %9
  %17 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  call void @error(%struct.LoadState* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #5
  unreachable

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %5, align 8
  %20 = shl i64 %19, 7
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 127
  %23 = sext i32 %22 to i64
  %24 = or i64 %20, %23
  store i64 %24, i64* %5, align 8
  br label %25

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %9, label %29

; <label>:29:                                     ; preds = %25
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #4

declare hidden i32 @luaZ_fill(%struct.Zio*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @LoadStringN(%struct.LoadState*) #0 {
  %2 = alloca %struct.TString*, align 8
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca %struct.TString*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call i64 @LoadSize(%struct.LoadState* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store %struct.TString* null, %struct.TString** %2, align 8
  br label %40

; <label>:12:                                     ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %4, align 8
  %15 = icmp ule i64 %14, 40
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %12
  %17 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = mul i64 %19, 1
  call void @LoadBlock(%struct.LoadState* %17, i8* %18, i64 %20)
  %21 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %22 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %21, i32 0, i32 0
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %23, i8* %24, i64 %25)
  store %struct.TString* %26, %struct.TString** %2, align 8
  br label %40

; <label>:27:                                     ; preds = %12
  %28 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %29 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %28, i32 0, i32 0
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %30, i64 %31)
  store %struct.TString* %32, %struct.TString** %6, align 8
  %33 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %34 = load %struct.TString*, %struct.TString** %6, align 8
  %35 = bitcast %struct.TString* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, 1
  call void @LoadBlock(%struct.LoadState* %33, i8* %36, i64 %38)
  %39 = load %struct.TString*, %struct.TString** %6, align 8
  store %struct.TString* %39, %struct.TString** %2, align 8
  br label %40

; <label>:40:                                     ; preds = %27, %16, %11
  %41 = load %struct.TString*, %struct.TString** %2, align 8
  ret %struct.TString* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadCode(%struct.LoadState*, %struct.Proto*) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %6 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %7 = call i32 @LoadInt(%struct.LoadState* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %9 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %8, i32 0, i32 0
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i8* @luaM_malloc_(%struct.lua_State* %10, i64 %13, i32 0)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 16
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.Proto*, %struct.Proto** %4, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 8
  %21 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 16
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  call void @LoadBlock(%struct.LoadState* %21, i8* %25, i64 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadConstants(%struct.LoadState*, %struct.Proto*) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TString*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %14 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %15 = call i32 @LoadInt(%struct.LoadState* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %17 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %16, i32 0, i32 0
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 16
  %22 = call i8* @luaM_malloc_(%struct.lua_State* %18, i64 %21, i32 0)
  %23 = bitcast i8* %22 to %struct.TValue*
  %24 = load %struct.Proto*, %struct.Proto** %4, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 15
  store %struct.TValue* %23, %struct.TValue** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.Proto*, %struct.Proto** %4, align 8
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

; <label>:29:                                     ; preds = %41, %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

; <label>:33:                                     ; preds = %29
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 15
  %36 = load %struct.TValue*, %struct.TValue** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 %38
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 1
  store i8 0, i8* %40, align 8
  br label %41

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %29

; <label>:44:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %111, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %114

; <label>:49:                                     ; preds = %45
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 15
  %52 = load %struct.TValue*, %struct.TValue** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i64 %54
  store %struct.TValue* %55, %struct.TValue** %7, align 8
  %56 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %57 = call zeroext i8 @LoadByte(%struct.LoadState* %56)
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %109 [
    i32 0, label %60
    i32 1, label %63
    i32 19, label %73
    i32 35, label %82
    i32 20, label %91
    i32 36, label %91
  ]

; <label>:60:                                     ; preds = %49
  %61 = load %struct.TValue*, %struct.TValue** %7, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  store i8 0, i8* %62, align 8
  br label %110

; <label>:63:                                     ; preds = %49
  %64 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %64, %struct.TValue** %9, align 8
  %65 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %66 = call zeroext i8 @LoadByte(%struct.LoadState* %65)
  %67 = zext i8 %66 to i32
  %68 = load %struct.TValue*, %struct.TValue** %9, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to i32*
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TValue*, %struct.TValue** %9, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 1
  store i8 1, i8* %72, align 8
  br label %110

; <label>:73:                                     ; preds = %49
  %74 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %74, %struct.TValue** %10, align 8
  %75 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %76 = call double @LoadNumber(%struct.LoadState* %75)
  %77 = load %struct.TValue*, %struct.TValue** %10, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 0
  %79 = bitcast %union.Value* %78 to double*
  store double %76, double* %79, align 8
  %80 = load %struct.TValue*, %struct.TValue** %10, align 8
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 1
  store i8 19, i8* %81, align 8
  br label %110

; <label>:82:                                     ; preds = %49
  %83 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %83, %struct.TValue** %11, align 8
  %84 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %85 = call i64 @LoadInteger(%struct.LoadState* %84)
  %86 = load %struct.TValue*, %struct.TValue** %11, align 8
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %86, i32 0, i32 0
  %88 = bitcast %union.Value* %87 to i64*
  store i64 %85, i64* %88, align 8
  %89 = load %struct.TValue*, %struct.TValue** %11, align 8
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %89, i32 0, i32 1
  store i8 35, i8* %90, align 8
  br label %110

; <label>:91:                                     ; preds = %49, %49
  %92 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %92, %struct.TValue** %12, align 8
  %93 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %94 = call %struct.TString* @LoadString(%struct.LoadState* %93)
  store %struct.TString* %94, %struct.TString** %13, align 8
  %95 = load %struct.TString*, %struct.TString** %13, align 8
  %96 = bitcast %struct.TString* %95 to %union.GCUnion*
  %97 = bitcast %union.GCUnion* %96 to %struct.GCObject*
  %98 = load %struct.TValue*, %struct.TValue** %12, align 8
  %99 = getelementptr inbounds %struct.TValue, %struct.TValue* %98, i32 0, i32 0
  %100 = bitcast %union.Value* %99 to %struct.GCObject**
  store %struct.GCObject* %97, %struct.GCObject** %100, align 8
  %101 = load %struct.TString*, %struct.TString** %13, align 8
  %102 = getelementptr inbounds %struct.TString, %struct.TString* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = or i32 %104, 64
  %106 = trunc i32 %105 to i8
  %107 = load %struct.TValue*, %struct.TValue** %12, align 8
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %107, i32 0, i32 1
  store i8 %106, i8* %108, align 8
  br label %110

; <label>:109:                                    ; preds = %49
  br label %110

; <label>:110:                                    ; preds = %109, %91, %82, %73, %63, %60
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %45

; <label>:114:                                    ; preds = %45
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadUpvalues(%struct.LoadState*, %struct.Proto*) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call i32 @LoadInt(%struct.LoadState* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 16
  %15 = call i8* @luaM_malloc_(%struct.lua_State* %11, i64 %14, i32 0)
  %16 = bitcast i8* %15 to %struct.Upvaldesc*
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 18
  store %struct.Upvaldesc* %16, %struct.Upvaldesc** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %34, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %22
  %27 = load %struct.Proto*, %struct.Proto** %4, align 8
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 18
  %29 = load %struct.Upvaldesc*, %struct.Upvaldesc** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %29, i64 %31
  %33 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %32, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

; <label>:37:                                     ; preds = %22
  store i32 0, i32* %5, align 4
  br label %38

; <label>:38:                                     ; preds = %61, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %64

; <label>:42:                                     ; preds = %38
  %43 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %44 = call zeroext i8 @LoadByte(%struct.LoadState* %43)
  %45 = load %struct.Proto*, %struct.Proto** %4, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 18
  %47 = load %struct.Upvaldesc*, %struct.Upvaldesc** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %47, i64 %49
  %51 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %50, i32 0, i32 1
  store i8 %44, i8* %51, align 8
  %52 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %53 = call zeroext i8 @LoadByte(%struct.LoadState* %52)
  %54 = load %struct.Proto*, %struct.Proto** %4, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 18
  %56 = load %struct.Upvaldesc*, %struct.Upvaldesc** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %56, i64 %58
  %60 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %59, i32 0, i32 2
  store i8 %53, i8* %60, align 1
  br label %61

; <label>:61:                                     ; preds = %42
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %38

; <label>:64:                                     ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadProtos(%struct.LoadState*, %struct.Proto*) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call i32 @LoadInt(%struct.LoadState* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call i8* @luaM_malloc_(%struct.lua_State* %11, i64 %14, i32 0)
  %16 = bitcast i8* %15 to %struct.Proto**
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 17
  store %struct.Proto** %16, %struct.Proto*** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %33, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %22
  %27 = load %struct.Proto*, %struct.Proto** %4, align 8
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 17
  %29 = load %struct.Proto**, %struct.Proto*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Proto*, %struct.Proto** %29, i64 %31
  store %struct.Proto* null, %struct.Proto** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %22

; <label>:36:                                     ; preds = %22
  store i32 0, i32* %5, align 4
  br label %37

; <label>:37:                                     ; preds = %63, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

; <label>:41:                                     ; preds = %37
  %42 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %43 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %42, i32 0, i32 0
  %44 = load %struct.lua_State*, %struct.lua_State** %43, align 8
  %45 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %44)
  %46 = load %struct.Proto*, %struct.Proto** %4, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 17
  %48 = load %struct.Proto**, %struct.Proto*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Proto*, %struct.Proto** %48, i64 %50
  store %struct.Proto* %45, %struct.Proto** %51, align 8
  %52 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %53 = load %struct.Proto*, %struct.Proto** %4, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 17
  %55 = load %struct.Proto**, %struct.Proto*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Proto*, %struct.Proto** %55, i64 %57
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8
  %60 = load %struct.Proto*, %struct.Proto** %4, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 22
  %62 = load %struct.TString*, %struct.TString** %61, align 8
  call void @LoadFunction(%struct.LoadState* %52, %struct.Proto* %59, %struct.TString* %62)
  br label %63

; <label>:63:                                     ; preds = %41
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %37

; <label>:66:                                     ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadDebug(%struct.LoadState*, %struct.Proto*) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call i32 @LoadInt(%struct.LoadState* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = call i8* @luaM_malloc_(%struct.lua_State* %11, i64 %14, i32 0)
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 19
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.Proto*, %struct.Proto** %4, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 19
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1
  call void @LoadBlock(%struct.LoadState* %21, i8* %24, i64 %27)
  %28 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %29 = call i32 @LoadInt(%struct.LoadState* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %31 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %30, i32 0, i32 0
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = call i8* @luaM_malloc_(%struct.lua_State* %32, i64 %35, i32 0)
  %37 = bitcast i8* %36 to %struct.AbsLineInfo*
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 20
  store %struct.AbsLineInfo* %37, %struct.AbsLineInfo** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.Proto*, %struct.Proto** %4, align 8
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

; <label>:43:                                     ; preds = %66, %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %69

; <label>:47:                                     ; preds = %43
  %48 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %49 = call i32 @LoadInt(%struct.LoadState* %48)
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 20
  %52 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %52, i64 %54
  %56 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  %57 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %58 = call i32 @LoadInt(%struct.LoadState* %57)
  %59 = load %struct.Proto*, %struct.Proto** %4, align 8
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 20
  %61 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %61, i64 %63
  %65 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %43

; <label>:69:                                     ; preds = %43
  %70 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %71 = call i32 @LoadInt(%struct.LoadState* %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %73 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %72, i32 0, i32 0
  %74 = load %struct.lua_State*, %struct.lua_State** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 16
  %78 = call i8* @luaM_malloc_(%struct.lua_State* %74, i64 %77, i32 0)
  %79 = bitcast i8* %78 to %struct.LocVar*
  %80 = load %struct.Proto*, %struct.Proto** %4, align 8
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i32 0, i32 21
  store %struct.LocVar* %79, %struct.LocVar** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.Proto*, %struct.Proto** %4, align 8
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %85

; <label>:85:                                     ; preds = %97, %69
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

; <label>:89:                                     ; preds = %85
  %90 = load %struct.Proto*, %struct.Proto** %4, align 8
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %90, i32 0, i32 21
  %92 = load %struct.LocVar*, %struct.LocVar** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %92, i64 %94
  %96 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %95, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %96, align 8
  br label %97

; <label>:97:                                     ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %85

; <label>:100:                                    ; preds = %85
  store i32 0, i32* %5, align 4
  br label %101

; <label>:101:                                    ; preds = %133, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %136

; <label>:105:                                    ; preds = %101
  %106 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %107 = call %struct.TString* @LoadStringN(%struct.LoadState* %106)
  %108 = load %struct.Proto*, %struct.Proto** %4, align 8
  %109 = getelementptr inbounds %struct.Proto, %struct.Proto* %108, i32 0, i32 21
  %110 = load %struct.LocVar*, %struct.LocVar** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %110, i64 %112
  %114 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %113, i32 0, i32 0
  store %struct.TString* %107, %struct.TString** %114, align 8
  %115 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %116 = call i32 @LoadInt(%struct.LoadState* %115)
  %117 = load %struct.Proto*, %struct.Proto** %4, align 8
  %118 = getelementptr inbounds %struct.Proto, %struct.Proto* %117, i32 0, i32 21
  %119 = load %struct.LocVar*, %struct.LocVar** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %119, i64 %121
  %123 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %122, i32 0, i32 1
  store i32 %116, i32* %123, align 8
  %124 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %125 = call i32 @LoadInt(%struct.LoadState* %124)
  %126 = load %struct.Proto*, %struct.Proto** %4, align 8
  %127 = getelementptr inbounds %struct.Proto, %struct.Proto* %126, i32 0, i32 21
  %128 = load %struct.LocVar*, %struct.LocVar** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %128, i64 %130
  %132 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %131, i32 0, i32 2
  store i32 %125, i32* %132, align 4
  br label %133

; <label>:133:                                    ; preds = %105
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %101

; <label>:136:                                    ; preds = %101
  %137 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %138 = call i32 @LoadInt(%struct.LoadState* %137)
  store i32 %138, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %139

; <label>:139:                                    ; preds = %153, %136
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %156

; <label>:143:                                    ; preds = %139
  %144 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %145 = call %struct.TString* @LoadStringN(%struct.LoadState* %144)
  %146 = load %struct.Proto*, %struct.Proto** %4, align 8
  %147 = getelementptr inbounds %struct.Proto, %struct.Proto* %146, i32 0, i32 18
  %148 = load %struct.Upvaldesc*, %struct.Upvaldesc** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %148, i64 %150
  %152 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %151, i32 0, i32 0
  store %struct.TString* %145, %struct.TString** %152, align 8
  br label %153

; <label>:153:                                    ; preds = %143
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %139

; <label>:156:                                    ; preds = %139
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadSize(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %3 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %4 = call i64 @LoadUnsigned(%struct.LoadState* %3, i64 -1)
  ret i64 %4
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) #1

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @LoadString(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca %struct.TString*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = call %struct.TString* @LoadStringN(%struct.LoadState* %4)
  store %struct.TString* %5, %struct.TString** %3, align 8
  %6 = load %struct.TString*, %struct.TString** %3, align 8
  %7 = icmp eq %struct.TString* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)) #5
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load %struct.TString*, %struct.TString** %3, align 8
  ret %struct.TString* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
