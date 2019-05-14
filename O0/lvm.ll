; ModuleID = 'lvm.c'
source_filename = "lvm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.GCUnion = type { %struct.lua_State }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.anon = type { i32*, i32, i32 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"'__newindex' chain too long; possible loop\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"attempt to divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"attempt to perform 'n%%0'\00", align 1
@luaV_execute.disptab = internal global [84 x i8*] [i8* blockaddress(@luaV_execute, %448), i8* blockaddress(@luaV_execute, %544), i8* blockaddress(@luaV_execute, %584), i8* blockaddress(@luaV_execute, %496), i8* blockaddress(@luaV_execute, %624), i8* blockaddress(@luaV_execute, %675), i8* blockaddress(@luaV_execute, %720), i8* blockaddress(@luaV_execute, %760), i8* blockaddress(@luaV_execute, %812), i8* blockaddress(@luaV_execute, %901), i8* blockaddress(@luaV_execute, %1010), i8* blockaddress(@luaV_execute, %1175), i8* blockaddress(@luaV_execute, %1308), i8* blockaddress(@luaV_execute, %1414), i8* blockaddress(@luaV_execute, %1576), i8* blockaddress(@luaV_execute, %1796), i8* blockaddress(@luaV_execute, %1982), i8* blockaddress(@luaV_execute, %2139), i8* blockaddress(@luaV_execute, %2221), i8* blockaddress(@luaV_execute, %2357), i8* blockaddress(@luaV_execute, %2477), i8* blockaddress(@luaV_execute, %2594), i8* blockaddress(@luaV_execute, %2714), i8* blockaddress(@luaV_execute, %2833), i8* blockaddress(@luaV_execute, %2929), i8* blockaddress(@luaV_execute, %3024), i8* blockaddress(@luaV_execute, %3144), i8* blockaddress(@luaV_execute, %3298), i8* blockaddress(@luaV_execute, %3449), i8* blockaddress(@luaV_execute, %3603), i8* blockaddress(@luaV_execute, %3756), i8* blockaddress(@luaV_execute, %3876), i8* blockaddress(@luaV_execute, %3995), i8* blockaddress(@luaV_execute, %5155), i8* blockaddress(@luaV_execute, %5247), i8* blockaddress(@luaV_execute, %5339), i8* blockaddress(@luaV_execute, %5737), i8* blockaddress(@luaV_execute, %5832), i8* blockaddress(@luaV_execute, %4149), i8* blockaddress(@luaV_execute, %4301), i8* blockaddress(@luaV_execute, %4453), i8* blockaddress(@luaV_execute, %4605), i8* blockaddress(@luaV_execute, %4759), i8* blockaddress(@luaV_execute, %4880), i8* blockaddress(@luaV_execute, %5000), i8* blockaddress(@luaV_execute, %5431), i8* blockaddress(@luaV_execute, %5533), i8* blockaddress(@luaV_execute, %5635), i8* blockaddress(@luaV_execute, %6021), i8* blockaddress(@luaV_execute, %5918), i8* blockaddress(@luaV_execute, %6123), i8* blockaddress(@luaV_execute, %6232), i8* blockaddress(@luaV_execute, %6311), i8* blockaddress(@luaV_execute, %6376), i8* blockaddress(@luaV_execute, %6427), i8* blockaddress(@luaV_execute, %6494), i8* blockaddress(@luaV_execute, %6543), i8* blockaddress(@luaV_execute, %6577), i8* blockaddress(@luaV_execute, %6617), i8* blockaddress(@luaV_execute, %6696), i8* blockaddress(@luaV_execute, %6822), i8* blockaddress(@luaV_execute, %6948), i8* blockaddress(@luaV_execute, %7010), i8* blockaddress(@luaV_execute, %7102), i8* blockaddress(@luaV_execute, %7218), i8* blockaddress(@luaV_execute, %7334), i8* blockaddress(@luaV_execute, %7450), i8* blockaddress(@luaV_execute, %7566), i8* blockaddress(@luaV_execute, %7645), i8* blockaddress(@luaV_execute, %7741), i8* blockaddress(@luaV_execute, %7798), i8* blockaddress(@luaV_execute, %7920), i8* blockaddress(@luaV_execute, %7981), i8* blockaddress(@luaV_execute, %8024), i8* blockaddress(@luaV_execute, %8093), i8* blockaddress(@luaV_execute, %8243), i8* blockaddress(@luaV_execute, %8505), i8* blockaddress(@luaV_execute, %8533), i8* blockaddress(@luaV_execute, %8585), i8* blockaddress(@luaV_execute, %8647), i8* blockaddress(@luaV_execute, %8798), i8* blockaddress(@luaV_execute, %8866), i8* blockaddress(@luaV_execute, %8916), i8* blockaddress(@luaV_execute, %8970)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_tonumber_(%struct.TValue*, double*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %struct.TValue, align 8
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store double* %1, double** %5, align 8
  %7 = load %struct.TValue*, %struct.TValue** %4, align 8
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 8
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %2
  %13 = load %struct.TValue*, %struct.TValue** %4, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = load double*, double** %5, align 8
  store double %17, double* %18, align 8
  store i32 1, i32* %3, align 4
  br label %88

; <label>:19:                                     ; preds = %2
  %20 = load %struct.TValue*, %struct.TValue** %4, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %87

; <label>:26:                                     ; preds = %19
  %27 = load %struct.TValue*, %struct.TValue** %4, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %28 to %struct.GCObject**
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %struct.TString*
  %33 = bitcast %struct.TString* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  %35 = call i64 @luaO_str2num(i8* %34, %struct.TValue* %6)
  %36 = load %struct.TValue*, %struct.TValue** %4, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %struct.TString*
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 20
  br i1 %45, label %46, label %56

; <label>:46:                                     ; preds = %26
  %47 = load %struct.TValue*, %struct.TValue** %4, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to %struct.GCObject**
  %50 = load %struct.GCObject*, %struct.GCObject** %49, align 8
  %51 = bitcast %struct.GCObject* %50 to %union.GCUnion*
  %52 = bitcast %union.GCUnion* %51 to %struct.TString*
  %53 = getelementptr inbounds %struct.TString, %struct.TString* %52, i32 0, i32 4
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  br label %66

; <label>:56:                                     ; preds = %26
  %57 = load %struct.TValue*, %struct.TValue** %4, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8
  %61 = bitcast %struct.GCObject* %60 to %union.GCUnion*
  %62 = bitcast %union.GCUnion* %61 to %struct.TString*
  %63 = getelementptr inbounds %struct.TString, %struct.TString* %62, i32 0, i32 6
  %64 = bitcast %union.anon.5* %63 to i64*
  %65 = load i64, i64* %64, align 8
  br label %66

; <label>:66:                                     ; preds = %56, %46
  %67 = phi i64 [ %55, %46 ], [ %65, %56 ]
  %68 = add i64 %67, 1
  %69 = icmp eq i64 %35, %68
  br i1 %69, label %70, label %87

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 1
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %80

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 0
  %77 = bitcast %union.Value* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to double
  br label %84

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 0
  %82 = bitcast %union.Value* %81 to double*
  %83 = load double, double* %82, align 8
  br label %84

; <label>:84:                                     ; preds = %80, %75
  %85 = phi double [ %79, %75 ], [ %83, %80 ]
  %86 = load double*, double** %5, align 8
  store double %85, double* %86, align 8
  store i32 1, i32* %3, align 4
  br label %88

; <label>:87:                                     ; preds = %66, %19
  store i32 0, i32* %3, align 4
  br label %88

; <label>:88:                                     ; preds = %87, %84, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_flttointeger(double, i64*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load double, double* %5, align 8
  %10 = call double @llvm.floor.f64(double %9)
  store double %10, double* %8, align 8
  %11 = load double, double* %5, align 8
  %12 = load double, double* %8, align 8
  %13 = fcmp une double %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  br label %39

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load double, double* %8, align 8
  %23 = fadd double %22, 1.000000e+00
  store double %23, double* %8, align 8
  br label %24

; <label>:24:                                     ; preds = %21, %18
  br label %25

; <label>:25:                                     ; preds = %24
  br label %26

; <label>:26:                                     ; preds = %25, %3
  %27 = load double, double* %8, align 8
  %28 = fcmp oge double %27, 0xC3E0000000000000
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %26
  %30 = load double, double* %8, align 8
  %31 = fcmp olt double %30, 0x43E0000000000000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %29
  %33 = load double, double* %8, align 8
  %34 = fptosi double %33 to i64
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %32, %29, %26
  %37 = phi i1 [ false, %29 ], [ false, %26 ], [ true, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %39

; <label>:39:                                     ; preds = %36, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TValue* %0, %struct.TValue** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TValue*, %struct.TValue** %5, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 19
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %3
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to double*
  %17 = load double, double* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @luaV_flttointeger(double %17, i64* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %34

; <label>:21:                                     ; preds = %3
  %22 = load %struct.TValue*, %struct.TValue** %5, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %21
  %28 = load %struct.TValue*, %struct.TValue** %5, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  store i32 1, i32* %4, align 4
  br label %34

; <label>:33:                                     ; preds = %21
  store i32 0, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %27, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_tointeger(%struct.TValue*, i64*, i32) #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue, align 8
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TValue*, %struct.TValue** %4, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %59

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TValue*, %struct.TValue** %4, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.TString*
  %21 = bitcast %struct.TString* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 24
  %23 = call i64 @luaO_str2num(i8* %22, %struct.TValue* %7)
  %24 = load %struct.TValue*, %struct.TValue** %4, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to %struct.GCObject**
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8
  %28 = bitcast %struct.GCObject* %27 to %union.GCUnion*
  %29 = bitcast %union.GCUnion* %28 to %struct.TString*
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 20
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %14
  %35 = load %struct.TValue*, %struct.TValue** %4, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to %struct.GCObject**
  %38 = load %struct.GCObject*, %struct.GCObject** %37, align 8
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.TString*
  %41 = getelementptr inbounds %struct.TString, %struct.TString* %40, i32 0, i32 4
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  br label %54

; <label>:44:                                     ; preds = %14
  %45 = load %struct.TValue*, %struct.TValue** %4, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %struct.TString*
  %51 = getelementptr inbounds %struct.TString, %struct.TString* %50, i32 0, i32 6
  %52 = bitcast %union.anon.5* %51 to i64*
  %53 = load i64, i64* %52, align 8
  br label %54

; <label>:54:                                     ; preds = %44, %34
  %55 = phi i64 [ %43, %34 ], [ %53, %44 ]
  %56 = add i64 %55, 1
  %57 = icmp eq i64 %23, %56
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %54
  store %struct.TValue* %7, %struct.TValue** %4, align 8
  br label %59

; <label>:59:                                     ; preds = %58, %54, %3
  %60 = load %struct.TValue*, %struct.TValue** %4, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @luaV_tointegerns(%struct.TValue* %60, i64* %61, i32 %62)
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %union.StackValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.TValue* %1, %struct.TValue** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %union.StackValue* %3, %union.StackValue** %9, align 8
  store %struct.TValue* %4, %struct.TValue** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

; <label>:15:                                     ; preds = %147, %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 2000
  br i1 %17, label %18, label %150

; <label>:18:                                     ; preds = %15
  %19 = load %struct.TValue*, %struct.TValue** %10, align 8
  %20 = icmp eq %struct.TValue* %19, null
  br i1 %20, label %21, label %40

; <label>:21:                                     ; preds = %18
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = load %struct.TValue*, %struct.TValue** %7, align 8
  %24 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %22, %struct.TValue* %23, i32 0)
  store %struct.TValue* %24, %struct.TValue** %12, align 8
  %25 = load %struct.TValue*, %struct.TValue** %12, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %21
  %37 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %38 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @luaG_typeerror(%struct.lua_State* %37, %struct.TValue* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

; <label>:39:                                     ; preds = %21
  br label %93

; <label>:40:                                     ; preds = %18
  %41 = load %struct.TValue*, %struct.TValue** %7, align 8
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %42 to %struct.GCObject**
  %44 = load %struct.GCObject*, %struct.GCObject** %43, align 8
  %45 = bitcast %struct.GCObject* %44 to %union.GCUnion*
  %46 = bitcast %union.GCUnion* %45 to %struct.Table*
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %46, i32 0, i32 9
  %48 = load %struct.Table*, %struct.Table** %47, align 8
  %49 = icmp eq %struct.Table* %48, null
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %40
  br label %84

; <label>:51:                                     ; preds = %40
  %52 = load %struct.TValue*, %struct.TValue** %7, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.Table*
  %58 = getelementptr inbounds %struct.Table, %struct.Table* %57, i32 0, i32 9
  %59 = load %struct.Table*, %struct.Table** %58, align 8
  %60 = getelementptr inbounds %struct.Table, %struct.Table* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %51
  br label %82

; <label>:66:                                     ; preds = %51
  %67 = load %struct.TValue*, %struct.TValue** %7, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %68 to %struct.GCObject**
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  %71 = bitcast %struct.GCObject* %70 to %union.GCUnion*
  %72 = bitcast %union.GCUnion* %71 to %struct.Table*
  %73 = getelementptr inbounds %struct.Table, %struct.Table* %72, i32 0, i32 9
  %74 = load %struct.Table*, %struct.Table** %73, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 7
  %77 = load %struct.global_State*, %struct.global_State** %76, align 8
  %78 = getelementptr inbounds %struct.global_State, %struct.global_State* %77, i32 0, i32 40
  %79 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %78, i64 0, i64 0
  %80 = load %struct.TString*, %struct.TString** %79, align 8
  %81 = call %struct.TValue* @luaT_gettm(%struct.Table* %74, i32 0, %struct.TString* %80)
  br label %82

; <label>:82:                                     ; preds = %66, %65
  %83 = phi %struct.TValue* [ null, %65 ], [ %81, %66 ]
  br label %84

; <label>:84:                                     ; preds = %82, %50
  %85 = phi %struct.TValue* [ null, %50 ], [ %83, %82 ]
  store %struct.TValue* %85, %struct.TValue** %12, align 8
  %86 = load %struct.TValue*, %struct.TValue** %12, align 8
  %87 = icmp eq %struct.TValue* %86, null
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %84
  %89 = load %union.StackValue*, %union.StackValue** %9, align 8
  %90 = bitcast %union.StackValue* %89 to %struct.TValue*
  %91 = getelementptr inbounds %struct.TValue, %struct.TValue* %90, i32 0, i32 1
  store i8 0, i8* %91, align 8
  br label %152

; <label>:92:                                     ; preds = %84
  br label %93

; <label>:93:                                     ; preds = %92, %39
  %94 = load %struct.TValue*, %struct.TValue** %12, align 8
  %95 = getelementptr inbounds %struct.TValue, %struct.TValue* %94, i32 0, i32 1
  %96 = load i8, i8* %95, align 8
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 15
  %99 = icmp eq i32 %98, 6
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %93
  %101 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %102 = load %struct.TValue*, %struct.TValue** %12, align 8
  %103 = load %struct.TValue*, %struct.TValue** %7, align 8
  %104 = load %struct.TValue*, %struct.TValue** %8, align 8
  %105 = load %union.StackValue*, %union.StackValue** %9, align 8
  call void @luaT_callTMres(%struct.lua_State* %101, %struct.TValue* %102, %struct.TValue* %103, %struct.TValue* %104, %union.StackValue* %105)
  br label %152

; <label>:106:                                    ; preds = %93
  %107 = load %struct.TValue*, %struct.TValue** %12, align 8
  store %struct.TValue* %107, %struct.TValue** %7, align 8
  %108 = load %struct.TValue*, %struct.TValue** %7, align 8
  %109 = getelementptr inbounds %struct.TValue, %struct.TValue* %108, i32 0, i32 1
  %110 = load i8, i8* %109, align 8
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 69
  br i1 %112, label %114, label %113

; <label>:113:                                    ; preds = %106
  store %struct.TValue* null, %struct.TValue** %10, align 8
  br i1 false, label %130, label %146

; <label>:114:                                    ; preds = %106
  %115 = load %struct.TValue*, %struct.TValue** %7, align 8
  %116 = getelementptr inbounds %struct.TValue, %struct.TValue* %115, i32 0, i32 0
  %117 = bitcast %union.Value* %116 to %struct.GCObject**
  %118 = load %struct.GCObject*, %struct.GCObject** %117, align 8
  %119 = bitcast %struct.GCObject* %118 to %union.GCUnion*
  %120 = bitcast %union.GCUnion* %119 to %struct.Table*
  %121 = load %struct.TValue*, %struct.TValue** %8, align 8
  %122 = call %struct.TValue* @luaH_get(%struct.Table* %120, %struct.TValue* %121)
  store %struct.TValue* %122, %struct.TValue** %10, align 8
  %123 = load %struct.TValue*, %struct.TValue** %10, align 8
  %124 = getelementptr inbounds %struct.TValue, %struct.TValue* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 8
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 15
  %128 = icmp eq i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %146

; <label>:130:                                    ; preds = %114, %113
  %131 = load %union.StackValue*, %union.StackValue** %9, align 8
  %132 = bitcast %union.StackValue* %131 to %struct.TValue*
  store %struct.TValue* %132, %struct.TValue** %13, align 8
  %133 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %133, %struct.TValue** %14, align 8
  %134 = load %struct.TValue*, %struct.TValue** %13, align 8
  %135 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i32 0, i32 0
  %136 = load %struct.TValue*, %struct.TValue** %14, align 8
  %137 = getelementptr inbounds %struct.TValue, %struct.TValue* %136, i32 0, i32 0
  %138 = bitcast %union.Value* %135 to i8*
  %139 = bitcast %union.Value* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 8, i32 8, i1 false)
  %140 = load %struct.TValue*, %struct.TValue** %14, align 8
  %141 = getelementptr inbounds %struct.TValue, %struct.TValue* %140, i32 0, i32 1
  %142 = load i8, i8* %141, align 8
  %143 = load %struct.TValue*, %struct.TValue** %13, align 8
  %144 = getelementptr inbounds %struct.TValue, %struct.TValue* %143, i32 0, i32 1
  store i8 %142, i8* %144, align 8
  %145 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  br label %152

; <label>:146:                                    ; preds = %114, %113
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %15

; <label>:150:                                    ; preds = %15
  %151 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %151, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0)) #7
  unreachable

; <label>:152:                                    ; preds = %130, %100, %88
  ret void
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) #1

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) #3

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #1

declare hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %union.StackValue*) #1

declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.Table*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.TValue* %1, %struct.TValue** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %struct.TValue* %3, %struct.TValue** %9, align 8
  store %struct.TValue* %4, %struct.TValue** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

; <label>:18:                                     ; preds = %230, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 2000
  br i1 %20, label %21, label %233

; <label>:21:                                     ; preds = %18
  %22 = load %struct.TValue*, %struct.TValue** %10, align 8
  %23 = icmp ne %struct.TValue* %22, null
  br i1 %23, label %24, label %124

; <label>:24:                                     ; preds = %21
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %struct.Table*
  store %struct.Table* %30, %struct.Table** %13, align 8
  %31 = load %struct.Table*, %struct.Table** %13, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 9
  %33 = load %struct.Table*, %struct.Table** %32, align 8
  %34 = icmp eq %struct.Table* %33, null
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %24
  br label %59

; <label>:36:                                     ; preds = %24
  %37 = load %struct.Table*, %struct.Table** %13, align 8
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %37, i32 0, i32 9
  %39 = load %struct.Table*, %struct.Table** %38, align 8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %39, i32 0, i32 3
  %41 = load i8, i8* %40, align 2
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %36
  br label %57

; <label>:46:                                     ; preds = %36
  %47 = load %struct.Table*, %struct.Table** %13, align 8
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %47, i32 0, i32 9
  %49 = load %struct.Table*, %struct.Table** %48, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 7
  %52 = load %struct.global_State*, %struct.global_State** %51, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 40
  %54 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %53, i64 0, i64 1
  %55 = load %struct.TString*, %struct.TString** %54, align 8
  %56 = call %struct.TValue* @luaT_gettm(%struct.Table* %49, i32 1, %struct.TString* %55)
  br label %57

; <label>:57:                                     ; preds = %46, %45
  %58 = phi %struct.TValue* [ null, %45 ], [ %56, %46 ]
  br label %59

; <label>:59:                                     ; preds = %57, %35
  %60 = phi %struct.TValue* [ null, %35 ], [ %58, %57 ]
  store %struct.TValue* %60, %struct.TValue** %12, align 8
  %61 = load %struct.TValue*, %struct.TValue** %12, align 8
  %62 = icmp eq %struct.TValue* %61, null
  br i1 %62, label %63, label %123

; <label>:63:                                     ; preds = %59
  %64 = load %struct.TValue*, %struct.TValue** %10, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %74

; <label>:69:                                     ; preds = %63
  %70 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %71 = load %struct.Table*, %struct.Table** %13, align 8
  %72 = load %struct.TValue*, %struct.TValue** %8, align 8
  %73 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %70, %struct.Table* %71, %struct.TValue* %72)
  store %struct.TValue* %73, %struct.TValue** %10, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %63
  %75 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %75, %struct.TValue** %14, align 8
  %76 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %76, %struct.TValue** %15, align 8
  %77 = load %struct.TValue*, %struct.TValue** %14, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 0
  %79 = load %struct.TValue*, %struct.TValue** %15, align 8
  %80 = getelementptr inbounds %struct.TValue, %struct.TValue* %79, i32 0, i32 0
  %81 = bitcast %union.Value* %78 to i8*
  %82 = bitcast %union.Value* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 8, i32 8, i1 false)
  %83 = load %struct.TValue*, %struct.TValue** %15, align 8
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 8
  %86 = load %struct.TValue*, %struct.TValue** %14, align 8
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %86, i32 0, i32 1
  store i8 %85, i8* %87, align 8
  %88 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %89 = load %struct.Table*, %struct.Table** %13, align 8
  %90 = getelementptr inbounds %struct.Table, %struct.Table* %89, i32 0, i32 3
  store i8 0, i8* %90, align 2
  %91 = load %struct.TValue*, %struct.TValue** %9, align 8
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 8
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 64
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

; <label>:97:                                     ; preds = %74
  %98 = load %struct.Table*, %struct.Table** %13, align 8
  %99 = bitcast %struct.Table* %98 to %union.GCUnion*
  %100 = bitcast %union.GCUnion* %99 to %struct.GCObject*
  %101 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %100, i32 0, i32 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

; <label>:106:                                    ; preds = %97
  %107 = load %struct.TValue*, %struct.TValue** %9, align 8
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %107, i32 0, i32 0
  %109 = bitcast %union.Value* %108 to %struct.GCObject**
  %110 = load %struct.GCObject*, %struct.GCObject** %109, align 8
  %111 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 24
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

; <label>:116:                                    ; preds = %106
  %117 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %118 = load %struct.Table*, %struct.Table** %13, align 8
  %119 = bitcast %struct.Table* %118 to %union.GCUnion*
  %120 = bitcast %union.GCUnion* %119 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %117, %struct.GCObject* %120)
  br label %122

; <label>:121:                                    ; preds = %106, %97, %74
  br label %122

; <label>:122:                                    ; preds = %121, %116
  br label %235

; <label>:123:                                    ; preds = %59
  br label %143

; <label>:124:                                    ; preds = %21
  %125 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %126 = load %struct.TValue*, %struct.TValue** %7, align 8
  %127 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %125, %struct.TValue* %126, i32 1)
  store %struct.TValue* %127, %struct.TValue** %12, align 8
  %128 = load %struct.TValue*, %struct.TValue** %12, align 8
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 1
  %130 = load i8, i8* %129, align 8
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 15
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %124
  %140 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %141 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @luaG_typeerror(%struct.lua_State* %140, %struct.TValue* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

; <label>:142:                                    ; preds = %124
  br label %143

; <label>:143:                                    ; preds = %142, %123
  %144 = load %struct.TValue*, %struct.TValue** %12, align 8
  %145 = getelementptr inbounds %struct.TValue, %struct.TValue* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 15
  %149 = icmp eq i32 %148, 6
  br i1 %149, label %150, label %156

; <label>:150:                                    ; preds = %143
  %151 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %152 = load %struct.TValue*, %struct.TValue** %12, align 8
  %153 = load %struct.TValue*, %struct.TValue** %7, align 8
  %154 = load %struct.TValue*, %struct.TValue** %8, align 8
  %155 = load %struct.TValue*, %struct.TValue** %9, align 8
  call void @luaT_callTM(%struct.lua_State* %151, %struct.TValue* %152, %struct.TValue* %153, %struct.TValue* %154, %struct.TValue* %155)
  br label %235

; <label>:156:                                    ; preds = %143
  %157 = load %struct.TValue*, %struct.TValue** %12, align 8
  store %struct.TValue* %157, %struct.TValue** %7, align 8
  %158 = load %struct.TValue*, %struct.TValue** %7, align 8
  %159 = getelementptr inbounds %struct.TValue, %struct.TValue* %158, i32 0, i32 1
  %160 = load i8, i8* %159, align 8
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 69
  br i1 %162, label %164, label %163

; <label>:163:                                    ; preds = %156
  store %struct.TValue* null, %struct.TValue** %10, align 8
  br i1 false, label %180, label %229

; <label>:164:                                    ; preds = %156
  %165 = load %struct.TValue*, %struct.TValue** %7, align 8
  %166 = getelementptr inbounds %struct.TValue, %struct.TValue* %165, i32 0, i32 0
  %167 = bitcast %union.Value* %166 to %struct.GCObject**
  %168 = load %struct.GCObject*, %struct.GCObject** %167, align 8
  %169 = bitcast %struct.GCObject* %168 to %union.GCUnion*
  %170 = bitcast %union.GCUnion* %169 to %struct.Table*
  %171 = load %struct.TValue*, %struct.TValue** %8, align 8
  %172 = call %struct.TValue* @luaH_get(%struct.Table* %170, %struct.TValue* %171)
  store %struct.TValue* %172, %struct.TValue** %10, align 8
  %173 = load %struct.TValue*, %struct.TValue** %10, align 8
  %174 = getelementptr inbounds %struct.TValue, %struct.TValue* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 8
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 15
  %178 = icmp eq i32 %177, 0
  %179 = xor i1 %178, true
  br i1 %179, label %180, label %229

; <label>:180:                                    ; preds = %164, %163
  %181 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %181, %struct.TValue** %16, align 8
  %182 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %182, %struct.TValue** %17, align 8
  %183 = load %struct.TValue*, %struct.TValue** %16, align 8
  %184 = getelementptr inbounds %struct.TValue, %struct.TValue* %183, i32 0, i32 0
  %185 = load %struct.TValue*, %struct.TValue** %17, align 8
  %186 = getelementptr inbounds %struct.TValue, %struct.TValue* %185, i32 0, i32 0
  %187 = bitcast %union.Value* %184 to i8*
  %188 = bitcast %union.Value* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %187, i8* %188, i64 8, i32 8, i1 false)
  %189 = load %struct.TValue*, %struct.TValue** %17, align 8
  %190 = getelementptr inbounds %struct.TValue, %struct.TValue* %189, i32 0, i32 1
  %191 = load i8, i8* %190, align 8
  %192 = load %struct.TValue*, %struct.TValue** %16, align 8
  %193 = getelementptr inbounds %struct.TValue, %struct.TValue* %192, i32 0, i32 1
  store i8 %191, i8* %193, align 8
  %194 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %195 = load %struct.TValue*, %struct.TValue** %9, align 8
  %196 = getelementptr inbounds %struct.TValue, %struct.TValue* %195, i32 0, i32 1
  %197 = load i8, i8* %196, align 8
  %198 = zext i8 %197 to i32
  %199 = and i32 %198, 64
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %227

; <label>:201:                                    ; preds = %180
  %202 = load %struct.TValue*, %struct.TValue** %7, align 8
  %203 = getelementptr inbounds %struct.TValue, %struct.TValue* %202, i32 0, i32 0
  %204 = bitcast %union.Value* %203 to %struct.GCObject**
  %205 = load %struct.GCObject*, %struct.GCObject** %204, align 8
  %206 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %205, i32 0, i32 2
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 32
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

; <label>:211:                                    ; preds = %201
  %212 = load %struct.TValue*, %struct.TValue** %9, align 8
  %213 = getelementptr inbounds %struct.TValue, %struct.TValue* %212, i32 0, i32 0
  %214 = bitcast %union.Value* %213 to %struct.GCObject**
  %215 = load %struct.GCObject*, %struct.GCObject** %214, align 8
  %216 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %215, i32 0, i32 2
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %218, 24
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

; <label>:221:                                    ; preds = %211
  %222 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %223 = load %struct.TValue*, %struct.TValue** %7, align 8
  %224 = getelementptr inbounds %struct.TValue, %struct.TValue* %223, i32 0, i32 0
  %225 = bitcast %union.Value* %224 to %struct.GCObject**
  %226 = load %struct.GCObject*, %struct.GCObject** %225, align 8
  call void @luaC_barrierback_(%struct.lua_State* %222, %struct.GCObject* %226)
  br label %228

; <label>:227:                                    ; preds = %211, %201, %180
  br label %228

; <label>:228:                                    ; preds = %227, %221
  br label %235

; <label>:229:                                    ; preds = %164, %163
  br label %230

; <label>:230:                                    ; preds = %229
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  br label %18

; <label>:233:                                    ; preds = %18
  %234 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %234, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

; <label>:235:                                    ; preds = %228, %150, %122
  ret void
}

declare hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) #1

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) #1

declare hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TValue*, %struct.TValue** %7, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %14
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = load %struct.TValue*, %struct.TValue** %7, align 8
  %24 = call i32 @LTnum(%struct.TValue* %22, %struct.TValue* %23)
  store i32 %24, i32* %4, align 4
  br label %30

; <label>:25:                                     ; preds = %14, %3
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load %struct.TValue*, %struct.TValue** %6, align 8
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = call i32 @lessthanothers(%struct.lua_State* %26, %struct.TValue* %27, %struct.TValue* %28)
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %25, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LTnum(%struct.TValue*, %struct.TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %8 = load %struct.TValue*, %struct.TValue** %4, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TValue*, %struct.TValue** %4, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TValue*, %struct.TValue** %5, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TValue*, %struct.TValue** %5, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %63

; <label>:31:                                     ; preds = %13
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TValue*, %struct.TValue** %5, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to double*
  %36 = load double, double* %35, align 8
  %37 = call i32 @LTintfloat(i64 %32, double %36)
  store i32 %37, i32* %3, align 4
  br label %63

; <label>:38:                                     ; preds = %2
  %39 = load %struct.TValue*, %struct.TValue** %4, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to double*
  %42 = load double, double* %41, align 8
  store double %42, double* %7, align 8
  %43 = load %struct.TValue*, %struct.TValue** %5, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %38
  %49 = load double, double* %7, align 8
  %50 = load %struct.TValue*, %struct.TValue** %5, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to double*
  %53 = load double, double* %52, align 8
  %54 = fcmp olt double %49, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %63

; <label>:56:                                     ; preds = %38
  %57 = load double, double* %7, align 8
  %58 = load %struct.TValue*, %struct.TValue** %5, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @LTfloatint(double %57, i64 %61)
  store i32 %62, i32* %3, align 4
  br label %63

; <label>:63:                                     ; preds = %56, %48, %31, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lessthanothers(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %37

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TValue*, %struct.TValue** %7, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %14
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.TString*
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.TString*
  %34 = call i32 @l_strcmp(%struct.TString* %27, %struct.TString* %33)
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %42

; <label>:37:                                     ; preds = %14, %3
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = load %struct.TValue*, %struct.TValue** %6, align 8
  %40 = load %struct.TValue*, %struct.TValue** %7, align 8
  %41 = call i32 @luaT_callorderTM(%struct.lua_State* %38, %struct.TValue* %39, %struct.TValue* %40, i32 20)
  store i32 %41, i32* %4, align 4
  br label %42

; <label>:42:                                     ; preds = %37, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TValue*, %struct.TValue** %7, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %14
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = load %struct.TValue*, %struct.TValue** %7, align 8
  %24 = call i32 @LEnum(%struct.TValue* %22, %struct.TValue* %23)
  store i32 %24, i32* %4, align 4
  br label %30

; <label>:25:                                     ; preds = %14, %3
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load %struct.TValue*, %struct.TValue** %6, align 8
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = call i32 @lessequalothers(%struct.lua_State* %26, %struct.TValue* %27, %struct.TValue* %28)
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %25, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEnum(%struct.TValue*, %struct.TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %8 = load %struct.TValue*, %struct.TValue** %4, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TValue*, %struct.TValue** %4, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TValue*, %struct.TValue** %5, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TValue*, %struct.TValue** %5, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %24, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %63

; <label>:31:                                     ; preds = %13
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TValue*, %struct.TValue** %5, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to double*
  %36 = load double, double* %35, align 8
  %37 = call i32 @LEintfloat(i64 %32, double %36)
  store i32 %37, i32* %3, align 4
  br label %63

; <label>:38:                                     ; preds = %2
  %39 = load %struct.TValue*, %struct.TValue** %4, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to double*
  %42 = load double, double* %41, align 8
  store double %42, double* %7, align 8
  %43 = load %struct.TValue*, %struct.TValue** %5, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %38
  %49 = load double, double* %7, align 8
  %50 = load %struct.TValue*, %struct.TValue** %5, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to double*
  %53 = load double, double* %52, align 8
  %54 = fcmp ole double %49, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %63

; <label>:56:                                     ; preds = %38
  %57 = load double, double* %7, align 8
  %58 = load %struct.TValue*, %struct.TValue** %5, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @LEfloatint(double %57, i64 %61)
  store i32 %62, i32* %3, align 4
  br label %63

; <label>:63:                                     ; preds = %56, %48, %31, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lessequalothers(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %8 = load %struct.TValue*, %struct.TValue** %6, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %37

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TValue*, %struct.TValue** %7, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %14
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.TString*
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.TString*
  %34 = call i32 @l_strcmp(%struct.TString* %27, %struct.TString* %33)
  %35 = icmp sle i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %42

; <label>:37:                                     ; preds = %14, %3
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = load %struct.TValue*, %struct.TValue** %6, align 8
  %40 = load %struct.TValue*, %struct.TValue** %7, align 8
  %41 = call i32 @luaT_callorderTM(%struct.lua_State* %38, %struct.TValue* %39, %struct.TValue* %40, i32 21)
  store i32 %41, i32* %4, align 4
  br label %42

; <label>:42:                                     ; preds = %37, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %11 = load %struct.TValue*, %struct.TValue** %6, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 63
  %16 = load %struct.TValue*, %struct.TValue** %7, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 63
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %79

; <label>:22:                                     ; preds = %3
  %23 = load %struct.TValue*, %struct.TValue** %6, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 15
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %41, label %34

; <label>:34:                                     ; preds = %22
  %35 = load %struct.TValue*, %struct.TValue** %6, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %34, %22
  store i32 0, i32* %4, align 4
  br label %456

; <label>:42:                                     ; preds = %34
  %43 = load %struct.TValue*, %struct.TValue** %6, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = load %struct.TValue*, %struct.TValue** %6, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 0
  %51 = bitcast %union.Value* %50 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br i1 true, label %57, label %76

; <label>:53:                                     ; preds = %42
  %54 = load %struct.TValue*, %struct.TValue** %6, align 8
  %55 = call i32 @luaV_tointegerns(%struct.TValue* %54, i64* %9, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

; <label>:57:                                     ; preds = %53, %48
  %58 = load %struct.TValue*, %struct.TValue** %7, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %57
  %64 = load %struct.TValue*, %struct.TValue** %7, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 0
  %66 = bitcast %union.Value* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  br i1 true, label %72, label %76

; <label>:68:                                     ; preds = %57
  %69 = load %struct.TValue*, %struct.TValue** %7, align 8
  %70 = call i32 @luaV_tointegerns(%struct.TValue* %69, i64* %10, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %68, %63
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

; <label>:76:                                     ; preds = %72, %68, %63, %53, %48
  %77 = phi i1 [ false, %68 ], [ false, %63 ], [ false, %53 ], [ false, %48 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %456

; <label>:79:                                     ; preds = %3
  %80 = load %struct.TValue*, %struct.TValue** %6, align 8
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 63
  switch i32 %84, label %400 [
    i32 0, label %85
    i32 35, label %86
    i32 19, label %97
    i32 1, label %108
    i32 2, label %119
    i32 38, label %130
    i32 20, label %141
    i32 36, label %156
    i32 7, label %170
    i32 5, label %285
  ]

; <label>:85:                                     ; preds = %79
  store i32 1, i32* %4, align 4
  br label %456

; <label>:86:                                     ; preds = %79
  %87 = load %struct.TValue*, %struct.TValue** %6, align 8
  %88 = getelementptr inbounds %struct.TValue, %struct.TValue* %87, i32 0, i32 0
  %89 = bitcast %union.Value* %88 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TValue*, %struct.TValue** %7, align 8
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %91, i32 0, i32 0
  %93 = bitcast %union.Value* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %90, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %4, align 4
  br label %456

; <label>:97:                                     ; preds = %79
  %98 = load %struct.TValue*, %struct.TValue** %6, align 8
  %99 = getelementptr inbounds %struct.TValue, %struct.TValue* %98, i32 0, i32 0
  %100 = bitcast %union.Value* %99 to double*
  %101 = load double, double* %100, align 8
  %102 = load %struct.TValue*, %struct.TValue** %7, align 8
  %103 = getelementptr inbounds %struct.TValue, %struct.TValue* %102, i32 0, i32 0
  %104 = bitcast %union.Value* %103 to double*
  %105 = load double, double* %104, align 8
  %106 = fcmp oeq double %101, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %456

; <label>:108:                                    ; preds = %79
  %109 = load %struct.TValue*, %struct.TValue** %6, align 8
  %110 = getelementptr inbounds %struct.TValue, %struct.TValue* %109, i32 0, i32 0
  %111 = bitcast %union.Value* %110 to i32*
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TValue*, %struct.TValue** %7, align 8
  %114 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i32 0, i32 0
  %115 = bitcast %union.Value* %114 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %112, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %456

; <label>:119:                                    ; preds = %79
  %120 = load %struct.TValue*, %struct.TValue** %6, align 8
  %121 = getelementptr inbounds %struct.TValue, %struct.TValue* %120, i32 0, i32 0
  %122 = bitcast %union.Value* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TValue*, %struct.TValue** %7, align 8
  %125 = getelementptr inbounds %struct.TValue, %struct.TValue* %124, i32 0, i32 0
  %126 = bitcast %union.Value* %125 to i8**
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %123, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %456

; <label>:130:                                    ; preds = %79
  %131 = load %struct.TValue*, %struct.TValue** %6, align 8
  %132 = getelementptr inbounds %struct.TValue, %struct.TValue* %131, i32 0, i32 0
  %133 = bitcast %union.Value* %132 to i32 (%struct.lua_State*)**
  %134 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %133, align 8
  %135 = load %struct.TValue*, %struct.TValue** %7, align 8
  %136 = getelementptr inbounds %struct.TValue, %struct.TValue* %135, i32 0, i32 0
  %137 = bitcast %union.Value* %136 to i32 (%struct.lua_State*)**
  %138 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %137, align 8
  %139 = icmp eq i32 (%struct.lua_State*)* %134, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %4, align 4
  br label %456

; <label>:141:                                    ; preds = %79
  %142 = load %struct.TValue*, %struct.TValue** %6, align 8
  %143 = getelementptr inbounds %struct.TValue, %struct.TValue* %142, i32 0, i32 0
  %144 = bitcast %union.Value* %143 to %struct.GCObject**
  %145 = load %struct.GCObject*, %struct.GCObject** %144, align 8
  %146 = bitcast %struct.GCObject* %145 to %union.GCUnion*
  %147 = bitcast %union.GCUnion* %146 to %struct.TString*
  %148 = load %struct.TValue*, %struct.TValue** %7, align 8
  %149 = getelementptr inbounds %struct.TValue, %struct.TValue* %148, i32 0, i32 0
  %150 = bitcast %union.Value* %149 to %struct.GCObject**
  %151 = load %struct.GCObject*, %struct.GCObject** %150, align 8
  %152 = bitcast %struct.GCObject* %151 to %union.GCUnion*
  %153 = bitcast %union.GCUnion* %152 to %struct.TString*
  %154 = icmp eq %struct.TString* %147, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %4, align 4
  br label %456

; <label>:156:                                    ; preds = %79
  %157 = load %struct.TValue*, %struct.TValue** %6, align 8
  %158 = getelementptr inbounds %struct.TValue, %struct.TValue* %157, i32 0, i32 0
  %159 = bitcast %union.Value* %158 to %struct.GCObject**
  %160 = load %struct.GCObject*, %struct.GCObject** %159, align 8
  %161 = bitcast %struct.GCObject* %160 to %union.GCUnion*
  %162 = bitcast %union.GCUnion* %161 to %struct.TString*
  %163 = load %struct.TValue*, %struct.TValue** %7, align 8
  %164 = getelementptr inbounds %struct.TValue, %struct.TValue* %163, i32 0, i32 0
  %165 = bitcast %union.Value* %164 to %struct.GCObject**
  %166 = load %struct.GCObject*, %struct.GCObject** %165, align 8
  %167 = bitcast %struct.GCObject* %166 to %union.GCUnion*
  %168 = bitcast %union.GCUnion* %167 to %struct.TString*
  %169 = call i32 @luaS_eqlngstr(%struct.TString* %162, %struct.TString* %168)
  store i32 %169, i32* %4, align 4
  br label %456

; <label>:170:                                    ; preds = %79
  %171 = load %struct.TValue*, %struct.TValue** %6, align 8
  %172 = getelementptr inbounds %struct.TValue, %struct.TValue* %171, i32 0, i32 0
  %173 = bitcast %union.Value* %172 to %struct.GCObject**
  %174 = load %struct.GCObject*, %struct.GCObject** %173, align 8
  %175 = bitcast %struct.GCObject* %174 to %union.GCUnion*
  %176 = bitcast %union.GCUnion* %175 to %struct.Udata*
  %177 = load %struct.TValue*, %struct.TValue** %7, align 8
  %178 = getelementptr inbounds %struct.TValue, %struct.TValue* %177, i32 0, i32 0
  %179 = bitcast %union.Value* %178 to %struct.GCObject**
  %180 = load %struct.GCObject*, %struct.GCObject** %179, align 8
  %181 = bitcast %struct.GCObject* %180 to %union.GCUnion*
  %182 = bitcast %union.GCUnion* %181 to %struct.Udata*
  %183 = icmp eq %struct.Udata* %176, %182
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %170
  store i32 1, i32* %4, align 4
  br label %456

; <label>:185:                                    ; preds = %170
  %186 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %187 = icmp eq %struct.lua_State* %186, null
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %185
  store i32 0, i32* %4, align 4
  br label %456

; <label>:189:                                    ; preds = %185
  br label %190

; <label>:190:                                    ; preds = %189
  %191 = load %struct.TValue*, %struct.TValue** %6, align 8
  %192 = getelementptr inbounds %struct.TValue, %struct.TValue* %191, i32 0, i32 0
  %193 = bitcast %union.Value* %192 to %struct.GCObject**
  %194 = load %struct.GCObject*, %struct.GCObject** %193, align 8
  %195 = bitcast %struct.GCObject* %194 to %union.GCUnion*
  %196 = bitcast %union.GCUnion* %195 to %struct.Udata*
  %197 = getelementptr inbounds %struct.Udata, %struct.Udata* %196, i32 0, i32 5
  %198 = load %struct.Table*, %struct.Table** %197, align 8
  %199 = icmp eq %struct.Table* %198, null
  br i1 %199, label %200, label %201

; <label>:200:                                    ; preds = %190
  br label %234

; <label>:201:                                    ; preds = %190
  %202 = load %struct.TValue*, %struct.TValue** %6, align 8
  %203 = getelementptr inbounds %struct.TValue, %struct.TValue* %202, i32 0, i32 0
  %204 = bitcast %union.Value* %203 to %struct.GCObject**
  %205 = load %struct.GCObject*, %struct.GCObject** %204, align 8
  %206 = bitcast %struct.GCObject* %205 to %union.GCUnion*
  %207 = bitcast %union.GCUnion* %206 to %struct.Udata*
  %208 = getelementptr inbounds %struct.Udata, %struct.Udata* %207, i32 0, i32 5
  %209 = load %struct.Table*, %struct.Table** %208, align 8
  %210 = getelementptr inbounds %struct.Table, %struct.Table* %209, i32 0, i32 3
  %211 = load i8, i8* %210, align 2
  %212 = zext i8 %211 to i32
  %213 = and i32 %212, 32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

; <label>:215:                                    ; preds = %201
  br label %232

; <label>:216:                                    ; preds = %201
  %217 = load %struct.TValue*, %struct.TValue** %6, align 8
  %218 = getelementptr inbounds %struct.TValue, %struct.TValue* %217, i32 0, i32 0
  %219 = bitcast %union.Value* %218 to %struct.GCObject**
  %220 = load %struct.GCObject*, %struct.GCObject** %219, align 8
  %221 = bitcast %struct.GCObject* %220 to %union.GCUnion*
  %222 = bitcast %union.GCUnion* %221 to %struct.Udata*
  %223 = getelementptr inbounds %struct.Udata, %struct.Udata* %222, i32 0, i32 5
  %224 = load %struct.Table*, %struct.Table** %223, align 8
  %225 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %226 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %225, i32 0, i32 7
  %227 = load %struct.global_State*, %struct.global_State** %226, align 8
  %228 = getelementptr inbounds %struct.global_State, %struct.global_State* %227, i32 0, i32 40
  %229 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %228, i64 0, i64 5
  %230 = load %struct.TString*, %struct.TString** %229, align 8
  %231 = call %struct.TValue* @luaT_gettm(%struct.Table* %224, i32 5, %struct.TString* %230)
  br label %232

; <label>:232:                                    ; preds = %216, %215
  %233 = phi %struct.TValue* [ null, %215 ], [ %231, %216 ]
  br label %234

; <label>:234:                                    ; preds = %232, %200
  %235 = phi %struct.TValue* [ null, %200 ], [ %233, %232 ]
  store %struct.TValue* %235, %struct.TValue** %8, align 8
  %236 = load %struct.TValue*, %struct.TValue** %8, align 8
  %237 = icmp eq %struct.TValue* %236, null
  br i1 %237, label %238, label %284

; <label>:238:                                    ; preds = %234
  %239 = load %struct.TValue*, %struct.TValue** %7, align 8
  %240 = getelementptr inbounds %struct.TValue, %struct.TValue* %239, i32 0, i32 0
  %241 = bitcast %union.Value* %240 to %struct.GCObject**
  %242 = load %struct.GCObject*, %struct.GCObject** %241, align 8
  %243 = bitcast %struct.GCObject* %242 to %union.GCUnion*
  %244 = bitcast %union.GCUnion* %243 to %struct.Udata*
  %245 = getelementptr inbounds %struct.Udata, %struct.Udata* %244, i32 0, i32 5
  %246 = load %struct.Table*, %struct.Table** %245, align 8
  %247 = icmp eq %struct.Table* %246, null
  br i1 %247, label %248, label %249

; <label>:248:                                    ; preds = %238
  br label %282

; <label>:249:                                    ; preds = %238
  %250 = load %struct.TValue*, %struct.TValue** %7, align 8
  %251 = getelementptr inbounds %struct.TValue, %struct.TValue* %250, i32 0, i32 0
  %252 = bitcast %union.Value* %251 to %struct.GCObject**
  %253 = load %struct.GCObject*, %struct.GCObject** %252, align 8
  %254 = bitcast %struct.GCObject* %253 to %union.GCUnion*
  %255 = bitcast %union.GCUnion* %254 to %struct.Udata*
  %256 = getelementptr inbounds %struct.Udata, %struct.Udata* %255, i32 0, i32 5
  %257 = load %struct.Table*, %struct.Table** %256, align 8
  %258 = getelementptr inbounds %struct.Table, %struct.Table* %257, i32 0, i32 3
  %259 = load i8, i8* %258, align 2
  %260 = zext i8 %259 to i32
  %261 = and i32 %260, 32
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %249
  br label %280

; <label>:264:                                    ; preds = %249
  %265 = load %struct.TValue*, %struct.TValue** %7, align 8
  %266 = getelementptr inbounds %struct.TValue, %struct.TValue* %265, i32 0, i32 0
  %267 = bitcast %union.Value* %266 to %struct.GCObject**
  %268 = load %struct.GCObject*, %struct.GCObject** %267, align 8
  %269 = bitcast %struct.GCObject* %268 to %union.GCUnion*
  %270 = bitcast %union.GCUnion* %269 to %struct.Udata*
  %271 = getelementptr inbounds %struct.Udata, %struct.Udata* %270, i32 0, i32 5
  %272 = load %struct.Table*, %struct.Table** %271, align 8
  %273 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %274 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %273, i32 0, i32 7
  %275 = load %struct.global_State*, %struct.global_State** %274, align 8
  %276 = getelementptr inbounds %struct.global_State, %struct.global_State* %275, i32 0, i32 40
  %277 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %276, i64 0, i64 5
  %278 = load %struct.TString*, %struct.TString** %277, align 8
  %279 = call %struct.TValue* @luaT_gettm(%struct.Table* %272, i32 5, %struct.TString* %278)
  br label %280

; <label>:280:                                    ; preds = %264, %263
  %281 = phi %struct.TValue* [ null, %263 ], [ %279, %264 ]
  br label %282

; <label>:282:                                    ; preds = %280, %248
  %283 = phi %struct.TValue* [ null, %248 ], [ %281, %280 ]
  store %struct.TValue* %283, %struct.TValue** %8, align 8
  br label %284

; <label>:284:                                    ; preds = %282, %234
  br label %411

; <label>:285:                                    ; preds = %79
  %286 = load %struct.TValue*, %struct.TValue** %6, align 8
  %287 = getelementptr inbounds %struct.TValue, %struct.TValue* %286, i32 0, i32 0
  %288 = bitcast %union.Value* %287 to %struct.GCObject**
  %289 = load %struct.GCObject*, %struct.GCObject** %288, align 8
  %290 = bitcast %struct.GCObject* %289 to %union.GCUnion*
  %291 = bitcast %union.GCUnion* %290 to %struct.Table*
  %292 = load %struct.TValue*, %struct.TValue** %7, align 8
  %293 = getelementptr inbounds %struct.TValue, %struct.TValue* %292, i32 0, i32 0
  %294 = bitcast %union.Value* %293 to %struct.GCObject**
  %295 = load %struct.GCObject*, %struct.GCObject** %294, align 8
  %296 = bitcast %struct.GCObject* %295 to %union.GCUnion*
  %297 = bitcast %union.GCUnion* %296 to %struct.Table*
  %298 = icmp eq %struct.Table* %291, %297
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %285
  store i32 1, i32* %4, align 4
  br label %456

; <label>:300:                                    ; preds = %285
  %301 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %302 = icmp eq %struct.lua_State* %301, null
  br i1 %302, label %303, label %304

; <label>:303:                                    ; preds = %300
  store i32 0, i32* %4, align 4
  br label %456

; <label>:304:                                    ; preds = %300
  br label %305

; <label>:305:                                    ; preds = %304
  %306 = load %struct.TValue*, %struct.TValue** %6, align 8
  %307 = getelementptr inbounds %struct.TValue, %struct.TValue* %306, i32 0, i32 0
  %308 = bitcast %union.Value* %307 to %struct.GCObject**
  %309 = load %struct.GCObject*, %struct.GCObject** %308, align 8
  %310 = bitcast %struct.GCObject* %309 to %union.GCUnion*
  %311 = bitcast %union.GCUnion* %310 to %struct.Table*
  %312 = getelementptr inbounds %struct.Table, %struct.Table* %311, i32 0, i32 9
  %313 = load %struct.Table*, %struct.Table** %312, align 8
  %314 = icmp eq %struct.Table* %313, null
  br i1 %314, label %315, label %316

; <label>:315:                                    ; preds = %305
  br label %349

; <label>:316:                                    ; preds = %305
  %317 = load %struct.TValue*, %struct.TValue** %6, align 8
  %318 = getelementptr inbounds %struct.TValue, %struct.TValue* %317, i32 0, i32 0
  %319 = bitcast %union.Value* %318 to %struct.GCObject**
  %320 = load %struct.GCObject*, %struct.GCObject** %319, align 8
  %321 = bitcast %struct.GCObject* %320 to %union.GCUnion*
  %322 = bitcast %union.GCUnion* %321 to %struct.Table*
  %323 = getelementptr inbounds %struct.Table, %struct.Table* %322, i32 0, i32 9
  %324 = load %struct.Table*, %struct.Table** %323, align 8
  %325 = getelementptr inbounds %struct.Table, %struct.Table* %324, i32 0, i32 3
  %326 = load i8, i8* %325, align 2
  %327 = zext i8 %326 to i32
  %328 = and i32 %327, 32
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

; <label>:330:                                    ; preds = %316
  br label %347

; <label>:331:                                    ; preds = %316
  %332 = load %struct.TValue*, %struct.TValue** %6, align 8
  %333 = getelementptr inbounds %struct.TValue, %struct.TValue* %332, i32 0, i32 0
  %334 = bitcast %union.Value* %333 to %struct.GCObject**
  %335 = load %struct.GCObject*, %struct.GCObject** %334, align 8
  %336 = bitcast %struct.GCObject* %335 to %union.GCUnion*
  %337 = bitcast %union.GCUnion* %336 to %struct.Table*
  %338 = getelementptr inbounds %struct.Table, %struct.Table* %337, i32 0, i32 9
  %339 = load %struct.Table*, %struct.Table** %338, align 8
  %340 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %341 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %340, i32 0, i32 7
  %342 = load %struct.global_State*, %struct.global_State** %341, align 8
  %343 = getelementptr inbounds %struct.global_State, %struct.global_State* %342, i32 0, i32 40
  %344 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %343, i64 0, i64 5
  %345 = load %struct.TString*, %struct.TString** %344, align 8
  %346 = call %struct.TValue* @luaT_gettm(%struct.Table* %339, i32 5, %struct.TString* %345)
  br label %347

; <label>:347:                                    ; preds = %331, %330
  %348 = phi %struct.TValue* [ null, %330 ], [ %346, %331 ]
  br label %349

; <label>:349:                                    ; preds = %347, %315
  %350 = phi %struct.TValue* [ null, %315 ], [ %348, %347 ]
  store %struct.TValue* %350, %struct.TValue** %8, align 8
  %351 = load %struct.TValue*, %struct.TValue** %8, align 8
  %352 = icmp eq %struct.TValue* %351, null
  br i1 %352, label %353, label %399

; <label>:353:                                    ; preds = %349
  %354 = load %struct.TValue*, %struct.TValue** %7, align 8
  %355 = getelementptr inbounds %struct.TValue, %struct.TValue* %354, i32 0, i32 0
  %356 = bitcast %union.Value* %355 to %struct.GCObject**
  %357 = load %struct.GCObject*, %struct.GCObject** %356, align 8
  %358 = bitcast %struct.GCObject* %357 to %union.GCUnion*
  %359 = bitcast %union.GCUnion* %358 to %struct.Table*
  %360 = getelementptr inbounds %struct.Table, %struct.Table* %359, i32 0, i32 9
  %361 = load %struct.Table*, %struct.Table** %360, align 8
  %362 = icmp eq %struct.Table* %361, null
  br i1 %362, label %363, label %364

; <label>:363:                                    ; preds = %353
  br label %397

; <label>:364:                                    ; preds = %353
  %365 = load %struct.TValue*, %struct.TValue** %7, align 8
  %366 = getelementptr inbounds %struct.TValue, %struct.TValue* %365, i32 0, i32 0
  %367 = bitcast %union.Value* %366 to %struct.GCObject**
  %368 = load %struct.GCObject*, %struct.GCObject** %367, align 8
  %369 = bitcast %struct.GCObject* %368 to %union.GCUnion*
  %370 = bitcast %union.GCUnion* %369 to %struct.Table*
  %371 = getelementptr inbounds %struct.Table, %struct.Table* %370, i32 0, i32 9
  %372 = load %struct.Table*, %struct.Table** %371, align 8
  %373 = getelementptr inbounds %struct.Table, %struct.Table* %372, i32 0, i32 3
  %374 = load i8, i8* %373, align 2
  %375 = zext i8 %374 to i32
  %376 = and i32 %375, 32
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %364
  br label %395

; <label>:379:                                    ; preds = %364
  %380 = load %struct.TValue*, %struct.TValue** %7, align 8
  %381 = getelementptr inbounds %struct.TValue, %struct.TValue* %380, i32 0, i32 0
  %382 = bitcast %union.Value* %381 to %struct.GCObject**
  %383 = load %struct.GCObject*, %struct.GCObject** %382, align 8
  %384 = bitcast %struct.GCObject* %383 to %union.GCUnion*
  %385 = bitcast %union.GCUnion* %384 to %struct.Table*
  %386 = getelementptr inbounds %struct.Table, %struct.Table* %385, i32 0, i32 9
  %387 = load %struct.Table*, %struct.Table** %386, align 8
  %388 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %389 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %388, i32 0, i32 7
  %390 = load %struct.global_State*, %struct.global_State** %389, align 8
  %391 = getelementptr inbounds %struct.global_State, %struct.global_State* %390, i32 0, i32 40
  %392 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %391, i64 0, i64 5
  %393 = load %struct.TString*, %struct.TString** %392, align 8
  %394 = call %struct.TValue* @luaT_gettm(%struct.Table* %387, i32 5, %struct.TString* %393)
  br label %395

; <label>:395:                                    ; preds = %379, %378
  %396 = phi %struct.TValue* [ null, %378 ], [ %394, %379 ]
  br label %397

; <label>:397:                                    ; preds = %395, %363
  %398 = phi %struct.TValue* [ null, %363 ], [ %396, %395 ]
  store %struct.TValue* %398, %struct.TValue** %8, align 8
  br label %399

; <label>:399:                                    ; preds = %397, %349
  br label %411

; <label>:400:                                    ; preds = %79
  %401 = load %struct.TValue*, %struct.TValue** %6, align 8
  %402 = getelementptr inbounds %struct.TValue, %struct.TValue* %401, i32 0, i32 0
  %403 = bitcast %union.Value* %402 to %struct.GCObject**
  %404 = load %struct.GCObject*, %struct.GCObject** %403, align 8
  %405 = load %struct.TValue*, %struct.TValue** %7, align 8
  %406 = getelementptr inbounds %struct.TValue, %struct.TValue* %405, i32 0, i32 0
  %407 = bitcast %union.Value* %406 to %struct.GCObject**
  %408 = load %struct.GCObject*, %struct.GCObject** %407, align 8
  %409 = icmp eq %struct.GCObject* %404, %408
  %410 = zext i1 %409 to i32
  store i32 %410, i32* %4, align 4
  br label %456

; <label>:411:                                    ; preds = %399, %284
  %412 = load %struct.TValue*, %struct.TValue** %8, align 8
  %413 = icmp eq %struct.TValue* %412, null
  br i1 %413, label %414, label %415

; <label>:414:                                    ; preds = %411
  store i32 0, i32* %4, align 4
  br label %456

; <label>:415:                                    ; preds = %411
  %416 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %417 = load %struct.TValue*, %struct.TValue** %8, align 8
  %418 = load %struct.TValue*, %struct.TValue** %6, align 8
  %419 = load %struct.TValue*, %struct.TValue** %7, align 8
  %420 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %421 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %420, i32 0, i32 6
  %422 = load %union.StackValue*, %union.StackValue** %421, align 8
  call void @luaT_callTMres(%struct.lua_State* %416, %struct.TValue* %417, %struct.TValue* %418, %struct.TValue* %419, %union.StackValue* %422)
  %423 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %424 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %423, i32 0, i32 6
  %425 = load %union.StackValue*, %union.StackValue** %424, align 8
  %426 = bitcast %union.StackValue* %425 to %struct.TValue*
  %427 = getelementptr inbounds %struct.TValue, %struct.TValue* %426, i32 0, i32 1
  %428 = load i8, i8* %427, align 8
  %429 = zext i8 %428 to i32
  %430 = and i32 %429, 15
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %452, label %432

; <label>:432:                                    ; preds = %415
  %433 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %434 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %433, i32 0, i32 6
  %435 = load %union.StackValue*, %union.StackValue** %434, align 8
  %436 = bitcast %union.StackValue* %435 to %struct.TValue*
  %437 = getelementptr inbounds %struct.TValue, %struct.TValue* %436, i32 0, i32 1
  %438 = load i8, i8* %437, align 8
  %439 = zext i8 %438 to i32
  %440 = icmp eq i32 %439, 1
  br i1 %440, label %441, label %450

; <label>:441:                                    ; preds = %432
  %442 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %443 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %442, i32 0, i32 6
  %444 = load %union.StackValue*, %union.StackValue** %443, align 8
  %445 = bitcast %union.StackValue* %444 to %struct.TValue*
  %446 = getelementptr inbounds %struct.TValue, %struct.TValue* %445, i32 0, i32 0
  %447 = bitcast %union.Value* %446 to i32*
  %448 = load i32, i32* %447, align 8
  %449 = icmp eq i32 %448, 0
  br label %450

; <label>:450:                                    ; preds = %441, %432
  %451 = phi i1 [ false, %432 ], [ %449, %441 ]
  br label %452

; <label>:452:                                    ; preds = %450, %415
  %453 = phi i1 [ true, %415 ], [ %451, %450 ]
  %454 = xor i1 %453, true
  %455 = zext i1 %454 to i32
  store i32 %455, i32* %4, align 4
  br label %456

; <label>:456:                                    ; preds = %452, %414, %400, %303, %299, %188, %184, %156, %141, %130, %119, %108, %97, %86, %85, %76, %41
  %457 = load i32, i32* %4, align 4
  ret i32 %457
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TString*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [40 x i8], align 16
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %368, %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  store %union.StackValue* %18, %union.StackValue** %5, align 8
  store i32 2, i32* %6, align 4
  %19 = load %union.StackValue*, %union.StackValue** %5, align 8
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -2
  %21 = bitcast %union.StackValue* %20 to %struct.TValue*
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %36, label %27

; <label>:27:                                     ; preds = %15
  %28 = load %union.StackValue*, %union.StackValue** %5, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 -2
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %59

; <label>:36:                                     ; preds = %27, %15
  %37 = load %union.StackValue*, %union.StackValue** %5, align 8
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 -1
  %39 = bitcast %union.StackValue* %38 to %struct.TValue*
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %69, label %45

; <label>:45:                                     ; preds = %36
  %46 = load %union.StackValue*, %union.StackValue** %5, align 8
  %47 = getelementptr inbounds %union.StackValue, %union.StackValue* %46, i64 -1
  %48 = bitcast %union.StackValue* %47 to %struct.TValue*
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 15
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %45
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = load %union.StackValue*, %union.StackValue** %5, align 8
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 -1
  %58 = bitcast %union.StackValue* %57 to %struct.TValue*
  call void @luaO_tostring(%struct.lua_State* %55, %struct.TValue* %58)
  br i1 true, label %69, label %59

; <label>:59:                                     ; preds = %54, %45, %27
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load %union.StackValue*, %union.StackValue** %5, align 8
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %61, i64 -2
  %63 = bitcast %union.StackValue* %62 to %struct.TValue*
  %64 = load %union.StackValue*, %union.StackValue** %5, align 8
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -1
  %66 = bitcast %union.StackValue* %65 to %struct.TValue*
  %67 = load %union.StackValue*, %union.StackValue** %5, align 8
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -2
  call void @luaT_trybinTM(%struct.lua_State* %60, %struct.TValue* %63, %struct.TValue* %66, %union.StackValue* %68, i32 22)
  br label %355

; <label>:69:                                     ; preds = %54, %36
  %70 = load %union.StackValue*, %union.StackValue** %5, align 8
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 -1
  %72 = bitcast %union.StackValue* %71 to %struct.TValue*
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 84
  br i1 %76, label %77, label %118

; <label>:77:                                     ; preds = %69
  %78 = load %union.StackValue*, %union.StackValue** %5, align 8
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 -1
  %80 = bitcast %union.StackValue* %79 to %struct.TValue*
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 0
  %82 = bitcast %union.Value* %81 to %struct.GCObject**
  %83 = load %struct.GCObject*, %struct.GCObject** %82, align 8
  %84 = bitcast %struct.GCObject* %83 to %union.GCUnion*
  %85 = bitcast %union.GCUnion* %84 to %struct.TString*
  %86 = getelementptr inbounds %struct.TString, %struct.TString* %85, i32 0, i32 4
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %118

; <label>:90:                                     ; preds = %77
  %91 = load %union.StackValue*, %union.StackValue** %5, align 8
  %92 = getelementptr inbounds %union.StackValue, %union.StackValue* %91, i64 -2
  %93 = bitcast %union.StackValue* %92 to %struct.TValue*
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 15
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %115, label %99

; <label>:99:                                     ; preds = %90
  %100 = load %union.StackValue*, %union.StackValue** %5, align 8
  %101 = getelementptr inbounds %union.StackValue, %union.StackValue* %100, i64 -2
  %102 = bitcast %union.StackValue* %101 to %struct.TValue*
  %103 = getelementptr inbounds %struct.TValue, %struct.TValue* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 8
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 15
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %113

; <label>:108:                                    ; preds = %99
  %109 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %110 = load %union.StackValue*, %union.StackValue** %5, align 8
  %111 = getelementptr inbounds %union.StackValue, %union.StackValue* %110, i64 -2
  %112 = bitcast %union.StackValue* %111 to %struct.TValue*
  call void @luaO_tostring(%struct.lua_State* %109, %struct.TValue* %112)
  br label %113

; <label>:113:                                    ; preds = %108, %99
  %114 = phi i1 [ false, %99 ], [ true, %108 ]
  br label %115

; <label>:115:                                    ; preds = %113, %90
  %116 = phi i1 [ true, %90 ], [ %114, %113 ]
  %117 = zext i1 %116 to i32
  br label %354

; <label>:118:                                    ; preds = %77, %69
  %119 = load %union.StackValue*, %union.StackValue** %5, align 8
  %120 = getelementptr inbounds %union.StackValue, %union.StackValue* %119, i64 -2
  %121 = bitcast %union.StackValue* %120 to %struct.TValue*
  %122 = getelementptr inbounds %struct.TValue, %struct.TValue* %121, i32 0, i32 1
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 84
  br i1 %125, label %126, label %158

; <label>:126:                                    ; preds = %118
  %127 = load %union.StackValue*, %union.StackValue** %5, align 8
  %128 = getelementptr inbounds %union.StackValue, %union.StackValue* %127, i64 -2
  %129 = bitcast %union.StackValue* %128 to %struct.TValue*
  %130 = getelementptr inbounds %struct.TValue, %struct.TValue* %129, i32 0, i32 0
  %131 = bitcast %union.Value* %130 to %struct.GCObject**
  %132 = load %struct.GCObject*, %struct.GCObject** %131, align 8
  %133 = bitcast %struct.GCObject* %132 to %union.GCUnion*
  %134 = bitcast %union.GCUnion* %133 to %struct.TString*
  %135 = getelementptr inbounds %struct.TString, %struct.TString* %134, i32 0, i32 4
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %158

; <label>:139:                                    ; preds = %126
  %140 = load %union.StackValue*, %union.StackValue** %5, align 8
  %141 = getelementptr inbounds %union.StackValue, %union.StackValue* %140, i64 -2
  %142 = bitcast %union.StackValue* %141 to %struct.TValue*
  store %struct.TValue* %142, %struct.TValue** %7, align 8
  %143 = load %union.StackValue*, %union.StackValue** %5, align 8
  %144 = getelementptr inbounds %union.StackValue, %union.StackValue* %143, i64 -1
  %145 = bitcast %union.StackValue* %144 to %struct.TValue*
  store %struct.TValue* %145, %struct.TValue** %8, align 8
  %146 = load %struct.TValue*, %struct.TValue** %7, align 8
  %147 = getelementptr inbounds %struct.TValue, %struct.TValue* %146, i32 0, i32 0
  %148 = load %struct.TValue*, %struct.TValue** %8, align 8
  %149 = getelementptr inbounds %struct.TValue, %struct.TValue* %148, i32 0, i32 0
  %150 = bitcast %union.Value* %147 to i8*
  %151 = bitcast %union.Value* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %151, i64 8, i32 8, i1 false)
  %152 = load %struct.TValue*, %struct.TValue** %8, align 8
  %153 = getelementptr inbounds %struct.TValue, %struct.TValue* %152, i32 0, i32 1
  %154 = load i8, i8* %153, align 8
  %155 = load %struct.TValue*, %struct.TValue** %7, align 8
  %156 = getelementptr inbounds %struct.TValue, %struct.TValue* %155, i32 0, i32 1
  store i8 %154, i8* %156, align 8
  %157 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %353

; <label>:158:                                    ; preds = %126, %118
  %159 = load %union.StackValue*, %union.StackValue** %5, align 8
  %160 = getelementptr inbounds %union.StackValue, %union.StackValue* %159, i64 -1
  %161 = bitcast %union.StackValue* %160 to %struct.TValue*
  %162 = getelementptr inbounds %struct.TValue, %struct.TValue* %161, i32 0, i32 0
  %163 = bitcast %union.Value* %162 to %struct.GCObject**
  %164 = load %struct.GCObject*, %struct.GCObject** %163, align 8
  %165 = bitcast %struct.GCObject* %164 to %union.GCUnion*
  %166 = bitcast %union.GCUnion* %165 to %struct.TString*
  %167 = getelementptr inbounds %struct.TString, %struct.TString* %166, i32 0, i32 1
  %168 = load i8, i8* %167, align 8
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 20
  br i1 %170, label %171, label %183

; <label>:171:                                    ; preds = %158
  %172 = load %union.StackValue*, %union.StackValue** %5, align 8
  %173 = getelementptr inbounds %union.StackValue, %union.StackValue* %172, i64 -1
  %174 = bitcast %union.StackValue* %173 to %struct.TValue*
  %175 = getelementptr inbounds %struct.TValue, %struct.TValue* %174, i32 0, i32 0
  %176 = bitcast %union.Value* %175 to %struct.GCObject**
  %177 = load %struct.GCObject*, %struct.GCObject** %176, align 8
  %178 = bitcast %struct.GCObject* %177 to %union.GCUnion*
  %179 = bitcast %union.GCUnion* %178 to %struct.TString*
  %180 = getelementptr inbounds %struct.TString, %struct.TString* %179, i32 0, i32 4
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i64
  br label %195

; <label>:183:                                    ; preds = %158
  %184 = load %union.StackValue*, %union.StackValue** %5, align 8
  %185 = getelementptr inbounds %union.StackValue, %union.StackValue* %184, i64 -1
  %186 = bitcast %union.StackValue* %185 to %struct.TValue*
  %187 = getelementptr inbounds %struct.TValue, %struct.TValue* %186, i32 0, i32 0
  %188 = bitcast %union.Value* %187 to %struct.GCObject**
  %189 = load %struct.GCObject*, %struct.GCObject** %188, align 8
  %190 = bitcast %struct.GCObject* %189 to %union.GCUnion*
  %191 = bitcast %union.GCUnion* %190 to %struct.TString*
  %192 = getelementptr inbounds %struct.TString, %struct.TString* %191, i32 0, i32 6
  %193 = bitcast %union.anon.5* %192 to i64*
  %194 = load i64, i64* %193, align 8
  br label %195

; <label>:195:                                    ; preds = %183, %171
  %196 = phi i64 [ %182, %171 ], [ %194, %183 ]
  store i64 %196, i64* %9, align 8
  store i32 1, i32* %6, align 4
  br label %197

; <label>:197:                                    ; preds = %308, %195
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %240

; <label>:201:                                    ; preds = %197
  %202 = load %union.StackValue*, %union.StackValue** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds %union.StackValue, %union.StackValue* %202, i64 %205
  %207 = getelementptr inbounds %union.StackValue, %union.StackValue* %206, i64 -1
  %208 = bitcast %union.StackValue* %207 to %struct.TValue*
  %209 = getelementptr inbounds %struct.TValue, %struct.TValue* %208, i32 0, i32 1
  %210 = load i8, i8* %209, align 8
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 15
  %213 = icmp eq i32 %212, 4
  br i1 %213, label %238, label %214

; <label>:214:                                    ; preds = %201
  %215 = load %union.StackValue*, %union.StackValue** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = sub i64 0, %217
  %219 = getelementptr inbounds %union.StackValue, %union.StackValue* %215, i64 %218
  %220 = getelementptr inbounds %union.StackValue, %union.StackValue* %219, i64 -1
  %221 = bitcast %union.StackValue* %220 to %struct.TValue*
  %222 = getelementptr inbounds %struct.TValue, %struct.TValue* %221, i32 0, i32 1
  %223 = load i8, i8* %222, align 8
  %224 = zext i8 %223 to i32
  %225 = and i32 %224, 15
  %226 = icmp eq i32 %225, 3
  br i1 %226, label %227, label %236

; <label>:227:                                    ; preds = %214
  %228 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %229 = load %union.StackValue*, %union.StackValue** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = sub i64 0, %231
  %233 = getelementptr inbounds %union.StackValue, %union.StackValue* %229, i64 %232
  %234 = getelementptr inbounds %union.StackValue, %union.StackValue* %233, i64 -1
  %235 = bitcast %union.StackValue* %234 to %struct.TValue*
  call void @luaO_tostring(%struct.lua_State* %228, %struct.TValue* %235)
  br label %236

; <label>:236:                                    ; preds = %227, %214
  %237 = phi i1 [ false, %214 ], [ true, %227 ]
  br label %238

; <label>:238:                                    ; preds = %236, %201
  %239 = phi i1 [ true, %201 ], [ %237, %236 ]
  br label %240

; <label>:240:                                    ; preds = %238, %197
  %241 = phi i1 [ false, %197 ], [ %239, %238 ]
  br i1 %241, label %242, label %311

; <label>:242:                                    ; preds = %240
  %243 = load %union.StackValue*, %union.StackValue** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds %union.StackValue, %union.StackValue* %243, i64 %246
  %248 = getelementptr inbounds %union.StackValue, %union.StackValue* %247, i64 -1
  %249 = bitcast %union.StackValue* %248 to %struct.TValue*
  %250 = getelementptr inbounds %struct.TValue, %struct.TValue* %249, i32 0, i32 0
  %251 = bitcast %union.Value* %250 to %struct.GCObject**
  %252 = load %struct.GCObject*, %struct.GCObject** %251, align 8
  %253 = bitcast %struct.GCObject* %252 to %union.GCUnion*
  %254 = bitcast %union.GCUnion* %253 to %struct.TString*
  %255 = getelementptr inbounds %struct.TString, %struct.TString* %254, i32 0, i32 1
  %256 = load i8, i8* %255, align 8
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %257, 20
  br i1 %258, label %259, label %275

; <label>:259:                                    ; preds = %242
  %260 = load %union.StackValue*, %union.StackValue** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = sub i64 0, %262
  %264 = getelementptr inbounds %union.StackValue, %union.StackValue* %260, i64 %263
  %265 = getelementptr inbounds %union.StackValue, %union.StackValue* %264, i64 -1
  %266 = bitcast %union.StackValue* %265 to %struct.TValue*
  %267 = getelementptr inbounds %struct.TValue, %struct.TValue* %266, i32 0, i32 0
  %268 = bitcast %union.Value* %267 to %struct.GCObject**
  %269 = load %struct.GCObject*, %struct.GCObject** %268, align 8
  %270 = bitcast %struct.GCObject* %269 to %union.GCUnion*
  %271 = bitcast %union.GCUnion* %270 to %struct.TString*
  %272 = getelementptr inbounds %struct.TString, %struct.TString* %271, i32 0, i32 4
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i64
  br label %291

; <label>:275:                                    ; preds = %242
  %276 = load %union.StackValue*, %union.StackValue** %5, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = sub i64 0, %278
  %280 = getelementptr inbounds %union.StackValue, %union.StackValue* %276, i64 %279
  %281 = getelementptr inbounds %union.StackValue, %union.StackValue* %280, i64 -1
  %282 = bitcast %union.StackValue* %281 to %struct.TValue*
  %283 = getelementptr inbounds %struct.TValue, %struct.TValue* %282, i32 0, i32 0
  %284 = bitcast %union.Value* %283 to %struct.GCObject**
  %285 = load %struct.GCObject*, %struct.GCObject** %284, align 8
  %286 = bitcast %struct.GCObject* %285 to %union.GCUnion*
  %287 = bitcast %union.GCUnion* %286 to %struct.TString*
  %288 = getelementptr inbounds %struct.TString, %struct.TString* %287, i32 0, i32 6
  %289 = bitcast %union.anon.5* %288 to i64*
  %290 = load i64, i64* %289, align 8
  br label %291

; <label>:291:                                    ; preds = %275, %259
  %292 = phi i64 [ %274, %259 ], [ %290, %275 ]
  store i64 %292, i64* %11, align 8
  %293 = load i64, i64* %11, align 8
  %294 = load i64, i64* %9, align 8
  %295 = sub i64 9223372036854775807, %294
  %296 = icmp uge i64 %293, %295
  %297 = zext i1 %296 to i32
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

; <label>:302:                                    ; preds = %291
  %303 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #7
  unreachable

; <label>:304:                                    ; preds = %291
  %305 = load i64, i64* %11, align 8
  %306 = load i64, i64* %9, align 8
  %307 = add i64 %306, %305
  store i64 %307, i64* %9, align 8
  br label %308

; <label>:308:                                    ; preds = %304
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %197

; <label>:311:                                    ; preds = %240
  %312 = load i64, i64* %9, align 8
  %313 = icmp ule i64 %312, 40
  br i1 %313, label %314, label %322

; <label>:314:                                    ; preds = %311
  %315 = load %union.StackValue*, %union.StackValue** %5, align 8
  %316 = load i32, i32* %6, align 4
  %317 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0
  call void @copy2buff(%union.StackValue* %315, i32 %316, i8* %317)
  %318 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %319 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i32 0, i32 0
  %320 = load i64, i64* %9, align 8
  %321 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %318, i8* %319, i64 %320)
  store %struct.TString* %321, %struct.TString** %10, align 8
  br label %331

; <label>:322:                                    ; preds = %311
  %323 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %324 = load i64, i64* %9, align 8
  %325 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %323, i64 %324)
  store %struct.TString* %325, %struct.TString** %10, align 8
  %326 = load %union.StackValue*, %union.StackValue** %5, align 8
  %327 = load i32, i32* %6, align 4
  %328 = load %struct.TString*, %struct.TString** %10, align 8
  %329 = bitcast %struct.TString* %328 to i8*
  %330 = getelementptr inbounds i8, i8* %329, i64 24
  call void @copy2buff(%union.StackValue* %326, i32 %327, i8* %330)
  br label %331

; <label>:331:                                    ; preds = %322, %314
  %332 = load %union.StackValue*, %union.StackValue** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = sub i64 0, %334
  %336 = getelementptr inbounds %union.StackValue, %union.StackValue* %332, i64 %335
  %337 = bitcast %union.StackValue* %336 to %struct.TValue*
  store %struct.TValue* %337, %struct.TValue** %13, align 8
  %338 = load %struct.TString*, %struct.TString** %10, align 8
  store %struct.TString* %338, %struct.TString** %14, align 8
  %339 = load %struct.TString*, %struct.TString** %14, align 8
  %340 = bitcast %struct.TString* %339 to %union.GCUnion*
  %341 = bitcast %union.GCUnion* %340 to %struct.GCObject*
  %342 = load %struct.TValue*, %struct.TValue** %13, align 8
  %343 = getelementptr inbounds %struct.TValue, %struct.TValue* %342, i32 0, i32 0
  %344 = bitcast %union.Value* %343 to %struct.GCObject**
  store %struct.GCObject* %341, %struct.GCObject** %344, align 8
  %345 = load %struct.TString*, %struct.TString** %14, align 8
  %346 = getelementptr inbounds %struct.TString, %struct.TString* %345, i32 0, i32 1
  %347 = load i8, i8* %346, align 8
  %348 = zext i8 %347 to i32
  %349 = or i32 %348, 64
  %350 = trunc i32 %349 to i8
  %351 = load %struct.TValue*, %struct.TValue** %13, align 8
  %352 = getelementptr inbounds %struct.TValue, %struct.TValue* %351, i32 0, i32 1
  store i8 %350, i8* %352, align 8
  br label %353

; <label>:353:                                    ; preds = %331, %139
  br label %354

; <label>:354:                                    ; preds = %353, %115
  br label %355

; <label>:355:                                    ; preds = %354, %59
  %356 = load i32, i32* %6, align 4
  %357 = sub nsw i32 %356, 1
  %358 = load i32, i32* %4, align 4
  %359 = sub nsw i32 %358, %357
  store i32 %359, i32* %4, align 4
  %360 = load i32, i32* %6, align 4
  %361 = sub nsw i32 %360, 1
  %362 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %363 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %362, i32 0, i32 6
  %364 = load %union.StackValue*, %union.StackValue** %363, align 8
  %365 = sext i32 %361 to i64
  %366 = sub i64 0, %365
  %367 = getelementptr inbounds %union.StackValue, %union.StackValue* %364, i64 %366
  store %union.StackValue* %367, %union.StackValue** %363, align 8
  br label %368

; <label>:368:                                    ; preds = %355
  %369 = load i32, i32* %4, align 4
  %370 = icmp sgt i32 %369, 1
  br i1 %370, label %15, label %371

; <label>:371:                                    ; preds = %368
  ret void
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) #1

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy2buff(%union.StackValue*, i32, i8*) #0 {
  %4 = alloca %union.StackValue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %union.StackValue* %0, %union.StackValue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

; <label>:9:                                      ; preds = %78, %3
  %10 = load %union.StackValue*, %union.StackValue** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %13
  %15 = bitcast %union.StackValue* %14 to %struct.TValue*
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.TString*
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 20
  br i1 %24, label %25, label %40

; <label>:25:                                     ; preds = %9
  %26 = load %union.StackValue*, %union.StackValue** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %29
  %31 = bitcast %union.StackValue* %30 to %struct.TValue*
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to %struct.GCObject**
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8
  %35 = bitcast %struct.GCObject* %34 to %union.GCUnion*
  %36 = bitcast %union.GCUnion* %35 to %struct.TString*
  %37 = getelementptr inbounds %struct.TString, %struct.TString* %36, i32 0, i32 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  br label %55

; <label>:40:                                     ; preds = %9
  %41 = load %union.StackValue*, %union.StackValue** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 %44
  %46 = bitcast %union.StackValue* %45 to %struct.TValue*
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8
  %50 = bitcast %struct.GCObject* %49 to %union.GCUnion*
  %51 = bitcast %union.GCUnion* %50 to %struct.TString*
  %52 = getelementptr inbounds %struct.TString, %struct.TString* %51, i32 0, i32 6
  %53 = bitcast %union.anon.5* %52 to i64*
  %54 = load i64, i64* %53, align 8
  br label %55

; <label>:55:                                     ; preds = %40, %25
  %56 = phi i64 [ %39, %25 ], [ %54, %40 ]
  store i64 %56, i64* %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load %union.StackValue*, %union.StackValue** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %60, i64 %63
  %65 = bitcast %union.StackValue* %64 to %struct.TValue*
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 0
  %67 = bitcast %union.Value* %66 to %struct.GCObject**
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*
  %70 = bitcast %union.GCUnion* %69 to %struct.TString*
  %71 = bitcast %struct.TString* %70 to i8*
  %72 = getelementptr inbounds i8, i8* %71, i64 24
  %73 = load i64, i64* %8, align 8
  %74 = mul i64 %73, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %72, i64 %74, i32 1, i1 false)
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %78

; <label>:78:                                     ; preds = %55
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %9, label %82

; <label>:82:                                     ; preds = %78
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_objlen(%struct.lua_State*, %union.StackValue*, %struct.TValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.Table*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store %struct.TValue* %2, %struct.TValue** %6, align 8
  %12 = load %struct.TValue*, %struct.TValue** %6, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 63
  switch i32 %16, label %101 [
    i32 5, label %17
    i32 20, label %67
    i32 36, label %84
  ]

; <label>:17:                                     ; preds = %3
  %18 = load %struct.TValue*, %struct.TValue** %6, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to %struct.GCObject**
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.Table*
  store %struct.Table* %23, %struct.Table** %8, align 8
  %24 = load %struct.Table*, %struct.Table** %8, align 8
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 9
  %26 = load %struct.Table*, %struct.Table** %25, align 8
  %27 = icmp eq %struct.Table* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %17
  br label %52

; <label>:29:                                     ; preds = %17
  %30 = load %struct.Table*, %struct.Table** %8, align 8
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 9
  %32 = load %struct.Table*, %struct.Table** %31, align 8
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 2
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %29
  br label %50

; <label>:39:                                     ; preds = %29
  %40 = load %struct.Table*, %struct.Table** %8, align 8
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %40, i32 0, i32 9
  %42 = load %struct.Table*, %struct.Table** %41, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 40
  %47 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %46, i64 0, i64 4
  %48 = load %struct.TString*, %struct.TString** %47, align 8
  %49 = call %struct.TValue* @luaT_gettm(%struct.Table* %42, i32 4, %struct.TString* %48)
  br label %50

; <label>:50:                                     ; preds = %39, %38
  %51 = phi %struct.TValue* [ null, %38 ], [ %49, %39 ]
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi %struct.TValue* [ null, %28 ], [ %51, %50 ]
  store %struct.TValue* %53, %struct.TValue** %7, align 8
  %54 = load %struct.TValue*, %struct.TValue** %7, align 8
  %55 = icmp ne %struct.TValue* %54, null
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %52
  br label %120

; <label>:57:                                     ; preds = %52
  %58 = load %union.StackValue*, %union.StackValue** %5, align 8
  %59 = bitcast %union.StackValue* %58 to %struct.TValue*
  store %struct.TValue* %59, %struct.TValue** %9, align 8
  %60 = load %struct.Table*, %struct.Table** %8, align 8
  %61 = call i64 @luaH_getn(%struct.Table* %60)
  %62 = load %struct.TValue*, %struct.TValue** %9, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 0
  %64 = bitcast %union.Value* %63 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load %struct.TValue*, %struct.TValue** %9, align 8
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 1
  store i8 35, i8* %66, align 8
  br label %126

; <label>:67:                                     ; preds = %3
  %68 = load %union.StackValue*, %union.StackValue** %5, align 8
  %69 = bitcast %union.StackValue* %68 to %struct.TValue*
  store %struct.TValue* %69, %struct.TValue** %10, align 8
  %70 = load %struct.TValue*, %struct.TValue** %6, align 8
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i32 0, i32 0
  %72 = bitcast %union.Value* %71 to %struct.GCObject**
  %73 = load %struct.GCObject*, %struct.GCObject** %72, align 8
  %74 = bitcast %struct.GCObject* %73 to %union.GCUnion*
  %75 = bitcast %union.GCUnion* %74 to %struct.TString*
  %76 = getelementptr inbounds %struct.TString, %struct.TString* %75, i32 0, i32 4
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = load %struct.TValue*, %struct.TValue** %10, align 8
  %80 = getelementptr inbounds %struct.TValue, %struct.TValue* %79, i32 0, i32 0
  %81 = bitcast %union.Value* %80 to i64*
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TValue*, %struct.TValue** %10, align 8
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i32 0, i32 1
  store i8 35, i8* %83, align 8
  br label %126

; <label>:84:                                     ; preds = %3
  %85 = load %union.StackValue*, %union.StackValue** %5, align 8
  %86 = bitcast %union.StackValue* %85 to %struct.TValue*
  store %struct.TValue* %86, %struct.TValue** %11, align 8
  %87 = load %struct.TValue*, %struct.TValue** %6, align 8
  %88 = getelementptr inbounds %struct.TValue, %struct.TValue* %87, i32 0, i32 0
  %89 = bitcast %union.Value* %88 to %struct.GCObject**
  %90 = load %struct.GCObject*, %struct.GCObject** %89, align 8
  %91 = bitcast %struct.GCObject* %90 to %union.GCUnion*
  %92 = bitcast %union.GCUnion* %91 to %struct.TString*
  %93 = getelementptr inbounds %struct.TString, %struct.TString* %92, i32 0, i32 6
  %94 = bitcast %union.anon.5* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TValue*, %struct.TValue** %11, align 8
  %97 = getelementptr inbounds %struct.TValue, %struct.TValue* %96, i32 0, i32 0
  %98 = bitcast %union.Value* %97 to i64*
  store i64 %95, i64* %98, align 8
  %99 = load %struct.TValue*, %struct.TValue** %11, align 8
  %100 = getelementptr inbounds %struct.TValue, %struct.TValue* %99, i32 0, i32 1
  store i8 35, i8* %100, align 8
  br label %126

; <label>:101:                                    ; preds = %3
  %102 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %103 = load %struct.TValue*, %struct.TValue** %6, align 8
  %104 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %102, %struct.TValue* %103, i32 4)
  store %struct.TValue* %104, %struct.TValue** %7, align 8
  %105 = load %struct.TValue*, %struct.TValue** %7, align 8
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 15
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %101
  %117 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %118 = load %struct.TValue*, %struct.TValue** %6, align 8
  call void @luaG_typeerror(%struct.lua_State* %117, %struct.TValue* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

; <label>:119:                                    ; preds = %101
  br label %120

; <label>:120:                                    ; preds = %119, %56
  %121 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %122 = load %struct.TValue*, %struct.TValue** %7, align 8
  %123 = load %struct.TValue*, %struct.TValue** %6, align 8
  %124 = load %struct.TValue*, %struct.TValue** %6, align 8
  %125 = load %union.StackValue*, %union.StackValue** %5, align 8
  call void @luaT_callTMres(%struct.lua_State* %121, %struct.TValue* %122, %struct.TValue* %123, %struct.TValue* %124, %union.StackValue* %125)
  br label %126

; <label>:126:                                    ; preds = %120, %84, %67, %57
  ret void
}

declare hidden i64 @luaH_getn(%struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %9, 1
  %11 = icmp ule i64 %10, 1
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #7
  unreachable

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %43

; <label>:25:                                     ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sdiv i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = xor i64 %29, %30
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = srem i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %41

; <label>:41:                                     ; preds = %38, %33, %25
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %43

; <label>:43:                                     ; preds = %41, %22
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %9, 1
  %11 = icmp ule i64 %10, 1
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #7
  unreachable

; <label>:22:                                     ; preds = %17
  store i64 0, i64* %4, align 8
  br label %40

; <label>:23:                                     ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = srem i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = xor i64 %30, %31
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

; <label>:38:                                     ; preds = %34, %29, %23
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %40

; <label>:40:                                     ; preds = %38, %22
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden double @luaV_modf(%struct.lua_State*, double, double) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = call double @fmod(double %9, double %10) #8
  store double %11, double* %7, align 8
  %12 = load double, double* %7, align 8
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %3
  %15 = load double, double* %6, align 8
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %23, label %27

; <label>:17:                                     ; preds = %3
  %18 = load double, double* %7, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %6, align 8
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20, %14
  %24 = load double, double* %6, align 8
  %25 = load double, double* %7, align 8
  %26 = fadd double %25, %24
  store double %26, double* %7, align 8
  br label %27

; <label>:27:                                     ; preds = %23, %20, %17, %14
  %28 = load double, double* %7, align 8
  ret double %28
}

; Function Attrs: nounwind
declare double @fmod(double, double) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_shiftl(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp sle i64 %9, -64
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  store i64 0, i64* %3, align 8
  br label %25

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 0, %14
  %16 = lshr i64 %13, %15
  store i64 %16, i64* %3, align 8
  br label %25

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp sge i64 %18, 64
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i64 0, i64* %3, align 8
  br label %25

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %3, align 8
  br label %25

; <label>:25:                                     ; preds = %21, %20, %12, %11
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishOp(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %union.StackValue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8
  store %struct.CallInfo* %17, %struct.CallInfo** %3, align 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 0
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 1
  store %union.StackValue* %21, %union.StackValue** %4, align 8
  %22 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 4
  %24 = bitcast %union.anon* %23 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 127
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %158 [
    i32 19, label %33
    i32 20, label %33
    i32 21, label %33
    i32 24, label %33
    i32 25, label %33
    i32 22, label %33
    i32 23, label %33
    i32 38, label %33
    i32 39, label %33
    i32 40, label %33
    i32 43, label %33
    i32 44, label %33
    i32 33, label %33
    i32 34, label %33
    i32 35, label %33
    i32 45, label %33
    i32 46, label %33
    i32 47, label %33
    i32 36, label %33
    i32 48, label %33
    i32 49, label %33
    i32 41, label %33
    i32 42, label %33
    i32 50, label %33
    i32 51, label %33
    i32 53, label %33
    i32 9, label %33
    i32 10, label %33
    i32 11, label %33
    i32 12, label %33
    i32 18, label %33
    i32 59, label %58
    i32 60, label %58
    i32 63, label %58
    i32 64, label %58
    i32 65, label %58
    i32 66, label %58
    i32 58, label %58
    i32 54, label %112
  ]

; <label>:33:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %34 = load %union.StackValue*, %union.StackValue** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = lshr i32 %35, 7
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %34, i64 %38
  %40 = bitcast %union.StackValue* %39 to %struct.TValue*
  store %struct.TValue* %40, %struct.TValue** %7, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 6
  %43 = load %union.StackValue*, %union.StackValue** %42, align 8
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %43, i32 -1
  store %union.StackValue* %44, %union.StackValue** %42, align 8
  %45 = bitcast %union.StackValue* %44 to %struct.TValue*
  store %struct.TValue* %45, %struct.TValue** %8, align 8
  %46 = load %struct.TValue*, %struct.TValue** %7, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = load %struct.TValue*, %struct.TValue** %8, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %47 to i8*
  %51 = bitcast %union.Value* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %52 = load %struct.TValue*, %struct.TValue** %8, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 8
  %55 = load %struct.TValue*, %struct.TValue** %7, align 8
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %159

; <label>:58:                                     ; preds = %1, %1, %1, %1, %1, %1, %1
  %59 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 6
  %61 = load %union.StackValue*, %union.StackValue** %60, align 8
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %61, i64 -1
  %63 = bitcast %union.StackValue* %62 to %struct.TValue*
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 8
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %91, label %69

; <label>:69:                                     ; preds = %58
  %70 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 6
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8
  %73 = getelementptr inbounds %union.StackValue, %union.StackValue* %72, i64 -1
  %74 = bitcast %union.StackValue* %73 to %struct.TValue*
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 8
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %89

; <label>:79:                                     ; preds = %69
  %80 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i64 -1
  %84 = bitcast %union.StackValue* %83 to %struct.TValue*
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br label %89

; <label>:89:                                     ; preds = %79, %69
  %90 = phi i1 [ false, %69 ], [ %88, %79 ]
  br label %91

; <label>:91:                                     ; preds = %89, %58
  %92 = phi i1 [ true, %58 ], [ %90, %89 ]
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i32 0, i32 6
  %97 = load %union.StackValue*, %union.StackValue** %96, align 8
  %98 = getelementptr inbounds %union.StackValue, %union.StackValue* %97, i32 -1
  store %union.StackValue* %98, %union.StackValue** %96, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = lshr i32 %100, 15
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %111

; <label>:104:                                    ; preds = %91
  %105 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %106 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %105, i32 0, i32 4
  %107 = bitcast %union.anon* %106 to %struct.anon*
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %108, align 8
  br label %111

; <label>:111:                                    ; preds = %104, %91
  br label %159

; <label>:112:                                    ; preds = %1
  %113 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %113, i32 0, i32 6
  %115 = load %union.StackValue*, %union.StackValue** %114, align 8
  %116 = getelementptr inbounds %union.StackValue, %union.StackValue* %115, i64 -1
  store %union.StackValue* %116, %union.StackValue** %10, align 8
  %117 = load i32, i32* %5, align 4
  %118 = lshr i32 %117, 7
  %119 = and i32 %118, 255
  store i32 %119, i32* %11, align 4
  %120 = load %union.StackValue*, %union.StackValue** %10, align 8
  %121 = getelementptr inbounds %union.StackValue, %union.StackValue* %120, i64 -1
  %122 = load %union.StackValue*, %union.StackValue** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %union.StackValue, %union.StackValue* %122, i64 %124
  %126 = ptrtoint %union.StackValue* %121 to i64
  %127 = ptrtoint %union.StackValue* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 16
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load %union.StackValue*, %union.StackValue** %10, align 8
  %132 = getelementptr inbounds %union.StackValue, %union.StackValue* %131, i64 -2
  %133 = bitcast %union.StackValue* %132 to %struct.TValue*
  store %struct.TValue* %133, %struct.TValue** %13, align 8
  %134 = load %union.StackValue*, %union.StackValue** %10, align 8
  %135 = bitcast %union.StackValue* %134 to %struct.TValue*
  store %struct.TValue* %135, %struct.TValue** %14, align 8
  %136 = load %struct.TValue*, %struct.TValue** %13, align 8
  %137 = getelementptr inbounds %struct.TValue, %struct.TValue* %136, i32 0, i32 0
  %138 = load %struct.TValue*, %struct.TValue** %14, align 8
  %139 = getelementptr inbounds %struct.TValue, %struct.TValue* %138, i32 0, i32 0
  %140 = bitcast %union.Value* %137 to i8*
  %141 = bitcast %union.Value* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 8, i32 8, i1 false)
  %142 = load %struct.TValue*, %struct.TValue** %14, align 8
  %143 = getelementptr inbounds %struct.TValue, %struct.TValue* %142, i32 0, i32 1
  %144 = load i8, i8* %143, align 8
  %145 = load %struct.TValue*, %struct.TValue** %13, align 8
  %146 = getelementptr inbounds %struct.TValue, %struct.TValue* %145, i32 0, i32 1
  store i8 %144, i8* %146, align 8
  %147 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %148 = load i32, i32* %12, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %157

; <label>:150:                                    ; preds = %112
  %151 = load %union.StackValue*, %union.StackValue** %10, align 8
  %152 = getelementptr inbounds %union.StackValue, %union.StackValue* %151, i64 -1
  %153 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %154 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %153, i32 0, i32 6
  store %union.StackValue* %152, %union.StackValue** %154, align 8
  %155 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %156 = load i32, i32* %12, align 4
  call void @luaV_concat(%struct.lua_State* %155, i32 %156)
  br label %157

; <label>:157:                                    ; preds = %150, %112
  br label %159

; <label>:158:                                    ; preds = %1
  br label %159

; <label>:159:                                    ; preds = %158, %157, %111, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  %5 = alloca %struct.LClosure*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.StackValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TValue*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TValue*, align 8
  %21 = alloca %struct.TValue*, align 8
  %22 = alloca %struct.TValue*, align 8
  %23 = alloca %struct.TValue*, align 8
  %24 = alloca %struct.TValue*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TValue*, align 8
  %28 = alloca %struct.TValue*, align 8
  %29 = alloca %struct.UpVal*, align 8
  %30 = alloca %struct.TValue*, align 8
  %31 = alloca %struct.TValue*, align 8
  %32 = alloca %struct.TValue*, align 8
  %33 = alloca %struct.TValue*, align 8
  %34 = alloca %struct.TValue*, align 8
  %35 = alloca %struct.TString*, align 8
  %36 = alloca %struct.TValue*, align 8
  %37 = alloca %struct.TValue*, align 8
  %38 = alloca %struct.TValue*, align 8
  %39 = alloca %struct.TValue*, align 8
  %40 = alloca %struct.TValue*, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.TValue*, align 8
  %43 = alloca %struct.TValue*, align 8
  %44 = alloca %struct.TValue*, align 8
  %45 = alloca %struct.TValue*, align 8
  %46 = alloca i32, align 4
  %47 = alloca %struct.TValue*, align 8
  %48 = alloca %struct.TValue*, align 8
  %49 = alloca %struct.TValue, align 8
  %50 = alloca %struct.TValue*, align 8
  %51 = alloca %struct.TValue*, align 8
  %52 = alloca %struct.TValue*, align 8
  %53 = alloca %struct.TValue*, align 8
  %54 = alloca %struct.TString*, align 8
  %55 = alloca %struct.TValue*, align 8
  %56 = alloca %struct.TValue*, align 8
  %57 = alloca %struct.TValue*, align 8
  %58 = alloca %struct.TValue*, align 8
  %59 = alloca %struct.TValue*, align 8
  %60 = alloca %struct.TValue*, align 8
  %61 = alloca %struct.TString*, align 8
  %62 = alloca %struct.TValue*, align 8
  %63 = alloca %struct.TValue*, align 8
  %64 = alloca %struct.TValue*, align 8
  %65 = alloca %struct.TValue*, align 8
  %66 = alloca %struct.TValue*, align 8
  %67 = alloca i64, align 8
  %68 = alloca %struct.TValue*, align 8
  %69 = alloca %struct.TValue*, align 8
  %70 = alloca %struct.TValue*, align 8
  %71 = alloca i32, align 4
  %72 = alloca %struct.TValue*, align 8
  %73 = alloca %struct.TValue*, align 8
  %74 = alloca %struct.TValue*, align 8
  %75 = alloca %struct.TValue, align 8
  %76 = alloca %struct.TValue*, align 8
  %77 = alloca %struct.TValue*, align 8
  %78 = alloca %struct.TValue*, align 8
  %79 = alloca %struct.TValue*, align 8
  %80 = alloca %struct.TString*, align 8
  %81 = alloca %struct.TValue*, align 8
  %82 = alloca %struct.TValue*, align 8
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca %struct.Table*, align 8
  %86 = alloca %struct.TValue*, align 8
  %87 = alloca %struct.Table*, align 8
  %88 = alloca %struct.TValue*, align 8
  %89 = alloca %struct.TValue*, align 8
  %90 = alloca %struct.TValue*, align 8
  %91 = alloca %struct.TString*, align 8
  %92 = alloca %struct.TValue*, align 8
  %93 = alloca %struct.TValue*, align 8
  %94 = alloca %struct.TValue*, align 8
  %95 = alloca %struct.TValue*, align 8
  %96 = alloca %struct.TValue*, align 8
  %97 = alloca i32, align 4
  %98 = alloca %struct.TValue*, align 8
  %99 = alloca double, align 8
  %100 = alloca %struct.TValue*, align 8
  %101 = alloca %struct.TValue*, align 8
  %102 = alloca i32, align 4
  %103 = alloca %struct.TValue*, align 8
  %104 = alloca double, align 8
  %105 = alloca %struct.TValue*, align 8
  %106 = alloca %struct.TValue*, align 8
  %107 = alloca i32, align 4
  %108 = alloca %struct.TValue*, align 8
  %109 = alloca double, align 8
  %110 = alloca %struct.TValue*, align 8
  %111 = alloca %struct.TValue*, align 8
  %112 = alloca i32, align 4
  %113 = alloca %struct.TValue*, align 8
  %114 = alloca double, align 8
  %115 = alloca %struct.TValue*, align 8
  %116 = alloca %struct.TValue*, align 8
  %117 = alloca i32, align 4
  %118 = alloca double, align 8
  %119 = alloca %struct.TValue*, align 8
  %120 = alloca %struct.TValue*, align 8
  %121 = alloca i32, align 4
  %122 = alloca double, align 8
  %123 = alloca %struct.TValue*, align 8
  %124 = alloca %struct.TValue*, align 8
  %125 = alloca i32, align 4
  %126 = alloca %struct.TValue*, align 8
  %127 = alloca double, align 8
  %128 = alloca %struct.TValue*, align 8
  %129 = alloca %struct.TValue*, align 8
  %130 = alloca %struct.TValue*, align 8
  %131 = alloca i64, align 8
  %132 = alloca i64, align 8
  %133 = alloca %struct.TValue*, align 8
  %134 = alloca double, align 8
  %135 = alloca double, align 8
  %136 = alloca %struct.TValue*, align 8
  %137 = alloca %struct.TValue*, align 8
  %138 = alloca %struct.TValue*, align 8
  %139 = alloca i64, align 8
  %140 = alloca i64, align 8
  %141 = alloca %struct.TValue*, align 8
  %142 = alloca double, align 8
  %143 = alloca double, align 8
  %144 = alloca %struct.TValue*, align 8
  %145 = alloca %struct.TValue*, align 8
  %146 = alloca %struct.TValue*, align 8
  %147 = alloca i64, align 8
  %148 = alloca i64, align 8
  %149 = alloca %struct.TValue*, align 8
  %150 = alloca double, align 8
  %151 = alloca double, align 8
  %152 = alloca %struct.TValue*, align 8
  %153 = alloca %struct.TValue*, align 8
  %154 = alloca %struct.TValue*, align 8
  %155 = alloca i64, align 8
  %156 = alloca i64, align 8
  %157 = alloca %struct.TValue*, align 8
  %158 = alloca double, align 8
  %159 = alloca double, align 8
  %160 = alloca %struct.TValue*, align 8
  %161 = alloca %struct.TValue*, align 8
  %162 = alloca %struct.TValue*, align 8
  %163 = alloca double, align 8
  %164 = alloca double, align 8
  %165 = alloca %struct.TValue*, align 8
  %166 = alloca %struct.TValue*, align 8
  %167 = alloca %struct.TValue*, align 8
  %168 = alloca double, align 8
  %169 = alloca double, align 8
  %170 = alloca %struct.TValue*, align 8
  %171 = alloca %struct.TValue*, align 8
  %172 = alloca %struct.TValue*, align 8
  %173 = alloca i64, align 8
  %174 = alloca i64, align 8
  %175 = alloca %struct.TValue*, align 8
  %176 = alloca double, align 8
  %177 = alloca double, align 8
  %178 = alloca %struct.TValue*, align 8
  %179 = alloca %struct.TValue*, align 8
  %180 = alloca %struct.TValue*, align 8
  %181 = alloca i64, align 8
  %182 = alloca i64, align 8
  %183 = alloca %struct.TValue*, align 8
  %184 = alloca double, align 8
  %185 = alloca double, align 8
  %186 = alloca %struct.TValue*, align 8
  %187 = alloca %struct.TValue*, align 8
  %188 = alloca %struct.TValue*, align 8
  %189 = alloca i64, align 8
  %190 = alloca i64, align 8
  %191 = alloca %struct.TValue*, align 8
  %192 = alloca double, align 8
  %193 = alloca double, align 8
  %194 = alloca %struct.TValue*, align 8
  %195 = alloca %struct.TValue*, align 8
  %196 = alloca %struct.TValue*, align 8
  %197 = alloca i64, align 8
  %198 = alloca i64, align 8
  %199 = alloca %struct.TValue*, align 8
  %200 = alloca double, align 8
  %201 = alloca double, align 8
  %202 = alloca %struct.TValue*, align 8
  %203 = alloca %struct.TValue*, align 8
  %204 = alloca %struct.TValue*, align 8
  %205 = alloca i64, align 8
  %206 = alloca i64, align 8
  %207 = alloca %struct.TValue*, align 8
  %208 = alloca double, align 8
  %209 = alloca double, align 8
  %210 = alloca %struct.TValue*, align 8
  %211 = alloca %struct.TValue*, align 8
  %212 = alloca %struct.TValue*, align 8
  %213 = alloca double, align 8
  %214 = alloca double, align 8
  %215 = alloca %struct.TValue*, align 8
  %216 = alloca %struct.TValue*, align 8
  %217 = alloca %struct.TValue*, align 8
  %218 = alloca double, align 8
  %219 = alloca double, align 8
  %220 = alloca %struct.TValue*, align 8
  %221 = alloca %struct.TValue*, align 8
  %222 = alloca %struct.TValue*, align 8
  %223 = alloca i64, align 8
  %224 = alloca i64, align 8
  %225 = alloca %struct.TValue*, align 8
  %226 = alloca double, align 8
  %227 = alloca double, align 8
  %228 = alloca %struct.TValue*, align 8
  %229 = alloca %struct.TValue*, align 8
  %230 = alloca %struct.TValue*, align 8
  %231 = alloca i64, align 8
  %232 = alloca i64, align 8
  %233 = alloca %struct.TValue*, align 8
  %234 = alloca %struct.TValue*, align 8
  %235 = alloca %struct.TValue*, align 8
  %236 = alloca i64, align 8
  %237 = alloca i64, align 8
  %238 = alloca %struct.TValue*, align 8
  %239 = alloca %struct.TValue*, align 8
  %240 = alloca %struct.TValue*, align 8
  %241 = alloca i64, align 8
  %242 = alloca i64, align 8
  %243 = alloca %struct.TValue*, align 8
  %244 = alloca %struct.TValue*, align 8
  %245 = alloca %struct.TValue*, align 8
  %246 = alloca i64, align 8
  %247 = alloca i64, align 8
  %248 = alloca %struct.TValue*, align 8
  %249 = alloca %struct.TValue*, align 8
  %250 = alloca %struct.TValue*, align 8
  %251 = alloca i64, align 8
  %252 = alloca i64, align 8
  %253 = alloca %struct.TValue*, align 8
  %254 = alloca %struct.TValue*, align 8
  %255 = alloca %struct.TValue*, align 8
  %256 = alloca i64, align 8
  %257 = alloca i64, align 8
  %258 = alloca %struct.TValue*, align 8
  %259 = alloca %struct.TValue*, align 8
  %260 = alloca i32, align 4
  %261 = alloca i64, align 8
  %262 = alloca %struct.TValue*, align 8
  %263 = alloca i32, align 4
  %264 = alloca %struct.TValue*, align 8
  %265 = alloca i32, align 4
  %266 = alloca i64, align 8
  %267 = alloca %struct.TValue*, align 8
  %268 = alloca %struct.TValue*, align 8
  %269 = alloca %struct.TValue*, align 8
  %270 = alloca i64, align 8
  %271 = alloca i64, align 8
  %272 = alloca %struct.TValue*, align 8
  %273 = alloca %struct.TValue*, align 8
  %274 = alloca %struct.TValue*, align 8
  %275 = alloca i64, align 8
  %276 = alloca i64, align 8
  %277 = alloca %struct.TValue*, align 8
  %278 = alloca %struct.TValue*, align 8
  %279 = alloca double, align 8
  %280 = alloca i64, align 8
  %281 = alloca %struct.TValue*, align 8
  %282 = alloca %struct.TValue*, align 8
  %283 = alloca %struct.TValue*, align 8
  %284 = alloca i64, align 8
  %285 = alloca %struct.TValue*, align 8
  %286 = alloca %struct.TValue*, align 8
  %287 = alloca i32, align 4
  %288 = alloca %struct.TValue*, align 8
  %289 = alloca i32, align 4
  %290 = alloca i32, align 4
  %291 = alloca %struct.TValue*, align 8
  %292 = alloca i32, align 4
  %293 = alloca %struct.TValue*, align 8
  %294 = alloca i32, align 4
  %295 = alloca %struct.TValue*, align 8
  %296 = alloca %struct.TValue*, align 8
  %297 = alloca i32, align 4
  %298 = alloca i32, align 4
  %299 = alloca i32, align 4
  %300 = alloca i32, align 4
  %301 = alloca i32, align 4
  %302 = alloca i32, align 4
  %303 = alloca i32, align 4
  %304 = alloca i32, align 4
  %305 = alloca i32, align 4
  %306 = alloca i32, align 4
  %307 = alloca i32, align 4
  %308 = alloca i32, align 4
  %309 = alloca i32, align 4
  %310 = alloca i32, align 4
  %311 = alloca i32, align 4
  %312 = alloca i32, align 4
  %313 = alloca %struct.TValue*, align 8
  %314 = alloca %struct.TValue*, align 8
  %315 = alloca %struct.TValue*, align 8
  %316 = alloca i32, align 4
  %317 = alloca i32, align 4
  %318 = alloca i32, align 4
  %319 = alloca i32, align 4
  %320 = alloca i32, align 4
  %321 = alloca i32, align 4
  %322 = alloca i32, align 4
  %323 = alloca i32, align 4
  %324 = alloca i32, align 4
  %325 = alloca %struct.TValue*, align 8
  %326 = alloca %struct.TValue*, align 8
  %327 = alloca i64, align 8
  %328 = alloca i64, align 8
  %329 = alloca i64, align 8
  %330 = alloca %struct.TValue*, align 8
  %331 = alloca %struct.TValue*, align 8
  %332 = alloca %struct.TValue*, align 8
  %333 = alloca double, align 8
  %334 = alloca double, align 8
  %335 = alloca double, align 8
  %336 = alloca %struct.TValue*, align 8
  %337 = alloca %struct.TValue*, align 8
  %338 = alloca %struct.TValue*, align 8
  %339 = alloca %struct.TValue*, align 8
  %340 = alloca %struct.TValue*, align 8
  %341 = alloca i64, align 8
  %342 = alloca i64, align 8
  %343 = alloca i64, align 8
  %344 = alloca %struct.TValue*, align 8
  %345 = alloca i64, align 8
  %346 = alloca %struct.TValue*, align 8
  %347 = alloca double, align 8
  %348 = alloca double, align 8
  %349 = alloca double, align 8
  %350 = alloca %struct.TValue*, align 8
  %351 = alloca %struct.TValue*, align 8
  %352 = alloca %struct.TValue*, align 8
  %353 = alloca %struct.TValue*, align 8
  %354 = alloca %struct.TValue*, align 8
  %355 = alloca %struct.TValue*, align 8
  %356 = alloca i32, align 4
  %357 = alloca i32, align 4
  %358 = alloca i32, align 4
  %359 = alloca %struct.Table*, align 8
  %360 = alloca %struct.TValue*, align 8
  %361 = alloca %struct.TValue*, align 8
  %362 = alloca %struct.TValue*, align 8
  %363 = alloca %struct.Proto*, align 8
  %364 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %4, align 8
  br label %365

; <label>:365:                                    ; preds = %7908, %2
  %366 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %367 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %366, i32 0, i32 23
  %368 = load i32, i32* %367, align 8
  store i32 %368, i32* %9, align 4
  %369 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %370 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %369, i32 0, i32 0
  %371 = load %union.StackValue*, %union.StackValue** %370, align 8
  %372 = bitcast %union.StackValue* %371 to %struct.TValue*
  %373 = getelementptr inbounds %struct.TValue, %struct.TValue* %372, i32 0, i32 0
  %374 = bitcast %union.Value* %373 to %struct.GCObject**
  %375 = load %struct.GCObject*, %struct.GCObject** %374, align 8
  %376 = bitcast %struct.GCObject* %375 to %union.GCUnion*
  %377 = bitcast %union.GCUnion* %376 to %union.Closure*
  %378 = bitcast %union.Closure* %377 to %struct.LClosure*
  store %struct.LClosure* %378, %struct.LClosure** %5, align 8
  %379 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %380 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %379, i32 0, i32 5
  %381 = load %struct.Proto*, %struct.Proto** %380, align 8
  %382 = getelementptr inbounds %struct.Proto, %struct.Proto* %381, i32 0, i32 15
  %383 = load %struct.TValue*, %struct.TValue** %382, align 8
  store %struct.TValue* %383, %struct.TValue** %6, align 8
  %384 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %385 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %384, i32 0, i32 4
  %386 = bitcast %union.anon* %385 to %struct.anon*
  %387 = getelementptr inbounds %struct.anon, %struct.anon* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  store i32* %388, i32** %8, align 8
  %389 = load i32, i32* %9, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %416

; <label>:391:                                    ; preds = %365
  %392 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %393 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %392, i32 0, i32 5
  %394 = load %struct.Proto*, %struct.Proto** %393, align 8
  %395 = getelementptr inbounds %struct.Proto, %struct.Proto* %394, i32 0, i32 4
  %396 = load i8, i8* %395, align 1
  %397 = icmp ne i8 %396, 0
  br i1 %397, label %398, label %399

; <label>:398:                                    ; preds = %391
  store i32 0, i32* %9, align 4
  br label %411

; <label>:399:                                    ; preds = %391
  %400 = load i32*, i32** %8, align 8
  %401 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %402 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %401, i32 0, i32 5
  %403 = load %struct.Proto*, %struct.Proto** %402, align 8
  %404 = getelementptr inbounds %struct.Proto, %struct.Proto* %403, i32 0, i32 16
  %405 = load i32*, i32** %404, align 8
  %406 = icmp eq i32* %400, %405
  br i1 %406, label %407, label %410

; <label>:407:                                    ; preds = %399
  %408 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %409 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  call void @luaD_hookcall(%struct.lua_State* %408, %struct.CallInfo* %409)
  br label %410

; <label>:410:                                    ; preds = %407, %399
  br label %411

; <label>:411:                                    ; preds = %410, %398
  %412 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %413 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %412, i32 0, i32 4
  %414 = bitcast %union.anon* %413 to %struct.anon*
  %415 = getelementptr inbounds %struct.anon, %struct.anon* %414, i32 0, i32 1
  store i32 1, i32* %415, align 8
  br label %416

; <label>:416:                                    ; preds = %411, %365
  %417 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %418 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %417, i32 0, i32 0
  %419 = load %union.StackValue*, %union.StackValue** %418, align 8
  %420 = getelementptr inbounds %union.StackValue, %union.StackValue* %419, i64 1
  store %union.StackValue* %420, %union.StackValue** %7, align 8
  br label %421

; <label>:421:                                    ; preds = %416
  %422 = load i32, i32* %9, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

; <label>:424:                                    ; preds = %421
  %425 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %426 = load i32*, i32** %8, align 8
  %427 = call i32 @luaG_traceexec(%struct.lua_State* %425, i32* %426)
  store i32 %427, i32* %9, align 4
  %428 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %429 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %428, i32 0, i32 0
  %430 = load %union.StackValue*, %union.StackValue** %429, align 8
  %431 = getelementptr inbounds %union.StackValue, %union.StackValue* %430, i64 1
  store %union.StackValue* %431, %union.StackValue** %7, align 8
  br label %432

; <label>:432:                                    ; preds = %424, %421
  %433 = load i32*, i32** %8, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** %8, align 8
  %435 = load i32, i32* %433, align 4
  store i32 %435, i32* %10, align 4
  %436 = load %union.StackValue*, %union.StackValue** %7, align 8
  %437 = load i32, i32* %10, align 4
  %438 = lshr i32 %437, 7
  %439 = and i32 %438, 255
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %union.StackValue, %union.StackValue* %436, i64 %440
  store %union.StackValue* %441, %union.StackValue** %11, align 8
  %442 = load i32, i32* %10, align 4
  %443 = lshr i32 %442, 0
  %444 = and i32 %443, 127
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %445
  %447 = load i8*, i8** %446, align 8
  br label %8998

; <label>:448:                                    ; preds = %8998
  %449 = load %union.StackValue*, %union.StackValue** %11, align 8
  %450 = bitcast %union.StackValue* %449 to %struct.TValue*
  store %struct.TValue* %450, %struct.TValue** %12, align 8
  %451 = load %union.StackValue*, %union.StackValue** %7, align 8
  %452 = load i32, i32* %10, align 4
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %union.StackValue, %union.StackValue* %451, i64 %455
  %457 = bitcast %union.StackValue* %456 to %struct.TValue*
  store %struct.TValue* %457, %struct.TValue** %13, align 8
  %458 = load %struct.TValue*, %struct.TValue** %12, align 8
  %459 = getelementptr inbounds %struct.TValue, %struct.TValue* %458, i32 0, i32 0
  %460 = load %struct.TValue*, %struct.TValue** %13, align 8
  %461 = getelementptr inbounds %struct.TValue, %struct.TValue* %460, i32 0, i32 0
  %462 = bitcast %union.Value* %459 to i8*
  %463 = bitcast %union.Value* %461 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %462, i8* %463, i64 8, i32 8, i1 false)
  %464 = load %struct.TValue*, %struct.TValue** %13, align 8
  %465 = getelementptr inbounds %struct.TValue, %struct.TValue* %464, i32 0, i32 1
  %466 = load i8, i8* %465, align 8
  %467 = load %struct.TValue*, %struct.TValue** %12, align 8
  %468 = getelementptr inbounds %struct.TValue, %struct.TValue* %467, i32 0, i32 1
  store i8 %466, i8* %468, align 8
  %469 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %470 = load i32, i32* %9, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %480

; <label>:472:                                    ; preds = %448
  %473 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %474 = load i32*, i32** %8, align 8
  %475 = call i32 @luaG_traceexec(%struct.lua_State* %473, i32* %474)
  store i32 %475, i32* %9, align 4
  %476 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %477 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %476, i32 0, i32 0
  %478 = load %union.StackValue*, %union.StackValue** %477, align 8
  %479 = getelementptr inbounds %union.StackValue, %union.StackValue* %478, i64 1
  store %union.StackValue* %479, %union.StackValue** %7, align 8
  br label %480

; <label>:480:                                    ; preds = %472, %448
  %481 = load i32*, i32** %8, align 8
  %482 = getelementptr inbounds i32, i32* %481, i32 1
  store i32* %482, i32** %8, align 8
  %483 = load i32, i32* %481, align 4
  store i32 %483, i32* %10, align 4
  %484 = load %union.StackValue*, %union.StackValue** %7, align 8
  %485 = load i32, i32* %10, align 4
  %486 = lshr i32 %485, 7
  %487 = and i32 %486, 255
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %union.StackValue, %union.StackValue* %484, i64 %488
  store %union.StackValue* %489, %union.StackValue** %11, align 8
  %490 = load i32, i32* %10, align 4
  %491 = lshr i32 %490, 0
  %492 = and i32 %491, 127
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %493
  %495 = load i8*, i8** %494, align 8
  br label %8998

; <label>:496:                                    ; preds = %8998
  %497 = load %struct.TValue*, %struct.TValue** %6, align 8
  %498 = load i32, i32* %10, align 4
  %499 = lshr i32 %498, 15
  %500 = and i32 %499, 131071
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TValue, %struct.TValue* %497, i64 %501
  store %struct.TValue* %502, %struct.TValue** %14, align 8
  %503 = load %union.StackValue*, %union.StackValue** %11, align 8
  %504 = bitcast %union.StackValue* %503 to %struct.TValue*
  store %struct.TValue* %504, %struct.TValue** %15, align 8
  %505 = load %struct.TValue*, %struct.TValue** %14, align 8
  store %struct.TValue* %505, %struct.TValue** %16, align 8
  %506 = load %struct.TValue*, %struct.TValue** %15, align 8
  %507 = getelementptr inbounds %struct.TValue, %struct.TValue* %506, i32 0, i32 0
  %508 = load %struct.TValue*, %struct.TValue** %16, align 8
  %509 = getelementptr inbounds %struct.TValue, %struct.TValue* %508, i32 0, i32 0
  %510 = bitcast %union.Value* %507 to i8*
  %511 = bitcast %union.Value* %509 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %510, i8* %511, i64 8, i32 8, i1 false)
  %512 = load %struct.TValue*, %struct.TValue** %16, align 8
  %513 = getelementptr inbounds %struct.TValue, %struct.TValue* %512, i32 0, i32 1
  %514 = load i8, i8* %513, align 8
  %515 = load %struct.TValue*, %struct.TValue** %15, align 8
  %516 = getelementptr inbounds %struct.TValue, %struct.TValue* %515, i32 0, i32 1
  store i8 %514, i8* %516, align 8
  %517 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %518 = load i32, i32* %9, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %528

; <label>:520:                                    ; preds = %496
  %521 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %522 = load i32*, i32** %8, align 8
  %523 = call i32 @luaG_traceexec(%struct.lua_State* %521, i32* %522)
  store i32 %523, i32* %9, align 4
  %524 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %525 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %524, i32 0, i32 0
  %526 = load %union.StackValue*, %union.StackValue** %525, align 8
  %527 = getelementptr inbounds %union.StackValue, %union.StackValue* %526, i64 1
  store %union.StackValue* %527, %union.StackValue** %7, align 8
  br label %528

; <label>:528:                                    ; preds = %520, %496
  %529 = load i32*, i32** %8, align 8
  %530 = getelementptr inbounds i32, i32* %529, i32 1
  store i32* %530, i32** %8, align 8
  %531 = load i32, i32* %529, align 4
  store i32 %531, i32* %10, align 4
  %532 = load %union.StackValue*, %union.StackValue** %7, align 8
  %533 = load i32, i32* %10, align 4
  %534 = lshr i32 %533, 7
  %535 = and i32 %534, 255
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %union.StackValue, %union.StackValue* %532, i64 %536
  store %union.StackValue* %537, %union.StackValue** %11, align 8
  %538 = load i32, i32* %10, align 4
  %539 = lshr i32 %538, 0
  %540 = and i32 %539, 127
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %541
  %543 = load i8*, i8** %542, align 8
  br label %8998

; <label>:544:                                    ; preds = %8998
  %545 = load i32, i32* %10, align 4
  %546 = lshr i32 %545, 15
  %547 = and i32 %546, 131071
  %548 = sub nsw i32 %547, 65535
  %549 = sext i32 %548 to i64
  store i64 %549, i64* %17, align 8
  %550 = load %union.StackValue*, %union.StackValue** %11, align 8
  %551 = bitcast %union.StackValue* %550 to %struct.TValue*
  store %struct.TValue* %551, %struct.TValue** %18, align 8
  %552 = load i64, i64* %17, align 8
  %553 = load %struct.TValue*, %struct.TValue** %18, align 8
  %554 = getelementptr inbounds %struct.TValue, %struct.TValue* %553, i32 0, i32 0
  %555 = bitcast %union.Value* %554 to i64*
  store i64 %552, i64* %555, align 8
  %556 = load %struct.TValue*, %struct.TValue** %18, align 8
  %557 = getelementptr inbounds %struct.TValue, %struct.TValue* %556, i32 0, i32 1
  store i8 35, i8* %557, align 8
  %558 = load i32, i32* %9, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %568

; <label>:560:                                    ; preds = %544
  %561 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %562 = load i32*, i32** %8, align 8
  %563 = call i32 @luaG_traceexec(%struct.lua_State* %561, i32* %562)
  store i32 %563, i32* %9, align 4
  %564 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %565 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %564, i32 0, i32 0
  %566 = load %union.StackValue*, %union.StackValue** %565, align 8
  %567 = getelementptr inbounds %union.StackValue, %union.StackValue* %566, i64 1
  store %union.StackValue* %567, %union.StackValue** %7, align 8
  br label %568

; <label>:568:                                    ; preds = %560, %544
  %569 = load i32*, i32** %8, align 8
  %570 = getelementptr inbounds i32, i32* %569, i32 1
  store i32* %570, i32** %8, align 8
  %571 = load i32, i32* %569, align 4
  store i32 %571, i32* %10, align 4
  %572 = load %union.StackValue*, %union.StackValue** %7, align 8
  %573 = load i32, i32* %10, align 4
  %574 = lshr i32 %573, 7
  %575 = and i32 %574, 255
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %union.StackValue, %union.StackValue* %572, i64 %576
  store %union.StackValue* %577, %union.StackValue** %11, align 8
  %578 = load i32, i32* %10, align 4
  %579 = lshr i32 %578, 0
  %580 = and i32 %579, 127
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %581
  %583 = load i8*, i8** %582, align 8
  br label %8998

; <label>:584:                                    ; preds = %8998
  %585 = load i32, i32* %10, align 4
  %586 = lshr i32 %585, 15
  %587 = and i32 %586, 131071
  %588 = sub nsw i32 %587, 65535
  store i32 %588, i32* %19, align 4
  %589 = load %union.StackValue*, %union.StackValue** %11, align 8
  %590 = bitcast %union.StackValue* %589 to %struct.TValue*
  store %struct.TValue* %590, %struct.TValue** %20, align 8
  %591 = load i32, i32* %19, align 4
  %592 = sitofp i32 %591 to double
  %593 = load %struct.TValue*, %struct.TValue** %20, align 8
  %594 = getelementptr inbounds %struct.TValue, %struct.TValue* %593, i32 0, i32 0
  %595 = bitcast %union.Value* %594 to double*
  store double %592, double* %595, align 8
  %596 = load %struct.TValue*, %struct.TValue** %20, align 8
  %597 = getelementptr inbounds %struct.TValue, %struct.TValue* %596, i32 0, i32 1
  store i8 19, i8* %597, align 8
  %598 = load i32, i32* %9, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %608

; <label>:600:                                    ; preds = %584
  %601 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %602 = load i32*, i32** %8, align 8
  %603 = call i32 @luaG_traceexec(%struct.lua_State* %601, i32* %602)
  store i32 %603, i32* %9, align 4
  %604 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %605 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %604, i32 0, i32 0
  %606 = load %union.StackValue*, %union.StackValue** %605, align 8
  %607 = getelementptr inbounds %union.StackValue, %union.StackValue* %606, i64 1
  store %union.StackValue* %607, %union.StackValue** %7, align 8
  br label %608

; <label>:608:                                    ; preds = %600, %584
  %609 = load i32*, i32** %8, align 8
  %610 = getelementptr inbounds i32, i32* %609, i32 1
  store i32* %610, i32** %8, align 8
  %611 = load i32, i32* %609, align 4
  store i32 %611, i32* %10, align 4
  %612 = load %union.StackValue*, %union.StackValue** %7, align 8
  %613 = load i32, i32* %10, align 4
  %614 = lshr i32 %613, 7
  %615 = and i32 %614, 255
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %union.StackValue, %union.StackValue* %612, i64 %616
  store %union.StackValue* %617, %union.StackValue** %11, align 8
  %618 = load i32, i32* %10, align 4
  %619 = lshr i32 %618, 0
  %620 = and i32 %619, 127
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %621
  %623 = load i8*, i8** %622, align 8
  br label %8998

; <label>:624:                                    ; preds = %8998
  %625 = load %struct.TValue*, %struct.TValue** %6, align 8
  %626 = load i32*, i32** %8, align 8
  %627 = load i32, i32* %626, align 4
  %628 = lshr i32 %627, 7
  %629 = and i32 %628, 33554431
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TValue, %struct.TValue* %625, i64 %630
  store %struct.TValue* %631, %struct.TValue** %21, align 8
  %632 = load i32*, i32** %8, align 8
  %633 = getelementptr inbounds i32, i32* %632, i32 1
  store i32* %633, i32** %8, align 8
  %634 = load %union.StackValue*, %union.StackValue** %11, align 8
  %635 = bitcast %union.StackValue* %634 to %struct.TValue*
  store %struct.TValue* %635, %struct.TValue** %22, align 8
  %636 = load %struct.TValue*, %struct.TValue** %21, align 8
  store %struct.TValue* %636, %struct.TValue** %23, align 8
  %637 = load %struct.TValue*, %struct.TValue** %22, align 8
  %638 = getelementptr inbounds %struct.TValue, %struct.TValue* %637, i32 0, i32 0
  %639 = load %struct.TValue*, %struct.TValue** %23, align 8
  %640 = getelementptr inbounds %struct.TValue, %struct.TValue* %639, i32 0, i32 0
  %641 = bitcast %union.Value* %638 to i8*
  %642 = bitcast %union.Value* %640 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %641, i8* %642, i64 8, i32 8, i1 false)
  %643 = load %struct.TValue*, %struct.TValue** %23, align 8
  %644 = getelementptr inbounds %struct.TValue, %struct.TValue* %643, i32 0, i32 1
  %645 = load i8, i8* %644, align 8
  %646 = load %struct.TValue*, %struct.TValue** %22, align 8
  %647 = getelementptr inbounds %struct.TValue, %struct.TValue* %646, i32 0, i32 1
  store i8 %645, i8* %647, align 8
  %648 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %649 = load i32, i32* %9, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %659

; <label>:651:                                    ; preds = %624
  %652 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %653 = load i32*, i32** %8, align 8
  %654 = call i32 @luaG_traceexec(%struct.lua_State* %652, i32* %653)
  store i32 %654, i32* %9, align 4
  %655 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %656 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %655, i32 0, i32 0
  %657 = load %union.StackValue*, %union.StackValue** %656, align 8
  %658 = getelementptr inbounds %union.StackValue, %union.StackValue* %657, i64 1
  store %union.StackValue* %658, %union.StackValue** %7, align 8
  br label %659

; <label>:659:                                    ; preds = %651, %624
  %660 = load i32*, i32** %8, align 8
  %661 = getelementptr inbounds i32, i32* %660, i32 1
  store i32* %661, i32** %8, align 8
  %662 = load i32, i32* %660, align 4
  store i32 %662, i32* %10, align 4
  %663 = load %union.StackValue*, %union.StackValue** %7, align 8
  %664 = load i32, i32* %10, align 4
  %665 = lshr i32 %664, 7
  %666 = and i32 %665, 255
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %union.StackValue, %union.StackValue* %663, i64 %667
  store %union.StackValue* %668, %union.StackValue** %11, align 8
  %669 = load i32, i32* %10, align 4
  %670 = lshr i32 %669, 0
  %671 = and i32 %670, 127
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %672
  %674 = load i8*, i8** %673, align 8
  br label %8998

; <label>:675:                                    ; preds = %8998
  %676 = load %union.StackValue*, %union.StackValue** %11, align 8
  %677 = bitcast %union.StackValue* %676 to %struct.TValue*
  store %struct.TValue* %677, %struct.TValue** %24, align 8
  %678 = load i32, i32* %10, align 4
  %679 = lshr i32 %678, 16
  %680 = and i32 %679, 255
  %681 = load %struct.TValue*, %struct.TValue** %24, align 8
  %682 = getelementptr inbounds %struct.TValue, %struct.TValue* %681, i32 0, i32 0
  %683 = bitcast %union.Value* %682 to i32*
  store i32 %680, i32* %683, align 8
  %684 = load %struct.TValue*, %struct.TValue** %24, align 8
  %685 = getelementptr inbounds %struct.TValue, %struct.TValue* %684, i32 0, i32 1
  store i8 1, i8* %685, align 8
  %686 = load i32, i32* %10, align 4
  %687 = lshr i32 %686, 24
  %688 = and i32 %687, 255
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %693

; <label>:690:                                    ; preds = %675
  %691 = load i32*, i32** %8, align 8
  %692 = getelementptr inbounds i32, i32* %691, i32 1
  store i32* %692, i32** %8, align 8
  br label %693

; <label>:693:                                    ; preds = %690, %675
  %694 = load i32, i32* %9, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %704

; <label>:696:                                    ; preds = %693
  %697 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %698 = load i32*, i32** %8, align 8
  %699 = call i32 @luaG_traceexec(%struct.lua_State* %697, i32* %698)
  store i32 %699, i32* %9, align 4
  %700 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %701 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %700, i32 0, i32 0
  %702 = load %union.StackValue*, %union.StackValue** %701, align 8
  %703 = getelementptr inbounds %union.StackValue, %union.StackValue* %702, i64 1
  store %union.StackValue* %703, %union.StackValue** %7, align 8
  br label %704

; <label>:704:                                    ; preds = %696, %693
  %705 = load i32*, i32** %8, align 8
  %706 = getelementptr inbounds i32, i32* %705, i32 1
  store i32* %706, i32** %8, align 8
  %707 = load i32, i32* %705, align 4
  store i32 %707, i32* %10, align 4
  %708 = load %union.StackValue*, %union.StackValue** %7, align 8
  %709 = load i32, i32* %10, align 4
  %710 = lshr i32 %709, 7
  %711 = and i32 %710, 255
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %union.StackValue, %union.StackValue* %708, i64 %712
  store %union.StackValue* %713, %union.StackValue** %11, align 8
  %714 = load i32, i32* %10, align 4
  %715 = lshr i32 %714, 0
  %716 = and i32 %715, 127
  %717 = zext i32 %716 to i64
  %718 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %717
  %719 = load i8*, i8** %718, align 8
  br label %8998

; <label>:720:                                    ; preds = %8998
  %721 = load i32, i32* %10, align 4
  %722 = lshr i32 %721, 16
  %723 = and i32 %722, 255
  store i32 %723, i32* %25, align 4
  br label %724

; <label>:724:                                    ; preds = %729, %720
  %725 = load %union.StackValue*, %union.StackValue** %11, align 8
  %726 = getelementptr inbounds %union.StackValue, %union.StackValue* %725, i32 1
  store %union.StackValue* %726, %union.StackValue** %11, align 8
  %727 = bitcast %union.StackValue* %725 to %struct.TValue*
  %728 = getelementptr inbounds %struct.TValue, %struct.TValue* %727, i32 0, i32 1
  store i8 0, i8* %728, align 8
  br label %729

; <label>:729:                                    ; preds = %724
  %730 = load i32, i32* %25, align 4
  %731 = add nsw i32 %730, -1
  store i32 %731, i32* %25, align 4
  %732 = icmp ne i32 %730, 0
  br i1 %732, label %724, label %733

; <label>:733:                                    ; preds = %729
  %734 = load i32, i32* %9, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %744

; <label>:736:                                    ; preds = %733
  %737 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %738 = load i32*, i32** %8, align 8
  %739 = call i32 @luaG_traceexec(%struct.lua_State* %737, i32* %738)
  store i32 %739, i32* %9, align 4
  %740 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %741 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %740, i32 0, i32 0
  %742 = load %union.StackValue*, %union.StackValue** %741, align 8
  %743 = getelementptr inbounds %union.StackValue, %union.StackValue* %742, i64 1
  store %union.StackValue* %743, %union.StackValue** %7, align 8
  br label %744

; <label>:744:                                    ; preds = %736, %733
  %745 = load i32*, i32** %8, align 8
  %746 = getelementptr inbounds i32, i32* %745, i32 1
  store i32* %746, i32** %8, align 8
  %747 = load i32, i32* %745, align 4
  store i32 %747, i32* %10, align 4
  %748 = load %union.StackValue*, %union.StackValue** %7, align 8
  %749 = load i32, i32* %10, align 4
  %750 = lshr i32 %749, 7
  %751 = and i32 %750, 255
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %union.StackValue, %union.StackValue* %748, i64 %752
  store %union.StackValue* %753, %union.StackValue** %11, align 8
  %754 = load i32, i32* %10, align 4
  %755 = lshr i32 %754, 0
  %756 = and i32 %755, 127
  %757 = zext i32 %756 to i64
  %758 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %757
  %759 = load i8*, i8** %758, align 8
  br label %8998

; <label>:760:                                    ; preds = %8998
  %761 = load i32, i32* %10, align 4
  %762 = lshr i32 %761, 16
  %763 = and i32 %762, 255
  store i32 %763, i32* %26, align 4
  %764 = load %union.StackValue*, %union.StackValue** %11, align 8
  %765 = bitcast %union.StackValue* %764 to %struct.TValue*
  store %struct.TValue* %765, %struct.TValue** %27, align 8
  %766 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %767 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %766, i32 0, i32 6
  %768 = load i32, i32* %26, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %767, i64 0, i64 %769
  %771 = load %struct.UpVal*, %struct.UpVal** %770, align 8
  %772 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %771, i32 0, i32 3
  %773 = load %struct.TValue*, %struct.TValue** %772, align 8
  store %struct.TValue* %773, %struct.TValue** %28, align 8
  %774 = load %struct.TValue*, %struct.TValue** %27, align 8
  %775 = getelementptr inbounds %struct.TValue, %struct.TValue* %774, i32 0, i32 0
  %776 = load %struct.TValue*, %struct.TValue** %28, align 8
  %777 = getelementptr inbounds %struct.TValue, %struct.TValue* %776, i32 0, i32 0
  %778 = bitcast %union.Value* %775 to i8*
  %779 = bitcast %union.Value* %777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %778, i8* %779, i64 8, i32 8, i1 false)
  %780 = load %struct.TValue*, %struct.TValue** %28, align 8
  %781 = getelementptr inbounds %struct.TValue, %struct.TValue* %780, i32 0, i32 1
  %782 = load i8, i8* %781, align 8
  %783 = load %struct.TValue*, %struct.TValue** %27, align 8
  %784 = getelementptr inbounds %struct.TValue, %struct.TValue* %783, i32 0, i32 1
  store i8 %782, i8* %784, align 8
  %785 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %786 = load i32, i32* %9, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %796

; <label>:788:                                    ; preds = %760
  %789 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %790 = load i32*, i32** %8, align 8
  %791 = call i32 @luaG_traceexec(%struct.lua_State* %789, i32* %790)
  store i32 %791, i32* %9, align 4
  %792 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %793 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %792, i32 0, i32 0
  %794 = load %union.StackValue*, %union.StackValue** %793, align 8
  %795 = getelementptr inbounds %union.StackValue, %union.StackValue* %794, i64 1
  store %union.StackValue* %795, %union.StackValue** %7, align 8
  br label %796

; <label>:796:                                    ; preds = %788, %760
  %797 = load i32*, i32** %8, align 8
  %798 = getelementptr inbounds i32, i32* %797, i32 1
  store i32* %798, i32** %8, align 8
  %799 = load i32, i32* %797, align 4
  store i32 %799, i32* %10, align 4
  %800 = load %union.StackValue*, %union.StackValue** %7, align 8
  %801 = load i32, i32* %10, align 4
  %802 = lshr i32 %801, 7
  %803 = and i32 %802, 255
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %union.StackValue, %union.StackValue* %800, i64 %804
  store %union.StackValue* %805, %union.StackValue** %11, align 8
  %806 = load i32, i32* %10, align 4
  %807 = lshr i32 %806, 0
  %808 = and i32 %807, 127
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %809
  %811 = load i8*, i8** %810, align 8
  br label %8998

; <label>:812:                                    ; preds = %8998
  %813 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %814 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %813, i32 0, i32 6
  %815 = load i32, i32* %10, align 4
  %816 = lshr i32 %815, 16
  %817 = and i32 %816, 255
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %814, i64 0, i64 %818
  %820 = load %struct.UpVal*, %struct.UpVal** %819, align 8
  store %struct.UpVal* %820, %struct.UpVal** %29, align 8
  %821 = load %struct.UpVal*, %struct.UpVal** %29, align 8
  %822 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %821, i32 0, i32 3
  %823 = load %struct.TValue*, %struct.TValue** %822, align 8
  store %struct.TValue* %823, %struct.TValue** %30, align 8
  %824 = load %union.StackValue*, %union.StackValue** %11, align 8
  %825 = bitcast %union.StackValue* %824 to %struct.TValue*
  store %struct.TValue* %825, %struct.TValue** %31, align 8
  %826 = load %struct.TValue*, %struct.TValue** %30, align 8
  %827 = getelementptr inbounds %struct.TValue, %struct.TValue* %826, i32 0, i32 0
  %828 = load %struct.TValue*, %struct.TValue** %31, align 8
  %829 = getelementptr inbounds %struct.TValue, %struct.TValue* %828, i32 0, i32 0
  %830 = bitcast %union.Value* %827 to i8*
  %831 = bitcast %union.Value* %829 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %830, i8* %831, i64 8, i32 8, i1 false)
  %832 = load %struct.TValue*, %struct.TValue** %31, align 8
  %833 = getelementptr inbounds %struct.TValue, %struct.TValue* %832, i32 0, i32 1
  %834 = load i8, i8* %833, align 8
  %835 = load %struct.TValue*, %struct.TValue** %30, align 8
  %836 = getelementptr inbounds %struct.TValue, %struct.TValue* %835, i32 0, i32 1
  store i8 %834, i8* %836, align 8
  %837 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %838 = load %union.StackValue*, %union.StackValue** %11, align 8
  %839 = bitcast %union.StackValue* %838 to %struct.TValue*
  %840 = getelementptr inbounds %struct.TValue, %struct.TValue* %839, i32 0, i32 1
  %841 = load i8, i8* %840, align 8
  %842 = zext i8 %841 to i32
  %843 = and i32 %842, 64
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %873

; <label>:845:                                    ; preds = %812
  %846 = load %struct.UpVal*, %struct.UpVal** %29, align 8
  %847 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %846, i32 0, i32 2
  %848 = load i8, i8* %847, align 1
  %849 = zext i8 %848 to i32
  %850 = and i32 %849, 32
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %873

; <label>:852:                                    ; preds = %845
  %853 = load %union.StackValue*, %union.StackValue** %11, align 8
  %854 = bitcast %union.StackValue* %853 to %struct.TValue*
  %855 = getelementptr inbounds %struct.TValue, %struct.TValue* %854, i32 0, i32 0
  %856 = bitcast %union.Value* %855 to %struct.GCObject**
  %857 = load %struct.GCObject*, %struct.GCObject** %856, align 8
  %858 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %857, i32 0, i32 2
  %859 = load i8, i8* %858, align 1
  %860 = zext i8 %859 to i32
  %861 = and i32 %860, 24
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %873

; <label>:863:                                    ; preds = %852
  %864 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %865 = load %struct.UpVal*, %struct.UpVal** %29, align 8
  %866 = bitcast %struct.UpVal* %865 to %union.GCUnion*
  %867 = bitcast %union.GCUnion* %866 to %struct.GCObject*
  %868 = load %union.StackValue*, %union.StackValue** %11, align 8
  %869 = bitcast %union.StackValue* %868 to %struct.TValue*
  %870 = getelementptr inbounds %struct.TValue, %struct.TValue* %869, i32 0, i32 0
  %871 = bitcast %union.Value* %870 to %struct.GCObject**
  %872 = load %struct.GCObject*, %struct.GCObject** %871, align 8
  call void @luaC_barrier_(%struct.lua_State* %864, %struct.GCObject* %867, %struct.GCObject* %872)
  br label %874

; <label>:873:                                    ; preds = %852, %845, %812
  br label %874

; <label>:874:                                    ; preds = %873, %863
  %875 = load i32, i32* %9, align 4
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %885

; <label>:877:                                    ; preds = %874
  %878 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %879 = load i32*, i32** %8, align 8
  %880 = call i32 @luaG_traceexec(%struct.lua_State* %878, i32* %879)
  store i32 %880, i32* %9, align 4
  %881 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %882 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %881, i32 0, i32 0
  %883 = load %union.StackValue*, %union.StackValue** %882, align 8
  %884 = getelementptr inbounds %union.StackValue, %union.StackValue* %883, i64 1
  store %union.StackValue* %884, %union.StackValue** %7, align 8
  br label %885

; <label>:885:                                    ; preds = %877, %874
  %886 = load i32*, i32** %8, align 8
  %887 = getelementptr inbounds i32, i32* %886, i32 1
  store i32* %887, i32** %8, align 8
  %888 = load i32, i32* %886, align 4
  store i32 %888, i32* %10, align 4
  %889 = load %union.StackValue*, %union.StackValue** %7, align 8
  %890 = load i32, i32* %10, align 4
  %891 = lshr i32 %890, 7
  %892 = and i32 %891, 255
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %union.StackValue, %union.StackValue* %889, i64 %893
  store %union.StackValue* %894, %union.StackValue** %11, align 8
  %895 = load i32, i32* %10, align 4
  %896 = lshr i32 %895, 0
  %897 = and i32 %896, 127
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %898
  %900 = load i8*, i8** %899, align 8
  br label %8998

; <label>:901:                                    ; preds = %8998
  %902 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %903 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %902, i32 0, i32 6
  %904 = load i32, i32* %10, align 4
  %905 = lshr i32 %904, 16
  %906 = and i32 %905, 255
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %903, i64 0, i64 %907
  %909 = load %struct.UpVal*, %struct.UpVal** %908, align 8
  %910 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %909, i32 0, i32 3
  %911 = load %struct.TValue*, %struct.TValue** %910, align 8
  store %struct.TValue* %911, %struct.TValue** %33, align 8
  %912 = load %struct.TValue*, %struct.TValue** %6, align 8
  %913 = load i32, i32* %10, align 4
  %914 = lshr i32 %913, 24
  %915 = and i32 %914, 255
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds %struct.TValue, %struct.TValue* %912, i64 %916
  store %struct.TValue* %917, %struct.TValue** %34, align 8
  %918 = load %struct.TValue*, %struct.TValue** %34, align 8
  %919 = getelementptr inbounds %struct.TValue, %struct.TValue* %918, i32 0, i32 0
  %920 = bitcast %union.Value* %919 to %struct.GCObject**
  %921 = load %struct.GCObject*, %struct.GCObject** %920, align 8
  %922 = bitcast %struct.GCObject* %921 to %union.GCUnion*
  %923 = bitcast %union.GCUnion* %922 to %struct.TString*
  store %struct.TString* %923, %struct.TString** %35, align 8
  %924 = load %struct.TValue*, %struct.TValue** %33, align 8
  %925 = getelementptr inbounds %struct.TValue, %struct.TValue* %924, i32 0, i32 1
  %926 = load i8, i8* %925, align 8
  %927 = zext i8 %926 to i32
  %928 = icmp eq i32 %927, 69
  br i1 %928, label %930, label %929

; <label>:929:                                    ; preds = %901
  store %struct.TValue* null, %struct.TValue** %32, align 8
  br i1 false, label %946, label %962

; <label>:930:                                    ; preds = %901
  %931 = load %struct.TValue*, %struct.TValue** %33, align 8
  %932 = getelementptr inbounds %struct.TValue, %struct.TValue* %931, i32 0, i32 0
  %933 = bitcast %union.Value* %932 to %struct.GCObject**
  %934 = load %struct.GCObject*, %struct.GCObject** %933, align 8
  %935 = bitcast %struct.GCObject* %934 to %union.GCUnion*
  %936 = bitcast %union.GCUnion* %935 to %struct.Table*
  %937 = load %struct.TString*, %struct.TString** %35, align 8
  %938 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %936, %struct.TString* %937)
  store %struct.TValue* %938, %struct.TValue** %32, align 8
  %939 = load %struct.TValue*, %struct.TValue** %32, align 8
  %940 = getelementptr inbounds %struct.TValue, %struct.TValue* %939, i32 0, i32 1
  %941 = load i8, i8* %940, align 8
  %942 = zext i8 %941 to i32
  %943 = and i32 %942, 15
  %944 = icmp eq i32 %943, 0
  %945 = xor i1 %944, true
  br i1 %945, label %946, label %962

; <label>:946:                                    ; preds = %930, %929
  %947 = load %union.StackValue*, %union.StackValue** %11, align 8
  %948 = bitcast %union.StackValue* %947 to %struct.TValue*
  store %struct.TValue* %948, %struct.TValue** %36, align 8
  %949 = load %struct.TValue*, %struct.TValue** %32, align 8
  store %struct.TValue* %949, %struct.TValue** %37, align 8
  %950 = load %struct.TValue*, %struct.TValue** %36, align 8
  %951 = getelementptr inbounds %struct.TValue, %struct.TValue* %950, i32 0, i32 0
  %952 = load %struct.TValue*, %struct.TValue** %37, align 8
  %953 = getelementptr inbounds %struct.TValue, %struct.TValue* %952, i32 0, i32 0
  %954 = bitcast %union.Value* %951 to i8*
  %955 = bitcast %union.Value* %953 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %954, i8* %955, i64 8, i32 8, i1 false)
  %956 = load %struct.TValue*, %struct.TValue** %37, align 8
  %957 = getelementptr inbounds %struct.TValue, %struct.TValue* %956, i32 0, i32 1
  %958 = load i8, i8* %957, align 8
  %959 = load %struct.TValue*, %struct.TValue** %36, align 8
  %960 = getelementptr inbounds %struct.TValue, %struct.TValue* %959, i32 0, i32 1
  store i8 %958, i8* %960, align 8
  %961 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %983

; <label>:962:                                    ; preds = %930, %929
  %963 = load i32*, i32** %8, align 8
  %964 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %965 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %964, i32 0, i32 4
  %966 = bitcast %union.anon* %965 to %struct.anon*
  %967 = getelementptr inbounds %struct.anon, %struct.anon* %966, i32 0, i32 0
  store i32* %963, i32** %967, align 8
  %968 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %969 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %968, i32 0, i32 1
  %970 = load %union.StackValue*, %union.StackValue** %969, align 8
  %971 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %972 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %971, i32 0, i32 6
  store %union.StackValue* %970, %union.StackValue** %972, align 8
  %973 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %974 = load %struct.TValue*, %struct.TValue** %33, align 8
  %975 = load %struct.TValue*, %struct.TValue** %34, align 8
  %976 = load %union.StackValue*, %union.StackValue** %11, align 8
  %977 = load %struct.TValue*, %struct.TValue** %32, align 8
  call void @luaV_finishget(%struct.lua_State* %973, %struct.TValue* %974, %struct.TValue* %975, %union.StackValue* %976, %struct.TValue* %977)
  %978 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %979 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %978, i32 0, i32 4
  %980 = bitcast %union.anon* %979 to %struct.anon*
  %981 = getelementptr inbounds %struct.anon, %struct.anon* %980, i32 0, i32 1
  %982 = load i32, i32* %981, align 8
  store i32 %982, i32* %9, align 4
  br label %983

; <label>:983:                                    ; preds = %962, %946
  %984 = load i32, i32* %9, align 4
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %986, label %994

; <label>:986:                                    ; preds = %983
  %987 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %988 = load i32*, i32** %8, align 8
  %989 = call i32 @luaG_traceexec(%struct.lua_State* %987, i32* %988)
  store i32 %989, i32* %9, align 4
  %990 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %991 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %990, i32 0, i32 0
  %992 = load %union.StackValue*, %union.StackValue** %991, align 8
  %993 = getelementptr inbounds %union.StackValue, %union.StackValue* %992, i64 1
  store %union.StackValue* %993, %union.StackValue** %7, align 8
  br label %994

; <label>:994:                                    ; preds = %986, %983
  %995 = load i32*, i32** %8, align 8
  %996 = getelementptr inbounds i32, i32* %995, i32 1
  store i32* %996, i32** %8, align 8
  %997 = load i32, i32* %995, align 4
  store i32 %997, i32* %10, align 4
  %998 = load %union.StackValue*, %union.StackValue** %7, align 8
  %999 = load i32, i32* %10, align 4
  %1000 = lshr i32 %999, 7
  %1001 = and i32 %1000, 255
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds %union.StackValue, %union.StackValue* %998, i64 %1002
  store %union.StackValue* %1003, %union.StackValue** %11, align 8
  %1004 = load i32, i32* %10, align 4
  %1005 = lshr i32 %1004, 0
  %1006 = and i32 %1005, 127
  %1007 = zext i32 %1006 to i64
  %1008 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1007
  %1009 = load i8*, i8** %1008, align 8
  br label %8998

; <label>:1010:                                   ; preds = %8998
  %1011 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1012 = load i32, i32* %10, align 4
  %1013 = lshr i32 %1012, 16
  %1014 = and i32 %1013, 255
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds %union.StackValue, %union.StackValue* %1011, i64 %1015
  %1017 = bitcast %union.StackValue* %1016 to %struct.TValue*
  store %struct.TValue* %1017, %struct.TValue** %39, align 8
  %1018 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1019 = load i32, i32* %10, align 4
  %1020 = lshr i32 %1019, 24
  %1021 = and i32 %1020, 255
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds %union.StackValue, %union.StackValue* %1018, i64 %1022
  %1024 = bitcast %union.StackValue* %1023 to %struct.TValue*
  store %struct.TValue* %1024, %struct.TValue** %40, align 8
  %1025 = load %struct.TValue*, %struct.TValue** %40, align 8
  %1026 = getelementptr inbounds %struct.TValue, %struct.TValue* %1025, i32 0, i32 1
  %1027 = load i8, i8* %1026, align 8
  %1028 = zext i8 %1027 to i32
  %1029 = icmp eq i32 %1028, 35
  br i1 %1029, label %1030, label %1088

; <label>:1030:                                   ; preds = %1010
  %1031 = load %struct.TValue*, %struct.TValue** %40, align 8
  %1032 = getelementptr inbounds %struct.TValue, %struct.TValue* %1031, i32 0, i32 0
  %1033 = bitcast %union.Value* %1032 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %41, align 8
  %1035 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1036 = getelementptr inbounds %struct.TValue, %struct.TValue* %1035, i32 0, i32 1
  %1037 = load i8, i8* %1036, align 8
  %1038 = zext i8 %1037 to i32
  %1039 = icmp eq i32 %1038, 69
  br i1 %1039, label %1041, label %1040

; <label>:1040:                                   ; preds = %1030
  store %struct.TValue* null, %struct.TValue** %38, align 8
  br label %1085

; <label>:1041:                                   ; preds = %1030
  %1042 = load i64, i64* %41, align 8
  %1043 = sub i64 %1042, 1
  %1044 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1045 = getelementptr inbounds %struct.TValue, %struct.TValue* %1044, i32 0, i32 0
  %1046 = bitcast %union.Value* %1045 to %struct.GCObject**
  %1047 = load %struct.GCObject*, %struct.GCObject** %1046, align 8
  %1048 = bitcast %struct.GCObject* %1047 to %union.GCUnion*
  %1049 = bitcast %union.GCUnion* %1048 to %struct.Table*
  %1050 = getelementptr inbounds %struct.Table, %struct.Table* %1049, i32 0, i32 5
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  %1053 = icmp ult i64 %1043, %1052
  br i1 %1053, label %1054, label %1066

; <label>:1054:                                   ; preds = %1041
  %1055 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1056 = getelementptr inbounds %struct.TValue, %struct.TValue* %1055, i32 0, i32 0
  %1057 = bitcast %union.Value* %1056 to %struct.GCObject**
  %1058 = load %struct.GCObject*, %struct.GCObject** %1057, align 8
  %1059 = bitcast %struct.GCObject* %1058 to %union.GCUnion*
  %1060 = bitcast %union.GCUnion* %1059 to %struct.Table*
  %1061 = getelementptr inbounds %struct.Table, %struct.Table* %1060, i32 0, i32 6
  %1062 = load %struct.TValue*, %struct.TValue** %1061, align 8
  %1063 = load i64, i64* %41, align 8
  %1064 = sub i64 %1063, 1
  %1065 = getelementptr inbounds %struct.TValue, %struct.TValue* %1062, i64 %1064
  br label %1075

; <label>:1066:                                   ; preds = %1041
  %1067 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1068 = getelementptr inbounds %struct.TValue, %struct.TValue* %1067, i32 0, i32 0
  %1069 = bitcast %union.Value* %1068 to %struct.GCObject**
  %1070 = load %struct.GCObject*, %struct.GCObject** %1069, align 8
  %1071 = bitcast %struct.GCObject* %1070 to %union.GCUnion*
  %1072 = bitcast %union.GCUnion* %1071 to %struct.Table*
  %1073 = load i64, i64* %41, align 8
  %1074 = call %struct.TValue* @luaH_getint(%struct.Table* %1072, i64 %1073)
  br label %1075

; <label>:1075:                                   ; preds = %1066, %1054
  %1076 = phi %struct.TValue* [ %1065, %1054 ], [ %1074, %1066 ]
  store %struct.TValue* %1076, %struct.TValue** %38, align 8
  %1077 = load %struct.TValue*, %struct.TValue** %38, align 8
  %1078 = getelementptr inbounds %struct.TValue, %struct.TValue* %1077, i32 0, i32 1
  %1079 = load i8, i8* %1078, align 8
  %1080 = zext i8 %1079 to i32
  %1081 = and i32 %1080, 15
  %1082 = icmp eq i32 %1081, 0
  %1083 = xor i1 %1082, true
  %1084 = zext i1 %1083 to i32
  br label %1085

; <label>:1085:                                   ; preds = %1075, %1040
  %1086 = phi i32 [ 0, %1040 ], [ %1084, %1075 ]
  %1087 = icmp ne i32 %1086, 0
  br i1 %1087, label %1111, label %1127

; <label>:1088:                                   ; preds = %1010
  %1089 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1090 = getelementptr inbounds %struct.TValue, %struct.TValue* %1089, i32 0, i32 1
  %1091 = load i8, i8* %1090, align 8
  %1092 = zext i8 %1091 to i32
  %1093 = icmp eq i32 %1092, 69
  br i1 %1093, label %1095, label %1094

; <label>:1094:                                   ; preds = %1088
  store %struct.TValue* null, %struct.TValue** %38, align 8
  br i1 false, label %1111, label %1127

; <label>:1095:                                   ; preds = %1088
  %1096 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1097 = getelementptr inbounds %struct.TValue, %struct.TValue* %1096, i32 0, i32 0
  %1098 = bitcast %union.Value* %1097 to %struct.GCObject**
  %1099 = load %struct.GCObject*, %struct.GCObject** %1098, align 8
  %1100 = bitcast %struct.GCObject* %1099 to %union.GCUnion*
  %1101 = bitcast %union.GCUnion* %1100 to %struct.Table*
  %1102 = load %struct.TValue*, %struct.TValue** %40, align 8
  %1103 = call %struct.TValue* @luaH_get(%struct.Table* %1101, %struct.TValue* %1102)
  store %struct.TValue* %1103, %struct.TValue** %38, align 8
  %1104 = load %struct.TValue*, %struct.TValue** %38, align 8
  %1105 = getelementptr inbounds %struct.TValue, %struct.TValue* %1104, i32 0, i32 1
  %1106 = load i8, i8* %1105, align 8
  %1107 = zext i8 %1106 to i32
  %1108 = and i32 %1107, 15
  %1109 = icmp eq i32 %1108, 0
  %1110 = xor i1 %1109, true
  br i1 %1110, label %1111, label %1127

; <label>:1111:                                   ; preds = %1095, %1094, %1085
  %1112 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1113 = bitcast %union.StackValue* %1112 to %struct.TValue*
  store %struct.TValue* %1113, %struct.TValue** %42, align 8
  %1114 = load %struct.TValue*, %struct.TValue** %38, align 8
  store %struct.TValue* %1114, %struct.TValue** %43, align 8
  %1115 = load %struct.TValue*, %struct.TValue** %42, align 8
  %1116 = getelementptr inbounds %struct.TValue, %struct.TValue* %1115, i32 0, i32 0
  %1117 = load %struct.TValue*, %struct.TValue** %43, align 8
  %1118 = getelementptr inbounds %struct.TValue, %struct.TValue* %1117, i32 0, i32 0
  %1119 = bitcast %union.Value* %1116 to i8*
  %1120 = bitcast %union.Value* %1118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1119, i8* %1120, i64 8, i32 8, i1 false)
  %1121 = load %struct.TValue*, %struct.TValue** %43, align 8
  %1122 = getelementptr inbounds %struct.TValue, %struct.TValue* %1121, i32 0, i32 1
  %1123 = load i8, i8* %1122, align 8
  %1124 = load %struct.TValue*, %struct.TValue** %42, align 8
  %1125 = getelementptr inbounds %struct.TValue, %struct.TValue* %1124, i32 0, i32 1
  store i8 %1123, i8* %1125, align 8
  %1126 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %1148

; <label>:1127:                                   ; preds = %1095, %1094, %1085
  %1128 = load i32*, i32** %8, align 8
  %1129 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1130 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1129, i32 0, i32 4
  %1131 = bitcast %union.anon* %1130 to %struct.anon*
  %1132 = getelementptr inbounds %struct.anon, %struct.anon* %1131, i32 0, i32 0
  store i32* %1128, i32** %1132, align 8
  %1133 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1134 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1133, i32 0, i32 1
  %1135 = load %union.StackValue*, %union.StackValue** %1134, align 8
  %1136 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1137 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1136, i32 0, i32 6
  store %union.StackValue* %1135, %union.StackValue** %1137, align 8
  %1138 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1139 = load %struct.TValue*, %struct.TValue** %39, align 8
  %1140 = load %struct.TValue*, %struct.TValue** %40, align 8
  %1141 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1142 = load %struct.TValue*, %struct.TValue** %38, align 8
  call void @luaV_finishget(%struct.lua_State* %1138, %struct.TValue* %1139, %struct.TValue* %1140, %union.StackValue* %1141, %struct.TValue* %1142)
  %1143 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1144 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1143, i32 0, i32 4
  %1145 = bitcast %union.anon* %1144 to %struct.anon*
  %1146 = getelementptr inbounds %struct.anon, %struct.anon* %1145, i32 0, i32 1
  %1147 = load i32, i32* %1146, align 8
  store i32 %1147, i32* %9, align 4
  br label %1148

; <label>:1148:                                   ; preds = %1127, %1111
  %1149 = load i32, i32* %9, align 4
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1151, label %1159

; <label>:1151:                                   ; preds = %1148
  %1152 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1153 = load i32*, i32** %8, align 8
  %1154 = call i32 @luaG_traceexec(%struct.lua_State* %1152, i32* %1153)
  store i32 %1154, i32* %9, align 4
  %1155 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1156 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1155, i32 0, i32 0
  %1157 = load %union.StackValue*, %union.StackValue** %1156, align 8
  %1158 = getelementptr inbounds %union.StackValue, %union.StackValue* %1157, i64 1
  store %union.StackValue* %1158, %union.StackValue** %7, align 8
  br label %1159

; <label>:1159:                                   ; preds = %1151, %1148
  %1160 = load i32*, i32** %8, align 8
  %1161 = getelementptr inbounds i32, i32* %1160, i32 1
  store i32* %1161, i32** %8, align 8
  %1162 = load i32, i32* %1160, align 4
  store i32 %1162, i32* %10, align 4
  %1163 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1164 = load i32, i32* %10, align 4
  %1165 = lshr i32 %1164, 7
  %1166 = and i32 %1165, 255
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds %union.StackValue, %union.StackValue* %1163, i64 %1167
  store %union.StackValue* %1168, %union.StackValue** %11, align 8
  %1169 = load i32, i32* %10, align 4
  %1170 = lshr i32 %1169, 0
  %1171 = and i32 %1170, 127
  %1172 = zext i32 %1171 to i64
  %1173 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1172
  %1174 = load i8*, i8** %1173, align 8
  br label %8998

; <label>:1175:                                   ; preds = %8998
  %1176 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1177 = load i32, i32* %10, align 4
  %1178 = lshr i32 %1177, 16
  %1179 = and i32 %1178, 255
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds %union.StackValue, %union.StackValue* %1176, i64 %1180
  %1182 = bitcast %union.StackValue* %1181 to %struct.TValue*
  store %struct.TValue* %1182, %struct.TValue** %45, align 8
  %1183 = load i32, i32* %10, align 4
  %1184 = lshr i32 %1183, 24
  %1185 = and i32 %1184, 255
  store i32 %1185, i32* %46, align 4
  %1186 = load %struct.TValue*, %struct.TValue** %45, align 8
  %1187 = getelementptr inbounds %struct.TValue, %struct.TValue* %1186, i32 0, i32 1
  %1188 = load i8, i8* %1187, align 8
  %1189 = zext i8 %1188 to i32
  %1190 = icmp eq i32 %1189, 69
  br i1 %1190, label %1192, label %1191

; <label>:1191:                                   ; preds = %1175
  store %struct.TValue* null, %struct.TValue** %44, align 8
  br i1 false, label %1238, label %1254

; <label>:1192:                                   ; preds = %1175
  %1193 = load i32, i32* %46, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = sub i64 %1194, 1
  %1196 = load %struct.TValue*, %struct.TValue** %45, align 8
  %1197 = getelementptr inbounds %struct.TValue, %struct.TValue* %1196, i32 0, i32 0
  %1198 = bitcast %union.Value* %1197 to %struct.GCObject**
  %1199 = load %struct.GCObject*, %struct.GCObject** %1198, align 8
  %1200 = bitcast %struct.GCObject* %1199 to %union.GCUnion*
  %1201 = bitcast %union.GCUnion* %1200 to %struct.Table*
  %1202 = getelementptr inbounds %struct.Table, %struct.Table* %1201, i32 0, i32 5
  %1203 = load i32, i32* %1202, align 4
  %1204 = zext i32 %1203 to i64
  %1205 = icmp ult i64 %1195, %1204
  br i1 %1205, label %1206, label %1219

; <label>:1206:                                   ; preds = %1192
  %1207 = load %struct.TValue*, %struct.TValue** %45, align 8
  %1208 = getelementptr inbounds %struct.TValue, %struct.TValue* %1207, i32 0, i32 0
  %1209 = bitcast %union.Value* %1208 to %struct.GCObject**
  %1210 = load %struct.GCObject*, %struct.GCObject** %1209, align 8
  %1211 = bitcast %struct.GCObject* %1210 to %union.GCUnion*
  %1212 = bitcast %union.GCUnion* %1211 to %struct.Table*
  %1213 = getelementptr inbounds %struct.Table, %struct.Table* %1212, i32 0, i32 6
  %1214 = load %struct.TValue*, %struct.TValue** %1213, align 8
  %1215 = load i32, i32* %46, align 4
  %1216 = sub nsw i32 %1215, 1
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds %struct.TValue, %struct.TValue* %1214, i64 %1217
  br label %1229

; <label>:1219:                                   ; preds = %1192
  %1220 = load %struct.TValue*, %struct.TValue** %45, align 8
  %1221 = getelementptr inbounds %struct.TValue, %struct.TValue* %1220, i32 0, i32 0
  %1222 = bitcast %union.Value* %1221 to %struct.GCObject**
  %1223 = load %struct.GCObject*, %struct.GCObject** %1222, align 8
  %1224 = bitcast %struct.GCObject* %1223 to %union.GCUnion*
  %1225 = bitcast %union.GCUnion* %1224 to %struct.Table*
  %1226 = load i32, i32* %46, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = call %struct.TValue* @luaH_getint(%struct.Table* %1225, i64 %1227)
  br label %1229

; <label>:1229:                                   ; preds = %1219, %1206
  %1230 = phi %struct.TValue* [ %1218, %1206 ], [ %1228, %1219 ]
  store %struct.TValue* %1230, %struct.TValue** %44, align 8
  %1231 = load %struct.TValue*, %struct.TValue** %44, align 8
  %1232 = getelementptr inbounds %struct.TValue, %struct.TValue* %1231, i32 0, i32 1
  %1233 = load i8, i8* %1232, align 8
  %1234 = zext i8 %1233 to i32
  %1235 = and i32 %1234, 15
  %1236 = icmp eq i32 %1235, 0
  %1237 = xor i1 %1236, true
  br i1 %1237, label %1238, label %1254

; <label>:1238:                                   ; preds = %1229, %1191
  %1239 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1240 = bitcast %union.StackValue* %1239 to %struct.TValue*
  store %struct.TValue* %1240, %struct.TValue** %47, align 8
  %1241 = load %struct.TValue*, %struct.TValue** %44, align 8
  store %struct.TValue* %1241, %struct.TValue** %48, align 8
  %1242 = load %struct.TValue*, %struct.TValue** %47, align 8
  %1243 = getelementptr inbounds %struct.TValue, %struct.TValue* %1242, i32 0, i32 0
  %1244 = load %struct.TValue*, %struct.TValue** %48, align 8
  %1245 = getelementptr inbounds %struct.TValue, %struct.TValue* %1244, i32 0, i32 0
  %1246 = bitcast %union.Value* %1243 to i8*
  %1247 = bitcast %union.Value* %1245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1246, i8* %1247, i64 8, i32 8, i1 false)
  %1248 = load %struct.TValue*, %struct.TValue** %48, align 8
  %1249 = getelementptr inbounds %struct.TValue, %struct.TValue* %1248, i32 0, i32 1
  %1250 = load i8, i8* %1249, align 8
  %1251 = load %struct.TValue*, %struct.TValue** %47, align 8
  %1252 = getelementptr inbounds %struct.TValue, %struct.TValue* %1251, i32 0, i32 1
  store i8 %1250, i8* %1252, align 8
  %1253 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %1281

; <label>:1254:                                   ; preds = %1229, %1191
  store %struct.TValue* %49, %struct.TValue** %50, align 8
  %1255 = load i32, i32* %46, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = load %struct.TValue*, %struct.TValue** %50, align 8
  %1258 = getelementptr inbounds %struct.TValue, %struct.TValue* %1257, i32 0, i32 0
  %1259 = bitcast %union.Value* %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  %1260 = load %struct.TValue*, %struct.TValue** %50, align 8
  %1261 = getelementptr inbounds %struct.TValue, %struct.TValue* %1260, i32 0, i32 1
  store i8 35, i8* %1261, align 8
  %1262 = load i32*, i32** %8, align 8
  %1263 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1264 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1263, i32 0, i32 4
  %1265 = bitcast %union.anon* %1264 to %struct.anon*
  %1266 = getelementptr inbounds %struct.anon, %struct.anon* %1265, i32 0, i32 0
  store i32* %1262, i32** %1266, align 8
  %1267 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1268 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1267, i32 0, i32 1
  %1269 = load %union.StackValue*, %union.StackValue** %1268, align 8
  %1270 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1271 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1270, i32 0, i32 6
  store %union.StackValue* %1269, %union.StackValue** %1271, align 8
  %1272 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1273 = load %struct.TValue*, %struct.TValue** %45, align 8
  %1274 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1275 = load %struct.TValue*, %struct.TValue** %44, align 8
  call void @luaV_finishget(%struct.lua_State* %1272, %struct.TValue* %1273, %struct.TValue* %49, %union.StackValue* %1274, %struct.TValue* %1275)
  %1276 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1277 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1276, i32 0, i32 4
  %1278 = bitcast %union.anon* %1277 to %struct.anon*
  %1279 = getelementptr inbounds %struct.anon, %struct.anon* %1278, i32 0, i32 1
  %1280 = load i32, i32* %1279, align 8
  store i32 %1280, i32* %9, align 4
  br label %1281

; <label>:1281:                                   ; preds = %1254, %1238
  %1282 = load i32, i32* %9, align 4
  %1283 = icmp ne i32 %1282, 0
  br i1 %1283, label %1284, label %1292

; <label>:1284:                                   ; preds = %1281
  %1285 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1286 = load i32*, i32** %8, align 8
  %1287 = call i32 @luaG_traceexec(%struct.lua_State* %1285, i32* %1286)
  store i32 %1287, i32* %9, align 4
  %1288 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1289 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1288, i32 0, i32 0
  %1290 = load %union.StackValue*, %union.StackValue** %1289, align 8
  %1291 = getelementptr inbounds %union.StackValue, %union.StackValue* %1290, i64 1
  store %union.StackValue* %1291, %union.StackValue** %7, align 8
  br label %1292

; <label>:1292:                                   ; preds = %1284, %1281
  %1293 = load i32*, i32** %8, align 8
  %1294 = getelementptr inbounds i32, i32* %1293, i32 1
  store i32* %1294, i32** %8, align 8
  %1295 = load i32, i32* %1293, align 4
  store i32 %1295, i32* %10, align 4
  %1296 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1297 = load i32, i32* %10, align 4
  %1298 = lshr i32 %1297, 7
  %1299 = and i32 %1298, 255
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds %union.StackValue, %union.StackValue* %1296, i64 %1300
  store %union.StackValue* %1301, %union.StackValue** %11, align 8
  %1302 = load i32, i32* %10, align 4
  %1303 = lshr i32 %1302, 0
  %1304 = and i32 %1303, 127
  %1305 = zext i32 %1304 to i64
  %1306 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1305
  %1307 = load i8*, i8** %1306, align 8
  br label %8998

; <label>:1308:                                   ; preds = %8998
  %1309 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1310 = load i32, i32* %10, align 4
  %1311 = lshr i32 %1310, 16
  %1312 = and i32 %1311, 255
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds %union.StackValue, %union.StackValue* %1309, i64 %1313
  %1315 = bitcast %union.StackValue* %1314 to %struct.TValue*
  store %struct.TValue* %1315, %struct.TValue** %52, align 8
  %1316 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1317 = load i32, i32* %10, align 4
  %1318 = lshr i32 %1317, 24
  %1319 = and i32 %1318, 255
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.TValue, %struct.TValue* %1316, i64 %1320
  store %struct.TValue* %1321, %struct.TValue** %53, align 8
  %1322 = load %struct.TValue*, %struct.TValue** %53, align 8
  %1323 = getelementptr inbounds %struct.TValue, %struct.TValue* %1322, i32 0, i32 0
  %1324 = bitcast %union.Value* %1323 to %struct.GCObject**
  %1325 = load %struct.GCObject*, %struct.GCObject** %1324, align 8
  %1326 = bitcast %struct.GCObject* %1325 to %union.GCUnion*
  %1327 = bitcast %union.GCUnion* %1326 to %struct.TString*
  store %struct.TString* %1327, %struct.TString** %54, align 8
  %1328 = load %struct.TValue*, %struct.TValue** %52, align 8
  %1329 = getelementptr inbounds %struct.TValue, %struct.TValue* %1328, i32 0, i32 1
  %1330 = load i8, i8* %1329, align 8
  %1331 = zext i8 %1330 to i32
  %1332 = icmp eq i32 %1331, 69
  br i1 %1332, label %1334, label %1333

; <label>:1333:                                   ; preds = %1308
  store %struct.TValue* null, %struct.TValue** %51, align 8
  br i1 false, label %1350, label %1366

; <label>:1334:                                   ; preds = %1308
  %1335 = load %struct.TValue*, %struct.TValue** %52, align 8
  %1336 = getelementptr inbounds %struct.TValue, %struct.TValue* %1335, i32 0, i32 0
  %1337 = bitcast %union.Value* %1336 to %struct.GCObject**
  %1338 = load %struct.GCObject*, %struct.GCObject** %1337, align 8
  %1339 = bitcast %struct.GCObject* %1338 to %union.GCUnion*
  %1340 = bitcast %union.GCUnion* %1339 to %struct.Table*
  %1341 = load %struct.TString*, %struct.TString** %54, align 8
  %1342 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %1340, %struct.TString* %1341)
  store %struct.TValue* %1342, %struct.TValue** %51, align 8
  %1343 = load %struct.TValue*, %struct.TValue** %51, align 8
  %1344 = getelementptr inbounds %struct.TValue, %struct.TValue* %1343, i32 0, i32 1
  %1345 = load i8, i8* %1344, align 8
  %1346 = zext i8 %1345 to i32
  %1347 = and i32 %1346, 15
  %1348 = icmp eq i32 %1347, 0
  %1349 = xor i1 %1348, true
  br i1 %1349, label %1350, label %1366

; <label>:1350:                                   ; preds = %1334, %1333
  %1351 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1352 = bitcast %union.StackValue* %1351 to %struct.TValue*
  store %struct.TValue* %1352, %struct.TValue** %55, align 8
  %1353 = load %struct.TValue*, %struct.TValue** %51, align 8
  store %struct.TValue* %1353, %struct.TValue** %56, align 8
  %1354 = load %struct.TValue*, %struct.TValue** %55, align 8
  %1355 = getelementptr inbounds %struct.TValue, %struct.TValue* %1354, i32 0, i32 0
  %1356 = load %struct.TValue*, %struct.TValue** %56, align 8
  %1357 = getelementptr inbounds %struct.TValue, %struct.TValue* %1356, i32 0, i32 0
  %1358 = bitcast %union.Value* %1355 to i8*
  %1359 = bitcast %union.Value* %1357 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1358, i8* %1359, i64 8, i32 8, i1 false)
  %1360 = load %struct.TValue*, %struct.TValue** %56, align 8
  %1361 = getelementptr inbounds %struct.TValue, %struct.TValue* %1360, i32 0, i32 1
  %1362 = load i8, i8* %1361, align 8
  %1363 = load %struct.TValue*, %struct.TValue** %55, align 8
  %1364 = getelementptr inbounds %struct.TValue, %struct.TValue* %1363, i32 0, i32 1
  store i8 %1362, i8* %1364, align 8
  %1365 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %1387

; <label>:1366:                                   ; preds = %1334, %1333
  %1367 = load i32*, i32** %8, align 8
  %1368 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1369 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1368, i32 0, i32 4
  %1370 = bitcast %union.anon* %1369 to %struct.anon*
  %1371 = getelementptr inbounds %struct.anon, %struct.anon* %1370, i32 0, i32 0
  store i32* %1367, i32** %1371, align 8
  %1372 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1373 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1372, i32 0, i32 1
  %1374 = load %union.StackValue*, %union.StackValue** %1373, align 8
  %1375 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1376 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1375, i32 0, i32 6
  store %union.StackValue* %1374, %union.StackValue** %1376, align 8
  %1377 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1378 = load %struct.TValue*, %struct.TValue** %52, align 8
  %1379 = load %struct.TValue*, %struct.TValue** %53, align 8
  %1380 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1381 = load %struct.TValue*, %struct.TValue** %51, align 8
  call void @luaV_finishget(%struct.lua_State* %1377, %struct.TValue* %1378, %struct.TValue* %1379, %union.StackValue* %1380, %struct.TValue* %1381)
  %1382 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1383 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1382, i32 0, i32 4
  %1384 = bitcast %union.anon* %1383 to %struct.anon*
  %1385 = getelementptr inbounds %struct.anon, %struct.anon* %1384, i32 0, i32 1
  %1386 = load i32, i32* %1385, align 8
  store i32 %1386, i32* %9, align 4
  br label %1387

; <label>:1387:                                   ; preds = %1366, %1350
  %1388 = load i32, i32* %9, align 4
  %1389 = icmp ne i32 %1388, 0
  br i1 %1389, label %1390, label %1398

; <label>:1390:                                   ; preds = %1387
  %1391 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1392 = load i32*, i32** %8, align 8
  %1393 = call i32 @luaG_traceexec(%struct.lua_State* %1391, i32* %1392)
  store i32 %1393, i32* %9, align 4
  %1394 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1395 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1394, i32 0, i32 0
  %1396 = load %union.StackValue*, %union.StackValue** %1395, align 8
  %1397 = getelementptr inbounds %union.StackValue, %union.StackValue* %1396, i64 1
  store %union.StackValue* %1397, %union.StackValue** %7, align 8
  br label %1398

; <label>:1398:                                   ; preds = %1390, %1387
  %1399 = load i32*, i32** %8, align 8
  %1400 = getelementptr inbounds i32, i32* %1399, i32 1
  store i32* %1400, i32** %8, align 8
  %1401 = load i32, i32* %1399, align 4
  store i32 %1401, i32* %10, align 4
  %1402 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1403 = load i32, i32* %10, align 4
  %1404 = lshr i32 %1403, 7
  %1405 = and i32 %1404, 255
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds %union.StackValue, %union.StackValue* %1402, i64 %1406
  store %union.StackValue* %1407, %union.StackValue** %11, align 8
  %1408 = load i32, i32* %10, align 4
  %1409 = lshr i32 %1408, 0
  %1410 = and i32 %1409, 127
  %1411 = zext i32 %1410 to i64
  %1412 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1411
  %1413 = load i8*, i8** %1412, align 8
  br label %8998

; <label>:1414:                                   ; preds = %8998
  %1415 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %1416 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1415, i32 0, i32 6
  %1417 = load i32, i32* %10, align 4
  %1418 = lshr i32 %1417, 7
  %1419 = and i32 %1418, 255
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %1416, i64 0, i64 %1420
  %1422 = load %struct.UpVal*, %struct.UpVal** %1421, align 8
  %1423 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1422, i32 0, i32 3
  %1424 = load %struct.TValue*, %struct.TValue** %1423, align 8
  store %struct.TValue* %1424, %struct.TValue** %58, align 8
  %1425 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1426 = load i32, i32* %10, align 4
  %1427 = lshr i32 %1426, 16
  %1428 = and i32 %1427, 255
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds %struct.TValue, %struct.TValue* %1425, i64 %1429
  store %struct.TValue* %1430, %struct.TValue** %59, align 8
  %1431 = load i32, i32* %10, align 4
  %1432 = and i32 %1431, 32768
  %1433 = icmp ne i32 %1432, 0
  br i1 %1433, label %1434, label %1441

; <label>:1434:                                   ; preds = %1414
  %1435 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1436 = load i32, i32* %10, align 4
  %1437 = lshr i32 %1436, 24
  %1438 = and i32 %1437, 255
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds %struct.TValue, %struct.TValue* %1435, i64 %1439
  br label %1449

; <label>:1441:                                   ; preds = %1414
  %1442 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1443 = load i32, i32* %10, align 4
  %1444 = lshr i32 %1443, 24
  %1445 = and i32 %1444, 255
  %1446 = sext i32 %1445 to i64
  %1447 = getelementptr inbounds %union.StackValue, %union.StackValue* %1442, i64 %1446
  %1448 = bitcast %union.StackValue* %1447 to %struct.TValue*
  br label %1449

; <label>:1449:                                   ; preds = %1441, %1434
  %1450 = phi %struct.TValue* [ %1440, %1434 ], [ %1448, %1441 ]
  store %struct.TValue* %1450, %struct.TValue** %60, align 8
  %1451 = load %struct.TValue*, %struct.TValue** %59, align 8
  %1452 = getelementptr inbounds %struct.TValue, %struct.TValue* %1451, i32 0, i32 0
  %1453 = bitcast %union.Value* %1452 to %struct.GCObject**
  %1454 = load %struct.GCObject*, %struct.GCObject** %1453, align 8
  %1455 = bitcast %struct.GCObject* %1454 to %union.GCUnion*
  %1456 = bitcast %union.GCUnion* %1455 to %struct.TString*
  store %struct.TString* %1456, %struct.TString** %61, align 8
  %1457 = load %struct.TValue*, %struct.TValue** %58, align 8
  %1458 = getelementptr inbounds %struct.TValue, %struct.TValue* %1457, i32 0, i32 1
  %1459 = load i8, i8* %1458, align 8
  %1460 = zext i8 %1459 to i32
  %1461 = icmp eq i32 %1460, 69
  br i1 %1461, label %1463, label %1462

; <label>:1462:                                   ; preds = %1449
  store %struct.TValue* null, %struct.TValue** %57, align 8
  br i1 false, label %1479, label %1528

; <label>:1463:                                   ; preds = %1449
  %1464 = load %struct.TValue*, %struct.TValue** %58, align 8
  %1465 = getelementptr inbounds %struct.TValue, %struct.TValue* %1464, i32 0, i32 0
  %1466 = bitcast %union.Value* %1465 to %struct.GCObject**
  %1467 = load %struct.GCObject*, %struct.GCObject** %1466, align 8
  %1468 = bitcast %struct.GCObject* %1467 to %union.GCUnion*
  %1469 = bitcast %union.GCUnion* %1468 to %struct.Table*
  %1470 = load %struct.TString*, %struct.TString** %61, align 8
  %1471 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %1469, %struct.TString* %1470)
  store %struct.TValue* %1471, %struct.TValue** %57, align 8
  %1472 = load %struct.TValue*, %struct.TValue** %57, align 8
  %1473 = getelementptr inbounds %struct.TValue, %struct.TValue* %1472, i32 0, i32 1
  %1474 = load i8, i8* %1473, align 8
  %1475 = zext i8 %1474 to i32
  %1476 = and i32 %1475, 15
  %1477 = icmp eq i32 %1476, 0
  %1478 = xor i1 %1477, true
  br i1 %1478, label %1479, label %1528

; <label>:1479:                                   ; preds = %1463, %1462
  %1480 = load %struct.TValue*, %struct.TValue** %57, align 8
  store %struct.TValue* %1480, %struct.TValue** %62, align 8
  %1481 = load %struct.TValue*, %struct.TValue** %60, align 8
  store %struct.TValue* %1481, %struct.TValue** %63, align 8
  %1482 = load %struct.TValue*, %struct.TValue** %62, align 8
  %1483 = getelementptr inbounds %struct.TValue, %struct.TValue* %1482, i32 0, i32 0
  %1484 = load %struct.TValue*, %struct.TValue** %63, align 8
  %1485 = getelementptr inbounds %struct.TValue, %struct.TValue* %1484, i32 0, i32 0
  %1486 = bitcast %union.Value* %1483 to i8*
  %1487 = bitcast %union.Value* %1485 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1486, i8* %1487, i64 8, i32 8, i1 false)
  %1488 = load %struct.TValue*, %struct.TValue** %63, align 8
  %1489 = getelementptr inbounds %struct.TValue, %struct.TValue* %1488, i32 0, i32 1
  %1490 = load i8, i8* %1489, align 8
  %1491 = load %struct.TValue*, %struct.TValue** %62, align 8
  %1492 = getelementptr inbounds %struct.TValue, %struct.TValue* %1491, i32 0, i32 1
  store i8 %1490, i8* %1492, align 8
  %1493 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1494 = load %struct.TValue*, %struct.TValue** %60, align 8
  %1495 = getelementptr inbounds %struct.TValue, %struct.TValue* %1494, i32 0, i32 1
  %1496 = load i8, i8* %1495, align 8
  %1497 = zext i8 %1496 to i32
  %1498 = and i32 %1497, 64
  %1499 = icmp ne i32 %1498, 0
  br i1 %1499, label %1500, label %1526

; <label>:1500:                                   ; preds = %1479
  %1501 = load %struct.TValue*, %struct.TValue** %58, align 8
  %1502 = getelementptr inbounds %struct.TValue, %struct.TValue* %1501, i32 0, i32 0
  %1503 = bitcast %union.Value* %1502 to %struct.GCObject**
  %1504 = load %struct.GCObject*, %struct.GCObject** %1503, align 8
  %1505 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1504, i32 0, i32 2
  %1506 = load i8, i8* %1505, align 1
  %1507 = zext i8 %1506 to i32
  %1508 = and i32 %1507, 32
  %1509 = icmp ne i32 %1508, 0
  br i1 %1509, label %1510, label %1526

; <label>:1510:                                   ; preds = %1500
  %1511 = load %struct.TValue*, %struct.TValue** %60, align 8
  %1512 = getelementptr inbounds %struct.TValue, %struct.TValue* %1511, i32 0, i32 0
  %1513 = bitcast %union.Value* %1512 to %struct.GCObject**
  %1514 = load %struct.GCObject*, %struct.GCObject** %1513, align 8
  %1515 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1514, i32 0, i32 2
  %1516 = load i8, i8* %1515, align 1
  %1517 = zext i8 %1516 to i32
  %1518 = and i32 %1517, 24
  %1519 = icmp ne i32 %1518, 0
  br i1 %1519, label %1520, label %1526

; <label>:1520:                                   ; preds = %1510
  %1521 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1522 = load %struct.TValue*, %struct.TValue** %58, align 8
  %1523 = getelementptr inbounds %struct.TValue, %struct.TValue* %1522, i32 0, i32 0
  %1524 = bitcast %union.Value* %1523 to %struct.GCObject**
  %1525 = load %struct.GCObject*, %struct.GCObject** %1524, align 8
  call void @luaC_barrierback_(%struct.lua_State* %1521, %struct.GCObject* %1525)
  br label %1527

; <label>:1526:                                   ; preds = %1510, %1500, %1479
  br label %1527

; <label>:1527:                                   ; preds = %1526, %1520
  br label %1549

; <label>:1528:                                   ; preds = %1463, %1462
  %1529 = load i32*, i32** %8, align 8
  %1530 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1531 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1530, i32 0, i32 4
  %1532 = bitcast %union.anon* %1531 to %struct.anon*
  %1533 = getelementptr inbounds %struct.anon, %struct.anon* %1532, i32 0, i32 0
  store i32* %1529, i32** %1533, align 8
  %1534 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1535 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1534, i32 0, i32 1
  %1536 = load %union.StackValue*, %union.StackValue** %1535, align 8
  %1537 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1538 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1537, i32 0, i32 6
  store %union.StackValue* %1536, %union.StackValue** %1538, align 8
  %1539 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1540 = load %struct.TValue*, %struct.TValue** %58, align 8
  %1541 = load %struct.TValue*, %struct.TValue** %59, align 8
  %1542 = load %struct.TValue*, %struct.TValue** %60, align 8
  %1543 = load %struct.TValue*, %struct.TValue** %57, align 8
  call void @luaV_finishset(%struct.lua_State* %1539, %struct.TValue* %1540, %struct.TValue* %1541, %struct.TValue* %1542, %struct.TValue* %1543)
  %1544 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1545 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1544, i32 0, i32 4
  %1546 = bitcast %union.anon* %1545 to %struct.anon*
  %1547 = getelementptr inbounds %struct.anon, %struct.anon* %1546, i32 0, i32 1
  %1548 = load i32, i32* %1547, align 8
  store i32 %1548, i32* %9, align 4
  br label %1549

; <label>:1549:                                   ; preds = %1528, %1527
  %1550 = load i32, i32* %9, align 4
  %1551 = icmp ne i32 %1550, 0
  br i1 %1551, label %1552, label %1560

; <label>:1552:                                   ; preds = %1549
  %1553 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1554 = load i32*, i32** %8, align 8
  %1555 = call i32 @luaG_traceexec(%struct.lua_State* %1553, i32* %1554)
  store i32 %1555, i32* %9, align 4
  %1556 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1557 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1556, i32 0, i32 0
  %1558 = load %union.StackValue*, %union.StackValue** %1557, align 8
  %1559 = getelementptr inbounds %union.StackValue, %union.StackValue* %1558, i64 1
  store %union.StackValue* %1559, %union.StackValue** %7, align 8
  br label %1560

; <label>:1560:                                   ; preds = %1552, %1549
  %1561 = load i32*, i32** %8, align 8
  %1562 = getelementptr inbounds i32, i32* %1561, i32 1
  store i32* %1562, i32** %8, align 8
  %1563 = load i32, i32* %1561, align 4
  store i32 %1563, i32* %10, align 4
  %1564 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1565 = load i32, i32* %10, align 4
  %1566 = lshr i32 %1565, 7
  %1567 = and i32 %1566, 255
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds %union.StackValue, %union.StackValue* %1564, i64 %1568
  store %union.StackValue* %1569, %union.StackValue** %11, align 8
  %1570 = load i32, i32* %10, align 4
  %1571 = lshr i32 %1570, 0
  %1572 = and i32 %1571, 127
  %1573 = zext i32 %1572 to i64
  %1574 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1573
  %1575 = load i8*, i8** %1574, align 8
  br label %8998

; <label>:1576:                                   ; preds = %8998
  %1577 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1578 = load i32, i32* %10, align 4
  %1579 = lshr i32 %1578, 16
  %1580 = and i32 %1579, 255
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds %union.StackValue, %union.StackValue* %1577, i64 %1581
  %1583 = bitcast %union.StackValue* %1582 to %struct.TValue*
  store %struct.TValue* %1583, %struct.TValue** %65, align 8
  %1584 = load i32, i32* %10, align 4
  %1585 = and i32 %1584, 32768
  %1586 = icmp ne i32 %1585, 0
  br i1 %1586, label %1587, label %1594

; <label>:1587:                                   ; preds = %1576
  %1588 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1589 = load i32, i32* %10, align 4
  %1590 = lshr i32 %1589, 24
  %1591 = and i32 %1590, 255
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds %struct.TValue, %struct.TValue* %1588, i64 %1592
  br label %1602

; <label>:1594:                                   ; preds = %1576
  %1595 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1596 = load i32, i32* %10, align 4
  %1597 = lshr i32 %1596, 24
  %1598 = and i32 %1597, 255
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds %union.StackValue, %union.StackValue* %1595, i64 %1599
  %1601 = bitcast %union.StackValue* %1600 to %struct.TValue*
  br label %1602

; <label>:1602:                                   ; preds = %1594, %1587
  %1603 = phi %struct.TValue* [ %1593, %1587 ], [ %1601, %1594 ]
  store %struct.TValue* %1603, %struct.TValue** %66, align 8
  %1604 = load %struct.TValue*, %struct.TValue** %65, align 8
  %1605 = getelementptr inbounds %struct.TValue, %struct.TValue* %1604, i32 0, i32 1
  %1606 = load i8, i8* %1605, align 8
  %1607 = zext i8 %1606 to i32
  %1608 = icmp eq i32 %1607, 35
  br i1 %1608, label %1609, label %1671

; <label>:1609:                                   ; preds = %1602
  %1610 = load %struct.TValue*, %struct.TValue** %65, align 8
  %1611 = getelementptr inbounds %struct.TValue, %struct.TValue* %1610, i32 0, i32 0
  %1612 = bitcast %union.Value* %1611 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %67, align 8
  %1614 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1615 = bitcast %union.StackValue* %1614 to %struct.TValue*
  %1616 = getelementptr inbounds %struct.TValue, %struct.TValue* %1615, i32 0, i32 1
  %1617 = load i8, i8* %1616, align 8
  %1618 = zext i8 %1617 to i32
  %1619 = icmp eq i32 %1618, 69
  br i1 %1619, label %1621, label %1620

; <label>:1620:                                   ; preds = %1609
  store %struct.TValue* null, %struct.TValue** %64, align 8
  br label %1668

; <label>:1621:                                   ; preds = %1609
  %1622 = load i64, i64* %67, align 8
  %1623 = sub i64 %1622, 1
  %1624 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1625 = bitcast %union.StackValue* %1624 to %struct.TValue*
  %1626 = getelementptr inbounds %struct.TValue, %struct.TValue* %1625, i32 0, i32 0
  %1627 = bitcast %union.Value* %1626 to %struct.GCObject**
  %1628 = load %struct.GCObject*, %struct.GCObject** %1627, align 8
  %1629 = bitcast %struct.GCObject* %1628 to %union.GCUnion*
  %1630 = bitcast %union.GCUnion* %1629 to %struct.Table*
  %1631 = getelementptr inbounds %struct.Table, %struct.Table* %1630, i32 0, i32 5
  %1632 = load i32, i32* %1631, align 4
  %1633 = zext i32 %1632 to i64
  %1634 = icmp ult i64 %1623, %1633
  br i1 %1634, label %1635, label %1648

; <label>:1635:                                   ; preds = %1621
  %1636 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1637 = bitcast %union.StackValue* %1636 to %struct.TValue*
  %1638 = getelementptr inbounds %struct.TValue, %struct.TValue* %1637, i32 0, i32 0
  %1639 = bitcast %union.Value* %1638 to %struct.GCObject**
  %1640 = load %struct.GCObject*, %struct.GCObject** %1639, align 8
  %1641 = bitcast %struct.GCObject* %1640 to %union.GCUnion*
  %1642 = bitcast %union.GCUnion* %1641 to %struct.Table*
  %1643 = getelementptr inbounds %struct.Table, %struct.Table* %1642, i32 0, i32 6
  %1644 = load %struct.TValue*, %struct.TValue** %1643, align 8
  %1645 = load i64, i64* %67, align 8
  %1646 = sub i64 %1645, 1
  %1647 = getelementptr inbounds %struct.TValue, %struct.TValue* %1644, i64 %1646
  br label %1658

; <label>:1648:                                   ; preds = %1621
  %1649 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1650 = bitcast %union.StackValue* %1649 to %struct.TValue*
  %1651 = getelementptr inbounds %struct.TValue, %struct.TValue* %1650, i32 0, i32 0
  %1652 = bitcast %union.Value* %1651 to %struct.GCObject**
  %1653 = load %struct.GCObject*, %struct.GCObject** %1652, align 8
  %1654 = bitcast %struct.GCObject* %1653 to %union.GCUnion*
  %1655 = bitcast %union.GCUnion* %1654 to %struct.Table*
  %1656 = load i64, i64* %67, align 8
  %1657 = call %struct.TValue* @luaH_getint(%struct.Table* %1655, i64 %1656)
  br label %1658

; <label>:1658:                                   ; preds = %1648, %1635
  %1659 = phi %struct.TValue* [ %1647, %1635 ], [ %1657, %1648 ]
  store %struct.TValue* %1659, %struct.TValue** %64, align 8
  %1660 = load %struct.TValue*, %struct.TValue** %64, align 8
  %1661 = getelementptr inbounds %struct.TValue, %struct.TValue* %1660, i32 0, i32 1
  %1662 = load i8, i8* %1661, align 8
  %1663 = zext i8 %1662 to i32
  %1664 = and i32 %1663, 15
  %1665 = icmp eq i32 %1664, 0
  %1666 = xor i1 %1665, true
  %1667 = zext i1 %1666 to i32
  br label %1668

; <label>:1668:                                   ; preds = %1658, %1620
  %1669 = phi i32 [ 0, %1620 ], [ %1667, %1658 ]
  %1670 = icmp ne i32 %1669, 0
  br i1 %1670, label %1696, label %1747

; <label>:1671:                                   ; preds = %1602
  %1672 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1673 = bitcast %union.StackValue* %1672 to %struct.TValue*
  %1674 = getelementptr inbounds %struct.TValue, %struct.TValue* %1673, i32 0, i32 1
  %1675 = load i8, i8* %1674, align 8
  %1676 = zext i8 %1675 to i32
  %1677 = icmp eq i32 %1676, 69
  br i1 %1677, label %1679, label %1678

; <label>:1678:                                   ; preds = %1671
  store %struct.TValue* null, %struct.TValue** %64, align 8
  br i1 false, label %1696, label %1747

; <label>:1679:                                   ; preds = %1671
  %1680 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1681 = bitcast %union.StackValue* %1680 to %struct.TValue*
  %1682 = getelementptr inbounds %struct.TValue, %struct.TValue* %1681, i32 0, i32 0
  %1683 = bitcast %union.Value* %1682 to %struct.GCObject**
  %1684 = load %struct.GCObject*, %struct.GCObject** %1683, align 8
  %1685 = bitcast %struct.GCObject* %1684 to %union.GCUnion*
  %1686 = bitcast %union.GCUnion* %1685 to %struct.Table*
  %1687 = load %struct.TValue*, %struct.TValue** %65, align 8
  %1688 = call %struct.TValue* @luaH_get(%struct.Table* %1686, %struct.TValue* %1687)
  store %struct.TValue* %1688, %struct.TValue** %64, align 8
  %1689 = load %struct.TValue*, %struct.TValue** %64, align 8
  %1690 = getelementptr inbounds %struct.TValue, %struct.TValue* %1689, i32 0, i32 1
  %1691 = load i8, i8* %1690, align 8
  %1692 = zext i8 %1691 to i32
  %1693 = and i32 %1692, 15
  %1694 = icmp eq i32 %1693, 0
  %1695 = xor i1 %1694, true
  br i1 %1695, label %1696, label %1747

; <label>:1696:                                   ; preds = %1679, %1678, %1668
  %1697 = load %struct.TValue*, %struct.TValue** %64, align 8
  store %struct.TValue* %1697, %struct.TValue** %68, align 8
  %1698 = load %struct.TValue*, %struct.TValue** %66, align 8
  store %struct.TValue* %1698, %struct.TValue** %69, align 8
  %1699 = load %struct.TValue*, %struct.TValue** %68, align 8
  %1700 = getelementptr inbounds %struct.TValue, %struct.TValue* %1699, i32 0, i32 0
  %1701 = load %struct.TValue*, %struct.TValue** %69, align 8
  %1702 = getelementptr inbounds %struct.TValue, %struct.TValue* %1701, i32 0, i32 0
  %1703 = bitcast %union.Value* %1700 to i8*
  %1704 = bitcast %union.Value* %1702 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1703, i8* %1704, i64 8, i32 8, i1 false)
  %1705 = load %struct.TValue*, %struct.TValue** %69, align 8
  %1706 = getelementptr inbounds %struct.TValue, %struct.TValue* %1705, i32 0, i32 1
  %1707 = load i8, i8* %1706, align 8
  %1708 = load %struct.TValue*, %struct.TValue** %68, align 8
  %1709 = getelementptr inbounds %struct.TValue, %struct.TValue* %1708, i32 0, i32 1
  store i8 %1707, i8* %1709, align 8
  %1710 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1711 = load %struct.TValue*, %struct.TValue** %66, align 8
  %1712 = getelementptr inbounds %struct.TValue, %struct.TValue* %1711, i32 0, i32 1
  %1713 = load i8, i8* %1712, align 8
  %1714 = zext i8 %1713 to i32
  %1715 = and i32 %1714, 64
  %1716 = icmp ne i32 %1715, 0
  br i1 %1716, label %1717, label %1745

; <label>:1717:                                   ; preds = %1696
  %1718 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1719 = bitcast %union.StackValue* %1718 to %struct.TValue*
  %1720 = getelementptr inbounds %struct.TValue, %struct.TValue* %1719, i32 0, i32 0
  %1721 = bitcast %union.Value* %1720 to %struct.GCObject**
  %1722 = load %struct.GCObject*, %struct.GCObject** %1721, align 8
  %1723 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1722, i32 0, i32 2
  %1724 = load i8, i8* %1723, align 1
  %1725 = zext i8 %1724 to i32
  %1726 = and i32 %1725, 32
  %1727 = icmp ne i32 %1726, 0
  br i1 %1727, label %1728, label %1745

; <label>:1728:                                   ; preds = %1717
  %1729 = load %struct.TValue*, %struct.TValue** %66, align 8
  %1730 = getelementptr inbounds %struct.TValue, %struct.TValue* %1729, i32 0, i32 0
  %1731 = bitcast %union.Value* %1730 to %struct.GCObject**
  %1732 = load %struct.GCObject*, %struct.GCObject** %1731, align 8
  %1733 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1732, i32 0, i32 2
  %1734 = load i8, i8* %1733, align 1
  %1735 = zext i8 %1734 to i32
  %1736 = and i32 %1735, 24
  %1737 = icmp ne i32 %1736, 0
  br i1 %1737, label %1738, label %1745

; <label>:1738:                                   ; preds = %1728
  %1739 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1740 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1741 = bitcast %union.StackValue* %1740 to %struct.TValue*
  %1742 = getelementptr inbounds %struct.TValue, %struct.TValue* %1741, i32 0, i32 0
  %1743 = bitcast %union.Value* %1742 to %struct.GCObject**
  %1744 = load %struct.GCObject*, %struct.GCObject** %1743, align 8
  call void @luaC_barrierback_(%struct.lua_State* %1739, %struct.GCObject* %1744)
  br label %1746

; <label>:1745:                                   ; preds = %1728, %1717, %1696
  br label %1746

; <label>:1746:                                   ; preds = %1745, %1738
  br label %1769

; <label>:1747:                                   ; preds = %1679, %1678, %1668
  %1748 = load i32*, i32** %8, align 8
  %1749 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1750 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1749, i32 0, i32 4
  %1751 = bitcast %union.anon* %1750 to %struct.anon*
  %1752 = getelementptr inbounds %struct.anon, %struct.anon* %1751, i32 0, i32 0
  store i32* %1748, i32** %1752, align 8
  %1753 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1754 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1753, i32 0, i32 1
  %1755 = load %union.StackValue*, %union.StackValue** %1754, align 8
  %1756 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1757 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1756, i32 0, i32 6
  store %union.StackValue* %1755, %union.StackValue** %1757, align 8
  %1758 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1759 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1760 = bitcast %union.StackValue* %1759 to %struct.TValue*
  %1761 = load %struct.TValue*, %struct.TValue** %65, align 8
  %1762 = load %struct.TValue*, %struct.TValue** %66, align 8
  %1763 = load %struct.TValue*, %struct.TValue** %64, align 8
  call void @luaV_finishset(%struct.lua_State* %1758, %struct.TValue* %1760, %struct.TValue* %1761, %struct.TValue* %1762, %struct.TValue* %1763)
  %1764 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1765 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1764, i32 0, i32 4
  %1766 = bitcast %union.anon* %1765 to %struct.anon*
  %1767 = getelementptr inbounds %struct.anon, %struct.anon* %1766, i32 0, i32 1
  %1768 = load i32, i32* %1767, align 8
  store i32 %1768, i32* %9, align 4
  br label %1769

; <label>:1769:                                   ; preds = %1747, %1746
  %1770 = load i32, i32* %9, align 4
  %1771 = icmp ne i32 %1770, 0
  br i1 %1771, label %1772, label %1780

; <label>:1772:                                   ; preds = %1769
  %1773 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1774 = load i32*, i32** %8, align 8
  %1775 = call i32 @luaG_traceexec(%struct.lua_State* %1773, i32* %1774)
  store i32 %1775, i32* %9, align 4
  %1776 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1777 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1776, i32 0, i32 0
  %1778 = load %union.StackValue*, %union.StackValue** %1777, align 8
  %1779 = getelementptr inbounds %union.StackValue, %union.StackValue* %1778, i64 1
  store %union.StackValue* %1779, %union.StackValue** %7, align 8
  br label %1780

; <label>:1780:                                   ; preds = %1772, %1769
  %1781 = load i32*, i32** %8, align 8
  %1782 = getelementptr inbounds i32, i32* %1781, i32 1
  store i32* %1782, i32** %8, align 8
  %1783 = load i32, i32* %1781, align 4
  store i32 %1783, i32* %10, align 4
  %1784 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1785 = load i32, i32* %10, align 4
  %1786 = lshr i32 %1785, 7
  %1787 = and i32 %1786, 255
  %1788 = sext i32 %1787 to i64
  %1789 = getelementptr inbounds %union.StackValue, %union.StackValue* %1784, i64 %1788
  store %union.StackValue* %1789, %union.StackValue** %11, align 8
  %1790 = load i32, i32* %10, align 4
  %1791 = lshr i32 %1790, 0
  %1792 = and i32 %1791, 127
  %1793 = zext i32 %1792 to i64
  %1794 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1793
  %1795 = load i8*, i8** %1794, align 8
  br label %8998

; <label>:1796:                                   ; preds = %8998
  %1797 = load i32, i32* %10, align 4
  %1798 = lshr i32 %1797, 16
  %1799 = and i32 %1798, 255
  store i32 %1799, i32* %71, align 4
  %1800 = load i32, i32* %10, align 4
  %1801 = and i32 %1800, 32768
  %1802 = icmp ne i32 %1801, 0
  br i1 %1802, label %1803, label %1810

; <label>:1803:                                   ; preds = %1796
  %1804 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1805 = load i32, i32* %10, align 4
  %1806 = lshr i32 %1805, 24
  %1807 = and i32 %1806, 255
  %1808 = sext i32 %1807 to i64
  %1809 = getelementptr inbounds %struct.TValue, %struct.TValue* %1804, i64 %1808
  br label %1818

; <label>:1810:                                   ; preds = %1796
  %1811 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1812 = load i32, i32* %10, align 4
  %1813 = lshr i32 %1812, 24
  %1814 = and i32 %1813, 255
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds %union.StackValue, %union.StackValue* %1811, i64 %1815
  %1817 = bitcast %union.StackValue* %1816 to %struct.TValue*
  br label %1818

; <label>:1818:                                   ; preds = %1810, %1803
  %1819 = phi %struct.TValue* [ %1809, %1803 ], [ %1817, %1810 ]
  store %struct.TValue* %1819, %struct.TValue** %72, align 8
  %1820 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1821 = bitcast %union.StackValue* %1820 to %struct.TValue*
  %1822 = getelementptr inbounds %struct.TValue, %struct.TValue* %1821, i32 0, i32 1
  %1823 = load i8, i8* %1822, align 8
  %1824 = zext i8 %1823 to i32
  %1825 = icmp eq i32 %1824, 69
  br i1 %1825, label %1827, label %1826

; <label>:1826:                                   ; preds = %1818
  store %struct.TValue* null, %struct.TValue** %70, align 8
  br i1 false, label %1876, label %1927

; <label>:1827:                                   ; preds = %1818
  %1828 = load i32, i32* %71, align 4
  %1829 = sext i32 %1828 to i64
  %1830 = sub i64 %1829, 1
  %1831 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1832 = bitcast %union.StackValue* %1831 to %struct.TValue*
  %1833 = getelementptr inbounds %struct.TValue, %struct.TValue* %1832, i32 0, i32 0
  %1834 = bitcast %union.Value* %1833 to %struct.GCObject**
  %1835 = load %struct.GCObject*, %struct.GCObject** %1834, align 8
  %1836 = bitcast %struct.GCObject* %1835 to %union.GCUnion*
  %1837 = bitcast %union.GCUnion* %1836 to %struct.Table*
  %1838 = getelementptr inbounds %struct.Table, %struct.Table* %1837, i32 0, i32 5
  %1839 = load i32, i32* %1838, align 4
  %1840 = zext i32 %1839 to i64
  %1841 = icmp ult i64 %1830, %1840
  br i1 %1841, label %1842, label %1856

; <label>:1842:                                   ; preds = %1827
  %1843 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1844 = bitcast %union.StackValue* %1843 to %struct.TValue*
  %1845 = getelementptr inbounds %struct.TValue, %struct.TValue* %1844, i32 0, i32 0
  %1846 = bitcast %union.Value* %1845 to %struct.GCObject**
  %1847 = load %struct.GCObject*, %struct.GCObject** %1846, align 8
  %1848 = bitcast %struct.GCObject* %1847 to %union.GCUnion*
  %1849 = bitcast %union.GCUnion* %1848 to %struct.Table*
  %1850 = getelementptr inbounds %struct.Table, %struct.Table* %1849, i32 0, i32 6
  %1851 = load %struct.TValue*, %struct.TValue** %1850, align 8
  %1852 = load i32, i32* %71, align 4
  %1853 = sub nsw i32 %1852, 1
  %1854 = sext i32 %1853 to i64
  %1855 = getelementptr inbounds %struct.TValue, %struct.TValue* %1851, i64 %1854
  br label %1867

; <label>:1856:                                   ; preds = %1827
  %1857 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1858 = bitcast %union.StackValue* %1857 to %struct.TValue*
  %1859 = getelementptr inbounds %struct.TValue, %struct.TValue* %1858, i32 0, i32 0
  %1860 = bitcast %union.Value* %1859 to %struct.GCObject**
  %1861 = load %struct.GCObject*, %struct.GCObject** %1860, align 8
  %1862 = bitcast %struct.GCObject* %1861 to %union.GCUnion*
  %1863 = bitcast %union.GCUnion* %1862 to %struct.Table*
  %1864 = load i32, i32* %71, align 4
  %1865 = sext i32 %1864 to i64
  %1866 = call %struct.TValue* @luaH_getint(%struct.Table* %1863, i64 %1865)
  br label %1867

; <label>:1867:                                   ; preds = %1856, %1842
  %1868 = phi %struct.TValue* [ %1855, %1842 ], [ %1866, %1856 ]
  store %struct.TValue* %1868, %struct.TValue** %70, align 8
  %1869 = load %struct.TValue*, %struct.TValue** %70, align 8
  %1870 = getelementptr inbounds %struct.TValue, %struct.TValue* %1869, i32 0, i32 1
  %1871 = load i8, i8* %1870, align 8
  %1872 = zext i8 %1871 to i32
  %1873 = and i32 %1872, 15
  %1874 = icmp eq i32 %1873, 0
  %1875 = xor i1 %1874, true
  br i1 %1875, label %1876, label %1927

; <label>:1876:                                   ; preds = %1867, %1826
  %1877 = load %struct.TValue*, %struct.TValue** %70, align 8
  store %struct.TValue* %1877, %struct.TValue** %73, align 8
  %1878 = load %struct.TValue*, %struct.TValue** %72, align 8
  store %struct.TValue* %1878, %struct.TValue** %74, align 8
  %1879 = load %struct.TValue*, %struct.TValue** %73, align 8
  %1880 = getelementptr inbounds %struct.TValue, %struct.TValue* %1879, i32 0, i32 0
  %1881 = load %struct.TValue*, %struct.TValue** %74, align 8
  %1882 = getelementptr inbounds %struct.TValue, %struct.TValue* %1881, i32 0, i32 0
  %1883 = bitcast %union.Value* %1880 to i8*
  %1884 = bitcast %union.Value* %1882 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1883, i8* %1884, i64 8, i32 8, i1 false)
  %1885 = load %struct.TValue*, %struct.TValue** %74, align 8
  %1886 = getelementptr inbounds %struct.TValue, %struct.TValue* %1885, i32 0, i32 1
  %1887 = load i8, i8* %1886, align 8
  %1888 = load %struct.TValue*, %struct.TValue** %73, align 8
  %1889 = getelementptr inbounds %struct.TValue, %struct.TValue* %1888, i32 0, i32 1
  store i8 %1887, i8* %1889, align 8
  %1890 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1891 = load %struct.TValue*, %struct.TValue** %72, align 8
  %1892 = getelementptr inbounds %struct.TValue, %struct.TValue* %1891, i32 0, i32 1
  %1893 = load i8, i8* %1892, align 8
  %1894 = zext i8 %1893 to i32
  %1895 = and i32 %1894, 64
  %1896 = icmp ne i32 %1895, 0
  br i1 %1896, label %1897, label %1925

; <label>:1897:                                   ; preds = %1876
  %1898 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1899 = bitcast %union.StackValue* %1898 to %struct.TValue*
  %1900 = getelementptr inbounds %struct.TValue, %struct.TValue* %1899, i32 0, i32 0
  %1901 = bitcast %union.Value* %1900 to %struct.GCObject**
  %1902 = load %struct.GCObject*, %struct.GCObject** %1901, align 8
  %1903 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1902, i32 0, i32 2
  %1904 = load i8, i8* %1903, align 1
  %1905 = zext i8 %1904 to i32
  %1906 = and i32 %1905, 32
  %1907 = icmp ne i32 %1906, 0
  br i1 %1907, label %1908, label %1925

; <label>:1908:                                   ; preds = %1897
  %1909 = load %struct.TValue*, %struct.TValue** %72, align 8
  %1910 = getelementptr inbounds %struct.TValue, %struct.TValue* %1909, i32 0, i32 0
  %1911 = bitcast %union.Value* %1910 to %struct.GCObject**
  %1912 = load %struct.GCObject*, %struct.GCObject** %1911, align 8
  %1913 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1912, i32 0, i32 2
  %1914 = load i8, i8* %1913, align 1
  %1915 = zext i8 %1914 to i32
  %1916 = and i32 %1915, 24
  %1917 = icmp ne i32 %1916, 0
  br i1 %1917, label %1918, label %1925

; <label>:1918:                                   ; preds = %1908
  %1919 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1920 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1921 = bitcast %union.StackValue* %1920 to %struct.TValue*
  %1922 = getelementptr inbounds %struct.TValue, %struct.TValue* %1921, i32 0, i32 0
  %1923 = bitcast %union.Value* %1922 to %struct.GCObject**
  %1924 = load %struct.GCObject*, %struct.GCObject** %1923, align 8
  call void @luaC_barrierback_(%struct.lua_State* %1919, %struct.GCObject* %1924)
  br label %1926

; <label>:1925:                                   ; preds = %1908, %1897, %1876
  br label %1926

; <label>:1926:                                   ; preds = %1925, %1918
  br label %1955

; <label>:1927:                                   ; preds = %1867, %1826
  store %struct.TValue* %75, %struct.TValue** %76, align 8
  %1928 = load i32, i32* %71, align 4
  %1929 = sext i32 %1928 to i64
  %1930 = load %struct.TValue*, %struct.TValue** %76, align 8
  %1931 = getelementptr inbounds %struct.TValue, %struct.TValue* %1930, i32 0, i32 0
  %1932 = bitcast %union.Value* %1931 to i64*
  store i64 %1929, i64* %1932, align 8
  %1933 = load %struct.TValue*, %struct.TValue** %76, align 8
  %1934 = getelementptr inbounds %struct.TValue, %struct.TValue* %1933, i32 0, i32 1
  store i8 35, i8* %1934, align 8
  %1935 = load i32*, i32** %8, align 8
  %1936 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1937 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1936, i32 0, i32 4
  %1938 = bitcast %union.anon* %1937 to %struct.anon*
  %1939 = getelementptr inbounds %struct.anon, %struct.anon* %1938, i32 0, i32 0
  store i32* %1935, i32** %1939, align 8
  %1940 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1941 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1940, i32 0, i32 1
  %1942 = load %union.StackValue*, %union.StackValue** %1941, align 8
  %1943 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1944 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1943, i32 0, i32 6
  store %union.StackValue* %1942, %union.StackValue** %1944, align 8
  %1945 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1946 = load %union.StackValue*, %union.StackValue** %11, align 8
  %1947 = bitcast %union.StackValue* %1946 to %struct.TValue*
  %1948 = load %struct.TValue*, %struct.TValue** %72, align 8
  %1949 = load %struct.TValue*, %struct.TValue** %70, align 8
  call void @luaV_finishset(%struct.lua_State* %1945, %struct.TValue* %1947, %struct.TValue* %75, %struct.TValue* %1948, %struct.TValue* %1949)
  %1950 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1951 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1950, i32 0, i32 4
  %1952 = bitcast %union.anon* %1951 to %struct.anon*
  %1953 = getelementptr inbounds %struct.anon, %struct.anon* %1952, i32 0, i32 1
  %1954 = load i32, i32* %1953, align 8
  store i32 %1954, i32* %9, align 4
  br label %1955

; <label>:1955:                                   ; preds = %1927, %1926
  %1956 = load i32, i32* %9, align 4
  %1957 = icmp ne i32 %1956, 0
  br i1 %1957, label %1958, label %1966

; <label>:1958:                                   ; preds = %1955
  %1959 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %1960 = load i32*, i32** %8, align 8
  %1961 = call i32 @luaG_traceexec(%struct.lua_State* %1959, i32* %1960)
  store i32 %1961, i32* %9, align 4
  %1962 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %1963 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1962, i32 0, i32 0
  %1964 = load %union.StackValue*, %union.StackValue** %1963, align 8
  %1965 = getelementptr inbounds %union.StackValue, %union.StackValue* %1964, i64 1
  store %union.StackValue* %1965, %union.StackValue** %7, align 8
  br label %1966

; <label>:1966:                                   ; preds = %1958, %1955
  %1967 = load i32*, i32** %8, align 8
  %1968 = getelementptr inbounds i32, i32* %1967, i32 1
  store i32* %1968, i32** %8, align 8
  %1969 = load i32, i32* %1967, align 4
  store i32 %1969, i32* %10, align 4
  %1970 = load %union.StackValue*, %union.StackValue** %7, align 8
  %1971 = load i32, i32* %10, align 4
  %1972 = lshr i32 %1971, 7
  %1973 = and i32 %1972, 255
  %1974 = sext i32 %1973 to i64
  %1975 = getelementptr inbounds %union.StackValue, %union.StackValue* %1970, i64 %1974
  store %union.StackValue* %1975, %union.StackValue** %11, align 8
  %1976 = load i32, i32* %10, align 4
  %1977 = lshr i32 %1976, 0
  %1978 = and i32 %1977, 127
  %1979 = zext i32 %1978 to i64
  %1980 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %1979
  %1981 = load i8*, i8** %1980, align 8
  br label %8998

; <label>:1982:                                   ; preds = %8998
  %1983 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1984 = load i32, i32* %10, align 4
  %1985 = lshr i32 %1984, 16
  %1986 = and i32 %1985, 255
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds %struct.TValue, %struct.TValue* %1983, i64 %1987
  store %struct.TValue* %1988, %struct.TValue** %78, align 8
  %1989 = load i32, i32* %10, align 4
  %1990 = and i32 %1989, 32768
  %1991 = icmp ne i32 %1990, 0
  br i1 %1991, label %1992, label %1999

; <label>:1992:                                   ; preds = %1982
  %1993 = load %struct.TValue*, %struct.TValue** %6, align 8
  %1994 = load i32, i32* %10, align 4
  %1995 = lshr i32 %1994, 24
  %1996 = and i32 %1995, 255
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds %struct.TValue, %struct.TValue* %1993, i64 %1997
  br label %2007

; <label>:1999:                                   ; preds = %1982
  %2000 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2001 = load i32, i32* %10, align 4
  %2002 = lshr i32 %2001, 24
  %2003 = and i32 %2002, 255
  %2004 = sext i32 %2003 to i64
  %2005 = getelementptr inbounds %union.StackValue, %union.StackValue* %2000, i64 %2004
  %2006 = bitcast %union.StackValue* %2005 to %struct.TValue*
  br label %2007

; <label>:2007:                                   ; preds = %1999, %1992
  %2008 = phi %struct.TValue* [ %1998, %1992 ], [ %2006, %1999 ]
  store %struct.TValue* %2008, %struct.TValue** %79, align 8
  %2009 = load %struct.TValue*, %struct.TValue** %78, align 8
  %2010 = getelementptr inbounds %struct.TValue, %struct.TValue* %2009, i32 0, i32 0
  %2011 = bitcast %union.Value* %2010 to %struct.GCObject**
  %2012 = load %struct.GCObject*, %struct.GCObject** %2011, align 8
  %2013 = bitcast %struct.GCObject* %2012 to %union.GCUnion*
  %2014 = bitcast %union.GCUnion* %2013 to %struct.TString*
  store %struct.TString* %2014, %struct.TString** %80, align 8
  %2015 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2016 = bitcast %union.StackValue* %2015 to %struct.TValue*
  %2017 = getelementptr inbounds %struct.TValue, %struct.TValue* %2016, i32 0, i32 1
  %2018 = load i8, i8* %2017, align 8
  %2019 = zext i8 %2018 to i32
  %2020 = icmp eq i32 %2019, 69
  br i1 %2020, label %2022, label %2021

; <label>:2021:                                   ; preds = %2007
  store %struct.TValue* null, %struct.TValue** %77, align 8
  br i1 false, label %2039, label %2090

; <label>:2022:                                   ; preds = %2007
  %2023 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2024 = bitcast %union.StackValue* %2023 to %struct.TValue*
  %2025 = getelementptr inbounds %struct.TValue, %struct.TValue* %2024, i32 0, i32 0
  %2026 = bitcast %union.Value* %2025 to %struct.GCObject**
  %2027 = load %struct.GCObject*, %struct.GCObject** %2026, align 8
  %2028 = bitcast %struct.GCObject* %2027 to %union.GCUnion*
  %2029 = bitcast %union.GCUnion* %2028 to %struct.Table*
  %2030 = load %struct.TString*, %struct.TString** %80, align 8
  %2031 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %2029, %struct.TString* %2030)
  store %struct.TValue* %2031, %struct.TValue** %77, align 8
  %2032 = load %struct.TValue*, %struct.TValue** %77, align 8
  %2033 = getelementptr inbounds %struct.TValue, %struct.TValue* %2032, i32 0, i32 1
  %2034 = load i8, i8* %2033, align 8
  %2035 = zext i8 %2034 to i32
  %2036 = and i32 %2035, 15
  %2037 = icmp eq i32 %2036, 0
  %2038 = xor i1 %2037, true
  br i1 %2038, label %2039, label %2090

; <label>:2039:                                   ; preds = %2022, %2021
  %2040 = load %struct.TValue*, %struct.TValue** %77, align 8
  store %struct.TValue* %2040, %struct.TValue** %81, align 8
  %2041 = load %struct.TValue*, %struct.TValue** %79, align 8
  store %struct.TValue* %2041, %struct.TValue** %82, align 8
  %2042 = load %struct.TValue*, %struct.TValue** %81, align 8
  %2043 = getelementptr inbounds %struct.TValue, %struct.TValue* %2042, i32 0, i32 0
  %2044 = load %struct.TValue*, %struct.TValue** %82, align 8
  %2045 = getelementptr inbounds %struct.TValue, %struct.TValue* %2044, i32 0, i32 0
  %2046 = bitcast %union.Value* %2043 to i8*
  %2047 = bitcast %union.Value* %2045 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2046, i8* %2047, i64 8, i32 8, i1 false)
  %2048 = load %struct.TValue*, %struct.TValue** %82, align 8
  %2049 = getelementptr inbounds %struct.TValue, %struct.TValue* %2048, i32 0, i32 1
  %2050 = load i8, i8* %2049, align 8
  %2051 = load %struct.TValue*, %struct.TValue** %81, align 8
  %2052 = getelementptr inbounds %struct.TValue, %struct.TValue* %2051, i32 0, i32 1
  store i8 %2050, i8* %2052, align 8
  %2053 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2054 = load %struct.TValue*, %struct.TValue** %79, align 8
  %2055 = getelementptr inbounds %struct.TValue, %struct.TValue* %2054, i32 0, i32 1
  %2056 = load i8, i8* %2055, align 8
  %2057 = zext i8 %2056 to i32
  %2058 = and i32 %2057, 64
  %2059 = icmp ne i32 %2058, 0
  br i1 %2059, label %2060, label %2088

; <label>:2060:                                   ; preds = %2039
  %2061 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2062 = bitcast %union.StackValue* %2061 to %struct.TValue*
  %2063 = getelementptr inbounds %struct.TValue, %struct.TValue* %2062, i32 0, i32 0
  %2064 = bitcast %union.Value* %2063 to %struct.GCObject**
  %2065 = load %struct.GCObject*, %struct.GCObject** %2064, align 8
  %2066 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2065, i32 0, i32 2
  %2067 = load i8, i8* %2066, align 1
  %2068 = zext i8 %2067 to i32
  %2069 = and i32 %2068, 32
  %2070 = icmp ne i32 %2069, 0
  br i1 %2070, label %2071, label %2088

; <label>:2071:                                   ; preds = %2060
  %2072 = load %struct.TValue*, %struct.TValue** %79, align 8
  %2073 = getelementptr inbounds %struct.TValue, %struct.TValue* %2072, i32 0, i32 0
  %2074 = bitcast %union.Value* %2073 to %struct.GCObject**
  %2075 = load %struct.GCObject*, %struct.GCObject** %2074, align 8
  %2076 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2075, i32 0, i32 2
  %2077 = load i8, i8* %2076, align 1
  %2078 = zext i8 %2077 to i32
  %2079 = and i32 %2078, 24
  %2080 = icmp ne i32 %2079, 0
  br i1 %2080, label %2081, label %2088

; <label>:2081:                                   ; preds = %2071
  %2082 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2083 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2084 = bitcast %union.StackValue* %2083 to %struct.TValue*
  %2085 = getelementptr inbounds %struct.TValue, %struct.TValue* %2084, i32 0, i32 0
  %2086 = bitcast %union.Value* %2085 to %struct.GCObject**
  %2087 = load %struct.GCObject*, %struct.GCObject** %2086, align 8
  call void @luaC_barrierback_(%struct.lua_State* %2082, %struct.GCObject* %2087)
  br label %2089

; <label>:2088:                                   ; preds = %2071, %2060, %2039
  br label %2089

; <label>:2089:                                   ; preds = %2088, %2081
  br label %2112

; <label>:2090:                                   ; preds = %2022, %2021
  %2091 = load i32*, i32** %8, align 8
  %2092 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2093 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2092, i32 0, i32 4
  %2094 = bitcast %union.anon* %2093 to %struct.anon*
  %2095 = getelementptr inbounds %struct.anon, %struct.anon* %2094, i32 0, i32 0
  store i32* %2091, i32** %2095, align 8
  %2096 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2097 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2096, i32 0, i32 1
  %2098 = load %union.StackValue*, %union.StackValue** %2097, align 8
  %2099 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2099, i32 0, i32 6
  store %union.StackValue* %2098, %union.StackValue** %2100, align 8
  %2101 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2102 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2103 = bitcast %union.StackValue* %2102 to %struct.TValue*
  %2104 = load %struct.TValue*, %struct.TValue** %78, align 8
  %2105 = load %struct.TValue*, %struct.TValue** %79, align 8
  %2106 = load %struct.TValue*, %struct.TValue** %77, align 8
  call void @luaV_finishset(%struct.lua_State* %2101, %struct.TValue* %2103, %struct.TValue* %2104, %struct.TValue* %2105, %struct.TValue* %2106)
  %2107 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2107, i32 0, i32 4
  %2109 = bitcast %union.anon* %2108 to %struct.anon*
  %2110 = getelementptr inbounds %struct.anon, %struct.anon* %2109, i32 0, i32 1
  %2111 = load i32, i32* %2110, align 8
  store i32 %2111, i32* %9, align 4
  br label %2112

; <label>:2112:                                   ; preds = %2090, %2089
  %2113 = load i32, i32* %9, align 4
  %2114 = icmp ne i32 %2113, 0
  br i1 %2114, label %2115, label %2123

; <label>:2115:                                   ; preds = %2112
  %2116 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2117 = load i32*, i32** %8, align 8
  %2118 = call i32 @luaG_traceexec(%struct.lua_State* %2116, i32* %2117)
  store i32 %2118, i32* %9, align 4
  %2119 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2120 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2119, i32 0, i32 0
  %2121 = load %union.StackValue*, %union.StackValue** %2120, align 8
  %2122 = getelementptr inbounds %union.StackValue, %union.StackValue* %2121, i64 1
  store %union.StackValue* %2122, %union.StackValue** %7, align 8
  br label %2123

; <label>:2123:                                   ; preds = %2115, %2112
  %2124 = load i32*, i32** %8, align 8
  %2125 = getelementptr inbounds i32, i32* %2124, i32 1
  store i32* %2125, i32** %8, align 8
  %2126 = load i32, i32* %2124, align 4
  store i32 %2126, i32* %10, align 4
  %2127 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2128 = load i32, i32* %10, align 4
  %2129 = lshr i32 %2128, 7
  %2130 = and i32 %2129, 255
  %2131 = sext i32 %2130 to i64
  %2132 = getelementptr inbounds %union.StackValue, %union.StackValue* %2127, i64 %2131
  store %union.StackValue* %2132, %union.StackValue** %11, align 8
  %2133 = load i32, i32* %10, align 4
  %2134 = lshr i32 %2133, 0
  %2135 = and i32 %2134, 127
  %2136 = zext i32 %2135 to i64
  %2137 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2136
  %2138 = load i8*, i8** %2137, align 8
  br label %8998

; <label>:2139:                                   ; preds = %8998
  %2140 = load i32, i32* %10, align 4
  %2141 = lshr i32 %2140, 16
  %2142 = and i32 %2141, 255
  store i32 %2142, i32* %83, align 4
  %2143 = load i32, i32* %10, align 4
  %2144 = lshr i32 %2143, 24
  %2145 = and i32 %2144, 255
  store i32 %2145, i32* %84, align 4
  %2146 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2147 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2146, i32 0, i32 1
  %2148 = load %union.StackValue*, %union.StackValue** %2147, align 8
  %2149 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2150 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2149, i32 0, i32 6
  store %union.StackValue* %2148, %union.StackValue** %2150, align 8
  %2151 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2152 = call %struct.Table* @luaH_new(%struct.lua_State* %2151)
  store %struct.Table* %2152, %struct.Table** %85, align 8
  %2153 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2154 = bitcast %union.StackValue* %2153 to %struct.TValue*
  store %struct.TValue* %2154, %struct.TValue** %86, align 8
  %2155 = load %struct.Table*, %struct.Table** %85, align 8
  store %struct.Table* %2155, %struct.Table** %87, align 8
  %2156 = load %struct.Table*, %struct.Table** %87, align 8
  %2157 = bitcast %struct.Table* %2156 to %union.GCUnion*
  %2158 = bitcast %union.GCUnion* %2157 to %struct.GCObject*
  %2159 = load %struct.TValue*, %struct.TValue** %86, align 8
  %2160 = getelementptr inbounds %struct.TValue, %struct.TValue* %2159, i32 0, i32 0
  %2161 = bitcast %union.Value* %2160 to %struct.GCObject**
  store %struct.GCObject* %2158, %struct.GCObject** %2161, align 8
  %2162 = load %struct.TValue*, %struct.TValue** %86, align 8
  %2163 = getelementptr inbounds %struct.TValue, %struct.TValue* %2162, i32 0, i32 1
  store i8 69, i8* %2163, align 8
  %2164 = load i32, i32* %83, align 4
  %2165 = icmp ne i32 %2164, 0
  br i1 %2165, label %2169, label %2166

; <label>:2166:                                   ; preds = %2139
  %2167 = load i32, i32* %84, align 4
  %2168 = icmp ne i32 %2167, 0
  br i1 %2168, label %2169, label %2176

; <label>:2169:                                   ; preds = %2166, %2139
  %2170 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2171 = load %struct.Table*, %struct.Table** %85, align 8
  %2172 = load i32, i32* %83, align 4
  %2173 = call i32 @luaO_fb2int(i32 %2172)
  %2174 = load i32, i32* %84, align 4
  %2175 = call i32 @luaO_fb2int(i32 %2174)
  call void @luaH_resize(%struct.lua_State* %2170, %struct.Table* %2171, i32 %2173, i32 %2175)
  br label %2176

; <label>:2176:                                   ; preds = %2169, %2166
  %2177 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2178 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2177, i32 0, i32 7
  %2179 = load %struct.global_State*, %struct.global_State** %2178, align 8
  %2180 = getelementptr inbounds %struct.global_State, %struct.global_State* %2179, i32 0, i32 3
  %2181 = load i64, i64* %2180, align 8
  %2182 = icmp sgt i64 %2181, 0
  br i1 %2182, label %2183, label %2194

; <label>:2183:                                   ; preds = %2176
  %2184 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2185 = getelementptr inbounds %union.StackValue, %union.StackValue* %2184, i64 1
  %2186 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2186, i32 0, i32 6
  store %union.StackValue* %2185, %union.StackValue** %2187, align 8
  %2188 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %2188)
  %2189 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2190 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2189, i32 0, i32 4
  %2191 = bitcast %union.anon* %2190 to %struct.anon*
  %2192 = getelementptr inbounds %struct.anon, %struct.anon* %2191, i32 0, i32 1
  %2193 = load i32, i32* %2192, align 8
  store i32 %2193, i32* %9, align 4
  br label %2194

; <label>:2194:                                   ; preds = %2183, %2176
  %2195 = load i32, i32* %9, align 4
  %2196 = icmp ne i32 %2195, 0
  br i1 %2196, label %2197, label %2205

; <label>:2197:                                   ; preds = %2194
  %2198 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2199 = load i32*, i32** %8, align 8
  %2200 = call i32 @luaG_traceexec(%struct.lua_State* %2198, i32* %2199)
  store i32 %2200, i32* %9, align 4
  %2201 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2202 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2201, i32 0, i32 0
  %2203 = load %union.StackValue*, %union.StackValue** %2202, align 8
  %2204 = getelementptr inbounds %union.StackValue, %union.StackValue* %2203, i64 1
  store %union.StackValue* %2204, %union.StackValue** %7, align 8
  br label %2205

; <label>:2205:                                   ; preds = %2197, %2194
  %2206 = load i32*, i32** %8, align 8
  %2207 = getelementptr inbounds i32, i32* %2206, i32 1
  store i32* %2207, i32** %8, align 8
  %2208 = load i32, i32* %2206, align 4
  store i32 %2208, i32* %10, align 4
  %2209 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2210 = load i32, i32* %10, align 4
  %2211 = lshr i32 %2210, 7
  %2212 = and i32 %2211, 255
  %2213 = sext i32 %2212 to i64
  %2214 = getelementptr inbounds %union.StackValue, %union.StackValue* %2209, i64 %2213
  store %union.StackValue* %2214, %union.StackValue** %11, align 8
  %2215 = load i32, i32* %10, align 4
  %2216 = lshr i32 %2215, 0
  %2217 = and i32 %2216, 127
  %2218 = zext i32 %2217 to i64
  %2219 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2218
  %2220 = load i8*, i8** %2219, align 8
  br label %8998

; <label>:2221:                                   ; preds = %8998
  %2222 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2223 = load i32, i32* %10, align 4
  %2224 = lshr i32 %2223, 16
  %2225 = and i32 %2224, 255
  %2226 = sext i32 %2225 to i64
  %2227 = getelementptr inbounds %union.StackValue, %union.StackValue* %2222, i64 %2226
  %2228 = bitcast %union.StackValue* %2227 to %struct.TValue*
  store %struct.TValue* %2228, %struct.TValue** %89, align 8
  %2229 = load i32, i32* %10, align 4
  %2230 = and i32 %2229, 32768
  %2231 = icmp ne i32 %2230, 0
  br i1 %2231, label %2232, label %2239

; <label>:2232:                                   ; preds = %2221
  %2233 = load %struct.TValue*, %struct.TValue** %6, align 8
  %2234 = load i32, i32* %10, align 4
  %2235 = lshr i32 %2234, 24
  %2236 = and i32 %2235, 255
  %2237 = sext i32 %2236 to i64
  %2238 = getelementptr inbounds %struct.TValue, %struct.TValue* %2233, i64 %2237
  br label %2247

; <label>:2239:                                   ; preds = %2221
  %2240 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2241 = load i32, i32* %10, align 4
  %2242 = lshr i32 %2241, 24
  %2243 = and i32 %2242, 255
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds %union.StackValue, %union.StackValue* %2240, i64 %2244
  %2246 = bitcast %union.StackValue* %2245 to %struct.TValue*
  br label %2247

; <label>:2247:                                   ; preds = %2239, %2232
  %2248 = phi %struct.TValue* [ %2238, %2232 ], [ %2246, %2239 ]
  store %struct.TValue* %2248, %struct.TValue** %90, align 8
  %2249 = load %struct.TValue*, %struct.TValue** %90, align 8
  %2250 = getelementptr inbounds %struct.TValue, %struct.TValue* %2249, i32 0, i32 0
  %2251 = bitcast %union.Value* %2250 to %struct.GCObject**
  %2252 = load %struct.GCObject*, %struct.GCObject** %2251, align 8
  %2253 = bitcast %struct.GCObject* %2252 to %union.GCUnion*
  %2254 = bitcast %union.GCUnion* %2253 to %struct.TString*
  store %struct.TString* %2254, %struct.TString** %91, align 8
  %2255 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2256 = getelementptr inbounds %union.StackValue, %union.StackValue* %2255, i64 1
  %2257 = bitcast %union.StackValue* %2256 to %struct.TValue*
  store %struct.TValue* %2257, %struct.TValue** %92, align 8
  %2258 = load %struct.TValue*, %struct.TValue** %89, align 8
  store %struct.TValue* %2258, %struct.TValue** %93, align 8
  %2259 = load %struct.TValue*, %struct.TValue** %92, align 8
  %2260 = getelementptr inbounds %struct.TValue, %struct.TValue* %2259, i32 0, i32 0
  %2261 = load %struct.TValue*, %struct.TValue** %93, align 8
  %2262 = getelementptr inbounds %struct.TValue, %struct.TValue* %2261, i32 0, i32 0
  %2263 = bitcast %union.Value* %2260 to i8*
  %2264 = bitcast %union.Value* %2262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2263, i8* %2264, i64 8, i32 8, i1 false)
  %2265 = load %struct.TValue*, %struct.TValue** %93, align 8
  %2266 = getelementptr inbounds %struct.TValue, %struct.TValue* %2265, i32 0, i32 1
  %2267 = load i8, i8* %2266, align 8
  %2268 = load %struct.TValue*, %struct.TValue** %92, align 8
  %2269 = getelementptr inbounds %struct.TValue, %struct.TValue* %2268, i32 0, i32 1
  store i8 %2267, i8* %2269, align 8
  %2270 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2271 = load %struct.TValue*, %struct.TValue** %89, align 8
  %2272 = getelementptr inbounds %struct.TValue, %struct.TValue* %2271, i32 0, i32 1
  %2273 = load i8, i8* %2272, align 8
  %2274 = zext i8 %2273 to i32
  %2275 = icmp eq i32 %2274, 69
  br i1 %2275, label %2277, label %2276

; <label>:2276:                                   ; preds = %2247
  store %struct.TValue* null, %struct.TValue** %88, align 8
  br i1 false, label %2293, label %2309

; <label>:2277:                                   ; preds = %2247
  %2278 = load %struct.TValue*, %struct.TValue** %89, align 8
  %2279 = getelementptr inbounds %struct.TValue, %struct.TValue* %2278, i32 0, i32 0
  %2280 = bitcast %union.Value* %2279 to %struct.GCObject**
  %2281 = load %struct.GCObject*, %struct.GCObject** %2280, align 8
  %2282 = bitcast %struct.GCObject* %2281 to %union.GCUnion*
  %2283 = bitcast %union.GCUnion* %2282 to %struct.Table*
  %2284 = load %struct.TString*, %struct.TString** %91, align 8
  %2285 = call %struct.TValue* @luaH_getstr(%struct.Table* %2283, %struct.TString* %2284)
  store %struct.TValue* %2285, %struct.TValue** %88, align 8
  %2286 = load %struct.TValue*, %struct.TValue** %88, align 8
  %2287 = getelementptr inbounds %struct.TValue, %struct.TValue* %2286, i32 0, i32 1
  %2288 = load i8, i8* %2287, align 8
  %2289 = zext i8 %2288 to i32
  %2290 = and i32 %2289, 15
  %2291 = icmp eq i32 %2290, 0
  %2292 = xor i1 %2291, true
  br i1 %2292, label %2293, label %2309

; <label>:2293:                                   ; preds = %2277, %2276
  %2294 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2295 = bitcast %union.StackValue* %2294 to %struct.TValue*
  store %struct.TValue* %2295, %struct.TValue** %94, align 8
  %2296 = load %struct.TValue*, %struct.TValue** %88, align 8
  store %struct.TValue* %2296, %struct.TValue** %95, align 8
  %2297 = load %struct.TValue*, %struct.TValue** %94, align 8
  %2298 = getelementptr inbounds %struct.TValue, %struct.TValue* %2297, i32 0, i32 0
  %2299 = load %struct.TValue*, %struct.TValue** %95, align 8
  %2300 = getelementptr inbounds %struct.TValue, %struct.TValue* %2299, i32 0, i32 0
  %2301 = bitcast %union.Value* %2298 to i8*
  %2302 = bitcast %union.Value* %2300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2301, i8* %2302, i64 8, i32 8, i1 false)
  %2303 = load %struct.TValue*, %struct.TValue** %95, align 8
  %2304 = getelementptr inbounds %struct.TValue, %struct.TValue* %2303, i32 0, i32 1
  %2305 = load i8, i8* %2304, align 8
  %2306 = load %struct.TValue*, %struct.TValue** %94, align 8
  %2307 = getelementptr inbounds %struct.TValue, %struct.TValue* %2306, i32 0, i32 1
  store i8 %2305, i8* %2307, align 8
  %2308 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %2330

; <label>:2309:                                   ; preds = %2277, %2276
  %2310 = load i32*, i32** %8, align 8
  %2311 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2312 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2311, i32 0, i32 4
  %2313 = bitcast %union.anon* %2312 to %struct.anon*
  %2314 = getelementptr inbounds %struct.anon, %struct.anon* %2313, i32 0, i32 0
  store i32* %2310, i32** %2314, align 8
  %2315 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2316 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2315, i32 0, i32 1
  %2317 = load %union.StackValue*, %union.StackValue** %2316, align 8
  %2318 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2319 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2318, i32 0, i32 6
  store %union.StackValue* %2317, %union.StackValue** %2319, align 8
  %2320 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2321 = load %struct.TValue*, %struct.TValue** %89, align 8
  %2322 = load %struct.TValue*, %struct.TValue** %90, align 8
  %2323 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2324 = load %struct.TValue*, %struct.TValue** %88, align 8
  call void @luaV_finishget(%struct.lua_State* %2320, %struct.TValue* %2321, %struct.TValue* %2322, %union.StackValue* %2323, %struct.TValue* %2324)
  %2325 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2326 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2325, i32 0, i32 4
  %2327 = bitcast %union.anon* %2326 to %struct.anon*
  %2328 = getelementptr inbounds %struct.anon, %struct.anon* %2327, i32 0, i32 1
  %2329 = load i32, i32* %2328, align 8
  store i32 %2329, i32* %9, align 4
  br label %2330

; <label>:2330:                                   ; preds = %2309, %2293
  %2331 = load i32, i32* %9, align 4
  %2332 = icmp ne i32 %2331, 0
  br i1 %2332, label %2333, label %2341

; <label>:2333:                                   ; preds = %2330
  %2334 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2335 = load i32*, i32** %8, align 8
  %2336 = call i32 @luaG_traceexec(%struct.lua_State* %2334, i32* %2335)
  store i32 %2336, i32* %9, align 4
  %2337 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2338 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2337, i32 0, i32 0
  %2339 = load %union.StackValue*, %union.StackValue** %2338, align 8
  %2340 = getelementptr inbounds %union.StackValue, %union.StackValue* %2339, i64 1
  store %union.StackValue* %2340, %union.StackValue** %7, align 8
  br label %2341

; <label>:2341:                                   ; preds = %2333, %2330
  %2342 = load i32*, i32** %8, align 8
  %2343 = getelementptr inbounds i32, i32* %2342, i32 1
  store i32* %2343, i32** %8, align 8
  %2344 = load i32, i32* %2342, align 4
  store i32 %2344, i32* %10, align 4
  %2345 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2346 = load i32, i32* %10, align 4
  %2347 = lshr i32 %2346, 7
  %2348 = and i32 %2347, 255
  %2349 = sext i32 %2348 to i64
  %2350 = getelementptr inbounds %union.StackValue, %union.StackValue* %2345, i64 %2349
  store %union.StackValue* %2350, %union.StackValue** %11, align 8
  %2351 = load i32, i32* %10, align 4
  %2352 = lshr i32 %2351, 0
  %2353 = and i32 %2352, 127
  %2354 = zext i32 %2353 to i64
  %2355 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2354
  %2356 = load i8*, i8** %2355, align 8
  br label %8998

; <label>:2357:                                   ; preds = %8998
  %2358 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2359 = load i32, i32* %10, align 4
  %2360 = lshr i32 %2359, 16
  %2361 = and i32 %2360, 255
  %2362 = sext i32 %2361 to i64
  %2363 = getelementptr inbounds %union.StackValue, %union.StackValue* %2358, i64 %2362
  %2364 = bitcast %union.StackValue* %2363 to %struct.TValue*
  store %struct.TValue* %2364, %struct.TValue** %96, align 8
  %2365 = load i32, i32* %10, align 4
  %2366 = lshr i32 %2365, 24
  %2367 = and i32 %2366, 255
  %2368 = sub nsw i32 %2367, 127
  store i32 %2368, i32* %97, align 4
  %2369 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2370 = getelementptr inbounds %struct.TValue, %struct.TValue* %2369, i32 0, i32 1
  %2371 = load i8, i8* %2370, align 8
  %2372 = zext i8 %2371 to i32
  %2373 = icmp eq i32 %2372, 35
  br i1 %2373, label %2374, label %2389

; <label>:2374:                                   ; preds = %2357
  %2375 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2376 = bitcast %union.StackValue* %2375 to %struct.TValue*
  store %struct.TValue* %2376, %struct.TValue** %98, align 8
  %2377 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2378 = getelementptr inbounds %struct.TValue, %struct.TValue* %2377, i32 0, i32 0
  %2379 = bitcast %union.Value* %2378 to i64*
  %2380 = load i64, i64* %2379, align 8
  %2381 = load i32, i32* %97, align 4
  %2382 = sext i32 %2381 to i64
  %2383 = add i64 %2380, %2382
  %2384 = load %struct.TValue*, %struct.TValue** %98, align 8
  %2385 = getelementptr inbounds %struct.TValue, %struct.TValue* %2384, i32 0, i32 0
  %2386 = bitcast %union.Value* %2385 to i64*
  store i64 %2383, i64* %2386, align 8
  %2387 = load %struct.TValue*, %struct.TValue** %98, align 8
  %2388 = getelementptr inbounds %struct.TValue, %struct.TValue* %2387, i32 0, i32 1
  store i8 35, i8* %2388, align 8
  br label %2450

; <label>:2389:                                   ; preds = %2357
  %2390 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2391 = getelementptr inbounds %struct.TValue, %struct.TValue* %2390, i32 0, i32 1
  %2392 = load i8, i8* %2391, align 8
  %2393 = zext i8 %2392 to i32
  %2394 = icmp eq i32 %2393, 19
  br i1 %2394, label %2395, label %2400

; <label>:2395:                                   ; preds = %2389
  %2396 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2397 = getelementptr inbounds %struct.TValue, %struct.TValue* %2396, i32 0, i32 0
  %2398 = bitcast %union.Value* %2397 to double*
  %2399 = load double, double* %2398, align 8
  store double %2399, double* %99, align 8
  br i1 true, label %2413, label %2425

; <label>:2400:                                   ; preds = %2389
  %2401 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2402 = getelementptr inbounds %struct.TValue, %struct.TValue* %2401, i32 0, i32 1
  %2403 = load i8, i8* %2402, align 8
  %2404 = zext i8 %2403 to i32
  %2405 = icmp eq i32 %2404, 35
  br i1 %2405, label %2406, label %2412

; <label>:2406:                                   ; preds = %2400
  %2407 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2408 = getelementptr inbounds %struct.TValue, %struct.TValue* %2407, i32 0, i32 0
  %2409 = bitcast %union.Value* %2408 to i64*
  %2410 = load i64, i64* %2409, align 8
  %2411 = sitofp i64 %2410 to double
  store double %2411, double* %99, align 8
  br i1 true, label %2413, label %2425

; <label>:2412:                                   ; preds = %2400
  br i1 false, label %2413, label %2425

; <label>:2413:                                   ; preds = %2412, %2406, %2395
  %2414 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2415 = bitcast %union.StackValue* %2414 to %struct.TValue*
  store %struct.TValue* %2415, %struct.TValue** %100, align 8
  %2416 = load double, double* %99, align 8
  %2417 = load i32, i32* %97, align 4
  %2418 = sitofp i32 %2417 to double
  %2419 = fadd double %2416, %2418
  %2420 = load %struct.TValue*, %struct.TValue** %100, align 8
  %2421 = getelementptr inbounds %struct.TValue, %struct.TValue* %2420, i32 0, i32 0
  %2422 = bitcast %union.Value* %2421 to double*
  store double %2419, double* %2422, align 8
  %2423 = load %struct.TValue*, %struct.TValue** %100, align 8
  %2424 = getelementptr inbounds %struct.TValue, %struct.TValue* %2423, i32 0, i32 1
  store i8 19, i8* %2424, align 8
  br label %2449

; <label>:2425:                                   ; preds = %2412, %2406, %2395
  %2426 = load i32*, i32** %8, align 8
  %2427 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2428 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2427, i32 0, i32 4
  %2429 = bitcast %union.anon* %2428 to %struct.anon*
  %2430 = getelementptr inbounds %struct.anon, %struct.anon* %2429, i32 0, i32 0
  store i32* %2426, i32** %2430, align 8
  %2431 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2432 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2431, i32 0, i32 1
  %2433 = load %union.StackValue*, %union.StackValue** %2432, align 8
  %2434 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2435 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2434, i32 0, i32 6
  store %union.StackValue* %2433, %union.StackValue** %2435, align 8
  %2436 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2437 = load %struct.TValue*, %struct.TValue** %96, align 8
  %2438 = load i32, i32* %97, align 4
  %2439 = sext i32 %2438 to i64
  %2440 = load i32, i32* %10, align 4
  %2441 = lshr i32 %2440, 15
  %2442 = and i32 %2441, 1
  %2443 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2436, %struct.TValue* %2437, i64 %2439, i32 %2442, %union.StackValue* %2443, i32 6)
  %2444 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2445 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2444, i32 0, i32 4
  %2446 = bitcast %union.anon* %2445 to %struct.anon*
  %2447 = getelementptr inbounds %struct.anon, %struct.anon* %2446, i32 0, i32 1
  %2448 = load i32, i32* %2447, align 8
  store i32 %2448, i32* %9, align 4
  br label %2449

; <label>:2449:                                   ; preds = %2425, %2413
  br label %2450

; <label>:2450:                                   ; preds = %2449, %2374
  %2451 = load i32, i32* %9, align 4
  %2452 = icmp ne i32 %2451, 0
  br i1 %2452, label %2453, label %2461

; <label>:2453:                                   ; preds = %2450
  %2454 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2455 = load i32*, i32** %8, align 8
  %2456 = call i32 @luaG_traceexec(%struct.lua_State* %2454, i32* %2455)
  store i32 %2456, i32* %9, align 4
  %2457 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2458 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2457, i32 0, i32 0
  %2459 = load %union.StackValue*, %union.StackValue** %2458, align 8
  %2460 = getelementptr inbounds %union.StackValue, %union.StackValue* %2459, i64 1
  store %union.StackValue* %2460, %union.StackValue** %7, align 8
  br label %2461

; <label>:2461:                                   ; preds = %2453, %2450
  %2462 = load i32*, i32** %8, align 8
  %2463 = getelementptr inbounds i32, i32* %2462, i32 1
  store i32* %2463, i32** %8, align 8
  %2464 = load i32, i32* %2462, align 4
  store i32 %2464, i32* %10, align 4
  %2465 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2466 = load i32, i32* %10, align 4
  %2467 = lshr i32 %2466, 7
  %2468 = and i32 %2467, 255
  %2469 = sext i32 %2468 to i64
  %2470 = getelementptr inbounds %union.StackValue, %union.StackValue* %2465, i64 %2469
  store %union.StackValue* %2470, %union.StackValue** %11, align 8
  %2471 = load i32, i32* %10, align 4
  %2472 = lshr i32 %2471, 0
  %2473 = and i32 %2472, 127
  %2474 = zext i32 %2473 to i64
  %2475 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2474
  %2476 = load i8*, i8** %2475, align 8
  br label %8998

; <label>:2477:                                   ; preds = %8998
  %2478 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2479 = load i32, i32* %10, align 4
  %2480 = lshr i32 %2479, 16
  %2481 = and i32 %2480, 255
  %2482 = sext i32 %2481 to i64
  %2483 = getelementptr inbounds %union.StackValue, %union.StackValue* %2478, i64 %2482
  %2484 = bitcast %union.StackValue* %2483 to %struct.TValue*
  store %struct.TValue* %2484, %struct.TValue** %101, align 8
  %2485 = load i32, i32* %10, align 4
  %2486 = lshr i32 %2485, 24
  %2487 = and i32 %2486, 255
  %2488 = sub nsw i32 %2487, 127
  store i32 %2488, i32* %102, align 4
  %2489 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2490 = getelementptr inbounds %struct.TValue, %struct.TValue* %2489, i32 0, i32 1
  %2491 = load i8, i8* %2490, align 8
  %2492 = zext i8 %2491 to i32
  %2493 = icmp eq i32 %2492, 35
  br i1 %2493, label %2494, label %2509

; <label>:2494:                                   ; preds = %2477
  %2495 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2496 = bitcast %union.StackValue* %2495 to %struct.TValue*
  store %struct.TValue* %2496, %struct.TValue** %103, align 8
  %2497 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2498 = getelementptr inbounds %struct.TValue, %struct.TValue* %2497, i32 0, i32 0
  %2499 = bitcast %union.Value* %2498 to i64*
  %2500 = load i64, i64* %2499, align 8
  %2501 = load i32, i32* %102, align 4
  %2502 = sext i32 %2501 to i64
  %2503 = sub i64 %2500, %2502
  %2504 = load %struct.TValue*, %struct.TValue** %103, align 8
  %2505 = getelementptr inbounds %struct.TValue, %struct.TValue* %2504, i32 0, i32 0
  %2506 = bitcast %union.Value* %2505 to i64*
  store i64 %2503, i64* %2506, align 8
  %2507 = load %struct.TValue*, %struct.TValue** %103, align 8
  %2508 = getelementptr inbounds %struct.TValue, %struct.TValue* %2507, i32 0, i32 1
  store i8 35, i8* %2508, align 8
  br label %2567

; <label>:2509:                                   ; preds = %2477
  %2510 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2511 = getelementptr inbounds %struct.TValue, %struct.TValue* %2510, i32 0, i32 1
  %2512 = load i8, i8* %2511, align 8
  %2513 = zext i8 %2512 to i32
  %2514 = icmp eq i32 %2513, 19
  br i1 %2514, label %2515, label %2520

; <label>:2515:                                   ; preds = %2509
  %2516 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2517 = getelementptr inbounds %struct.TValue, %struct.TValue* %2516, i32 0, i32 0
  %2518 = bitcast %union.Value* %2517 to double*
  %2519 = load double, double* %2518, align 8
  store double %2519, double* %104, align 8
  br i1 true, label %2533, label %2545

; <label>:2520:                                   ; preds = %2509
  %2521 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2522 = getelementptr inbounds %struct.TValue, %struct.TValue* %2521, i32 0, i32 1
  %2523 = load i8, i8* %2522, align 8
  %2524 = zext i8 %2523 to i32
  %2525 = icmp eq i32 %2524, 35
  br i1 %2525, label %2526, label %2532

; <label>:2526:                                   ; preds = %2520
  %2527 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2528 = getelementptr inbounds %struct.TValue, %struct.TValue* %2527, i32 0, i32 0
  %2529 = bitcast %union.Value* %2528 to i64*
  %2530 = load i64, i64* %2529, align 8
  %2531 = sitofp i64 %2530 to double
  store double %2531, double* %104, align 8
  br i1 true, label %2533, label %2545

; <label>:2532:                                   ; preds = %2520
  br i1 false, label %2533, label %2545

; <label>:2533:                                   ; preds = %2532, %2526, %2515
  %2534 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2535 = bitcast %union.StackValue* %2534 to %struct.TValue*
  store %struct.TValue* %2535, %struct.TValue** %105, align 8
  %2536 = load double, double* %104, align 8
  %2537 = load i32, i32* %102, align 4
  %2538 = sitofp i32 %2537 to double
  %2539 = fsub double %2536, %2538
  %2540 = load %struct.TValue*, %struct.TValue** %105, align 8
  %2541 = getelementptr inbounds %struct.TValue, %struct.TValue* %2540, i32 0, i32 0
  %2542 = bitcast %union.Value* %2541 to double*
  store double %2539, double* %2542, align 8
  %2543 = load %struct.TValue*, %struct.TValue** %105, align 8
  %2544 = getelementptr inbounds %struct.TValue, %struct.TValue* %2543, i32 0, i32 1
  store i8 19, i8* %2544, align 8
  br label %2566

; <label>:2545:                                   ; preds = %2532, %2526, %2515
  %2546 = load i32*, i32** %8, align 8
  %2547 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2548 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2547, i32 0, i32 4
  %2549 = bitcast %union.anon* %2548 to %struct.anon*
  %2550 = getelementptr inbounds %struct.anon, %struct.anon* %2549, i32 0, i32 0
  store i32* %2546, i32** %2550, align 8
  %2551 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2552 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2551, i32 0, i32 1
  %2553 = load %union.StackValue*, %union.StackValue** %2552, align 8
  %2554 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2555 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2554, i32 0, i32 6
  store %union.StackValue* %2553, %union.StackValue** %2555, align 8
  %2556 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2557 = load %struct.TValue*, %struct.TValue** %101, align 8
  %2558 = load i32, i32* %102, align 4
  %2559 = sext i32 %2558 to i64
  %2560 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2556, %struct.TValue* %2557, i64 %2559, i32 0, %union.StackValue* %2560, i32 7)
  %2561 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2562 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2561, i32 0, i32 4
  %2563 = bitcast %union.anon* %2562 to %struct.anon*
  %2564 = getelementptr inbounds %struct.anon, %struct.anon* %2563, i32 0, i32 1
  %2565 = load i32, i32* %2564, align 8
  store i32 %2565, i32* %9, align 4
  br label %2566

; <label>:2566:                                   ; preds = %2545, %2533
  br label %2567

; <label>:2567:                                   ; preds = %2566, %2494
  %2568 = load i32, i32* %9, align 4
  %2569 = icmp ne i32 %2568, 0
  br i1 %2569, label %2570, label %2578

; <label>:2570:                                   ; preds = %2567
  %2571 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2572 = load i32*, i32** %8, align 8
  %2573 = call i32 @luaG_traceexec(%struct.lua_State* %2571, i32* %2572)
  store i32 %2573, i32* %9, align 4
  %2574 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2575 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2574, i32 0, i32 0
  %2576 = load %union.StackValue*, %union.StackValue** %2575, align 8
  %2577 = getelementptr inbounds %union.StackValue, %union.StackValue* %2576, i64 1
  store %union.StackValue* %2577, %union.StackValue** %7, align 8
  br label %2578

; <label>:2578:                                   ; preds = %2570, %2567
  %2579 = load i32*, i32** %8, align 8
  %2580 = getelementptr inbounds i32, i32* %2579, i32 1
  store i32* %2580, i32** %8, align 8
  %2581 = load i32, i32* %2579, align 4
  store i32 %2581, i32* %10, align 4
  %2582 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2583 = load i32, i32* %10, align 4
  %2584 = lshr i32 %2583, 7
  %2585 = and i32 %2584, 255
  %2586 = sext i32 %2585 to i64
  %2587 = getelementptr inbounds %union.StackValue, %union.StackValue* %2582, i64 %2586
  store %union.StackValue* %2587, %union.StackValue** %11, align 8
  %2588 = load i32, i32* %10, align 4
  %2589 = lshr i32 %2588, 0
  %2590 = and i32 %2589, 127
  %2591 = zext i32 %2590 to i64
  %2592 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2591
  %2593 = load i8*, i8** %2592, align 8
  br label %8998

; <label>:2594:                                   ; preds = %8998
  %2595 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2596 = load i32, i32* %10, align 4
  %2597 = lshr i32 %2596, 16
  %2598 = and i32 %2597, 255
  %2599 = sext i32 %2598 to i64
  %2600 = getelementptr inbounds %union.StackValue, %union.StackValue* %2595, i64 %2599
  %2601 = bitcast %union.StackValue* %2600 to %struct.TValue*
  store %struct.TValue* %2601, %struct.TValue** %106, align 8
  %2602 = load i32, i32* %10, align 4
  %2603 = lshr i32 %2602, 24
  %2604 = and i32 %2603, 255
  %2605 = sub nsw i32 %2604, 127
  store i32 %2605, i32* %107, align 4
  %2606 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2607 = getelementptr inbounds %struct.TValue, %struct.TValue* %2606, i32 0, i32 1
  %2608 = load i8, i8* %2607, align 8
  %2609 = zext i8 %2608 to i32
  %2610 = icmp eq i32 %2609, 35
  br i1 %2610, label %2611, label %2626

; <label>:2611:                                   ; preds = %2594
  %2612 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2613 = bitcast %union.StackValue* %2612 to %struct.TValue*
  store %struct.TValue* %2613, %struct.TValue** %108, align 8
  %2614 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2615 = getelementptr inbounds %struct.TValue, %struct.TValue* %2614, i32 0, i32 0
  %2616 = bitcast %union.Value* %2615 to i64*
  %2617 = load i64, i64* %2616, align 8
  %2618 = load i32, i32* %107, align 4
  %2619 = sext i32 %2618 to i64
  %2620 = mul i64 %2617, %2619
  %2621 = load %struct.TValue*, %struct.TValue** %108, align 8
  %2622 = getelementptr inbounds %struct.TValue, %struct.TValue* %2621, i32 0, i32 0
  %2623 = bitcast %union.Value* %2622 to i64*
  store i64 %2620, i64* %2623, align 8
  %2624 = load %struct.TValue*, %struct.TValue** %108, align 8
  %2625 = getelementptr inbounds %struct.TValue, %struct.TValue* %2624, i32 0, i32 1
  store i8 35, i8* %2625, align 8
  br label %2687

; <label>:2626:                                   ; preds = %2594
  %2627 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2628 = getelementptr inbounds %struct.TValue, %struct.TValue* %2627, i32 0, i32 1
  %2629 = load i8, i8* %2628, align 8
  %2630 = zext i8 %2629 to i32
  %2631 = icmp eq i32 %2630, 19
  br i1 %2631, label %2632, label %2637

; <label>:2632:                                   ; preds = %2626
  %2633 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2634 = getelementptr inbounds %struct.TValue, %struct.TValue* %2633, i32 0, i32 0
  %2635 = bitcast %union.Value* %2634 to double*
  %2636 = load double, double* %2635, align 8
  store double %2636, double* %109, align 8
  br i1 true, label %2650, label %2662

; <label>:2637:                                   ; preds = %2626
  %2638 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2639 = getelementptr inbounds %struct.TValue, %struct.TValue* %2638, i32 0, i32 1
  %2640 = load i8, i8* %2639, align 8
  %2641 = zext i8 %2640 to i32
  %2642 = icmp eq i32 %2641, 35
  br i1 %2642, label %2643, label %2649

; <label>:2643:                                   ; preds = %2637
  %2644 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2645 = getelementptr inbounds %struct.TValue, %struct.TValue* %2644, i32 0, i32 0
  %2646 = bitcast %union.Value* %2645 to i64*
  %2647 = load i64, i64* %2646, align 8
  %2648 = sitofp i64 %2647 to double
  store double %2648, double* %109, align 8
  br i1 true, label %2650, label %2662

; <label>:2649:                                   ; preds = %2637
  br i1 false, label %2650, label %2662

; <label>:2650:                                   ; preds = %2649, %2643, %2632
  %2651 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2652 = bitcast %union.StackValue* %2651 to %struct.TValue*
  store %struct.TValue* %2652, %struct.TValue** %110, align 8
  %2653 = load double, double* %109, align 8
  %2654 = load i32, i32* %107, align 4
  %2655 = sitofp i32 %2654 to double
  %2656 = fmul double %2653, %2655
  %2657 = load %struct.TValue*, %struct.TValue** %110, align 8
  %2658 = getelementptr inbounds %struct.TValue, %struct.TValue* %2657, i32 0, i32 0
  %2659 = bitcast %union.Value* %2658 to double*
  store double %2656, double* %2659, align 8
  %2660 = load %struct.TValue*, %struct.TValue** %110, align 8
  %2661 = getelementptr inbounds %struct.TValue, %struct.TValue* %2660, i32 0, i32 1
  store i8 19, i8* %2661, align 8
  br label %2686

; <label>:2662:                                   ; preds = %2649, %2643, %2632
  %2663 = load i32*, i32** %8, align 8
  %2664 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2665 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2664, i32 0, i32 4
  %2666 = bitcast %union.anon* %2665 to %struct.anon*
  %2667 = getelementptr inbounds %struct.anon, %struct.anon* %2666, i32 0, i32 0
  store i32* %2663, i32** %2667, align 8
  %2668 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2669 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2668, i32 0, i32 1
  %2670 = load %union.StackValue*, %union.StackValue** %2669, align 8
  %2671 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2672 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2671, i32 0, i32 6
  store %union.StackValue* %2670, %union.StackValue** %2672, align 8
  %2673 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2674 = load %struct.TValue*, %struct.TValue** %106, align 8
  %2675 = load i32, i32* %107, align 4
  %2676 = sext i32 %2675 to i64
  %2677 = load i32, i32* %10, align 4
  %2678 = lshr i32 %2677, 15
  %2679 = and i32 %2678, 1
  %2680 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2673, %struct.TValue* %2674, i64 %2676, i32 %2679, %union.StackValue* %2680, i32 8)
  %2681 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2682 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2681, i32 0, i32 4
  %2683 = bitcast %union.anon* %2682 to %struct.anon*
  %2684 = getelementptr inbounds %struct.anon, %struct.anon* %2683, i32 0, i32 1
  %2685 = load i32, i32* %2684, align 8
  store i32 %2685, i32* %9, align 4
  br label %2686

; <label>:2686:                                   ; preds = %2662, %2650
  br label %2687

; <label>:2687:                                   ; preds = %2686, %2611
  %2688 = load i32, i32* %9, align 4
  %2689 = icmp ne i32 %2688, 0
  br i1 %2689, label %2690, label %2698

; <label>:2690:                                   ; preds = %2687
  %2691 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2692 = load i32*, i32** %8, align 8
  %2693 = call i32 @luaG_traceexec(%struct.lua_State* %2691, i32* %2692)
  store i32 %2693, i32* %9, align 4
  %2694 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2695 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2694, i32 0, i32 0
  %2696 = load %union.StackValue*, %union.StackValue** %2695, align 8
  %2697 = getelementptr inbounds %union.StackValue, %union.StackValue* %2696, i64 1
  store %union.StackValue* %2697, %union.StackValue** %7, align 8
  br label %2698

; <label>:2698:                                   ; preds = %2690, %2687
  %2699 = load i32*, i32** %8, align 8
  %2700 = getelementptr inbounds i32, i32* %2699, i32 1
  store i32* %2700, i32** %8, align 8
  %2701 = load i32, i32* %2699, align 4
  store i32 %2701, i32* %10, align 4
  %2702 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2703 = load i32, i32* %10, align 4
  %2704 = lshr i32 %2703, 7
  %2705 = and i32 %2704, 255
  %2706 = sext i32 %2705 to i64
  %2707 = getelementptr inbounds %union.StackValue, %union.StackValue* %2702, i64 %2706
  store %union.StackValue* %2707, %union.StackValue** %11, align 8
  %2708 = load i32, i32* %10, align 4
  %2709 = lshr i32 %2708, 0
  %2710 = and i32 %2709, 127
  %2711 = zext i32 %2710 to i64
  %2712 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2711
  %2713 = load i8*, i8** %2712, align 8
  br label %8998

; <label>:2714:                                   ; preds = %8998
  %2715 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2716 = load i32, i32* %10, align 4
  %2717 = lshr i32 %2716, 16
  %2718 = and i32 %2717, 255
  %2719 = sext i32 %2718 to i64
  %2720 = getelementptr inbounds %union.StackValue, %union.StackValue* %2715, i64 %2719
  %2721 = bitcast %union.StackValue* %2720 to %struct.TValue*
  store %struct.TValue* %2721, %struct.TValue** %111, align 8
  %2722 = load i32, i32* %10, align 4
  %2723 = lshr i32 %2722, 24
  %2724 = and i32 %2723, 255
  %2725 = sub nsw i32 %2724, 127
  store i32 %2725, i32* %112, align 4
  %2726 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2727 = getelementptr inbounds %struct.TValue, %struct.TValue* %2726, i32 0, i32 1
  %2728 = load i8, i8* %2727, align 8
  %2729 = zext i8 %2728 to i32
  %2730 = icmp eq i32 %2729, 35
  br i1 %2730, label %2731, label %2747

; <label>:2731:                                   ; preds = %2714
  %2732 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2733 = bitcast %union.StackValue* %2732 to %struct.TValue*
  store %struct.TValue* %2733, %struct.TValue** %113, align 8
  %2734 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2735 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2736 = getelementptr inbounds %struct.TValue, %struct.TValue* %2735, i32 0, i32 0
  %2737 = bitcast %union.Value* %2736 to i64*
  %2738 = load i64, i64* %2737, align 8
  %2739 = load i32, i32* %112, align 4
  %2740 = sext i32 %2739 to i64
  %2741 = call i64 @luaV_mod(%struct.lua_State* %2734, i64 %2738, i64 %2740)
  %2742 = load %struct.TValue*, %struct.TValue** %113, align 8
  %2743 = getelementptr inbounds %struct.TValue, %struct.TValue* %2742, i32 0, i32 0
  %2744 = bitcast %union.Value* %2743 to i64*
  store i64 %2741, i64* %2744, align 8
  %2745 = load %struct.TValue*, %struct.TValue** %113, align 8
  %2746 = getelementptr inbounds %struct.TValue, %struct.TValue* %2745, i32 0, i32 1
  store i8 35, i8* %2746, align 8
  br label %2806

; <label>:2747:                                   ; preds = %2714
  %2748 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2749 = getelementptr inbounds %struct.TValue, %struct.TValue* %2748, i32 0, i32 1
  %2750 = load i8, i8* %2749, align 8
  %2751 = zext i8 %2750 to i32
  %2752 = icmp eq i32 %2751, 19
  br i1 %2752, label %2753, label %2758

; <label>:2753:                                   ; preds = %2747
  %2754 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2755 = getelementptr inbounds %struct.TValue, %struct.TValue* %2754, i32 0, i32 0
  %2756 = bitcast %union.Value* %2755 to double*
  %2757 = load double, double* %2756, align 8
  store double %2757, double* %114, align 8
  br i1 true, label %2771, label %2784

; <label>:2758:                                   ; preds = %2747
  %2759 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2760 = getelementptr inbounds %struct.TValue, %struct.TValue* %2759, i32 0, i32 1
  %2761 = load i8, i8* %2760, align 8
  %2762 = zext i8 %2761 to i32
  %2763 = icmp eq i32 %2762, 35
  br i1 %2763, label %2764, label %2770

; <label>:2764:                                   ; preds = %2758
  %2765 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2766 = getelementptr inbounds %struct.TValue, %struct.TValue* %2765, i32 0, i32 0
  %2767 = bitcast %union.Value* %2766 to i64*
  %2768 = load i64, i64* %2767, align 8
  %2769 = sitofp i64 %2768 to double
  store double %2769, double* %114, align 8
  br i1 true, label %2771, label %2784

; <label>:2770:                                   ; preds = %2758
  br i1 false, label %2771, label %2784

; <label>:2771:                                   ; preds = %2770, %2764, %2753
  %2772 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2773 = bitcast %union.StackValue* %2772 to %struct.TValue*
  store %struct.TValue* %2773, %struct.TValue** %115, align 8
  %2774 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2775 = load double, double* %114, align 8
  %2776 = load i32, i32* %112, align 4
  %2777 = sitofp i32 %2776 to double
  %2778 = call double @luaV_modf(%struct.lua_State* %2774, double %2775, double %2777)
  %2779 = load %struct.TValue*, %struct.TValue** %115, align 8
  %2780 = getelementptr inbounds %struct.TValue, %struct.TValue* %2779, i32 0, i32 0
  %2781 = bitcast %union.Value* %2780 to double*
  store double %2778, double* %2781, align 8
  %2782 = load %struct.TValue*, %struct.TValue** %115, align 8
  %2783 = getelementptr inbounds %struct.TValue, %struct.TValue* %2782, i32 0, i32 1
  store i8 19, i8* %2783, align 8
  br label %2805

; <label>:2784:                                   ; preds = %2770, %2764, %2753
  %2785 = load i32*, i32** %8, align 8
  %2786 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2787 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2786, i32 0, i32 4
  %2788 = bitcast %union.anon* %2787 to %struct.anon*
  %2789 = getelementptr inbounds %struct.anon, %struct.anon* %2788, i32 0, i32 0
  store i32* %2785, i32** %2789, align 8
  %2790 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2791 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2790, i32 0, i32 1
  %2792 = load %union.StackValue*, %union.StackValue** %2791, align 8
  %2793 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2794 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2793, i32 0, i32 6
  store %union.StackValue* %2792, %union.StackValue** %2794, align 8
  %2795 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2796 = load %struct.TValue*, %struct.TValue** %111, align 8
  %2797 = load i32, i32* %112, align 4
  %2798 = sext i32 %2797 to i64
  %2799 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2795, %struct.TValue* %2796, i64 %2798, i32 0, %union.StackValue* %2799, i32 9)
  %2800 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2801 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2800, i32 0, i32 4
  %2802 = bitcast %union.anon* %2801 to %struct.anon*
  %2803 = getelementptr inbounds %struct.anon, %struct.anon* %2802, i32 0, i32 1
  %2804 = load i32, i32* %2803, align 8
  store i32 %2804, i32* %9, align 4
  br label %2805

; <label>:2805:                                   ; preds = %2784, %2771
  br label %2806

; <label>:2806:                                   ; preds = %2805, %2731
  %2807 = load i32, i32* %9, align 4
  %2808 = icmp ne i32 %2807, 0
  br i1 %2808, label %2809, label %2817

; <label>:2809:                                   ; preds = %2806
  %2810 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2811 = load i32*, i32** %8, align 8
  %2812 = call i32 @luaG_traceexec(%struct.lua_State* %2810, i32* %2811)
  store i32 %2812, i32* %9, align 4
  %2813 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2814 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2813, i32 0, i32 0
  %2815 = load %union.StackValue*, %union.StackValue** %2814, align 8
  %2816 = getelementptr inbounds %union.StackValue, %union.StackValue* %2815, i64 1
  store %union.StackValue* %2816, %union.StackValue** %7, align 8
  br label %2817

; <label>:2817:                                   ; preds = %2809, %2806
  %2818 = load i32*, i32** %8, align 8
  %2819 = getelementptr inbounds i32, i32* %2818, i32 1
  store i32* %2819, i32** %8, align 8
  %2820 = load i32, i32* %2818, align 4
  store i32 %2820, i32* %10, align 4
  %2821 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2822 = load i32, i32* %10, align 4
  %2823 = lshr i32 %2822, 7
  %2824 = and i32 %2823, 255
  %2825 = sext i32 %2824 to i64
  %2826 = getelementptr inbounds %union.StackValue, %union.StackValue* %2821, i64 %2825
  store %union.StackValue* %2826, %union.StackValue** %11, align 8
  %2827 = load i32, i32* %10, align 4
  %2828 = lshr i32 %2827, 0
  %2829 = and i32 %2828, 127
  %2830 = zext i32 %2829 to i64
  %2831 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2830
  %2832 = load i8*, i8** %2831, align 8
  br label %8998

; <label>:2833:                                   ; preds = %8998
  %2834 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2835 = load i32, i32* %10, align 4
  %2836 = lshr i32 %2835, 16
  %2837 = and i32 %2836, 255
  %2838 = sext i32 %2837 to i64
  %2839 = getelementptr inbounds %union.StackValue, %union.StackValue* %2834, i64 %2838
  %2840 = bitcast %union.StackValue* %2839 to %struct.TValue*
  store %struct.TValue* %2840, %struct.TValue** %116, align 8
  %2841 = load i32, i32* %10, align 4
  %2842 = lshr i32 %2841, 24
  %2843 = and i32 %2842, 255
  %2844 = sub nsw i32 %2843, 127
  store i32 %2844, i32* %117, align 4
  %2845 = load %struct.TValue*, %struct.TValue** %116, align 8
  %2846 = getelementptr inbounds %struct.TValue, %struct.TValue* %2845, i32 0, i32 1
  %2847 = load i8, i8* %2846, align 8
  %2848 = zext i8 %2847 to i32
  %2849 = icmp eq i32 %2848, 19
  br i1 %2849, label %2850, label %2855

; <label>:2850:                                   ; preds = %2833
  %2851 = load %struct.TValue*, %struct.TValue** %116, align 8
  %2852 = getelementptr inbounds %struct.TValue, %struct.TValue* %2851, i32 0, i32 0
  %2853 = bitcast %union.Value* %2852 to double*
  %2854 = load double, double* %2853, align 8
  store double %2854, double* %118, align 8
  br i1 true, label %2868, label %2881

; <label>:2855:                                   ; preds = %2833
  %2856 = load %struct.TValue*, %struct.TValue** %116, align 8
  %2857 = getelementptr inbounds %struct.TValue, %struct.TValue* %2856, i32 0, i32 1
  %2858 = load i8, i8* %2857, align 8
  %2859 = zext i8 %2858 to i32
  %2860 = icmp eq i32 %2859, 35
  br i1 %2860, label %2861, label %2867

; <label>:2861:                                   ; preds = %2855
  %2862 = load %struct.TValue*, %struct.TValue** %116, align 8
  %2863 = getelementptr inbounds %struct.TValue, %struct.TValue* %2862, i32 0, i32 0
  %2864 = bitcast %union.Value* %2863 to i64*
  %2865 = load i64, i64* %2864, align 8
  %2866 = sitofp i64 %2865 to double
  store double %2866, double* %118, align 8
  br i1 true, label %2868, label %2881

; <label>:2867:                                   ; preds = %2855
  br i1 false, label %2868, label %2881

; <label>:2868:                                   ; preds = %2867, %2861, %2850
  %2869 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2870 = bitcast %union.StackValue* %2869 to %struct.TValue*
  store %struct.TValue* %2870, %struct.TValue** %119, align 8
  %2871 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2872 = load double, double* %118, align 8
  %2873 = load i32, i32* %117, align 4
  %2874 = sitofp i32 %2873 to double
  %2875 = call double @pow(double %2872, double %2874) #8
  %2876 = load %struct.TValue*, %struct.TValue** %119, align 8
  %2877 = getelementptr inbounds %struct.TValue, %struct.TValue* %2876, i32 0, i32 0
  %2878 = bitcast %union.Value* %2877 to double*
  store double %2875, double* %2878, align 8
  %2879 = load %struct.TValue*, %struct.TValue** %119, align 8
  %2880 = getelementptr inbounds %struct.TValue, %struct.TValue* %2879, i32 0, i32 1
  store i8 19, i8* %2880, align 8
  br label %2902

; <label>:2881:                                   ; preds = %2867, %2861, %2850
  %2882 = load i32*, i32** %8, align 8
  %2883 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2884 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2883, i32 0, i32 4
  %2885 = bitcast %union.anon* %2884 to %struct.anon*
  %2886 = getelementptr inbounds %struct.anon, %struct.anon* %2885, i32 0, i32 0
  store i32* %2882, i32** %2886, align 8
  %2887 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2888 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2887, i32 0, i32 1
  %2889 = load %union.StackValue*, %union.StackValue** %2888, align 8
  %2890 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2891 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2890, i32 0, i32 6
  store %union.StackValue* %2889, %union.StackValue** %2891, align 8
  %2892 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2893 = load %struct.TValue*, %struct.TValue** %116, align 8
  %2894 = load i32, i32* %117, align 4
  %2895 = sext i32 %2894 to i64
  %2896 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2892, %struct.TValue* %2893, i64 %2895, i32 0, %union.StackValue* %2896, i32 10)
  %2897 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2898 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2897, i32 0, i32 4
  %2899 = bitcast %union.anon* %2898 to %struct.anon*
  %2900 = getelementptr inbounds %struct.anon, %struct.anon* %2899, i32 0, i32 1
  %2901 = load i32, i32* %2900, align 8
  store i32 %2901, i32* %9, align 4
  br label %2902

; <label>:2902:                                   ; preds = %2881, %2868
  %2903 = load i32, i32* %9, align 4
  %2904 = icmp ne i32 %2903, 0
  br i1 %2904, label %2905, label %2913

; <label>:2905:                                   ; preds = %2902
  %2906 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2907 = load i32*, i32** %8, align 8
  %2908 = call i32 @luaG_traceexec(%struct.lua_State* %2906, i32* %2907)
  store i32 %2908, i32* %9, align 4
  %2909 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2910 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2909, i32 0, i32 0
  %2911 = load %union.StackValue*, %union.StackValue** %2910, align 8
  %2912 = getelementptr inbounds %union.StackValue, %union.StackValue* %2911, i64 1
  store %union.StackValue* %2912, %union.StackValue** %7, align 8
  br label %2913

; <label>:2913:                                   ; preds = %2905, %2902
  %2914 = load i32*, i32** %8, align 8
  %2915 = getelementptr inbounds i32, i32* %2914, i32 1
  store i32* %2915, i32** %8, align 8
  %2916 = load i32, i32* %2914, align 4
  store i32 %2916, i32* %10, align 4
  %2917 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2918 = load i32, i32* %10, align 4
  %2919 = lshr i32 %2918, 7
  %2920 = and i32 %2919, 255
  %2921 = sext i32 %2920 to i64
  %2922 = getelementptr inbounds %union.StackValue, %union.StackValue* %2917, i64 %2921
  store %union.StackValue* %2922, %union.StackValue** %11, align 8
  %2923 = load i32, i32* %10, align 4
  %2924 = lshr i32 %2923, 0
  %2925 = and i32 %2924, 127
  %2926 = zext i32 %2925 to i64
  %2927 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %2926
  %2928 = load i8*, i8** %2927, align 8
  br label %8998

; <label>:2929:                                   ; preds = %8998
  %2930 = load %union.StackValue*, %union.StackValue** %7, align 8
  %2931 = load i32, i32* %10, align 4
  %2932 = lshr i32 %2931, 16
  %2933 = and i32 %2932, 255
  %2934 = sext i32 %2933 to i64
  %2935 = getelementptr inbounds %union.StackValue, %union.StackValue* %2930, i64 %2934
  %2936 = bitcast %union.StackValue* %2935 to %struct.TValue*
  store %struct.TValue* %2936, %struct.TValue** %120, align 8
  %2937 = load i32, i32* %10, align 4
  %2938 = lshr i32 %2937, 24
  %2939 = and i32 %2938, 255
  %2940 = sub nsw i32 %2939, 127
  store i32 %2940, i32* %121, align 4
  %2941 = load %struct.TValue*, %struct.TValue** %120, align 8
  %2942 = getelementptr inbounds %struct.TValue, %struct.TValue* %2941, i32 0, i32 1
  %2943 = load i8, i8* %2942, align 8
  %2944 = zext i8 %2943 to i32
  %2945 = icmp eq i32 %2944, 19
  br i1 %2945, label %2946, label %2951

; <label>:2946:                                   ; preds = %2929
  %2947 = load %struct.TValue*, %struct.TValue** %120, align 8
  %2948 = getelementptr inbounds %struct.TValue, %struct.TValue* %2947, i32 0, i32 0
  %2949 = bitcast %union.Value* %2948 to double*
  %2950 = load double, double* %2949, align 8
  store double %2950, double* %122, align 8
  br i1 true, label %2964, label %2976

; <label>:2951:                                   ; preds = %2929
  %2952 = load %struct.TValue*, %struct.TValue** %120, align 8
  %2953 = getelementptr inbounds %struct.TValue, %struct.TValue* %2952, i32 0, i32 1
  %2954 = load i8, i8* %2953, align 8
  %2955 = zext i8 %2954 to i32
  %2956 = icmp eq i32 %2955, 35
  br i1 %2956, label %2957, label %2963

; <label>:2957:                                   ; preds = %2951
  %2958 = load %struct.TValue*, %struct.TValue** %120, align 8
  %2959 = getelementptr inbounds %struct.TValue, %struct.TValue* %2958, i32 0, i32 0
  %2960 = bitcast %union.Value* %2959 to i64*
  %2961 = load i64, i64* %2960, align 8
  %2962 = sitofp i64 %2961 to double
  store double %2962, double* %122, align 8
  br i1 true, label %2964, label %2976

; <label>:2963:                                   ; preds = %2951
  br i1 false, label %2964, label %2976

; <label>:2964:                                   ; preds = %2963, %2957, %2946
  %2965 = load %union.StackValue*, %union.StackValue** %11, align 8
  %2966 = bitcast %union.StackValue* %2965 to %struct.TValue*
  store %struct.TValue* %2966, %struct.TValue** %123, align 8
  %2967 = load double, double* %122, align 8
  %2968 = load i32, i32* %121, align 4
  %2969 = sitofp i32 %2968 to double
  %2970 = fdiv double %2967, %2969
  %2971 = load %struct.TValue*, %struct.TValue** %123, align 8
  %2972 = getelementptr inbounds %struct.TValue, %struct.TValue* %2971, i32 0, i32 0
  %2973 = bitcast %union.Value* %2972 to double*
  store double %2970, double* %2973, align 8
  %2974 = load %struct.TValue*, %struct.TValue** %123, align 8
  %2975 = getelementptr inbounds %struct.TValue, %struct.TValue* %2974, i32 0, i32 1
  store i8 19, i8* %2975, align 8
  br label %2997

; <label>:2976:                                   ; preds = %2963, %2957, %2946
  %2977 = load i32*, i32** %8, align 8
  %2978 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2979 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2978, i32 0, i32 4
  %2980 = bitcast %union.anon* %2979 to %struct.anon*
  %2981 = getelementptr inbounds %struct.anon, %struct.anon* %2980, i32 0, i32 0
  store i32* %2977, i32** %2981, align 8
  %2982 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2983 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2982, i32 0, i32 1
  %2984 = load %union.StackValue*, %union.StackValue** %2983, align 8
  %2985 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2986 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2985, i32 0, i32 6
  store %union.StackValue* %2984, %union.StackValue** %2986, align 8
  %2987 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %2988 = load %struct.TValue*, %struct.TValue** %120, align 8
  %2989 = load i32, i32* %121, align 4
  %2990 = sext i32 %2989 to i64
  %2991 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %2987, %struct.TValue* %2988, i64 %2990, i32 0, %union.StackValue* %2991, i32 11)
  %2992 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %2993 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2992, i32 0, i32 4
  %2994 = bitcast %union.anon* %2993 to %struct.anon*
  %2995 = getelementptr inbounds %struct.anon, %struct.anon* %2994, i32 0, i32 1
  %2996 = load i32, i32* %2995, align 8
  store i32 %2996, i32* %9, align 4
  br label %2997

; <label>:2997:                                   ; preds = %2976, %2964
  %2998 = load i32, i32* %9, align 4
  %2999 = icmp ne i32 %2998, 0
  br i1 %2999, label %3000, label %3008

; <label>:3000:                                   ; preds = %2997
  %3001 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3002 = load i32*, i32** %8, align 8
  %3003 = call i32 @luaG_traceexec(%struct.lua_State* %3001, i32* %3002)
  store i32 %3003, i32* %9, align 4
  %3004 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3005 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3004, i32 0, i32 0
  %3006 = load %union.StackValue*, %union.StackValue** %3005, align 8
  %3007 = getelementptr inbounds %union.StackValue, %union.StackValue* %3006, i64 1
  store %union.StackValue* %3007, %union.StackValue** %7, align 8
  br label %3008

; <label>:3008:                                   ; preds = %3000, %2997
  %3009 = load i32*, i32** %8, align 8
  %3010 = getelementptr inbounds i32, i32* %3009, i32 1
  store i32* %3010, i32** %8, align 8
  %3011 = load i32, i32* %3009, align 4
  store i32 %3011, i32* %10, align 4
  %3012 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3013 = load i32, i32* %10, align 4
  %3014 = lshr i32 %3013, 7
  %3015 = and i32 %3014, 255
  %3016 = sext i32 %3015 to i64
  %3017 = getelementptr inbounds %union.StackValue, %union.StackValue* %3012, i64 %3016
  store %union.StackValue* %3017, %union.StackValue** %11, align 8
  %3018 = load i32, i32* %10, align 4
  %3019 = lshr i32 %3018, 0
  %3020 = and i32 %3019, 127
  %3021 = zext i32 %3020 to i64
  %3022 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3021
  %3023 = load i8*, i8** %3022, align 8
  br label %8998

; <label>:3024:                                   ; preds = %8998
  %3025 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3026 = load i32, i32* %10, align 4
  %3027 = lshr i32 %3026, 16
  %3028 = and i32 %3027, 255
  %3029 = sext i32 %3028 to i64
  %3030 = getelementptr inbounds %union.StackValue, %union.StackValue* %3025, i64 %3029
  %3031 = bitcast %union.StackValue* %3030 to %struct.TValue*
  store %struct.TValue* %3031, %struct.TValue** %124, align 8
  %3032 = load i32, i32* %10, align 4
  %3033 = lshr i32 %3032, 24
  %3034 = and i32 %3033, 255
  %3035 = sub nsw i32 %3034, 127
  store i32 %3035, i32* %125, align 4
  %3036 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3037 = getelementptr inbounds %struct.TValue, %struct.TValue* %3036, i32 0, i32 1
  %3038 = load i8, i8* %3037, align 8
  %3039 = zext i8 %3038 to i32
  %3040 = icmp eq i32 %3039, 35
  br i1 %3040, label %3041, label %3057

; <label>:3041:                                   ; preds = %3024
  %3042 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3043 = bitcast %union.StackValue* %3042 to %struct.TValue*
  store %struct.TValue* %3043, %struct.TValue** %126, align 8
  %3044 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3045 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3046 = getelementptr inbounds %struct.TValue, %struct.TValue* %3045, i32 0, i32 0
  %3047 = bitcast %union.Value* %3046 to i64*
  %3048 = load i64, i64* %3047, align 8
  %3049 = load i32, i32* %125, align 4
  %3050 = sext i32 %3049 to i64
  %3051 = call i64 @luaV_idiv(%struct.lua_State* %3044, i64 %3048, i64 %3050)
  %3052 = load %struct.TValue*, %struct.TValue** %126, align 8
  %3053 = getelementptr inbounds %struct.TValue, %struct.TValue* %3052, i32 0, i32 0
  %3054 = bitcast %union.Value* %3053 to i64*
  store i64 %3051, i64* %3054, align 8
  %3055 = load %struct.TValue*, %struct.TValue** %126, align 8
  %3056 = getelementptr inbounds %struct.TValue, %struct.TValue* %3055, i32 0, i32 1
  store i8 35, i8* %3056, align 8
  br label %3117

; <label>:3057:                                   ; preds = %3024
  %3058 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3059 = getelementptr inbounds %struct.TValue, %struct.TValue* %3058, i32 0, i32 1
  %3060 = load i8, i8* %3059, align 8
  %3061 = zext i8 %3060 to i32
  %3062 = icmp eq i32 %3061, 19
  br i1 %3062, label %3063, label %3068

; <label>:3063:                                   ; preds = %3057
  %3064 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3065 = getelementptr inbounds %struct.TValue, %struct.TValue* %3064, i32 0, i32 0
  %3066 = bitcast %union.Value* %3065 to double*
  %3067 = load double, double* %3066, align 8
  store double %3067, double* %127, align 8
  br i1 true, label %3081, label %3095

; <label>:3068:                                   ; preds = %3057
  %3069 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3070 = getelementptr inbounds %struct.TValue, %struct.TValue* %3069, i32 0, i32 1
  %3071 = load i8, i8* %3070, align 8
  %3072 = zext i8 %3071 to i32
  %3073 = icmp eq i32 %3072, 35
  br i1 %3073, label %3074, label %3080

; <label>:3074:                                   ; preds = %3068
  %3075 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3076 = getelementptr inbounds %struct.TValue, %struct.TValue* %3075, i32 0, i32 0
  %3077 = bitcast %union.Value* %3076 to i64*
  %3078 = load i64, i64* %3077, align 8
  %3079 = sitofp i64 %3078 to double
  store double %3079, double* %127, align 8
  br i1 true, label %3081, label %3095

; <label>:3080:                                   ; preds = %3068
  br i1 false, label %3081, label %3095

; <label>:3081:                                   ; preds = %3080, %3074, %3063
  %3082 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3083 = bitcast %union.StackValue* %3082 to %struct.TValue*
  store %struct.TValue* %3083, %struct.TValue** %128, align 8
  %3084 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3085 = load double, double* %127, align 8
  %3086 = load i32, i32* %125, align 4
  %3087 = sitofp i32 %3086 to double
  %3088 = fdiv double %3085, %3087
  %3089 = call double @llvm.floor.f64(double %3088)
  %3090 = load %struct.TValue*, %struct.TValue** %128, align 8
  %3091 = getelementptr inbounds %struct.TValue, %struct.TValue* %3090, i32 0, i32 0
  %3092 = bitcast %union.Value* %3091 to double*
  store double %3089, double* %3092, align 8
  %3093 = load %struct.TValue*, %struct.TValue** %128, align 8
  %3094 = getelementptr inbounds %struct.TValue, %struct.TValue* %3093, i32 0, i32 1
  store i8 19, i8* %3094, align 8
  br label %3116

; <label>:3095:                                   ; preds = %3080, %3074, %3063
  %3096 = load i32*, i32** %8, align 8
  %3097 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3098 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3097, i32 0, i32 4
  %3099 = bitcast %union.anon* %3098 to %struct.anon*
  %3100 = getelementptr inbounds %struct.anon, %struct.anon* %3099, i32 0, i32 0
  store i32* %3096, i32** %3100, align 8
  %3101 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3101, i32 0, i32 1
  %3103 = load %union.StackValue*, %union.StackValue** %3102, align 8
  %3104 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3104, i32 0, i32 6
  store %union.StackValue* %3103, %union.StackValue** %3105, align 8
  %3106 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3107 = load %struct.TValue*, %struct.TValue** %124, align 8
  %3108 = load i32, i32* %125, align 4
  %3109 = sext i32 %3108 to i64
  %3110 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %3106, %struct.TValue* %3107, i64 %3109, i32 0, %union.StackValue* %3110, i32 12)
  %3111 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3112 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3111, i32 0, i32 4
  %3113 = bitcast %union.anon* %3112 to %struct.anon*
  %3114 = getelementptr inbounds %struct.anon, %struct.anon* %3113, i32 0, i32 1
  %3115 = load i32, i32* %3114, align 8
  store i32 %3115, i32* %9, align 4
  br label %3116

; <label>:3116:                                   ; preds = %3095, %3081
  br label %3117

; <label>:3117:                                   ; preds = %3116, %3041
  %3118 = load i32, i32* %9, align 4
  %3119 = icmp ne i32 %3118, 0
  br i1 %3119, label %3120, label %3128

; <label>:3120:                                   ; preds = %3117
  %3121 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3122 = load i32*, i32** %8, align 8
  %3123 = call i32 @luaG_traceexec(%struct.lua_State* %3121, i32* %3122)
  store i32 %3123, i32* %9, align 4
  %3124 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3125 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3124, i32 0, i32 0
  %3126 = load %union.StackValue*, %union.StackValue** %3125, align 8
  %3127 = getelementptr inbounds %union.StackValue, %union.StackValue* %3126, i64 1
  store %union.StackValue* %3127, %union.StackValue** %7, align 8
  br label %3128

; <label>:3128:                                   ; preds = %3120, %3117
  %3129 = load i32*, i32** %8, align 8
  %3130 = getelementptr inbounds i32, i32* %3129, i32 1
  store i32* %3130, i32** %8, align 8
  %3131 = load i32, i32* %3129, align 4
  store i32 %3131, i32* %10, align 4
  %3132 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3133 = load i32, i32* %10, align 4
  %3134 = lshr i32 %3133, 7
  %3135 = and i32 %3134, 255
  %3136 = sext i32 %3135 to i64
  %3137 = getelementptr inbounds %union.StackValue, %union.StackValue* %3132, i64 %3136
  store %union.StackValue* %3137, %union.StackValue** %11, align 8
  %3138 = load i32, i32* %10, align 4
  %3139 = lshr i32 %3138, 0
  %3140 = and i32 %3139, 127
  %3141 = zext i32 %3140 to i64
  %3142 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3141
  %3143 = load i8*, i8** %3142, align 8
  br label %8998

; <label>:3144:                                   ; preds = %8998
  %3145 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3146 = load i32, i32* %10, align 4
  %3147 = lshr i32 %3146, 16
  %3148 = and i32 %3147, 255
  %3149 = sext i32 %3148 to i64
  %3150 = getelementptr inbounds %union.StackValue, %union.StackValue* %3145, i64 %3149
  %3151 = bitcast %union.StackValue* %3150 to %struct.TValue*
  store %struct.TValue* %3151, %struct.TValue** %129, align 8
  %3152 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3153 = load i32, i32* %10, align 4
  %3154 = lshr i32 %3153, 24
  %3155 = and i32 %3154, 255
  %3156 = sext i32 %3155 to i64
  %3157 = getelementptr inbounds %struct.TValue, %struct.TValue* %3152, i64 %3156
  store %struct.TValue* %3157, %struct.TValue** %130, align 8
  %3158 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3159 = getelementptr inbounds %struct.TValue, %struct.TValue* %3158, i32 0, i32 1
  %3160 = load i8, i8* %3159, align 8
  %3161 = zext i8 %3160 to i32
  %3162 = icmp eq i32 %3161, 35
  br i1 %3162, label %3163, label %3188

; <label>:3163:                                   ; preds = %3144
  %3164 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3165 = getelementptr inbounds %struct.TValue, %struct.TValue* %3164, i32 0, i32 1
  %3166 = load i8, i8* %3165, align 8
  %3167 = zext i8 %3166 to i32
  %3168 = icmp eq i32 %3167, 35
  br i1 %3168, label %3169, label %3188

; <label>:3169:                                   ; preds = %3163
  %3170 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3171 = getelementptr inbounds %struct.TValue, %struct.TValue* %3170, i32 0, i32 0
  %3172 = bitcast %union.Value* %3171 to i64*
  %3173 = load i64, i64* %3172, align 8
  store i64 %3173, i64* %131, align 8
  %3174 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3175 = getelementptr inbounds %struct.TValue, %struct.TValue* %3174, i32 0, i32 0
  %3176 = bitcast %union.Value* %3175 to i64*
  %3177 = load i64, i64* %3176, align 8
  store i64 %3177, i64* %132, align 8
  %3178 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3179 = bitcast %union.StackValue* %3178 to %struct.TValue*
  store %struct.TValue* %3179, %struct.TValue** %133, align 8
  %3180 = load i64, i64* %131, align 8
  %3181 = load i64, i64* %132, align 8
  %3182 = add i64 %3180, %3181
  %3183 = load %struct.TValue*, %struct.TValue** %133, align 8
  %3184 = getelementptr inbounds %struct.TValue, %struct.TValue* %3183, i32 0, i32 0
  %3185 = bitcast %union.Value* %3184 to i64*
  store i64 %3182, i64* %3185, align 8
  %3186 = load %struct.TValue*, %struct.TValue** %133, align 8
  %3187 = getelementptr inbounds %struct.TValue, %struct.TValue* %3186, i32 0, i32 1
  store i8 35, i8* %3187, align 8
  br label %3271

; <label>:3188:                                   ; preds = %3163, %3144
  %3189 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3190 = getelementptr inbounds %struct.TValue, %struct.TValue* %3189, i32 0, i32 1
  %3191 = load i8, i8* %3190, align 8
  %3192 = zext i8 %3191 to i32
  %3193 = icmp eq i32 %3192, 19
  br i1 %3193, label %3194, label %3199

; <label>:3194:                                   ; preds = %3188
  %3195 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3196 = getelementptr inbounds %struct.TValue, %struct.TValue* %3195, i32 0, i32 0
  %3197 = bitcast %union.Value* %3196 to double*
  %3198 = load double, double* %3197, align 8
  store double %3198, double* %134, align 8
  br i1 true, label %3212, label %3247

; <label>:3199:                                   ; preds = %3188
  %3200 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3201 = getelementptr inbounds %struct.TValue, %struct.TValue* %3200, i32 0, i32 1
  %3202 = load i8, i8* %3201, align 8
  %3203 = zext i8 %3202 to i32
  %3204 = icmp eq i32 %3203, 35
  br i1 %3204, label %3205, label %3211

; <label>:3205:                                   ; preds = %3199
  %3206 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3207 = getelementptr inbounds %struct.TValue, %struct.TValue* %3206, i32 0, i32 0
  %3208 = bitcast %union.Value* %3207 to i64*
  %3209 = load i64, i64* %3208, align 8
  %3210 = sitofp i64 %3209 to double
  store double %3210, double* %134, align 8
  br i1 true, label %3212, label %3247

; <label>:3211:                                   ; preds = %3199
  br i1 false, label %3212, label %3247

; <label>:3212:                                   ; preds = %3211, %3205, %3194
  %3213 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3214 = getelementptr inbounds %struct.TValue, %struct.TValue* %3213, i32 0, i32 1
  %3215 = load i8, i8* %3214, align 8
  %3216 = zext i8 %3215 to i32
  %3217 = icmp eq i32 %3216, 19
  br i1 %3217, label %3218, label %3223

; <label>:3218:                                   ; preds = %3212
  %3219 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3220 = getelementptr inbounds %struct.TValue, %struct.TValue* %3219, i32 0, i32 0
  %3221 = bitcast %union.Value* %3220 to double*
  %3222 = load double, double* %3221, align 8
  store double %3222, double* %135, align 8
  br i1 true, label %3236, label %3247

; <label>:3223:                                   ; preds = %3212
  %3224 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3225 = getelementptr inbounds %struct.TValue, %struct.TValue* %3224, i32 0, i32 1
  %3226 = load i8, i8* %3225, align 8
  %3227 = zext i8 %3226 to i32
  %3228 = icmp eq i32 %3227, 35
  br i1 %3228, label %3229, label %3235

; <label>:3229:                                   ; preds = %3223
  %3230 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3231 = getelementptr inbounds %struct.TValue, %struct.TValue* %3230, i32 0, i32 0
  %3232 = bitcast %union.Value* %3231 to i64*
  %3233 = load i64, i64* %3232, align 8
  %3234 = sitofp i64 %3233 to double
  store double %3234, double* %135, align 8
  br i1 true, label %3236, label %3247

; <label>:3235:                                   ; preds = %3223
  br i1 false, label %3236, label %3247

; <label>:3236:                                   ; preds = %3235, %3229, %3218
  %3237 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3238 = bitcast %union.StackValue* %3237 to %struct.TValue*
  store %struct.TValue* %3238, %struct.TValue** %136, align 8
  %3239 = load double, double* %134, align 8
  %3240 = load double, double* %135, align 8
  %3241 = fadd double %3239, %3240
  %3242 = load %struct.TValue*, %struct.TValue** %136, align 8
  %3243 = getelementptr inbounds %struct.TValue, %struct.TValue* %3242, i32 0, i32 0
  %3244 = bitcast %union.Value* %3243 to double*
  store double %3241, double* %3244, align 8
  %3245 = load %struct.TValue*, %struct.TValue** %136, align 8
  %3246 = getelementptr inbounds %struct.TValue, %struct.TValue* %3245, i32 0, i32 1
  store i8 19, i8* %3246, align 8
  br label %3270

; <label>:3247:                                   ; preds = %3235, %3229, %3218, %3211, %3205, %3194
  %3248 = load i32*, i32** %8, align 8
  %3249 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3250 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3249, i32 0, i32 4
  %3251 = bitcast %union.anon* %3250 to %struct.anon*
  %3252 = getelementptr inbounds %struct.anon, %struct.anon* %3251, i32 0, i32 0
  store i32* %3248, i32** %3252, align 8
  %3253 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3254 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3253, i32 0, i32 1
  %3255 = load %union.StackValue*, %union.StackValue** %3254, align 8
  %3256 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3257 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3256, i32 0, i32 6
  store %union.StackValue* %3255, %union.StackValue** %3257, align 8
  %3258 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3259 = load %struct.TValue*, %struct.TValue** %129, align 8
  %3260 = load %struct.TValue*, %struct.TValue** %130, align 8
  %3261 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3262 = load i32, i32* %10, align 4
  %3263 = lshr i32 %3262, 15
  %3264 = and i32 %3263, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %3258, %struct.TValue* %3259, %struct.TValue* %3260, %union.StackValue* %3261, i32 %3264, i32 6)
  %3265 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3266 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3265, i32 0, i32 4
  %3267 = bitcast %union.anon* %3266 to %struct.anon*
  %3268 = getelementptr inbounds %struct.anon, %struct.anon* %3267, i32 0, i32 1
  %3269 = load i32, i32* %3268, align 8
  store i32 %3269, i32* %9, align 4
  br label %3270

; <label>:3270:                                   ; preds = %3247, %3236
  br label %3271

; <label>:3271:                                   ; preds = %3270, %3169
  %3272 = load i32, i32* %9, align 4
  %3273 = icmp ne i32 %3272, 0
  br i1 %3273, label %3274, label %3282

; <label>:3274:                                   ; preds = %3271
  %3275 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3276 = load i32*, i32** %8, align 8
  %3277 = call i32 @luaG_traceexec(%struct.lua_State* %3275, i32* %3276)
  store i32 %3277, i32* %9, align 4
  %3278 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3279 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3278, i32 0, i32 0
  %3280 = load %union.StackValue*, %union.StackValue** %3279, align 8
  %3281 = getelementptr inbounds %union.StackValue, %union.StackValue* %3280, i64 1
  store %union.StackValue* %3281, %union.StackValue** %7, align 8
  br label %3282

; <label>:3282:                                   ; preds = %3274, %3271
  %3283 = load i32*, i32** %8, align 8
  %3284 = getelementptr inbounds i32, i32* %3283, i32 1
  store i32* %3284, i32** %8, align 8
  %3285 = load i32, i32* %3283, align 4
  store i32 %3285, i32* %10, align 4
  %3286 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3287 = load i32, i32* %10, align 4
  %3288 = lshr i32 %3287, 7
  %3289 = and i32 %3288, 255
  %3290 = sext i32 %3289 to i64
  %3291 = getelementptr inbounds %union.StackValue, %union.StackValue* %3286, i64 %3290
  store %union.StackValue* %3291, %union.StackValue** %11, align 8
  %3292 = load i32, i32* %10, align 4
  %3293 = lshr i32 %3292, 0
  %3294 = and i32 %3293, 127
  %3295 = zext i32 %3294 to i64
  %3296 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3295
  %3297 = load i8*, i8** %3296, align 8
  br label %8998

; <label>:3298:                                   ; preds = %8998
  %3299 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3300 = load i32, i32* %10, align 4
  %3301 = lshr i32 %3300, 16
  %3302 = and i32 %3301, 255
  %3303 = sext i32 %3302 to i64
  %3304 = getelementptr inbounds %union.StackValue, %union.StackValue* %3299, i64 %3303
  %3305 = bitcast %union.StackValue* %3304 to %struct.TValue*
  store %struct.TValue* %3305, %struct.TValue** %137, align 8
  %3306 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3307 = load i32, i32* %10, align 4
  %3308 = lshr i32 %3307, 24
  %3309 = and i32 %3308, 255
  %3310 = sext i32 %3309 to i64
  %3311 = getelementptr inbounds %struct.TValue, %struct.TValue* %3306, i64 %3310
  store %struct.TValue* %3311, %struct.TValue** %138, align 8
  %3312 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3313 = getelementptr inbounds %struct.TValue, %struct.TValue* %3312, i32 0, i32 1
  %3314 = load i8, i8* %3313, align 8
  %3315 = zext i8 %3314 to i32
  %3316 = icmp eq i32 %3315, 35
  br i1 %3316, label %3317, label %3342

; <label>:3317:                                   ; preds = %3298
  %3318 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3319 = getelementptr inbounds %struct.TValue, %struct.TValue* %3318, i32 0, i32 1
  %3320 = load i8, i8* %3319, align 8
  %3321 = zext i8 %3320 to i32
  %3322 = icmp eq i32 %3321, 35
  br i1 %3322, label %3323, label %3342

; <label>:3323:                                   ; preds = %3317
  %3324 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3325 = getelementptr inbounds %struct.TValue, %struct.TValue* %3324, i32 0, i32 0
  %3326 = bitcast %union.Value* %3325 to i64*
  %3327 = load i64, i64* %3326, align 8
  store i64 %3327, i64* %139, align 8
  %3328 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3329 = getelementptr inbounds %struct.TValue, %struct.TValue* %3328, i32 0, i32 0
  %3330 = bitcast %union.Value* %3329 to i64*
  %3331 = load i64, i64* %3330, align 8
  store i64 %3331, i64* %140, align 8
  %3332 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3333 = bitcast %union.StackValue* %3332 to %struct.TValue*
  store %struct.TValue* %3333, %struct.TValue** %141, align 8
  %3334 = load i64, i64* %139, align 8
  %3335 = load i64, i64* %140, align 8
  %3336 = sub i64 %3334, %3335
  %3337 = load %struct.TValue*, %struct.TValue** %141, align 8
  %3338 = getelementptr inbounds %struct.TValue, %struct.TValue* %3337, i32 0, i32 0
  %3339 = bitcast %union.Value* %3338 to i64*
  store i64 %3336, i64* %3339, align 8
  %3340 = load %struct.TValue*, %struct.TValue** %141, align 8
  %3341 = getelementptr inbounds %struct.TValue, %struct.TValue* %3340, i32 0, i32 1
  store i8 35, i8* %3341, align 8
  br label %3422

; <label>:3342:                                   ; preds = %3317, %3298
  %3343 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3344 = getelementptr inbounds %struct.TValue, %struct.TValue* %3343, i32 0, i32 1
  %3345 = load i8, i8* %3344, align 8
  %3346 = zext i8 %3345 to i32
  %3347 = icmp eq i32 %3346, 19
  br i1 %3347, label %3348, label %3353

; <label>:3348:                                   ; preds = %3342
  %3349 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3350 = getelementptr inbounds %struct.TValue, %struct.TValue* %3349, i32 0, i32 0
  %3351 = bitcast %union.Value* %3350 to double*
  %3352 = load double, double* %3351, align 8
  store double %3352, double* %142, align 8
  br i1 true, label %3366, label %3401

; <label>:3353:                                   ; preds = %3342
  %3354 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3355 = getelementptr inbounds %struct.TValue, %struct.TValue* %3354, i32 0, i32 1
  %3356 = load i8, i8* %3355, align 8
  %3357 = zext i8 %3356 to i32
  %3358 = icmp eq i32 %3357, 35
  br i1 %3358, label %3359, label %3365

; <label>:3359:                                   ; preds = %3353
  %3360 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3361 = getelementptr inbounds %struct.TValue, %struct.TValue* %3360, i32 0, i32 0
  %3362 = bitcast %union.Value* %3361 to i64*
  %3363 = load i64, i64* %3362, align 8
  %3364 = sitofp i64 %3363 to double
  store double %3364, double* %142, align 8
  br i1 true, label %3366, label %3401

; <label>:3365:                                   ; preds = %3353
  br i1 false, label %3366, label %3401

; <label>:3366:                                   ; preds = %3365, %3359, %3348
  %3367 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3368 = getelementptr inbounds %struct.TValue, %struct.TValue* %3367, i32 0, i32 1
  %3369 = load i8, i8* %3368, align 8
  %3370 = zext i8 %3369 to i32
  %3371 = icmp eq i32 %3370, 19
  br i1 %3371, label %3372, label %3377

; <label>:3372:                                   ; preds = %3366
  %3373 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3374 = getelementptr inbounds %struct.TValue, %struct.TValue* %3373, i32 0, i32 0
  %3375 = bitcast %union.Value* %3374 to double*
  %3376 = load double, double* %3375, align 8
  store double %3376, double* %143, align 8
  br i1 true, label %3390, label %3401

; <label>:3377:                                   ; preds = %3366
  %3378 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3379 = getelementptr inbounds %struct.TValue, %struct.TValue* %3378, i32 0, i32 1
  %3380 = load i8, i8* %3379, align 8
  %3381 = zext i8 %3380 to i32
  %3382 = icmp eq i32 %3381, 35
  br i1 %3382, label %3383, label %3389

; <label>:3383:                                   ; preds = %3377
  %3384 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3385 = getelementptr inbounds %struct.TValue, %struct.TValue* %3384, i32 0, i32 0
  %3386 = bitcast %union.Value* %3385 to i64*
  %3387 = load i64, i64* %3386, align 8
  %3388 = sitofp i64 %3387 to double
  store double %3388, double* %143, align 8
  br i1 true, label %3390, label %3401

; <label>:3389:                                   ; preds = %3377
  br i1 false, label %3390, label %3401

; <label>:3390:                                   ; preds = %3389, %3383, %3372
  %3391 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3392 = bitcast %union.StackValue* %3391 to %struct.TValue*
  store %struct.TValue* %3392, %struct.TValue** %144, align 8
  %3393 = load double, double* %142, align 8
  %3394 = load double, double* %143, align 8
  %3395 = fsub double %3393, %3394
  %3396 = load %struct.TValue*, %struct.TValue** %144, align 8
  %3397 = getelementptr inbounds %struct.TValue, %struct.TValue* %3396, i32 0, i32 0
  %3398 = bitcast %union.Value* %3397 to double*
  store double %3395, double* %3398, align 8
  %3399 = load %struct.TValue*, %struct.TValue** %144, align 8
  %3400 = getelementptr inbounds %struct.TValue, %struct.TValue* %3399, i32 0, i32 1
  store i8 19, i8* %3400, align 8
  br label %3421

; <label>:3401:                                   ; preds = %3389, %3383, %3372, %3365, %3359, %3348
  %3402 = load i32*, i32** %8, align 8
  %3403 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3404 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3403, i32 0, i32 4
  %3405 = bitcast %union.anon* %3404 to %struct.anon*
  %3406 = getelementptr inbounds %struct.anon, %struct.anon* %3405, i32 0, i32 0
  store i32* %3402, i32** %3406, align 8
  %3407 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3408 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3407, i32 0, i32 1
  %3409 = load %union.StackValue*, %union.StackValue** %3408, align 8
  %3410 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3411 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3410, i32 0, i32 6
  store %union.StackValue* %3409, %union.StackValue** %3411, align 8
  %3412 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3413 = load %struct.TValue*, %struct.TValue** %137, align 8
  %3414 = load %struct.TValue*, %struct.TValue** %138, align 8
  %3415 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinassocTM(%struct.lua_State* %3412, %struct.TValue* %3413, %struct.TValue* %3414, %union.StackValue* %3415, i32 0, i32 7)
  %3416 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3417 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3416, i32 0, i32 4
  %3418 = bitcast %union.anon* %3417 to %struct.anon*
  %3419 = getelementptr inbounds %struct.anon, %struct.anon* %3418, i32 0, i32 1
  %3420 = load i32, i32* %3419, align 8
  store i32 %3420, i32* %9, align 4
  br label %3421

; <label>:3421:                                   ; preds = %3401, %3390
  br label %3422

; <label>:3422:                                   ; preds = %3421, %3323
  %3423 = load i32, i32* %9, align 4
  %3424 = icmp ne i32 %3423, 0
  br i1 %3424, label %3425, label %3433

; <label>:3425:                                   ; preds = %3422
  %3426 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3427 = load i32*, i32** %8, align 8
  %3428 = call i32 @luaG_traceexec(%struct.lua_State* %3426, i32* %3427)
  store i32 %3428, i32* %9, align 4
  %3429 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3430 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3429, i32 0, i32 0
  %3431 = load %union.StackValue*, %union.StackValue** %3430, align 8
  %3432 = getelementptr inbounds %union.StackValue, %union.StackValue* %3431, i64 1
  store %union.StackValue* %3432, %union.StackValue** %7, align 8
  br label %3433

; <label>:3433:                                   ; preds = %3425, %3422
  %3434 = load i32*, i32** %8, align 8
  %3435 = getelementptr inbounds i32, i32* %3434, i32 1
  store i32* %3435, i32** %8, align 8
  %3436 = load i32, i32* %3434, align 4
  store i32 %3436, i32* %10, align 4
  %3437 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3438 = load i32, i32* %10, align 4
  %3439 = lshr i32 %3438, 7
  %3440 = and i32 %3439, 255
  %3441 = sext i32 %3440 to i64
  %3442 = getelementptr inbounds %union.StackValue, %union.StackValue* %3437, i64 %3441
  store %union.StackValue* %3442, %union.StackValue** %11, align 8
  %3443 = load i32, i32* %10, align 4
  %3444 = lshr i32 %3443, 0
  %3445 = and i32 %3444, 127
  %3446 = zext i32 %3445 to i64
  %3447 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3446
  %3448 = load i8*, i8** %3447, align 8
  br label %8998

; <label>:3449:                                   ; preds = %8998
  %3450 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3451 = load i32, i32* %10, align 4
  %3452 = lshr i32 %3451, 16
  %3453 = and i32 %3452, 255
  %3454 = sext i32 %3453 to i64
  %3455 = getelementptr inbounds %union.StackValue, %union.StackValue* %3450, i64 %3454
  %3456 = bitcast %union.StackValue* %3455 to %struct.TValue*
  store %struct.TValue* %3456, %struct.TValue** %145, align 8
  %3457 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3458 = load i32, i32* %10, align 4
  %3459 = lshr i32 %3458, 24
  %3460 = and i32 %3459, 255
  %3461 = sext i32 %3460 to i64
  %3462 = getelementptr inbounds %struct.TValue, %struct.TValue* %3457, i64 %3461
  store %struct.TValue* %3462, %struct.TValue** %146, align 8
  %3463 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3464 = getelementptr inbounds %struct.TValue, %struct.TValue* %3463, i32 0, i32 1
  %3465 = load i8, i8* %3464, align 8
  %3466 = zext i8 %3465 to i32
  %3467 = icmp eq i32 %3466, 35
  br i1 %3467, label %3468, label %3493

; <label>:3468:                                   ; preds = %3449
  %3469 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3470 = getelementptr inbounds %struct.TValue, %struct.TValue* %3469, i32 0, i32 1
  %3471 = load i8, i8* %3470, align 8
  %3472 = zext i8 %3471 to i32
  %3473 = icmp eq i32 %3472, 35
  br i1 %3473, label %3474, label %3493

; <label>:3474:                                   ; preds = %3468
  %3475 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3476 = getelementptr inbounds %struct.TValue, %struct.TValue* %3475, i32 0, i32 0
  %3477 = bitcast %union.Value* %3476 to i64*
  %3478 = load i64, i64* %3477, align 8
  store i64 %3478, i64* %147, align 8
  %3479 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3480 = getelementptr inbounds %struct.TValue, %struct.TValue* %3479, i32 0, i32 0
  %3481 = bitcast %union.Value* %3480 to i64*
  %3482 = load i64, i64* %3481, align 8
  store i64 %3482, i64* %148, align 8
  %3483 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3484 = bitcast %union.StackValue* %3483 to %struct.TValue*
  store %struct.TValue* %3484, %struct.TValue** %149, align 8
  %3485 = load i64, i64* %147, align 8
  %3486 = load i64, i64* %148, align 8
  %3487 = mul i64 %3485, %3486
  %3488 = load %struct.TValue*, %struct.TValue** %149, align 8
  %3489 = getelementptr inbounds %struct.TValue, %struct.TValue* %3488, i32 0, i32 0
  %3490 = bitcast %union.Value* %3489 to i64*
  store i64 %3487, i64* %3490, align 8
  %3491 = load %struct.TValue*, %struct.TValue** %149, align 8
  %3492 = getelementptr inbounds %struct.TValue, %struct.TValue* %3491, i32 0, i32 1
  store i8 35, i8* %3492, align 8
  br label %3576

; <label>:3493:                                   ; preds = %3468, %3449
  %3494 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3495 = getelementptr inbounds %struct.TValue, %struct.TValue* %3494, i32 0, i32 1
  %3496 = load i8, i8* %3495, align 8
  %3497 = zext i8 %3496 to i32
  %3498 = icmp eq i32 %3497, 19
  br i1 %3498, label %3499, label %3504

; <label>:3499:                                   ; preds = %3493
  %3500 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3501 = getelementptr inbounds %struct.TValue, %struct.TValue* %3500, i32 0, i32 0
  %3502 = bitcast %union.Value* %3501 to double*
  %3503 = load double, double* %3502, align 8
  store double %3503, double* %150, align 8
  br i1 true, label %3517, label %3552

; <label>:3504:                                   ; preds = %3493
  %3505 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3506 = getelementptr inbounds %struct.TValue, %struct.TValue* %3505, i32 0, i32 1
  %3507 = load i8, i8* %3506, align 8
  %3508 = zext i8 %3507 to i32
  %3509 = icmp eq i32 %3508, 35
  br i1 %3509, label %3510, label %3516

; <label>:3510:                                   ; preds = %3504
  %3511 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3512 = getelementptr inbounds %struct.TValue, %struct.TValue* %3511, i32 0, i32 0
  %3513 = bitcast %union.Value* %3512 to i64*
  %3514 = load i64, i64* %3513, align 8
  %3515 = sitofp i64 %3514 to double
  store double %3515, double* %150, align 8
  br i1 true, label %3517, label %3552

; <label>:3516:                                   ; preds = %3504
  br i1 false, label %3517, label %3552

; <label>:3517:                                   ; preds = %3516, %3510, %3499
  %3518 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3519 = getelementptr inbounds %struct.TValue, %struct.TValue* %3518, i32 0, i32 1
  %3520 = load i8, i8* %3519, align 8
  %3521 = zext i8 %3520 to i32
  %3522 = icmp eq i32 %3521, 19
  br i1 %3522, label %3523, label %3528

; <label>:3523:                                   ; preds = %3517
  %3524 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3525 = getelementptr inbounds %struct.TValue, %struct.TValue* %3524, i32 0, i32 0
  %3526 = bitcast %union.Value* %3525 to double*
  %3527 = load double, double* %3526, align 8
  store double %3527, double* %151, align 8
  br i1 true, label %3541, label %3552

; <label>:3528:                                   ; preds = %3517
  %3529 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3530 = getelementptr inbounds %struct.TValue, %struct.TValue* %3529, i32 0, i32 1
  %3531 = load i8, i8* %3530, align 8
  %3532 = zext i8 %3531 to i32
  %3533 = icmp eq i32 %3532, 35
  br i1 %3533, label %3534, label %3540

; <label>:3534:                                   ; preds = %3528
  %3535 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3536 = getelementptr inbounds %struct.TValue, %struct.TValue* %3535, i32 0, i32 0
  %3537 = bitcast %union.Value* %3536 to i64*
  %3538 = load i64, i64* %3537, align 8
  %3539 = sitofp i64 %3538 to double
  store double %3539, double* %151, align 8
  br i1 true, label %3541, label %3552

; <label>:3540:                                   ; preds = %3528
  br i1 false, label %3541, label %3552

; <label>:3541:                                   ; preds = %3540, %3534, %3523
  %3542 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3543 = bitcast %union.StackValue* %3542 to %struct.TValue*
  store %struct.TValue* %3543, %struct.TValue** %152, align 8
  %3544 = load double, double* %150, align 8
  %3545 = load double, double* %151, align 8
  %3546 = fmul double %3544, %3545
  %3547 = load %struct.TValue*, %struct.TValue** %152, align 8
  %3548 = getelementptr inbounds %struct.TValue, %struct.TValue* %3547, i32 0, i32 0
  %3549 = bitcast %union.Value* %3548 to double*
  store double %3546, double* %3549, align 8
  %3550 = load %struct.TValue*, %struct.TValue** %152, align 8
  %3551 = getelementptr inbounds %struct.TValue, %struct.TValue* %3550, i32 0, i32 1
  store i8 19, i8* %3551, align 8
  br label %3575

; <label>:3552:                                   ; preds = %3540, %3534, %3523, %3516, %3510, %3499
  %3553 = load i32*, i32** %8, align 8
  %3554 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3555 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3554, i32 0, i32 4
  %3556 = bitcast %union.anon* %3555 to %struct.anon*
  %3557 = getelementptr inbounds %struct.anon, %struct.anon* %3556, i32 0, i32 0
  store i32* %3553, i32** %3557, align 8
  %3558 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3559 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3558, i32 0, i32 1
  %3560 = load %union.StackValue*, %union.StackValue** %3559, align 8
  %3561 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3562 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3561, i32 0, i32 6
  store %union.StackValue* %3560, %union.StackValue** %3562, align 8
  %3563 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3564 = load %struct.TValue*, %struct.TValue** %145, align 8
  %3565 = load %struct.TValue*, %struct.TValue** %146, align 8
  %3566 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3567 = load i32, i32* %10, align 4
  %3568 = lshr i32 %3567, 15
  %3569 = and i32 %3568, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %3563, %struct.TValue* %3564, %struct.TValue* %3565, %union.StackValue* %3566, i32 %3569, i32 8)
  %3570 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3571 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3570, i32 0, i32 4
  %3572 = bitcast %union.anon* %3571 to %struct.anon*
  %3573 = getelementptr inbounds %struct.anon, %struct.anon* %3572, i32 0, i32 1
  %3574 = load i32, i32* %3573, align 8
  store i32 %3574, i32* %9, align 4
  br label %3575

; <label>:3575:                                   ; preds = %3552, %3541
  br label %3576

; <label>:3576:                                   ; preds = %3575, %3474
  %3577 = load i32, i32* %9, align 4
  %3578 = icmp ne i32 %3577, 0
  br i1 %3578, label %3579, label %3587

; <label>:3579:                                   ; preds = %3576
  %3580 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3581 = load i32*, i32** %8, align 8
  %3582 = call i32 @luaG_traceexec(%struct.lua_State* %3580, i32* %3581)
  store i32 %3582, i32* %9, align 4
  %3583 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3584 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3583, i32 0, i32 0
  %3585 = load %union.StackValue*, %union.StackValue** %3584, align 8
  %3586 = getelementptr inbounds %union.StackValue, %union.StackValue* %3585, i64 1
  store %union.StackValue* %3586, %union.StackValue** %7, align 8
  br label %3587

; <label>:3587:                                   ; preds = %3579, %3576
  %3588 = load i32*, i32** %8, align 8
  %3589 = getelementptr inbounds i32, i32* %3588, i32 1
  store i32* %3589, i32** %8, align 8
  %3590 = load i32, i32* %3588, align 4
  store i32 %3590, i32* %10, align 4
  %3591 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3592 = load i32, i32* %10, align 4
  %3593 = lshr i32 %3592, 7
  %3594 = and i32 %3593, 255
  %3595 = sext i32 %3594 to i64
  %3596 = getelementptr inbounds %union.StackValue, %union.StackValue* %3591, i64 %3595
  store %union.StackValue* %3596, %union.StackValue** %11, align 8
  %3597 = load i32, i32* %10, align 4
  %3598 = lshr i32 %3597, 0
  %3599 = and i32 %3598, 127
  %3600 = zext i32 %3599 to i64
  %3601 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3600
  %3602 = load i8*, i8** %3601, align 8
  br label %8998

; <label>:3603:                                   ; preds = %8998
  %3604 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3605 = load i32, i32* %10, align 4
  %3606 = lshr i32 %3605, 16
  %3607 = and i32 %3606, 255
  %3608 = sext i32 %3607 to i64
  %3609 = getelementptr inbounds %union.StackValue, %union.StackValue* %3604, i64 %3608
  %3610 = bitcast %union.StackValue* %3609 to %struct.TValue*
  store %struct.TValue* %3610, %struct.TValue** %153, align 8
  %3611 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3612 = load i32, i32* %10, align 4
  %3613 = lshr i32 %3612, 24
  %3614 = and i32 %3613, 255
  %3615 = sext i32 %3614 to i64
  %3616 = getelementptr inbounds %struct.TValue, %struct.TValue* %3611, i64 %3615
  store %struct.TValue* %3616, %struct.TValue** %154, align 8
  %3617 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3618 = getelementptr inbounds %struct.TValue, %struct.TValue* %3617, i32 0, i32 1
  %3619 = load i8, i8* %3618, align 8
  %3620 = zext i8 %3619 to i32
  %3621 = icmp eq i32 %3620, 35
  br i1 %3621, label %3622, label %3648

; <label>:3622:                                   ; preds = %3603
  %3623 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3624 = getelementptr inbounds %struct.TValue, %struct.TValue* %3623, i32 0, i32 1
  %3625 = load i8, i8* %3624, align 8
  %3626 = zext i8 %3625 to i32
  %3627 = icmp eq i32 %3626, 35
  br i1 %3627, label %3628, label %3648

; <label>:3628:                                   ; preds = %3622
  %3629 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3630 = getelementptr inbounds %struct.TValue, %struct.TValue* %3629, i32 0, i32 0
  %3631 = bitcast %union.Value* %3630 to i64*
  %3632 = load i64, i64* %3631, align 8
  store i64 %3632, i64* %155, align 8
  %3633 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3634 = getelementptr inbounds %struct.TValue, %struct.TValue* %3633, i32 0, i32 0
  %3635 = bitcast %union.Value* %3634 to i64*
  %3636 = load i64, i64* %3635, align 8
  store i64 %3636, i64* %156, align 8
  %3637 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3638 = bitcast %union.StackValue* %3637 to %struct.TValue*
  store %struct.TValue* %3638, %struct.TValue** %157, align 8
  %3639 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3640 = load i64, i64* %155, align 8
  %3641 = load i64, i64* %156, align 8
  %3642 = call i64 @luaV_mod(%struct.lua_State* %3639, i64 %3640, i64 %3641)
  %3643 = load %struct.TValue*, %struct.TValue** %157, align 8
  %3644 = getelementptr inbounds %struct.TValue, %struct.TValue* %3643, i32 0, i32 0
  %3645 = bitcast %union.Value* %3644 to i64*
  store i64 %3642, i64* %3645, align 8
  %3646 = load %struct.TValue*, %struct.TValue** %157, align 8
  %3647 = getelementptr inbounds %struct.TValue, %struct.TValue* %3646, i32 0, i32 1
  store i8 35, i8* %3647, align 8
  br label %3729

; <label>:3648:                                   ; preds = %3622, %3603
  %3649 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3650 = getelementptr inbounds %struct.TValue, %struct.TValue* %3649, i32 0, i32 1
  %3651 = load i8, i8* %3650, align 8
  %3652 = zext i8 %3651 to i32
  %3653 = icmp eq i32 %3652, 19
  br i1 %3653, label %3654, label %3659

; <label>:3654:                                   ; preds = %3648
  %3655 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3656 = getelementptr inbounds %struct.TValue, %struct.TValue* %3655, i32 0, i32 0
  %3657 = bitcast %union.Value* %3656 to double*
  %3658 = load double, double* %3657, align 8
  store double %3658, double* %158, align 8
  br i1 true, label %3672, label %3708

; <label>:3659:                                   ; preds = %3648
  %3660 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3661 = getelementptr inbounds %struct.TValue, %struct.TValue* %3660, i32 0, i32 1
  %3662 = load i8, i8* %3661, align 8
  %3663 = zext i8 %3662 to i32
  %3664 = icmp eq i32 %3663, 35
  br i1 %3664, label %3665, label %3671

; <label>:3665:                                   ; preds = %3659
  %3666 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3667 = getelementptr inbounds %struct.TValue, %struct.TValue* %3666, i32 0, i32 0
  %3668 = bitcast %union.Value* %3667 to i64*
  %3669 = load i64, i64* %3668, align 8
  %3670 = sitofp i64 %3669 to double
  store double %3670, double* %158, align 8
  br i1 true, label %3672, label %3708

; <label>:3671:                                   ; preds = %3659
  br i1 false, label %3672, label %3708

; <label>:3672:                                   ; preds = %3671, %3665, %3654
  %3673 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3674 = getelementptr inbounds %struct.TValue, %struct.TValue* %3673, i32 0, i32 1
  %3675 = load i8, i8* %3674, align 8
  %3676 = zext i8 %3675 to i32
  %3677 = icmp eq i32 %3676, 19
  br i1 %3677, label %3678, label %3683

; <label>:3678:                                   ; preds = %3672
  %3679 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3680 = getelementptr inbounds %struct.TValue, %struct.TValue* %3679, i32 0, i32 0
  %3681 = bitcast %union.Value* %3680 to double*
  %3682 = load double, double* %3681, align 8
  store double %3682, double* %159, align 8
  br i1 true, label %3696, label %3708

; <label>:3683:                                   ; preds = %3672
  %3684 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3685 = getelementptr inbounds %struct.TValue, %struct.TValue* %3684, i32 0, i32 1
  %3686 = load i8, i8* %3685, align 8
  %3687 = zext i8 %3686 to i32
  %3688 = icmp eq i32 %3687, 35
  br i1 %3688, label %3689, label %3695

; <label>:3689:                                   ; preds = %3683
  %3690 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3691 = getelementptr inbounds %struct.TValue, %struct.TValue* %3690, i32 0, i32 0
  %3692 = bitcast %union.Value* %3691 to i64*
  %3693 = load i64, i64* %3692, align 8
  %3694 = sitofp i64 %3693 to double
  store double %3694, double* %159, align 8
  br i1 true, label %3696, label %3708

; <label>:3695:                                   ; preds = %3683
  br i1 false, label %3696, label %3708

; <label>:3696:                                   ; preds = %3695, %3689, %3678
  %3697 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3698 = bitcast %union.StackValue* %3697 to %struct.TValue*
  store %struct.TValue* %3698, %struct.TValue** %160, align 8
  %3699 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3700 = load double, double* %158, align 8
  %3701 = load double, double* %159, align 8
  %3702 = call double @luaV_modf(%struct.lua_State* %3699, double %3700, double %3701)
  %3703 = load %struct.TValue*, %struct.TValue** %160, align 8
  %3704 = getelementptr inbounds %struct.TValue, %struct.TValue* %3703, i32 0, i32 0
  %3705 = bitcast %union.Value* %3704 to double*
  store double %3702, double* %3705, align 8
  %3706 = load %struct.TValue*, %struct.TValue** %160, align 8
  %3707 = getelementptr inbounds %struct.TValue, %struct.TValue* %3706, i32 0, i32 1
  store i8 19, i8* %3707, align 8
  br label %3728

; <label>:3708:                                   ; preds = %3695, %3689, %3678, %3671, %3665, %3654
  %3709 = load i32*, i32** %8, align 8
  %3710 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3711 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3710, i32 0, i32 4
  %3712 = bitcast %union.anon* %3711 to %struct.anon*
  %3713 = getelementptr inbounds %struct.anon, %struct.anon* %3712, i32 0, i32 0
  store i32* %3709, i32** %3713, align 8
  %3714 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3715 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3714, i32 0, i32 1
  %3716 = load %union.StackValue*, %union.StackValue** %3715, align 8
  %3717 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3718 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3717, i32 0, i32 6
  store %union.StackValue* %3716, %union.StackValue** %3718, align 8
  %3719 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3720 = load %struct.TValue*, %struct.TValue** %153, align 8
  %3721 = load %struct.TValue*, %struct.TValue** %154, align 8
  %3722 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinassocTM(%struct.lua_State* %3719, %struct.TValue* %3720, %struct.TValue* %3721, %union.StackValue* %3722, i32 0, i32 9)
  %3723 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3724 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3723, i32 0, i32 4
  %3725 = bitcast %union.anon* %3724 to %struct.anon*
  %3726 = getelementptr inbounds %struct.anon, %struct.anon* %3725, i32 0, i32 1
  %3727 = load i32, i32* %3726, align 8
  store i32 %3727, i32* %9, align 4
  br label %3728

; <label>:3728:                                   ; preds = %3708, %3696
  br label %3729

; <label>:3729:                                   ; preds = %3728, %3628
  %3730 = load i32, i32* %9, align 4
  %3731 = icmp ne i32 %3730, 0
  br i1 %3731, label %3732, label %3740

; <label>:3732:                                   ; preds = %3729
  %3733 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3734 = load i32*, i32** %8, align 8
  %3735 = call i32 @luaG_traceexec(%struct.lua_State* %3733, i32* %3734)
  store i32 %3735, i32* %9, align 4
  %3736 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3737 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3736, i32 0, i32 0
  %3738 = load %union.StackValue*, %union.StackValue** %3737, align 8
  %3739 = getelementptr inbounds %union.StackValue, %union.StackValue* %3738, i64 1
  store %union.StackValue* %3739, %union.StackValue** %7, align 8
  br label %3740

; <label>:3740:                                   ; preds = %3732, %3729
  %3741 = load i32*, i32** %8, align 8
  %3742 = getelementptr inbounds i32, i32* %3741, i32 1
  store i32* %3742, i32** %8, align 8
  %3743 = load i32, i32* %3741, align 4
  store i32 %3743, i32* %10, align 4
  %3744 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3745 = load i32, i32* %10, align 4
  %3746 = lshr i32 %3745, 7
  %3747 = and i32 %3746, 255
  %3748 = sext i32 %3747 to i64
  %3749 = getelementptr inbounds %union.StackValue, %union.StackValue* %3744, i64 %3748
  store %union.StackValue* %3749, %union.StackValue** %11, align 8
  %3750 = load i32, i32* %10, align 4
  %3751 = lshr i32 %3750, 0
  %3752 = and i32 %3751, 127
  %3753 = zext i32 %3752 to i64
  %3754 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3753
  %3755 = load i8*, i8** %3754, align 8
  br label %8998

; <label>:3756:                                   ; preds = %8998
  %3757 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3758 = load i32, i32* %10, align 4
  %3759 = lshr i32 %3758, 16
  %3760 = and i32 %3759, 255
  %3761 = sext i32 %3760 to i64
  %3762 = getelementptr inbounds %union.StackValue, %union.StackValue* %3757, i64 %3761
  %3763 = bitcast %union.StackValue* %3762 to %struct.TValue*
  store %struct.TValue* %3763, %struct.TValue** %161, align 8
  %3764 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3765 = load i32, i32* %10, align 4
  %3766 = lshr i32 %3765, 24
  %3767 = and i32 %3766, 255
  %3768 = sext i32 %3767 to i64
  %3769 = getelementptr inbounds %struct.TValue, %struct.TValue* %3764, i64 %3768
  store %struct.TValue* %3769, %struct.TValue** %162, align 8
  %3770 = load %struct.TValue*, %struct.TValue** %161, align 8
  %3771 = getelementptr inbounds %struct.TValue, %struct.TValue* %3770, i32 0, i32 1
  %3772 = load i8, i8* %3771, align 8
  %3773 = zext i8 %3772 to i32
  %3774 = icmp eq i32 %3773, 19
  br i1 %3774, label %3775, label %3780

; <label>:3775:                                   ; preds = %3756
  %3776 = load %struct.TValue*, %struct.TValue** %161, align 8
  %3777 = getelementptr inbounds %struct.TValue, %struct.TValue* %3776, i32 0, i32 0
  %3778 = bitcast %union.Value* %3777 to double*
  %3779 = load double, double* %3778, align 8
  store double %3779, double* %163, align 8
  br i1 true, label %3793, label %3829

; <label>:3780:                                   ; preds = %3756
  %3781 = load %struct.TValue*, %struct.TValue** %161, align 8
  %3782 = getelementptr inbounds %struct.TValue, %struct.TValue* %3781, i32 0, i32 1
  %3783 = load i8, i8* %3782, align 8
  %3784 = zext i8 %3783 to i32
  %3785 = icmp eq i32 %3784, 35
  br i1 %3785, label %3786, label %3792

; <label>:3786:                                   ; preds = %3780
  %3787 = load %struct.TValue*, %struct.TValue** %161, align 8
  %3788 = getelementptr inbounds %struct.TValue, %struct.TValue* %3787, i32 0, i32 0
  %3789 = bitcast %union.Value* %3788 to i64*
  %3790 = load i64, i64* %3789, align 8
  %3791 = sitofp i64 %3790 to double
  store double %3791, double* %163, align 8
  br i1 true, label %3793, label %3829

; <label>:3792:                                   ; preds = %3780
  br i1 false, label %3793, label %3829

; <label>:3793:                                   ; preds = %3792, %3786, %3775
  %3794 = load %struct.TValue*, %struct.TValue** %162, align 8
  %3795 = getelementptr inbounds %struct.TValue, %struct.TValue* %3794, i32 0, i32 1
  %3796 = load i8, i8* %3795, align 8
  %3797 = zext i8 %3796 to i32
  %3798 = icmp eq i32 %3797, 19
  br i1 %3798, label %3799, label %3804

; <label>:3799:                                   ; preds = %3793
  %3800 = load %struct.TValue*, %struct.TValue** %162, align 8
  %3801 = getelementptr inbounds %struct.TValue, %struct.TValue* %3800, i32 0, i32 0
  %3802 = bitcast %union.Value* %3801 to double*
  %3803 = load double, double* %3802, align 8
  store double %3803, double* %164, align 8
  br i1 true, label %3817, label %3829

; <label>:3804:                                   ; preds = %3793
  %3805 = load %struct.TValue*, %struct.TValue** %162, align 8
  %3806 = getelementptr inbounds %struct.TValue, %struct.TValue* %3805, i32 0, i32 1
  %3807 = load i8, i8* %3806, align 8
  %3808 = zext i8 %3807 to i32
  %3809 = icmp eq i32 %3808, 35
  br i1 %3809, label %3810, label %3816

; <label>:3810:                                   ; preds = %3804
  %3811 = load %struct.TValue*, %struct.TValue** %162, align 8
  %3812 = getelementptr inbounds %struct.TValue, %struct.TValue* %3811, i32 0, i32 0
  %3813 = bitcast %union.Value* %3812 to i64*
  %3814 = load i64, i64* %3813, align 8
  %3815 = sitofp i64 %3814 to double
  store double %3815, double* %164, align 8
  br i1 true, label %3817, label %3829

; <label>:3816:                                   ; preds = %3804
  br i1 false, label %3817, label %3829

; <label>:3817:                                   ; preds = %3816, %3810, %3799
  %3818 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3819 = bitcast %union.StackValue* %3818 to %struct.TValue*
  store %struct.TValue* %3819, %struct.TValue** %165, align 8
  %3820 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3821 = load double, double* %163, align 8
  %3822 = load double, double* %164, align 8
  %3823 = call double @pow(double %3821, double %3822) #8
  %3824 = load %struct.TValue*, %struct.TValue** %165, align 8
  %3825 = getelementptr inbounds %struct.TValue, %struct.TValue* %3824, i32 0, i32 0
  %3826 = bitcast %union.Value* %3825 to double*
  store double %3823, double* %3826, align 8
  %3827 = load %struct.TValue*, %struct.TValue** %165, align 8
  %3828 = getelementptr inbounds %struct.TValue, %struct.TValue* %3827, i32 0, i32 1
  store i8 19, i8* %3828, align 8
  br label %3849

; <label>:3829:                                   ; preds = %3816, %3810, %3799, %3792, %3786, %3775
  %3830 = load i32*, i32** %8, align 8
  %3831 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3832 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3831, i32 0, i32 4
  %3833 = bitcast %union.anon* %3832 to %struct.anon*
  %3834 = getelementptr inbounds %struct.anon, %struct.anon* %3833, i32 0, i32 0
  store i32* %3830, i32** %3834, align 8
  %3835 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3836 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3835, i32 0, i32 1
  %3837 = load %union.StackValue*, %union.StackValue** %3836, align 8
  %3838 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3839 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3838, i32 0, i32 6
  store %union.StackValue* %3837, %union.StackValue** %3839, align 8
  %3840 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3841 = load %struct.TValue*, %struct.TValue** %161, align 8
  %3842 = load %struct.TValue*, %struct.TValue** %162, align 8
  %3843 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %3840, %struct.TValue* %3841, %struct.TValue* %3842, %union.StackValue* %3843, i32 10)
  %3844 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3845 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3844, i32 0, i32 4
  %3846 = bitcast %union.anon* %3845 to %struct.anon*
  %3847 = getelementptr inbounds %struct.anon, %struct.anon* %3846, i32 0, i32 1
  %3848 = load i32, i32* %3847, align 8
  store i32 %3848, i32* %9, align 4
  br label %3849

; <label>:3849:                                   ; preds = %3829, %3817
  %3850 = load i32, i32* %9, align 4
  %3851 = icmp ne i32 %3850, 0
  br i1 %3851, label %3852, label %3860

; <label>:3852:                                   ; preds = %3849
  %3853 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3854 = load i32*, i32** %8, align 8
  %3855 = call i32 @luaG_traceexec(%struct.lua_State* %3853, i32* %3854)
  store i32 %3855, i32* %9, align 4
  %3856 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3857 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3856, i32 0, i32 0
  %3858 = load %union.StackValue*, %union.StackValue** %3857, align 8
  %3859 = getelementptr inbounds %union.StackValue, %union.StackValue* %3858, i64 1
  store %union.StackValue* %3859, %union.StackValue** %7, align 8
  br label %3860

; <label>:3860:                                   ; preds = %3852, %3849
  %3861 = load i32*, i32** %8, align 8
  %3862 = getelementptr inbounds i32, i32* %3861, i32 1
  store i32* %3862, i32** %8, align 8
  %3863 = load i32, i32* %3861, align 4
  store i32 %3863, i32* %10, align 4
  %3864 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3865 = load i32, i32* %10, align 4
  %3866 = lshr i32 %3865, 7
  %3867 = and i32 %3866, 255
  %3868 = sext i32 %3867 to i64
  %3869 = getelementptr inbounds %union.StackValue, %union.StackValue* %3864, i64 %3868
  store %union.StackValue* %3869, %union.StackValue** %11, align 8
  %3870 = load i32, i32* %10, align 4
  %3871 = lshr i32 %3870, 0
  %3872 = and i32 %3871, 127
  %3873 = zext i32 %3872 to i64
  %3874 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3873
  %3875 = load i8*, i8** %3874, align 8
  br label %8998

; <label>:3876:                                   ; preds = %8998
  %3877 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3878 = load i32, i32* %10, align 4
  %3879 = lshr i32 %3878, 16
  %3880 = and i32 %3879, 255
  %3881 = sext i32 %3880 to i64
  %3882 = getelementptr inbounds %union.StackValue, %union.StackValue* %3877, i64 %3881
  %3883 = bitcast %union.StackValue* %3882 to %struct.TValue*
  store %struct.TValue* %3883, %struct.TValue** %166, align 8
  %3884 = load %struct.TValue*, %struct.TValue** %6, align 8
  %3885 = load i32, i32* %10, align 4
  %3886 = lshr i32 %3885, 24
  %3887 = and i32 %3886, 255
  %3888 = sext i32 %3887 to i64
  %3889 = getelementptr inbounds %struct.TValue, %struct.TValue* %3884, i64 %3888
  store %struct.TValue* %3889, %struct.TValue** %167, align 8
  %3890 = load %struct.TValue*, %struct.TValue** %166, align 8
  %3891 = getelementptr inbounds %struct.TValue, %struct.TValue* %3890, i32 0, i32 1
  %3892 = load i8, i8* %3891, align 8
  %3893 = zext i8 %3892 to i32
  %3894 = icmp eq i32 %3893, 19
  br i1 %3894, label %3895, label %3900

; <label>:3895:                                   ; preds = %3876
  %3896 = load %struct.TValue*, %struct.TValue** %166, align 8
  %3897 = getelementptr inbounds %struct.TValue, %struct.TValue* %3896, i32 0, i32 0
  %3898 = bitcast %union.Value* %3897 to double*
  %3899 = load double, double* %3898, align 8
  store double %3899, double* %168, align 8
  br i1 true, label %3913, label %3948

; <label>:3900:                                   ; preds = %3876
  %3901 = load %struct.TValue*, %struct.TValue** %166, align 8
  %3902 = getelementptr inbounds %struct.TValue, %struct.TValue* %3901, i32 0, i32 1
  %3903 = load i8, i8* %3902, align 8
  %3904 = zext i8 %3903 to i32
  %3905 = icmp eq i32 %3904, 35
  br i1 %3905, label %3906, label %3912

; <label>:3906:                                   ; preds = %3900
  %3907 = load %struct.TValue*, %struct.TValue** %166, align 8
  %3908 = getelementptr inbounds %struct.TValue, %struct.TValue* %3907, i32 0, i32 0
  %3909 = bitcast %union.Value* %3908 to i64*
  %3910 = load i64, i64* %3909, align 8
  %3911 = sitofp i64 %3910 to double
  store double %3911, double* %168, align 8
  br i1 true, label %3913, label %3948

; <label>:3912:                                   ; preds = %3900
  br i1 false, label %3913, label %3948

; <label>:3913:                                   ; preds = %3912, %3906, %3895
  %3914 = load %struct.TValue*, %struct.TValue** %167, align 8
  %3915 = getelementptr inbounds %struct.TValue, %struct.TValue* %3914, i32 0, i32 1
  %3916 = load i8, i8* %3915, align 8
  %3917 = zext i8 %3916 to i32
  %3918 = icmp eq i32 %3917, 19
  br i1 %3918, label %3919, label %3924

; <label>:3919:                                   ; preds = %3913
  %3920 = load %struct.TValue*, %struct.TValue** %167, align 8
  %3921 = getelementptr inbounds %struct.TValue, %struct.TValue* %3920, i32 0, i32 0
  %3922 = bitcast %union.Value* %3921 to double*
  %3923 = load double, double* %3922, align 8
  store double %3923, double* %169, align 8
  br i1 true, label %3937, label %3948

; <label>:3924:                                   ; preds = %3913
  %3925 = load %struct.TValue*, %struct.TValue** %167, align 8
  %3926 = getelementptr inbounds %struct.TValue, %struct.TValue* %3925, i32 0, i32 1
  %3927 = load i8, i8* %3926, align 8
  %3928 = zext i8 %3927 to i32
  %3929 = icmp eq i32 %3928, 35
  br i1 %3929, label %3930, label %3936

; <label>:3930:                                   ; preds = %3924
  %3931 = load %struct.TValue*, %struct.TValue** %167, align 8
  %3932 = getelementptr inbounds %struct.TValue, %struct.TValue* %3931, i32 0, i32 0
  %3933 = bitcast %union.Value* %3932 to i64*
  %3934 = load i64, i64* %3933, align 8
  %3935 = sitofp i64 %3934 to double
  store double %3935, double* %169, align 8
  br i1 true, label %3937, label %3948

; <label>:3936:                                   ; preds = %3924
  br i1 false, label %3937, label %3948

; <label>:3937:                                   ; preds = %3936, %3930, %3919
  %3938 = load %union.StackValue*, %union.StackValue** %11, align 8
  %3939 = bitcast %union.StackValue* %3938 to %struct.TValue*
  store %struct.TValue* %3939, %struct.TValue** %170, align 8
  %3940 = load double, double* %168, align 8
  %3941 = load double, double* %169, align 8
  %3942 = fdiv double %3940, %3941
  %3943 = load %struct.TValue*, %struct.TValue** %170, align 8
  %3944 = getelementptr inbounds %struct.TValue, %struct.TValue* %3943, i32 0, i32 0
  %3945 = bitcast %union.Value* %3944 to double*
  store double %3942, double* %3945, align 8
  %3946 = load %struct.TValue*, %struct.TValue** %170, align 8
  %3947 = getelementptr inbounds %struct.TValue, %struct.TValue* %3946, i32 0, i32 1
  store i8 19, i8* %3947, align 8
  br label %3968

; <label>:3948:                                   ; preds = %3936, %3930, %3919, %3912, %3906, %3895
  %3949 = load i32*, i32** %8, align 8
  %3950 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3951 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3950, i32 0, i32 4
  %3952 = bitcast %union.anon* %3951 to %struct.anon*
  %3953 = getelementptr inbounds %struct.anon, %struct.anon* %3952, i32 0, i32 0
  store i32* %3949, i32** %3953, align 8
  %3954 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3955 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3954, i32 0, i32 1
  %3956 = load %union.StackValue*, %union.StackValue** %3955, align 8
  %3957 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3958 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3957, i32 0, i32 6
  store %union.StackValue* %3956, %union.StackValue** %3958, align 8
  %3959 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3960 = load %struct.TValue*, %struct.TValue** %166, align 8
  %3961 = load %struct.TValue*, %struct.TValue** %167, align 8
  %3962 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %3959, %struct.TValue* %3960, %struct.TValue* %3961, %union.StackValue* %3962, i32 11)
  %3963 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3964 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3963, i32 0, i32 4
  %3965 = bitcast %union.anon* %3964 to %struct.anon*
  %3966 = getelementptr inbounds %struct.anon, %struct.anon* %3965, i32 0, i32 1
  %3967 = load i32, i32* %3966, align 8
  store i32 %3967, i32* %9, align 4
  br label %3968

; <label>:3968:                                   ; preds = %3948, %3937
  %3969 = load i32, i32* %9, align 4
  %3970 = icmp ne i32 %3969, 0
  br i1 %3970, label %3971, label %3979

; <label>:3971:                                   ; preds = %3968
  %3972 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %3973 = load i32*, i32** %8, align 8
  %3974 = call i32 @luaG_traceexec(%struct.lua_State* %3972, i32* %3973)
  store i32 %3974, i32* %9, align 4
  %3975 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %3976 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3975, i32 0, i32 0
  %3977 = load %union.StackValue*, %union.StackValue** %3976, align 8
  %3978 = getelementptr inbounds %union.StackValue, %union.StackValue* %3977, i64 1
  store %union.StackValue* %3978, %union.StackValue** %7, align 8
  br label %3979

; <label>:3979:                                   ; preds = %3971, %3968
  %3980 = load i32*, i32** %8, align 8
  %3981 = getelementptr inbounds i32, i32* %3980, i32 1
  store i32* %3981, i32** %8, align 8
  %3982 = load i32, i32* %3980, align 4
  store i32 %3982, i32* %10, align 4
  %3983 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3984 = load i32, i32* %10, align 4
  %3985 = lshr i32 %3984, 7
  %3986 = and i32 %3985, 255
  %3987 = sext i32 %3986 to i64
  %3988 = getelementptr inbounds %union.StackValue, %union.StackValue* %3983, i64 %3987
  store %union.StackValue* %3988, %union.StackValue** %11, align 8
  %3989 = load i32, i32* %10, align 4
  %3990 = lshr i32 %3989, 0
  %3991 = and i32 %3990, 127
  %3992 = zext i32 %3991 to i64
  %3993 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3992
  %3994 = load i8*, i8** %3993, align 8
  br label %8998

; <label>:3995:                                   ; preds = %8998
  %3996 = load %union.StackValue*, %union.StackValue** %7, align 8
  %3997 = load i32, i32* %10, align 4
  %3998 = lshr i32 %3997, 16
  %3999 = and i32 %3998, 255
  %4000 = sext i32 %3999 to i64
  %4001 = getelementptr inbounds %union.StackValue, %union.StackValue* %3996, i64 %4000
  %4002 = bitcast %union.StackValue* %4001 to %struct.TValue*
  store %struct.TValue* %4002, %struct.TValue** %171, align 8
  %4003 = load %struct.TValue*, %struct.TValue** %6, align 8
  %4004 = load i32, i32* %10, align 4
  %4005 = lshr i32 %4004, 24
  %4006 = and i32 %4005, 255
  %4007 = sext i32 %4006 to i64
  %4008 = getelementptr inbounds %struct.TValue, %struct.TValue* %4003, i64 %4007
  store %struct.TValue* %4008, %struct.TValue** %172, align 8
  %4009 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4010 = getelementptr inbounds %struct.TValue, %struct.TValue* %4009, i32 0, i32 1
  %4011 = load i8, i8* %4010, align 8
  %4012 = zext i8 %4011 to i32
  %4013 = icmp eq i32 %4012, 35
  br i1 %4013, label %4014, label %4040

; <label>:4014:                                   ; preds = %3995
  %4015 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4016 = getelementptr inbounds %struct.TValue, %struct.TValue* %4015, i32 0, i32 1
  %4017 = load i8, i8* %4016, align 8
  %4018 = zext i8 %4017 to i32
  %4019 = icmp eq i32 %4018, 35
  br i1 %4019, label %4020, label %4040

; <label>:4020:                                   ; preds = %4014
  %4021 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4022 = getelementptr inbounds %struct.TValue, %struct.TValue* %4021, i32 0, i32 0
  %4023 = bitcast %union.Value* %4022 to i64*
  %4024 = load i64, i64* %4023, align 8
  store i64 %4024, i64* %173, align 8
  %4025 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4026 = getelementptr inbounds %struct.TValue, %struct.TValue* %4025, i32 0, i32 0
  %4027 = bitcast %union.Value* %4026 to i64*
  %4028 = load i64, i64* %4027, align 8
  store i64 %4028, i64* %174, align 8
  %4029 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4030 = bitcast %union.StackValue* %4029 to %struct.TValue*
  store %struct.TValue* %4030, %struct.TValue** %175, align 8
  %4031 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4032 = load i64, i64* %173, align 8
  %4033 = load i64, i64* %174, align 8
  %4034 = call i64 @luaV_idiv(%struct.lua_State* %4031, i64 %4032, i64 %4033)
  %4035 = load %struct.TValue*, %struct.TValue** %175, align 8
  %4036 = getelementptr inbounds %struct.TValue, %struct.TValue* %4035, i32 0, i32 0
  %4037 = bitcast %union.Value* %4036 to i64*
  store i64 %4034, i64* %4037, align 8
  %4038 = load %struct.TValue*, %struct.TValue** %175, align 8
  %4039 = getelementptr inbounds %struct.TValue, %struct.TValue* %4038, i32 0, i32 1
  store i8 35, i8* %4039, align 8
  br label %4122

; <label>:4040:                                   ; preds = %4014, %3995
  %4041 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4042 = getelementptr inbounds %struct.TValue, %struct.TValue* %4041, i32 0, i32 1
  %4043 = load i8, i8* %4042, align 8
  %4044 = zext i8 %4043 to i32
  %4045 = icmp eq i32 %4044, 19
  br i1 %4045, label %4046, label %4051

; <label>:4046:                                   ; preds = %4040
  %4047 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4048 = getelementptr inbounds %struct.TValue, %struct.TValue* %4047, i32 0, i32 0
  %4049 = bitcast %union.Value* %4048 to double*
  %4050 = load double, double* %4049, align 8
  store double %4050, double* %176, align 8
  br i1 true, label %4064, label %4101

; <label>:4051:                                   ; preds = %4040
  %4052 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4053 = getelementptr inbounds %struct.TValue, %struct.TValue* %4052, i32 0, i32 1
  %4054 = load i8, i8* %4053, align 8
  %4055 = zext i8 %4054 to i32
  %4056 = icmp eq i32 %4055, 35
  br i1 %4056, label %4057, label %4063

; <label>:4057:                                   ; preds = %4051
  %4058 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4059 = getelementptr inbounds %struct.TValue, %struct.TValue* %4058, i32 0, i32 0
  %4060 = bitcast %union.Value* %4059 to i64*
  %4061 = load i64, i64* %4060, align 8
  %4062 = sitofp i64 %4061 to double
  store double %4062, double* %176, align 8
  br i1 true, label %4064, label %4101

; <label>:4063:                                   ; preds = %4051
  br i1 false, label %4064, label %4101

; <label>:4064:                                   ; preds = %4063, %4057, %4046
  %4065 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4066 = getelementptr inbounds %struct.TValue, %struct.TValue* %4065, i32 0, i32 1
  %4067 = load i8, i8* %4066, align 8
  %4068 = zext i8 %4067 to i32
  %4069 = icmp eq i32 %4068, 19
  br i1 %4069, label %4070, label %4075

; <label>:4070:                                   ; preds = %4064
  %4071 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4072 = getelementptr inbounds %struct.TValue, %struct.TValue* %4071, i32 0, i32 0
  %4073 = bitcast %union.Value* %4072 to double*
  %4074 = load double, double* %4073, align 8
  store double %4074, double* %177, align 8
  br i1 true, label %4088, label %4101

; <label>:4075:                                   ; preds = %4064
  %4076 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4077 = getelementptr inbounds %struct.TValue, %struct.TValue* %4076, i32 0, i32 1
  %4078 = load i8, i8* %4077, align 8
  %4079 = zext i8 %4078 to i32
  %4080 = icmp eq i32 %4079, 35
  br i1 %4080, label %4081, label %4087

; <label>:4081:                                   ; preds = %4075
  %4082 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4083 = getelementptr inbounds %struct.TValue, %struct.TValue* %4082, i32 0, i32 0
  %4084 = bitcast %union.Value* %4083 to i64*
  %4085 = load i64, i64* %4084, align 8
  %4086 = sitofp i64 %4085 to double
  store double %4086, double* %177, align 8
  br i1 true, label %4088, label %4101

; <label>:4087:                                   ; preds = %4075
  br i1 false, label %4088, label %4101

; <label>:4088:                                   ; preds = %4087, %4081, %4070
  %4089 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4090 = bitcast %union.StackValue* %4089 to %struct.TValue*
  store %struct.TValue* %4090, %struct.TValue** %178, align 8
  %4091 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4092 = load double, double* %176, align 8
  %4093 = load double, double* %177, align 8
  %4094 = fdiv double %4092, %4093
  %4095 = call double @llvm.floor.f64(double %4094)
  %4096 = load %struct.TValue*, %struct.TValue** %178, align 8
  %4097 = getelementptr inbounds %struct.TValue, %struct.TValue* %4096, i32 0, i32 0
  %4098 = bitcast %union.Value* %4097 to double*
  store double %4095, double* %4098, align 8
  %4099 = load %struct.TValue*, %struct.TValue** %178, align 8
  %4100 = getelementptr inbounds %struct.TValue, %struct.TValue* %4099, i32 0, i32 1
  store i8 19, i8* %4100, align 8
  br label %4121

; <label>:4101:                                   ; preds = %4087, %4081, %4070, %4063, %4057, %4046
  %4102 = load i32*, i32** %8, align 8
  %4103 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4104 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4103, i32 0, i32 4
  %4105 = bitcast %union.anon* %4104 to %struct.anon*
  %4106 = getelementptr inbounds %struct.anon, %struct.anon* %4105, i32 0, i32 0
  store i32* %4102, i32** %4106, align 8
  %4107 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4107, i32 0, i32 1
  %4109 = load %union.StackValue*, %union.StackValue** %4108, align 8
  %4110 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4110, i32 0, i32 6
  store %union.StackValue* %4109, %union.StackValue** %4111, align 8
  %4112 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4113 = load %struct.TValue*, %struct.TValue** %171, align 8
  %4114 = load %struct.TValue*, %struct.TValue** %172, align 8
  %4115 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinassocTM(%struct.lua_State* %4112, %struct.TValue* %4113, %struct.TValue* %4114, %union.StackValue* %4115, i32 0, i32 12)
  %4116 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4117 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4116, i32 0, i32 4
  %4118 = bitcast %union.anon* %4117 to %struct.anon*
  %4119 = getelementptr inbounds %struct.anon, %struct.anon* %4118, i32 0, i32 1
  %4120 = load i32, i32* %4119, align 8
  store i32 %4120, i32* %9, align 4
  br label %4121

; <label>:4121:                                   ; preds = %4101, %4088
  br label %4122

; <label>:4122:                                   ; preds = %4121, %4020
  %4123 = load i32, i32* %9, align 4
  %4124 = icmp ne i32 %4123, 0
  br i1 %4124, label %4125, label %4133

; <label>:4125:                                   ; preds = %4122
  %4126 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4127 = load i32*, i32** %8, align 8
  %4128 = call i32 @luaG_traceexec(%struct.lua_State* %4126, i32* %4127)
  store i32 %4128, i32* %9, align 4
  %4129 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4130 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4129, i32 0, i32 0
  %4131 = load %union.StackValue*, %union.StackValue** %4130, align 8
  %4132 = getelementptr inbounds %union.StackValue, %union.StackValue* %4131, i64 1
  store %union.StackValue* %4132, %union.StackValue** %7, align 8
  br label %4133

; <label>:4133:                                   ; preds = %4125, %4122
  %4134 = load i32*, i32** %8, align 8
  %4135 = getelementptr inbounds i32, i32* %4134, i32 1
  store i32* %4135, i32** %8, align 8
  %4136 = load i32, i32* %4134, align 4
  store i32 %4136, i32* %10, align 4
  %4137 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4138 = load i32, i32* %10, align 4
  %4139 = lshr i32 %4138, 7
  %4140 = and i32 %4139, 255
  %4141 = sext i32 %4140 to i64
  %4142 = getelementptr inbounds %union.StackValue, %union.StackValue* %4137, i64 %4141
  store %union.StackValue* %4142, %union.StackValue** %11, align 8
  %4143 = load i32, i32* %10, align 4
  %4144 = lshr i32 %4143, 0
  %4145 = and i32 %4144, 127
  %4146 = zext i32 %4145 to i64
  %4147 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4146
  %4148 = load i8*, i8** %4147, align 8
  br label %8998

; <label>:4149:                                   ; preds = %8998
  %4150 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4151 = load i32, i32* %10, align 4
  %4152 = lshr i32 %4151, 16
  %4153 = and i32 %4152, 255
  %4154 = sext i32 %4153 to i64
  %4155 = getelementptr inbounds %union.StackValue, %union.StackValue* %4150, i64 %4154
  %4156 = bitcast %union.StackValue* %4155 to %struct.TValue*
  store %struct.TValue* %4156, %struct.TValue** %179, align 8
  %4157 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4158 = load i32, i32* %10, align 4
  %4159 = lshr i32 %4158, 24
  %4160 = and i32 %4159, 255
  %4161 = sext i32 %4160 to i64
  %4162 = getelementptr inbounds %union.StackValue, %union.StackValue* %4157, i64 %4161
  %4163 = bitcast %union.StackValue* %4162 to %struct.TValue*
  store %struct.TValue* %4163, %struct.TValue** %180, align 8
  %4164 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4165 = getelementptr inbounds %struct.TValue, %struct.TValue* %4164, i32 0, i32 1
  %4166 = load i8, i8* %4165, align 8
  %4167 = zext i8 %4166 to i32
  %4168 = icmp eq i32 %4167, 35
  br i1 %4168, label %4169, label %4194

; <label>:4169:                                   ; preds = %4149
  %4170 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4171 = getelementptr inbounds %struct.TValue, %struct.TValue* %4170, i32 0, i32 1
  %4172 = load i8, i8* %4171, align 8
  %4173 = zext i8 %4172 to i32
  %4174 = icmp eq i32 %4173, 35
  br i1 %4174, label %4175, label %4194

; <label>:4175:                                   ; preds = %4169
  %4176 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4177 = getelementptr inbounds %struct.TValue, %struct.TValue* %4176, i32 0, i32 0
  %4178 = bitcast %union.Value* %4177 to i64*
  %4179 = load i64, i64* %4178, align 8
  store i64 %4179, i64* %181, align 8
  %4180 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4181 = getelementptr inbounds %struct.TValue, %struct.TValue* %4180, i32 0, i32 0
  %4182 = bitcast %union.Value* %4181 to i64*
  %4183 = load i64, i64* %4182, align 8
  store i64 %4183, i64* %182, align 8
  %4184 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4185 = bitcast %union.StackValue* %4184 to %struct.TValue*
  store %struct.TValue* %4185, %struct.TValue** %183, align 8
  %4186 = load i64, i64* %181, align 8
  %4187 = load i64, i64* %182, align 8
  %4188 = add i64 %4186, %4187
  %4189 = load %struct.TValue*, %struct.TValue** %183, align 8
  %4190 = getelementptr inbounds %struct.TValue, %struct.TValue* %4189, i32 0, i32 0
  %4191 = bitcast %union.Value* %4190 to i64*
  store i64 %4188, i64* %4191, align 8
  %4192 = load %struct.TValue*, %struct.TValue** %183, align 8
  %4193 = getelementptr inbounds %struct.TValue, %struct.TValue* %4192, i32 0, i32 1
  store i8 35, i8* %4193, align 8
  br label %4274

; <label>:4194:                                   ; preds = %4169, %4149
  %4195 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4196 = getelementptr inbounds %struct.TValue, %struct.TValue* %4195, i32 0, i32 1
  %4197 = load i8, i8* %4196, align 8
  %4198 = zext i8 %4197 to i32
  %4199 = icmp eq i32 %4198, 19
  br i1 %4199, label %4200, label %4205

; <label>:4200:                                   ; preds = %4194
  %4201 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4202 = getelementptr inbounds %struct.TValue, %struct.TValue* %4201, i32 0, i32 0
  %4203 = bitcast %union.Value* %4202 to double*
  %4204 = load double, double* %4203, align 8
  store double %4204, double* %184, align 8
  br i1 true, label %4218, label %4253

; <label>:4205:                                   ; preds = %4194
  %4206 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4207 = getelementptr inbounds %struct.TValue, %struct.TValue* %4206, i32 0, i32 1
  %4208 = load i8, i8* %4207, align 8
  %4209 = zext i8 %4208 to i32
  %4210 = icmp eq i32 %4209, 35
  br i1 %4210, label %4211, label %4217

; <label>:4211:                                   ; preds = %4205
  %4212 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4213 = getelementptr inbounds %struct.TValue, %struct.TValue* %4212, i32 0, i32 0
  %4214 = bitcast %union.Value* %4213 to i64*
  %4215 = load i64, i64* %4214, align 8
  %4216 = sitofp i64 %4215 to double
  store double %4216, double* %184, align 8
  br i1 true, label %4218, label %4253

; <label>:4217:                                   ; preds = %4205
  br i1 false, label %4218, label %4253

; <label>:4218:                                   ; preds = %4217, %4211, %4200
  %4219 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4220 = getelementptr inbounds %struct.TValue, %struct.TValue* %4219, i32 0, i32 1
  %4221 = load i8, i8* %4220, align 8
  %4222 = zext i8 %4221 to i32
  %4223 = icmp eq i32 %4222, 19
  br i1 %4223, label %4224, label %4229

; <label>:4224:                                   ; preds = %4218
  %4225 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4226 = getelementptr inbounds %struct.TValue, %struct.TValue* %4225, i32 0, i32 0
  %4227 = bitcast %union.Value* %4226 to double*
  %4228 = load double, double* %4227, align 8
  store double %4228, double* %185, align 8
  br i1 true, label %4242, label %4253

; <label>:4229:                                   ; preds = %4218
  %4230 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4231 = getelementptr inbounds %struct.TValue, %struct.TValue* %4230, i32 0, i32 1
  %4232 = load i8, i8* %4231, align 8
  %4233 = zext i8 %4232 to i32
  %4234 = icmp eq i32 %4233, 35
  br i1 %4234, label %4235, label %4241

; <label>:4235:                                   ; preds = %4229
  %4236 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4237 = getelementptr inbounds %struct.TValue, %struct.TValue* %4236, i32 0, i32 0
  %4238 = bitcast %union.Value* %4237 to i64*
  %4239 = load i64, i64* %4238, align 8
  %4240 = sitofp i64 %4239 to double
  store double %4240, double* %185, align 8
  br i1 true, label %4242, label %4253

; <label>:4241:                                   ; preds = %4229
  br i1 false, label %4242, label %4253

; <label>:4242:                                   ; preds = %4241, %4235, %4224
  %4243 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4244 = bitcast %union.StackValue* %4243 to %struct.TValue*
  store %struct.TValue* %4244, %struct.TValue** %186, align 8
  %4245 = load double, double* %184, align 8
  %4246 = load double, double* %185, align 8
  %4247 = fadd double %4245, %4246
  %4248 = load %struct.TValue*, %struct.TValue** %186, align 8
  %4249 = getelementptr inbounds %struct.TValue, %struct.TValue* %4248, i32 0, i32 0
  %4250 = bitcast %union.Value* %4249 to double*
  store double %4247, double* %4250, align 8
  %4251 = load %struct.TValue*, %struct.TValue** %186, align 8
  %4252 = getelementptr inbounds %struct.TValue, %struct.TValue* %4251, i32 0, i32 1
  store i8 19, i8* %4252, align 8
  br label %4273

; <label>:4253:                                   ; preds = %4241, %4235, %4224, %4217, %4211, %4200
  %4254 = load i32*, i32** %8, align 8
  %4255 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4256 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4255, i32 0, i32 4
  %4257 = bitcast %union.anon* %4256 to %struct.anon*
  %4258 = getelementptr inbounds %struct.anon, %struct.anon* %4257, i32 0, i32 0
  store i32* %4254, i32** %4258, align 8
  %4259 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4260 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4259, i32 0, i32 1
  %4261 = load %union.StackValue*, %union.StackValue** %4260, align 8
  %4262 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4263 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4262, i32 0, i32 6
  store %union.StackValue* %4261, %union.StackValue** %4263, align 8
  %4264 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4265 = load %struct.TValue*, %struct.TValue** %179, align 8
  %4266 = load %struct.TValue*, %struct.TValue** %180, align 8
  %4267 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4264, %struct.TValue* %4265, %struct.TValue* %4266, %union.StackValue* %4267, i32 6)
  %4268 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4269 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4268, i32 0, i32 4
  %4270 = bitcast %union.anon* %4269 to %struct.anon*
  %4271 = getelementptr inbounds %struct.anon, %struct.anon* %4270, i32 0, i32 1
  %4272 = load i32, i32* %4271, align 8
  store i32 %4272, i32* %9, align 4
  br label %4273

; <label>:4273:                                   ; preds = %4253, %4242
  br label %4274

; <label>:4274:                                   ; preds = %4273, %4175
  %4275 = load i32, i32* %9, align 4
  %4276 = icmp ne i32 %4275, 0
  br i1 %4276, label %4277, label %4285

; <label>:4277:                                   ; preds = %4274
  %4278 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4279 = load i32*, i32** %8, align 8
  %4280 = call i32 @luaG_traceexec(%struct.lua_State* %4278, i32* %4279)
  store i32 %4280, i32* %9, align 4
  %4281 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4282 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4281, i32 0, i32 0
  %4283 = load %union.StackValue*, %union.StackValue** %4282, align 8
  %4284 = getelementptr inbounds %union.StackValue, %union.StackValue* %4283, i64 1
  store %union.StackValue* %4284, %union.StackValue** %7, align 8
  br label %4285

; <label>:4285:                                   ; preds = %4277, %4274
  %4286 = load i32*, i32** %8, align 8
  %4287 = getelementptr inbounds i32, i32* %4286, i32 1
  store i32* %4287, i32** %8, align 8
  %4288 = load i32, i32* %4286, align 4
  store i32 %4288, i32* %10, align 4
  %4289 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4290 = load i32, i32* %10, align 4
  %4291 = lshr i32 %4290, 7
  %4292 = and i32 %4291, 255
  %4293 = sext i32 %4292 to i64
  %4294 = getelementptr inbounds %union.StackValue, %union.StackValue* %4289, i64 %4293
  store %union.StackValue* %4294, %union.StackValue** %11, align 8
  %4295 = load i32, i32* %10, align 4
  %4296 = lshr i32 %4295, 0
  %4297 = and i32 %4296, 127
  %4298 = zext i32 %4297 to i64
  %4299 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4298
  %4300 = load i8*, i8** %4299, align 8
  br label %8998

; <label>:4301:                                   ; preds = %8998
  %4302 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4303 = load i32, i32* %10, align 4
  %4304 = lshr i32 %4303, 16
  %4305 = and i32 %4304, 255
  %4306 = sext i32 %4305 to i64
  %4307 = getelementptr inbounds %union.StackValue, %union.StackValue* %4302, i64 %4306
  %4308 = bitcast %union.StackValue* %4307 to %struct.TValue*
  store %struct.TValue* %4308, %struct.TValue** %187, align 8
  %4309 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4310 = load i32, i32* %10, align 4
  %4311 = lshr i32 %4310, 24
  %4312 = and i32 %4311, 255
  %4313 = sext i32 %4312 to i64
  %4314 = getelementptr inbounds %union.StackValue, %union.StackValue* %4309, i64 %4313
  %4315 = bitcast %union.StackValue* %4314 to %struct.TValue*
  store %struct.TValue* %4315, %struct.TValue** %188, align 8
  %4316 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4317 = getelementptr inbounds %struct.TValue, %struct.TValue* %4316, i32 0, i32 1
  %4318 = load i8, i8* %4317, align 8
  %4319 = zext i8 %4318 to i32
  %4320 = icmp eq i32 %4319, 35
  br i1 %4320, label %4321, label %4346

; <label>:4321:                                   ; preds = %4301
  %4322 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4323 = getelementptr inbounds %struct.TValue, %struct.TValue* %4322, i32 0, i32 1
  %4324 = load i8, i8* %4323, align 8
  %4325 = zext i8 %4324 to i32
  %4326 = icmp eq i32 %4325, 35
  br i1 %4326, label %4327, label %4346

; <label>:4327:                                   ; preds = %4321
  %4328 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4329 = getelementptr inbounds %struct.TValue, %struct.TValue* %4328, i32 0, i32 0
  %4330 = bitcast %union.Value* %4329 to i64*
  %4331 = load i64, i64* %4330, align 8
  store i64 %4331, i64* %189, align 8
  %4332 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4333 = getelementptr inbounds %struct.TValue, %struct.TValue* %4332, i32 0, i32 0
  %4334 = bitcast %union.Value* %4333 to i64*
  %4335 = load i64, i64* %4334, align 8
  store i64 %4335, i64* %190, align 8
  %4336 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4337 = bitcast %union.StackValue* %4336 to %struct.TValue*
  store %struct.TValue* %4337, %struct.TValue** %191, align 8
  %4338 = load i64, i64* %189, align 8
  %4339 = load i64, i64* %190, align 8
  %4340 = sub i64 %4338, %4339
  %4341 = load %struct.TValue*, %struct.TValue** %191, align 8
  %4342 = getelementptr inbounds %struct.TValue, %struct.TValue* %4341, i32 0, i32 0
  %4343 = bitcast %union.Value* %4342 to i64*
  store i64 %4340, i64* %4343, align 8
  %4344 = load %struct.TValue*, %struct.TValue** %191, align 8
  %4345 = getelementptr inbounds %struct.TValue, %struct.TValue* %4344, i32 0, i32 1
  store i8 35, i8* %4345, align 8
  br label %4426

; <label>:4346:                                   ; preds = %4321, %4301
  %4347 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4348 = getelementptr inbounds %struct.TValue, %struct.TValue* %4347, i32 0, i32 1
  %4349 = load i8, i8* %4348, align 8
  %4350 = zext i8 %4349 to i32
  %4351 = icmp eq i32 %4350, 19
  br i1 %4351, label %4352, label %4357

; <label>:4352:                                   ; preds = %4346
  %4353 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4354 = getelementptr inbounds %struct.TValue, %struct.TValue* %4353, i32 0, i32 0
  %4355 = bitcast %union.Value* %4354 to double*
  %4356 = load double, double* %4355, align 8
  store double %4356, double* %192, align 8
  br i1 true, label %4370, label %4405

; <label>:4357:                                   ; preds = %4346
  %4358 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4359 = getelementptr inbounds %struct.TValue, %struct.TValue* %4358, i32 0, i32 1
  %4360 = load i8, i8* %4359, align 8
  %4361 = zext i8 %4360 to i32
  %4362 = icmp eq i32 %4361, 35
  br i1 %4362, label %4363, label %4369

; <label>:4363:                                   ; preds = %4357
  %4364 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4365 = getelementptr inbounds %struct.TValue, %struct.TValue* %4364, i32 0, i32 0
  %4366 = bitcast %union.Value* %4365 to i64*
  %4367 = load i64, i64* %4366, align 8
  %4368 = sitofp i64 %4367 to double
  store double %4368, double* %192, align 8
  br i1 true, label %4370, label %4405

; <label>:4369:                                   ; preds = %4357
  br i1 false, label %4370, label %4405

; <label>:4370:                                   ; preds = %4369, %4363, %4352
  %4371 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4372 = getelementptr inbounds %struct.TValue, %struct.TValue* %4371, i32 0, i32 1
  %4373 = load i8, i8* %4372, align 8
  %4374 = zext i8 %4373 to i32
  %4375 = icmp eq i32 %4374, 19
  br i1 %4375, label %4376, label %4381

; <label>:4376:                                   ; preds = %4370
  %4377 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4378 = getelementptr inbounds %struct.TValue, %struct.TValue* %4377, i32 0, i32 0
  %4379 = bitcast %union.Value* %4378 to double*
  %4380 = load double, double* %4379, align 8
  store double %4380, double* %193, align 8
  br i1 true, label %4394, label %4405

; <label>:4381:                                   ; preds = %4370
  %4382 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4383 = getelementptr inbounds %struct.TValue, %struct.TValue* %4382, i32 0, i32 1
  %4384 = load i8, i8* %4383, align 8
  %4385 = zext i8 %4384 to i32
  %4386 = icmp eq i32 %4385, 35
  br i1 %4386, label %4387, label %4393

; <label>:4387:                                   ; preds = %4381
  %4388 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4389 = getelementptr inbounds %struct.TValue, %struct.TValue* %4388, i32 0, i32 0
  %4390 = bitcast %union.Value* %4389 to i64*
  %4391 = load i64, i64* %4390, align 8
  %4392 = sitofp i64 %4391 to double
  store double %4392, double* %193, align 8
  br i1 true, label %4394, label %4405

; <label>:4393:                                   ; preds = %4381
  br i1 false, label %4394, label %4405

; <label>:4394:                                   ; preds = %4393, %4387, %4376
  %4395 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4396 = bitcast %union.StackValue* %4395 to %struct.TValue*
  store %struct.TValue* %4396, %struct.TValue** %194, align 8
  %4397 = load double, double* %192, align 8
  %4398 = load double, double* %193, align 8
  %4399 = fsub double %4397, %4398
  %4400 = load %struct.TValue*, %struct.TValue** %194, align 8
  %4401 = getelementptr inbounds %struct.TValue, %struct.TValue* %4400, i32 0, i32 0
  %4402 = bitcast %union.Value* %4401 to double*
  store double %4399, double* %4402, align 8
  %4403 = load %struct.TValue*, %struct.TValue** %194, align 8
  %4404 = getelementptr inbounds %struct.TValue, %struct.TValue* %4403, i32 0, i32 1
  store i8 19, i8* %4404, align 8
  br label %4425

; <label>:4405:                                   ; preds = %4393, %4387, %4376, %4369, %4363, %4352
  %4406 = load i32*, i32** %8, align 8
  %4407 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4408 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4407, i32 0, i32 4
  %4409 = bitcast %union.anon* %4408 to %struct.anon*
  %4410 = getelementptr inbounds %struct.anon, %struct.anon* %4409, i32 0, i32 0
  store i32* %4406, i32** %4410, align 8
  %4411 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4412 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4411, i32 0, i32 1
  %4413 = load %union.StackValue*, %union.StackValue** %4412, align 8
  %4414 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4415 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4414, i32 0, i32 6
  store %union.StackValue* %4413, %union.StackValue** %4415, align 8
  %4416 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4417 = load %struct.TValue*, %struct.TValue** %187, align 8
  %4418 = load %struct.TValue*, %struct.TValue** %188, align 8
  %4419 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4416, %struct.TValue* %4417, %struct.TValue* %4418, %union.StackValue* %4419, i32 7)
  %4420 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4421 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4420, i32 0, i32 4
  %4422 = bitcast %union.anon* %4421 to %struct.anon*
  %4423 = getelementptr inbounds %struct.anon, %struct.anon* %4422, i32 0, i32 1
  %4424 = load i32, i32* %4423, align 8
  store i32 %4424, i32* %9, align 4
  br label %4425

; <label>:4425:                                   ; preds = %4405, %4394
  br label %4426

; <label>:4426:                                   ; preds = %4425, %4327
  %4427 = load i32, i32* %9, align 4
  %4428 = icmp ne i32 %4427, 0
  br i1 %4428, label %4429, label %4437

; <label>:4429:                                   ; preds = %4426
  %4430 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4431 = load i32*, i32** %8, align 8
  %4432 = call i32 @luaG_traceexec(%struct.lua_State* %4430, i32* %4431)
  store i32 %4432, i32* %9, align 4
  %4433 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4434 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4433, i32 0, i32 0
  %4435 = load %union.StackValue*, %union.StackValue** %4434, align 8
  %4436 = getelementptr inbounds %union.StackValue, %union.StackValue* %4435, i64 1
  store %union.StackValue* %4436, %union.StackValue** %7, align 8
  br label %4437

; <label>:4437:                                   ; preds = %4429, %4426
  %4438 = load i32*, i32** %8, align 8
  %4439 = getelementptr inbounds i32, i32* %4438, i32 1
  store i32* %4439, i32** %8, align 8
  %4440 = load i32, i32* %4438, align 4
  store i32 %4440, i32* %10, align 4
  %4441 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4442 = load i32, i32* %10, align 4
  %4443 = lshr i32 %4442, 7
  %4444 = and i32 %4443, 255
  %4445 = sext i32 %4444 to i64
  %4446 = getelementptr inbounds %union.StackValue, %union.StackValue* %4441, i64 %4445
  store %union.StackValue* %4446, %union.StackValue** %11, align 8
  %4447 = load i32, i32* %10, align 4
  %4448 = lshr i32 %4447, 0
  %4449 = and i32 %4448, 127
  %4450 = zext i32 %4449 to i64
  %4451 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4450
  %4452 = load i8*, i8** %4451, align 8
  br label %8998

; <label>:4453:                                   ; preds = %8998
  %4454 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4455 = load i32, i32* %10, align 4
  %4456 = lshr i32 %4455, 16
  %4457 = and i32 %4456, 255
  %4458 = sext i32 %4457 to i64
  %4459 = getelementptr inbounds %union.StackValue, %union.StackValue* %4454, i64 %4458
  %4460 = bitcast %union.StackValue* %4459 to %struct.TValue*
  store %struct.TValue* %4460, %struct.TValue** %195, align 8
  %4461 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4462 = load i32, i32* %10, align 4
  %4463 = lshr i32 %4462, 24
  %4464 = and i32 %4463, 255
  %4465 = sext i32 %4464 to i64
  %4466 = getelementptr inbounds %union.StackValue, %union.StackValue* %4461, i64 %4465
  %4467 = bitcast %union.StackValue* %4466 to %struct.TValue*
  store %struct.TValue* %4467, %struct.TValue** %196, align 8
  %4468 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4469 = getelementptr inbounds %struct.TValue, %struct.TValue* %4468, i32 0, i32 1
  %4470 = load i8, i8* %4469, align 8
  %4471 = zext i8 %4470 to i32
  %4472 = icmp eq i32 %4471, 35
  br i1 %4472, label %4473, label %4498

; <label>:4473:                                   ; preds = %4453
  %4474 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4475 = getelementptr inbounds %struct.TValue, %struct.TValue* %4474, i32 0, i32 1
  %4476 = load i8, i8* %4475, align 8
  %4477 = zext i8 %4476 to i32
  %4478 = icmp eq i32 %4477, 35
  br i1 %4478, label %4479, label %4498

; <label>:4479:                                   ; preds = %4473
  %4480 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4481 = getelementptr inbounds %struct.TValue, %struct.TValue* %4480, i32 0, i32 0
  %4482 = bitcast %union.Value* %4481 to i64*
  %4483 = load i64, i64* %4482, align 8
  store i64 %4483, i64* %197, align 8
  %4484 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4485 = getelementptr inbounds %struct.TValue, %struct.TValue* %4484, i32 0, i32 0
  %4486 = bitcast %union.Value* %4485 to i64*
  %4487 = load i64, i64* %4486, align 8
  store i64 %4487, i64* %198, align 8
  %4488 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4489 = bitcast %union.StackValue* %4488 to %struct.TValue*
  store %struct.TValue* %4489, %struct.TValue** %199, align 8
  %4490 = load i64, i64* %197, align 8
  %4491 = load i64, i64* %198, align 8
  %4492 = mul i64 %4490, %4491
  %4493 = load %struct.TValue*, %struct.TValue** %199, align 8
  %4494 = getelementptr inbounds %struct.TValue, %struct.TValue* %4493, i32 0, i32 0
  %4495 = bitcast %union.Value* %4494 to i64*
  store i64 %4492, i64* %4495, align 8
  %4496 = load %struct.TValue*, %struct.TValue** %199, align 8
  %4497 = getelementptr inbounds %struct.TValue, %struct.TValue* %4496, i32 0, i32 1
  store i8 35, i8* %4497, align 8
  br label %4578

; <label>:4498:                                   ; preds = %4473, %4453
  %4499 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4500 = getelementptr inbounds %struct.TValue, %struct.TValue* %4499, i32 0, i32 1
  %4501 = load i8, i8* %4500, align 8
  %4502 = zext i8 %4501 to i32
  %4503 = icmp eq i32 %4502, 19
  br i1 %4503, label %4504, label %4509

; <label>:4504:                                   ; preds = %4498
  %4505 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4506 = getelementptr inbounds %struct.TValue, %struct.TValue* %4505, i32 0, i32 0
  %4507 = bitcast %union.Value* %4506 to double*
  %4508 = load double, double* %4507, align 8
  store double %4508, double* %200, align 8
  br i1 true, label %4522, label %4557

; <label>:4509:                                   ; preds = %4498
  %4510 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4511 = getelementptr inbounds %struct.TValue, %struct.TValue* %4510, i32 0, i32 1
  %4512 = load i8, i8* %4511, align 8
  %4513 = zext i8 %4512 to i32
  %4514 = icmp eq i32 %4513, 35
  br i1 %4514, label %4515, label %4521

; <label>:4515:                                   ; preds = %4509
  %4516 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4517 = getelementptr inbounds %struct.TValue, %struct.TValue* %4516, i32 0, i32 0
  %4518 = bitcast %union.Value* %4517 to i64*
  %4519 = load i64, i64* %4518, align 8
  %4520 = sitofp i64 %4519 to double
  store double %4520, double* %200, align 8
  br i1 true, label %4522, label %4557

; <label>:4521:                                   ; preds = %4509
  br i1 false, label %4522, label %4557

; <label>:4522:                                   ; preds = %4521, %4515, %4504
  %4523 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4524 = getelementptr inbounds %struct.TValue, %struct.TValue* %4523, i32 0, i32 1
  %4525 = load i8, i8* %4524, align 8
  %4526 = zext i8 %4525 to i32
  %4527 = icmp eq i32 %4526, 19
  br i1 %4527, label %4528, label %4533

; <label>:4528:                                   ; preds = %4522
  %4529 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4530 = getelementptr inbounds %struct.TValue, %struct.TValue* %4529, i32 0, i32 0
  %4531 = bitcast %union.Value* %4530 to double*
  %4532 = load double, double* %4531, align 8
  store double %4532, double* %201, align 8
  br i1 true, label %4546, label %4557

; <label>:4533:                                   ; preds = %4522
  %4534 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4535 = getelementptr inbounds %struct.TValue, %struct.TValue* %4534, i32 0, i32 1
  %4536 = load i8, i8* %4535, align 8
  %4537 = zext i8 %4536 to i32
  %4538 = icmp eq i32 %4537, 35
  br i1 %4538, label %4539, label %4545

; <label>:4539:                                   ; preds = %4533
  %4540 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4541 = getelementptr inbounds %struct.TValue, %struct.TValue* %4540, i32 0, i32 0
  %4542 = bitcast %union.Value* %4541 to i64*
  %4543 = load i64, i64* %4542, align 8
  %4544 = sitofp i64 %4543 to double
  store double %4544, double* %201, align 8
  br i1 true, label %4546, label %4557

; <label>:4545:                                   ; preds = %4533
  br i1 false, label %4546, label %4557

; <label>:4546:                                   ; preds = %4545, %4539, %4528
  %4547 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4548 = bitcast %union.StackValue* %4547 to %struct.TValue*
  store %struct.TValue* %4548, %struct.TValue** %202, align 8
  %4549 = load double, double* %200, align 8
  %4550 = load double, double* %201, align 8
  %4551 = fmul double %4549, %4550
  %4552 = load %struct.TValue*, %struct.TValue** %202, align 8
  %4553 = getelementptr inbounds %struct.TValue, %struct.TValue* %4552, i32 0, i32 0
  %4554 = bitcast %union.Value* %4553 to double*
  store double %4551, double* %4554, align 8
  %4555 = load %struct.TValue*, %struct.TValue** %202, align 8
  %4556 = getelementptr inbounds %struct.TValue, %struct.TValue* %4555, i32 0, i32 1
  store i8 19, i8* %4556, align 8
  br label %4577

; <label>:4557:                                   ; preds = %4545, %4539, %4528, %4521, %4515, %4504
  %4558 = load i32*, i32** %8, align 8
  %4559 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4560 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4559, i32 0, i32 4
  %4561 = bitcast %union.anon* %4560 to %struct.anon*
  %4562 = getelementptr inbounds %struct.anon, %struct.anon* %4561, i32 0, i32 0
  store i32* %4558, i32** %4562, align 8
  %4563 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4564 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4563, i32 0, i32 1
  %4565 = load %union.StackValue*, %union.StackValue** %4564, align 8
  %4566 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4567 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4566, i32 0, i32 6
  store %union.StackValue* %4565, %union.StackValue** %4567, align 8
  %4568 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4569 = load %struct.TValue*, %struct.TValue** %195, align 8
  %4570 = load %struct.TValue*, %struct.TValue** %196, align 8
  %4571 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4568, %struct.TValue* %4569, %struct.TValue* %4570, %union.StackValue* %4571, i32 8)
  %4572 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4573 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4572, i32 0, i32 4
  %4574 = bitcast %union.anon* %4573 to %struct.anon*
  %4575 = getelementptr inbounds %struct.anon, %struct.anon* %4574, i32 0, i32 1
  %4576 = load i32, i32* %4575, align 8
  store i32 %4576, i32* %9, align 4
  br label %4577

; <label>:4577:                                   ; preds = %4557, %4546
  br label %4578

; <label>:4578:                                   ; preds = %4577, %4479
  %4579 = load i32, i32* %9, align 4
  %4580 = icmp ne i32 %4579, 0
  br i1 %4580, label %4581, label %4589

; <label>:4581:                                   ; preds = %4578
  %4582 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4583 = load i32*, i32** %8, align 8
  %4584 = call i32 @luaG_traceexec(%struct.lua_State* %4582, i32* %4583)
  store i32 %4584, i32* %9, align 4
  %4585 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4586 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4585, i32 0, i32 0
  %4587 = load %union.StackValue*, %union.StackValue** %4586, align 8
  %4588 = getelementptr inbounds %union.StackValue, %union.StackValue* %4587, i64 1
  store %union.StackValue* %4588, %union.StackValue** %7, align 8
  br label %4589

; <label>:4589:                                   ; preds = %4581, %4578
  %4590 = load i32*, i32** %8, align 8
  %4591 = getelementptr inbounds i32, i32* %4590, i32 1
  store i32* %4591, i32** %8, align 8
  %4592 = load i32, i32* %4590, align 4
  store i32 %4592, i32* %10, align 4
  %4593 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4594 = load i32, i32* %10, align 4
  %4595 = lshr i32 %4594, 7
  %4596 = and i32 %4595, 255
  %4597 = sext i32 %4596 to i64
  %4598 = getelementptr inbounds %union.StackValue, %union.StackValue* %4593, i64 %4597
  store %union.StackValue* %4598, %union.StackValue** %11, align 8
  %4599 = load i32, i32* %10, align 4
  %4600 = lshr i32 %4599, 0
  %4601 = and i32 %4600, 127
  %4602 = zext i32 %4601 to i64
  %4603 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4602
  %4604 = load i8*, i8** %4603, align 8
  br label %8998

; <label>:4605:                                   ; preds = %8998
  %4606 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4607 = load i32, i32* %10, align 4
  %4608 = lshr i32 %4607, 16
  %4609 = and i32 %4608, 255
  %4610 = sext i32 %4609 to i64
  %4611 = getelementptr inbounds %union.StackValue, %union.StackValue* %4606, i64 %4610
  %4612 = bitcast %union.StackValue* %4611 to %struct.TValue*
  store %struct.TValue* %4612, %struct.TValue** %203, align 8
  %4613 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4614 = load i32, i32* %10, align 4
  %4615 = lshr i32 %4614, 24
  %4616 = and i32 %4615, 255
  %4617 = sext i32 %4616 to i64
  %4618 = getelementptr inbounds %union.StackValue, %union.StackValue* %4613, i64 %4617
  %4619 = bitcast %union.StackValue* %4618 to %struct.TValue*
  store %struct.TValue* %4619, %struct.TValue** %204, align 8
  %4620 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4621 = getelementptr inbounds %struct.TValue, %struct.TValue* %4620, i32 0, i32 1
  %4622 = load i8, i8* %4621, align 8
  %4623 = zext i8 %4622 to i32
  %4624 = icmp eq i32 %4623, 35
  br i1 %4624, label %4625, label %4651

; <label>:4625:                                   ; preds = %4605
  %4626 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4627 = getelementptr inbounds %struct.TValue, %struct.TValue* %4626, i32 0, i32 1
  %4628 = load i8, i8* %4627, align 8
  %4629 = zext i8 %4628 to i32
  %4630 = icmp eq i32 %4629, 35
  br i1 %4630, label %4631, label %4651

; <label>:4631:                                   ; preds = %4625
  %4632 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4633 = getelementptr inbounds %struct.TValue, %struct.TValue* %4632, i32 0, i32 0
  %4634 = bitcast %union.Value* %4633 to i64*
  %4635 = load i64, i64* %4634, align 8
  store i64 %4635, i64* %205, align 8
  %4636 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4637 = getelementptr inbounds %struct.TValue, %struct.TValue* %4636, i32 0, i32 0
  %4638 = bitcast %union.Value* %4637 to i64*
  %4639 = load i64, i64* %4638, align 8
  store i64 %4639, i64* %206, align 8
  %4640 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4641 = bitcast %union.StackValue* %4640 to %struct.TValue*
  store %struct.TValue* %4641, %struct.TValue** %207, align 8
  %4642 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4643 = load i64, i64* %205, align 8
  %4644 = load i64, i64* %206, align 8
  %4645 = call i64 @luaV_mod(%struct.lua_State* %4642, i64 %4643, i64 %4644)
  %4646 = load %struct.TValue*, %struct.TValue** %207, align 8
  %4647 = getelementptr inbounds %struct.TValue, %struct.TValue* %4646, i32 0, i32 0
  %4648 = bitcast %union.Value* %4647 to i64*
  store i64 %4645, i64* %4648, align 8
  %4649 = load %struct.TValue*, %struct.TValue** %207, align 8
  %4650 = getelementptr inbounds %struct.TValue, %struct.TValue* %4649, i32 0, i32 1
  store i8 35, i8* %4650, align 8
  br label %4732

; <label>:4651:                                   ; preds = %4625, %4605
  %4652 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4653 = getelementptr inbounds %struct.TValue, %struct.TValue* %4652, i32 0, i32 1
  %4654 = load i8, i8* %4653, align 8
  %4655 = zext i8 %4654 to i32
  %4656 = icmp eq i32 %4655, 19
  br i1 %4656, label %4657, label %4662

; <label>:4657:                                   ; preds = %4651
  %4658 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4659 = getelementptr inbounds %struct.TValue, %struct.TValue* %4658, i32 0, i32 0
  %4660 = bitcast %union.Value* %4659 to double*
  %4661 = load double, double* %4660, align 8
  store double %4661, double* %208, align 8
  br i1 true, label %4675, label %4711

; <label>:4662:                                   ; preds = %4651
  %4663 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4664 = getelementptr inbounds %struct.TValue, %struct.TValue* %4663, i32 0, i32 1
  %4665 = load i8, i8* %4664, align 8
  %4666 = zext i8 %4665 to i32
  %4667 = icmp eq i32 %4666, 35
  br i1 %4667, label %4668, label %4674

; <label>:4668:                                   ; preds = %4662
  %4669 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4670 = getelementptr inbounds %struct.TValue, %struct.TValue* %4669, i32 0, i32 0
  %4671 = bitcast %union.Value* %4670 to i64*
  %4672 = load i64, i64* %4671, align 8
  %4673 = sitofp i64 %4672 to double
  store double %4673, double* %208, align 8
  br i1 true, label %4675, label %4711

; <label>:4674:                                   ; preds = %4662
  br i1 false, label %4675, label %4711

; <label>:4675:                                   ; preds = %4674, %4668, %4657
  %4676 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4677 = getelementptr inbounds %struct.TValue, %struct.TValue* %4676, i32 0, i32 1
  %4678 = load i8, i8* %4677, align 8
  %4679 = zext i8 %4678 to i32
  %4680 = icmp eq i32 %4679, 19
  br i1 %4680, label %4681, label %4686

; <label>:4681:                                   ; preds = %4675
  %4682 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4683 = getelementptr inbounds %struct.TValue, %struct.TValue* %4682, i32 0, i32 0
  %4684 = bitcast %union.Value* %4683 to double*
  %4685 = load double, double* %4684, align 8
  store double %4685, double* %209, align 8
  br i1 true, label %4699, label %4711

; <label>:4686:                                   ; preds = %4675
  %4687 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4688 = getelementptr inbounds %struct.TValue, %struct.TValue* %4687, i32 0, i32 1
  %4689 = load i8, i8* %4688, align 8
  %4690 = zext i8 %4689 to i32
  %4691 = icmp eq i32 %4690, 35
  br i1 %4691, label %4692, label %4698

; <label>:4692:                                   ; preds = %4686
  %4693 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4694 = getelementptr inbounds %struct.TValue, %struct.TValue* %4693, i32 0, i32 0
  %4695 = bitcast %union.Value* %4694 to i64*
  %4696 = load i64, i64* %4695, align 8
  %4697 = sitofp i64 %4696 to double
  store double %4697, double* %209, align 8
  br i1 true, label %4699, label %4711

; <label>:4698:                                   ; preds = %4686
  br i1 false, label %4699, label %4711

; <label>:4699:                                   ; preds = %4698, %4692, %4681
  %4700 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4701 = bitcast %union.StackValue* %4700 to %struct.TValue*
  store %struct.TValue* %4701, %struct.TValue** %210, align 8
  %4702 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4703 = load double, double* %208, align 8
  %4704 = load double, double* %209, align 8
  %4705 = call double @luaV_modf(%struct.lua_State* %4702, double %4703, double %4704)
  %4706 = load %struct.TValue*, %struct.TValue** %210, align 8
  %4707 = getelementptr inbounds %struct.TValue, %struct.TValue* %4706, i32 0, i32 0
  %4708 = bitcast %union.Value* %4707 to double*
  store double %4705, double* %4708, align 8
  %4709 = load %struct.TValue*, %struct.TValue** %210, align 8
  %4710 = getelementptr inbounds %struct.TValue, %struct.TValue* %4709, i32 0, i32 1
  store i8 19, i8* %4710, align 8
  br label %4731

; <label>:4711:                                   ; preds = %4698, %4692, %4681, %4674, %4668, %4657
  %4712 = load i32*, i32** %8, align 8
  %4713 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4714 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4713, i32 0, i32 4
  %4715 = bitcast %union.anon* %4714 to %struct.anon*
  %4716 = getelementptr inbounds %struct.anon, %struct.anon* %4715, i32 0, i32 0
  store i32* %4712, i32** %4716, align 8
  %4717 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4718 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4717, i32 0, i32 1
  %4719 = load %union.StackValue*, %union.StackValue** %4718, align 8
  %4720 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4721 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4720, i32 0, i32 6
  store %union.StackValue* %4719, %union.StackValue** %4721, align 8
  %4722 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4723 = load %struct.TValue*, %struct.TValue** %203, align 8
  %4724 = load %struct.TValue*, %struct.TValue** %204, align 8
  %4725 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4722, %struct.TValue* %4723, %struct.TValue* %4724, %union.StackValue* %4725, i32 9)
  %4726 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4727 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4726, i32 0, i32 4
  %4728 = bitcast %union.anon* %4727 to %struct.anon*
  %4729 = getelementptr inbounds %struct.anon, %struct.anon* %4728, i32 0, i32 1
  %4730 = load i32, i32* %4729, align 8
  store i32 %4730, i32* %9, align 4
  br label %4731

; <label>:4731:                                   ; preds = %4711, %4699
  br label %4732

; <label>:4732:                                   ; preds = %4731, %4631
  %4733 = load i32, i32* %9, align 4
  %4734 = icmp ne i32 %4733, 0
  br i1 %4734, label %4735, label %4743

; <label>:4735:                                   ; preds = %4732
  %4736 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4737 = load i32*, i32** %8, align 8
  %4738 = call i32 @luaG_traceexec(%struct.lua_State* %4736, i32* %4737)
  store i32 %4738, i32* %9, align 4
  %4739 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4740 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4739, i32 0, i32 0
  %4741 = load %union.StackValue*, %union.StackValue** %4740, align 8
  %4742 = getelementptr inbounds %union.StackValue, %union.StackValue* %4741, i64 1
  store %union.StackValue* %4742, %union.StackValue** %7, align 8
  br label %4743

; <label>:4743:                                   ; preds = %4735, %4732
  %4744 = load i32*, i32** %8, align 8
  %4745 = getelementptr inbounds i32, i32* %4744, i32 1
  store i32* %4745, i32** %8, align 8
  %4746 = load i32, i32* %4744, align 4
  store i32 %4746, i32* %10, align 4
  %4747 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4748 = load i32, i32* %10, align 4
  %4749 = lshr i32 %4748, 7
  %4750 = and i32 %4749, 255
  %4751 = sext i32 %4750 to i64
  %4752 = getelementptr inbounds %union.StackValue, %union.StackValue* %4747, i64 %4751
  store %union.StackValue* %4752, %union.StackValue** %11, align 8
  %4753 = load i32, i32* %10, align 4
  %4754 = lshr i32 %4753, 0
  %4755 = and i32 %4754, 127
  %4756 = zext i32 %4755 to i64
  %4757 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4756
  %4758 = load i8*, i8** %4757, align 8
  br label %8998

; <label>:4759:                                   ; preds = %8998
  %4760 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4761 = load i32, i32* %10, align 4
  %4762 = lshr i32 %4761, 16
  %4763 = and i32 %4762, 255
  %4764 = sext i32 %4763 to i64
  %4765 = getelementptr inbounds %union.StackValue, %union.StackValue* %4760, i64 %4764
  %4766 = bitcast %union.StackValue* %4765 to %struct.TValue*
  store %struct.TValue* %4766, %struct.TValue** %211, align 8
  %4767 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4768 = load i32, i32* %10, align 4
  %4769 = lshr i32 %4768, 24
  %4770 = and i32 %4769, 255
  %4771 = sext i32 %4770 to i64
  %4772 = getelementptr inbounds %union.StackValue, %union.StackValue* %4767, i64 %4771
  %4773 = bitcast %union.StackValue* %4772 to %struct.TValue*
  store %struct.TValue* %4773, %struct.TValue** %212, align 8
  %4774 = load %struct.TValue*, %struct.TValue** %211, align 8
  %4775 = getelementptr inbounds %struct.TValue, %struct.TValue* %4774, i32 0, i32 1
  %4776 = load i8, i8* %4775, align 8
  %4777 = zext i8 %4776 to i32
  %4778 = icmp eq i32 %4777, 19
  br i1 %4778, label %4779, label %4784

; <label>:4779:                                   ; preds = %4759
  %4780 = load %struct.TValue*, %struct.TValue** %211, align 8
  %4781 = getelementptr inbounds %struct.TValue, %struct.TValue* %4780, i32 0, i32 0
  %4782 = bitcast %union.Value* %4781 to double*
  %4783 = load double, double* %4782, align 8
  store double %4783, double* %213, align 8
  br i1 true, label %4797, label %4833

; <label>:4784:                                   ; preds = %4759
  %4785 = load %struct.TValue*, %struct.TValue** %211, align 8
  %4786 = getelementptr inbounds %struct.TValue, %struct.TValue* %4785, i32 0, i32 1
  %4787 = load i8, i8* %4786, align 8
  %4788 = zext i8 %4787 to i32
  %4789 = icmp eq i32 %4788, 35
  br i1 %4789, label %4790, label %4796

; <label>:4790:                                   ; preds = %4784
  %4791 = load %struct.TValue*, %struct.TValue** %211, align 8
  %4792 = getelementptr inbounds %struct.TValue, %struct.TValue* %4791, i32 0, i32 0
  %4793 = bitcast %union.Value* %4792 to i64*
  %4794 = load i64, i64* %4793, align 8
  %4795 = sitofp i64 %4794 to double
  store double %4795, double* %213, align 8
  br i1 true, label %4797, label %4833

; <label>:4796:                                   ; preds = %4784
  br i1 false, label %4797, label %4833

; <label>:4797:                                   ; preds = %4796, %4790, %4779
  %4798 = load %struct.TValue*, %struct.TValue** %212, align 8
  %4799 = getelementptr inbounds %struct.TValue, %struct.TValue* %4798, i32 0, i32 1
  %4800 = load i8, i8* %4799, align 8
  %4801 = zext i8 %4800 to i32
  %4802 = icmp eq i32 %4801, 19
  br i1 %4802, label %4803, label %4808

; <label>:4803:                                   ; preds = %4797
  %4804 = load %struct.TValue*, %struct.TValue** %212, align 8
  %4805 = getelementptr inbounds %struct.TValue, %struct.TValue* %4804, i32 0, i32 0
  %4806 = bitcast %union.Value* %4805 to double*
  %4807 = load double, double* %4806, align 8
  store double %4807, double* %214, align 8
  br i1 true, label %4821, label %4833

; <label>:4808:                                   ; preds = %4797
  %4809 = load %struct.TValue*, %struct.TValue** %212, align 8
  %4810 = getelementptr inbounds %struct.TValue, %struct.TValue* %4809, i32 0, i32 1
  %4811 = load i8, i8* %4810, align 8
  %4812 = zext i8 %4811 to i32
  %4813 = icmp eq i32 %4812, 35
  br i1 %4813, label %4814, label %4820

; <label>:4814:                                   ; preds = %4808
  %4815 = load %struct.TValue*, %struct.TValue** %212, align 8
  %4816 = getelementptr inbounds %struct.TValue, %struct.TValue* %4815, i32 0, i32 0
  %4817 = bitcast %union.Value* %4816 to i64*
  %4818 = load i64, i64* %4817, align 8
  %4819 = sitofp i64 %4818 to double
  store double %4819, double* %214, align 8
  br i1 true, label %4821, label %4833

; <label>:4820:                                   ; preds = %4808
  br i1 false, label %4821, label %4833

; <label>:4821:                                   ; preds = %4820, %4814, %4803
  %4822 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4823 = bitcast %union.StackValue* %4822 to %struct.TValue*
  store %struct.TValue* %4823, %struct.TValue** %215, align 8
  %4824 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4825 = load double, double* %213, align 8
  %4826 = load double, double* %214, align 8
  %4827 = call double @pow(double %4825, double %4826) #8
  %4828 = load %struct.TValue*, %struct.TValue** %215, align 8
  %4829 = getelementptr inbounds %struct.TValue, %struct.TValue* %4828, i32 0, i32 0
  %4830 = bitcast %union.Value* %4829 to double*
  store double %4827, double* %4830, align 8
  %4831 = load %struct.TValue*, %struct.TValue** %215, align 8
  %4832 = getelementptr inbounds %struct.TValue, %struct.TValue* %4831, i32 0, i32 1
  store i8 19, i8* %4832, align 8
  br label %4853

; <label>:4833:                                   ; preds = %4820, %4814, %4803, %4796, %4790, %4779
  %4834 = load i32*, i32** %8, align 8
  %4835 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4836 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4835, i32 0, i32 4
  %4837 = bitcast %union.anon* %4836 to %struct.anon*
  %4838 = getelementptr inbounds %struct.anon, %struct.anon* %4837, i32 0, i32 0
  store i32* %4834, i32** %4838, align 8
  %4839 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4840 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4839, i32 0, i32 1
  %4841 = load %union.StackValue*, %union.StackValue** %4840, align 8
  %4842 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4843 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4842, i32 0, i32 6
  store %union.StackValue* %4841, %union.StackValue** %4843, align 8
  %4844 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4845 = load %struct.TValue*, %struct.TValue** %211, align 8
  %4846 = load %struct.TValue*, %struct.TValue** %212, align 8
  %4847 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4844, %struct.TValue* %4845, %struct.TValue* %4846, %union.StackValue* %4847, i32 10)
  %4848 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4849 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4848, i32 0, i32 4
  %4850 = bitcast %union.anon* %4849 to %struct.anon*
  %4851 = getelementptr inbounds %struct.anon, %struct.anon* %4850, i32 0, i32 1
  %4852 = load i32, i32* %4851, align 8
  store i32 %4852, i32* %9, align 4
  br label %4853

; <label>:4853:                                   ; preds = %4833, %4821
  %4854 = load i32, i32* %9, align 4
  %4855 = icmp ne i32 %4854, 0
  br i1 %4855, label %4856, label %4864

; <label>:4856:                                   ; preds = %4853
  %4857 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4858 = load i32*, i32** %8, align 8
  %4859 = call i32 @luaG_traceexec(%struct.lua_State* %4857, i32* %4858)
  store i32 %4859, i32* %9, align 4
  %4860 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4861 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4860, i32 0, i32 0
  %4862 = load %union.StackValue*, %union.StackValue** %4861, align 8
  %4863 = getelementptr inbounds %union.StackValue, %union.StackValue* %4862, i64 1
  store %union.StackValue* %4863, %union.StackValue** %7, align 8
  br label %4864

; <label>:4864:                                   ; preds = %4856, %4853
  %4865 = load i32*, i32** %8, align 8
  %4866 = getelementptr inbounds i32, i32* %4865, i32 1
  store i32* %4866, i32** %8, align 8
  %4867 = load i32, i32* %4865, align 4
  store i32 %4867, i32* %10, align 4
  %4868 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4869 = load i32, i32* %10, align 4
  %4870 = lshr i32 %4869, 7
  %4871 = and i32 %4870, 255
  %4872 = sext i32 %4871 to i64
  %4873 = getelementptr inbounds %union.StackValue, %union.StackValue* %4868, i64 %4872
  store %union.StackValue* %4873, %union.StackValue** %11, align 8
  %4874 = load i32, i32* %10, align 4
  %4875 = lshr i32 %4874, 0
  %4876 = and i32 %4875, 127
  %4877 = zext i32 %4876 to i64
  %4878 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4877
  %4879 = load i8*, i8** %4878, align 8
  br label %8998

; <label>:4880:                                   ; preds = %8998
  %4881 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4882 = load i32, i32* %10, align 4
  %4883 = lshr i32 %4882, 16
  %4884 = and i32 %4883, 255
  %4885 = sext i32 %4884 to i64
  %4886 = getelementptr inbounds %union.StackValue, %union.StackValue* %4881, i64 %4885
  %4887 = bitcast %union.StackValue* %4886 to %struct.TValue*
  store %struct.TValue* %4887, %struct.TValue** %216, align 8
  %4888 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4889 = load i32, i32* %10, align 4
  %4890 = lshr i32 %4889, 24
  %4891 = and i32 %4890, 255
  %4892 = sext i32 %4891 to i64
  %4893 = getelementptr inbounds %union.StackValue, %union.StackValue* %4888, i64 %4892
  %4894 = bitcast %union.StackValue* %4893 to %struct.TValue*
  store %struct.TValue* %4894, %struct.TValue** %217, align 8
  %4895 = load %struct.TValue*, %struct.TValue** %216, align 8
  %4896 = getelementptr inbounds %struct.TValue, %struct.TValue* %4895, i32 0, i32 1
  %4897 = load i8, i8* %4896, align 8
  %4898 = zext i8 %4897 to i32
  %4899 = icmp eq i32 %4898, 19
  br i1 %4899, label %4900, label %4905

; <label>:4900:                                   ; preds = %4880
  %4901 = load %struct.TValue*, %struct.TValue** %216, align 8
  %4902 = getelementptr inbounds %struct.TValue, %struct.TValue* %4901, i32 0, i32 0
  %4903 = bitcast %union.Value* %4902 to double*
  %4904 = load double, double* %4903, align 8
  store double %4904, double* %218, align 8
  br i1 true, label %4918, label %4953

; <label>:4905:                                   ; preds = %4880
  %4906 = load %struct.TValue*, %struct.TValue** %216, align 8
  %4907 = getelementptr inbounds %struct.TValue, %struct.TValue* %4906, i32 0, i32 1
  %4908 = load i8, i8* %4907, align 8
  %4909 = zext i8 %4908 to i32
  %4910 = icmp eq i32 %4909, 35
  br i1 %4910, label %4911, label %4917

; <label>:4911:                                   ; preds = %4905
  %4912 = load %struct.TValue*, %struct.TValue** %216, align 8
  %4913 = getelementptr inbounds %struct.TValue, %struct.TValue* %4912, i32 0, i32 0
  %4914 = bitcast %union.Value* %4913 to i64*
  %4915 = load i64, i64* %4914, align 8
  %4916 = sitofp i64 %4915 to double
  store double %4916, double* %218, align 8
  br i1 true, label %4918, label %4953

; <label>:4917:                                   ; preds = %4905
  br i1 false, label %4918, label %4953

; <label>:4918:                                   ; preds = %4917, %4911, %4900
  %4919 = load %struct.TValue*, %struct.TValue** %217, align 8
  %4920 = getelementptr inbounds %struct.TValue, %struct.TValue* %4919, i32 0, i32 1
  %4921 = load i8, i8* %4920, align 8
  %4922 = zext i8 %4921 to i32
  %4923 = icmp eq i32 %4922, 19
  br i1 %4923, label %4924, label %4929

; <label>:4924:                                   ; preds = %4918
  %4925 = load %struct.TValue*, %struct.TValue** %217, align 8
  %4926 = getelementptr inbounds %struct.TValue, %struct.TValue* %4925, i32 0, i32 0
  %4927 = bitcast %union.Value* %4926 to double*
  %4928 = load double, double* %4927, align 8
  store double %4928, double* %219, align 8
  br i1 true, label %4942, label %4953

; <label>:4929:                                   ; preds = %4918
  %4930 = load %struct.TValue*, %struct.TValue** %217, align 8
  %4931 = getelementptr inbounds %struct.TValue, %struct.TValue* %4930, i32 0, i32 1
  %4932 = load i8, i8* %4931, align 8
  %4933 = zext i8 %4932 to i32
  %4934 = icmp eq i32 %4933, 35
  br i1 %4934, label %4935, label %4941

; <label>:4935:                                   ; preds = %4929
  %4936 = load %struct.TValue*, %struct.TValue** %217, align 8
  %4937 = getelementptr inbounds %struct.TValue, %struct.TValue* %4936, i32 0, i32 0
  %4938 = bitcast %union.Value* %4937 to i64*
  %4939 = load i64, i64* %4938, align 8
  %4940 = sitofp i64 %4939 to double
  store double %4940, double* %219, align 8
  br i1 true, label %4942, label %4953

; <label>:4941:                                   ; preds = %4929
  br i1 false, label %4942, label %4953

; <label>:4942:                                   ; preds = %4941, %4935, %4924
  %4943 = load %union.StackValue*, %union.StackValue** %11, align 8
  %4944 = bitcast %union.StackValue* %4943 to %struct.TValue*
  store %struct.TValue* %4944, %struct.TValue** %220, align 8
  %4945 = load double, double* %218, align 8
  %4946 = load double, double* %219, align 8
  %4947 = fdiv double %4945, %4946
  %4948 = load %struct.TValue*, %struct.TValue** %220, align 8
  %4949 = getelementptr inbounds %struct.TValue, %struct.TValue* %4948, i32 0, i32 0
  %4950 = bitcast %union.Value* %4949 to double*
  store double %4947, double* %4950, align 8
  %4951 = load %struct.TValue*, %struct.TValue** %220, align 8
  %4952 = getelementptr inbounds %struct.TValue, %struct.TValue* %4951, i32 0, i32 1
  store i8 19, i8* %4952, align 8
  br label %4973

; <label>:4953:                                   ; preds = %4941, %4935, %4924, %4917, %4911, %4900
  %4954 = load i32*, i32** %8, align 8
  %4955 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4956 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4955, i32 0, i32 4
  %4957 = bitcast %union.anon* %4956 to %struct.anon*
  %4958 = getelementptr inbounds %struct.anon, %struct.anon* %4957, i32 0, i32 0
  store i32* %4954, i32** %4958, align 8
  %4959 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4960 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4959, i32 0, i32 1
  %4961 = load %union.StackValue*, %union.StackValue** %4960, align 8
  %4962 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4963 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4962, i32 0, i32 6
  store %union.StackValue* %4961, %union.StackValue** %4963, align 8
  %4964 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4965 = load %struct.TValue*, %struct.TValue** %216, align 8
  %4966 = load %struct.TValue*, %struct.TValue** %217, align 8
  %4967 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %4964, %struct.TValue* %4965, %struct.TValue* %4966, %union.StackValue* %4967, i32 11)
  %4968 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4969 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4968, i32 0, i32 4
  %4970 = bitcast %union.anon* %4969 to %struct.anon*
  %4971 = getelementptr inbounds %struct.anon, %struct.anon* %4970, i32 0, i32 1
  %4972 = load i32, i32* %4971, align 8
  store i32 %4972, i32* %9, align 4
  br label %4973

; <label>:4973:                                   ; preds = %4953, %4942
  %4974 = load i32, i32* %9, align 4
  %4975 = icmp ne i32 %4974, 0
  br i1 %4975, label %4976, label %4984

; <label>:4976:                                   ; preds = %4973
  %4977 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %4978 = load i32*, i32** %8, align 8
  %4979 = call i32 @luaG_traceexec(%struct.lua_State* %4977, i32* %4978)
  store i32 %4979, i32* %9, align 4
  %4980 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %4981 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4980, i32 0, i32 0
  %4982 = load %union.StackValue*, %union.StackValue** %4981, align 8
  %4983 = getelementptr inbounds %union.StackValue, %union.StackValue* %4982, i64 1
  store %union.StackValue* %4983, %union.StackValue** %7, align 8
  br label %4984

; <label>:4984:                                   ; preds = %4976, %4973
  %4985 = load i32*, i32** %8, align 8
  %4986 = getelementptr inbounds i32, i32* %4985, i32 1
  store i32* %4986, i32** %8, align 8
  %4987 = load i32, i32* %4985, align 4
  store i32 %4987, i32* %10, align 4
  %4988 = load %union.StackValue*, %union.StackValue** %7, align 8
  %4989 = load i32, i32* %10, align 4
  %4990 = lshr i32 %4989, 7
  %4991 = and i32 %4990, 255
  %4992 = sext i32 %4991 to i64
  %4993 = getelementptr inbounds %union.StackValue, %union.StackValue* %4988, i64 %4992
  store %union.StackValue* %4993, %union.StackValue** %11, align 8
  %4994 = load i32, i32* %10, align 4
  %4995 = lshr i32 %4994, 0
  %4996 = and i32 %4995, 127
  %4997 = zext i32 %4996 to i64
  %4998 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4997
  %4999 = load i8*, i8** %4998, align 8
  br label %8998

; <label>:5000:                                   ; preds = %8998
  %5001 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5002 = load i32, i32* %10, align 4
  %5003 = lshr i32 %5002, 16
  %5004 = and i32 %5003, 255
  %5005 = sext i32 %5004 to i64
  %5006 = getelementptr inbounds %union.StackValue, %union.StackValue* %5001, i64 %5005
  %5007 = bitcast %union.StackValue* %5006 to %struct.TValue*
  store %struct.TValue* %5007, %struct.TValue** %221, align 8
  %5008 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5009 = load i32, i32* %10, align 4
  %5010 = lshr i32 %5009, 24
  %5011 = and i32 %5010, 255
  %5012 = sext i32 %5011 to i64
  %5013 = getelementptr inbounds %union.StackValue, %union.StackValue* %5008, i64 %5012
  %5014 = bitcast %union.StackValue* %5013 to %struct.TValue*
  store %struct.TValue* %5014, %struct.TValue** %222, align 8
  %5015 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5016 = getelementptr inbounds %struct.TValue, %struct.TValue* %5015, i32 0, i32 1
  %5017 = load i8, i8* %5016, align 8
  %5018 = zext i8 %5017 to i32
  %5019 = icmp eq i32 %5018, 35
  br i1 %5019, label %5020, label %5046

; <label>:5020:                                   ; preds = %5000
  %5021 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5022 = getelementptr inbounds %struct.TValue, %struct.TValue* %5021, i32 0, i32 1
  %5023 = load i8, i8* %5022, align 8
  %5024 = zext i8 %5023 to i32
  %5025 = icmp eq i32 %5024, 35
  br i1 %5025, label %5026, label %5046

; <label>:5026:                                   ; preds = %5020
  %5027 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5028 = getelementptr inbounds %struct.TValue, %struct.TValue* %5027, i32 0, i32 0
  %5029 = bitcast %union.Value* %5028 to i64*
  %5030 = load i64, i64* %5029, align 8
  store i64 %5030, i64* %223, align 8
  %5031 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5032 = getelementptr inbounds %struct.TValue, %struct.TValue* %5031, i32 0, i32 0
  %5033 = bitcast %union.Value* %5032 to i64*
  %5034 = load i64, i64* %5033, align 8
  store i64 %5034, i64* %224, align 8
  %5035 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5036 = bitcast %union.StackValue* %5035 to %struct.TValue*
  store %struct.TValue* %5036, %struct.TValue** %225, align 8
  %5037 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5038 = load i64, i64* %223, align 8
  %5039 = load i64, i64* %224, align 8
  %5040 = call i64 @luaV_idiv(%struct.lua_State* %5037, i64 %5038, i64 %5039)
  %5041 = load %struct.TValue*, %struct.TValue** %225, align 8
  %5042 = getelementptr inbounds %struct.TValue, %struct.TValue* %5041, i32 0, i32 0
  %5043 = bitcast %union.Value* %5042 to i64*
  store i64 %5040, i64* %5043, align 8
  %5044 = load %struct.TValue*, %struct.TValue** %225, align 8
  %5045 = getelementptr inbounds %struct.TValue, %struct.TValue* %5044, i32 0, i32 1
  store i8 35, i8* %5045, align 8
  br label %5128

; <label>:5046:                                   ; preds = %5020, %5000
  %5047 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5048 = getelementptr inbounds %struct.TValue, %struct.TValue* %5047, i32 0, i32 1
  %5049 = load i8, i8* %5048, align 8
  %5050 = zext i8 %5049 to i32
  %5051 = icmp eq i32 %5050, 19
  br i1 %5051, label %5052, label %5057

; <label>:5052:                                   ; preds = %5046
  %5053 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5054 = getelementptr inbounds %struct.TValue, %struct.TValue* %5053, i32 0, i32 0
  %5055 = bitcast %union.Value* %5054 to double*
  %5056 = load double, double* %5055, align 8
  store double %5056, double* %226, align 8
  br i1 true, label %5070, label %5107

; <label>:5057:                                   ; preds = %5046
  %5058 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5059 = getelementptr inbounds %struct.TValue, %struct.TValue* %5058, i32 0, i32 1
  %5060 = load i8, i8* %5059, align 8
  %5061 = zext i8 %5060 to i32
  %5062 = icmp eq i32 %5061, 35
  br i1 %5062, label %5063, label %5069

; <label>:5063:                                   ; preds = %5057
  %5064 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5065 = getelementptr inbounds %struct.TValue, %struct.TValue* %5064, i32 0, i32 0
  %5066 = bitcast %union.Value* %5065 to i64*
  %5067 = load i64, i64* %5066, align 8
  %5068 = sitofp i64 %5067 to double
  store double %5068, double* %226, align 8
  br i1 true, label %5070, label %5107

; <label>:5069:                                   ; preds = %5057
  br i1 false, label %5070, label %5107

; <label>:5070:                                   ; preds = %5069, %5063, %5052
  %5071 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5072 = getelementptr inbounds %struct.TValue, %struct.TValue* %5071, i32 0, i32 1
  %5073 = load i8, i8* %5072, align 8
  %5074 = zext i8 %5073 to i32
  %5075 = icmp eq i32 %5074, 19
  br i1 %5075, label %5076, label %5081

; <label>:5076:                                   ; preds = %5070
  %5077 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5078 = getelementptr inbounds %struct.TValue, %struct.TValue* %5077, i32 0, i32 0
  %5079 = bitcast %union.Value* %5078 to double*
  %5080 = load double, double* %5079, align 8
  store double %5080, double* %227, align 8
  br i1 true, label %5094, label %5107

; <label>:5081:                                   ; preds = %5070
  %5082 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5083 = getelementptr inbounds %struct.TValue, %struct.TValue* %5082, i32 0, i32 1
  %5084 = load i8, i8* %5083, align 8
  %5085 = zext i8 %5084 to i32
  %5086 = icmp eq i32 %5085, 35
  br i1 %5086, label %5087, label %5093

; <label>:5087:                                   ; preds = %5081
  %5088 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5089 = getelementptr inbounds %struct.TValue, %struct.TValue* %5088, i32 0, i32 0
  %5090 = bitcast %union.Value* %5089 to i64*
  %5091 = load i64, i64* %5090, align 8
  %5092 = sitofp i64 %5091 to double
  store double %5092, double* %227, align 8
  br i1 true, label %5094, label %5107

; <label>:5093:                                   ; preds = %5081
  br i1 false, label %5094, label %5107

; <label>:5094:                                   ; preds = %5093, %5087, %5076
  %5095 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5096 = bitcast %union.StackValue* %5095 to %struct.TValue*
  store %struct.TValue* %5096, %struct.TValue** %228, align 8
  %5097 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5098 = load double, double* %226, align 8
  %5099 = load double, double* %227, align 8
  %5100 = fdiv double %5098, %5099
  %5101 = call double @llvm.floor.f64(double %5100)
  %5102 = load %struct.TValue*, %struct.TValue** %228, align 8
  %5103 = getelementptr inbounds %struct.TValue, %struct.TValue* %5102, i32 0, i32 0
  %5104 = bitcast %union.Value* %5103 to double*
  store double %5101, double* %5104, align 8
  %5105 = load %struct.TValue*, %struct.TValue** %228, align 8
  %5106 = getelementptr inbounds %struct.TValue, %struct.TValue* %5105, i32 0, i32 1
  store i8 19, i8* %5106, align 8
  br label %5127

; <label>:5107:                                   ; preds = %5093, %5087, %5076, %5069, %5063, %5052
  %5108 = load i32*, i32** %8, align 8
  %5109 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5110 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5109, i32 0, i32 4
  %5111 = bitcast %union.anon* %5110 to %struct.anon*
  %5112 = getelementptr inbounds %struct.anon, %struct.anon* %5111, i32 0, i32 0
  store i32* %5108, i32** %5112, align 8
  %5113 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5114 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5113, i32 0, i32 1
  %5115 = load %union.StackValue*, %union.StackValue** %5114, align 8
  %5116 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5117 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5116, i32 0, i32 6
  store %union.StackValue* %5115, %union.StackValue** %5117, align 8
  %5118 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5119 = load %struct.TValue*, %struct.TValue** %221, align 8
  %5120 = load %struct.TValue*, %struct.TValue** %222, align 8
  %5121 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %5118, %struct.TValue* %5119, %struct.TValue* %5120, %union.StackValue* %5121, i32 12)
  %5122 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5123 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5122, i32 0, i32 4
  %5124 = bitcast %union.anon* %5123 to %struct.anon*
  %5125 = getelementptr inbounds %struct.anon, %struct.anon* %5124, i32 0, i32 1
  %5126 = load i32, i32* %5125, align 8
  store i32 %5126, i32* %9, align 4
  br label %5127

; <label>:5127:                                   ; preds = %5107, %5094
  br label %5128

; <label>:5128:                                   ; preds = %5127, %5026
  %5129 = load i32, i32* %9, align 4
  %5130 = icmp ne i32 %5129, 0
  br i1 %5130, label %5131, label %5139

; <label>:5131:                                   ; preds = %5128
  %5132 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5133 = load i32*, i32** %8, align 8
  %5134 = call i32 @luaG_traceexec(%struct.lua_State* %5132, i32* %5133)
  store i32 %5134, i32* %9, align 4
  %5135 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5136 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5135, i32 0, i32 0
  %5137 = load %union.StackValue*, %union.StackValue** %5136, align 8
  %5138 = getelementptr inbounds %union.StackValue, %union.StackValue* %5137, i64 1
  store %union.StackValue* %5138, %union.StackValue** %7, align 8
  br label %5139

; <label>:5139:                                   ; preds = %5131, %5128
  %5140 = load i32*, i32** %8, align 8
  %5141 = getelementptr inbounds i32, i32* %5140, i32 1
  store i32* %5141, i32** %8, align 8
  %5142 = load i32, i32* %5140, align 4
  store i32 %5142, i32* %10, align 4
  %5143 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5144 = load i32, i32* %10, align 4
  %5145 = lshr i32 %5144, 7
  %5146 = and i32 %5145, 255
  %5147 = sext i32 %5146 to i64
  %5148 = getelementptr inbounds %union.StackValue, %union.StackValue* %5143, i64 %5147
  store %union.StackValue* %5148, %union.StackValue** %11, align 8
  %5149 = load i32, i32* %10, align 4
  %5150 = lshr i32 %5149, 0
  %5151 = and i32 %5150, 127
  %5152 = zext i32 %5151 to i64
  %5153 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5152
  %5154 = load i8*, i8** %5153, align 8
  br label %8998

; <label>:5155:                                   ; preds = %8998
  %5156 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5157 = load i32, i32* %10, align 4
  %5158 = lshr i32 %5157, 16
  %5159 = and i32 %5158, 255
  %5160 = sext i32 %5159 to i64
  %5161 = getelementptr inbounds %union.StackValue, %union.StackValue* %5156, i64 %5160
  %5162 = bitcast %union.StackValue* %5161 to %struct.TValue*
  store %struct.TValue* %5162, %struct.TValue** %229, align 8
  %5163 = load %struct.TValue*, %struct.TValue** %6, align 8
  %5164 = load i32, i32* %10, align 4
  %5165 = lshr i32 %5164, 24
  %5166 = and i32 %5165, 255
  %5167 = sext i32 %5166 to i64
  %5168 = getelementptr inbounds %struct.TValue, %struct.TValue* %5163, i64 %5167
  store %struct.TValue* %5168, %struct.TValue** %230, align 8
  %5169 = load %struct.TValue*, %struct.TValue** %230, align 8
  %5170 = getelementptr inbounds %struct.TValue, %struct.TValue* %5169, i32 0, i32 0
  %5171 = bitcast %union.Value* %5170 to i64*
  %5172 = load i64, i64* %5171, align 8
  store i64 %5172, i64* %232, align 8
  %5173 = load %struct.TValue*, %struct.TValue** %229, align 8
  %5174 = getelementptr inbounds %struct.TValue, %struct.TValue* %5173, i32 0, i32 1
  %5175 = load i8, i8* %5174, align 8
  %5176 = zext i8 %5175 to i32
  %5177 = icmp eq i32 %5176, 35
  br i1 %5177, label %5178, label %5183

; <label>:5178:                                   ; preds = %5155
  %5179 = load %struct.TValue*, %struct.TValue** %229, align 8
  %5180 = getelementptr inbounds %struct.TValue, %struct.TValue* %5179, i32 0, i32 0
  %5181 = bitcast %union.Value* %5180 to i64*
  %5182 = load i64, i64* %5181, align 8
  store i64 %5182, i64* %231, align 8
  br i1 true, label %5187, label %5198

; <label>:5183:                                   ; preds = %5155
  %5184 = load %struct.TValue*, %struct.TValue** %229, align 8
  %5185 = call i32 @luaV_tointegerns(%struct.TValue* %5184, i64* %231, i32 0)
  %5186 = icmp ne i32 %5185, 0
  br i1 %5186, label %5187, label %5198

; <label>:5187:                                   ; preds = %5183, %5178
  %5188 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5189 = bitcast %union.StackValue* %5188 to %struct.TValue*
  store %struct.TValue* %5189, %struct.TValue** %233, align 8
  %5190 = load i64, i64* %231, align 8
  %5191 = load i64, i64* %232, align 8
  %5192 = and i64 %5190, %5191
  %5193 = load %struct.TValue*, %struct.TValue** %233, align 8
  %5194 = getelementptr inbounds %struct.TValue, %struct.TValue* %5193, i32 0, i32 0
  %5195 = bitcast %union.Value* %5194 to i64*
  store i64 %5192, i64* %5195, align 8
  %5196 = load %struct.TValue*, %struct.TValue** %233, align 8
  %5197 = getelementptr inbounds %struct.TValue, %struct.TValue* %5196, i32 0, i32 1
  store i8 35, i8* %5197, align 8
  br label %5220

; <label>:5198:                                   ; preds = %5183, %5178
  %5199 = load i32*, i32** %8, align 8
  %5200 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5201 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5200, i32 0, i32 4
  %5202 = bitcast %union.anon* %5201 to %struct.anon*
  %5203 = getelementptr inbounds %struct.anon, %struct.anon* %5202, i32 0, i32 0
  store i32* %5199, i32** %5203, align 8
  %5204 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5205 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5204, i32 0, i32 1
  %5206 = load %union.StackValue*, %union.StackValue** %5205, align 8
  %5207 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5208 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5207, i32 0, i32 6
  store %union.StackValue* %5206, %union.StackValue** %5208, align 8
  %5209 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5210 = load %struct.TValue*, %struct.TValue** %229, align 8
  %5211 = load i64, i64* %232, align 8
  %5212 = load i32, i32* %10, align 4
  %5213 = and i32 %5212, 32768
  %5214 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %5209, %struct.TValue* %5210, i64 %5211, i32 %5213, %union.StackValue* %5214, i32 13)
  %5215 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5216 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5215, i32 0, i32 4
  %5217 = bitcast %union.anon* %5216 to %struct.anon*
  %5218 = getelementptr inbounds %struct.anon, %struct.anon* %5217, i32 0, i32 1
  %5219 = load i32, i32* %5218, align 8
  store i32 %5219, i32* %9, align 4
  br label %5220

; <label>:5220:                                   ; preds = %5198, %5187
  %5221 = load i32, i32* %9, align 4
  %5222 = icmp ne i32 %5221, 0
  br i1 %5222, label %5223, label %5231

; <label>:5223:                                   ; preds = %5220
  %5224 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5225 = load i32*, i32** %8, align 8
  %5226 = call i32 @luaG_traceexec(%struct.lua_State* %5224, i32* %5225)
  store i32 %5226, i32* %9, align 4
  %5227 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5228 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5227, i32 0, i32 0
  %5229 = load %union.StackValue*, %union.StackValue** %5228, align 8
  %5230 = getelementptr inbounds %union.StackValue, %union.StackValue* %5229, i64 1
  store %union.StackValue* %5230, %union.StackValue** %7, align 8
  br label %5231

; <label>:5231:                                   ; preds = %5223, %5220
  %5232 = load i32*, i32** %8, align 8
  %5233 = getelementptr inbounds i32, i32* %5232, i32 1
  store i32* %5233, i32** %8, align 8
  %5234 = load i32, i32* %5232, align 4
  store i32 %5234, i32* %10, align 4
  %5235 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5236 = load i32, i32* %10, align 4
  %5237 = lshr i32 %5236, 7
  %5238 = and i32 %5237, 255
  %5239 = sext i32 %5238 to i64
  %5240 = getelementptr inbounds %union.StackValue, %union.StackValue* %5235, i64 %5239
  store %union.StackValue* %5240, %union.StackValue** %11, align 8
  %5241 = load i32, i32* %10, align 4
  %5242 = lshr i32 %5241, 0
  %5243 = and i32 %5242, 127
  %5244 = zext i32 %5243 to i64
  %5245 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5244
  %5246 = load i8*, i8** %5245, align 8
  br label %8998

; <label>:5247:                                   ; preds = %8998
  %5248 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5249 = load i32, i32* %10, align 4
  %5250 = lshr i32 %5249, 16
  %5251 = and i32 %5250, 255
  %5252 = sext i32 %5251 to i64
  %5253 = getelementptr inbounds %union.StackValue, %union.StackValue* %5248, i64 %5252
  %5254 = bitcast %union.StackValue* %5253 to %struct.TValue*
  store %struct.TValue* %5254, %struct.TValue** %234, align 8
  %5255 = load %struct.TValue*, %struct.TValue** %6, align 8
  %5256 = load i32, i32* %10, align 4
  %5257 = lshr i32 %5256, 24
  %5258 = and i32 %5257, 255
  %5259 = sext i32 %5258 to i64
  %5260 = getelementptr inbounds %struct.TValue, %struct.TValue* %5255, i64 %5259
  store %struct.TValue* %5260, %struct.TValue** %235, align 8
  %5261 = load %struct.TValue*, %struct.TValue** %235, align 8
  %5262 = getelementptr inbounds %struct.TValue, %struct.TValue* %5261, i32 0, i32 0
  %5263 = bitcast %union.Value* %5262 to i64*
  %5264 = load i64, i64* %5263, align 8
  store i64 %5264, i64* %237, align 8
  %5265 = load %struct.TValue*, %struct.TValue** %234, align 8
  %5266 = getelementptr inbounds %struct.TValue, %struct.TValue* %5265, i32 0, i32 1
  %5267 = load i8, i8* %5266, align 8
  %5268 = zext i8 %5267 to i32
  %5269 = icmp eq i32 %5268, 35
  br i1 %5269, label %5270, label %5275

; <label>:5270:                                   ; preds = %5247
  %5271 = load %struct.TValue*, %struct.TValue** %234, align 8
  %5272 = getelementptr inbounds %struct.TValue, %struct.TValue* %5271, i32 0, i32 0
  %5273 = bitcast %union.Value* %5272 to i64*
  %5274 = load i64, i64* %5273, align 8
  store i64 %5274, i64* %236, align 8
  br i1 true, label %5279, label %5290

; <label>:5275:                                   ; preds = %5247
  %5276 = load %struct.TValue*, %struct.TValue** %234, align 8
  %5277 = call i32 @luaV_tointegerns(%struct.TValue* %5276, i64* %236, i32 0)
  %5278 = icmp ne i32 %5277, 0
  br i1 %5278, label %5279, label %5290

; <label>:5279:                                   ; preds = %5275, %5270
  %5280 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5281 = bitcast %union.StackValue* %5280 to %struct.TValue*
  store %struct.TValue* %5281, %struct.TValue** %238, align 8
  %5282 = load i64, i64* %236, align 8
  %5283 = load i64, i64* %237, align 8
  %5284 = or i64 %5282, %5283
  %5285 = load %struct.TValue*, %struct.TValue** %238, align 8
  %5286 = getelementptr inbounds %struct.TValue, %struct.TValue* %5285, i32 0, i32 0
  %5287 = bitcast %union.Value* %5286 to i64*
  store i64 %5284, i64* %5287, align 8
  %5288 = load %struct.TValue*, %struct.TValue** %238, align 8
  %5289 = getelementptr inbounds %struct.TValue, %struct.TValue* %5288, i32 0, i32 1
  store i8 35, i8* %5289, align 8
  br label %5312

; <label>:5290:                                   ; preds = %5275, %5270
  %5291 = load i32*, i32** %8, align 8
  %5292 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5293 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5292, i32 0, i32 4
  %5294 = bitcast %union.anon* %5293 to %struct.anon*
  %5295 = getelementptr inbounds %struct.anon, %struct.anon* %5294, i32 0, i32 0
  store i32* %5291, i32** %5295, align 8
  %5296 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5297 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5296, i32 0, i32 1
  %5298 = load %union.StackValue*, %union.StackValue** %5297, align 8
  %5299 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5300 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5299, i32 0, i32 6
  store %union.StackValue* %5298, %union.StackValue** %5300, align 8
  %5301 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5302 = load %struct.TValue*, %struct.TValue** %234, align 8
  %5303 = load i64, i64* %237, align 8
  %5304 = load i32, i32* %10, align 4
  %5305 = and i32 %5304, 32768
  %5306 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %5301, %struct.TValue* %5302, i64 %5303, i32 %5305, %union.StackValue* %5306, i32 14)
  %5307 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5308 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5307, i32 0, i32 4
  %5309 = bitcast %union.anon* %5308 to %struct.anon*
  %5310 = getelementptr inbounds %struct.anon, %struct.anon* %5309, i32 0, i32 1
  %5311 = load i32, i32* %5310, align 8
  store i32 %5311, i32* %9, align 4
  br label %5312

; <label>:5312:                                   ; preds = %5290, %5279
  %5313 = load i32, i32* %9, align 4
  %5314 = icmp ne i32 %5313, 0
  br i1 %5314, label %5315, label %5323

; <label>:5315:                                   ; preds = %5312
  %5316 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5317 = load i32*, i32** %8, align 8
  %5318 = call i32 @luaG_traceexec(%struct.lua_State* %5316, i32* %5317)
  store i32 %5318, i32* %9, align 4
  %5319 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5320 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5319, i32 0, i32 0
  %5321 = load %union.StackValue*, %union.StackValue** %5320, align 8
  %5322 = getelementptr inbounds %union.StackValue, %union.StackValue* %5321, i64 1
  store %union.StackValue* %5322, %union.StackValue** %7, align 8
  br label %5323

; <label>:5323:                                   ; preds = %5315, %5312
  %5324 = load i32*, i32** %8, align 8
  %5325 = getelementptr inbounds i32, i32* %5324, i32 1
  store i32* %5325, i32** %8, align 8
  %5326 = load i32, i32* %5324, align 4
  store i32 %5326, i32* %10, align 4
  %5327 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5328 = load i32, i32* %10, align 4
  %5329 = lshr i32 %5328, 7
  %5330 = and i32 %5329, 255
  %5331 = sext i32 %5330 to i64
  %5332 = getelementptr inbounds %union.StackValue, %union.StackValue* %5327, i64 %5331
  store %union.StackValue* %5332, %union.StackValue** %11, align 8
  %5333 = load i32, i32* %10, align 4
  %5334 = lshr i32 %5333, 0
  %5335 = and i32 %5334, 127
  %5336 = zext i32 %5335 to i64
  %5337 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5336
  %5338 = load i8*, i8** %5337, align 8
  br label %8998

; <label>:5339:                                   ; preds = %8998
  %5340 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5341 = load i32, i32* %10, align 4
  %5342 = lshr i32 %5341, 16
  %5343 = and i32 %5342, 255
  %5344 = sext i32 %5343 to i64
  %5345 = getelementptr inbounds %union.StackValue, %union.StackValue* %5340, i64 %5344
  %5346 = bitcast %union.StackValue* %5345 to %struct.TValue*
  store %struct.TValue* %5346, %struct.TValue** %239, align 8
  %5347 = load %struct.TValue*, %struct.TValue** %6, align 8
  %5348 = load i32, i32* %10, align 4
  %5349 = lshr i32 %5348, 24
  %5350 = and i32 %5349, 255
  %5351 = sext i32 %5350 to i64
  %5352 = getelementptr inbounds %struct.TValue, %struct.TValue* %5347, i64 %5351
  store %struct.TValue* %5352, %struct.TValue** %240, align 8
  %5353 = load %struct.TValue*, %struct.TValue** %240, align 8
  %5354 = getelementptr inbounds %struct.TValue, %struct.TValue* %5353, i32 0, i32 0
  %5355 = bitcast %union.Value* %5354 to i64*
  %5356 = load i64, i64* %5355, align 8
  store i64 %5356, i64* %242, align 8
  %5357 = load %struct.TValue*, %struct.TValue** %239, align 8
  %5358 = getelementptr inbounds %struct.TValue, %struct.TValue* %5357, i32 0, i32 1
  %5359 = load i8, i8* %5358, align 8
  %5360 = zext i8 %5359 to i32
  %5361 = icmp eq i32 %5360, 35
  br i1 %5361, label %5362, label %5367

; <label>:5362:                                   ; preds = %5339
  %5363 = load %struct.TValue*, %struct.TValue** %239, align 8
  %5364 = getelementptr inbounds %struct.TValue, %struct.TValue* %5363, i32 0, i32 0
  %5365 = bitcast %union.Value* %5364 to i64*
  %5366 = load i64, i64* %5365, align 8
  store i64 %5366, i64* %241, align 8
  br i1 true, label %5371, label %5382

; <label>:5367:                                   ; preds = %5339
  %5368 = load %struct.TValue*, %struct.TValue** %239, align 8
  %5369 = call i32 @luaV_tointegerns(%struct.TValue* %5368, i64* %241, i32 0)
  %5370 = icmp ne i32 %5369, 0
  br i1 %5370, label %5371, label %5382

; <label>:5371:                                   ; preds = %5367, %5362
  %5372 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5373 = bitcast %union.StackValue* %5372 to %struct.TValue*
  store %struct.TValue* %5373, %struct.TValue** %243, align 8
  %5374 = load i64, i64* %241, align 8
  %5375 = load i64, i64* %242, align 8
  %5376 = xor i64 %5374, %5375
  %5377 = load %struct.TValue*, %struct.TValue** %243, align 8
  %5378 = getelementptr inbounds %struct.TValue, %struct.TValue* %5377, i32 0, i32 0
  %5379 = bitcast %union.Value* %5378 to i64*
  store i64 %5376, i64* %5379, align 8
  %5380 = load %struct.TValue*, %struct.TValue** %243, align 8
  %5381 = getelementptr inbounds %struct.TValue, %struct.TValue* %5380, i32 0, i32 1
  store i8 35, i8* %5381, align 8
  br label %5404

; <label>:5382:                                   ; preds = %5367, %5362
  %5383 = load i32*, i32** %8, align 8
  %5384 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5385 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5384, i32 0, i32 4
  %5386 = bitcast %union.anon* %5385 to %struct.anon*
  %5387 = getelementptr inbounds %struct.anon, %struct.anon* %5386, i32 0, i32 0
  store i32* %5383, i32** %5387, align 8
  %5388 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5389 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5388, i32 0, i32 1
  %5390 = load %union.StackValue*, %union.StackValue** %5389, align 8
  %5391 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5392 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5391, i32 0, i32 6
  store %union.StackValue* %5390, %union.StackValue** %5392, align 8
  %5393 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5394 = load %struct.TValue*, %struct.TValue** %239, align 8
  %5395 = load i64, i64* %242, align 8
  %5396 = load i32, i32* %10, align 4
  %5397 = and i32 %5396, 32768
  %5398 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %5393, %struct.TValue* %5394, i64 %5395, i32 %5397, %union.StackValue* %5398, i32 15)
  %5399 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5400 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5399, i32 0, i32 4
  %5401 = bitcast %union.anon* %5400 to %struct.anon*
  %5402 = getelementptr inbounds %struct.anon, %struct.anon* %5401, i32 0, i32 1
  %5403 = load i32, i32* %5402, align 8
  store i32 %5403, i32* %9, align 4
  br label %5404

; <label>:5404:                                   ; preds = %5382, %5371
  %5405 = load i32, i32* %9, align 4
  %5406 = icmp ne i32 %5405, 0
  br i1 %5406, label %5407, label %5415

; <label>:5407:                                   ; preds = %5404
  %5408 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5409 = load i32*, i32** %8, align 8
  %5410 = call i32 @luaG_traceexec(%struct.lua_State* %5408, i32* %5409)
  store i32 %5410, i32* %9, align 4
  %5411 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5412 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5411, i32 0, i32 0
  %5413 = load %union.StackValue*, %union.StackValue** %5412, align 8
  %5414 = getelementptr inbounds %union.StackValue, %union.StackValue* %5413, i64 1
  store %union.StackValue* %5414, %union.StackValue** %7, align 8
  br label %5415

; <label>:5415:                                   ; preds = %5407, %5404
  %5416 = load i32*, i32** %8, align 8
  %5417 = getelementptr inbounds i32, i32* %5416, i32 1
  store i32* %5417, i32** %8, align 8
  %5418 = load i32, i32* %5416, align 4
  store i32 %5418, i32* %10, align 4
  %5419 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5420 = load i32, i32* %10, align 4
  %5421 = lshr i32 %5420, 7
  %5422 = and i32 %5421, 255
  %5423 = sext i32 %5422 to i64
  %5424 = getelementptr inbounds %union.StackValue, %union.StackValue* %5419, i64 %5423
  store %union.StackValue* %5424, %union.StackValue** %11, align 8
  %5425 = load i32, i32* %10, align 4
  %5426 = lshr i32 %5425, 0
  %5427 = and i32 %5426, 127
  %5428 = zext i32 %5427 to i64
  %5429 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5428
  %5430 = load i8*, i8** %5429, align 8
  br label %8998

; <label>:5431:                                   ; preds = %8998
  %5432 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5433 = load i32, i32* %10, align 4
  %5434 = lshr i32 %5433, 16
  %5435 = and i32 %5434, 255
  %5436 = sext i32 %5435 to i64
  %5437 = getelementptr inbounds %union.StackValue, %union.StackValue* %5432, i64 %5436
  %5438 = bitcast %union.StackValue* %5437 to %struct.TValue*
  store %struct.TValue* %5438, %struct.TValue** %244, align 8
  %5439 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5440 = load i32, i32* %10, align 4
  %5441 = lshr i32 %5440, 24
  %5442 = and i32 %5441, 255
  %5443 = sext i32 %5442 to i64
  %5444 = getelementptr inbounds %union.StackValue, %union.StackValue* %5439, i64 %5443
  %5445 = bitcast %union.StackValue* %5444 to %struct.TValue*
  store %struct.TValue* %5445, %struct.TValue** %245, align 8
  %5446 = load %struct.TValue*, %struct.TValue** %244, align 8
  %5447 = getelementptr inbounds %struct.TValue, %struct.TValue* %5446, i32 0, i32 1
  %5448 = load i8, i8* %5447, align 8
  %5449 = zext i8 %5448 to i32
  %5450 = icmp eq i32 %5449, 35
  br i1 %5450, label %5451, label %5456

; <label>:5451:                                   ; preds = %5431
  %5452 = load %struct.TValue*, %struct.TValue** %244, align 8
  %5453 = getelementptr inbounds %struct.TValue, %struct.TValue* %5452, i32 0, i32 0
  %5454 = bitcast %union.Value* %5453 to i64*
  %5455 = load i64, i64* %5454, align 8
  store i64 %5455, i64* %246, align 8
  br i1 true, label %5460, label %5486

; <label>:5456:                                   ; preds = %5431
  %5457 = load %struct.TValue*, %struct.TValue** %244, align 8
  %5458 = call i32 @luaV_tointegerns(%struct.TValue* %5457, i64* %246, i32 0)
  %5459 = icmp ne i32 %5458, 0
  br i1 %5459, label %5460, label %5486

; <label>:5460:                                   ; preds = %5456, %5451
  %5461 = load %struct.TValue*, %struct.TValue** %245, align 8
  %5462 = getelementptr inbounds %struct.TValue, %struct.TValue* %5461, i32 0, i32 1
  %5463 = load i8, i8* %5462, align 8
  %5464 = zext i8 %5463 to i32
  %5465 = icmp eq i32 %5464, 35
  br i1 %5465, label %5466, label %5471

; <label>:5466:                                   ; preds = %5460
  %5467 = load %struct.TValue*, %struct.TValue** %245, align 8
  %5468 = getelementptr inbounds %struct.TValue, %struct.TValue* %5467, i32 0, i32 0
  %5469 = bitcast %union.Value* %5468 to i64*
  %5470 = load i64, i64* %5469, align 8
  store i64 %5470, i64* %247, align 8
  br i1 true, label %5475, label %5486

; <label>:5471:                                   ; preds = %5460
  %5472 = load %struct.TValue*, %struct.TValue** %245, align 8
  %5473 = call i32 @luaV_tointegerns(%struct.TValue* %5472, i64* %247, i32 0)
  %5474 = icmp ne i32 %5473, 0
  br i1 %5474, label %5475, label %5486

; <label>:5475:                                   ; preds = %5471, %5466
  %5476 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5477 = bitcast %union.StackValue* %5476 to %struct.TValue*
  store %struct.TValue* %5477, %struct.TValue** %248, align 8
  %5478 = load i64, i64* %246, align 8
  %5479 = load i64, i64* %247, align 8
  %5480 = and i64 %5478, %5479
  %5481 = load %struct.TValue*, %struct.TValue** %248, align 8
  %5482 = getelementptr inbounds %struct.TValue, %struct.TValue* %5481, i32 0, i32 0
  %5483 = bitcast %union.Value* %5482 to i64*
  store i64 %5480, i64* %5483, align 8
  %5484 = load %struct.TValue*, %struct.TValue** %248, align 8
  %5485 = getelementptr inbounds %struct.TValue, %struct.TValue* %5484, i32 0, i32 1
  store i8 35, i8* %5485, align 8
  br label %5506

; <label>:5486:                                   ; preds = %5471, %5466, %5456, %5451
  %5487 = load i32*, i32** %8, align 8
  %5488 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5489 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5488, i32 0, i32 4
  %5490 = bitcast %union.anon* %5489 to %struct.anon*
  %5491 = getelementptr inbounds %struct.anon, %struct.anon* %5490, i32 0, i32 0
  store i32* %5487, i32** %5491, align 8
  %5492 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5493 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5492, i32 0, i32 1
  %5494 = load %union.StackValue*, %union.StackValue** %5493, align 8
  %5495 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5496 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5495, i32 0, i32 6
  store %union.StackValue* %5494, %union.StackValue** %5496, align 8
  %5497 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5498 = load %struct.TValue*, %struct.TValue** %244, align 8
  %5499 = load %struct.TValue*, %struct.TValue** %245, align 8
  %5500 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %5497, %struct.TValue* %5498, %struct.TValue* %5499, %union.StackValue* %5500, i32 13)
  %5501 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5502 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5501, i32 0, i32 4
  %5503 = bitcast %union.anon* %5502 to %struct.anon*
  %5504 = getelementptr inbounds %struct.anon, %struct.anon* %5503, i32 0, i32 1
  %5505 = load i32, i32* %5504, align 8
  store i32 %5505, i32* %9, align 4
  br label %5506

; <label>:5506:                                   ; preds = %5486, %5475
  %5507 = load i32, i32* %9, align 4
  %5508 = icmp ne i32 %5507, 0
  br i1 %5508, label %5509, label %5517

; <label>:5509:                                   ; preds = %5506
  %5510 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5511 = load i32*, i32** %8, align 8
  %5512 = call i32 @luaG_traceexec(%struct.lua_State* %5510, i32* %5511)
  store i32 %5512, i32* %9, align 4
  %5513 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5514 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5513, i32 0, i32 0
  %5515 = load %union.StackValue*, %union.StackValue** %5514, align 8
  %5516 = getelementptr inbounds %union.StackValue, %union.StackValue* %5515, i64 1
  store %union.StackValue* %5516, %union.StackValue** %7, align 8
  br label %5517

; <label>:5517:                                   ; preds = %5509, %5506
  %5518 = load i32*, i32** %8, align 8
  %5519 = getelementptr inbounds i32, i32* %5518, i32 1
  store i32* %5519, i32** %8, align 8
  %5520 = load i32, i32* %5518, align 4
  store i32 %5520, i32* %10, align 4
  %5521 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5522 = load i32, i32* %10, align 4
  %5523 = lshr i32 %5522, 7
  %5524 = and i32 %5523, 255
  %5525 = sext i32 %5524 to i64
  %5526 = getelementptr inbounds %union.StackValue, %union.StackValue* %5521, i64 %5525
  store %union.StackValue* %5526, %union.StackValue** %11, align 8
  %5527 = load i32, i32* %10, align 4
  %5528 = lshr i32 %5527, 0
  %5529 = and i32 %5528, 127
  %5530 = zext i32 %5529 to i64
  %5531 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5530
  %5532 = load i8*, i8** %5531, align 8
  br label %8998

; <label>:5533:                                   ; preds = %8998
  %5534 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5535 = load i32, i32* %10, align 4
  %5536 = lshr i32 %5535, 16
  %5537 = and i32 %5536, 255
  %5538 = sext i32 %5537 to i64
  %5539 = getelementptr inbounds %union.StackValue, %union.StackValue* %5534, i64 %5538
  %5540 = bitcast %union.StackValue* %5539 to %struct.TValue*
  store %struct.TValue* %5540, %struct.TValue** %249, align 8
  %5541 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5542 = load i32, i32* %10, align 4
  %5543 = lshr i32 %5542, 24
  %5544 = and i32 %5543, 255
  %5545 = sext i32 %5544 to i64
  %5546 = getelementptr inbounds %union.StackValue, %union.StackValue* %5541, i64 %5545
  %5547 = bitcast %union.StackValue* %5546 to %struct.TValue*
  store %struct.TValue* %5547, %struct.TValue** %250, align 8
  %5548 = load %struct.TValue*, %struct.TValue** %249, align 8
  %5549 = getelementptr inbounds %struct.TValue, %struct.TValue* %5548, i32 0, i32 1
  %5550 = load i8, i8* %5549, align 8
  %5551 = zext i8 %5550 to i32
  %5552 = icmp eq i32 %5551, 35
  br i1 %5552, label %5553, label %5558

; <label>:5553:                                   ; preds = %5533
  %5554 = load %struct.TValue*, %struct.TValue** %249, align 8
  %5555 = getelementptr inbounds %struct.TValue, %struct.TValue* %5554, i32 0, i32 0
  %5556 = bitcast %union.Value* %5555 to i64*
  %5557 = load i64, i64* %5556, align 8
  store i64 %5557, i64* %251, align 8
  br i1 true, label %5562, label %5588

; <label>:5558:                                   ; preds = %5533
  %5559 = load %struct.TValue*, %struct.TValue** %249, align 8
  %5560 = call i32 @luaV_tointegerns(%struct.TValue* %5559, i64* %251, i32 0)
  %5561 = icmp ne i32 %5560, 0
  br i1 %5561, label %5562, label %5588

; <label>:5562:                                   ; preds = %5558, %5553
  %5563 = load %struct.TValue*, %struct.TValue** %250, align 8
  %5564 = getelementptr inbounds %struct.TValue, %struct.TValue* %5563, i32 0, i32 1
  %5565 = load i8, i8* %5564, align 8
  %5566 = zext i8 %5565 to i32
  %5567 = icmp eq i32 %5566, 35
  br i1 %5567, label %5568, label %5573

; <label>:5568:                                   ; preds = %5562
  %5569 = load %struct.TValue*, %struct.TValue** %250, align 8
  %5570 = getelementptr inbounds %struct.TValue, %struct.TValue* %5569, i32 0, i32 0
  %5571 = bitcast %union.Value* %5570 to i64*
  %5572 = load i64, i64* %5571, align 8
  store i64 %5572, i64* %252, align 8
  br i1 true, label %5577, label %5588

; <label>:5573:                                   ; preds = %5562
  %5574 = load %struct.TValue*, %struct.TValue** %250, align 8
  %5575 = call i32 @luaV_tointegerns(%struct.TValue* %5574, i64* %252, i32 0)
  %5576 = icmp ne i32 %5575, 0
  br i1 %5576, label %5577, label %5588

; <label>:5577:                                   ; preds = %5573, %5568
  %5578 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5579 = bitcast %union.StackValue* %5578 to %struct.TValue*
  store %struct.TValue* %5579, %struct.TValue** %253, align 8
  %5580 = load i64, i64* %251, align 8
  %5581 = load i64, i64* %252, align 8
  %5582 = or i64 %5580, %5581
  %5583 = load %struct.TValue*, %struct.TValue** %253, align 8
  %5584 = getelementptr inbounds %struct.TValue, %struct.TValue* %5583, i32 0, i32 0
  %5585 = bitcast %union.Value* %5584 to i64*
  store i64 %5582, i64* %5585, align 8
  %5586 = load %struct.TValue*, %struct.TValue** %253, align 8
  %5587 = getelementptr inbounds %struct.TValue, %struct.TValue* %5586, i32 0, i32 1
  store i8 35, i8* %5587, align 8
  br label %5608

; <label>:5588:                                   ; preds = %5573, %5568, %5558, %5553
  %5589 = load i32*, i32** %8, align 8
  %5590 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5591 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5590, i32 0, i32 4
  %5592 = bitcast %union.anon* %5591 to %struct.anon*
  %5593 = getelementptr inbounds %struct.anon, %struct.anon* %5592, i32 0, i32 0
  store i32* %5589, i32** %5593, align 8
  %5594 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5595 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5594, i32 0, i32 1
  %5596 = load %union.StackValue*, %union.StackValue** %5595, align 8
  %5597 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5598 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5597, i32 0, i32 6
  store %union.StackValue* %5596, %union.StackValue** %5598, align 8
  %5599 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5600 = load %struct.TValue*, %struct.TValue** %249, align 8
  %5601 = load %struct.TValue*, %struct.TValue** %250, align 8
  %5602 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %5599, %struct.TValue* %5600, %struct.TValue* %5601, %union.StackValue* %5602, i32 14)
  %5603 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5604 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5603, i32 0, i32 4
  %5605 = bitcast %union.anon* %5604 to %struct.anon*
  %5606 = getelementptr inbounds %struct.anon, %struct.anon* %5605, i32 0, i32 1
  %5607 = load i32, i32* %5606, align 8
  store i32 %5607, i32* %9, align 4
  br label %5608

; <label>:5608:                                   ; preds = %5588, %5577
  %5609 = load i32, i32* %9, align 4
  %5610 = icmp ne i32 %5609, 0
  br i1 %5610, label %5611, label %5619

; <label>:5611:                                   ; preds = %5608
  %5612 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5613 = load i32*, i32** %8, align 8
  %5614 = call i32 @luaG_traceexec(%struct.lua_State* %5612, i32* %5613)
  store i32 %5614, i32* %9, align 4
  %5615 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5616 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5615, i32 0, i32 0
  %5617 = load %union.StackValue*, %union.StackValue** %5616, align 8
  %5618 = getelementptr inbounds %union.StackValue, %union.StackValue* %5617, i64 1
  store %union.StackValue* %5618, %union.StackValue** %7, align 8
  br label %5619

; <label>:5619:                                   ; preds = %5611, %5608
  %5620 = load i32*, i32** %8, align 8
  %5621 = getelementptr inbounds i32, i32* %5620, i32 1
  store i32* %5621, i32** %8, align 8
  %5622 = load i32, i32* %5620, align 4
  store i32 %5622, i32* %10, align 4
  %5623 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5624 = load i32, i32* %10, align 4
  %5625 = lshr i32 %5624, 7
  %5626 = and i32 %5625, 255
  %5627 = sext i32 %5626 to i64
  %5628 = getelementptr inbounds %union.StackValue, %union.StackValue* %5623, i64 %5627
  store %union.StackValue* %5628, %union.StackValue** %11, align 8
  %5629 = load i32, i32* %10, align 4
  %5630 = lshr i32 %5629, 0
  %5631 = and i32 %5630, 127
  %5632 = zext i32 %5631 to i64
  %5633 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5632
  %5634 = load i8*, i8** %5633, align 8
  br label %8998

; <label>:5635:                                   ; preds = %8998
  %5636 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5637 = load i32, i32* %10, align 4
  %5638 = lshr i32 %5637, 16
  %5639 = and i32 %5638, 255
  %5640 = sext i32 %5639 to i64
  %5641 = getelementptr inbounds %union.StackValue, %union.StackValue* %5636, i64 %5640
  %5642 = bitcast %union.StackValue* %5641 to %struct.TValue*
  store %struct.TValue* %5642, %struct.TValue** %254, align 8
  %5643 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5644 = load i32, i32* %10, align 4
  %5645 = lshr i32 %5644, 24
  %5646 = and i32 %5645, 255
  %5647 = sext i32 %5646 to i64
  %5648 = getelementptr inbounds %union.StackValue, %union.StackValue* %5643, i64 %5647
  %5649 = bitcast %union.StackValue* %5648 to %struct.TValue*
  store %struct.TValue* %5649, %struct.TValue** %255, align 8
  %5650 = load %struct.TValue*, %struct.TValue** %254, align 8
  %5651 = getelementptr inbounds %struct.TValue, %struct.TValue* %5650, i32 0, i32 1
  %5652 = load i8, i8* %5651, align 8
  %5653 = zext i8 %5652 to i32
  %5654 = icmp eq i32 %5653, 35
  br i1 %5654, label %5655, label %5660

; <label>:5655:                                   ; preds = %5635
  %5656 = load %struct.TValue*, %struct.TValue** %254, align 8
  %5657 = getelementptr inbounds %struct.TValue, %struct.TValue* %5656, i32 0, i32 0
  %5658 = bitcast %union.Value* %5657 to i64*
  %5659 = load i64, i64* %5658, align 8
  store i64 %5659, i64* %256, align 8
  br i1 true, label %5664, label %5690

; <label>:5660:                                   ; preds = %5635
  %5661 = load %struct.TValue*, %struct.TValue** %254, align 8
  %5662 = call i32 @luaV_tointegerns(%struct.TValue* %5661, i64* %256, i32 0)
  %5663 = icmp ne i32 %5662, 0
  br i1 %5663, label %5664, label %5690

; <label>:5664:                                   ; preds = %5660, %5655
  %5665 = load %struct.TValue*, %struct.TValue** %255, align 8
  %5666 = getelementptr inbounds %struct.TValue, %struct.TValue* %5665, i32 0, i32 1
  %5667 = load i8, i8* %5666, align 8
  %5668 = zext i8 %5667 to i32
  %5669 = icmp eq i32 %5668, 35
  br i1 %5669, label %5670, label %5675

; <label>:5670:                                   ; preds = %5664
  %5671 = load %struct.TValue*, %struct.TValue** %255, align 8
  %5672 = getelementptr inbounds %struct.TValue, %struct.TValue* %5671, i32 0, i32 0
  %5673 = bitcast %union.Value* %5672 to i64*
  %5674 = load i64, i64* %5673, align 8
  store i64 %5674, i64* %257, align 8
  br i1 true, label %5679, label %5690

; <label>:5675:                                   ; preds = %5664
  %5676 = load %struct.TValue*, %struct.TValue** %255, align 8
  %5677 = call i32 @luaV_tointegerns(%struct.TValue* %5676, i64* %257, i32 0)
  %5678 = icmp ne i32 %5677, 0
  br i1 %5678, label %5679, label %5690

; <label>:5679:                                   ; preds = %5675, %5670
  %5680 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5681 = bitcast %union.StackValue* %5680 to %struct.TValue*
  store %struct.TValue* %5681, %struct.TValue** %258, align 8
  %5682 = load i64, i64* %256, align 8
  %5683 = load i64, i64* %257, align 8
  %5684 = xor i64 %5682, %5683
  %5685 = load %struct.TValue*, %struct.TValue** %258, align 8
  %5686 = getelementptr inbounds %struct.TValue, %struct.TValue* %5685, i32 0, i32 0
  %5687 = bitcast %union.Value* %5686 to i64*
  store i64 %5684, i64* %5687, align 8
  %5688 = load %struct.TValue*, %struct.TValue** %258, align 8
  %5689 = getelementptr inbounds %struct.TValue, %struct.TValue* %5688, i32 0, i32 1
  store i8 35, i8* %5689, align 8
  br label %5710

; <label>:5690:                                   ; preds = %5675, %5670, %5660, %5655
  %5691 = load i32*, i32** %8, align 8
  %5692 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5693 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5692, i32 0, i32 4
  %5694 = bitcast %union.anon* %5693 to %struct.anon*
  %5695 = getelementptr inbounds %struct.anon, %struct.anon* %5694, i32 0, i32 0
  store i32* %5691, i32** %5695, align 8
  %5696 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5697 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5696, i32 0, i32 1
  %5698 = load %union.StackValue*, %union.StackValue** %5697, align 8
  %5699 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5700 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5699, i32 0, i32 6
  store %union.StackValue* %5698, %union.StackValue** %5700, align 8
  %5701 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5702 = load %struct.TValue*, %struct.TValue** %254, align 8
  %5703 = load %struct.TValue*, %struct.TValue** %255, align 8
  %5704 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %5701, %struct.TValue* %5702, %struct.TValue* %5703, %union.StackValue* %5704, i32 15)
  %5705 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5706 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5705, i32 0, i32 4
  %5707 = bitcast %union.anon* %5706 to %struct.anon*
  %5708 = getelementptr inbounds %struct.anon, %struct.anon* %5707, i32 0, i32 1
  %5709 = load i32, i32* %5708, align 8
  store i32 %5709, i32* %9, align 4
  br label %5710

; <label>:5710:                                   ; preds = %5690, %5679
  %5711 = load i32, i32* %9, align 4
  %5712 = icmp ne i32 %5711, 0
  br i1 %5712, label %5713, label %5721

; <label>:5713:                                   ; preds = %5710
  %5714 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5715 = load i32*, i32** %8, align 8
  %5716 = call i32 @luaG_traceexec(%struct.lua_State* %5714, i32* %5715)
  store i32 %5716, i32* %9, align 4
  %5717 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5718 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5717, i32 0, i32 0
  %5719 = load %union.StackValue*, %union.StackValue** %5718, align 8
  %5720 = getelementptr inbounds %union.StackValue, %union.StackValue* %5719, i64 1
  store %union.StackValue* %5720, %union.StackValue** %7, align 8
  br label %5721

; <label>:5721:                                   ; preds = %5713, %5710
  %5722 = load i32*, i32** %8, align 8
  %5723 = getelementptr inbounds i32, i32* %5722, i32 1
  store i32* %5723, i32** %8, align 8
  %5724 = load i32, i32* %5722, align 4
  store i32 %5724, i32* %10, align 4
  %5725 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5726 = load i32, i32* %10, align 4
  %5727 = lshr i32 %5726, 7
  %5728 = and i32 %5727, 255
  %5729 = sext i32 %5728 to i64
  %5730 = getelementptr inbounds %union.StackValue, %union.StackValue* %5725, i64 %5729
  store %union.StackValue* %5730, %union.StackValue** %11, align 8
  %5731 = load i32, i32* %10, align 4
  %5732 = lshr i32 %5731, 0
  %5733 = and i32 %5732, 127
  %5734 = zext i32 %5733 to i64
  %5735 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5734
  %5736 = load i8*, i8** %5735, align 8
  br label %8998

; <label>:5737:                                   ; preds = %8998
  %5738 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5739 = load i32, i32* %10, align 4
  %5740 = lshr i32 %5739, 16
  %5741 = and i32 %5740, 255
  %5742 = sext i32 %5741 to i64
  %5743 = getelementptr inbounds %union.StackValue, %union.StackValue* %5738, i64 %5742
  %5744 = bitcast %union.StackValue* %5743 to %struct.TValue*
  store %struct.TValue* %5744, %struct.TValue** %259, align 8
  %5745 = load i32, i32* %10, align 4
  %5746 = lshr i32 %5745, 24
  %5747 = and i32 %5746, 255
  %5748 = sub nsw i32 %5747, 127
  store i32 %5748, i32* %260, align 4
  %5749 = load %struct.TValue*, %struct.TValue** %259, align 8
  %5750 = getelementptr inbounds %struct.TValue, %struct.TValue* %5749, i32 0, i32 1
  %5751 = load i8, i8* %5750, align 8
  %5752 = zext i8 %5751 to i32
  %5753 = icmp eq i32 %5752, 35
  br i1 %5753, label %5754, label %5759

; <label>:5754:                                   ; preds = %5737
  %5755 = load %struct.TValue*, %struct.TValue** %259, align 8
  %5756 = getelementptr inbounds %struct.TValue, %struct.TValue* %5755, i32 0, i32 0
  %5757 = bitcast %union.Value* %5756 to i64*
  %5758 = load i64, i64* %5757, align 8
  store i64 %5758, i64* %261, align 8
  br i1 true, label %5763, label %5776

; <label>:5759:                                   ; preds = %5737
  %5760 = load %struct.TValue*, %struct.TValue** %259, align 8
  %5761 = call i32 @luaV_tointegerns(%struct.TValue* %5760, i64* %261, i32 0)
  %5762 = icmp ne i32 %5761, 0
  br i1 %5762, label %5763, label %5776

; <label>:5763:                                   ; preds = %5759, %5754
  %5764 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5765 = bitcast %union.StackValue* %5764 to %struct.TValue*
  store %struct.TValue* %5765, %struct.TValue** %262, align 8
  %5766 = load i64, i64* %261, align 8
  %5767 = load i32, i32* %260, align 4
  %5768 = sub nsw i32 0, %5767
  %5769 = sext i32 %5768 to i64
  %5770 = call i64 @luaV_shiftl(i64 %5766, i64 %5769)
  %5771 = load %struct.TValue*, %struct.TValue** %262, align 8
  %5772 = getelementptr inbounds %struct.TValue, %struct.TValue* %5771, i32 0, i32 0
  %5773 = bitcast %union.Value* %5772 to i64*
  store i64 %5770, i64* %5773, align 8
  %5774 = load %struct.TValue*, %struct.TValue** %262, align 8
  %5775 = getelementptr inbounds %struct.TValue, %struct.TValue* %5774, i32 0, i32 1
  store i8 35, i8* %5775, align 8
  br label %5805

; <label>:5776:                                   ; preds = %5759, %5754
  store i32 17, i32* %263, align 4
  %5777 = load i32, i32* %10, align 4
  %5778 = and i32 %5777, 32768
  %5779 = icmp ne i32 %5778, 0
  br i1 %5779, label %5780, label %5783

; <label>:5780:                                   ; preds = %5776
  %5781 = load i32, i32* %260, align 4
  %5782 = sub nsw i32 0, %5781
  store i32 %5782, i32* %260, align 4
  store i32 16, i32* %263, align 4
  br label %5783

; <label>:5783:                                   ; preds = %5780, %5776
  %5784 = load i32*, i32** %8, align 8
  %5785 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5786 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5785, i32 0, i32 4
  %5787 = bitcast %union.anon* %5786 to %struct.anon*
  %5788 = getelementptr inbounds %struct.anon, %struct.anon* %5787, i32 0, i32 0
  store i32* %5784, i32** %5788, align 8
  %5789 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5790 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5789, i32 0, i32 1
  %5791 = load %union.StackValue*, %union.StackValue** %5790, align 8
  %5792 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5793 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5792, i32 0, i32 6
  store %union.StackValue* %5791, %union.StackValue** %5793, align 8
  %5794 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5795 = load %struct.TValue*, %struct.TValue** %259, align 8
  %5796 = load i32, i32* %260, align 4
  %5797 = sext i32 %5796 to i64
  %5798 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5799 = load i32, i32* %263, align 4
  call void @luaT_trybiniTM(%struct.lua_State* %5794, %struct.TValue* %5795, i64 %5797, i32 0, %union.StackValue* %5798, i32 %5799)
  %5800 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5801 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5800, i32 0, i32 4
  %5802 = bitcast %union.anon* %5801 to %struct.anon*
  %5803 = getelementptr inbounds %struct.anon, %struct.anon* %5802, i32 0, i32 1
  %5804 = load i32, i32* %5803, align 8
  store i32 %5804, i32* %9, align 4
  br label %5805

; <label>:5805:                                   ; preds = %5783, %5763
  %5806 = load i32, i32* %9, align 4
  %5807 = icmp ne i32 %5806, 0
  br i1 %5807, label %5808, label %5816

; <label>:5808:                                   ; preds = %5805
  %5809 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5810 = load i32*, i32** %8, align 8
  %5811 = call i32 @luaG_traceexec(%struct.lua_State* %5809, i32* %5810)
  store i32 %5811, i32* %9, align 4
  %5812 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5813 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5812, i32 0, i32 0
  %5814 = load %union.StackValue*, %union.StackValue** %5813, align 8
  %5815 = getelementptr inbounds %union.StackValue, %union.StackValue* %5814, i64 1
  store %union.StackValue* %5815, %union.StackValue** %7, align 8
  br label %5816

; <label>:5816:                                   ; preds = %5808, %5805
  %5817 = load i32*, i32** %8, align 8
  %5818 = getelementptr inbounds i32, i32* %5817, i32 1
  store i32* %5818, i32** %8, align 8
  %5819 = load i32, i32* %5817, align 4
  store i32 %5819, i32* %10, align 4
  %5820 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5821 = load i32, i32* %10, align 4
  %5822 = lshr i32 %5821, 7
  %5823 = and i32 %5822, 255
  %5824 = sext i32 %5823 to i64
  %5825 = getelementptr inbounds %union.StackValue, %union.StackValue* %5820, i64 %5824
  store %union.StackValue* %5825, %union.StackValue** %11, align 8
  %5826 = load i32, i32* %10, align 4
  %5827 = lshr i32 %5826, 0
  %5828 = and i32 %5827, 127
  %5829 = zext i32 %5828 to i64
  %5830 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5829
  %5831 = load i8*, i8** %5830, align 8
  br label %8998

; <label>:5832:                                   ; preds = %8998
  %5833 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5834 = load i32, i32* %10, align 4
  %5835 = lshr i32 %5834, 16
  %5836 = and i32 %5835, 255
  %5837 = sext i32 %5836 to i64
  %5838 = getelementptr inbounds %union.StackValue, %union.StackValue* %5833, i64 %5837
  %5839 = bitcast %union.StackValue* %5838 to %struct.TValue*
  store %struct.TValue* %5839, %struct.TValue** %264, align 8
  %5840 = load i32, i32* %10, align 4
  %5841 = lshr i32 %5840, 24
  %5842 = and i32 %5841, 255
  %5843 = sub nsw i32 %5842, 127
  store i32 %5843, i32* %265, align 4
  %5844 = load %struct.TValue*, %struct.TValue** %264, align 8
  %5845 = getelementptr inbounds %struct.TValue, %struct.TValue* %5844, i32 0, i32 1
  %5846 = load i8, i8* %5845, align 8
  %5847 = zext i8 %5846 to i32
  %5848 = icmp eq i32 %5847, 35
  br i1 %5848, label %5849, label %5854

; <label>:5849:                                   ; preds = %5832
  %5850 = load %struct.TValue*, %struct.TValue** %264, align 8
  %5851 = getelementptr inbounds %struct.TValue, %struct.TValue* %5850, i32 0, i32 0
  %5852 = bitcast %union.Value* %5851 to i64*
  %5853 = load i64, i64* %5852, align 8
  store i64 %5853, i64* %266, align 8
  br i1 true, label %5858, label %5870

; <label>:5854:                                   ; preds = %5832
  %5855 = load %struct.TValue*, %struct.TValue** %264, align 8
  %5856 = call i32 @luaV_tointegerns(%struct.TValue* %5855, i64* %266, i32 0)
  %5857 = icmp ne i32 %5856, 0
  br i1 %5857, label %5858, label %5870

; <label>:5858:                                   ; preds = %5854, %5849
  %5859 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5860 = bitcast %union.StackValue* %5859 to %struct.TValue*
  store %struct.TValue* %5860, %struct.TValue** %267, align 8
  %5861 = load i32, i32* %265, align 4
  %5862 = sext i32 %5861 to i64
  %5863 = load i64, i64* %266, align 8
  %5864 = call i64 @luaV_shiftl(i64 %5862, i64 %5863)
  %5865 = load %struct.TValue*, %struct.TValue** %267, align 8
  %5866 = getelementptr inbounds %struct.TValue, %struct.TValue* %5865, i32 0, i32 0
  %5867 = bitcast %union.Value* %5866 to i64*
  store i64 %5864, i64* %5867, align 8
  %5868 = load %struct.TValue*, %struct.TValue** %267, align 8
  %5869 = getelementptr inbounds %struct.TValue, %struct.TValue* %5868, i32 0, i32 1
  store i8 35, i8* %5869, align 8
  br label %5891

; <label>:5870:                                   ; preds = %5854, %5849
  %5871 = load i32*, i32** %8, align 8
  %5872 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5873 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5872, i32 0, i32 4
  %5874 = bitcast %union.anon* %5873 to %struct.anon*
  %5875 = getelementptr inbounds %struct.anon, %struct.anon* %5874, i32 0, i32 0
  store i32* %5871, i32** %5875, align 8
  %5876 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5877 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5876, i32 0, i32 1
  %5878 = load %union.StackValue*, %union.StackValue** %5877, align 8
  %5879 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5880 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5879, i32 0, i32 6
  store %union.StackValue* %5878, %union.StackValue** %5880, align 8
  %5881 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5882 = load %struct.TValue*, %struct.TValue** %264, align 8
  %5883 = load i32, i32* %265, align 4
  %5884 = sext i32 %5883 to i64
  %5885 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybiniTM(%struct.lua_State* %5881, %struct.TValue* %5882, i64 %5884, i32 1, %union.StackValue* %5885, i32 16)
  %5886 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5887 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5886, i32 0, i32 4
  %5888 = bitcast %union.anon* %5887 to %struct.anon*
  %5889 = getelementptr inbounds %struct.anon, %struct.anon* %5888, i32 0, i32 1
  %5890 = load i32, i32* %5889, align 8
  store i32 %5890, i32* %9, align 4
  br label %5891

; <label>:5891:                                   ; preds = %5870, %5858
  %5892 = load i32, i32* %9, align 4
  %5893 = icmp ne i32 %5892, 0
  br i1 %5893, label %5894, label %5902

; <label>:5894:                                   ; preds = %5891
  %5895 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5896 = load i32*, i32** %8, align 8
  %5897 = call i32 @luaG_traceexec(%struct.lua_State* %5895, i32* %5896)
  store i32 %5897, i32* %9, align 4
  %5898 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5899 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5898, i32 0, i32 0
  %5900 = load %union.StackValue*, %union.StackValue** %5899, align 8
  %5901 = getelementptr inbounds %union.StackValue, %union.StackValue* %5900, i64 1
  store %union.StackValue* %5901, %union.StackValue** %7, align 8
  br label %5902

; <label>:5902:                                   ; preds = %5894, %5891
  %5903 = load i32*, i32** %8, align 8
  %5904 = getelementptr inbounds i32, i32* %5903, i32 1
  store i32* %5904, i32** %8, align 8
  %5905 = load i32, i32* %5903, align 4
  store i32 %5905, i32* %10, align 4
  %5906 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5907 = load i32, i32* %10, align 4
  %5908 = lshr i32 %5907, 7
  %5909 = and i32 %5908, 255
  %5910 = sext i32 %5909 to i64
  %5911 = getelementptr inbounds %union.StackValue, %union.StackValue* %5906, i64 %5910
  store %union.StackValue* %5911, %union.StackValue** %11, align 8
  %5912 = load i32, i32* %10, align 4
  %5913 = lshr i32 %5912, 0
  %5914 = and i32 %5913, 127
  %5915 = zext i32 %5914 to i64
  %5916 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %5915
  %5917 = load i8*, i8** %5916, align 8
  br label %8998

; <label>:5918:                                   ; preds = %8998
  %5919 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5920 = load i32, i32* %10, align 4
  %5921 = lshr i32 %5920, 16
  %5922 = and i32 %5921, 255
  %5923 = sext i32 %5922 to i64
  %5924 = getelementptr inbounds %union.StackValue, %union.StackValue* %5919, i64 %5923
  %5925 = bitcast %union.StackValue* %5924 to %struct.TValue*
  store %struct.TValue* %5925, %struct.TValue** %268, align 8
  %5926 = load %union.StackValue*, %union.StackValue** %7, align 8
  %5927 = load i32, i32* %10, align 4
  %5928 = lshr i32 %5927, 24
  %5929 = and i32 %5928, 255
  %5930 = sext i32 %5929 to i64
  %5931 = getelementptr inbounds %union.StackValue, %union.StackValue* %5926, i64 %5930
  %5932 = bitcast %union.StackValue* %5931 to %struct.TValue*
  store %struct.TValue* %5932, %struct.TValue** %269, align 8
  %5933 = load %struct.TValue*, %struct.TValue** %268, align 8
  %5934 = getelementptr inbounds %struct.TValue, %struct.TValue* %5933, i32 0, i32 1
  %5935 = load i8, i8* %5934, align 8
  %5936 = zext i8 %5935 to i32
  %5937 = icmp eq i32 %5936, 35
  br i1 %5937, label %5938, label %5943

; <label>:5938:                                   ; preds = %5918
  %5939 = load %struct.TValue*, %struct.TValue** %268, align 8
  %5940 = getelementptr inbounds %struct.TValue, %struct.TValue* %5939, i32 0, i32 0
  %5941 = bitcast %union.Value* %5940 to i64*
  %5942 = load i64, i64* %5941, align 8
  store i64 %5942, i64* %270, align 8
  br i1 true, label %5947, label %5974

; <label>:5943:                                   ; preds = %5918
  %5944 = load %struct.TValue*, %struct.TValue** %268, align 8
  %5945 = call i32 @luaV_tointegerns(%struct.TValue* %5944, i64* %270, i32 0)
  %5946 = icmp ne i32 %5945, 0
  br i1 %5946, label %5947, label %5974

; <label>:5947:                                   ; preds = %5943, %5938
  %5948 = load %struct.TValue*, %struct.TValue** %269, align 8
  %5949 = getelementptr inbounds %struct.TValue, %struct.TValue* %5948, i32 0, i32 1
  %5950 = load i8, i8* %5949, align 8
  %5951 = zext i8 %5950 to i32
  %5952 = icmp eq i32 %5951, 35
  br i1 %5952, label %5953, label %5958

; <label>:5953:                                   ; preds = %5947
  %5954 = load %struct.TValue*, %struct.TValue** %269, align 8
  %5955 = getelementptr inbounds %struct.TValue, %struct.TValue* %5954, i32 0, i32 0
  %5956 = bitcast %union.Value* %5955 to i64*
  %5957 = load i64, i64* %5956, align 8
  store i64 %5957, i64* %271, align 8
  br i1 true, label %5962, label %5974

; <label>:5958:                                   ; preds = %5947
  %5959 = load %struct.TValue*, %struct.TValue** %269, align 8
  %5960 = call i32 @luaV_tointegerns(%struct.TValue* %5959, i64* %271, i32 0)
  %5961 = icmp ne i32 %5960, 0
  br i1 %5961, label %5962, label %5974

; <label>:5962:                                   ; preds = %5958, %5953
  %5963 = load %union.StackValue*, %union.StackValue** %11, align 8
  %5964 = bitcast %union.StackValue* %5963 to %struct.TValue*
  store %struct.TValue* %5964, %struct.TValue** %272, align 8
  %5965 = load i64, i64* %270, align 8
  %5966 = load i64, i64* %271, align 8
  %5967 = sub nsw i64 0, %5966
  %5968 = call i64 @luaV_shiftl(i64 %5965, i64 %5967)
  %5969 = load %struct.TValue*, %struct.TValue** %272, align 8
  %5970 = getelementptr inbounds %struct.TValue, %struct.TValue* %5969, i32 0, i32 0
  %5971 = bitcast %union.Value* %5970 to i64*
  store i64 %5968, i64* %5971, align 8
  %5972 = load %struct.TValue*, %struct.TValue** %272, align 8
  %5973 = getelementptr inbounds %struct.TValue, %struct.TValue* %5972, i32 0, i32 1
  store i8 35, i8* %5973, align 8
  br label %5994

; <label>:5974:                                   ; preds = %5958, %5953, %5943, %5938
  %5975 = load i32*, i32** %8, align 8
  %5976 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5977 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5976, i32 0, i32 4
  %5978 = bitcast %union.anon* %5977 to %struct.anon*
  %5979 = getelementptr inbounds %struct.anon, %struct.anon* %5978, i32 0, i32 0
  store i32* %5975, i32** %5979, align 8
  %5980 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5981 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5980, i32 0, i32 1
  %5982 = load %union.StackValue*, %union.StackValue** %5981, align 8
  %5983 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5984 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5983, i32 0, i32 6
  store %union.StackValue* %5982, %union.StackValue** %5984, align 8
  %5985 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5986 = load %struct.TValue*, %struct.TValue** %268, align 8
  %5987 = load %struct.TValue*, %struct.TValue** %269, align 8
  %5988 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %5985, %struct.TValue* %5986, %struct.TValue* %5987, %union.StackValue* %5988, i32 17)
  %5989 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %5990 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5989, i32 0, i32 4
  %5991 = bitcast %union.anon* %5990 to %struct.anon*
  %5992 = getelementptr inbounds %struct.anon, %struct.anon* %5991, i32 0, i32 1
  %5993 = load i32, i32* %5992, align 8
  store i32 %5993, i32* %9, align 4
  br label %5994

; <label>:5994:                                   ; preds = %5974, %5962
  %5995 = load i32, i32* %9, align 4
  %5996 = icmp ne i32 %5995, 0
  br i1 %5996, label %5997, label %6005

; <label>:5997:                                   ; preds = %5994
  %5998 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5999 = load i32*, i32** %8, align 8
  %6000 = call i32 @luaG_traceexec(%struct.lua_State* %5998, i32* %5999)
  store i32 %6000, i32* %9, align 4
  %6001 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6002 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6001, i32 0, i32 0
  %6003 = load %union.StackValue*, %union.StackValue** %6002, align 8
  %6004 = getelementptr inbounds %union.StackValue, %union.StackValue* %6003, i64 1
  store %union.StackValue* %6004, %union.StackValue** %7, align 8
  br label %6005

; <label>:6005:                                   ; preds = %5997, %5994
  %6006 = load i32*, i32** %8, align 8
  %6007 = getelementptr inbounds i32, i32* %6006, i32 1
  store i32* %6007, i32** %8, align 8
  %6008 = load i32, i32* %6006, align 4
  store i32 %6008, i32* %10, align 4
  %6009 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6010 = load i32, i32* %10, align 4
  %6011 = lshr i32 %6010, 7
  %6012 = and i32 %6011, 255
  %6013 = sext i32 %6012 to i64
  %6014 = getelementptr inbounds %union.StackValue, %union.StackValue* %6009, i64 %6013
  store %union.StackValue* %6014, %union.StackValue** %11, align 8
  %6015 = load i32, i32* %10, align 4
  %6016 = lshr i32 %6015, 0
  %6017 = and i32 %6016, 127
  %6018 = zext i32 %6017 to i64
  %6019 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6018
  %6020 = load i8*, i8** %6019, align 8
  br label %8998

; <label>:6021:                                   ; preds = %8998
  %6022 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6023 = load i32, i32* %10, align 4
  %6024 = lshr i32 %6023, 16
  %6025 = and i32 %6024, 255
  %6026 = sext i32 %6025 to i64
  %6027 = getelementptr inbounds %union.StackValue, %union.StackValue* %6022, i64 %6026
  %6028 = bitcast %union.StackValue* %6027 to %struct.TValue*
  store %struct.TValue* %6028, %struct.TValue** %273, align 8
  %6029 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6030 = load i32, i32* %10, align 4
  %6031 = lshr i32 %6030, 24
  %6032 = and i32 %6031, 255
  %6033 = sext i32 %6032 to i64
  %6034 = getelementptr inbounds %union.StackValue, %union.StackValue* %6029, i64 %6033
  %6035 = bitcast %union.StackValue* %6034 to %struct.TValue*
  store %struct.TValue* %6035, %struct.TValue** %274, align 8
  %6036 = load %struct.TValue*, %struct.TValue** %273, align 8
  %6037 = getelementptr inbounds %struct.TValue, %struct.TValue* %6036, i32 0, i32 1
  %6038 = load i8, i8* %6037, align 8
  %6039 = zext i8 %6038 to i32
  %6040 = icmp eq i32 %6039, 35
  br i1 %6040, label %6041, label %6046

; <label>:6041:                                   ; preds = %6021
  %6042 = load %struct.TValue*, %struct.TValue** %273, align 8
  %6043 = getelementptr inbounds %struct.TValue, %struct.TValue* %6042, i32 0, i32 0
  %6044 = bitcast %union.Value* %6043 to i64*
  %6045 = load i64, i64* %6044, align 8
  store i64 %6045, i64* %275, align 8
  br i1 true, label %6050, label %6076

; <label>:6046:                                   ; preds = %6021
  %6047 = load %struct.TValue*, %struct.TValue** %273, align 8
  %6048 = call i32 @luaV_tointegerns(%struct.TValue* %6047, i64* %275, i32 0)
  %6049 = icmp ne i32 %6048, 0
  br i1 %6049, label %6050, label %6076

; <label>:6050:                                   ; preds = %6046, %6041
  %6051 = load %struct.TValue*, %struct.TValue** %274, align 8
  %6052 = getelementptr inbounds %struct.TValue, %struct.TValue* %6051, i32 0, i32 1
  %6053 = load i8, i8* %6052, align 8
  %6054 = zext i8 %6053 to i32
  %6055 = icmp eq i32 %6054, 35
  br i1 %6055, label %6056, label %6061

; <label>:6056:                                   ; preds = %6050
  %6057 = load %struct.TValue*, %struct.TValue** %274, align 8
  %6058 = getelementptr inbounds %struct.TValue, %struct.TValue* %6057, i32 0, i32 0
  %6059 = bitcast %union.Value* %6058 to i64*
  %6060 = load i64, i64* %6059, align 8
  store i64 %6060, i64* %276, align 8
  br i1 true, label %6065, label %6076

; <label>:6061:                                   ; preds = %6050
  %6062 = load %struct.TValue*, %struct.TValue** %274, align 8
  %6063 = call i32 @luaV_tointegerns(%struct.TValue* %6062, i64* %276, i32 0)
  %6064 = icmp ne i32 %6063, 0
  br i1 %6064, label %6065, label %6076

; <label>:6065:                                   ; preds = %6061, %6056
  %6066 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6067 = bitcast %union.StackValue* %6066 to %struct.TValue*
  store %struct.TValue* %6067, %struct.TValue** %277, align 8
  %6068 = load i64, i64* %275, align 8
  %6069 = load i64, i64* %276, align 8
  %6070 = call i64 @luaV_shiftl(i64 %6068, i64 %6069)
  %6071 = load %struct.TValue*, %struct.TValue** %277, align 8
  %6072 = getelementptr inbounds %struct.TValue, %struct.TValue* %6071, i32 0, i32 0
  %6073 = bitcast %union.Value* %6072 to i64*
  store i64 %6070, i64* %6073, align 8
  %6074 = load %struct.TValue*, %struct.TValue** %277, align 8
  %6075 = getelementptr inbounds %struct.TValue, %struct.TValue* %6074, i32 0, i32 1
  store i8 35, i8* %6075, align 8
  br label %6096

; <label>:6076:                                   ; preds = %6061, %6056, %6046, %6041
  %6077 = load i32*, i32** %8, align 8
  %6078 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6079 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6078, i32 0, i32 4
  %6080 = bitcast %union.anon* %6079 to %struct.anon*
  %6081 = getelementptr inbounds %struct.anon, %struct.anon* %6080, i32 0, i32 0
  store i32* %6077, i32** %6081, align 8
  %6082 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6083 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6082, i32 0, i32 1
  %6084 = load %union.StackValue*, %union.StackValue** %6083, align 8
  %6085 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6086 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6085, i32 0, i32 6
  store %union.StackValue* %6084, %union.StackValue** %6086, align 8
  %6087 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6088 = load %struct.TValue*, %struct.TValue** %273, align 8
  %6089 = load %struct.TValue*, %struct.TValue** %274, align 8
  %6090 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %6087, %struct.TValue* %6088, %struct.TValue* %6089, %union.StackValue* %6090, i32 16)
  %6091 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6092 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6091, i32 0, i32 4
  %6093 = bitcast %union.anon* %6092 to %struct.anon*
  %6094 = getelementptr inbounds %struct.anon, %struct.anon* %6093, i32 0, i32 1
  %6095 = load i32, i32* %6094, align 8
  store i32 %6095, i32* %9, align 4
  br label %6096

; <label>:6096:                                   ; preds = %6076, %6065
  %6097 = load i32, i32* %9, align 4
  %6098 = icmp ne i32 %6097, 0
  br i1 %6098, label %6099, label %6107

; <label>:6099:                                   ; preds = %6096
  %6100 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6101 = load i32*, i32** %8, align 8
  %6102 = call i32 @luaG_traceexec(%struct.lua_State* %6100, i32* %6101)
  store i32 %6102, i32* %9, align 4
  %6103 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6104 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6103, i32 0, i32 0
  %6105 = load %union.StackValue*, %union.StackValue** %6104, align 8
  %6106 = getelementptr inbounds %union.StackValue, %union.StackValue* %6105, i64 1
  store %union.StackValue* %6106, %union.StackValue** %7, align 8
  br label %6107

; <label>:6107:                                   ; preds = %6099, %6096
  %6108 = load i32*, i32** %8, align 8
  %6109 = getelementptr inbounds i32, i32* %6108, i32 1
  store i32* %6109, i32** %8, align 8
  %6110 = load i32, i32* %6108, align 4
  store i32 %6110, i32* %10, align 4
  %6111 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6112 = load i32, i32* %10, align 4
  %6113 = lshr i32 %6112, 7
  %6114 = and i32 %6113, 255
  %6115 = sext i32 %6114 to i64
  %6116 = getelementptr inbounds %union.StackValue, %union.StackValue* %6111, i64 %6115
  store %union.StackValue* %6116, %union.StackValue** %11, align 8
  %6117 = load i32, i32* %10, align 4
  %6118 = lshr i32 %6117, 0
  %6119 = and i32 %6118, 127
  %6120 = zext i32 %6119 to i64
  %6121 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6120
  %6122 = load i8*, i8** %6121, align 8
  br label %8998

; <label>:6123:                                   ; preds = %8998
  %6124 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6125 = load i32, i32* %10, align 4
  %6126 = lshr i32 %6125, 16
  %6127 = and i32 %6126, 255
  %6128 = sext i32 %6127 to i64
  %6129 = getelementptr inbounds %union.StackValue, %union.StackValue* %6124, i64 %6128
  %6130 = bitcast %union.StackValue* %6129 to %struct.TValue*
  store %struct.TValue* %6130, %struct.TValue** %278, align 8
  %6131 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6132 = getelementptr inbounds %struct.TValue, %struct.TValue* %6131, i32 0, i32 1
  %6133 = load i8, i8* %6132, align 8
  %6134 = zext i8 %6133 to i32
  %6135 = icmp eq i32 %6134, 35
  br i1 %6135, label %6136, label %6150

; <label>:6136:                                   ; preds = %6123
  %6137 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6138 = getelementptr inbounds %struct.TValue, %struct.TValue* %6137, i32 0, i32 0
  %6139 = bitcast %union.Value* %6138 to i64*
  %6140 = load i64, i64* %6139, align 8
  store i64 %6140, i64* %280, align 8
  %6141 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6142 = bitcast %union.StackValue* %6141 to %struct.TValue*
  store %struct.TValue* %6142, %struct.TValue** %281, align 8
  %6143 = load i64, i64* %280, align 8
  %6144 = sub i64 0, %6143
  %6145 = load %struct.TValue*, %struct.TValue** %281, align 8
  %6146 = getelementptr inbounds %struct.TValue, %struct.TValue* %6145, i32 0, i32 0
  %6147 = bitcast %union.Value* %6146 to i64*
  store i64 %6144, i64* %6147, align 8
  %6148 = load %struct.TValue*, %struct.TValue** %281, align 8
  %6149 = getelementptr inbounds %struct.TValue, %struct.TValue* %6148, i32 0, i32 1
  store i8 35, i8* %6149, align 8
  br label %6205

; <label>:6150:                                   ; preds = %6123
  %6151 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6152 = getelementptr inbounds %struct.TValue, %struct.TValue* %6151, i32 0, i32 1
  %6153 = load i8, i8* %6152, align 8
  %6154 = zext i8 %6153 to i32
  %6155 = icmp eq i32 %6154, 19
  br i1 %6155, label %6156, label %6161

; <label>:6156:                                   ; preds = %6150
  %6157 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6158 = getelementptr inbounds %struct.TValue, %struct.TValue* %6157, i32 0, i32 0
  %6159 = bitcast %union.Value* %6158 to double*
  %6160 = load double, double* %6159, align 8
  store double %6160, double* %279, align 8
  br i1 true, label %6174, label %6184

; <label>:6161:                                   ; preds = %6150
  %6162 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6163 = getelementptr inbounds %struct.TValue, %struct.TValue* %6162, i32 0, i32 1
  %6164 = load i8, i8* %6163, align 8
  %6165 = zext i8 %6164 to i32
  %6166 = icmp eq i32 %6165, 35
  br i1 %6166, label %6167, label %6173

; <label>:6167:                                   ; preds = %6161
  %6168 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6169 = getelementptr inbounds %struct.TValue, %struct.TValue* %6168, i32 0, i32 0
  %6170 = bitcast %union.Value* %6169 to i64*
  %6171 = load i64, i64* %6170, align 8
  %6172 = sitofp i64 %6171 to double
  store double %6172, double* %279, align 8
  br i1 true, label %6174, label %6184

; <label>:6173:                                   ; preds = %6161
  br i1 false, label %6174, label %6184

; <label>:6174:                                   ; preds = %6173, %6167, %6156
  %6175 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6176 = bitcast %union.StackValue* %6175 to %struct.TValue*
  store %struct.TValue* %6176, %struct.TValue** %282, align 8
  %6177 = load double, double* %279, align 8
  %6178 = fsub double -0.000000e+00, %6177
  %6179 = load %struct.TValue*, %struct.TValue** %282, align 8
  %6180 = getelementptr inbounds %struct.TValue, %struct.TValue* %6179, i32 0, i32 0
  %6181 = bitcast %union.Value* %6180 to double*
  store double %6178, double* %6181, align 8
  %6182 = load %struct.TValue*, %struct.TValue** %282, align 8
  %6183 = getelementptr inbounds %struct.TValue, %struct.TValue* %6182, i32 0, i32 1
  store i8 19, i8* %6183, align 8
  br label %6204

; <label>:6184:                                   ; preds = %6173, %6167, %6156
  %6185 = load i32*, i32** %8, align 8
  %6186 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6187 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6186, i32 0, i32 4
  %6188 = bitcast %union.anon* %6187 to %struct.anon*
  %6189 = getelementptr inbounds %struct.anon, %struct.anon* %6188, i32 0, i32 0
  store i32* %6185, i32** %6189, align 8
  %6190 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6191 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6190, i32 0, i32 1
  %6192 = load %union.StackValue*, %union.StackValue** %6191, align 8
  %6193 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6194 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6193, i32 0, i32 6
  store %union.StackValue* %6192, %union.StackValue** %6194, align 8
  %6195 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6196 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6197 = load %struct.TValue*, %struct.TValue** %278, align 8
  %6198 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %6195, %struct.TValue* %6196, %struct.TValue* %6197, %union.StackValue* %6198, i32 18)
  %6199 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6200 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6199, i32 0, i32 4
  %6201 = bitcast %union.anon* %6200 to %struct.anon*
  %6202 = getelementptr inbounds %struct.anon, %struct.anon* %6201, i32 0, i32 1
  %6203 = load i32, i32* %6202, align 8
  store i32 %6203, i32* %9, align 4
  br label %6204

; <label>:6204:                                   ; preds = %6184, %6174
  br label %6205

; <label>:6205:                                   ; preds = %6204, %6136
  %6206 = load i32, i32* %9, align 4
  %6207 = icmp ne i32 %6206, 0
  br i1 %6207, label %6208, label %6216

; <label>:6208:                                   ; preds = %6205
  %6209 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6210 = load i32*, i32** %8, align 8
  %6211 = call i32 @luaG_traceexec(%struct.lua_State* %6209, i32* %6210)
  store i32 %6211, i32* %9, align 4
  %6212 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6213 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6212, i32 0, i32 0
  %6214 = load %union.StackValue*, %union.StackValue** %6213, align 8
  %6215 = getelementptr inbounds %union.StackValue, %union.StackValue* %6214, i64 1
  store %union.StackValue* %6215, %union.StackValue** %7, align 8
  br label %6216

; <label>:6216:                                   ; preds = %6208, %6205
  %6217 = load i32*, i32** %8, align 8
  %6218 = getelementptr inbounds i32, i32* %6217, i32 1
  store i32* %6218, i32** %8, align 8
  %6219 = load i32, i32* %6217, align 4
  store i32 %6219, i32* %10, align 4
  %6220 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6221 = load i32, i32* %10, align 4
  %6222 = lshr i32 %6221, 7
  %6223 = and i32 %6222, 255
  %6224 = sext i32 %6223 to i64
  %6225 = getelementptr inbounds %union.StackValue, %union.StackValue* %6220, i64 %6224
  store %union.StackValue* %6225, %union.StackValue** %11, align 8
  %6226 = load i32, i32* %10, align 4
  %6227 = lshr i32 %6226, 0
  %6228 = and i32 %6227, 127
  %6229 = zext i32 %6228 to i64
  %6230 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6229
  %6231 = load i8*, i8** %6230, align 8
  br label %8998

; <label>:6232:                                   ; preds = %8998
  %6233 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6234 = load i32, i32* %10, align 4
  %6235 = lshr i32 %6234, 16
  %6236 = and i32 %6235, 255
  %6237 = sext i32 %6236 to i64
  %6238 = getelementptr inbounds %union.StackValue, %union.StackValue* %6233, i64 %6237
  %6239 = bitcast %union.StackValue* %6238 to %struct.TValue*
  store %struct.TValue* %6239, %struct.TValue** %283, align 8
  %6240 = load %struct.TValue*, %struct.TValue** %283, align 8
  %6241 = getelementptr inbounds %struct.TValue, %struct.TValue* %6240, i32 0, i32 1
  %6242 = load i8, i8* %6241, align 8
  %6243 = zext i8 %6242 to i32
  %6244 = icmp eq i32 %6243, 35
  br i1 %6244, label %6245, label %6250

; <label>:6245:                                   ; preds = %6232
  %6246 = load %struct.TValue*, %struct.TValue** %283, align 8
  %6247 = getelementptr inbounds %struct.TValue, %struct.TValue* %6246, i32 0, i32 0
  %6248 = bitcast %union.Value* %6247 to i64*
  %6249 = load i64, i64* %6248, align 8
  store i64 %6249, i64* %284, align 8
  br i1 true, label %6254, label %6264

; <label>:6250:                                   ; preds = %6232
  %6251 = load %struct.TValue*, %struct.TValue** %283, align 8
  %6252 = call i32 @luaV_tointegerns(%struct.TValue* %6251, i64* %284, i32 0)
  %6253 = icmp ne i32 %6252, 0
  br i1 %6253, label %6254, label %6264

; <label>:6254:                                   ; preds = %6250, %6245
  %6255 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6256 = bitcast %union.StackValue* %6255 to %struct.TValue*
  store %struct.TValue* %6256, %struct.TValue** %285, align 8
  %6257 = load i64, i64* %284, align 8
  %6258 = xor i64 -1, %6257
  %6259 = load %struct.TValue*, %struct.TValue** %285, align 8
  %6260 = getelementptr inbounds %struct.TValue, %struct.TValue* %6259, i32 0, i32 0
  %6261 = bitcast %union.Value* %6260 to i64*
  store i64 %6258, i64* %6261, align 8
  %6262 = load %struct.TValue*, %struct.TValue** %285, align 8
  %6263 = getelementptr inbounds %struct.TValue, %struct.TValue* %6262, i32 0, i32 1
  store i8 35, i8* %6263, align 8
  br label %6284

; <label>:6264:                                   ; preds = %6250, %6245
  %6265 = load i32*, i32** %8, align 8
  %6266 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6267 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6266, i32 0, i32 4
  %6268 = bitcast %union.anon* %6267 to %struct.anon*
  %6269 = getelementptr inbounds %struct.anon, %struct.anon* %6268, i32 0, i32 0
  store i32* %6265, i32** %6269, align 8
  %6270 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6271 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6270, i32 0, i32 1
  %6272 = load %union.StackValue*, %union.StackValue** %6271, align 8
  %6273 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6274 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6273, i32 0, i32 6
  store %union.StackValue* %6272, %union.StackValue** %6274, align 8
  %6275 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6276 = load %struct.TValue*, %struct.TValue** %283, align 8
  %6277 = load %struct.TValue*, %struct.TValue** %283, align 8
  %6278 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaT_trybinTM(%struct.lua_State* %6275, %struct.TValue* %6276, %struct.TValue* %6277, %union.StackValue* %6278, i32 19)
  %6279 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6280 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6279, i32 0, i32 4
  %6281 = bitcast %union.anon* %6280 to %struct.anon*
  %6282 = getelementptr inbounds %struct.anon, %struct.anon* %6281, i32 0, i32 1
  %6283 = load i32, i32* %6282, align 8
  store i32 %6283, i32* %9, align 4
  br label %6284

; <label>:6284:                                   ; preds = %6264, %6254
  %6285 = load i32, i32* %9, align 4
  %6286 = icmp ne i32 %6285, 0
  br i1 %6286, label %6287, label %6295

; <label>:6287:                                   ; preds = %6284
  %6288 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6289 = load i32*, i32** %8, align 8
  %6290 = call i32 @luaG_traceexec(%struct.lua_State* %6288, i32* %6289)
  store i32 %6290, i32* %9, align 4
  %6291 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6292 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6291, i32 0, i32 0
  %6293 = load %union.StackValue*, %union.StackValue** %6292, align 8
  %6294 = getelementptr inbounds %union.StackValue, %union.StackValue* %6293, i64 1
  store %union.StackValue* %6294, %union.StackValue** %7, align 8
  br label %6295

; <label>:6295:                                   ; preds = %6287, %6284
  %6296 = load i32*, i32** %8, align 8
  %6297 = getelementptr inbounds i32, i32* %6296, i32 1
  store i32* %6297, i32** %8, align 8
  %6298 = load i32, i32* %6296, align 4
  store i32 %6298, i32* %10, align 4
  %6299 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6300 = load i32, i32* %10, align 4
  %6301 = lshr i32 %6300, 7
  %6302 = and i32 %6301, 255
  %6303 = sext i32 %6302 to i64
  %6304 = getelementptr inbounds %union.StackValue, %union.StackValue* %6299, i64 %6303
  store %union.StackValue* %6304, %union.StackValue** %11, align 8
  %6305 = load i32, i32* %10, align 4
  %6306 = lshr i32 %6305, 0
  %6307 = and i32 %6306, 127
  %6308 = zext i32 %6307 to i64
  %6309 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6308
  %6310 = load i8*, i8** %6309, align 8
  br label %8998

; <label>:6311:                                   ; preds = %8998
  %6312 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6313 = load i32, i32* %10, align 4
  %6314 = lshr i32 %6313, 16
  %6315 = and i32 %6314, 255
  %6316 = sext i32 %6315 to i64
  %6317 = getelementptr inbounds %union.StackValue, %union.StackValue* %6312, i64 %6316
  %6318 = bitcast %union.StackValue* %6317 to %struct.TValue*
  store %struct.TValue* %6318, %struct.TValue** %286, align 8
  %6319 = load %struct.TValue*, %struct.TValue** %286, align 8
  %6320 = getelementptr inbounds %struct.TValue, %struct.TValue* %6319, i32 0, i32 1
  %6321 = load i8, i8* %6320, align 8
  %6322 = zext i8 %6321 to i32
  %6323 = and i32 %6322, 15
  %6324 = icmp eq i32 %6323, 0
  br i1 %6324, label %6339, label %6325

; <label>:6325:                                   ; preds = %6311
  %6326 = load %struct.TValue*, %struct.TValue** %286, align 8
  %6327 = getelementptr inbounds %struct.TValue, %struct.TValue* %6326, i32 0, i32 1
  %6328 = load i8, i8* %6327, align 8
  %6329 = zext i8 %6328 to i32
  %6330 = icmp eq i32 %6329, 1
  br i1 %6330, label %6331, label %6337

; <label>:6331:                                   ; preds = %6325
  %6332 = load %struct.TValue*, %struct.TValue** %286, align 8
  %6333 = getelementptr inbounds %struct.TValue, %struct.TValue* %6332, i32 0, i32 0
  %6334 = bitcast %union.Value* %6333 to i32*
  %6335 = load i32, i32* %6334, align 8
  %6336 = icmp eq i32 %6335, 0
  br label %6337

; <label>:6337:                                   ; preds = %6331, %6325
  %6338 = phi i1 [ false, %6325 ], [ %6336, %6331 ]
  br label %6339

; <label>:6339:                                   ; preds = %6337, %6311
  %6340 = phi i1 [ true, %6311 ], [ %6338, %6337 ]
  %6341 = zext i1 %6340 to i32
  store i32 %6341, i32* %287, align 4
  %6342 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6343 = bitcast %union.StackValue* %6342 to %struct.TValue*
  store %struct.TValue* %6343, %struct.TValue** %288, align 8
  %6344 = load i32, i32* %287, align 4
  %6345 = load %struct.TValue*, %struct.TValue** %288, align 8
  %6346 = getelementptr inbounds %struct.TValue, %struct.TValue* %6345, i32 0, i32 0
  %6347 = bitcast %union.Value* %6346 to i32*
  store i32 %6344, i32* %6347, align 8
  %6348 = load %struct.TValue*, %struct.TValue** %288, align 8
  %6349 = getelementptr inbounds %struct.TValue, %struct.TValue* %6348, i32 0, i32 1
  store i8 1, i8* %6349, align 8
  %6350 = load i32, i32* %9, align 4
  %6351 = icmp ne i32 %6350, 0
  br i1 %6351, label %6352, label %6360

; <label>:6352:                                   ; preds = %6339
  %6353 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6354 = load i32*, i32** %8, align 8
  %6355 = call i32 @luaG_traceexec(%struct.lua_State* %6353, i32* %6354)
  store i32 %6355, i32* %9, align 4
  %6356 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6357 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6356, i32 0, i32 0
  %6358 = load %union.StackValue*, %union.StackValue** %6357, align 8
  %6359 = getelementptr inbounds %union.StackValue, %union.StackValue* %6358, i64 1
  store %union.StackValue* %6359, %union.StackValue** %7, align 8
  br label %6360

; <label>:6360:                                   ; preds = %6352, %6339
  %6361 = load i32*, i32** %8, align 8
  %6362 = getelementptr inbounds i32, i32* %6361, i32 1
  store i32* %6362, i32** %8, align 8
  %6363 = load i32, i32* %6361, align 4
  store i32 %6363, i32* %10, align 4
  %6364 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6365 = load i32, i32* %10, align 4
  %6366 = lshr i32 %6365, 7
  %6367 = and i32 %6366, 255
  %6368 = sext i32 %6367 to i64
  %6369 = getelementptr inbounds %union.StackValue, %union.StackValue* %6364, i64 %6368
  store %union.StackValue* %6369, %union.StackValue** %11, align 8
  %6370 = load i32, i32* %10, align 4
  %6371 = lshr i32 %6370, 0
  %6372 = and i32 %6371, 127
  %6373 = zext i32 %6372 to i64
  %6374 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6373
  %6375 = load i8*, i8** %6374, align 8
  br label %8998

; <label>:6376:                                   ; preds = %8998
  %6377 = load i32*, i32** %8, align 8
  %6378 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6379 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6378, i32 0, i32 4
  %6380 = bitcast %union.anon* %6379 to %struct.anon*
  %6381 = getelementptr inbounds %struct.anon, %struct.anon* %6380, i32 0, i32 0
  store i32* %6377, i32** %6381, align 8
  %6382 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6383 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6382, i32 0, i32 1
  %6384 = load %union.StackValue*, %union.StackValue** %6383, align 8
  %6385 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6386 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6385, i32 0, i32 6
  store %union.StackValue* %6384, %union.StackValue** %6386, align 8
  %6387 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6388 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6389 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6390 = load i32, i32* %10, align 4
  %6391 = lshr i32 %6390, 16
  %6392 = and i32 %6391, 255
  %6393 = sext i32 %6392 to i64
  %6394 = getelementptr inbounds %union.StackValue, %union.StackValue* %6389, i64 %6393
  %6395 = bitcast %union.StackValue* %6394 to %struct.TValue*
  call void @luaV_objlen(%struct.lua_State* %6387, %union.StackValue* %6388, %struct.TValue* %6395)
  %6396 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6397 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6396, i32 0, i32 4
  %6398 = bitcast %union.anon* %6397 to %struct.anon*
  %6399 = getelementptr inbounds %struct.anon, %struct.anon* %6398, i32 0, i32 1
  %6400 = load i32, i32* %6399, align 8
  store i32 %6400, i32* %9, align 4
  %6401 = load i32, i32* %9, align 4
  %6402 = icmp ne i32 %6401, 0
  br i1 %6402, label %6403, label %6411

; <label>:6403:                                   ; preds = %6376
  %6404 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6405 = load i32*, i32** %8, align 8
  %6406 = call i32 @luaG_traceexec(%struct.lua_State* %6404, i32* %6405)
  store i32 %6406, i32* %9, align 4
  %6407 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6408 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6407, i32 0, i32 0
  %6409 = load %union.StackValue*, %union.StackValue** %6408, align 8
  %6410 = getelementptr inbounds %union.StackValue, %union.StackValue* %6409, i64 1
  store %union.StackValue* %6410, %union.StackValue** %7, align 8
  br label %6411

; <label>:6411:                                   ; preds = %6403, %6376
  %6412 = load i32*, i32** %8, align 8
  %6413 = getelementptr inbounds i32, i32* %6412, i32 1
  store i32* %6413, i32** %8, align 8
  %6414 = load i32, i32* %6412, align 4
  store i32 %6414, i32* %10, align 4
  %6415 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6416 = load i32, i32* %10, align 4
  %6417 = lshr i32 %6416, 7
  %6418 = and i32 %6417, 255
  %6419 = sext i32 %6418 to i64
  %6420 = getelementptr inbounds %union.StackValue, %union.StackValue* %6415, i64 %6419
  store %union.StackValue* %6420, %union.StackValue** %11, align 8
  %6421 = load i32, i32* %10, align 4
  %6422 = lshr i32 %6421, 0
  %6423 = and i32 %6422, 127
  %6424 = zext i32 %6423 to i64
  %6425 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6424
  %6426 = load i8*, i8** %6425, align 8
  br label %8998

; <label>:6427:                                   ; preds = %8998
  %6428 = load i32, i32* %10, align 4
  %6429 = lshr i32 %6428, 16
  %6430 = and i32 %6429, 255
  store i32 %6430, i32* %289, align 4
  %6431 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6432 = load i32, i32* %289, align 4
  %6433 = sext i32 %6432 to i64
  %6434 = getelementptr inbounds %union.StackValue, %union.StackValue* %6431, i64 %6433
  %6435 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6436 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6435, i32 0, i32 6
  store %union.StackValue* %6434, %union.StackValue** %6436, align 8
  %6437 = load i32*, i32** %8, align 8
  %6438 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6439 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6438, i32 0, i32 4
  %6440 = bitcast %union.anon* %6439 to %struct.anon*
  %6441 = getelementptr inbounds %struct.anon, %struct.anon* %6440, i32 0, i32 0
  store i32* %6437, i32** %6441, align 8
  %6442 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6443 = load i32, i32* %289, align 4
  call void @luaV_concat(%struct.lua_State* %6442, i32 %6443)
  %6444 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6445 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6444, i32 0, i32 4
  %6446 = bitcast %union.anon* %6445 to %struct.anon*
  %6447 = getelementptr inbounds %struct.anon, %struct.anon* %6446, i32 0, i32 1
  %6448 = load i32, i32* %6447, align 8
  store i32 %6448, i32* %9, align 4
  %6449 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6450 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6449, i32 0, i32 7
  %6451 = load %struct.global_State*, %struct.global_State** %6450, align 8
  %6452 = getelementptr inbounds %struct.global_State, %struct.global_State* %6451, i32 0, i32 3
  %6453 = load i64, i64* %6452, align 8
  %6454 = icmp sgt i64 %6453, 0
  br i1 %6454, label %6455, label %6467

; <label>:6455:                                   ; preds = %6427
  %6456 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6457 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6456, i32 0, i32 6
  %6458 = load %union.StackValue*, %union.StackValue** %6457, align 8
  %6459 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6460 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6459, i32 0, i32 6
  store %union.StackValue* %6458, %union.StackValue** %6460, align 8
  %6461 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %6461)
  %6462 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6463 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6462, i32 0, i32 4
  %6464 = bitcast %union.anon* %6463 to %struct.anon*
  %6465 = getelementptr inbounds %struct.anon, %struct.anon* %6464, i32 0, i32 1
  %6466 = load i32, i32* %6465, align 8
  store i32 %6466, i32* %9, align 4
  br label %6467

; <label>:6467:                                   ; preds = %6455, %6427
  %6468 = load i32, i32* %9, align 4
  %6469 = icmp ne i32 %6468, 0
  br i1 %6469, label %6470, label %6478

; <label>:6470:                                   ; preds = %6467
  %6471 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6472 = load i32*, i32** %8, align 8
  %6473 = call i32 @luaG_traceexec(%struct.lua_State* %6471, i32* %6472)
  store i32 %6473, i32* %9, align 4
  %6474 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6475 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6474, i32 0, i32 0
  %6476 = load %union.StackValue*, %union.StackValue** %6475, align 8
  %6477 = getelementptr inbounds %union.StackValue, %union.StackValue* %6476, i64 1
  store %union.StackValue* %6477, %union.StackValue** %7, align 8
  br label %6478

; <label>:6478:                                   ; preds = %6470, %6467
  %6479 = load i32*, i32** %8, align 8
  %6480 = getelementptr inbounds i32, i32* %6479, i32 1
  store i32* %6480, i32** %8, align 8
  %6481 = load i32, i32* %6479, align 4
  store i32 %6481, i32* %10, align 4
  %6482 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6483 = load i32, i32* %10, align 4
  %6484 = lshr i32 %6483, 7
  %6485 = and i32 %6484, 255
  %6486 = sext i32 %6485 to i64
  %6487 = getelementptr inbounds %union.StackValue, %union.StackValue* %6482, i64 %6486
  store %union.StackValue* %6487, %union.StackValue** %11, align 8
  %6488 = load i32, i32* %10, align 4
  %6489 = lshr i32 %6488, 0
  %6490 = and i32 %6489, 127
  %6491 = zext i32 %6490 to i64
  %6492 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6491
  %6493 = load i8*, i8** %6492, align 8
  br label %8998

; <label>:6494:                                   ; preds = %8998
  %6495 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6496 = getelementptr inbounds %union.StackValue, %union.StackValue* %6495, i64 1
  %6497 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6498 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6497, i32 0, i32 6
  store %union.StackValue* %6496, %union.StackValue** %6498, align 8
  %6499 = load i32*, i32** %8, align 8
  %6500 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6501 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6500, i32 0, i32 4
  %6502 = bitcast %union.anon* %6501 to %struct.anon*
  %6503 = getelementptr inbounds %struct.anon, %struct.anon* %6502, i32 0, i32 0
  store i32* %6499, i32** %6503, align 8
  %6504 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6505 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6504, i32 0, i32 1
  %6506 = load %union.StackValue*, %union.StackValue** %6505, align 8
  %6507 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6508 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6507, i32 0, i32 6
  store %union.StackValue* %6506, %union.StackValue** %6508, align 8
  %6509 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6510 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6511 = call i32 @luaF_close(%struct.lua_State* %6509, %union.StackValue* %6510, i32 0)
  %6512 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6513 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6512, i32 0, i32 4
  %6514 = bitcast %union.anon* %6513 to %struct.anon*
  %6515 = getelementptr inbounds %struct.anon, %struct.anon* %6514, i32 0, i32 1
  %6516 = load i32, i32* %6515, align 8
  store i32 %6516, i32* %9, align 4
  %6517 = load i32, i32* %9, align 4
  %6518 = icmp ne i32 %6517, 0
  br i1 %6518, label %6519, label %6527

; <label>:6519:                                   ; preds = %6494
  %6520 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6521 = load i32*, i32** %8, align 8
  %6522 = call i32 @luaG_traceexec(%struct.lua_State* %6520, i32* %6521)
  store i32 %6522, i32* %9, align 4
  %6523 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6524 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6523, i32 0, i32 0
  %6525 = load %union.StackValue*, %union.StackValue** %6524, align 8
  %6526 = getelementptr inbounds %union.StackValue, %union.StackValue* %6525, i64 1
  store %union.StackValue* %6526, %union.StackValue** %7, align 8
  br label %6527

; <label>:6527:                                   ; preds = %6519, %6494
  %6528 = load i32*, i32** %8, align 8
  %6529 = getelementptr inbounds i32, i32* %6528, i32 1
  store i32* %6529, i32** %8, align 8
  %6530 = load i32, i32* %6528, align 4
  store i32 %6530, i32* %10, align 4
  %6531 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6532 = load i32, i32* %10, align 4
  %6533 = lshr i32 %6532, 7
  %6534 = and i32 %6533, 255
  %6535 = sext i32 %6534 to i64
  %6536 = getelementptr inbounds %union.StackValue, %union.StackValue* %6531, i64 %6535
  store %union.StackValue* %6536, %union.StackValue** %11, align 8
  %6537 = load i32, i32* %10, align 4
  %6538 = lshr i32 %6537, 0
  %6539 = and i32 %6538, 127
  %6540 = zext i32 %6539 to i64
  %6541 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6540
  %6542 = load i8*, i8** %6541, align 8
  br label %8998

; <label>:6543:                                   ; preds = %8998
  %6544 = load i32*, i32** %8, align 8
  %6545 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6546 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6545, i32 0, i32 4
  %6547 = bitcast %union.anon* %6546 to %struct.anon*
  %6548 = getelementptr inbounds %struct.anon, %struct.anon* %6547, i32 0, i32 0
  store i32* %6544, i32** %6548, align 8
  %6549 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6550 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaF_newtbcupval(%struct.lua_State* %6549, %union.StackValue* %6550)
  %6551 = load i32, i32* %9, align 4
  %6552 = icmp ne i32 %6551, 0
  br i1 %6552, label %6553, label %6561

; <label>:6553:                                   ; preds = %6543
  %6554 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6555 = load i32*, i32** %8, align 8
  %6556 = call i32 @luaG_traceexec(%struct.lua_State* %6554, i32* %6555)
  store i32 %6556, i32* %9, align 4
  %6557 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6558 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6557, i32 0, i32 0
  %6559 = load %union.StackValue*, %union.StackValue** %6558, align 8
  %6560 = getelementptr inbounds %union.StackValue, %union.StackValue* %6559, i64 1
  store %union.StackValue* %6560, %union.StackValue** %7, align 8
  br label %6561

; <label>:6561:                                   ; preds = %6553, %6543
  %6562 = load i32*, i32** %8, align 8
  %6563 = getelementptr inbounds i32, i32* %6562, i32 1
  store i32* %6563, i32** %8, align 8
  %6564 = load i32, i32* %6562, align 4
  store i32 %6564, i32* %10, align 4
  %6565 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6566 = load i32, i32* %10, align 4
  %6567 = lshr i32 %6566, 7
  %6568 = and i32 %6567, 255
  %6569 = sext i32 %6568 to i64
  %6570 = getelementptr inbounds %union.StackValue, %union.StackValue* %6565, i64 %6569
  store %union.StackValue* %6570, %union.StackValue** %11, align 8
  %6571 = load i32, i32* %10, align 4
  %6572 = lshr i32 %6571, 0
  %6573 = and i32 %6572, 127
  %6574 = zext i32 %6573 to i64
  %6575 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6574
  %6576 = load i8*, i8** %6575, align 8
  br label %8998

; <label>:6577:                                   ; preds = %8998
  %6578 = load i32, i32* %10, align 4
  %6579 = lshr i32 %6578, 7
  %6580 = and i32 %6579, 33554431
  %6581 = sub nsw i32 %6580, 16777215
  %6582 = add nsw i32 %6581, 0
  %6583 = load i32*, i32** %8, align 8
  %6584 = sext i32 %6582 to i64
  %6585 = getelementptr inbounds i32, i32* %6583, i64 %6584
  store i32* %6585, i32** %8, align 8
  %6586 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6587 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6586, i32 0, i32 4
  %6588 = bitcast %union.anon* %6587 to %struct.anon*
  %6589 = getelementptr inbounds %struct.anon, %struct.anon* %6588, i32 0, i32 1
  %6590 = load i32, i32* %6589, align 8
  store i32 %6590, i32* %9, align 4
  %6591 = load i32, i32* %9, align 4
  %6592 = icmp ne i32 %6591, 0
  br i1 %6592, label %6593, label %6601

; <label>:6593:                                   ; preds = %6577
  %6594 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6595 = load i32*, i32** %8, align 8
  %6596 = call i32 @luaG_traceexec(%struct.lua_State* %6594, i32* %6595)
  store i32 %6596, i32* %9, align 4
  %6597 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6598 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6597, i32 0, i32 0
  %6599 = load %union.StackValue*, %union.StackValue** %6598, align 8
  %6600 = getelementptr inbounds %union.StackValue, %union.StackValue* %6599, i64 1
  store %union.StackValue* %6600, %union.StackValue** %7, align 8
  br label %6601

; <label>:6601:                                   ; preds = %6593, %6577
  %6602 = load i32*, i32** %8, align 8
  %6603 = getelementptr inbounds i32, i32* %6602, i32 1
  store i32* %6603, i32** %8, align 8
  %6604 = load i32, i32* %6602, align 4
  store i32 %6604, i32* %10, align 4
  %6605 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6606 = load i32, i32* %10, align 4
  %6607 = lshr i32 %6606, 7
  %6608 = and i32 %6607, 255
  %6609 = sext i32 %6608 to i64
  %6610 = getelementptr inbounds %union.StackValue, %union.StackValue* %6605, i64 %6609
  store %union.StackValue* %6610, %union.StackValue** %11, align 8
  %6611 = load i32, i32* %10, align 4
  %6612 = lshr i32 %6611, 0
  %6613 = and i32 %6612, 127
  %6614 = zext i32 %6613 to i64
  %6615 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6614
  %6616 = load i8*, i8** %6615, align 8
  br label %8998

; <label>:6617:                                   ; preds = %8998
  %6618 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6619 = load i32, i32* %10, align 4
  %6620 = lshr i32 %6619, 16
  %6621 = and i32 %6620, 255
  %6622 = sext i32 %6621 to i64
  %6623 = getelementptr inbounds %union.StackValue, %union.StackValue* %6618, i64 %6622
  %6624 = bitcast %union.StackValue* %6623 to %struct.TValue*
  store %struct.TValue* %6624, %struct.TValue** %291, align 8
  %6625 = load i32*, i32** %8, align 8
  %6626 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6627 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6626, i32 0, i32 4
  %6628 = bitcast %union.anon* %6627 to %struct.anon*
  %6629 = getelementptr inbounds %struct.anon, %struct.anon* %6628, i32 0, i32 0
  store i32* %6625, i32** %6629, align 8
  %6630 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6631 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6630, i32 0, i32 1
  %6632 = load %union.StackValue*, %union.StackValue** %6631, align 8
  %6633 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6634 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6633, i32 0, i32 6
  store %union.StackValue* %6632, %union.StackValue** %6634, align 8
  %6635 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6636 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6637 = bitcast %union.StackValue* %6636 to %struct.TValue*
  %6638 = load %struct.TValue*, %struct.TValue** %291, align 8
  %6639 = call i32 @luaV_equalobj(%struct.lua_State* %6635, %struct.TValue* %6637, %struct.TValue* %6638)
  store i32 %6639, i32* %290, align 4
  %6640 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6641 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6640, i32 0, i32 4
  %6642 = bitcast %union.anon* %6641 to %struct.anon*
  %6643 = getelementptr inbounds %struct.anon, %struct.anon* %6642, i32 0, i32 1
  %6644 = load i32, i32* %6643, align 8
  store i32 %6644, i32* %9, align 4
  %6645 = load i32, i32* %290, align 4
  %6646 = load i32, i32* %10, align 4
  %6647 = lshr i32 %6646, 15
  %6648 = and i32 %6647, 1
  %6649 = icmp ne i32 %6645, %6648
  br i1 %6649, label %6650, label %6653

; <label>:6650:                                   ; preds = %6617
  %6651 = load i32*, i32** %8, align 8
  %6652 = getelementptr inbounds i32, i32* %6651, i32 1
  store i32* %6652, i32** %8, align 8
  br label %6669

; <label>:6653:                                   ; preds = %6617
  %6654 = load i32*, i32** %8, align 8
  %6655 = load i32, i32* %6654, align 4
  store i32 %6655, i32* %10, align 4
  %6656 = load i32, i32* %10, align 4
  %6657 = lshr i32 %6656, 7
  %6658 = and i32 %6657, 33554431
  %6659 = sub nsw i32 %6658, 16777215
  %6660 = add nsw i32 %6659, 1
  %6661 = load i32*, i32** %8, align 8
  %6662 = sext i32 %6660 to i64
  %6663 = getelementptr inbounds i32, i32* %6661, i64 %6662
  store i32* %6663, i32** %8, align 8
  %6664 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6665 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6664, i32 0, i32 4
  %6666 = bitcast %union.anon* %6665 to %struct.anon*
  %6667 = getelementptr inbounds %struct.anon, %struct.anon* %6666, i32 0, i32 1
  %6668 = load i32, i32* %6667, align 8
  store i32 %6668, i32* %9, align 4
  br label %6669

; <label>:6669:                                   ; preds = %6653, %6650
  %6670 = load i32, i32* %9, align 4
  %6671 = icmp ne i32 %6670, 0
  br i1 %6671, label %6672, label %6680

; <label>:6672:                                   ; preds = %6669
  %6673 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6674 = load i32*, i32** %8, align 8
  %6675 = call i32 @luaG_traceexec(%struct.lua_State* %6673, i32* %6674)
  store i32 %6675, i32* %9, align 4
  %6676 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6677 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6676, i32 0, i32 0
  %6678 = load %union.StackValue*, %union.StackValue** %6677, align 8
  %6679 = getelementptr inbounds %union.StackValue, %union.StackValue* %6678, i64 1
  store %union.StackValue* %6679, %union.StackValue** %7, align 8
  br label %6680

; <label>:6680:                                   ; preds = %6672, %6669
  %6681 = load i32*, i32** %8, align 8
  %6682 = getelementptr inbounds i32, i32* %6681, i32 1
  store i32* %6682, i32** %8, align 8
  %6683 = load i32, i32* %6681, align 4
  store i32 %6683, i32* %10, align 4
  %6684 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6685 = load i32, i32* %10, align 4
  %6686 = lshr i32 %6685, 7
  %6687 = and i32 %6686, 255
  %6688 = sext i32 %6687 to i64
  %6689 = getelementptr inbounds %union.StackValue, %union.StackValue* %6684, i64 %6688
  store %union.StackValue* %6689, %union.StackValue** %11, align 8
  %6690 = load i32, i32* %10, align 4
  %6691 = lshr i32 %6690, 0
  %6692 = and i32 %6691, 127
  %6693 = zext i32 %6692 to i64
  %6694 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6693
  %6695 = load i8*, i8** %6694, align 8
  br label %8998

; <label>:6696:                                   ; preds = %8998
  %6697 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6698 = load i32, i32* %10, align 4
  %6699 = lshr i32 %6698, 16
  %6700 = and i32 %6699, 255
  %6701 = sext i32 %6700 to i64
  %6702 = getelementptr inbounds %union.StackValue, %union.StackValue* %6697, i64 %6701
  %6703 = bitcast %union.StackValue* %6702 to %struct.TValue*
  store %struct.TValue* %6703, %struct.TValue** %293, align 8
  %6704 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6705 = bitcast %union.StackValue* %6704 to %struct.TValue*
  %6706 = getelementptr inbounds %struct.TValue, %struct.TValue* %6705, i32 0, i32 1
  %6707 = load i8, i8* %6706, align 8
  %6708 = zext i8 %6707 to i32
  %6709 = icmp eq i32 %6708, 35
  br i1 %6709, label %6710, label %6728

; <label>:6710:                                   ; preds = %6696
  %6711 = load %struct.TValue*, %struct.TValue** %293, align 8
  %6712 = getelementptr inbounds %struct.TValue, %struct.TValue* %6711, i32 0, i32 1
  %6713 = load i8, i8* %6712, align 8
  %6714 = zext i8 %6713 to i32
  %6715 = icmp eq i32 %6714, 35
  br i1 %6715, label %6716, label %6728

; <label>:6716:                                   ; preds = %6710
  %6717 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6718 = bitcast %union.StackValue* %6717 to %struct.TValue*
  %6719 = getelementptr inbounds %struct.TValue, %struct.TValue* %6718, i32 0, i32 0
  %6720 = bitcast %union.Value* %6719 to i64*
  %6721 = load i64, i64* %6720, align 8
  %6722 = load %struct.TValue*, %struct.TValue** %293, align 8
  %6723 = getelementptr inbounds %struct.TValue, %struct.TValue* %6722, i32 0, i32 0
  %6724 = bitcast %union.Value* %6723 to i64*
  %6725 = load i64, i64* %6724, align 8
  %6726 = icmp slt i64 %6721, %6725
  %6727 = zext i1 %6726 to i32
  store i32 %6727, i32* %292, align 4
  br label %6770

; <label>:6728:                                   ; preds = %6710, %6696
  %6729 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6730 = bitcast %union.StackValue* %6729 to %struct.TValue*
  %6731 = getelementptr inbounds %struct.TValue, %struct.TValue* %6730, i32 0, i32 1
  %6732 = load i8, i8* %6731, align 8
  %6733 = zext i8 %6732 to i32
  %6734 = and i32 %6733, 15
  %6735 = icmp eq i32 %6734, 3
  br i1 %6735, label %6736, label %6748

; <label>:6736:                                   ; preds = %6728
  %6737 = load %struct.TValue*, %struct.TValue** %293, align 8
  %6738 = getelementptr inbounds %struct.TValue, %struct.TValue* %6737, i32 0, i32 1
  %6739 = load i8, i8* %6738, align 8
  %6740 = zext i8 %6739 to i32
  %6741 = and i32 %6740, 15
  %6742 = icmp eq i32 %6741, 3
  br i1 %6742, label %6743, label %6748

; <label>:6743:                                   ; preds = %6736
  %6744 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6745 = bitcast %union.StackValue* %6744 to %struct.TValue*
  %6746 = load %struct.TValue*, %struct.TValue** %293, align 8
  %6747 = call i32 @LTnum(%struct.TValue* %6745, %struct.TValue* %6746)
  store i32 %6747, i32* %292, align 4
  br label %6769

; <label>:6748:                                   ; preds = %6736, %6728
  %6749 = load i32*, i32** %8, align 8
  %6750 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6751 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6750, i32 0, i32 4
  %6752 = bitcast %union.anon* %6751 to %struct.anon*
  %6753 = getelementptr inbounds %struct.anon, %struct.anon* %6752, i32 0, i32 0
  store i32* %6749, i32** %6753, align 8
  %6754 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6755 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6754, i32 0, i32 1
  %6756 = load %union.StackValue*, %union.StackValue** %6755, align 8
  %6757 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6758 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6757, i32 0, i32 6
  store %union.StackValue* %6756, %union.StackValue** %6758, align 8
  %6759 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6760 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6761 = bitcast %union.StackValue* %6760 to %struct.TValue*
  %6762 = load %struct.TValue*, %struct.TValue** %293, align 8
  %6763 = call i32 @lessthanothers(%struct.lua_State* %6759, %struct.TValue* %6761, %struct.TValue* %6762)
  store i32 %6763, i32* %292, align 4
  %6764 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6765 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6764, i32 0, i32 4
  %6766 = bitcast %union.anon* %6765 to %struct.anon*
  %6767 = getelementptr inbounds %struct.anon, %struct.anon* %6766, i32 0, i32 1
  %6768 = load i32, i32* %6767, align 8
  store i32 %6768, i32* %9, align 4
  br label %6769

; <label>:6769:                                   ; preds = %6748, %6743
  br label %6770

; <label>:6770:                                   ; preds = %6769, %6716
  %6771 = load i32, i32* %292, align 4
  %6772 = load i32, i32* %10, align 4
  %6773 = lshr i32 %6772, 15
  %6774 = and i32 %6773, 1
  %6775 = icmp ne i32 %6771, %6774
  br i1 %6775, label %6776, label %6779

; <label>:6776:                                   ; preds = %6770
  %6777 = load i32*, i32** %8, align 8
  %6778 = getelementptr inbounds i32, i32* %6777, i32 1
  store i32* %6778, i32** %8, align 8
  br label %6795

; <label>:6779:                                   ; preds = %6770
  %6780 = load i32*, i32** %8, align 8
  %6781 = load i32, i32* %6780, align 4
  store i32 %6781, i32* %10, align 4
  %6782 = load i32, i32* %10, align 4
  %6783 = lshr i32 %6782, 7
  %6784 = and i32 %6783, 33554431
  %6785 = sub nsw i32 %6784, 16777215
  %6786 = add nsw i32 %6785, 1
  %6787 = load i32*, i32** %8, align 8
  %6788 = sext i32 %6786 to i64
  %6789 = getelementptr inbounds i32, i32* %6787, i64 %6788
  store i32* %6789, i32** %8, align 8
  %6790 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6791 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6790, i32 0, i32 4
  %6792 = bitcast %union.anon* %6791 to %struct.anon*
  %6793 = getelementptr inbounds %struct.anon, %struct.anon* %6792, i32 0, i32 1
  %6794 = load i32, i32* %6793, align 8
  store i32 %6794, i32* %9, align 4
  br label %6795

; <label>:6795:                                   ; preds = %6779, %6776
  %6796 = load i32, i32* %9, align 4
  %6797 = icmp ne i32 %6796, 0
  br i1 %6797, label %6798, label %6806

; <label>:6798:                                   ; preds = %6795
  %6799 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6800 = load i32*, i32** %8, align 8
  %6801 = call i32 @luaG_traceexec(%struct.lua_State* %6799, i32* %6800)
  store i32 %6801, i32* %9, align 4
  %6802 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6803 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6802, i32 0, i32 0
  %6804 = load %union.StackValue*, %union.StackValue** %6803, align 8
  %6805 = getelementptr inbounds %union.StackValue, %union.StackValue* %6804, i64 1
  store %union.StackValue* %6805, %union.StackValue** %7, align 8
  br label %6806

; <label>:6806:                                   ; preds = %6798, %6795
  %6807 = load i32*, i32** %8, align 8
  %6808 = getelementptr inbounds i32, i32* %6807, i32 1
  store i32* %6808, i32** %8, align 8
  %6809 = load i32, i32* %6807, align 4
  store i32 %6809, i32* %10, align 4
  %6810 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6811 = load i32, i32* %10, align 4
  %6812 = lshr i32 %6811, 7
  %6813 = and i32 %6812, 255
  %6814 = sext i32 %6813 to i64
  %6815 = getelementptr inbounds %union.StackValue, %union.StackValue* %6810, i64 %6814
  store %union.StackValue* %6815, %union.StackValue** %11, align 8
  %6816 = load i32, i32* %10, align 4
  %6817 = lshr i32 %6816, 0
  %6818 = and i32 %6817, 127
  %6819 = zext i32 %6818 to i64
  %6820 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6819
  %6821 = load i8*, i8** %6820, align 8
  br label %8998

; <label>:6822:                                   ; preds = %8998
  %6823 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6824 = load i32, i32* %10, align 4
  %6825 = lshr i32 %6824, 16
  %6826 = and i32 %6825, 255
  %6827 = sext i32 %6826 to i64
  %6828 = getelementptr inbounds %union.StackValue, %union.StackValue* %6823, i64 %6827
  %6829 = bitcast %union.StackValue* %6828 to %struct.TValue*
  store %struct.TValue* %6829, %struct.TValue** %295, align 8
  %6830 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6831 = bitcast %union.StackValue* %6830 to %struct.TValue*
  %6832 = getelementptr inbounds %struct.TValue, %struct.TValue* %6831, i32 0, i32 1
  %6833 = load i8, i8* %6832, align 8
  %6834 = zext i8 %6833 to i32
  %6835 = icmp eq i32 %6834, 35
  br i1 %6835, label %6836, label %6854

; <label>:6836:                                   ; preds = %6822
  %6837 = load %struct.TValue*, %struct.TValue** %295, align 8
  %6838 = getelementptr inbounds %struct.TValue, %struct.TValue* %6837, i32 0, i32 1
  %6839 = load i8, i8* %6838, align 8
  %6840 = zext i8 %6839 to i32
  %6841 = icmp eq i32 %6840, 35
  br i1 %6841, label %6842, label %6854

; <label>:6842:                                   ; preds = %6836
  %6843 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6844 = bitcast %union.StackValue* %6843 to %struct.TValue*
  %6845 = getelementptr inbounds %struct.TValue, %struct.TValue* %6844, i32 0, i32 0
  %6846 = bitcast %union.Value* %6845 to i64*
  %6847 = load i64, i64* %6846, align 8
  %6848 = load %struct.TValue*, %struct.TValue** %295, align 8
  %6849 = getelementptr inbounds %struct.TValue, %struct.TValue* %6848, i32 0, i32 0
  %6850 = bitcast %union.Value* %6849 to i64*
  %6851 = load i64, i64* %6850, align 8
  %6852 = icmp sle i64 %6847, %6851
  %6853 = zext i1 %6852 to i32
  store i32 %6853, i32* %294, align 4
  br label %6896

; <label>:6854:                                   ; preds = %6836, %6822
  %6855 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6856 = bitcast %union.StackValue* %6855 to %struct.TValue*
  %6857 = getelementptr inbounds %struct.TValue, %struct.TValue* %6856, i32 0, i32 1
  %6858 = load i8, i8* %6857, align 8
  %6859 = zext i8 %6858 to i32
  %6860 = and i32 %6859, 15
  %6861 = icmp eq i32 %6860, 3
  br i1 %6861, label %6862, label %6874

; <label>:6862:                                   ; preds = %6854
  %6863 = load %struct.TValue*, %struct.TValue** %295, align 8
  %6864 = getelementptr inbounds %struct.TValue, %struct.TValue* %6863, i32 0, i32 1
  %6865 = load i8, i8* %6864, align 8
  %6866 = zext i8 %6865 to i32
  %6867 = and i32 %6866, 15
  %6868 = icmp eq i32 %6867, 3
  br i1 %6868, label %6869, label %6874

; <label>:6869:                                   ; preds = %6862
  %6870 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6871 = bitcast %union.StackValue* %6870 to %struct.TValue*
  %6872 = load %struct.TValue*, %struct.TValue** %295, align 8
  %6873 = call i32 @LEnum(%struct.TValue* %6871, %struct.TValue* %6872)
  store i32 %6873, i32* %294, align 4
  br label %6895

; <label>:6874:                                   ; preds = %6862, %6854
  %6875 = load i32*, i32** %8, align 8
  %6876 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6877 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6876, i32 0, i32 4
  %6878 = bitcast %union.anon* %6877 to %struct.anon*
  %6879 = getelementptr inbounds %struct.anon, %struct.anon* %6878, i32 0, i32 0
  store i32* %6875, i32** %6879, align 8
  %6880 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6881 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6880, i32 0, i32 1
  %6882 = load %union.StackValue*, %union.StackValue** %6881, align 8
  %6883 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6884 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6883, i32 0, i32 6
  store %union.StackValue* %6882, %union.StackValue** %6884, align 8
  %6885 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6886 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6887 = bitcast %union.StackValue* %6886 to %struct.TValue*
  %6888 = load %struct.TValue*, %struct.TValue** %295, align 8
  %6889 = call i32 @lessequalothers(%struct.lua_State* %6885, %struct.TValue* %6887, %struct.TValue* %6888)
  store i32 %6889, i32* %294, align 4
  %6890 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6891 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6890, i32 0, i32 4
  %6892 = bitcast %union.anon* %6891 to %struct.anon*
  %6893 = getelementptr inbounds %struct.anon, %struct.anon* %6892, i32 0, i32 1
  %6894 = load i32, i32* %6893, align 8
  store i32 %6894, i32* %9, align 4
  br label %6895

; <label>:6895:                                   ; preds = %6874, %6869
  br label %6896

; <label>:6896:                                   ; preds = %6895, %6842
  %6897 = load i32, i32* %294, align 4
  %6898 = load i32, i32* %10, align 4
  %6899 = lshr i32 %6898, 15
  %6900 = and i32 %6899, 1
  %6901 = icmp ne i32 %6897, %6900
  br i1 %6901, label %6902, label %6905

; <label>:6902:                                   ; preds = %6896
  %6903 = load i32*, i32** %8, align 8
  %6904 = getelementptr inbounds i32, i32* %6903, i32 1
  store i32* %6904, i32** %8, align 8
  br label %6921

; <label>:6905:                                   ; preds = %6896
  %6906 = load i32*, i32** %8, align 8
  %6907 = load i32, i32* %6906, align 4
  store i32 %6907, i32* %10, align 4
  %6908 = load i32, i32* %10, align 4
  %6909 = lshr i32 %6908, 7
  %6910 = and i32 %6909, 33554431
  %6911 = sub nsw i32 %6910, 16777215
  %6912 = add nsw i32 %6911, 1
  %6913 = load i32*, i32** %8, align 8
  %6914 = sext i32 %6912 to i64
  %6915 = getelementptr inbounds i32, i32* %6913, i64 %6914
  store i32* %6915, i32** %8, align 8
  %6916 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6917 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6916, i32 0, i32 4
  %6918 = bitcast %union.anon* %6917 to %struct.anon*
  %6919 = getelementptr inbounds %struct.anon, %struct.anon* %6918, i32 0, i32 1
  %6920 = load i32, i32* %6919, align 8
  store i32 %6920, i32* %9, align 4
  br label %6921

; <label>:6921:                                   ; preds = %6905, %6902
  %6922 = load i32, i32* %9, align 4
  %6923 = icmp ne i32 %6922, 0
  br i1 %6923, label %6924, label %6932

; <label>:6924:                                   ; preds = %6921
  %6925 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6926 = load i32*, i32** %8, align 8
  %6927 = call i32 @luaG_traceexec(%struct.lua_State* %6925, i32* %6926)
  store i32 %6927, i32* %9, align 4
  %6928 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6929 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6928, i32 0, i32 0
  %6930 = load %union.StackValue*, %union.StackValue** %6929, align 8
  %6931 = getelementptr inbounds %union.StackValue, %union.StackValue* %6930, i64 1
  store %union.StackValue* %6931, %union.StackValue** %7, align 8
  br label %6932

; <label>:6932:                                   ; preds = %6924, %6921
  %6933 = load i32*, i32** %8, align 8
  %6934 = getelementptr inbounds i32, i32* %6933, i32 1
  store i32* %6934, i32** %8, align 8
  %6935 = load i32, i32* %6933, align 4
  store i32 %6935, i32* %10, align 4
  %6936 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6937 = load i32, i32* %10, align 4
  %6938 = lshr i32 %6937, 7
  %6939 = and i32 %6938, 255
  %6940 = sext i32 %6939 to i64
  %6941 = getelementptr inbounds %union.StackValue, %union.StackValue* %6936, i64 %6940
  store %union.StackValue* %6941, %union.StackValue** %11, align 8
  %6942 = load i32, i32* %10, align 4
  %6943 = lshr i32 %6942, 0
  %6944 = and i32 %6943, 127
  %6945 = zext i32 %6944 to i64
  %6946 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %6945
  %6947 = load i8*, i8** %6946, align 8
  br label %8998

; <label>:6948:                                   ; preds = %8998
  %6949 = load %struct.TValue*, %struct.TValue** %6, align 8
  %6950 = load i32, i32* %10, align 4
  %6951 = lshr i32 %6950, 16
  %6952 = and i32 %6951, 255
  %6953 = sext i32 %6952 to i64
  %6954 = getelementptr inbounds %struct.TValue, %struct.TValue* %6949, i64 %6953
  store %struct.TValue* %6954, %struct.TValue** %296, align 8
  %6955 = load %union.StackValue*, %union.StackValue** %11, align 8
  %6956 = bitcast %union.StackValue* %6955 to %struct.TValue*
  %6957 = load %struct.TValue*, %struct.TValue** %296, align 8
  %6958 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %6956, %struct.TValue* %6957)
  store i32 %6958, i32* %297, align 4
  %6959 = load i32, i32* %297, align 4
  %6960 = load i32, i32* %10, align 4
  %6961 = lshr i32 %6960, 15
  %6962 = and i32 %6961, 1
  %6963 = icmp ne i32 %6959, %6962
  br i1 %6963, label %6964, label %6967

; <label>:6964:                                   ; preds = %6948
  %6965 = load i32*, i32** %8, align 8
  %6966 = getelementptr inbounds i32, i32* %6965, i32 1
  store i32* %6966, i32** %8, align 8
  br label %6983

; <label>:6967:                                   ; preds = %6948
  %6968 = load i32*, i32** %8, align 8
  %6969 = load i32, i32* %6968, align 4
  store i32 %6969, i32* %10, align 4
  %6970 = load i32, i32* %10, align 4
  %6971 = lshr i32 %6970, 7
  %6972 = and i32 %6971, 33554431
  %6973 = sub nsw i32 %6972, 16777215
  %6974 = add nsw i32 %6973, 1
  %6975 = load i32*, i32** %8, align 8
  %6976 = sext i32 %6974 to i64
  %6977 = getelementptr inbounds i32, i32* %6975, i64 %6976
  store i32* %6977, i32** %8, align 8
  %6978 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6979 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6978, i32 0, i32 4
  %6980 = bitcast %union.anon* %6979 to %struct.anon*
  %6981 = getelementptr inbounds %struct.anon, %struct.anon* %6980, i32 0, i32 1
  %6982 = load i32, i32* %6981, align 8
  store i32 %6982, i32* %9, align 4
  br label %6983

; <label>:6983:                                   ; preds = %6967, %6964
  %6984 = load i32, i32* %9, align 4
  %6985 = icmp ne i32 %6984, 0
  br i1 %6985, label %6986, label %6994

; <label>:6986:                                   ; preds = %6983
  %6987 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6988 = load i32*, i32** %8, align 8
  %6989 = call i32 @luaG_traceexec(%struct.lua_State* %6987, i32* %6988)
  store i32 %6989, i32* %9, align 4
  %6990 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %6991 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6990, i32 0, i32 0
  %6992 = load %union.StackValue*, %union.StackValue** %6991, align 8
  %6993 = getelementptr inbounds %union.StackValue, %union.StackValue* %6992, i64 1
  store %union.StackValue* %6993, %union.StackValue** %7, align 8
  br label %6994

; <label>:6994:                                   ; preds = %6986, %6983
  %6995 = load i32*, i32** %8, align 8
  %6996 = getelementptr inbounds i32, i32* %6995, i32 1
  store i32* %6996, i32** %8, align 8
  %6997 = load i32, i32* %6995, align 4
  store i32 %6997, i32* %10, align 4
  %6998 = load %union.StackValue*, %union.StackValue** %7, align 8
  %6999 = load i32, i32* %10, align 4
  %7000 = lshr i32 %6999, 7
  %7001 = and i32 %7000, 255
  %7002 = sext i32 %7001 to i64
  %7003 = getelementptr inbounds %union.StackValue, %union.StackValue* %6998, i64 %7002
  store %union.StackValue* %7003, %union.StackValue** %11, align 8
  %7004 = load i32, i32* %10, align 4
  %7005 = lshr i32 %7004, 0
  %7006 = and i32 %7005, 127
  %7007 = zext i32 %7006 to i64
  %7008 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7007
  %7009 = load i8*, i8** %7008, align 8
  br label %8998

; <label>:7010:                                   ; preds = %8998
  %7011 = load i32, i32* %10, align 4
  %7012 = lshr i32 %7011, 16
  %7013 = and i32 %7012, 255
  %7014 = sub nsw i32 %7013, 127
  store i32 %7014, i32* %299, align 4
  %7015 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7016 = bitcast %union.StackValue* %7015 to %struct.TValue*
  %7017 = getelementptr inbounds %struct.TValue, %struct.TValue* %7016, i32 0, i32 1
  %7018 = load i8, i8* %7017, align 8
  %7019 = zext i8 %7018 to i32
  %7020 = icmp eq i32 %7019, 35
  br i1 %7020, label %7021, label %7031

; <label>:7021:                                   ; preds = %7010
  %7022 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7023 = bitcast %union.StackValue* %7022 to %struct.TValue*
  %7024 = getelementptr inbounds %struct.TValue, %struct.TValue* %7023, i32 0, i32 0
  %7025 = bitcast %union.Value* %7024 to i64*
  %7026 = load i64, i64* %7025, align 8
  %7027 = load i32, i32* %299, align 4
  %7028 = sext i32 %7027 to i64
  %7029 = icmp eq i64 %7026, %7028
  %7030 = zext i1 %7029 to i32
  store i32 %7030, i32* %298, align 4
  br label %7050

; <label>:7031:                                   ; preds = %7010
  %7032 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7033 = bitcast %union.StackValue* %7032 to %struct.TValue*
  %7034 = getelementptr inbounds %struct.TValue, %struct.TValue* %7033, i32 0, i32 1
  %7035 = load i8, i8* %7034, align 8
  %7036 = zext i8 %7035 to i32
  %7037 = icmp eq i32 %7036, 19
  br i1 %7037, label %7038, label %7048

; <label>:7038:                                   ; preds = %7031
  %7039 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7040 = bitcast %union.StackValue* %7039 to %struct.TValue*
  %7041 = getelementptr inbounds %struct.TValue, %struct.TValue* %7040, i32 0, i32 0
  %7042 = bitcast %union.Value* %7041 to double*
  %7043 = load double, double* %7042, align 8
  %7044 = load i32, i32* %299, align 4
  %7045 = sitofp i32 %7044 to double
  %7046 = fcmp oeq double %7043, %7045
  %7047 = zext i1 %7046 to i32
  store i32 %7047, i32* %298, align 4
  br label %7049

; <label>:7048:                                   ; preds = %7031
  store i32 0, i32* %298, align 4
  br label %7049

; <label>:7049:                                   ; preds = %7048, %7038
  br label %7050

; <label>:7050:                                   ; preds = %7049, %7021
  %7051 = load i32, i32* %298, align 4
  %7052 = load i32, i32* %10, align 4
  %7053 = lshr i32 %7052, 15
  %7054 = and i32 %7053, 1
  %7055 = icmp ne i32 %7051, %7054
  br i1 %7055, label %7056, label %7059

; <label>:7056:                                   ; preds = %7050
  %7057 = load i32*, i32** %8, align 8
  %7058 = getelementptr inbounds i32, i32* %7057, i32 1
  store i32* %7058, i32** %8, align 8
  br label %7075

; <label>:7059:                                   ; preds = %7050
  %7060 = load i32*, i32** %8, align 8
  %7061 = load i32, i32* %7060, align 4
  store i32 %7061, i32* %10, align 4
  %7062 = load i32, i32* %10, align 4
  %7063 = lshr i32 %7062, 7
  %7064 = and i32 %7063, 33554431
  %7065 = sub nsw i32 %7064, 16777215
  %7066 = add nsw i32 %7065, 1
  %7067 = load i32*, i32** %8, align 8
  %7068 = sext i32 %7066 to i64
  %7069 = getelementptr inbounds i32, i32* %7067, i64 %7068
  store i32* %7069, i32** %8, align 8
  %7070 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7071 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7070, i32 0, i32 4
  %7072 = bitcast %union.anon* %7071 to %struct.anon*
  %7073 = getelementptr inbounds %struct.anon, %struct.anon* %7072, i32 0, i32 1
  %7074 = load i32, i32* %7073, align 8
  store i32 %7074, i32* %9, align 4
  br label %7075

; <label>:7075:                                   ; preds = %7059, %7056
  %7076 = load i32, i32* %9, align 4
  %7077 = icmp ne i32 %7076, 0
  br i1 %7077, label %7078, label %7086

; <label>:7078:                                   ; preds = %7075
  %7079 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7080 = load i32*, i32** %8, align 8
  %7081 = call i32 @luaG_traceexec(%struct.lua_State* %7079, i32* %7080)
  store i32 %7081, i32* %9, align 4
  %7082 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7083 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7082, i32 0, i32 0
  %7084 = load %union.StackValue*, %union.StackValue** %7083, align 8
  %7085 = getelementptr inbounds %union.StackValue, %union.StackValue* %7084, i64 1
  store %union.StackValue* %7085, %union.StackValue** %7, align 8
  br label %7086

; <label>:7086:                                   ; preds = %7078, %7075
  %7087 = load i32*, i32** %8, align 8
  %7088 = getelementptr inbounds i32, i32* %7087, i32 1
  store i32* %7088, i32** %8, align 8
  %7089 = load i32, i32* %7087, align 4
  store i32 %7089, i32* %10, align 4
  %7090 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7091 = load i32, i32* %10, align 4
  %7092 = lshr i32 %7091, 7
  %7093 = and i32 %7092, 255
  %7094 = sext i32 %7093 to i64
  %7095 = getelementptr inbounds %union.StackValue, %union.StackValue* %7090, i64 %7094
  store %union.StackValue* %7095, %union.StackValue** %11, align 8
  %7096 = load i32, i32* %10, align 4
  %7097 = lshr i32 %7096, 0
  %7098 = and i32 %7097, 127
  %7099 = zext i32 %7098 to i64
  %7100 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7099
  %7101 = load i8*, i8** %7100, align 8
  br label %8998

; <label>:7102:                                   ; preds = %8998
  %7103 = load i32, i32* %10, align 4
  %7104 = lshr i32 %7103, 16
  %7105 = and i32 %7104, 255
  %7106 = sub nsw i32 %7105, 127
  store i32 %7106, i32* %301, align 4
  %7107 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7108 = bitcast %union.StackValue* %7107 to %struct.TValue*
  %7109 = getelementptr inbounds %struct.TValue, %struct.TValue* %7108, i32 0, i32 1
  %7110 = load i8, i8* %7109, align 8
  %7111 = zext i8 %7110 to i32
  %7112 = icmp eq i32 %7111, 35
  br i1 %7112, label %7113, label %7123

; <label>:7113:                                   ; preds = %7102
  %7114 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7115 = bitcast %union.StackValue* %7114 to %struct.TValue*
  %7116 = getelementptr inbounds %struct.TValue, %struct.TValue* %7115, i32 0, i32 0
  %7117 = bitcast %union.Value* %7116 to i64*
  %7118 = load i64, i64* %7117, align 8
  %7119 = load i32, i32* %301, align 4
  %7120 = sext i32 %7119 to i64
  %7121 = icmp slt i64 %7118, %7120
  %7122 = zext i1 %7121 to i32
  store i32 %7122, i32* %300, align 4
  br label %7166

; <label>:7123:                                   ; preds = %7102
  %7124 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7125 = bitcast %union.StackValue* %7124 to %struct.TValue*
  %7126 = getelementptr inbounds %struct.TValue, %struct.TValue* %7125, i32 0, i32 1
  %7127 = load i8, i8* %7126, align 8
  %7128 = zext i8 %7127 to i32
  %7129 = icmp eq i32 %7128, 19
  br i1 %7129, label %7130, label %7140

; <label>:7130:                                   ; preds = %7123
  %7131 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7132 = bitcast %union.StackValue* %7131 to %struct.TValue*
  %7133 = getelementptr inbounds %struct.TValue, %struct.TValue* %7132, i32 0, i32 0
  %7134 = bitcast %union.Value* %7133 to double*
  %7135 = load double, double* %7134, align 8
  %7136 = load i32, i32* %301, align 4
  %7137 = sitofp i32 %7136 to double
  %7138 = fcmp olt double %7135, %7137
  %7139 = zext i1 %7138 to i32
  store i32 %7139, i32* %300, align 4
  br label %7165

; <label>:7140:                                   ; preds = %7123
  %7141 = load i32, i32* %10, align 4
  %7142 = lshr i32 %7141, 24
  %7143 = and i32 %7142, 255
  store i32 %7143, i32* %302, align 4
  %7144 = load i32*, i32** %8, align 8
  %7145 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7146 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7145, i32 0, i32 4
  %7147 = bitcast %union.anon* %7146 to %struct.anon*
  %7148 = getelementptr inbounds %struct.anon, %struct.anon* %7147, i32 0, i32 0
  store i32* %7144, i32** %7148, align 8
  %7149 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7150 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7149, i32 0, i32 1
  %7151 = load %union.StackValue*, %union.StackValue** %7150, align 8
  %7152 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7152, i32 0, i32 6
  store %union.StackValue* %7151, %union.StackValue** %7153, align 8
  %7154 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7155 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7156 = bitcast %union.StackValue* %7155 to %struct.TValue*
  %7157 = load i32, i32* %301, align 4
  %7158 = load i32, i32* %302, align 4
  %7159 = call i32 @luaT_callorderiTM(%struct.lua_State* %7154, %struct.TValue* %7156, i32 %7157, i32 0, i32 %7158, i32 20)
  store i32 %7159, i32* %300, align 4
  %7160 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7161 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7160, i32 0, i32 4
  %7162 = bitcast %union.anon* %7161 to %struct.anon*
  %7163 = getelementptr inbounds %struct.anon, %struct.anon* %7162, i32 0, i32 1
  %7164 = load i32, i32* %7163, align 8
  store i32 %7164, i32* %9, align 4
  br label %7165

; <label>:7165:                                   ; preds = %7140, %7130
  br label %7166

; <label>:7166:                                   ; preds = %7165, %7113
  %7167 = load i32, i32* %300, align 4
  %7168 = load i32, i32* %10, align 4
  %7169 = lshr i32 %7168, 15
  %7170 = and i32 %7169, 1
  %7171 = icmp ne i32 %7167, %7170
  br i1 %7171, label %7172, label %7175

; <label>:7172:                                   ; preds = %7166
  %7173 = load i32*, i32** %8, align 8
  %7174 = getelementptr inbounds i32, i32* %7173, i32 1
  store i32* %7174, i32** %8, align 8
  br label %7191

; <label>:7175:                                   ; preds = %7166
  %7176 = load i32*, i32** %8, align 8
  %7177 = load i32, i32* %7176, align 4
  store i32 %7177, i32* %10, align 4
  %7178 = load i32, i32* %10, align 4
  %7179 = lshr i32 %7178, 7
  %7180 = and i32 %7179, 33554431
  %7181 = sub nsw i32 %7180, 16777215
  %7182 = add nsw i32 %7181, 1
  %7183 = load i32*, i32** %8, align 8
  %7184 = sext i32 %7182 to i64
  %7185 = getelementptr inbounds i32, i32* %7183, i64 %7184
  store i32* %7185, i32** %8, align 8
  %7186 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7187 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7186, i32 0, i32 4
  %7188 = bitcast %union.anon* %7187 to %struct.anon*
  %7189 = getelementptr inbounds %struct.anon, %struct.anon* %7188, i32 0, i32 1
  %7190 = load i32, i32* %7189, align 8
  store i32 %7190, i32* %9, align 4
  br label %7191

; <label>:7191:                                   ; preds = %7175, %7172
  %7192 = load i32, i32* %9, align 4
  %7193 = icmp ne i32 %7192, 0
  br i1 %7193, label %7194, label %7202

; <label>:7194:                                   ; preds = %7191
  %7195 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7196 = load i32*, i32** %8, align 8
  %7197 = call i32 @luaG_traceexec(%struct.lua_State* %7195, i32* %7196)
  store i32 %7197, i32* %9, align 4
  %7198 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7199 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7198, i32 0, i32 0
  %7200 = load %union.StackValue*, %union.StackValue** %7199, align 8
  %7201 = getelementptr inbounds %union.StackValue, %union.StackValue* %7200, i64 1
  store %union.StackValue* %7201, %union.StackValue** %7, align 8
  br label %7202

; <label>:7202:                                   ; preds = %7194, %7191
  %7203 = load i32*, i32** %8, align 8
  %7204 = getelementptr inbounds i32, i32* %7203, i32 1
  store i32* %7204, i32** %8, align 8
  %7205 = load i32, i32* %7203, align 4
  store i32 %7205, i32* %10, align 4
  %7206 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7207 = load i32, i32* %10, align 4
  %7208 = lshr i32 %7207, 7
  %7209 = and i32 %7208, 255
  %7210 = sext i32 %7209 to i64
  %7211 = getelementptr inbounds %union.StackValue, %union.StackValue* %7206, i64 %7210
  store %union.StackValue* %7211, %union.StackValue** %11, align 8
  %7212 = load i32, i32* %10, align 4
  %7213 = lshr i32 %7212, 0
  %7214 = and i32 %7213, 127
  %7215 = zext i32 %7214 to i64
  %7216 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7215
  %7217 = load i8*, i8** %7216, align 8
  br label %8998

; <label>:7218:                                   ; preds = %8998
  %7219 = load i32, i32* %10, align 4
  %7220 = lshr i32 %7219, 16
  %7221 = and i32 %7220, 255
  %7222 = sub nsw i32 %7221, 127
  store i32 %7222, i32* %304, align 4
  %7223 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7224 = bitcast %union.StackValue* %7223 to %struct.TValue*
  %7225 = getelementptr inbounds %struct.TValue, %struct.TValue* %7224, i32 0, i32 1
  %7226 = load i8, i8* %7225, align 8
  %7227 = zext i8 %7226 to i32
  %7228 = icmp eq i32 %7227, 35
  br i1 %7228, label %7229, label %7239

; <label>:7229:                                   ; preds = %7218
  %7230 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7231 = bitcast %union.StackValue* %7230 to %struct.TValue*
  %7232 = getelementptr inbounds %struct.TValue, %struct.TValue* %7231, i32 0, i32 0
  %7233 = bitcast %union.Value* %7232 to i64*
  %7234 = load i64, i64* %7233, align 8
  %7235 = load i32, i32* %304, align 4
  %7236 = sext i32 %7235 to i64
  %7237 = icmp sle i64 %7234, %7236
  %7238 = zext i1 %7237 to i32
  store i32 %7238, i32* %303, align 4
  br label %7282

; <label>:7239:                                   ; preds = %7218
  %7240 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7241 = bitcast %union.StackValue* %7240 to %struct.TValue*
  %7242 = getelementptr inbounds %struct.TValue, %struct.TValue* %7241, i32 0, i32 1
  %7243 = load i8, i8* %7242, align 8
  %7244 = zext i8 %7243 to i32
  %7245 = icmp eq i32 %7244, 19
  br i1 %7245, label %7246, label %7256

; <label>:7246:                                   ; preds = %7239
  %7247 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7248 = bitcast %union.StackValue* %7247 to %struct.TValue*
  %7249 = getelementptr inbounds %struct.TValue, %struct.TValue* %7248, i32 0, i32 0
  %7250 = bitcast %union.Value* %7249 to double*
  %7251 = load double, double* %7250, align 8
  %7252 = load i32, i32* %304, align 4
  %7253 = sitofp i32 %7252 to double
  %7254 = fcmp ole double %7251, %7253
  %7255 = zext i1 %7254 to i32
  store i32 %7255, i32* %303, align 4
  br label %7281

; <label>:7256:                                   ; preds = %7239
  %7257 = load i32, i32* %10, align 4
  %7258 = lshr i32 %7257, 24
  %7259 = and i32 %7258, 255
  store i32 %7259, i32* %305, align 4
  %7260 = load i32*, i32** %8, align 8
  %7261 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7262 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7261, i32 0, i32 4
  %7263 = bitcast %union.anon* %7262 to %struct.anon*
  %7264 = getelementptr inbounds %struct.anon, %struct.anon* %7263, i32 0, i32 0
  store i32* %7260, i32** %7264, align 8
  %7265 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7266 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7265, i32 0, i32 1
  %7267 = load %union.StackValue*, %union.StackValue** %7266, align 8
  %7268 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7269 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7268, i32 0, i32 6
  store %union.StackValue* %7267, %union.StackValue** %7269, align 8
  %7270 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7271 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7272 = bitcast %union.StackValue* %7271 to %struct.TValue*
  %7273 = load i32, i32* %304, align 4
  %7274 = load i32, i32* %305, align 4
  %7275 = call i32 @luaT_callorderiTM(%struct.lua_State* %7270, %struct.TValue* %7272, i32 %7273, i32 0, i32 %7274, i32 21)
  store i32 %7275, i32* %303, align 4
  %7276 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7277 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7276, i32 0, i32 4
  %7278 = bitcast %union.anon* %7277 to %struct.anon*
  %7279 = getelementptr inbounds %struct.anon, %struct.anon* %7278, i32 0, i32 1
  %7280 = load i32, i32* %7279, align 8
  store i32 %7280, i32* %9, align 4
  br label %7281

; <label>:7281:                                   ; preds = %7256, %7246
  br label %7282

; <label>:7282:                                   ; preds = %7281, %7229
  %7283 = load i32, i32* %303, align 4
  %7284 = load i32, i32* %10, align 4
  %7285 = lshr i32 %7284, 15
  %7286 = and i32 %7285, 1
  %7287 = icmp ne i32 %7283, %7286
  br i1 %7287, label %7288, label %7291

; <label>:7288:                                   ; preds = %7282
  %7289 = load i32*, i32** %8, align 8
  %7290 = getelementptr inbounds i32, i32* %7289, i32 1
  store i32* %7290, i32** %8, align 8
  br label %7307

; <label>:7291:                                   ; preds = %7282
  %7292 = load i32*, i32** %8, align 8
  %7293 = load i32, i32* %7292, align 4
  store i32 %7293, i32* %10, align 4
  %7294 = load i32, i32* %10, align 4
  %7295 = lshr i32 %7294, 7
  %7296 = and i32 %7295, 33554431
  %7297 = sub nsw i32 %7296, 16777215
  %7298 = add nsw i32 %7297, 1
  %7299 = load i32*, i32** %8, align 8
  %7300 = sext i32 %7298 to i64
  %7301 = getelementptr inbounds i32, i32* %7299, i64 %7300
  store i32* %7301, i32** %8, align 8
  %7302 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7303 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7302, i32 0, i32 4
  %7304 = bitcast %union.anon* %7303 to %struct.anon*
  %7305 = getelementptr inbounds %struct.anon, %struct.anon* %7304, i32 0, i32 1
  %7306 = load i32, i32* %7305, align 8
  store i32 %7306, i32* %9, align 4
  br label %7307

; <label>:7307:                                   ; preds = %7291, %7288
  %7308 = load i32, i32* %9, align 4
  %7309 = icmp ne i32 %7308, 0
  br i1 %7309, label %7310, label %7318

; <label>:7310:                                   ; preds = %7307
  %7311 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7312 = load i32*, i32** %8, align 8
  %7313 = call i32 @luaG_traceexec(%struct.lua_State* %7311, i32* %7312)
  store i32 %7313, i32* %9, align 4
  %7314 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7315 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7314, i32 0, i32 0
  %7316 = load %union.StackValue*, %union.StackValue** %7315, align 8
  %7317 = getelementptr inbounds %union.StackValue, %union.StackValue* %7316, i64 1
  store %union.StackValue* %7317, %union.StackValue** %7, align 8
  br label %7318

; <label>:7318:                                   ; preds = %7310, %7307
  %7319 = load i32*, i32** %8, align 8
  %7320 = getelementptr inbounds i32, i32* %7319, i32 1
  store i32* %7320, i32** %8, align 8
  %7321 = load i32, i32* %7319, align 4
  store i32 %7321, i32* %10, align 4
  %7322 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7323 = load i32, i32* %10, align 4
  %7324 = lshr i32 %7323, 7
  %7325 = and i32 %7324, 255
  %7326 = sext i32 %7325 to i64
  %7327 = getelementptr inbounds %union.StackValue, %union.StackValue* %7322, i64 %7326
  store %union.StackValue* %7327, %union.StackValue** %11, align 8
  %7328 = load i32, i32* %10, align 4
  %7329 = lshr i32 %7328, 0
  %7330 = and i32 %7329, 127
  %7331 = zext i32 %7330 to i64
  %7332 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7331
  %7333 = load i8*, i8** %7332, align 8
  br label %8998

; <label>:7334:                                   ; preds = %8998
  %7335 = load i32, i32* %10, align 4
  %7336 = lshr i32 %7335, 16
  %7337 = and i32 %7336, 255
  %7338 = sub nsw i32 %7337, 127
  store i32 %7338, i32* %307, align 4
  %7339 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7340 = bitcast %union.StackValue* %7339 to %struct.TValue*
  %7341 = getelementptr inbounds %struct.TValue, %struct.TValue* %7340, i32 0, i32 1
  %7342 = load i8, i8* %7341, align 8
  %7343 = zext i8 %7342 to i32
  %7344 = icmp eq i32 %7343, 35
  br i1 %7344, label %7345, label %7355

; <label>:7345:                                   ; preds = %7334
  %7346 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7347 = bitcast %union.StackValue* %7346 to %struct.TValue*
  %7348 = getelementptr inbounds %struct.TValue, %struct.TValue* %7347, i32 0, i32 0
  %7349 = bitcast %union.Value* %7348 to i64*
  %7350 = load i64, i64* %7349, align 8
  %7351 = load i32, i32* %307, align 4
  %7352 = sext i32 %7351 to i64
  %7353 = icmp sgt i64 %7350, %7352
  %7354 = zext i1 %7353 to i32
  store i32 %7354, i32* %306, align 4
  br label %7398

; <label>:7355:                                   ; preds = %7334
  %7356 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7357 = bitcast %union.StackValue* %7356 to %struct.TValue*
  %7358 = getelementptr inbounds %struct.TValue, %struct.TValue* %7357, i32 0, i32 1
  %7359 = load i8, i8* %7358, align 8
  %7360 = zext i8 %7359 to i32
  %7361 = icmp eq i32 %7360, 19
  br i1 %7361, label %7362, label %7372

; <label>:7362:                                   ; preds = %7355
  %7363 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7364 = bitcast %union.StackValue* %7363 to %struct.TValue*
  %7365 = getelementptr inbounds %struct.TValue, %struct.TValue* %7364, i32 0, i32 0
  %7366 = bitcast %union.Value* %7365 to double*
  %7367 = load double, double* %7366, align 8
  %7368 = load i32, i32* %307, align 4
  %7369 = sitofp i32 %7368 to double
  %7370 = fcmp ogt double %7367, %7369
  %7371 = zext i1 %7370 to i32
  store i32 %7371, i32* %306, align 4
  br label %7397

; <label>:7372:                                   ; preds = %7355
  %7373 = load i32, i32* %10, align 4
  %7374 = lshr i32 %7373, 24
  %7375 = and i32 %7374, 255
  store i32 %7375, i32* %308, align 4
  %7376 = load i32*, i32** %8, align 8
  %7377 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7378 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7377, i32 0, i32 4
  %7379 = bitcast %union.anon* %7378 to %struct.anon*
  %7380 = getelementptr inbounds %struct.anon, %struct.anon* %7379, i32 0, i32 0
  store i32* %7376, i32** %7380, align 8
  %7381 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7382 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7381, i32 0, i32 1
  %7383 = load %union.StackValue*, %union.StackValue** %7382, align 8
  %7384 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7385 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7384, i32 0, i32 6
  store %union.StackValue* %7383, %union.StackValue** %7385, align 8
  %7386 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7387 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7388 = bitcast %union.StackValue* %7387 to %struct.TValue*
  %7389 = load i32, i32* %307, align 4
  %7390 = load i32, i32* %308, align 4
  %7391 = call i32 @luaT_callorderiTM(%struct.lua_State* %7386, %struct.TValue* %7388, i32 %7389, i32 1, i32 %7390, i32 20)
  store i32 %7391, i32* %306, align 4
  %7392 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7393 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7392, i32 0, i32 4
  %7394 = bitcast %union.anon* %7393 to %struct.anon*
  %7395 = getelementptr inbounds %struct.anon, %struct.anon* %7394, i32 0, i32 1
  %7396 = load i32, i32* %7395, align 8
  store i32 %7396, i32* %9, align 4
  br label %7397

; <label>:7397:                                   ; preds = %7372, %7362
  br label %7398

; <label>:7398:                                   ; preds = %7397, %7345
  %7399 = load i32, i32* %306, align 4
  %7400 = load i32, i32* %10, align 4
  %7401 = lshr i32 %7400, 15
  %7402 = and i32 %7401, 1
  %7403 = icmp ne i32 %7399, %7402
  br i1 %7403, label %7404, label %7407

; <label>:7404:                                   ; preds = %7398
  %7405 = load i32*, i32** %8, align 8
  %7406 = getelementptr inbounds i32, i32* %7405, i32 1
  store i32* %7406, i32** %8, align 8
  br label %7423

; <label>:7407:                                   ; preds = %7398
  %7408 = load i32*, i32** %8, align 8
  %7409 = load i32, i32* %7408, align 4
  store i32 %7409, i32* %10, align 4
  %7410 = load i32, i32* %10, align 4
  %7411 = lshr i32 %7410, 7
  %7412 = and i32 %7411, 33554431
  %7413 = sub nsw i32 %7412, 16777215
  %7414 = add nsw i32 %7413, 1
  %7415 = load i32*, i32** %8, align 8
  %7416 = sext i32 %7414 to i64
  %7417 = getelementptr inbounds i32, i32* %7415, i64 %7416
  store i32* %7417, i32** %8, align 8
  %7418 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7419 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7418, i32 0, i32 4
  %7420 = bitcast %union.anon* %7419 to %struct.anon*
  %7421 = getelementptr inbounds %struct.anon, %struct.anon* %7420, i32 0, i32 1
  %7422 = load i32, i32* %7421, align 8
  store i32 %7422, i32* %9, align 4
  br label %7423

; <label>:7423:                                   ; preds = %7407, %7404
  %7424 = load i32, i32* %9, align 4
  %7425 = icmp ne i32 %7424, 0
  br i1 %7425, label %7426, label %7434

; <label>:7426:                                   ; preds = %7423
  %7427 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7428 = load i32*, i32** %8, align 8
  %7429 = call i32 @luaG_traceexec(%struct.lua_State* %7427, i32* %7428)
  store i32 %7429, i32* %9, align 4
  %7430 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7431 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7430, i32 0, i32 0
  %7432 = load %union.StackValue*, %union.StackValue** %7431, align 8
  %7433 = getelementptr inbounds %union.StackValue, %union.StackValue* %7432, i64 1
  store %union.StackValue* %7433, %union.StackValue** %7, align 8
  br label %7434

; <label>:7434:                                   ; preds = %7426, %7423
  %7435 = load i32*, i32** %8, align 8
  %7436 = getelementptr inbounds i32, i32* %7435, i32 1
  store i32* %7436, i32** %8, align 8
  %7437 = load i32, i32* %7435, align 4
  store i32 %7437, i32* %10, align 4
  %7438 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7439 = load i32, i32* %10, align 4
  %7440 = lshr i32 %7439, 7
  %7441 = and i32 %7440, 255
  %7442 = sext i32 %7441 to i64
  %7443 = getelementptr inbounds %union.StackValue, %union.StackValue* %7438, i64 %7442
  store %union.StackValue* %7443, %union.StackValue** %11, align 8
  %7444 = load i32, i32* %10, align 4
  %7445 = lshr i32 %7444, 0
  %7446 = and i32 %7445, 127
  %7447 = zext i32 %7446 to i64
  %7448 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7447
  %7449 = load i8*, i8** %7448, align 8
  br label %8998

; <label>:7450:                                   ; preds = %8998
  %7451 = load i32, i32* %10, align 4
  %7452 = lshr i32 %7451, 16
  %7453 = and i32 %7452, 255
  %7454 = sub nsw i32 %7453, 127
  store i32 %7454, i32* %310, align 4
  %7455 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7456 = bitcast %union.StackValue* %7455 to %struct.TValue*
  %7457 = getelementptr inbounds %struct.TValue, %struct.TValue* %7456, i32 0, i32 1
  %7458 = load i8, i8* %7457, align 8
  %7459 = zext i8 %7458 to i32
  %7460 = icmp eq i32 %7459, 35
  br i1 %7460, label %7461, label %7471

; <label>:7461:                                   ; preds = %7450
  %7462 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7463 = bitcast %union.StackValue* %7462 to %struct.TValue*
  %7464 = getelementptr inbounds %struct.TValue, %struct.TValue* %7463, i32 0, i32 0
  %7465 = bitcast %union.Value* %7464 to i64*
  %7466 = load i64, i64* %7465, align 8
  %7467 = load i32, i32* %310, align 4
  %7468 = sext i32 %7467 to i64
  %7469 = icmp sge i64 %7466, %7468
  %7470 = zext i1 %7469 to i32
  store i32 %7470, i32* %309, align 4
  br label %7514

; <label>:7471:                                   ; preds = %7450
  %7472 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7473 = bitcast %union.StackValue* %7472 to %struct.TValue*
  %7474 = getelementptr inbounds %struct.TValue, %struct.TValue* %7473, i32 0, i32 1
  %7475 = load i8, i8* %7474, align 8
  %7476 = zext i8 %7475 to i32
  %7477 = icmp eq i32 %7476, 19
  br i1 %7477, label %7478, label %7488

; <label>:7478:                                   ; preds = %7471
  %7479 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7480 = bitcast %union.StackValue* %7479 to %struct.TValue*
  %7481 = getelementptr inbounds %struct.TValue, %struct.TValue* %7480, i32 0, i32 0
  %7482 = bitcast %union.Value* %7481 to double*
  %7483 = load double, double* %7482, align 8
  %7484 = load i32, i32* %310, align 4
  %7485 = sitofp i32 %7484 to double
  %7486 = fcmp oge double %7483, %7485
  %7487 = zext i1 %7486 to i32
  store i32 %7487, i32* %309, align 4
  br label %7513

; <label>:7488:                                   ; preds = %7471
  %7489 = load i32, i32* %10, align 4
  %7490 = lshr i32 %7489, 24
  %7491 = and i32 %7490, 255
  store i32 %7491, i32* %311, align 4
  %7492 = load i32*, i32** %8, align 8
  %7493 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7494 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7493, i32 0, i32 4
  %7495 = bitcast %union.anon* %7494 to %struct.anon*
  %7496 = getelementptr inbounds %struct.anon, %struct.anon* %7495, i32 0, i32 0
  store i32* %7492, i32** %7496, align 8
  %7497 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7498 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7497, i32 0, i32 1
  %7499 = load %union.StackValue*, %union.StackValue** %7498, align 8
  %7500 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7501 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7500, i32 0, i32 6
  store %union.StackValue* %7499, %union.StackValue** %7501, align 8
  %7502 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7503 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7504 = bitcast %union.StackValue* %7503 to %struct.TValue*
  %7505 = load i32, i32* %310, align 4
  %7506 = load i32, i32* %311, align 4
  %7507 = call i32 @luaT_callorderiTM(%struct.lua_State* %7502, %struct.TValue* %7504, i32 %7505, i32 1, i32 %7506, i32 21)
  store i32 %7507, i32* %309, align 4
  %7508 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7509 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7508, i32 0, i32 4
  %7510 = bitcast %union.anon* %7509 to %struct.anon*
  %7511 = getelementptr inbounds %struct.anon, %struct.anon* %7510, i32 0, i32 1
  %7512 = load i32, i32* %7511, align 8
  store i32 %7512, i32* %9, align 4
  br label %7513

; <label>:7513:                                   ; preds = %7488, %7478
  br label %7514

; <label>:7514:                                   ; preds = %7513, %7461
  %7515 = load i32, i32* %309, align 4
  %7516 = load i32, i32* %10, align 4
  %7517 = lshr i32 %7516, 15
  %7518 = and i32 %7517, 1
  %7519 = icmp ne i32 %7515, %7518
  br i1 %7519, label %7520, label %7523

; <label>:7520:                                   ; preds = %7514
  %7521 = load i32*, i32** %8, align 8
  %7522 = getelementptr inbounds i32, i32* %7521, i32 1
  store i32* %7522, i32** %8, align 8
  br label %7539

; <label>:7523:                                   ; preds = %7514
  %7524 = load i32*, i32** %8, align 8
  %7525 = load i32, i32* %7524, align 4
  store i32 %7525, i32* %10, align 4
  %7526 = load i32, i32* %10, align 4
  %7527 = lshr i32 %7526, 7
  %7528 = and i32 %7527, 33554431
  %7529 = sub nsw i32 %7528, 16777215
  %7530 = add nsw i32 %7529, 1
  %7531 = load i32*, i32** %8, align 8
  %7532 = sext i32 %7530 to i64
  %7533 = getelementptr inbounds i32, i32* %7531, i64 %7532
  store i32* %7533, i32** %8, align 8
  %7534 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7535 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7534, i32 0, i32 4
  %7536 = bitcast %union.anon* %7535 to %struct.anon*
  %7537 = getelementptr inbounds %struct.anon, %struct.anon* %7536, i32 0, i32 1
  %7538 = load i32, i32* %7537, align 8
  store i32 %7538, i32* %9, align 4
  br label %7539

; <label>:7539:                                   ; preds = %7523, %7520
  %7540 = load i32, i32* %9, align 4
  %7541 = icmp ne i32 %7540, 0
  br i1 %7541, label %7542, label %7550

; <label>:7542:                                   ; preds = %7539
  %7543 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7544 = load i32*, i32** %8, align 8
  %7545 = call i32 @luaG_traceexec(%struct.lua_State* %7543, i32* %7544)
  store i32 %7545, i32* %9, align 4
  %7546 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7547 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7546, i32 0, i32 0
  %7548 = load %union.StackValue*, %union.StackValue** %7547, align 8
  %7549 = getelementptr inbounds %union.StackValue, %union.StackValue* %7548, i64 1
  store %union.StackValue* %7549, %union.StackValue** %7, align 8
  br label %7550

; <label>:7550:                                   ; preds = %7542, %7539
  %7551 = load i32*, i32** %8, align 8
  %7552 = getelementptr inbounds i32, i32* %7551, i32 1
  store i32* %7552, i32** %8, align 8
  %7553 = load i32, i32* %7551, align 4
  store i32 %7553, i32* %10, align 4
  %7554 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7555 = load i32, i32* %10, align 4
  %7556 = lshr i32 %7555, 7
  %7557 = and i32 %7556, 255
  %7558 = sext i32 %7557 to i64
  %7559 = getelementptr inbounds %union.StackValue, %union.StackValue* %7554, i64 %7558
  store %union.StackValue* %7559, %union.StackValue** %11, align 8
  %7560 = load i32, i32* %10, align 4
  %7561 = lshr i32 %7560, 0
  %7562 = and i32 %7561, 127
  %7563 = zext i32 %7562 to i64
  %7564 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7563
  %7565 = load i8*, i8** %7564, align 8
  br label %8998

; <label>:7566:                                   ; preds = %8998
  %7567 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7568 = bitcast %union.StackValue* %7567 to %struct.TValue*
  %7569 = getelementptr inbounds %struct.TValue, %struct.TValue* %7568, i32 0, i32 1
  %7570 = load i8, i8* %7569, align 8
  %7571 = zext i8 %7570 to i32
  %7572 = and i32 %7571, 15
  %7573 = icmp eq i32 %7572, 0
  br i1 %7573, label %7590, label %7574

; <label>:7574:                                   ; preds = %7566
  %7575 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7576 = bitcast %union.StackValue* %7575 to %struct.TValue*
  %7577 = getelementptr inbounds %struct.TValue, %struct.TValue* %7576, i32 0, i32 1
  %7578 = load i8, i8* %7577, align 8
  %7579 = zext i8 %7578 to i32
  %7580 = icmp eq i32 %7579, 1
  br i1 %7580, label %7581, label %7588

; <label>:7581:                                   ; preds = %7574
  %7582 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7583 = bitcast %union.StackValue* %7582 to %struct.TValue*
  %7584 = getelementptr inbounds %struct.TValue, %struct.TValue* %7583, i32 0, i32 0
  %7585 = bitcast %union.Value* %7584 to i32*
  %7586 = load i32, i32* %7585, align 8
  %7587 = icmp eq i32 %7586, 0
  br label %7588

; <label>:7588:                                   ; preds = %7581, %7574
  %7589 = phi i1 [ false, %7574 ], [ %7587, %7581 ]
  br label %7590

; <label>:7590:                                   ; preds = %7588, %7566
  %7591 = phi i1 [ true, %7566 ], [ %7589, %7588 ]
  %7592 = xor i1 %7591, true
  %7593 = zext i1 %7592 to i32
  store i32 %7593, i32* %312, align 4
  %7594 = load i32, i32* %312, align 4
  %7595 = load i32, i32* %10, align 4
  %7596 = lshr i32 %7595, 15
  %7597 = and i32 %7596, 1
  %7598 = icmp ne i32 %7594, %7597
  br i1 %7598, label %7599, label %7602

; <label>:7599:                                   ; preds = %7590
  %7600 = load i32*, i32** %8, align 8
  %7601 = getelementptr inbounds i32, i32* %7600, i32 1
  store i32* %7601, i32** %8, align 8
  br label %7618

; <label>:7602:                                   ; preds = %7590
  %7603 = load i32*, i32** %8, align 8
  %7604 = load i32, i32* %7603, align 4
  store i32 %7604, i32* %10, align 4
  %7605 = load i32, i32* %10, align 4
  %7606 = lshr i32 %7605, 7
  %7607 = and i32 %7606, 33554431
  %7608 = sub nsw i32 %7607, 16777215
  %7609 = add nsw i32 %7608, 1
  %7610 = load i32*, i32** %8, align 8
  %7611 = sext i32 %7609 to i64
  %7612 = getelementptr inbounds i32, i32* %7610, i64 %7611
  store i32* %7612, i32** %8, align 8
  %7613 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7614 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7613, i32 0, i32 4
  %7615 = bitcast %union.anon* %7614 to %struct.anon*
  %7616 = getelementptr inbounds %struct.anon, %struct.anon* %7615, i32 0, i32 1
  %7617 = load i32, i32* %7616, align 8
  store i32 %7617, i32* %9, align 4
  br label %7618

; <label>:7618:                                   ; preds = %7602, %7599
  %7619 = load i32, i32* %9, align 4
  %7620 = icmp ne i32 %7619, 0
  br i1 %7620, label %7621, label %7629

; <label>:7621:                                   ; preds = %7618
  %7622 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7623 = load i32*, i32** %8, align 8
  %7624 = call i32 @luaG_traceexec(%struct.lua_State* %7622, i32* %7623)
  store i32 %7624, i32* %9, align 4
  %7625 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7626 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7625, i32 0, i32 0
  %7627 = load %union.StackValue*, %union.StackValue** %7626, align 8
  %7628 = getelementptr inbounds %union.StackValue, %union.StackValue* %7627, i64 1
  store %union.StackValue* %7628, %union.StackValue** %7, align 8
  br label %7629

; <label>:7629:                                   ; preds = %7621, %7618
  %7630 = load i32*, i32** %8, align 8
  %7631 = getelementptr inbounds i32, i32* %7630, i32 1
  store i32* %7631, i32** %8, align 8
  %7632 = load i32, i32* %7630, align 4
  store i32 %7632, i32* %10, align 4
  %7633 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7634 = load i32, i32* %10, align 4
  %7635 = lshr i32 %7634, 7
  %7636 = and i32 %7635, 255
  %7637 = sext i32 %7636 to i64
  %7638 = getelementptr inbounds %union.StackValue, %union.StackValue* %7633, i64 %7637
  store %union.StackValue* %7638, %union.StackValue** %11, align 8
  %7639 = load i32, i32* %10, align 4
  %7640 = lshr i32 %7639, 0
  %7641 = and i32 %7640, 127
  %7642 = zext i32 %7641 to i64
  %7643 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7642
  %7644 = load i8*, i8** %7643, align 8
  br label %8998

; <label>:7645:                                   ; preds = %8998
  %7646 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7647 = load i32, i32* %10, align 4
  %7648 = lshr i32 %7647, 16
  %7649 = and i32 %7648, 255
  %7650 = sext i32 %7649 to i64
  %7651 = getelementptr inbounds %union.StackValue, %union.StackValue* %7646, i64 %7650
  %7652 = bitcast %union.StackValue* %7651 to %struct.TValue*
  store %struct.TValue* %7652, %struct.TValue** %313, align 8
  %7653 = load %struct.TValue*, %struct.TValue** %313, align 8
  %7654 = getelementptr inbounds %struct.TValue, %struct.TValue* %7653, i32 0, i32 1
  %7655 = load i8, i8* %7654, align 8
  %7656 = zext i8 %7655 to i32
  %7657 = and i32 %7656, 15
  %7658 = icmp eq i32 %7657, 0
  br i1 %7658, label %7673, label %7659

; <label>:7659:                                   ; preds = %7645
  %7660 = load %struct.TValue*, %struct.TValue** %313, align 8
  %7661 = getelementptr inbounds %struct.TValue, %struct.TValue* %7660, i32 0, i32 1
  %7662 = load i8, i8* %7661, align 8
  %7663 = zext i8 %7662 to i32
  %7664 = icmp eq i32 %7663, 1
  br i1 %7664, label %7665, label %7671

; <label>:7665:                                   ; preds = %7659
  %7666 = load %struct.TValue*, %struct.TValue** %313, align 8
  %7667 = getelementptr inbounds %struct.TValue, %struct.TValue* %7666, i32 0, i32 0
  %7668 = bitcast %union.Value* %7667 to i32*
  %7669 = load i32, i32* %7668, align 8
  %7670 = icmp eq i32 %7669, 0
  br label %7671

; <label>:7671:                                   ; preds = %7665, %7659
  %7672 = phi i1 [ false, %7659 ], [ %7670, %7665 ]
  br label %7673

; <label>:7673:                                   ; preds = %7671, %7645
  %7674 = phi i1 [ true, %7645 ], [ %7672, %7671 ]
  %7675 = zext i1 %7674 to i32
  %7676 = load i32, i32* %10, align 4
  %7677 = lshr i32 %7676, 15
  %7678 = and i32 %7677, 1
  %7679 = icmp eq i32 %7675, %7678
  br i1 %7679, label %7680, label %7683

; <label>:7680:                                   ; preds = %7673
  %7681 = load i32*, i32** %8, align 8
  %7682 = getelementptr inbounds i32, i32* %7681, i32 1
  store i32* %7682, i32** %8, align 8
  br label %7714

; <label>:7683:                                   ; preds = %7673
  %7684 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7685 = bitcast %union.StackValue* %7684 to %struct.TValue*
  store %struct.TValue* %7685, %struct.TValue** %314, align 8
  %7686 = load %struct.TValue*, %struct.TValue** %313, align 8
  store %struct.TValue* %7686, %struct.TValue** %315, align 8
  %7687 = load %struct.TValue*, %struct.TValue** %314, align 8
  %7688 = getelementptr inbounds %struct.TValue, %struct.TValue* %7687, i32 0, i32 0
  %7689 = load %struct.TValue*, %struct.TValue** %315, align 8
  %7690 = getelementptr inbounds %struct.TValue, %struct.TValue* %7689, i32 0, i32 0
  %7691 = bitcast %union.Value* %7688 to i8*
  %7692 = bitcast %union.Value* %7690 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7691, i8* %7692, i64 8, i32 8, i1 false)
  %7693 = load %struct.TValue*, %struct.TValue** %315, align 8
  %7694 = getelementptr inbounds %struct.TValue, %struct.TValue* %7693, i32 0, i32 1
  %7695 = load i8, i8* %7694, align 8
  %7696 = load %struct.TValue*, %struct.TValue** %314, align 8
  %7697 = getelementptr inbounds %struct.TValue, %struct.TValue* %7696, i32 0, i32 1
  store i8 %7695, i8* %7697, align 8
  %7698 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7699 = load i32*, i32** %8, align 8
  %7700 = load i32, i32* %7699, align 4
  store i32 %7700, i32* %10, align 4
  %7701 = load i32, i32* %10, align 4
  %7702 = lshr i32 %7701, 7
  %7703 = and i32 %7702, 33554431
  %7704 = sub nsw i32 %7703, 16777215
  %7705 = add nsw i32 %7704, 1
  %7706 = load i32*, i32** %8, align 8
  %7707 = sext i32 %7705 to i64
  %7708 = getelementptr inbounds i32, i32* %7706, i64 %7707
  store i32* %7708, i32** %8, align 8
  %7709 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7710 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7709, i32 0, i32 4
  %7711 = bitcast %union.anon* %7710 to %struct.anon*
  %7712 = getelementptr inbounds %struct.anon, %struct.anon* %7711, i32 0, i32 1
  %7713 = load i32, i32* %7712, align 8
  store i32 %7713, i32* %9, align 4
  br label %7714

; <label>:7714:                                   ; preds = %7683, %7680
  %7715 = load i32, i32* %9, align 4
  %7716 = icmp ne i32 %7715, 0
  br i1 %7716, label %7717, label %7725

; <label>:7717:                                   ; preds = %7714
  %7718 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7719 = load i32*, i32** %8, align 8
  %7720 = call i32 @luaG_traceexec(%struct.lua_State* %7718, i32* %7719)
  store i32 %7720, i32* %9, align 4
  %7721 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7722 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7721, i32 0, i32 0
  %7723 = load %union.StackValue*, %union.StackValue** %7722, align 8
  %7724 = getelementptr inbounds %union.StackValue, %union.StackValue* %7723, i64 1
  store %union.StackValue* %7724, %union.StackValue** %7, align 8
  br label %7725

; <label>:7725:                                   ; preds = %7717, %7714
  %7726 = load i32*, i32** %8, align 8
  %7727 = getelementptr inbounds i32, i32* %7726, i32 1
  store i32* %7727, i32** %8, align 8
  %7728 = load i32, i32* %7726, align 4
  store i32 %7728, i32* %10, align 4
  %7729 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7730 = load i32, i32* %10, align 4
  %7731 = lshr i32 %7730, 7
  %7732 = and i32 %7731, 255
  %7733 = sext i32 %7732 to i64
  %7734 = getelementptr inbounds %union.StackValue, %union.StackValue* %7729, i64 %7733
  store %union.StackValue* %7734, %union.StackValue** %11, align 8
  %7735 = load i32, i32* %10, align 4
  %7736 = lshr i32 %7735, 0
  %7737 = and i32 %7736, 127
  %7738 = zext i32 %7737 to i64
  %7739 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7738
  %7740 = load i8*, i8** %7739, align 8
  br label %8998

; <label>:7741:                                   ; preds = %8998
  %7742 = load i32, i32* %10, align 4
  %7743 = lshr i32 %7742, 16
  %7744 = and i32 %7743, 255
  store i32 %7744, i32* %316, align 4
  %7745 = load i32, i32* %10, align 4
  %7746 = lshr i32 %7745, 24
  %7747 = and i32 %7746, 255
  %7748 = sub nsw i32 %7747, 1
  store i32 %7748, i32* %317, align 4
  %7749 = load i32, i32* %316, align 4
  %7750 = icmp ne i32 %7749, 0
  br i1 %7750, label %7751, label %7758

; <label>:7751:                                   ; preds = %7741
  %7752 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7753 = load i32, i32* %316, align 4
  %7754 = sext i32 %7753 to i64
  %7755 = getelementptr inbounds %union.StackValue, %union.StackValue* %7752, i64 %7754
  %7756 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7757 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7756, i32 0, i32 6
  store %union.StackValue* %7755, %union.StackValue** %7757, align 8
  br label %7758

; <label>:7758:                                   ; preds = %7751, %7741
  %7759 = load i32*, i32** %8, align 8
  %7760 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7761 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7760, i32 0, i32 4
  %7762 = bitcast %union.anon* %7761 to %struct.anon*
  %7763 = getelementptr inbounds %struct.anon, %struct.anon* %7762, i32 0, i32 0
  store i32* %7759, i32** %7763, align 8
  %7764 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7765 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7766 = load i32, i32* %317, align 4
  call void @luaD_call(%struct.lua_State* %7764, %union.StackValue* %7765, i32 %7766)
  %7767 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7768 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7767, i32 0, i32 4
  %7769 = bitcast %union.anon* %7768 to %struct.anon*
  %7770 = getelementptr inbounds %struct.anon, %struct.anon* %7769, i32 0, i32 1
  %7771 = load i32, i32* %7770, align 8
  store i32 %7771, i32* %9, align 4
  %7772 = load i32, i32* %9, align 4
  %7773 = icmp ne i32 %7772, 0
  br i1 %7773, label %7774, label %7782

; <label>:7774:                                   ; preds = %7758
  %7775 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7776 = load i32*, i32** %8, align 8
  %7777 = call i32 @luaG_traceexec(%struct.lua_State* %7775, i32* %7776)
  store i32 %7777, i32* %9, align 4
  %7778 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7779 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7778, i32 0, i32 0
  %7780 = load %union.StackValue*, %union.StackValue** %7779, align 8
  %7781 = getelementptr inbounds %union.StackValue, %union.StackValue* %7780, i64 1
  store %union.StackValue* %7781, %union.StackValue** %7, align 8
  br label %7782

; <label>:7782:                                   ; preds = %7774, %7758
  %7783 = load i32*, i32** %8, align 8
  %7784 = getelementptr inbounds i32, i32* %7783, i32 1
  store i32* %7784, i32** %8, align 8
  %7785 = load i32, i32* %7783, align 4
  store i32 %7785, i32* %10, align 4
  %7786 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7787 = load i32, i32* %10, align 4
  %7788 = lshr i32 %7787, 7
  %7789 = and i32 %7788, 255
  %7790 = sext i32 %7789 to i64
  %7791 = getelementptr inbounds %union.StackValue, %union.StackValue* %7786, i64 %7790
  store %union.StackValue* %7791, %union.StackValue** %11, align 8
  %7792 = load i32, i32* %10, align 4
  %7793 = lshr i32 %7792, 0
  %7794 = and i32 %7793, 127
  %7795 = zext i32 %7794 to i64
  %7796 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %7795
  %7797 = load i8*, i8** %7796, align 8
  br label %8998

; <label>:7798:                                   ; preds = %8998
  %7799 = load i32, i32* %10, align 4
  %7800 = lshr i32 %7799, 16
  %7801 = and i32 %7800, 255
  store i32 %7801, i32* %318, align 4
  store i32 0, i32* %319, align 4
  %7802 = load i32, i32* %318, align 4
  %7803 = icmp ne i32 %7802, 0
  br i1 %7803, label %7804, label %7811

; <label>:7804:                                   ; preds = %7798
  %7805 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7806 = load i32, i32* %318, align 4
  %7807 = sext i32 %7806 to i64
  %7808 = getelementptr inbounds %union.StackValue, %union.StackValue* %7805, i64 %7807
  %7809 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7810 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7809, i32 0, i32 6
  store %union.StackValue* %7808, %union.StackValue** %7810, align 8
  br label %7821

; <label>:7811:                                   ; preds = %7798
  %7812 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7813 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7812, i32 0, i32 6
  %7814 = load %union.StackValue*, %union.StackValue** %7813, align 8
  %7815 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7816 = ptrtoint %union.StackValue* %7814 to i64
  %7817 = ptrtoint %union.StackValue* %7815 to i64
  %7818 = sub i64 %7816, %7817
  %7819 = sdiv exact i64 %7818, 16
  %7820 = trunc i64 %7819 to i32
  store i32 %7820, i32* %318, align 4
  br label %7821

; <label>:7821:                                   ; preds = %7811, %7804
  %7822 = load i32*, i32** %8, align 8
  %7823 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7824 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7823, i32 0, i32 4
  %7825 = bitcast %union.anon* %7824 to %struct.anon*
  %7826 = getelementptr inbounds %struct.anon, %struct.anon* %7825, i32 0, i32 0
  store i32* %7822, i32** %7826, align 8
  %7827 = load i32, i32* %10, align 4
  %7828 = and i32 %7827, 32768
  %7829 = icmp ne i32 %7828, 0
  br i1 %7829, label %7830, label %7848

; <label>:7830:                                   ; preds = %7821
  %7831 = load i32, i32* %10, align 4
  %7832 = lshr i32 %7831, 24
  %7833 = and i32 %7832, 255
  store i32 %7833, i32* %320, align 4
  %7834 = load i32, i32* %320, align 4
  %7835 = icmp ne i32 %7834, 0
  br i1 %7835, label %7836, label %7844

; <label>:7836:                                   ; preds = %7830
  %7837 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7838 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7837, i32 0, i32 4
  %7839 = bitcast %union.anon* %7838 to %struct.anon*
  %7840 = getelementptr inbounds %struct.anon, %struct.anon* %7839, i32 0, i32 2
  %7841 = load i32, i32* %7840, align 4
  %7842 = load i32, i32* %320, align 4
  %7843 = add nsw i32 %7841, %7842
  store i32 %7843, i32* %319, align 4
  br label %7844

; <label>:7844:                                   ; preds = %7836, %7830
  %7845 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7846 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7847 = call i32 @luaF_close(%struct.lua_State* %7845, %union.StackValue* %7846, i32 -1)
  br label %7848

; <label>:7848:                                   ; preds = %7844, %7821
  %7849 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7850 = bitcast %union.StackValue* %7849 to %struct.TValue*
  %7851 = getelementptr inbounds %struct.TValue, %struct.TValue* %7850, i32 0, i32 1
  %7852 = load i8, i8* %7851, align 8
  %7853 = zext i8 %7852 to i32
  %7854 = and i32 %7853, 15
  %7855 = icmp eq i32 %7854, 6
  br i1 %7855, label %7861, label %7856

; <label>:7856:                                   ; preds = %7848
  %7857 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7858 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaD_tryfuncTM(%struct.lua_State* %7857, %union.StackValue* %7858)
  %7859 = load i32, i32* %318, align 4
  %7860 = add nsw i32 %7859, 1
  store i32 %7860, i32* %318, align 4
  br label %7861

; <label>:7861:                                   ; preds = %7856, %7848
  %7862 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7863 = bitcast %union.StackValue* %7862 to %struct.TValue*
  %7864 = getelementptr inbounds %struct.TValue, %struct.TValue* %7863, i32 0, i32 1
  %7865 = load i8, i8* %7864, align 8
  %7866 = zext i8 %7865 to i32
  %7867 = icmp eq i32 %7866, 86
  br i1 %7867, label %7908, label %7868

; <label>:7868:                                   ; preds = %7861
  %7869 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7870 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaD_call(%struct.lua_State* %7869, %union.StackValue* %7870, i32 -1)
  %7871 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7872 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7871, i32 0, i32 4
  %7873 = bitcast %union.anon* %7872 to %struct.anon*
  %7874 = getelementptr inbounds %struct.anon, %struct.anon* %7873, i32 0, i32 1
  %7875 = load i32, i32* %7874, align 8
  store i32 %7875, i32* %9, align 4
  %7876 = load i32, i32* %9, align 4
  %7877 = icmp ne i32 %7876, 0
  br i1 %7877, label %7878, label %7889

; <label>:7878:                                   ; preds = %7868
  %7879 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7880 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7879, i32 0, i32 0
  %7881 = load %union.StackValue*, %union.StackValue** %7880, align 8
  %7882 = getelementptr inbounds %union.StackValue, %union.StackValue* %7881, i64 1
  store %union.StackValue* %7882, %union.StackValue** %7, align 8
  %7883 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7884 = load i32, i32* %10, align 4
  %7885 = lshr i32 %7884, 7
  %7886 = and i32 %7885, 255
  %7887 = sext i32 %7886 to i64
  %7888 = getelementptr inbounds %union.StackValue, %union.StackValue* %7883, i64 %7887
  store %union.StackValue* %7888, %union.StackValue** %11, align 8
  br label %7889

; <label>:7889:                                   ; preds = %7878, %7868
  %7890 = load i32, i32* %319, align 4
  %7891 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7892 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7891, i32 0, i32 0
  %7893 = load %union.StackValue*, %union.StackValue** %7892, align 8
  %7894 = sext i32 %7890 to i64
  %7895 = sub i64 0, %7894
  %7896 = getelementptr inbounds %union.StackValue, %union.StackValue* %7893, i64 %7895
  store %union.StackValue* %7896, %union.StackValue** %7892, align 8
  %7897 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7898 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7899 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7900 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7899, i32 0, i32 6
  %7901 = load %union.StackValue*, %union.StackValue** %7900, align 8
  %7902 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7903 = ptrtoint %union.StackValue* %7901 to i64
  %7904 = ptrtoint %union.StackValue* %7902 to i64
  %7905 = sub i64 %7903, %7904
  %7906 = sdiv exact i64 %7905, 16
  %7907 = trunc i64 %7906 to i32
  call void @luaD_poscall(%struct.lua_State* %7897, %struct.CallInfo* %7898, i32 %7907)
  br label %8997

; <label>:7908:                                   ; preds = %7861
  %7909 = load i32, i32* %319, align 4
  %7910 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7911 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7910, i32 0, i32 0
  %7912 = load %union.StackValue*, %union.StackValue** %7911, align 8
  %7913 = sext i32 %7909 to i64
  %7914 = sub i64 0, %7913
  %7915 = getelementptr inbounds %union.StackValue, %union.StackValue* %7912, i64 %7914
  store %union.StackValue* %7915, %union.StackValue** %7911, align 8
  %7916 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7917 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7918 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7919 = load i32, i32* %318, align 4
  call void @luaD_pretailcall(%struct.lua_State* %7916, %struct.CallInfo* %7917, %union.StackValue* %7918, i32 %7919)
  br label %365

; <label>:7920:                                   ; preds = %8998
  %7921 = load i32, i32* %10, align 4
  %7922 = lshr i32 %7921, 16
  %7923 = and i32 %7922, 255
  %7924 = sub nsw i32 %7923, 1
  store i32 %7924, i32* %321, align 4
  %7925 = load i32, i32* %321, align 4
  %7926 = icmp slt i32 %7925, 0
  br i1 %7926, label %7927, label %7937

; <label>:7927:                                   ; preds = %7920
  %7928 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7929 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7928, i32 0, i32 6
  %7930 = load %union.StackValue*, %union.StackValue** %7929, align 8
  %7931 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7932 = ptrtoint %union.StackValue* %7930 to i64
  %7933 = ptrtoint %union.StackValue* %7931 to i64
  %7934 = sub i64 %7932, %7933
  %7935 = sdiv exact i64 %7934, 16
  %7936 = trunc i64 %7935 to i32
  store i32 %7936, i32* %321, align 4
  br label %7944

; <label>:7937:                                   ; preds = %7920
  %7938 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7939 = load i32, i32* %321, align 4
  %7940 = sext i32 %7939 to i64
  %7941 = getelementptr inbounds %union.StackValue, %union.StackValue* %7938, i64 %7940
  %7942 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7943 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7942, i32 0, i32 6
  store %union.StackValue* %7941, %union.StackValue** %7943, align 8
  br label %7944

; <label>:7944:                                   ; preds = %7937, %7927
  %7945 = load i32*, i32** %8, align 8
  %7946 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7947 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7946, i32 0, i32 4
  %7948 = bitcast %union.anon* %7947 to %struct.anon*
  %7949 = getelementptr inbounds %struct.anon, %struct.anon* %7948, i32 0, i32 0
  store i32* %7945, i32** %7949, align 8
  %7950 = load i32, i32* %10, align 4
  %7951 = and i32 %7950, 32768
  %7952 = icmp ne i32 %7951, 0
  br i1 %7952, label %7953, label %7977

; <label>:7953:                                   ; preds = %7944
  %7954 = load i32, i32* %10, align 4
  %7955 = lshr i32 %7954, 24
  %7956 = and i32 %7955, 255
  store i32 %7956, i32* %322, align 4
  %7957 = load i32, i32* %322, align 4
  %7958 = icmp ne i32 %7957, 0
  br i1 %7958, label %7959, label %7973

; <label>:7959:                                   ; preds = %7953
  %7960 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7961 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7960, i32 0, i32 4
  %7962 = bitcast %union.anon* %7961 to %struct.anon*
  %7963 = getelementptr inbounds %struct.anon, %struct.anon* %7962, i32 0, i32 2
  %7964 = load i32, i32* %7963, align 4
  %7965 = load i32, i32* %322, align 4
  %7966 = add nsw i32 %7964, %7965
  %7967 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7968 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7967, i32 0, i32 0
  %7969 = load %union.StackValue*, %union.StackValue** %7968, align 8
  %7970 = sext i32 %7966 to i64
  %7971 = sub i64 0, %7970
  %7972 = getelementptr inbounds %union.StackValue, %union.StackValue* %7969, i64 %7971
  store %union.StackValue* %7972, %union.StackValue** %7968, align 8
  br label %7973

; <label>:7973:                                   ; preds = %7959, %7953
  %7974 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7975 = load %union.StackValue*, %union.StackValue** %7, align 8
  %7976 = call i32 @luaF_close(%struct.lua_State* %7974, %union.StackValue* %7975, i32 0)
  br label %7977

; <label>:7977:                                   ; preds = %7973, %7944
  %7978 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7979 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7980 = load i32, i32* %321, align 4
  call void @luaD_poscall(%struct.lua_State* %7978, %struct.CallInfo* %7979, i32 %7980)
  br label %8997

; <label>:7981:                                   ; preds = %8998
  %7982 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7983 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7982, i32 0, i32 23
  %7984 = load i32, i32* %7983, align 8
  %7985 = icmp ne i32 %7984, 0
  br i1 %7985, label %7986, label %7997

; <label>:7986:                                   ; preds = %7981
  %7987 = load %union.StackValue*, %union.StackValue** %11, align 8
  %7988 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7989 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7988, i32 0, i32 6
  store %union.StackValue* %7987, %union.StackValue** %7989, align 8
  %7990 = load i32*, i32** %8, align 8
  %7991 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7992 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7991, i32 0, i32 4
  %7993 = bitcast %union.anon* %7992 to %struct.anon*
  %7994 = getelementptr inbounds %struct.anon, %struct.anon* %7993, i32 0, i32 0
  store i32* %7990, i32** %7994, align 8
  %7995 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7996 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  call void @luaD_poscall(%struct.lua_State* %7995, %struct.CallInfo* %7996, i32 0)
  br label %8023

; <label>:7997:                                   ; preds = %7981
  %7998 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7999 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7998, i32 0, i32 6
  %8000 = load i16, i16* %7999, align 4
  %8001 = sext i16 %8000 to i32
  store i32 %8001, i32* %323, align 4
  %8002 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8003 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8002, i32 0, i32 2
  %8004 = load %struct.CallInfo*, %struct.CallInfo** %8003, align 8
  %8005 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8006 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8005, i32 0, i32 8
  store %struct.CallInfo* %8004, %struct.CallInfo** %8006, align 8
  %8007 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8008 = getelementptr inbounds %union.StackValue, %union.StackValue* %8007, i64 -1
  %8009 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8010 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8009, i32 0, i32 6
  store %union.StackValue* %8008, %union.StackValue** %8010, align 8
  br label %8011

; <label>:8011:                                   ; preds = %8015, %7997
  %8012 = load i32, i32* %323, align 4
  %8013 = add nsw i32 %8012, -1
  store i32 %8013, i32* %323, align 4
  %8014 = icmp sgt i32 %8012, 0
  br i1 %8014, label %8015, label %8022

; <label>:8015:                                   ; preds = %8011
  %8016 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8017 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8016, i32 0, i32 6
  %8018 = load %union.StackValue*, %union.StackValue** %8017, align 8
  %8019 = getelementptr inbounds %union.StackValue, %union.StackValue* %8018, i32 1
  store %union.StackValue* %8019, %union.StackValue** %8017, align 8
  %8020 = bitcast %union.StackValue* %8018 to %struct.TValue*
  %8021 = getelementptr inbounds %struct.TValue, %struct.TValue* %8020, i32 0, i32 1
  store i8 0, i8* %8021, align 8
  br label %8011

; <label>:8022:                                   ; preds = %8011
  br label %8023

; <label>:8023:                                   ; preds = %8022, %7986
  br label %8997

; <label>:8024:                                   ; preds = %8998
  %8025 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8026 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8025, i32 0, i32 23
  %8027 = load i32, i32* %8026, align 8
  %8028 = icmp ne i32 %8027, 0
  br i1 %8028, label %8029, label %8041

; <label>:8029:                                   ; preds = %8024
  %8030 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8031 = getelementptr inbounds %union.StackValue, %union.StackValue* %8030, i64 1
  %8032 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8033 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8032, i32 0, i32 6
  store %union.StackValue* %8031, %union.StackValue** %8033, align 8
  %8034 = load i32*, i32** %8, align 8
  %8035 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8036 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8035, i32 0, i32 4
  %8037 = bitcast %union.anon* %8036 to %struct.anon*
  %8038 = getelementptr inbounds %struct.anon, %struct.anon* %8037, i32 0, i32 0
  store i32* %8034, i32** %8038, align 8
  %8039 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8040 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  call void @luaD_poscall(%struct.lua_State* %8039, %struct.CallInfo* %8040, i32 1)
  br label %8092

; <label>:8041:                                   ; preds = %8024
  %8042 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8043 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8042, i32 0, i32 6
  %8044 = load i16, i16* %8043, align 4
  %8045 = sext i16 %8044 to i32
  store i32 %8045, i32* %324, align 4
  %8046 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8047 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8046, i32 0, i32 2
  %8048 = load %struct.CallInfo*, %struct.CallInfo** %8047, align 8
  %8049 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8050 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8049, i32 0, i32 8
  store %struct.CallInfo* %8048, %struct.CallInfo** %8050, align 8
  %8051 = load i32, i32* %324, align 4
  %8052 = icmp eq i32 %8051, 0
  br i1 %8052, label %8053, label %8058

; <label>:8053:                                   ; preds = %8041
  %8054 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8055 = getelementptr inbounds %union.StackValue, %union.StackValue* %8054, i64 -1
  %8056 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8057 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8056, i32 0, i32 6
  store %union.StackValue* %8055, %union.StackValue** %8057, align 8
  br label %8091

; <label>:8058:                                   ; preds = %8041
  %8059 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8060 = getelementptr inbounds %union.StackValue, %union.StackValue* %8059, i64 -1
  %8061 = bitcast %union.StackValue* %8060 to %struct.TValue*
  store %struct.TValue* %8061, %struct.TValue** %325, align 8
  %8062 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8063 = bitcast %union.StackValue* %8062 to %struct.TValue*
  store %struct.TValue* %8063, %struct.TValue** %326, align 8
  %8064 = load %struct.TValue*, %struct.TValue** %325, align 8
  %8065 = getelementptr inbounds %struct.TValue, %struct.TValue* %8064, i32 0, i32 0
  %8066 = load %struct.TValue*, %struct.TValue** %326, align 8
  %8067 = getelementptr inbounds %struct.TValue, %struct.TValue* %8066, i32 0, i32 0
  %8068 = bitcast %union.Value* %8065 to i8*
  %8069 = bitcast %union.Value* %8067 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8068, i8* %8069, i64 8, i32 8, i1 false)
  %8070 = load %struct.TValue*, %struct.TValue** %326, align 8
  %8071 = getelementptr inbounds %struct.TValue, %struct.TValue* %8070, i32 0, i32 1
  %8072 = load i8, i8* %8071, align 8
  %8073 = load %struct.TValue*, %struct.TValue** %325, align 8
  %8074 = getelementptr inbounds %struct.TValue, %struct.TValue* %8073, i32 0, i32 1
  store i8 %8072, i8* %8074, align 8
  %8075 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8076 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8077 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8078 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8077, i32 0, i32 6
  store %union.StackValue* %8076, %union.StackValue** %8078, align 8
  br label %8079

; <label>:8079:                                   ; preds = %8083, %8058
  %8080 = load i32, i32* %324, align 4
  %8081 = add nsw i32 %8080, -1
  store i32 %8081, i32* %324, align 4
  %8082 = icmp sgt i32 %8081, 0
  br i1 %8082, label %8083, label %8090

; <label>:8083:                                   ; preds = %8079
  %8084 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8085 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8084, i32 0, i32 6
  %8086 = load %union.StackValue*, %union.StackValue** %8085, align 8
  %8087 = getelementptr inbounds %union.StackValue, %union.StackValue* %8086, i32 1
  store %union.StackValue* %8087, %union.StackValue** %8085, align 8
  %8088 = bitcast %union.StackValue* %8086 to %struct.TValue*
  %8089 = getelementptr inbounds %struct.TValue, %struct.TValue* %8088, i32 0, i32 1
  store i8 0, i8* %8089, align 8
  br label %8079

; <label>:8090:                                   ; preds = %8079
  br label %8091

; <label>:8091:                                   ; preds = %8090, %8053
  br label %8092

; <label>:8092:                                   ; preds = %8091, %8029
  br label %8997

; <label>:8093:                                   ; preds = %8998
  %8094 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8095 = getelementptr inbounds %union.StackValue, %union.StackValue* %8094, i64 2
  %8096 = bitcast %union.StackValue* %8095 to %struct.TValue*
  %8097 = getelementptr inbounds %struct.TValue, %struct.TValue* %8096, i32 0, i32 1
  %8098 = load i8, i8* %8097, align 8
  %8099 = zext i8 %8098 to i32
  %8100 = icmp eq i32 %8099, 35
  br i1 %8100, label %8101, label %8156

; <label>:8101:                                   ; preds = %8093
  %8102 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8103 = getelementptr inbounds %union.StackValue, %union.StackValue* %8102, i64 1
  %8104 = bitcast %union.StackValue* %8103 to %struct.TValue*
  %8105 = getelementptr inbounds %struct.TValue, %struct.TValue* %8104, i32 0, i32 0
  %8106 = bitcast %union.Value* %8105 to i64*
  %8107 = load i64, i64* %8106, align 8
  store i64 %8107, i64* %327, align 8
  %8108 = load i64, i64* %327, align 8
  %8109 = icmp ugt i64 %8108, 0
  br i1 %8109, label %8110, label %8155

; <label>:8110:                                   ; preds = %8101
  %8111 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8112 = getelementptr inbounds %union.StackValue, %union.StackValue* %8111, i64 2
  %8113 = bitcast %union.StackValue* %8112 to %struct.TValue*
  %8114 = getelementptr inbounds %struct.TValue, %struct.TValue* %8113, i32 0, i32 0
  %8115 = bitcast %union.Value* %8114 to i64*
  %8116 = load i64, i64* %8115, align 8
  store i64 %8116, i64* %328, align 8
  %8117 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8118 = bitcast %union.StackValue* %8117 to %struct.TValue*
  %8119 = getelementptr inbounds %struct.TValue, %struct.TValue* %8118, i32 0, i32 0
  %8120 = bitcast %union.Value* %8119 to i64*
  %8121 = load i64, i64* %8120, align 8
  store i64 %8121, i64* %329, align 8
  %8122 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8123 = getelementptr inbounds %union.StackValue, %union.StackValue* %8122, i64 1
  %8124 = bitcast %union.StackValue* %8123 to %struct.TValue*
  store %struct.TValue* %8124, %struct.TValue** %330, align 8
  %8125 = load i64, i64* %327, align 8
  %8126 = sub i64 %8125, 1
  %8127 = load %struct.TValue*, %struct.TValue** %330, align 8
  %8128 = getelementptr inbounds %struct.TValue, %struct.TValue* %8127, i32 0, i32 0
  %8129 = bitcast %union.Value* %8128 to i64*
  store i64 %8126, i64* %8129, align 8
  %8130 = load i64, i64* %329, align 8
  %8131 = load i64, i64* %328, align 8
  %8132 = add i64 %8130, %8131
  store i64 %8132, i64* %329, align 8
  %8133 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8134 = bitcast %union.StackValue* %8133 to %struct.TValue*
  store %struct.TValue* %8134, %struct.TValue** %331, align 8
  %8135 = load i64, i64* %329, align 8
  %8136 = load %struct.TValue*, %struct.TValue** %331, align 8
  %8137 = getelementptr inbounds %struct.TValue, %struct.TValue* %8136, i32 0, i32 0
  %8138 = bitcast %union.Value* %8137 to i64*
  store i64 %8135, i64* %8138, align 8
  %8139 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8140 = getelementptr inbounds %union.StackValue, %union.StackValue* %8139, i64 3
  %8141 = bitcast %union.StackValue* %8140 to %struct.TValue*
  store %struct.TValue* %8141, %struct.TValue** %332, align 8
  %8142 = load i64, i64* %329, align 8
  %8143 = load %struct.TValue*, %struct.TValue** %332, align 8
  %8144 = getelementptr inbounds %struct.TValue, %struct.TValue* %8143, i32 0, i32 0
  %8145 = bitcast %union.Value* %8144 to i64*
  store i64 %8142, i64* %8145, align 8
  %8146 = load %struct.TValue*, %struct.TValue** %332, align 8
  %8147 = getelementptr inbounds %struct.TValue, %struct.TValue* %8146, i32 0, i32 1
  store i8 35, i8* %8147, align 8
  %8148 = load i32, i32* %10, align 4
  %8149 = lshr i32 %8148, 15
  %8150 = and i32 %8149, 131071
  %8151 = load i32*, i32** %8, align 8
  %8152 = sext i32 %8150 to i64
  %8153 = sub i64 0, %8152
  %8154 = getelementptr inbounds i32, i32* %8151, i64 %8153
  store i32* %8154, i32** %8, align 8
  br label %8155

; <label>:8155:                                   ; preds = %8110, %8101
  br label %8211

; <label>:8156:                                   ; preds = %8093
  %8157 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8158 = getelementptr inbounds %union.StackValue, %union.StackValue* %8157, i64 2
  %8159 = bitcast %union.StackValue* %8158 to %struct.TValue*
  %8160 = getelementptr inbounds %struct.TValue, %struct.TValue* %8159, i32 0, i32 0
  %8161 = bitcast %union.Value* %8160 to double*
  %8162 = load double, double* %8161, align 8
  store double %8162, double* %333, align 8
  %8163 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8164 = getelementptr inbounds %union.StackValue, %union.StackValue* %8163, i64 1
  %8165 = bitcast %union.StackValue* %8164 to %struct.TValue*
  %8166 = getelementptr inbounds %struct.TValue, %struct.TValue* %8165, i32 0, i32 0
  %8167 = bitcast %union.Value* %8166 to double*
  %8168 = load double, double* %8167, align 8
  store double %8168, double* %334, align 8
  %8169 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8170 = bitcast %union.StackValue* %8169 to %struct.TValue*
  %8171 = getelementptr inbounds %struct.TValue, %struct.TValue* %8170, i32 0, i32 0
  %8172 = bitcast %union.Value* %8171 to double*
  %8173 = load double, double* %8172, align 8
  store double %8173, double* %335, align 8
  %8174 = load double, double* %335, align 8
  %8175 = load double, double* %333, align 8
  %8176 = fadd double %8174, %8175
  store double %8176, double* %335, align 8
  %8177 = load double, double* %333, align 8
  %8178 = fcmp olt double 0.000000e+00, %8177
  br i1 %8178, label %8179, label %8183

; <label>:8179:                                   ; preds = %8156
  %8180 = load double, double* %335, align 8
  %8181 = load double, double* %334, align 8
  %8182 = fcmp ole double %8180, %8181
  br i1 %8182, label %8187, label %8210

; <label>:8183:                                   ; preds = %8156
  %8184 = load double, double* %334, align 8
  %8185 = load double, double* %335, align 8
  %8186 = fcmp ole double %8184, %8185
  br i1 %8186, label %8187, label %8210

; <label>:8187:                                   ; preds = %8183, %8179
  %8188 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8189 = bitcast %union.StackValue* %8188 to %struct.TValue*
  store %struct.TValue* %8189, %struct.TValue** %336, align 8
  %8190 = load double, double* %335, align 8
  %8191 = load %struct.TValue*, %struct.TValue** %336, align 8
  %8192 = getelementptr inbounds %struct.TValue, %struct.TValue* %8191, i32 0, i32 0
  %8193 = bitcast %union.Value* %8192 to double*
  store double %8190, double* %8193, align 8
  %8194 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8195 = getelementptr inbounds %union.StackValue, %union.StackValue* %8194, i64 3
  %8196 = bitcast %union.StackValue* %8195 to %struct.TValue*
  store %struct.TValue* %8196, %struct.TValue** %337, align 8
  %8197 = load double, double* %335, align 8
  %8198 = load %struct.TValue*, %struct.TValue** %337, align 8
  %8199 = getelementptr inbounds %struct.TValue, %struct.TValue* %8198, i32 0, i32 0
  %8200 = bitcast %union.Value* %8199 to double*
  store double %8197, double* %8200, align 8
  %8201 = load %struct.TValue*, %struct.TValue** %337, align 8
  %8202 = getelementptr inbounds %struct.TValue, %struct.TValue* %8201, i32 0, i32 1
  store i8 19, i8* %8202, align 8
  %8203 = load i32, i32* %10, align 4
  %8204 = lshr i32 %8203, 15
  %8205 = and i32 %8204, 131071
  %8206 = load i32*, i32** %8, align 8
  %8207 = sext i32 %8205 to i64
  %8208 = sub i64 0, %8207
  %8209 = getelementptr inbounds i32, i32* %8206, i64 %8208
  store i32* %8209, i32** %8, align 8
  br label %8210

; <label>:8210:                                   ; preds = %8187, %8183, %8179
  br label %8211

; <label>:8211:                                   ; preds = %8210, %8155
  %8212 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8213 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8212, i32 0, i32 4
  %8214 = bitcast %union.anon* %8213 to %struct.anon*
  %8215 = getelementptr inbounds %struct.anon, %struct.anon* %8214, i32 0, i32 1
  %8216 = load i32, i32* %8215, align 8
  store i32 %8216, i32* %9, align 4
  %8217 = load i32, i32* %9, align 4
  %8218 = icmp ne i32 %8217, 0
  br i1 %8218, label %8219, label %8227

; <label>:8219:                                   ; preds = %8211
  %8220 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8221 = load i32*, i32** %8, align 8
  %8222 = call i32 @luaG_traceexec(%struct.lua_State* %8220, i32* %8221)
  store i32 %8222, i32* %9, align 4
  %8223 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8224 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8223, i32 0, i32 0
  %8225 = load %union.StackValue*, %union.StackValue** %8224, align 8
  %8226 = getelementptr inbounds %union.StackValue, %union.StackValue* %8225, i64 1
  store %union.StackValue* %8226, %union.StackValue** %7, align 8
  br label %8227

; <label>:8227:                                   ; preds = %8219, %8211
  %8228 = load i32*, i32** %8, align 8
  %8229 = getelementptr inbounds i32, i32* %8228, i32 1
  store i32* %8229, i32** %8, align 8
  %8230 = load i32, i32* %8228, align 4
  store i32 %8230, i32* %10, align 4
  %8231 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8232 = load i32, i32* %10, align 4
  %8233 = lshr i32 %8232, 7
  %8234 = and i32 %8233, 255
  %8235 = sext i32 %8234 to i64
  %8236 = getelementptr inbounds %union.StackValue, %union.StackValue* %8231, i64 %8235
  store %union.StackValue* %8236, %union.StackValue** %11, align 8
  %8237 = load i32, i32* %10, align 4
  %8238 = lshr i32 %8237, 0
  %8239 = and i32 %8238, 127
  %8240 = zext i32 %8239 to i64
  %8241 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8240
  %8242 = load i8*, i8** %8241, align 8
  br label %8998

; <label>:8243:                                   ; preds = %8998
  %8244 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8245 = bitcast %union.StackValue* %8244 to %struct.TValue*
  store %struct.TValue* %8245, %struct.TValue** %338, align 8
  %8246 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8247 = getelementptr inbounds %union.StackValue, %union.StackValue* %8246, i64 1
  %8248 = bitcast %union.StackValue* %8247 to %struct.TValue*
  store %struct.TValue* %8248, %struct.TValue** %339, align 8
  %8249 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8250 = getelementptr inbounds %union.StackValue, %union.StackValue* %8249, i64 2
  %8251 = bitcast %union.StackValue* %8250 to %struct.TValue*
  store %struct.TValue* %8251, %struct.TValue** %340, align 8
  %8252 = load i32*, i32** %8, align 8
  %8253 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8254 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8253, i32 0, i32 4
  %8255 = bitcast %union.anon* %8254 to %struct.anon*
  %8256 = getelementptr inbounds %struct.anon, %struct.anon* %8255, i32 0, i32 0
  store i32* %8252, i32** %8256, align 8
  %8257 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8258 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8257, i32 0, i32 1
  %8259 = load %union.StackValue*, %union.StackValue** %8258, align 8
  %8260 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8261 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8260, i32 0, i32 6
  store %union.StackValue* %8259, %union.StackValue** %8261, align 8
  %8262 = load %struct.TValue*, %struct.TValue** %338, align 8
  %8263 = getelementptr inbounds %struct.TValue, %struct.TValue* %8262, i32 0, i32 1
  %8264 = load i8, i8* %8263, align 8
  %8265 = zext i8 %8264 to i32
  %8266 = icmp eq i32 %8265, 35
  br i1 %8266, label %8267, label %8343

; <label>:8267:                                   ; preds = %8243
  %8268 = load %struct.TValue*, %struct.TValue** %340, align 8
  %8269 = getelementptr inbounds %struct.TValue, %struct.TValue* %8268, i32 0, i32 1
  %8270 = load i8, i8* %8269, align 8
  %8271 = zext i8 %8270 to i32
  %8272 = icmp eq i32 %8271, 35
  br i1 %8272, label %8273, label %8343

; <label>:8273:                                   ; preds = %8267
  %8274 = load %struct.TValue*, %struct.TValue** %338, align 8
  %8275 = getelementptr inbounds %struct.TValue, %struct.TValue* %8274, i32 0, i32 0
  %8276 = bitcast %union.Value* %8275 to i64*
  %8277 = load i64, i64* %8276, align 8
  store i64 %8277, i64* %341, align 8
  %8278 = load %struct.TValue*, %struct.TValue** %340, align 8
  %8279 = getelementptr inbounds %struct.TValue, %struct.TValue* %8278, i32 0, i32 0
  %8280 = bitcast %union.Value* %8279 to i64*
  %8281 = load i64, i64* %8280, align 8
  store i64 %8281, i64* %342, align 8
  %8282 = load i64, i64* %342, align 8
  %8283 = icmp eq i64 %8282, 0
  br i1 %8283, label %8284, label %8286

; <label>:8284:                                   ; preds = %8273
  %8285 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %8285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7
  unreachable

; <label>:8286:                                   ; preds = %8273
  %8287 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8288 = getelementptr inbounds %union.StackValue, %union.StackValue* %8287, i64 3
  %8289 = bitcast %union.StackValue* %8288 to %struct.TValue*
  store %struct.TValue* %8289, %struct.TValue** %344, align 8
  %8290 = load i64, i64* %341, align 8
  %8291 = load %struct.TValue*, %struct.TValue** %344, align 8
  %8292 = getelementptr inbounds %struct.TValue, %struct.TValue* %8291, i32 0, i32 0
  %8293 = bitcast %union.Value* %8292 to i64*
  store i64 %8290, i64* %8293, align 8
  %8294 = load %struct.TValue*, %struct.TValue** %344, align 8
  %8295 = getelementptr inbounds %struct.TValue, %struct.TValue* %8294, i32 0, i32 1
  store i8 35, i8* %8295, align 8
  %8296 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8297 = load i64, i64* %341, align 8
  %8298 = load %struct.TValue*, %struct.TValue** %339, align 8
  %8299 = load i64, i64* %342, align 8
  %8300 = call i32 @forlimit(%struct.lua_State* %8296, i64 %8297, %struct.TValue* %8298, i64* %343, i64 %8299)
  %8301 = icmp ne i32 %8300, 0
  br i1 %8301, label %8302, label %8310

; <label>:8302:                                   ; preds = %8286
  %8303 = load i32, i32* %10, align 4
  %8304 = lshr i32 %8303, 15
  %8305 = and i32 %8304, 131071
  %8306 = add nsw i32 %8305, 1
  %8307 = load i32*, i32** %8, align 8
  %8308 = sext i32 %8306 to i64
  %8309 = getelementptr inbounds i32, i32* %8307, i64 %8308
  store i32* %8309, i32** %8, align 8
  br label %8342

; <label>:8310:                                   ; preds = %8286
  %8311 = load i64, i64* %342, align 8
  %8312 = icmp sgt i64 %8311, 0
  br i1 %8312, label %8313, label %8324

; <label>:8313:                                   ; preds = %8310
  %8314 = load i64, i64* %343, align 8
  %8315 = load i64, i64* %341, align 8
  %8316 = sub i64 %8314, %8315
  store i64 %8316, i64* %345, align 8
  %8317 = load i64, i64* %342, align 8
  %8318 = icmp ne i64 %8317, 1
  br i1 %8318, label %8319, label %8323

; <label>:8319:                                   ; preds = %8313
  %8320 = load i64, i64* %342, align 8
  %8321 = load i64, i64* %345, align 8
  %8322 = udiv i64 %8321, %8320
  store i64 %8322, i64* %345, align 8
  br label %8323

; <label>:8323:                                   ; preds = %8319, %8313
  br label %8334

; <label>:8324:                                   ; preds = %8310
  %8325 = load i64, i64* %341, align 8
  %8326 = load i64, i64* %343, align 8
  %8327 = sub i64 %8325, %8326
  store i64 %8327, i64* %345, align 8
  %8328 = load i64, i64* %342, align 8
  %8329 = add nsw i64 %8328, 1
  %8330 = sub nsw i64 0, %8329
  %8331 = add i64 %8330, 1
  %8332 = load i64, i64* %345, align 8
  %8333 = udiv i64 %8332, %8331
  store i64 %8333, i64* %345, align 8
  br label %8334

; <label>:8334:                                   ; preds = %8324, %8323
  %8335 = load %struct.TValue*, %struct.TValue** %339, align 8
  store %struct.TValue* %8335, %struct.TValue** %346, align 8
  %8336 = load i64, i64* %345, align 8
  %8337 = load %struct.TValue*, %struct.TValue** %346, align 8
  %8338 = getelementptr inbounds %struct.TValue, %struct.TValue* %8337, i32 0, i32 0
  %8339 = bitcast %union.Value* %8338 to i64*
  store i64 %8336, i64* %8339, align 8
  %8340 = load %struct.TValue*, %struct.TValue** %346, align 8
  %8341 = getelementptr inbounds %struct.TValue, %struct.TValue* %8340, i32 0, i32 1
  store i8 35, i8* %8341, align 8
  br label %8342

; <label>:8342:                                   ; preds = %8334, %8302
  br label %8478

; <label>:8343:                                   ; preds = %8267, %8243
  %8344 = load %struct.TValue*, %struct.TValue** %339, align 8
  %8345 = getelementptr inbounds %struct.TValue, %struct.TValue* %8344, i32 0, i32 1
  %8346 = load i8, i8* %8345, align 8
  %8347 = zext i8 %8346 to i32
  %8348 = icmp eq i32 %8347, 19
  br i1 %8348, label %8349, label %8354

; <label>:8349:                                   ; preds = %8343
  %8350 = load %struct.TValue*, %struct.TValue** %339, align 8
  %8351 = getelementptr inbounds %struct.TValue, %struct.TValue* %8350, i32 0, i32 0
  %8352 = bitcast %union.Value* %8351 to double*
  %8353 = load double, double* %8352, align 8
  store double %8353, double* %348, align 8
  br label %8357

; <label>:8354:                                   ; preds = %8343
  %8355 = load %struct.TValue*, %struct.TValue** %339, align 8
  %8356 = call i32 @luaV_tonumber_(%struct.TValue* %8355, double* %348)
  br label %8357

; <label>:8357:                                   ; preds = %8354, %8349
  %8358 = phi i32 [ 1, %8349 ], [ %8356, %8354 ]
  %8359 = icmp ne i32 %8358, 0
  %8360 = xor i1 %8359, true
  %8361 = zext i1 %8360 to i32
  %8362 = icmp ne i32 %8361, 0
  %8363 = zext i1 %8362 to i32
  %8364 = sext i32 %8363 to i64
  %8365 = icmp ne i64 %8364, 0
  br i1 %8365, label %8366, label %8369

; <label>:8366:                                   ; preds = %8357
  %8367 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8368 = load %struct.TValue*, %struct.TValue** %339, align 8
  call void @luaG_forerror(%struct.lua_State* %8367, %struct.TValue* %8368, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

; <label>:8369:                                   ; preds = %8357
  %8370 = load %struct.TValue*, %struct.TValue** %340, align 8
  %8371 = getelementptr inbounds %struct.TValue, %struct.TValue* %8370, i32 0, i32 1
  %8372 = load i8, i8* %8371, align 8
  %8373 = zext i8 %8372 to i32
  %8374 = icmp eq i32 %8373, 19
  br i1 %8374, label %8375, label %8380

; <label>:8375:                                   ; preds = %8369
  %8376 = load %struct.TValue*, %struct.TValue** %340, align 8
  %8377 = getelementptr inbounds %struct.TValue, %struct.TValue* %8376, i32 0, i32 0
  %8378 = bitcast %union.Value* %8377 to double*
  %8379 = load double, double* %8378, align 8
  store double %8379, double* %349, align 8
  br label %8383

; <label>:8380:                                   ; preds = %8369
  %8381 = load %struct.TValue*, %struct.TValue** %340, align 8
  %8382 = call i32 @luaV_tonumber_(%struct.TValue* %8381, double* %349)
  br label %8383

; <label>:8383:                                   ; preds = %8380, %8375
  %8384 = phi i32 [ 1, %8375 ], [ %8382, %8380 ]
  %8385 = icmp ne i32 %8384, 0
  %8386 = xor i1 %8385, true
  %8387 = zext i1 %8386 to i32
  %8388 = icmp ne i32 %8387, 0
  %8389 = zext i1 %8388 to i32
  %8390 = sext i32 %8389 to i64
  %8391 = icmp ne i64 %8390, 0
  br i1 %8391, label %8392, label %8395

; <label>:8392:                                   ; preds = %8383
  %8393 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8394 = load %struct.TValue*, %struct.TValue** %340, align 8
  call void @luaG_forerror(%struct.lua_State* %8393, %struct.TValue* %8394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #7
  unreachable

; <label>:8395:                                   ; preds = %8383
  %8396 = load %struct.TValue*, %struct.TValue** %338, align 8
  %8397 = getelementptr inbounds %struct.TValue, %struct.TValue* %8396, i32 0, i32 1
  %8398 = load i8, i8* %8397, align 8
  %8399 = zext i8 %8398 to i32
  %8400 = icmp eq i32 %8399, 19
  br i1 %8400, label %8401, label %8406

; <label>:8401:                                   ; preds = %8395
  %8402 = load %struct.TValue*, %struct.TValue** %338, align 8
  %8403 = getelementptr inbounds %struct.TValue, %struct.TValue* %8402, i32 0, i32 0
  %8404 = bitcast %union.Value* %8403 to double*
  %8405 = load double, double* %8404, align 8
  store double %8405, double* %347, align 8
  br label %8409

; <label>:8406:                                   ; preds = %8395
  %8407 = load %struct.TValue*, %struct.TValue** %338, align 8
  %8408 = call i32 @luaV_tonumber_(%struct.TValue* %8407, double* %347)
  br label %8409

; <label>:8409:                                   ; preds = %8406, %8401
  %8410 = phi i32 [ 1, %8401 ], [ %8408, %8406 ]
  %8411 = icmp ne i32 %8410, 0
  %8412 = xor i1 %8411, true
  %8413 = zext i1 %8412 to i32
  %8414 = icmp ne i32 %8413, 0
  %8415 = zext i1 %8414 to i32
  %8416 = sext i32 %8415 to i64
  %8417 = icmp ne i64 %8416, 0
  br i1 %8417, label %8418, label %8421

; <label>:8418:                                   ; preds = %8409
  %8419 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8420 = load %struct.TValue*, %struct.TValue** %338, align 8
  call void @luaG_forerror(%struct.lua_State* %8419, %struct.TValue* %8420, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #7
  unreachable

; <label>:8421:                                   ; preds = %8409
  %8422 = load double, double* %349, align 8
  %8423 = fcmp oeq double %8422, 0.000000e+00
  br i1 %8423, label %8424, label %8426

; <label>:8424:                                   ; preds = %8421
  %8425 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %8425, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7
  unreachable

; <label>:8426:                                   ; preds = %8421
  %8427 = load double, double* %349, align 8
  %8428 = fcmp olt double 0.000000e+00, %8427
  br i1 %8428, label %8429, label %8433

; <label>:8429:                                   ; preds = %8426
  %8430 = load double, double* %348, align 8
  %8431 = load double, double* %347, align 8
  %8432 = fcmp olt double %8430, %8431
  br i1 %8432, label %8437, label %8445

; <label>:8433:                                   ; preds = %8426
  %8434 = load double, double* %347, align 8
  %8435 = load double, double* %348, align 8
  %8436 = fcmp olt double %8434, %8435
  br i1 %8436, label %8437, label %8445

; <label>:8437:                                   ; preds = %8433, %8429
  %8438 = load i32, i32* %10, align 4
  %8439 = lshr i32 %8438, 15
  %8440 = and i32 %8439, 131071
  %8441 = add nsw i32 %8440, 1
  %8442 = load i32*, i32** %8, align 8
  %8443 = sext i32 %8441 to i64
  %8444 = getelementptr inbounds i32, i32* %8442, i64 %8443
  store i32* %8444, i32** %8, align 8
  br label %8477

; <label>:8445:                                   ; preds = %8433, %8429
  %8446 = load %struct.TValue*, %struct.TValue** %339, align 8
  store %struct.TValue* %8446, %struct.TValue** %350, align 8
  %8447 = load double, double* %348, align 8
  %8448 = load %struct.TValue*, %struct.TValue** %350, align 8
  %8449 = getelementptr inbounds %struct.TValue, %struct.TValue* %8448, i32 0, i32 0
  %8450 = bitcast %union.Value* %8449 to double*
  store double %8447, double* %8450, align 8
  %8451 = load %struct.TValue*, %struct.TValue** %350, align 8
  %8452 = getelementptr inbounds %struct.TValue, %struct.TValue* %8451, i32 0, i32 1
  store i8 19, i8* %8452, align 8
  %8453 = load %struct.TValue*, %struct.TValue** %340, align 8
  store %struct.TValue* %8453, %struct.TValue** %351, align 8
  %8454 = load double, double* %349, align 8
  %8455 = load %struct.TValue*, %struct.TValue** %351, align 8
  %8456 = getelementptr inbounds %struct.TValue, %struct.TValue* %8455, i32 0, i32 0
  %8457 = bitcast %union.Value* %8456 to double*
  store double %8454, double* %8457, align 8
  %8458 = load %struct.TValue*, %struct.TValue** %351, align 8
  %8459 = getelementptr inbounds %struct.TValue, %struct.TValue* %8458, i32 0, i32 1
  store i8 19, i8* %8459, align 8
  %8460 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8461 = bitcast %union.StackValue* %8460 to %struct.TValue*
  store %struct.TValue* %8461, %struct.TValue** %352, align 8
  %8462 = load double, double* %347, align 8
  %8463 = load %struct.TValue*, %struct.TValue** %352, align 8
  %8464 = getelementptr inbounds %struct.TValue, %struct.TValue* %8463, i32 0, i32 0
  %8465 = bitcast %union.Value* %8464 to double*
  store double %8462, double* %8465, align 8
  %8466 = load %struct.TValue*, %struct.TValue** %352, align 8
  %8467 = getelementptr inbounds %struct.TValue, %struct.TValue* %8466, i32 0, i32 1
  store i8 19, i8* %8467, align 8
  %8468 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8469 = getelementptr inbounds %union.StackValue, %union.StackValue* %8468, i64 3
  %8470 = bitcast %union.StackValue* %8469 to %struct.TValue*
  store %struct.TValue* %8470, %struct.TValue** %353, align 8
  %8471 = load double, double* %347, align 8
  %8472 = load %struct.TValue*, %struct.TValue** %353, align 8
  %8473 = getelementptr inbounds %struct.TValue, %struct.TValue* %8472, i32 0, i32 0
  %8474 = bitcast %union.Value* %8473 to double*
  store double %8471, double* %8474, align 8
  %8475 = load %struct.TValue*, %struct.TValue** %353, align 8
  %8476 = getelementptr inbounds %struct.TValue, %struct.TValue* %8475, i32 0, i32 1
  store i8 19, i8* %8476, align 8
  br label %8477

; <label>:8477:                                   ; preds = %8445, %8437
  br label %8478

; <label>:8478:                                   ; preds = %8477, %8342
  %8479 = load i32, i32* %9, align 4
  %8480 = icmp ne i32 %8479, 0
  br i1 %8480, label %8481, label %8489

; <label>:8481:                                   ; preds = %8478
  %8482 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8483 = load i32*, i32** %8, align 8
  %8484 = call i32 @luaG_traceexec(%struct.lua_State* %8482, i32* %8483)
  store i32 %8484, i32* %9, align 4
  %8485 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8486 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8485, i32 0, i32 0
  %8487 = load %union.StackValue*, %union.StackValue** %8486, align 8
  %8488 = getelementptr inbounds %union.StackValue, %union.StackValue* %8487, i64 1
  store %union.StackValue* %8488, %union.StackValue** %7, align 8
  br label %8489

; <label>:8489:                                   ; preds = %8481, %8478
  %8490 = load i32*, i32** %8, align 8
  %8491 = getelementptr inbounds i32, i32* %8490, i32 1
  store i32* %8491, i32** %8, align 8
  %8492 = load i32, i32* %8490, align 4
  store i32 %8492, i32* %10, align 4
  %8493 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8494 = load i32, i32* %10, align 4
  %8495 = lshr i32 %8494, 7
  %8496 = and i32 %8495, 255
  %8497 = sext i32 %8496 to i64
  %8498 = getelementptr inbounds %union.StackValue, %union.StackValue* %8493, i64 %8497
  store %union.StackValue* %8498, %union.StackValue** %11, align 8
  %8499 = load i32, i32* %10, align 4
  %8500 = lshr i32 %8499, 0
  %8501 = and i32 %8500, 127
  %8502 = zext i32 %8501 to i64
  %8503 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8502
  %8504 = load i8*, i8** %8503, align 8
  br label %8998

; <label>:8505:                                   ; preds = %8998
  %8506 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8507 = getelementptr inbounds %union.StackValue, %union.StackValue* %8506, i64 3
  %8508 = bitcast %union.StackValue* %8507 to %struct.TValue*
  %8509 = getelementptr inbounds %struct.TValue, %struct.TValue* %8508, i32 0, i32 1
  %8510 = load i8, i8* %8509, align 8
  %8511 = zext i8 %8510 to i32
  %8512 = and i32 %8511, 15
  %8513 = icmp eq i32 %8512, 0
  br i1 %8513, label %8523, label %8514

; <label>:8514:                                   ; preds = %8505
  %8515 = load i32*, i32** %8, align 8
  %8516 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8517 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8516, i32 0, i32 4
  %8518 = bitcast %union.anon* %8517 to %struct.anon*
  %8519 = getelementptr inbounds %struct.anon, %struct.anon* %8518, i32 0, i32 0
  store i32* %8515, i32** %8519, align 8
  %8520 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8521 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8522 = getelementptr inbounds %union.StackValue, %union.StackValue* %8521, i64 3
  call void @luaF_newtbcupval(%struct.lua_State* %8520, %union.StackValue* %8522)
  br label %8523

; <label>:8523:                                   ; preds = %8514, %8505
  %8524 = load i32, i32* %10, align 4
  %8525 = lshr i32 %8524, 15
  %8526 = and i32 %8525, 131071
  %8527 = load i32*, i32** %8, align 8
  %8528 = sext i32 %8526 to i64
  %8529 = getelementptr inbounds i32, i32* %8527, i64 %8528
  store i32* %8529, i32** %8, align 8
  %8530 = load i32*, i32** %8, align 8
  %8531 = getelementptr inbounds i32, i32* %8530, i32 1
  store i32* %8531, i32** %8, align 8
  %8532 = load i32, i32* %8530, align 4
  store i32 %8532, i32* %10, align 4
  br label %8534

; <label>:8533:                                   ; preds = %8998
  br label %8534

; <label>:8534:                                   ; preds = %8533, %8523
  %8535 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8536 = getelementptr inbounds %union.StackValue, %union.StackValue* %8535, i64 4
  %8537 = bitcast %union.StackValue* %8536 to i8*
  %8538 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8539 = bitcast %union.StackValue* %8538 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8537, i8* %8539, i64 48, i32 8, i1 false)
  %8540 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8541 = getelementptr inbounds %union.StackValue, %union.StackValue* %8540, i64 4
  %8542 = getelementptr inbounds %union.StackValue, %union.StackValue* %8541, i64 3
  %8543 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8544 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8543, i32 0, i32 6
  store %union.StackValue* %8542, %union.StackValue** %8544, align 8
  %8545 = load i32*, i32** %8, align 8
  %8546 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8547 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8546, i32 0, i32 4
  %8548 = bitcast %union.anon* %8547 to %struct.anon*
  %8549 = getelementptr inbounds %struct.anon, %struct.anon* %8548, i32 0, i32 0
  store i32* %8545, i32** %8549, align 8
  %8550 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8551 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8550, i32 0, i32 1
  %8552 = load %union.StackValue*, %union.StackValue** %8551, align 8
  %8553 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8554 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8553, i32 0, i32 6
  store %union.StackValue* %8552, %union.StackValue** %8554, align 8
  %8555 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8556 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8557 = getelementptr inbounds %union.StackValue, %union.StackValue* %8556, i64 4
  %8558 = load i32, i32* %10, align 4
  %8559 = lshr i32 %8558, 24
  %8560 = and i32 %8559, 255
  call void @luaD_call(%struct.lua_State* %8555, %union.StackValue* %8557, i32 %8560)
  %8561 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8562 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8561, i32 0, i32 4
  %8563 = bitcast %union.anon* %8562 to %struct.anon*
  %8564 = getelementptr inbounds %struct.anon, %struct.anon* %8563, i32 0, i32 1
  %8565 = load i32, i32* %8564, align 8
  store i32 %8565, i32* %9, align 4
  %8566 = load i32, i32* %9, align 4
  %8567 = icmp ne i32 %8566, 0
  br i1 %8567, label %8568, label %8579

; <label>:8568:                                   ; preds = %8534
  %8569 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8570 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8569, i32 0, i32 0
  %8571 = load %union.StackValue*, %union.StackValue** %8570, align 8
  %8572 = getelementptr inbounds %union.StackValue, %union.StackValue* %8571, i64 1
  store %union.StackValue* %8572, %union.StackValue** %7, align 8
  %8573 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8574 = load i32, i32* %10, align 4
  %8575 = lshr i32 %8574, 7
  %8576 = and i32 %8575, 255
  %8577 = sext i32 %8576 to i64
  %8578 = getelementptr inbounds %union.StackValue, %union.StackValue* %8573, i64 %8577
  store %union.StackValue* %8578, %union.StackValue** %11, align 8
  br label %8579

; <label>:8579:                                   ; preds = %8568, %8534
  %8580 = load i32*, i32** %8, align 8
  %8581 = getelementptr inbounds i32, i32* %8580, i32 1
  store i32* %8581, i32** %8, align 8
  %8582 = load i32, i32* %8580, align 4
  store i32 %8582, i32* %10, align 4
  %8583 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8584 = getelementptr inbounds %union.StackValue, %union.StackValue* %8583, i64 2
  store %union.StackValue* %8584, %union.StackValue** %11, align 8
  br label %8586

; <label>:8585:                                   ; preds = %8998
  br label %8586

; <label>:8586:                                   ; preds = %8585, %8579
  %8587 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8588 = getelementptr inbounds %union.StackValue, %union.StackValue* %8587, i64 2
  %8589 = bitcast %union.StackValue* %8588 to %struct.TValue*
  %8590 = getelementptr inbounds %struct.TValue, %struct.TValue* %8589, i32 0, i32 1
  %8591 = load i8, i8* %8590, align 8
  %8592 = zext i8 %8591 to i32
  %8593 = and i32 %8592, 15
  %8594 = icmp eq i32 %8593, 0
  br i1 %8594, label %8620, label %8595

; <label>:8595:                                   ; preds = %8586
  %8596 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8597 = bitcast %union.StackValue* %8596 to %struct.TValue*
  store %struct.TValue* %8597, %struct.TValue** %354, align 8
  %8598 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8599 = getelementptr inbounds %union.StackValue, %union.StackValue* %8598, i64 2
  %8600 = bitcast %union.StackValue* %8599 to %struct.TValue*
  store %struct.TValue* %8600, %struct.TValue** %355, align 8
  %8601 = load %struct.TValue*, %struct.TValue** %354, align 8
  %8602 = getelementptr inbounds %struct.TValue, %struct.TValue* %8601, i32 0, i32 0
  %8603 = load %struct.TValue*, %struct.TValue** %355, align 8
  %8604 = getelementptr inbounds %struct.TValue, %struct.TValue* %8603, i32 0, i32 0
  %8605 = bitcast %union.Value* %8602 to i8*
  %8606 = bitcast %union.Value* %8604 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8605, i8* %8606, i64 8, i32 8, i1 false)
  %8607 = load %struct.TValue*, %struct.TValue** %355, align 8
  %8608 = getelementptr inbounds %struct.TValue, %struct.TValue* %8607, i32 0, i32 1
  %8609 = load i8, i8* %8608, align 8
  %8610 = load %struct.TValue*, %struct.TValue** %354, align 8
  %8611 = getelementptr inbounds %struct.TValue, %struct.TValue* %8610, i32 0, i32 1
  store i8 %8609, i8* %8611, align 8
  %8612 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8613 = load i32, i32* %10, align 4
  %8614 = lshr i32 %8613, 15
  %8615 = and i32 %8614, 131071
  %8616 = load i32*, i32** %8, align 8
  %8617 = sext i32 %8615 to i64
  %8618 = sub i64 0, %8617
  %8619 = getelementptr inbounds i32, i32* %8616, i64 %8618
  store i32* %8619, i32** %8, align 8
  br label %8620

; <label>:8620:                                   ; preds = %8595, %8586
  %8621 = load i32, i32* %9, align 4
  %8622 = icmp ne i32 %8621, 0
  br i1 %8622, label %8623, label %8631

; <label>:8623:                                   ; preds = %8620
  %8624 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8625 = load i32*, i32** %8, align 8
  %8626 = call i32 @luaG_traceexec(%struct.lua_State* %8624, i32* %8625)
  store i32 %8626, i32* %9, align 4
  %8627 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8628 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8627, i32 0, i32 0
  %8629 = load %union.StackValue*, %union.StackValue** %8628, align 8
  %8630 = getelementptr inbounds %union.StackValue, %union.StackValue* %8629, i64 1
  store %union.StackValue* %8630, %union.StackValue** %7, align 8
  br label %8631

; <label>:8631:                                   ; preds = %8623, %8620
  %8632 = load i32*, i32** %8, align 8
  %8633 = getelementptr inbounds i32, i32* %8632, i32 1
  store i32* %8633, i32** %8, align 8
  %8634 = load i32, i32* %8632, align 4
  store i32 %8634, i32* %10, align 4
  %8635 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8636 = load i32, i32* %10, align 4
  %8637 = lshr i32 %8636, 7
  %8638 = and i32 %8637, 255
  %8639 = sext i32 %8638 to i64
  %8640 = getelementptr inbounds %union.StackValue, %union.StackValue* %8635, i64 %8639
  store %union.StackValue* %8640, %union.StackValue** %11, align 8
  %8641 = load i32, i32* %10, align 4
  %8642 = lshr i32 %8641, 0
  %8643 = and i32 %8642, 127
  %8644 = zext i32 %8643 to i64
  %8645 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8644
  %8646 = load i8*, i8** %8645, align 8
  br label %8998

; <label>:8647:                                   ; preds = %8998
  %8648 = load i32, i32* %10, align 4
  %8649 = lshr i32 %8648, 16
  %8650 = and i32 %8649, 255
  store i32 %8650, i32* %356, align 4
  %8651 = load i32, i32* %10, align 4
  %8652 = lshr i32 %8651, 24
  %8653 = and i32 %8652, 255
  store i32 %8653, i32* %357, align 4
  %8654 = load i32, i32* %356, align 4
  %8655 = icmp eq i32 %8654, 0
  br i1 %8655, label %8656, label %8667

; <label>:8656:                                   ; preds = %8647
  %8657 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8658 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8657, i32 0, i32 6
  %8659 = load %union.StackValue*, %union.StackValue** %8658, align 8
  %8660 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8661 = ptrtoint %union.StackValue* %8659 to i64
  %8662 = ptrtoint %union.StackValue* %8660 to i64
  %8663 = sub i64 %8661, %8662
  %8664 = sdiv exact i64 %8663, 16
  %8665 = trunc i64 %8664 to i32
  %8666 = sub nsw i32 %8665, 1
  store i32 %8666, i32* %356, align 4
  br label %8673

; <label>:8667:                                   ; preds = %8647
  %8668 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8669 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8668, i32 0, i32 1
  %8670 = load %union.StackValue*, %union.StackValue** %8669, align 8
  %8671 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8672 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8671, i32 0, i32 6
  store %union.StackValue* %8670, %union.StackValue** %8672, align 8
  br label %8673

; <label>:8673:                                   ; preds = %8667, %8656
  %8674 = load i32, i32* %357, align 4
  %8675 = icmp eq i32 %8674, 0
  br i1 %8675, label %8676, label %8683

; <label>:8676:                                   ; preds = %8673
  %8677 = load i32*, i32** %8, align 8
  %8678 = load i32, i32* %8677, align 4
  %8679 = lshr i32 %8678, 7
  %8680 = and i32 %8679, 33554431
  store i32 %8680, i32* %357, align 4
  %8681 = load i32*, i32** %8, align 8
  %8682 = getelementptr inbounds i32, i32* %8681, i32 1
  store i32* %8682, i32** %8, align 8
  br label %8683

; <label>:8683:                                   ; preds = %8676, %8673
  %8684 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8685 = bitcast %union.StackValue* %8684 to %struct.TValue*
  %8686 = getelementptr inbounds %struct.TValue, %struct.TValue* %8685, i32 0, i32 0
  %8687 = bitcast %union.Value* %8686 to %struct.GCObject**
  %8688 = load %struct.GCObject*, %struct.GCObject** %8687, align 8
  %8689 = bitcast %struct.GCObject* %8688 to %union.GCUnion*
  %8690 = bitcast %union.GCUnion* %8689 to %struct.Table*
  store %struct.Table* %8690, %struct.Table** %359, align 8
  %8691 = load i32, i32* %357, align 4
  %8692 = sub nsw i32 %8691, 1
  %8693 = mul nsw i32 %8692, 50
  %8694 = load i32, i32* %356, align 4
  %8695 = add nsw i32 %8693, %8694
  store i32 %8695, i32* %358, align 4
  %8696 = load i32, i32* %358, align 4
  %8697 = load %struct.Table*, %struct.Table** %359, align 8
  %8698 = call i32 @luaH_realasize(%struct.Table* %8697)
  %8699 = icmp ugt i32 %8696, %8698
  br i1 %8699, label %8700, label %8704

; <label>:8700:                                   ; preds = %8683
  %8701 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8702 = load %struct.Table*, %struct.Table** %359, align 8
  %8703 = load i32, i32* %358, align 4
  call void @luaH_resizearray(%struct.lua_State* %8701, %struct.Table* %8702, i32 %8703)
  br label %8704

; <label>:8704:                                   ; preds = %8700, %8683
  br label %8705

; <label>:8705:                                   ; preds = %8768, %8704
  %8706 = load i32, i32* %356, align 4
  %8707 = icmp sgt i32 %8706, 0
  br i1 %8707, label %8708, label %8771

; <label>:8708:                                   ; preds = %8705
  %8709 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8710 = load i32, i32* %356, align 4
  %8711 = sext i32 %8710 to i64
  %8712 = getelementptr inbounds %union.StackValue, %union.StackValue* %8709, i64 %8711
  %8713 = bitcast %union.StackValue* %8712 to %struct.TValue*
  store %struct.TValue* %8713, %struct.TValue** %360, align 8
  %8714 = load %struct.Table*, %struct.Table** %359, align 8
  %8715 = getelementptr inbounds %struct.Table, %struct.Table* %8714, i32 0, i32 6
  %8716 = load %struct.TValue*, %struct.TValue** %8715, align 8
  %8717 = load i32, i32* %358, align 4
  %8718 = sub i32 %8717, 1
  %8719 = zext i32 %8718 to i64
  %8720 = getelementptr inbounds %struct.TValue, %struct.TValue* %8716, i64 %8719
  store %struct.TValue* %8720, %struct.TValue** %361, align 8
  %8721 = load %struct.TValue*, %struct.TValue** %360, align 8
  store %struct.TValue* %8721, %struct.TValue** %362, align 8
  %8722 = load %struct.TValue*, %struct.TValue** %361, align 8
  %8723 = getelementptr inbounds %struct.TValue, %struct.TValue* %8722, i32 0, i32 0
  %8724 = load %struct.TValue*, %struct.TValue** %362, align 8
  %8725 = getelementptr inbounds %struct.TValue, %struct.TValue* %8724, i32 0, i32 0
  %8726 = bitcast %union.Value* %8723 to i8*
  %8727 = bitcast %union.Value* %8725 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8726, i8* %8727, i64 8, i32 8, i1 false)
  %8728 = load %struct.TValue*, %struct.TValue** %362, align 8
  %8729 = getelementptr inbounds %struct.TValue, %struct.TValue* %8728, i32 0, i32 1
  %8730 = load i8, i8* %8729, align 8
  %8731 = load %struct.TValue*, %struct.TValue** %361, align 8
  %8732 = getelementptr inbounds %struct.TValue, %struct.TValue* %8731, i32 0, i32 1
  store i8 %8730, i8* %8732, align 8
  %8733 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8734 = load i32, i32* %358, align 4
  %8735 = add i32 %8734, -1
  store i32 %8735, i32* %358, align 4
  %8736 = load %struct.TValue*, %struct.TValue** %360, align 8
  %8737 = getelementptr inbounds %struct.TValue, %struct.TValue* %8736, i32 0, i32 1
  %8738 = load i8, i8* %8737, align 8
  %8739 = zext i8 %8738 to i32
  %8740 = and i32 %8739, 64
  %8741 = icmp ne i32 %8740, 0
  br i1 %8741, label %8742, label %8766

; <label>:8742:                                   ; preds = %8708
  %8743 = load %struct.Table*, %struct.Table** %359, align 8
  %8744 = bitcast %struct.Table* %8743 to %union.GCUnion*
  %8745 = bitcast %union.GCUnion* %8744 to %struct.GCObject*
  %8746 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8745, i32 0, i32 2
  %8747 = load i8, i8* %8746, align 1
  %8748 = zext i8 %8747 to i32
  %8749 = and i32 %8748, 32
  %8750 = icmp ne i32 %8749, 0
  br i1 %8750, label %8751, label %8766

; <label>:8751:                                   ; preds = %8742
  %8752 = load %struct.TValue*, %struct.TValue** %360, align 8
  %8753 = getelementptr inbounds %struct.TValue, %struct.TValue* %8752, i32 0, i32 0
  %8754 = bitcast %union.Value* %8753 to %struct.GCObject**
  %8755 = load %struct.GCObject*, %struct.GCObject** %8754, align 8
  %8756 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8755, i32 0, i32 2
  %8757 = load i8, i8* %8756, align 1
  %8758 = zext i8 %8757 to i32
  %8759 = and i32 %8758, 24
  %8760 = icmp ne i32 %8759, 0
  br i1 %8760, label %8761, label %8766

; <label>:8761:                                   ; preds = %8751
  %8762 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8763 = load %struct.Table*, %struct.Table** %359, align 8
  %8764 = bitcast %struct.Table* %8763 to %union.GCUnion*
  %8765 = bitcast %union.GCUnion* %8764 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %8762, %struct.GCObject* %8765)
  br label %8767

; <label>:8766:                                   ; preds = %8751, %8742, %8708
  br label %8767

; <label>:8767:                                   ; preds = %8766, %8761
  br label %8768

; <label>:8768:                                   ; preds = %8767
  %8769 = load i32, i32* %356, align 4
  %8770 = add nsw i32 %8769, -1
  store i32 %8770, i32* %356, align 4
  br label %8705

; <label>:8771:                                   ; preds = %8705
  %8772 = load i32, i32* %9, align 4
  %8773 = icmp ne i32 %8772, 0
  br i1 %8773, label %8774, label %8782

; <label>:8774:                                   ; preds = %8771
  %8775 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8776 = load i32*, i32** %8, align 8
  %8777 = call i32 @luaG_traceexec(%struct.lua_State* %8775, i32* %8776)
  store i32 %8777, i32* %9, align 4
  %8778 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8779 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8778, i32 0, i32 0
  %8780 = load %union.StackValue*, %union.StackValue** %8779, align 8
  %8781 = getelementptr inbounds %union.StackValue, %union.StackValue* %8780, i64 1
  store %union.StackValue* %8781, %union.StackValue** %7, align 8
  br label %8782

; <label>:8782:                                   ; preds = %8774, %8771
  %8783 = load i32*, i32** %8, align 8
  %8784 = getelementptr inbounds i32, i32* %8783, i32 1
  store i32* %8784, i32** %8, align 8
  %8785 = load i32, i32* %8783, align 4
  store i32 %8785, i32* %10, align 4
  %8786 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8787 = load i32, i32* %10, align 4
  %8788 = lshr i32 %8787, 7
  %8789 = and i32 %8788, 255
  %8790 = sext i32 %8789 to i64
  %8791 = getelementptr inbounds %union.StackValue, %union.StackValue* %8786, i64 %8790
  store %union.StackValue* %8791, %union.StackValue** %11, align 8
  %8792 = load i32, i32* %10, align 4
  %8793 = lshr i32 %8792, 0
  %8794 = and i32 %8793, 127
  %8795 = zext i32 %8794 to i64
  %8796 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8795
  %8797 = load i8*, i8** %8796, align 8
  br label %8998

; <label>:8798:                                   ; preds = %8998
  %8799 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %8800 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8799, i32 0, i32 5
  %8801 = load %struct.Proto*, %struct.Proto** %8800, align 8
  %8802 = getelementptr inbounds %struct.Proto, %struct.Proto* %8801, i32 0, i32 17
  %8803 = load %struct.Proto**, %struct.Proto*** %8802, align 8
  %8804 = load i32, i32* %10, align 4
  %8805 = lshr i32 %8804, 15
  %8806 = and i32 %8805, 131071
  %8807 = sext i32 %8806 to i64
  %8808 = getelementptr inbounds %struct.Proto*, %struct.Proto** %8803, i64 %8807
  %8809 = load %struct.Proto*, %struct.Proto** %8808, align 8
  store %struct.Proto* %8809, %struct.Proto** %363, align 8
  %8810 = load i32*, i32** %8, align 8
  %8811 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8812 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8811, i32 0, i32 4
  %8813 = bitcast %union.anon* %8812 to %struct.anon*
  %8814 = getelementptr inbounds %struct.anon, %struct.anon* %8813, i32 0, i32 0
  store i32* %8810, i32** %8814, align 8
  %8815 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8816 = load %struct.Proto*, %struct.Proto** %363, align 8
  %8817 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %8818 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8817, i32 0, i32 6
  %8819 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %8818, i32 0, i32 0
  %8820 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8821 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @pushclosure(%struct.lua_State* %8815, %struct.Proto* %8816, %struct.UpVal** %8819, %union.StackValue* %8820, %union.StackValue* %8821)
  %8822 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8823 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8822, i32 0, i32 7
  %8824 = load %struct.global_State*, %struct.global_State** %8823, align 8
  %8825 = getelementptr inbounds %struct.global_State, %struct.global_State* %8824, i32 0, i32 3
  %8826 = load i64, i64* %8825, align 8
  %8827 = icmp sgt i64 %8826, 0
  br i1 %8827, label %8828, label %8839

; <label>:8828:                                   ; preds = %8798
  %8829 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8830 = getelementptr inbounds %union.StackValue, %union.StackValue* %8829, i64 1
  %8831 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8832 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8831, i32 0, i32 6
  store %union.StackValue* %8830, %union.StackValue** %8832, align 8
  %8833 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %8833)
  %8834 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8835 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8834, i32 0, i32 4
  %8836 = bitcast %union.anon* %8835 to %struct.anon*
  %8837 = getelementptr inbounds %struct.anon, %struct.anon* %8836, i32 0, i32 1
  %8838 = load i32, i32* %8837, align 8
  store i32 %8838, i32* %9, align 4
  br label %8839

; <label>:8839:                                   ; preds = %8828, %8798
  %8840 = load i32, i32* %9, align 4
  %8841 = icmp ne i32 %8840, 0
  br i1 %8841, label %8842, label %8850

; <label>:8842:                                   ; preds = %8839
  %8843 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8844 = load i32*, i32** %8, align 8
  %8845 = call i32 @luaG_traceexec(%struct.lua_State* %8843, i32* %8844)
  store i32 %8845, i32* %9, align 4
  %8846 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8847 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8846, i32 0, i32 0
  %8848 = load %union.StackValue*, %union.StackValue** %8847, align 8
  %8849 = getelementptr inbounds %union.StackValue, %union.StackValue* %8848, i64 1
  store %union.StackValue* %8849, %union.StackValue** %7, align 8
  br label %8850

; <label>:8850:                                   ; preds = %8842, %8839
  %8851 = load i32*, i32** %8, align 8
  %8852 = getelementptr inbounds i32, i32* %8851, i32 1
  store i32* %8852, i32** %8, align 8
  %8853 = load i32, i32* %8851, align 4
  store i32 %8853, i32* %10, align 4
  %8854 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8855 = load i32, i32* %10, align 4
  %8856 = lshr i32 %8855, 7
  %8857 = and i32 %8856, 255
  %8858 = sext i32 %8857 to i64
  %8859 = getelementptr inbounds %union.StackValue, %union.StackValue* %8854, i64 %8858
  store %union.StackValue* %8859, %union.StackValue** %11, align 8
  %8860 = load i32, i32* %10, align 4
  %8861 = lshr i32 %8860, 0
  %8862 = and i32 %8861, 127
  %8863 = zext i32 %8862 to i64
  %8864 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8863
  %8865 = load i8*, i8** %8864, align 8
  br label %8998

; <label>:8866:                                   ; preds = %8998
  %8867 = load i32, i32* %10, align 4
  %8868 = lshr i32 %8867, 24
  %8869 = and i32 %8868, 255
  %8870 = sub nsw i32 %8869, 1
  store i32 %8870, i32* %364, align 4
  %8871 = load i32*, i32** %8, align 8
  %8872 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8873 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8872, i32 0, i32 4
  %8874 = bitcast %union.anon* %8873 to %struct.anon*
  %8875 = getelementptr inbounds %struct.anon, %struct.anon* %8874, i32 0, i32 0
  store i32* %8871, i32** %8875, align 8
  %8876 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8877 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8876, i32 0, i32 1
  %8878 = load %union.StackValue*, %union.StackValue** %8877, align 8
  %8879 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8880 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8879, i32 0, i32 6
  store %union.StackValue* %8878, %union.StackValue** %8880, align 8
  %8881 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8882 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8883 = load %union.StackValue*, %union.StackValue** %11, align 8
  %8884 = load i32, i32* %364, align 4
  call void @luaT_getvarargs(%struct.lua_State* %8881, %struct.CallInfo* %8882, %union.StackValue* %8883, i32 %8884)
  %8885 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8886 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8885, i32 0, i32 4
  %8887 = bitcast %union.anon* %8886 to %struct.anon*
  %8888 = getelementptr inbounds %struct.anon, %struct.anon* %8887, i32 0, i32 1
  %8889 = load i32, i32* %8888, align 8
  store i32 %8889, i32* %9, align 4
  %8890 = load i32, i32* %9, align 4
  %8891 = icmp ne i32 %8890, 0
  br i1 %8891, label %8892, label %8900

; <label>:8892:                                   ; preds = %8866
  %8893 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8894 = load i32*, i32** %8, align 8
  %8895 = call i32 @luaG_traceexec(%struct.lua_State* %8893, i32* %8894)
  store i32 %8895, i32* %9, align 4
  %8896 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8897 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8896, i32 0, i32 0
  %8898 = load %union.StackValue*, %union.StackValue** %8897, align 8
  %8899 = getelementptr inbounds %union.StackValue, %union.StackValue* %8898, i64 1
  store %union.StackValue* %8899, %union.StackValue** %7, align 8
  br label %8900

; <label>:8900:                                   ; preds = %8892, %8866
  %8901 = load i32*, i32** %8, align 8
  %8902 = getelementptr inbounds i32, i32* %8901, i32 1
  store i32* %8902, i32** %8, align 8
  %8903 = load i32, i32* %8901, align 4
  store i32 %8903, i32* %10, align 4
  %8904 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8905 = load i32, i32* %10, align 4
  %8906 = lshr i32 %8905, 7
  %8907 = and i32 %8906, 255
  %8908 = sext i32 %8907 to i64
  %8909 = getelementptr inbounds %union.StackValue, %union.StackValue* %8904, i64 %8908
  store %union.StackValue* %8909, %union.StackValue** %11, align 8
  %8910 = load i32, i32* %10, align 4
  %8911 = lshr i32 %8910, 0
  %8912 = and i32 %8911, 127
  %8913 = zext i32 %8912 to i64
  %8914 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8913
  %8915 = load i8*, i8** %8914, align 8
  br label %8998

; <label>:8916:                                   ; preds = %8998
  %8917 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8918 = load i32, i32* %10, align 4
  %8919 = lshr i32 %8918, 7
  %8920 = and i32 %8919, 255
  %8921 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8922 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  %8923 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8922, i32 0, i32 5
  %8924 = load %struct.Proto*, %struct.Proto** %8923, align 8
  call void @luaT_adjustvarargs(%struct.lua_State* %8917, i32 %8920, %struct.CallInfo* %8921, %struct.Proto* %8924)
  %8925 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8926 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8925, i32 0, i32 4
  %8927 = bitcast %union.anon* %8926 to %struct.anon*
  %8928 = getelementptr inbounds %struct.anon, %struct.anon* %8927, i32 0, i32 1
  %8929 = load i32, i32* %8928, align 8
  store i32 %8929, i32* %9, align 4
  %8930 = load i32, i32* %9, align 4
  %8931 = icmp ne i32 %8930, 0
  br i1 %8931, label %8932, label %8939

; <label>:8932:                                   ; preds = %8916
  %8933 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8934 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  call void @luaD_hookcall(%struct.lua_State* %8933, %struct.CallInfo* %8934)
  %8935 = load i32*, i32** %8, align 8
  %8936 = getelementptr inbounds i32, i32* %8935, i64 1
  %8937 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8938 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8937, i32 0, i32 9
  store i32* %8936, i32** %8938, align 8
  br label %8939

; <label>:8939:                                   ; preds = %8932, %8916
  %8940 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8941 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8940, i32 0, i32 0
  %8942 = load %union.StackValue*, %union.StackValue** %8941, align 8
  %8943 = getelementptr inbounds %union.StackValue, %union.StackValue* %8942, i64 1
  store %union.StackValue* %8943, %union.StackValue** %7, align 8
  %8944 = load i32, i32* %9, align 4
  %8945 = icmp ne i32 %8944, 0
  br i1 %8945, label %8946, label %8954

; <label>:8946:                                   ; preds = %8939
  %8947 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8948 = load i32*, i32** %8, align 8
  %8949 = call i32 @luaG_traceexec(%struct.lua_State* %8947, i32* %8948)
  store i32 %8949, i32* %9, align 4
  %8950 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8951 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8950, i32 0, i32 0
  %8952 = load %union.StackValue*, %union.StackValue** %8951, align 8
  %8953 = getelementptr inbounds %union.StackValue, %union.StackValue* %8952, i64 1
  store %union.StackValue* %8953, %union.StackValue** %7, align 8
  br label %8954

; <label>:8954:                                   ; preds = %8946, %8939
  %8955 = load i32*, i32** %8, align 8
  %8956 = getelementptr inbounds i32, i32* %8955, i32 1
  store i32* %8956, i32** %8, align 8
  %8957 = load i32, i32* %8955, align 4
  store i32 %8957, i32* %10, align 4
  %8958 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8959 = load i32, i32* %10, align 4
  %8960 = lshr i32 %8959, 7
  %8961 = and i32 %8960, 255
  %8962 = sext i32 %8961 to i64
  %8963 = getelementptr inbounds %union.StackValue, %union.StackValue* %8958, i64 %8962
  store %union.StackValue* %8963, %union.StackValue** %11, align 8
  %8964 = load i32, i32* %10, align 4
  %8965 = lshr i32 %8964, 0
  %8966 = and i32 %8965, 127
  %8967 = zext i32 %8966 to i64
  %8968 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8967
  %8969 = load i8*, i8** %8968, align 8
  br label %8998

; <label>:8970:                                   ; preds = %8998
  %8971 = load i32, i32* %9, align 4
  %8972 = icmp ne i32 %8971, 0
  br i1 %8972, label %8973, label %8981

; <label>:8973:                                   ; preds = %8970
  %8974 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8975 = load i32*, i32** %8, align 8
  %8976 = call i32 @luaG_traceexec(%struct.lua_State* %8974, i32* %8975)
  store i32 %8976, i32* %9, align 4
  %8977 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8978 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8977, i32 0, i32 0
  %8979 = load %union.StackValue*, %union.StackValue** %8978, align 8
  %8980 = getelementptr inbounds %union.StackValue, %union.StackValue* %8979, i64 1
  store %union.StackValue* %8980, %union.StackValue** %7, align 8
  br label %8981

; <label>:8981:                                   ; preds = %8973, %8970
  %8982 = load i32*, i32** %8, align 8
  %8983 = getelementptr inbounds i32, i32* %8982, i32 1
  store i32* %8983, i32** %8, align 8
  %8984 = load i32, i32* %8982, align 4
  store i32 %8984, i32* %10, align 4
  %8985 = load %union.StackValue*, %union.StackValue** %7, align 8
  %8986 = load i32, i32* %10, align 4
  %8987 = lshr i32 %8986, 7
  %8988 = and i32 %8987, 255
  %8989 = sext i32 %8988 to i64
  %8990 = getelementptr inbounds %union.StackValue, %union.StackValue* %8985, i64 %8989
  store %union.StackValue* %8990, %union.StackValue** %11, align 8
  %8991 = load i32, i32* %10, align 4
  %8992 = lshr i32 %8991, 0
  %8993 = and i32 %8992, 127
  %8994 = zext i32 %8993 to i64
  %8995 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %8994
  %8996 = load i8*, i8** %8995, align 8
  br label %8998

; <label>:8997:                                   ; preds = %8092, %8023, %7977, %7889
  ret void

; <label>:8998:                                   ; preds = %8981, %8954, %8900, %8850, %8782, %8631, %8489, %8227, %7782, %7725, %7629, %7550, %7434, %7318, %7202, %7086, %6994, %6932, %6806, %6680, %6601, %6561, %6527, %6478, %6411, %6360, %6295, %6216, %6107, %6005, %5902, %5816, %5721, %5619, %5517, %5415, %5323, %5231, %5139, %4984, %4864, %4743, %4589, %4437, %4285, %4133, %3979, %3860, %3740, %3587, %3433, %3282, %3128, %3008, %2913, %2817, %2698, %2578, %2461, %2341, %2205, %2123, %1966, %1780, %1560, %1398, %1292, %1159, %994, %885, %796, %744, %704, %659, %608, %568, %528, %480, %432
  %8999 = phi i8* [ %447, %432 ], [ %495, %480 ], [ %543, %528 ], [ %583, %568 ], [ %623, %608 ], [ %674, %659 ], [ %719, %704 ], [ %759, %744 ], [ %811, %796 ], [ %900, %885 ], [ %1009, %994 ], [ %1174, %1159 ], [ %1307, %1292 ], [ %1413, %1398 ], [ %1575, %1560 ], [ %1795, %1780 ], [ %1981, %1966 ], [ %2138, %2123 ], [ %2220, %2205 ], [ %2356, %2341 ], [ %2476, %2461 ], [ %2593, %2578 ], [ %2713, %2698 ], [ %2832, %2817 ], [ %2928, %2913 ], [ %3023, %3008 ], [ %3143, %3128 ], [ %3297, %3282 ], [ %3448, %3433 ], [ %3602, %3587 ], [ %3755, %3740 ], [ %3875, %3860 ], [ %3994, %3979 ], [ %4148, %4133 ], [ %4300, %4285 ], [ %4452, %4437 ], [ %4604, %4589 ], [ %4758, %4743 ], [ %4879, %4864 ], [ %4999, %4984 ], [ %5154, %5139 ], [ %5246, %5231 ], [ %5338, %5323 ], [ %5430, %5415 ], [ %5532, %5517 ], [ %5634, %5619 ], [ %5736, %5721 ], [ %5831, %5816 ], [ %5917, %5902 ], [ %6020, %6005 ], [ %6122, %6107 ], [ %6231, %6216 ], [ %6310, %6295 ], [ %6375, %6360 ], [ %6426, %6411 ], [ %6493, %6478 ], [ %6542, %6527 ], [ %6576, %6561 ], [ %6616, %6601 ], [ %6695, %6680 ], [ %6821, %6806 ], [ %6947, %6932 ], [ %7009, %6994 ], [ %7101, %7086 ], [ %7217, %7202 ], [ %7333, %7318 ], [ %7449, %7434 ], [ %7565, %7550 ], [ %7644, %7629 ], [ %7740, %7725 ], [ %7797, %7782 ], [ %8242, %8227 ], [ %8504, %8489 ], [ %8646, %8631 ], [ %8797, %8782 ], [ %8865, %8850 ], [ %8915, %8900 ], [ %8969, %8954 ], [ %8996, %8981 ]
  indirectbr i8* %8999, [label %448, label %544, label %584, label %496, label %624, label %675, label %720, label %760, label %812, label %901, label %1010, label %1175, label %1308, label %1414, label %1576, label %1796, label %1982, label %2139, label %2221, label %2357, label %2477, label %2594, label %2714, label %2833, label %2929, label %3024, label %3144, label %3298, label %3449, label %3603, label %3756, label %3876, label %3995, label %5155, label %5247, label %5339, label %5737, label %5832, label %4149, label %4301, label %4453, label %4605, label %4759, label %4880, label %5000, label %5431, label %5533, label %5635, label %6021, label %5918, label %6123, label %6232, label %6311, label %6376, label %6427, label %6494, label %6543, label %6577, label %6617, label %6696, label %6822, label %6948, label %7010, label %7102, label %7218, label %7334, label %7450, label %7566, label %7645, label %7741, label %7798, label %7920, label %7981, label %8024, label %8093, label %8243, label %8505, label %8533, label %8585, label %8647, label %8798, label %8866, label %8916, label %8970]
}

declare hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo*) #1

declare hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) #1

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #1

declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #1

declare hidden i32 @luaO_fb2int(i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #1

declare hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) #1

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) #1

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) #1

declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) #1

declare hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) #1

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) #1

declare hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) #1

declare hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) #1

declare hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forlimit(%struct.lua_State*, i64, %struct.TValue*, i64*, i64) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TValue* %2, %struct.TValue** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TValue*, %struct.TValue** %9, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  %19 = call i32 @luaV_tointeger(%struct.TValue* %13, i64* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

; <label>:21:                                     ; preds = %5
  %22 = load %struct.TValue*, %struct.TValue** %9, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 19
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %21
  %28 = load %struct.TValue*, %struct.TValue** %9, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to double*
  %31 = load double, double* %30, align 8
  store double %31, double* %12, align 8
  br i1 true, label %39, label %36

; <label>:32:                                     ; preds = %21
  %33 = load %struct.TValue*, %struct.TValue** %9, align 8
  %34 = call i32 @luaV_tonumber_(%struct.TValue* %33, double* %12)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %32, %27
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %38 = load %struct.TValue*, %struct.TValue** %9, align 8
  call void @luaG_forerror(%struct.lua_State* %37, %struct.TValue* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

; <label>:39:                                     ; preds = %32, %27
  %40 = load double, double* %12, align 8
  %41 = fcmp olt double 0.000000e+00, %40
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store i32 1, i32* %6, align 4
  br label %72

; <label>:46:                                     ; preds = %42
  %47 = load i64*, i64** %10, align 8
  store i64 9223372036854775807, i64* %47, align 8
  br label %54

; <label>:48:                                     ; preds = %39
  %49 = load i64, i64* %11, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  store i32 1, i32* %6, align 4
  br label %72

; <label>:52:                                     ; preds = %48
  %53 = load i64*, i64** %10, align 8
  store i64 -9223372036854775808, i64* %53, align 8
  br label %54

; <label>:54:                                     ; preds = %52, %46
  br label %55

; <label>:55:                                     ; preds = %54, %5
  %56 = load i64, i64* %11, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %59, %61
  %63 = zext i1 %62 to i32
  br label %70

; <label>:64:                                     ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %65, %67
  %69 = zext i1 %68 to i32
  br label %70

; <label>:70:                                     ; preds = %64, %58
  %71 = phi i32 [ %63, %58 ], [ %69, %64 ]
  store i32 %71, i32* %6, align 4
  br label %72

; <label>:72:                                     ; preds = %70, %51, %45
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

; Function Attrs: noreturn
declare hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) #3

declare hidden i32 @luaH_realasize(%struct.Table*) #1

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushclosure(%struct.lua_State*, %struct.Proto*, %struct.UpVal**, %union.StackValue*, %union.StackValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca %struct.UpVal**, align 8
  %9 = alloca %union.StackValue*, align 8
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Upvaldesc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.LClosure*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.LClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.Proto* %1, %struct.Proto** %7, align 8
  store %struct.UpVal** %2, %struct.UpVal*** %8, align 8
  store %union.StackValue* %3, %union.StackValue** %9, align 8
  store %union.StackValue* %4, %union.StackValue** %10, align 8
  %17 = load %struct.Proto*, %struct.Proto** %7, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.Proto*, %struct.Proto** %7, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 18
  %22 = load %struct.Upvaldesc*, %struct.Upvaldesc** %21, align 8
  store %struct.Upvaldesc* %22, %struct.Upvaldesc** %12, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %23, i32 %24)
  store %struct.LClosure* %25, %struct.LClosure** %14, align 8
  %26 = load %struct.Proto*, %struct.Proto** %7, align 8
  %27 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 5
  store %struct.Proto* %26, %struct.Proto** %28, align 8
  %29 = load %union.StackValue*, %union.StackValue** %10, align 8
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %15, align 8
  %31 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  store %struct.LClosure* %31, %struct.LClosure** %16, align 8
  %32 = load %struct.LClosure*, %struct.LClosure** %16, align 8
  %33 = bitcast %struct.LClosure* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %struct.GCObject*
  %35 = load %struct.TValue*, %struct.TValue** %15, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to %struct.GCObject**
  store %struct.GCObject* %34, %struct.GCObject** %37, align 8
  %38 = load %struct.TValue*, %struct.TValue** %15, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 1
  store i8 86, i8* %39, align 8
  store i32 0, i32* %13, align 4
  br label %40

; <label>:40:                                     ; preds = %120, %5
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %123

; <label>:44:                                     ; preds = %40
  %45 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %45, i64 %47
  %49 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 8
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %70

; <label>:52:                                     ; preds = %44
  %53 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %54 = load %union.StackValue*, %union.StackValue** %9, align 8
  %55 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %55, i64 %57
  %59 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %54, i64 %62
  %64 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %53, %union.StackValue* %63)
  %65 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %66 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %65, i32 0, i32 6
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %66, i64 0, i64 %68
  store %struct.UpVal* %64, %struct.UpVal** %69, align 8
  br label %86

; <label>:70:                                     ; preds = %44
  %71 = load %struct.UpVal**, %struct.UpVal*** %8, align 8
  %72 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %72, i64 %74
  %76 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %71, i64 %78
  %80 = load %struct.UpVal*, %struct.UpVal** %79, align 8
  %81 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %82 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %81, i32 0, i32 6
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %82, i64 0, i64 %84
  store %struct.UpVal* %80, %struct.UpVal** %85, align 8
  br label %86

; <label>:86:                                     ; preds = %70, %52
  %87 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %88 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %87, i32 0, i32 2
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %118

; <label>:93:                                     ; preds = %86
  %94 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %95 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %94, i32 0, i32 6
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %95, i64 0, i64 %97
  %99 = load %struct.UpVal*, %struct.UpVal** %98, align 8
  %100 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 24
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

; <label>:105:                                    ; preds = %93
  %106 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %107 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %108 = bitcast %struct.LClosure* %107 to %union.GCUnion*
  %109 = bitcast %union.GCUnion* %108 to %struct.GCObject*
  %110 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %111 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %110, i32 0, i32 6
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %111, i64 0, i64 %113
  %115 = load %struct.UpVal*, %struct.UpVal** %114, align 8
  %116 = bitcast %struct.UpVal* %115 to %union.GCUnion*
  %117 = bitcast %union.GCUnion* %116 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %106, %struct.GCObject* %109, %struct.GCObject* %117)
  br label %119

; <label>:118:                                    ; preds = %93, %86
  br label %119

; <label>:119:                                    ; preds = %118, %105
  br label %120

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %40

; <label>:123:                                    ; preds = %40
  ret void
}

declare hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) #1

declare hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LTintfloat(i64, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 9007199254740992, %7
  %9 = icmp ule i64 %8, 18014398509481984
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = sitofp i64 %11 to double
  %13 = load double, double* %5, align 8
  %14 = fcmp olt double %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %29

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %5, align 8
  %18 = call i32 @luaV_flttointeger(double %17, i64* %6, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %29

; <label>:25:                                     ; preds = %16
  %26 = load double, double* %5, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %25, %20, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LTfloatint(double, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double %0, double* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 9007199254740992, %7
  %9 = icmp ule i64 %8, 18014398509481984
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sitofp i64 %12 to double
  %14 = fcmp olt double %11, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %29

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %4, align 8
  %18 = call i32 @luaV_flttointeger(double %17, i64* %6, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %29

; <label>:25:                                     ; preds = %16
  %26 = load double, double* %4, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %25, %20, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_strcmp(%struct.TString*, %struct.TString*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TString* %0, %struct.TString** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %12 = load %struct.TString*, %struct.TString** %4, align 8
  %13 = bitcast %struct.TString* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 24
  store i8* %14, i8** %6, align 8
  %15 = load %struct.TString*, %struct.TString** %4, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %2
  %21 = load %struct.TString*, %struct.TString** %4, align 8
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %21, i32 0, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  br label %30

; <label>:25:                                     ; preds = %2
  %26 = load %struct.TString*, %struct.TString** %4, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 6
  %28 = bitcast %union.anon.5* %27 to i64*
  %29 = load i64, i64* %28, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %20
  %31 = phi i64 [ %24, %20 ], [ %29, %25 ]
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TString*, %struct.TString** %5, align 8
  %33 = bitcast %struct.TString* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  store i8* %34, i8** %8, align 8
  %35 = load %struct.TString*, %struct.TString** %5, align 8
  %36 = getelementptr inbounds %struct.TString, %struct.TString* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 20
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %30
  %41 = load %struct.TString*, %struct.TString** %5, align 8
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %41, i32 0, i32 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  br label %50

; <label>:45:                                     ; preds = %30
  %46 = load %struct.TString*, %struct.TString** %5, align 8
  %47 = getelementptr inbounds %struct.TString, %struct.TString* %46, i32 0, i32 6
  %48 = bitcast %union.anon.5* %47 to i64*
  %49 = load i64, i64* %48, align 8
  br label %50

; <label>:50:                                     ; preds = %45, %40
  %51 = phi i64 [ %44, %40 ], [ %49, %45 ]
  store i64 %51, i64* %9, align 8
  br label %52

; <label>:52:                                     ; preds = %93, %50
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strcoll(i8* %53, i8* %54) #9
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %94

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strlen(i8* %61) #9
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 1
  store i32 %71, i32* %3, align 4
  br label %94

; <label>:72:                                     ; preds = %60
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %94

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %7, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %93

; <label>:93:                                     ; preds = %78
  br label %52

; <label>:94:                                     ; preds = %76, %66, %58
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEintfloat(i64, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 9007199254740992, %7
  %9 = icmp ule i64 %8, 18014398509481984
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = sitofp i64 %11 to double
  %13 = load double, double* %5, align 8
  %14 = fcmp ole double %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %29

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %5, align 8
  %18 = call i32 @luaV_flttointeger(double %17, i64* %6, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %29

; <label>:25:                                     ; preds = %16
  %26 = load double, double* %5, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %25, %20, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEfloatint(double, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double %0, double* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 9007199254740992, %7
  %9 = icmp ule i64 %8, 18014398509481984
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sitofp i64 %12 to double
  %14 = fcmp ole double %11, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %29

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %4, align 8
  %18 = call i32 @luaV_flttointeger(double %17, i64* %6, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %29

; <label>:25:                                     ; preds = %16
  %26 = load double, double* %4, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %25, %20, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
