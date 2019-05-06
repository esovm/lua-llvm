; ModuleID = 'lundump.c'
source_filename = "lundump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.UpVal*, i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.4 }
%struct.anon.4 = type { %union.Value, i32, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i64, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, i8* }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"not a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"version mismatch in\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"format mismatch in\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"lua_Integer\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"lua_Number\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"endianness mismatch in\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"float format mismatch in\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"%s: %s precompiled chunk\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s size mismatch in\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Zio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.LoadState, align 8
  %8 = alloca %struct.LClosure*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
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
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 5
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  store %struct.lua_TValue* %48, %struct.lua_TValue** %9, align 8
  %49 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  store %struct.LClosure* %49, %struct.LClosure** %10, align 8
  %50 = load %struct.LClosure*, %struct.LClosure** %10, align 8
  %51 = bitcast %struct.LClosure* %50 to %union.GCUnion*
  %52 = bitcast %union.GCUnion* %51 to %struct.GCObject*
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to %struct.GCObject**
  store %struct.GCObject* %52, %struct.GCObject** %55, align 8
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 1
  store i32 70, i32* %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_inctop(%struct.lua_State* %58)
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %59)
  %61 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %62 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %61, i32 0, i32 5
  store %struct.Proto* %60, %struct.Proto** %62, align 8
  %63 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i32 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8
  call void @LoadFunction(%struct.LoadState* %7, %struct.Proto* %65, %struct.TString* null)
  %66 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  ret %struct.LClosure* %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkHeader(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %3 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @checkliteral(%struct.LoadState* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = call zeroext i8 @LoadByte(%struct.LoadState* %4)
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), align 1
  %8 = sext i8 %7 to i32
  %9 = sub nsw i32 %8, 48
  %10 = mul nsw i32 %9, 16
  %11 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), align 1
  %12 = sext i8 %11 to i32
  %13 = sub nsw i32 %12, 48
  %14 = add nsw i32 %10, %13
  %15 = icmp ne i32 %6, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable

; <label>:18:                                     ; preds = %1
  %19 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %20 = call zeroext i8 @LoadByte(%struct.LoadState* %19)
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %18
  %24 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

; <label>:25:                                     ; preds = %18
  %26 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @checkliteral(%struct.LoadState* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %27 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %27, i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %28 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %28, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %29 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %29, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %30 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %30, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %31 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @fchecksize(%struct.LoadState* %31, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  %32 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %33 = call i64 @LoadInteger(%struct.LoadState* %32)
  %34 = icmp ne i64 %33, 22136
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %25
  %36 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #5
  unreachable

; <label>:37:                                     ; preds = %25
  %38 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %39 = call double @LoadNumber(%struct.LoadState* %38)
  %40 = fcmp une double %39, 3.705000e+02
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37
  %42 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #5
  unreachable

; <label>:43:                                     ; preds = %37
  ret void
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @LoadByte(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i8, align 1
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @LoadBlock(%struct.LoadState* %4, i8* %3, i64 1)
  %5 = load i8, i8* %3, align 1
  ret i8 %5
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
  %8 = call %struct.TString* @LoadString(%struct.LoadState* %7)
  %9 = load %struct.Proto*, %struct.Proto** %5, align 8
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 21
  store %struct.TString* %8, %struct.TString** %10, align 8
  %11 = load %struct.Proto*, %struct.Proto** %5, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 21
  %13 = load %struct.TString*, %struct.TString** %12, align 8
  %14 = icmp eq %struct.TString* %13, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %3
  %16 = load %struct.TString*, %struct.TString** %6, align 8
  %17 = load %struct.Proto*, %struct.Proto** %5, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 21
  store %struct.TString* %16, %struct.TString** %18, align 8
  br label %19

; <label>:19:                                     ; preds = %15, %3
  %20 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %21 = call i32 @LoadInt(%struct.LoadState* %20)
  %22 = load %struct.Proto*, %struct.Proto** %5, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %25 = call i32 @LoadInt(%struct.LoadState* %24)
  %26 = load %struct.Proto*, %struct.Proto** %5, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
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
  %12 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* %10, i8* %11)
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
  %18 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %17)
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
  call void @error(%struct.LoadState* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #5
  unreachable

; <label>:16:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @LoadString(%struct.LoadState*) #0 {
  %2 = alloca %struct.TString*, align 8
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca %struct.TString*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call zeroext i8 @LoadByte(%struct.LoadState* %7)
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 255
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %14 = bitcast i64* %4 to i8*
  call void @LoadBlock(%struct.LoadState* %13, i8* %14, i64 8)
  br label %15

; <label>:15:                                     ; preds = %12, %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store %struct.TString* null, %struct.TString** %2, align 8
  br label %47

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %4, align 8
  %22 = icmp ule i64 %21, 40
  br i1 %22, label %23, label %34

; <label>:23:                                     ; preds = %19
  %24 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = mul i64 %26, 1
  call void @LoadBlock(%struct.LoadState* %24, i8* %25, i64 %27)
  %28 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %29 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %28, i32 0, i32 0
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %30, i8* %31, i64 %32)
  store %struct.TString* %33, %struct.TString** %2, align 8
  br label %47

; <label>:34:                                     ; preds = %19
  %35 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %36 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %35, i32 0, i32 0
  %37 = load %struct.lua_State*, %struct.lua_State** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %37, i64 %38)
  store %struct.TString* %39, %struct.TString** %6, align 8
  %40 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %41 = load %struct.TString*, %struct.TString** %6, align 8
  %42 = bitcast %struct.TString* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 24
  %44 = load i64, i64* %4, align 8
  %45 = mul i64 %44, 1
  call void @LoadBlock(%struct.LoadState* %40, i8* %43, i64 %45)
  %46 = load %struct.TString*, %struct.TString** %6, align 8
  store %struct.TString* %46, %struct.TString** %2, align 8
  br label %47

; <label>:47:                                     ; preds = %34, %23, %18
  %48 = load %struct.TString*, %struct.TString** %2, align 8
  ret %struct.TString* %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadInt(%struct.LoadState*) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = bitcast i32* %3 to i8*
  call void @LoadBlock(%struct.LoadState* %4, i8* %5, i64 4)
  %6 = load i32, i32* %3, align 4
  ret i32 %6
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
  %14 = call i8* @luaM_realloc_(%struct.lua_State* %10, i8* null, i64 0, i64 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 15
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.Proto*, %struct.Proto** %4, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 8
  %21 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 15
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
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
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
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %18, i8* null, i64 0, i64 %21)
  %23 = bitcast i8* %22 to %struct.lua_TValue*
  %24 = load %struct.Proto*, %struct.Proto** %4, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 14
  store %struct.lua_TValue* %23, %struct.lua_TValue** %25, align 8
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
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 14
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 %38
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  br label %41

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %29

; <label>:44:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %110, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %113

; <label>:49:                                     ; preds = %45
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 14
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i64 %54
  store %struct.lua_TValue* %55, %struct.lua_TValue** %7, align 8
  %56 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %57 = call zeroext i8 @LoadByte(%struct.LoadState* %56)
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %108 [
    i32 0, label %60
    i32 1, label %63
    i32 3, label %73
    i32 19, label %82
    i32 4, label %91
    i32 20, label %91
  ]

; <label>:60:                                     ; preds = %49
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  br label %109

; <label>:63:                                     ; preds = %49
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %64, %struct.lua_TValue** %9, align 8
  %65 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %66 = call zeroext i8 @LoadByte(%struct.LoadState* %65)
  %67 = zext i8 %66 to i32
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to i32*
  store i32 %67, i32* %70, align 8
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  br label %109

; <label>:73:                                     ; preds = %49
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %74, %struct.lua_TValue** %10, align 8
  %75 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %76 = call double @LoadNumber(%struct.LoadState* %75)
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i32 0, i32 0
  %79 = bitcast %union.Value* %78 to double*
  store double %76, double* %79, align 8
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i32 0, i32 1
  store i32 3, i32* %81, align 8
  br label %109

; <label>:82:                                     ; preds = %49
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %83, %struct.lua_TValue** %11, align 8
  %84 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %85 = call i64 @LoadInteger(%struct.LoadState* %84)
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i32 0, i32 0
  %88 = bitcast %union.Value* %87 to i64*
  store i64 %85, i64* %88, align 8
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i32 0, i32 1
  store i32 19, i32* %90, align 8
  br label %109

; <label>:91:                                     ; preds = %49, %49
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %92, %struct.lua_TValue** %12, align 8
  %93 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %94 = call %struct.TString* @LoadString(%struct.LoadState* %93)
  store %struct.TString* %94, %struct.TString** %13, align 8
  %95 = load %struct.TString*, %struct.TString** %13, align 8
  %96 = bitcast %struct.TString* %95 to %union.GCUnion*
  %97 = bitcast %union.GCUnion* %96 to %struct.GCObject*
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i32 0, i32 0
  %100 = bitcast %union.Value* %99 to %struct.GCObject**
  store %struct.GCObject* %97, %struct.GCObject** %100, align 8
  %101 = load %struct.TString*, %struct.TString** %13, align 8
  %102 = getelementptr inbounds %struct.TString, %struct.TString* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = or i32 %104, 64
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  br label %109

; <label>:108:                                    ; preds = %49
  br label %109

; <label>:109:                                    ; preds = %108, %91, %82, %73, %63, %60
  br label %110

; <label>:110:                                    ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %45

; <label>:113:                                    ; preds = %45
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
  %15 = call i8* @luaM_realloc_(%struct.lua_State* %11, i8* null, i64 0, i64 %14)
  %16 = bitcast i8* %15 to %struct.Upvaldesc*
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 19
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
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 19
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
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 19
  %47 = load %struct.Upvaldesc*, %struct.Upvaldesc** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %47, i64 %49
  %51 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %50, i32 0, i32 1
  store i8 %44, i8* %51, align 8
  %52 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %53 = call zeroext i8 @LoadByte(%struct.LoadState* %52)
  %54 = load %struct.Proto*, %struct.Proto** %4, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 19
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
  %15 = call i8* @luaM_realloc_(%struct.lua_State* %11, i8* null, i64 0, i64 %14)
  %16 = bitcast i8* %15 to %struct.Proto**
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 16
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
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 16
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
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 16
  %48 = load %struct.Proto**, %struct.Proto*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Proto*, %struct.Proto** %48, i64 %50
  store %struct.Proto* %45, %struct.Proto** %51, align 8
  %52 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %53 = load %struct.Proto*, %struct.Proto** %4, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 16
  %55 = load %struct.Proto**, %struct.Proto*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Proto*, %struct.Proto** %55, i64 %57
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8
  %60 = load %struct.Proto*, %struct.Proto** %4, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 21
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
  %14 = mul i64 %13, 4
  %15 = call i8* @luaM_realloc_(%struct.lua_State* %11, i8* null, i64 0, i64 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 17
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %23 = load %struct.Proto*, %struct.Proto** %4, align 8
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 17
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  call void @LoadBlock(%struct.LoadState* %22, i8* %26, i64 %29)
  %30 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %31 = call i32 @LoadInt(%struct.LoadState* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %33 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %32, i32 0, i32 0
  %34 = load %struct.lua_State*, %struct.lua_State** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 16
  %38 = call i8* @luaM_realloc_(%struct.lua_State* %34, i8* null, i64 0, i64 %37)
  %39 = bitcast i8* %38 to %struct.LocVar*
  %40 = load %struct.Proto*, %struct.Proto** %4, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 18
  store %struct.LocVar* %39, %struct.LocVar** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.Proto*, %struct.Proto** %4, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %57, %2
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

; <label>:49:                                     ; preds = %45
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 18
  %52 = load %struct.LocVar*, %struct.LocVar** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %52, i64 %54
  %56 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %55, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %56, align 8
  br label %57

; <label>:57:                                     ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %45

; <label>:60:                                     ; preds = %45
  store i32 0, i32* %5, align 4
  br label %61

; <label>:61:                                     ; preds = %93, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %96

; <label>:65:                                     ; preds = %61
  %66 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %67 = call %struct.TString* @LoadString(%struct.LoadState* %66)
  %68 = load %struct.Proto*, %struct.Proto** %4, align 8
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %68, i32 0, i32 18
  %70 = load %struct.LocVar*, %struct.LocVar** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %70, i64 %72
  %74 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %73, i32 0, i32 0
  store %struct.TString* %67, %struct.TString** %74, align 8
  %75 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %76 = call i32 @LoadInt(%struct.LoadState* %75)
  %77 = load %struct.Proto*, %struct.Proto** %4, align 8
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %77, i32 0, i32 18
  %79 = load %struct.LocVar*, %struct.LocVar** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %79, i64 %81
  %83 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 8
  %84 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %85 = call i32 @LoadInt(%struct.LoadState* %84)
  %86 = load %struct.Proto*, %struct.Proto** %4, align 8
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i32 0, i32 18
  %88 = load %struct.LocVar*, %struct.LocVar** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %88, i64 %90
  %92 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i32 0, i32 2
  store i32 %85, i32* %92, align 4
  br label %93

; <label>:93:                                     ; preds = %65
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %61

; <label>:96:                                     ; preds = %61
  %97 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %98 = call i32 @LoadInt(%struct.LoadState* %97)
  store i32 %98, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %99

; <label>:99:                                     ; preds = %113, %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %116

; <label>:103:                                    ; preds = %99
  %104 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %105 = call %struct.TString* @LoadString(%struct.LoadState* %104)
  %106 = load %struct.Proto*, %struct.Proto** %4, align 8
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i32 0, i32 19
  %108 = load %struct.Upvaldesc*, %struct.Upvaldesc** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %108, i64 %110
  %112 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %111, i32 0, i32 0
  store %struct.TString* %105, %struct.TString** %112, align 8
  br label %113

; <label>:113:                                    ; preds = %103
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %99

; <label>:116:                                    ; preds = %99
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

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
