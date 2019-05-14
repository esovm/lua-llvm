; ModuleID = 'ltable.c'
source_filename = "ltable.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.StackValue = type { %struct.TValue }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@absentkey = internal constant %struct.TValue { %union.Value zeroinitializer, i8 32 }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@dummynode_ = internal constant %union.Node { %struct.NodeKey { %union.Value zeroinitializer, i8 16, i8 0, i32 0, %union.Value zeroinitializer } }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaH_realasize(%struct.Table*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Table*, align 8
  %4 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %3, align 8
  %5 = load %struct.Table*, %struct.Table** %3, align 8
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 2
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %1
  %12 = load %struct.Table*, %struct.Table** %3, align 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.Table*, %struct.Table** %3, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %17, 1
  %19 = and i32 %14, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %11, %1
  %22 = load %struct.Table*, %struct.Table** %3, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %52

; <label>:25:                                     ; preds = %11
  %26 = load %struct.Table*, %struct.Table** %3, align 8
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = lshr i32 %29, 1
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 2
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = lshr i32 %37, 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = lshr i32 %41, 8
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = lshr i32 %45, 16
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

; <label>:52:                                     ; preds = %25, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %union.StackValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %union.Node*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %union.Node*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  %18 = load %struct.Table*, %struct.Table** %6, align 8
  %19 = call i32 @luaH_realasize(%struct.Table* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct.Table*, %struct.Table** %6, align 8
  %22 = load %union.StackValue*, %union.StackValue** %7, align 8
  %23 = bitcast %union.StackValue* %22 to %struct.TValue*
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @findindex(%struct.lua_State* %20, %struct.Table* %21, %struct.TValue* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

; <label>:26:                                     ; preds = %75, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %78

; <label>:30:                                     ; preds = %26
  %31 = load %struct.Table*, %struct.Table** %6, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 6
  %33 = load %struct.TValue*, %struct.TValue** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 %35
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

; <label>:42:                                     ; preds = %30
  %43 = load %union.StackValue*, %union.StackValue** %7, align 8
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = load %struct.TValue*, %struct.TValue** %10, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load %struct.TValue*, %struct.TValue** %10, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  store i8 35, i8* %52, align 8
  %53 = load %union.StackValue*, %union.StackValue** %7, align 8
  %54 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 1
  %55 = bitcast %union.StackValue* %54 to %struct.TValue*
  store %struct.TValue* %55, %struct.TValue** %11, align 8
  %56 = load %struct.Table*, %struct.Table** %6, align 8
  %57 = getelementptr inbounds %struct.Table, %struct.Table* %56, i32 0, i32 6
  %58 = load %struct.TValue*, %struct.TValue** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i64 %60
  store %struct.TValue* %61, %struct.TValue** %12, align 8
  %62 = load %struct.TValue*, %struct.TValue** %11, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 0
  %64 = load %struct.TValue*, %struct.TValue** %12, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 0
  %66 = bitcast %union.Value* %63 to i8*
  %67 = bitcast %union.Value* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 8, i32 8, i1 false)
  %68 = load %struct.TValue*, %struct.TValue** %12, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 1
  %70 = load i8, i8* %69, align 8
  %71 = load %struct.TValue*, %struct.TValue** %11, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 1
  store i8 %70, i8* %72, align 8
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store i32 1, i32* %4, align 4
  br label %149

; <label>:74:                                     ; preds = %30
  br label %75

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %26

; <label>:78:                                     ; preds = %26
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

; <label>:82:                                     ; preds = %145, %78
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.Table*, %struct.Table** %6, align 8
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %84, i32 0, i32 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 1, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %148

; <label>:90:                                     ; preds = %82
  %91 = load %struct.Table*, %struct.Table** %6, align 8
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %91, i32 0, i32 7
  %93 = load %union.Node*, %union.Node** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %union.Node, %union.Node* %93, i64 %95
  %97 = bitcast %union.Node* %96 to %struct.TValue*
  %98 = getelementptr inbounds %struct.TValue, %struct.TValue* %97, i32 0, i32 1
  %99 = load i8, i8* %98, align 8
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %144, label %103

; <label>:103:                                    ; preds = %90
  %104 = load %struct.Table*, %struct.Table** %6, align 8
  %105 = getelementptr inbounds %struct.Table, %struct.Table* %104, i32 0, i32 7
  %106 = load %union.Node*, %union.Node** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %union.Node, %union.Node* %106, i64 %108
  store %union.Node* %109, %union.Node** %13, align 8
  %110 = load %union.StackValue*, %union.StackValue** %7, align 8
  %111 = bitcast %union.StackValue* %110 to %struct.TValue*
  store %struct.TValue* %111, %struct.TValue** %14, align 8
  %112 = load %union.Node*, %union.Node** %13, align 8
  store %union.Node* %112, %union.Node** %15, align 8
  %113 = load %struct.TValue*, %struct.TValue** %14, align 8
  %114 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i32 0, i32 0
  %115 = load %union.Node*, %union.Node** %15, align 8
  %116 = bitcast %union.Node* %115 to %struct.NodeKey*
  %117 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %116, i32 0, i32 4
  %118 = bitcast %union.Value* %114 to i8*
  %119 = bitcast %union.Value* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 8, i32 8, i1 false)
  %120 = load %union.Node*, %union.Node** %15, align 8
  %121 = bitcast %union.Node* %120 to %struct.NodeKey*
  %122 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %121, i32 0, i32 2
  %123 = load i8, i8* %122, align 1
  %124 = load %struct.TValue*, %struct.TValue** %14, align 8
  %125 = getelementptr inbounds %struct.TValue, %struct.TValue* %124, i32 0, i32 1
  store i8 %123, i8* %125, align 8
  %126 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %127 = load %union.StackValue*, %union.StackValue** %7, align 8
  %128 = getelementptr inbounds %union.StackValue, %union.StackValue* %127, i64 1
  %129 = bitcast %union.StackValue* %128 to %struct.TValue*
  store %struct.TValue* %129, %struct.TValue** %16, align 8
  %130 = load %union.Node*, %union.Node** %13, align 8
  %131 = bitcast %union.Node* %130 to %struct.TValue*
  store %struct.TValue* %131, %struct.TValue** %17, align 8
  %132 = load %struct.TValue*, %struct.TValue** %16, align 8
  %133 = getelementptr inbounds %struct.TValue, %struct.TValue* %132, i32 0, i32 0
  %134 = load %struct.TValue*, %struct.TValue** %17, align 8
  %135 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i32 0, i32 0
  %136 = bitcast %union.Value* %133 to i8*
  %137 = bitcast %union.Value* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 8, i32 8, i1 false)
  %138 = load %struct.TValue*, %struct.TValue** %17, align 8
  %139 = getelementptr inbounds %struct.TValue, %struct.TValue* %138, i32 0, i32 1
  %140 = load i8, i8* %139, align 8
  %141 = load %struct.TValue*, %struct.TValue** %16, align 8
  %142 = getelementptr inbounds %struct.TValue, %struct.TValue* %141, i32 0, i32 1
  store i8 %140, i8* %142, align 8
  %143 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store i32 1, i32* %4, align 4
  br label %149

; <label>:144:                                    ; preds = %90
  br label %145

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %82

; <label>:148:                                    ; preds = %82
  store i32 0, i32* %4, align 4
  br label %149

; <label>:149:                                    ; preds = %148, %103, %42
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findindex(%struct.lua_State*, %struct.Table*, %struct.TValue*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.Table* %1, %struct.Table** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TValue*, %struct.TValue** %8, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

; <label>:19:                                     ; preds = %4
  %20 = load %struct.TValue*, %struct.TValue** %8, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %19
  %26 = load %struct.TValue*, %struct.TValue** %8, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @arrayindex(i64 %29)
  br label %32

; <label>:31:                                     ; preds = %19
  br label %32

; <label>:32:                                     ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 0, %31 ]
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %72

; <label>:40:                                     ; preds = %32
  %41 = load %struct.Table*, %struct.Table** %7, align 8
  %42 = load %struct.TValue*, %struct.TValue** %8, align 8
  %43 = call %struct.TValue* @getgeneric(%struct.Table* %41, %struct.TValue* %42)
  store %struct.TValue* %43, %struct.TValue** %11, align 8
  %44 = load %struct.TValue*, %struct.TValue** %11, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  %49 = zext i1 %48 to i32
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %40
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

; <label>:56:                                     ; preds = %40
  %57 = load %struct.TValue*, %struct.TValue** %11, align 8
  %58 = bitcast %struct.TValue* %57 to %union.Node*
  %59 = load %struct.Table*, %struct.Table** %7, align 8
  %60 = getelementptr inbounds %struct.Table, %struct.Table* %59, i32 0, i32 7
  %61 = load %union.Node*, %union.Node** %60, align 8
  %62 = getelementptr inbounds %union.Node, %union.Node* %61, i64 0
  %63 = ptrtoint %union.Node* %58 to i64
  %64 = ptrtoint %union.Node* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 24
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %5, align 4
  br label %72

; <label>:72:                                     ; preds = %56, %38, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Table, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.Table*, %struct.Table** %6, align 8
  %14 = call i32 @setlimittosize(%struct.Table* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i32, i32* %8, align 4
  call void @setnodevector(%struct.lua_State* %15, %struct.Table* %10, i32 %16)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %63

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.Table*, %struct.Table** %6, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.Table*, %struct.Table** %6, align 8
  call void @exchangehashpart(%struct.Table* %24, %struct.Table* %10)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %9, align 4
  br label %26

; <label>:26:                                     ; preds = %55, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %58

; <label>:30:                                     ; preds = %26
  %31 = load %struct.Table*, %struct.Table** %6, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 6
  %33 = load %struct.TValue*, %struct.TValue** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 %35
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

; <label>:42:                                     ; preds = %30
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = load %struct.Table*, %struct.Table** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = load %struct.Table*, %struct.Table** %6, align 8
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %48, i32 0, i32 6
  %50 = load %struct.TValue*, %struct.TValue** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i64 %52
  call void @luaH_setint(%struct.lua_State* %43, %struct.Table* %44, i64 %47, %struct.TValue* %53)
  br label %54

; <label>:54:                                     ; preds = %42, %30
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %26

; <label>:58:                                     ; preds = %26
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.Table*, %struct.Table** %6, align 8
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.Table*, %struct.Table** %6, align 8
  call void @exchangehashpart(%struct.Table* %62, %struct.Table* %10)
  br label %63

; <label>:63:                                     ; preds = %58, %4
  %64 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %65 = load %struct.Table*, %struct.Table** %6, align 8
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %65, i32 0, i32 6
  %67 = load %struct.TValue*, %struct.TValue** %66, align 8
  %68 = bitcast %struct.TValue* %67 to i8*
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = mul i64 %73, 16
  %75 = call i8* @luaM_realloc_(%struct.lua_State* %64, i8* %68, i64 %71, i64 %74)
  %76 = bitcast i8* %75 to %struct.TValue*
  store %struct.TValue* %76, %struct.TValue** %12, align 8
  %77 = load %struct.TValue*, %struct.TValue** %12, align 8
  %78 = icmp eq %struct.TValue* %77, null
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = icmp ugt i32 %80, 0
  br label %82

; <label>:82:                                     ; preds = %79, %63
  %83 = phi i1 [ false, %63 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %82
  %90 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @freehash(%struct.lua_State* %90, %struct.Table* %10)
  %91 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %91, i32 4) #5
  unreachable

; <label>:92:                                     ; preds = %82
  %93 = load %struct.Table*, %struct.Table** %6, align 8
  call void @exchangehashpart(%struct.Table* %93, %struct.Table* %10)
  %94 = load %struct.TValue*, %struct.TValue** %12, align 8
  %95 = load %struct.Table*, %struct.Table** %6, align 8
  %96 = getelementptr inbounds %struct.Table, %struct.Table* %95, i32 0, i32 6
  store %struct.TValue* %94, %struct.TValue** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.Table*, %struct.Table** %6, align 8
  %99 = getelementptr inbounds %struct.Table, %struct.Table* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %9, align 4
  br label %101

; <label>:101:                                    ; preds = %113, %92
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %116

; <label>:105:                                    ; preds = %101
  %106 = load %struct.Table*, %struct.Table** %6, align 8
  %107 = getelementptr inbounds %struct.Table, %struct.Table* %106, i32 0, i32 6
  %108 = load %struct.TValue*, %struct.TValue** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TValue, %struct.TValue* %108, i64 %110
  %112 = getelementptr inbounds %struct.TValue, %struct.TValue* %111, i32 0, i32 1
  store i8 16, i8* %112, align 8
  br label %113

; <label>:113:                                    ; preds = %105
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %101

; <label>:116:                                    ; preds = %101
  %117 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %118 = load %struct.Table*, %struct.Table** %6, align 8
  call void @reinsert(%struct.lua_State* %117, %struct.Table* %10, %struct.Table* %118)
  %119 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @freehash(%struct.lua_State* %119, %struct.Table* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setlimittosize(%struct.Table*) #0 {
  %2 = alloca %struct.Table*, align 8
  store %struct.Table* %0, %struct.Table** %2, align 8
  %3 = load %struct.Table*, %struct.Table** %2, align 8
  %4 = call i32 @luaH_realasize(%struct.Table* %3)
  %5 = load %struct.Table*, %struct.Table** %2, align 8
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 4
  %7 = load %struct.Table*, %struct.Table** %2, align 8
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 2
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 127
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %8, align 1
  %13 = load %struct.Table*, %struct.Table** %2, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setnodevector(%struct.lua_State*, %struct.Table*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.Node*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %3
  %13 = load %struct.Table*, %struct.Table** %5, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 7
  store %union.Node* @dummynode_, %union.Node** %14, align 8
  %15 = load %struct.Table*, %struct.Table** %5, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  store i8 0, i8* %16, align 1
  %17 = load %struct.Table*, %struct.Table** %5, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 8
  store %union.Node* null, %union.Node** %18, align 8
  br label %77

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @luaO_ceillog2(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 30
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = icmp ugt i32 %26, 1073741824
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %24, %19
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 24
  %37 = call i8* @luaM_malloc_(%struct.lua_State* %33, i64 %36, i32 0)
  %38 = bitcast i8* %37 to %union.Node*
  %39 = load %struct.Table*, %struct.Table** %5, align 8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %39, i32 0, i32 7
  store %union.Node* %38, %union.Node** %40, align 8
  store i32 0, i32* %7, align 4
  br label %41

; <label>:41:                                     ; preds = %61, %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %41
  %46 = load %struct.Table*, %struct.Table** %5, align 8
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %46, i32 0, i32 7
  %48 = load %union.Node*, %union.Node** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %union.Node, %union.Node* %48, i64 %50
  store %union.Node* %51, %union.Node** %9, align 8
  %52 = load %union.Node*, %union.Node** %9, align 8
  %53 = bitcast %union.Node* %52 to %struct.NodeKey*
  %54 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load %union.Node*, %union.Node** %9, align 8
  %56 = bitcast %union.Node* %55 to %struct.NodeKey*
  %57 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %56, i32 0, i32 2
  store i8 0, i8* %57, align 1
  %58 = load %union.Node*, %union.Node** %9, align 8
  %59 = bitcast %union.Node* %58 to %struct.TValue*
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  store i8 16, i8* %60, align 8
  br label %61

; <label>:61:                                     ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %41

; <label>:64:                                     ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = trunc i32 %65 to i8
  %67 = load %struct.Table*, %struct.Table** %5, align 8
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %67, i32 0, i32 4
  store i8 %66, i8* %68, align 1
  %69 = load %struct.Table*, %struct.Table** %5, align 8
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 7
  %71 = load %union.Node*, %union.Node** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %union.Node, %union.Node* %71, i64 %73
  %75 = load %struct.Table*, %struct.Table** %5, align 8
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %75, i32 0, i32 8
  store %union.Node* %74, %union.Node** %76, align 8
  br label %77

; <label>:77:                                     ; preds = %64, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exchangehashpart(%struct.Table*, %struct.Table*) #0 {
  %3 = alloca %struct.Table*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %union.Node*, align 8
  %7 = alloca %union.Node*, align 8
  store %struct.Table* %0, %struct.Table** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %3, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 4
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %5, align 1
  %11 = load %struct.Table*, %struct.Table** %3, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %union.Node*, %union.Node** %12, align 8
  store %union.Node* %13, %union.Node** %6, align 8
  %14 = load %struct.Table*, %struct.Table** %3, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 8
  %16 = load %union.Node*, %union.Node** %15, align 8
  store %union.Node* %16, %union.Node** %7, align 8
  %17 = load %struct.Table*, %struct.Table** %4, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 4
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.Table*, %struct.Table** %3, align 8
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %20, i32 0, i32 4
  store i8 %19, i8* %21, align 1
  %22 = load %struct.Table*, %struct.Table** %4, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 7
  %24 = load %union.Node*, %union.Node** %23, align 8
  %25 = load %struct.Table*, %struct.Table** %3, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 7
  store %union.Node* %24, %union.Node** %26, align 8
  %27 = load %struct.Table*, %struct.Table** %4, align 8
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %27, i32 0, i32 8
  %29 = load %union.Node*, %union.Node** %28, align 8
  %30 = load %struct.Table*, %struct.Table** %3, align 8
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 8
  store %union.Node* %29, %union.Node** %31, align 8
  %32 = load i8, i8* %5, align 1
  %33 = load %struct.Table*, %struct.Table** %4, align 8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %33, i32 0, i32 4
  store i8 %32, i8* %34, align 1
  %35 = load %union.Node*, %union.Node** %6, align 8
  %36 = load %struct.Table*, %struct.Table** %4, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 7
  store %union.Node* %35, %union.Node** %37, align 8
  %38 = load %union.Node*, %union.Node** %7, align 8
  %39 = load %struct.Table*, %struct.Table** %4, align 8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %39, i32 0, i32 8
  store %union.Node* %38, %union.Node** %40, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TValue* %3, %struct.TValue** %8, align 8
  %15 = load %struct.Table*, %struct.Table** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TValue* @luaH_getint(%struct.Table* %15, i64 %16)
  store %struct.TValue* %17, %struct.TValue** %9, align 8
  %18 = load %struct.TValue*, %struct.TValue** %9, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %4
  %24 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %24, %struct.TValue** %10, align 8
  br label %35

; <label>:25:                                     ; preds = %4
  store %struct.TValue* %11, %struct.TValue** %12, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TValue*, %struct.TValue** %12, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load %struct.TValue*, %struct.TValue** %12, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  store i8 35, i8* %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = load %struct.Table*, %struct.Table** %6, align 8
  %34 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %32, %struct.Table* %33, %struct.TValue* %11)
  store %struct.TValue* %34, %struct.TValue** %10, align 8
  br label %35

; <label>:35:                                     ; preds = %25, %23
  %36 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %36, %struct.TValue** %13, align 8
  %37 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %37, %struct.TValue** %14, align 8
  %38 = load %struct.TValue*, %struct.TValue** %13, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 0
  %40 = load %struct.TValue*, %struct.TValue** %14, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %39 to i8*
  %43 = bitcast %union.Value* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 8, i32 8, i1 false)
  %44 = load %struct.TValue*, %struct.TValue** %14, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  %47 = load %struct.TValue*, %struct.TValue** %13, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 1
  store i8 %46, i8* %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freehash(%struct.lua_State*, %struct.Table*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %5 = load %struct.Table*, %struct.Table** %4, align 8
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 8
  %7 = load %union.Node*, %union.Node** %6, align 8
  %8 = icmp eq %union.Node* %7, null
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %union.Node*, %union.Node** %12, align 8
  %14 = bitcast %union.Node* %13 to i8*
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 24
  call void @luaM_free_(%struct.lua_State* %10, i8* %14, i64 %21)
  br label %22

; <label>:22:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinsert(%struct.lua_State*, %struct.Table*, %struct.Table*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.Node*, align 8
  %10 = alloca %struct.TValue, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %union.Node*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store %struct.Table* %2, %struct.Table** %6, align 8
  %15 = load %struct.Table*, %struct.Table** %5, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %20

; <label>:20:                                     ; preds = %72, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %75

; <label>:24:                                     ; preds = %20
  %25 = load %struct.Table*, %struct.Table** %5, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 7
  %27 = load %union.Node*, %union.Node** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %union.Node, %union.Node* %27, i64 %29
  store %union.Node* %30, %union.Node** %9, align 8
  %31 = load %union.Node*, %union.Node** %9, align 8
  %32 = bitcast %union.Node* %31 to %struct.TValue*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %71, label %38

; <label>:38:                                     ; preds = %24
  store %struct.TValue* %10, %struct.TValue** %11, align 8
  %39 = load %union.Node*, %union.Node** %9, align 8
  store %union.Node* %39, %union.Node** %12, align 8
  %40 = load %struct.TValue*, %struct.TValue** %11, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = load %union.Node*, %union.Node** %12, align 8
  %43 = bitcast %union.Node* %42 to %struct.NodeKey*
  %44 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %43, i32 0, i32 4
  %45 = bitcast %union.Value* %41 to i8*
  %46 = bitcast %union.Value* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %47 = load %union.Node*, %union.Node** %12, align 8
  %48 = bitcast %union.Node* %47 to %struct.NodeKey*
  %49 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.TValue*, %struct.TValue** %11, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  store i8 %50, i8* %52, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = load %struct.Table*, %struct.Table** %6, align 8
  %56 = call %struct.TValue* @luaH_set(%struct.lua_State* %54, %struct.Table* %55, %struct.TValue* %10)
  store %struct.TValue* %56, %struct.TValue** %13, align 8
  %57 = load %union.Node*, %union.Node** %9, align 8
  %58 = bitcast %union.Node* %57 to %struct.TValue*
  store %struct.TValue* %58, %struct.TValue** %14, align 8
  %59 = load %struct.TValue*, %struct.TValue** %13, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 0
  %61 = load %struct.TValue*, %struct.TValue** %14, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %60 to i8*
  %64 = bitcast %union.Value* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 8, i1 false)
  %65 = load %struct.TValue*, %struct.TValue** %14, align 8
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 8
  %68 = load %struct.TValue*, %struct.TValue** %13, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 1
  store i8 %67, i8* %69, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %71

; <label>:71:                                     ; preds = %38, %24
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %20

; <label>:75:                                     ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.Table*, %struct.Table** %5, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 8
  %10 = load %union.Node*, %union.Node** %9, align 8
  %11 = icmp eq %union.Node* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  br label %19

; <label>:13:                                     ; preds = %3
  %14 = load %struct.Table*, %struct.Table** %5, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 1, %17
  br label %19

; <label>:19:                                     ; preds = %13, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %13 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load %struct.Table*, %struct.Table** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  call void @luaH_resize(%struct.lua_State* %21, %struct.Table* %22, i32 %23, i32 %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.Table* @luaH_new(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %5, i32 5, i64 56)
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %8 = bitcast %struct.GCObject* %7 to %union.GCUnion*
  %9 = bitcast %union.GCUnion* %8 to %struct.Table*
  store %struct.Table* %9, %struct.Table** %4, align 8
  %10 = load %struct.Table*, %struct.Table** %4, align 8
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 9
  store %struct.Table* null, %struct.Table** %11, align 8
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 3
  store i8 -1, i8* %13, align 2
  %14 = load %struct.Table*, %struct.Table** %4, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 6
  store %struct.TValue* null, %struct.TValue** %15, align 8
  %16 = load %struct.Table*, %struct.Table** %4, align 8
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 5
  store i32 0, i32* %17, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = load %struct.Table*, %struct.Table** %4, align 8
  call void @setnodevector(%struct.lua_State* %18, %struct.Table* %19, i32 0)
  %20 = load %struct.Table*, %struct.Table** %4, align 8
  ret %struct.Table* %20
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.Table*, %struct.Table** %4, align 8
  call void @freehash(%struct.lua_State* %5, %struct.Table* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 6
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8
  %11 = bitcast %struct.TValue* %10 to i8*
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = call i32 @luaH_realasize(%struct.Table* %12)
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 16
  call void @luaM_free_(%struct.lua_State* %7, i8* %11, i64 %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.Table*, %struct.Table** %4, align 8
  %18 = bitcast %struct.Table* %17 to i8*
  call void @luaM_free_(%struct.lua_State* %16, i8* %18, i64 56)
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %union.Node*, align 8
  %9 = alloca %struct.TValue, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %union.Node*, align 8
  %14 = alloca %union.Node*, align 8
  %15 = alloca %union.Node*, align 8
  %16 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %17 = load %struct.TValue*, %struct.TValue** %7, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %3
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

; <label>:30:                                     ; preds = %3
  %31 = load %struct.TValue*, %struct.TValue** %7, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 19
  br i1 %35, label %36, label %65

; <label>:36:                                     ; preds = %30
  %37 = load %struct.TValue*, %struct.TValue** %7, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to double*
  %40 = load double, double* %39, align 8
  store double %40, double* %10, align 8
  %41 = load double, double* %10, align 8
  %42 = call i32 @luaV_flttointeger(double %41, i64* %11, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %36
  store %struct.TValue* %9, %struct.TValue** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.TValue*, %struct.TValue** %12, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load %struct.TValue*, %struct.TValue** %12, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 1
  store i8 35, i8* %50, align 8
  store %struct.TValue* %9, %struct.TValue** %7, align 8
  br label %64

; <label>:51:                                     ; preds = %36
  %52 = load double, double* %10, align 8
  %53 = load double, double* %10, align 8
  %54 = fcmp oeq double %52, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %51
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

; <label>:63:                                     ; preds = %51
  br label %64

; <label>:64:                                     ; preds = %63, %44
  br label %65

; <label>:65:                                     ; preds = %64, %30
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load %struct.Table*, %struct.Table** %6, align 8
  %68 = load %struct.TValue*, %struct.TValue** %7, align 8
  %69 = call %union.Node* @mainpositionTV(%struct.Table* %67, %struct.TValue* %68)
  store %union.Node* %69, %union.Node** %8, align 8
  %70 = load %union.Node*, %union.Node** %8, align 8
  %71 = bitcast %union.Node* %70 to %struct.TValue*
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 8
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

; <label>:77:                                     ; preds = %66
  %78 = load %struct.Table*, %struct.Table** %6, align 8
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %78, i32 0, i32 8
  %80 = load %union.Node*, %union.Node** %79, align 8
  %81 = icmp eq %union.Node* %80, null
  br i1 %81, label %82, label %205

; <label>:82:                                     ; preds = %77, %66
  %83 = load %struct.Table*, %struct.Table** %6, align 8
  %84 = call %union.Node* @getfreepos(%struct.Table* %83)
  store %union.Node* %84, %union.Node** %14, align 8
  %85 = load %union.Node*, %union.Node** %14, align 8
  %86 = icmp eq %union.Node* %85, null
  br i1 %86, label %87, label %95

; <label>:87:                                     ; preds = %82
  %88 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %89 = load %struct.Table*, %struct.Table** %6, align 8
  %90 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @rehash(%struct.lua_State* %88, %struct.Table* %89, %struct.TValue* %90)
  %91 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %92 = load %struct.Table*, %struct.Table** %6, align 8
  %93 = load %struct.TValue*, %struct.TValue** %7, align 8
  %94 = call %struct.TValue* @luaH_set(%struct.lua_State* %91, %struct.Table* %92, %struct.TValue* %93)
  store %struct.TValue* %94, %struct.TValue** %4, align 8
  br label %256

; <label>:95:                                     ; preds = %82
  %96 = load %struct.Table*, %struct.Table** %6, align 8
  %97 = load %union.Node*, %union.Node** %8, align 8
  %98 = bitcast %union.Node* %97 to %struct.NodeKey*
  %99 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load %union.Node*, %union.Node** %8, align 8
  %103 = bitcast %union.Node* %102 to %struct.NodeKey*
  %104 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %103, i32 0, i32 4
  %105 = call %union.Node* @mainposition(%struct.Table* %96, i32 %101, %union.Value* %104)
  store %union.Node* %105, %union.Node** %13, align 8
  %106 = load %union.Node*, %union.Node** %13, align 8
  %107 = load %union.Node*, %union.Node** %8, align 8
  %108 = icmp ne %union.Node* %106, %107
  br i1 %108, label %109, label %168

; <label>:109:                                    ; preds = %95
  br label %110

; <label>:110:                                    ; preds = %120, %109
  %111 = load %union.Node*, %union.Node** %13, align 8
  %112 = load %union.Node*, %union.Node** %13, align 8
  %113 = bitcast %union.Node* %112 to %struct.NodeKey*
  %114 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %union.Node, %union.Node* %111, i64 %116
  %118 = load %union.Node*, %union.Node** %8, align 8
  %119 = icmp ne %union.Node* %117, %118
  br i1 %119, label %120, label %128

; <label>:120:                                    ; preds = %110
  %121 = load %union.Node*, %union.Node** %13, align 8
  %122 = bitcast %union.Node* %121 to %struct.NodeKey*
  %123 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %union.Node*, %union.Node** %13, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %union.Node, %union.Node* %125, i64 %126
  store %union.Node* %127, %union.Node** %13, align 8
  br label %110

; <label>:128:                                    ; preds = %110
  %129 = load %union.Node*, %union.Node** %14, align 8
  %130 = load %union.Node*, %union.Node** %13, align 8
  %131 = ptrtoint %union.Node* %129 to i64
  %132 = ptrtoint %union.Node* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 24
  %135 = trunc i64 %134 to i32
  %136 = load %union.Node*, %union.Node** %13, align 8
  %137 = bitcast %union.Node* %136 to %struct.NodeKey*
  %138 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %union.Node*, %union.Node** %14, align 8
  %140 = load %union.Node*, %union.Node** %8, align 8
  %141 = bitcast %union.Node* %139 to i8*
  %142 = bitcast %union.Node* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 24, i32 8, i1 false)
  %143 = load %union.Node*, %union.Node** %8, align 8
  %144 = bitcast %union.Node* %143 to %struct.NodeKey*
  %145 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

; <label>:148:                                    ; preds = %128
  %149 = load %union.Node*, %union.Node** %8, align 8
  %150 = load %union.Node*, %union.Node** %14, align 8
  %151 = ptrtoint %union.Node* %149 to i64
  %152 = ptrtoint %union.Node* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 24
  %155 = trunc i64 %154 to i32
  %156 = load %union.Node*, %union.Node** %14, align 8
  %157 = bitcast %union.Node* %156 to %struct.NodeKey*
  %158 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = load %union.Node*, %union.Node** %8, align 8
  %162 = bitcast %union.Node* %161 to %struct.NodeKey*
  %163 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %162, i32 0, i32 3
  store i32 0, i32* %163, align 4
  br label %164

; <label>:164:                                    ; preds = %148, %128
  %165 = load %union.Node*, %union.Node** %8, align 8
  %166 = bitcast %union.Node* %165 to %struct.TValue*
  %167 = getelementptr inbounds %struct.TValue, %struct.TValue* %166, i32 0, i32 1
  store i8 16, i8* %167, align 8
  br label %204

; <label>:168:                                    ; preds = %95
  %169 = load %union.Node*, %union.Node** %8, align 8
  %170 = bitcast %union.Node* %169 to %struct.NodeKey*
  %171 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

; <label>:174:                                    ; preds = %168
  %175 = load %union.Node*, %union.Node** %8, align 8
  %176 = load %union.Node*, %union.Node** %8, align 8
  %177 = bitcast %union.Node* %176 to %struct.NodeKey*
  %178 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %union.Node, %union.Node* %175, i64 %180
  %182 = load %union.Node*, %union.Node** %14, align 8
  %183 = ptrtoint %union.Node* %181 to i64
  %184 = ptrtoint %union.Node* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 24
  %187 = trunc i64 %186 to i32
  %188 = load %union.Node*, %union.Node** %14, align 8
  %189 = bitcast %union.Node* %188 to %struct.NodeKey*
  %190 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  br label %192

; <label>:191:                                    ; preds = %168
  br label %192

; <label>:192:                                    ; preds = %191, %174
  %193 = load %union.Node*, %union.Node** %14, align 8
  %194 = load %union.Node*, %union.Node** %8, align 8
  %195 = ptrtoint %union.Node* %193 to i64
  %196 = ptrtoint %union.Node* %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 24
  %199 = trunc i64 %198 to i32
  %200 = load %union.Node*, %union.Node** %8, align 8
  %201 = bitcast %union.Node* %200 to %struct.NodeKey*
  %202 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %201, i32 0, i32 3
  store i32 %199, i32* %202, align 4
  %203 = load %union.Node*, %union.Node** %14, align 8
  store %union.Node* %203, %union.Node** %8, align 8
  br label %204

; <label>:204:                                    ; preds = %192, %164
  br label %205

; <label>:205:                                    ; preds = %204, %77
  %206 = load %union.Node*, %union.Node** %8, align 8
  store %union.Node* %206, %union.Node** %15, align 8
  %207 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %207, %struct.TValue** %16, align 8
  %208 = load %union.Node*, %union.Node** %15, align 8
  %209 = bitcast %union.Node* %208 to %struct.NodeKey*
  %210 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %209, i32 0, i32 4
  %211 = load %struct.TValue*, %struct.TValue** %16, align 8
  %212 = getelementptr inbounds %struct.TValue, %struct.TValue* %211, i32 0, i32 0
  %213 = bitcast %union.Value* %210 to i8*
  %214 = bitcast %union.Value* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 8, i32 8, i1 false)
  %215 = load %struct.TValue*, %struct.TValue** %16, align 8
  %216 = getelementptr inbounds %struct.TValue, %struct.TValue* %215, i32 0, i32 1
  %217 = load i8, i8* %216, align 8
  %218 = load %union.Node*, %union.Node** %15, align 8
  %219 = bitcast %union.Node* %218 to %struct.NodeKey*
  %220 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %219, i32 0, i32 2
  store i8 %217, i8* %220, align 1
  %221 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %222 = load %struct.TValue*, %struct.TValue** %7, align 8
  %223 = getelementptr inbounds %struct.TValue, %struct.TValue* %222, i32 0, i32 1
  %224 = load i8, i8* %223, align 8
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 64
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %252

; <label>:228:                                    ; preds = %205
  %229 = load %struct.Table*, %struct.Table** %6, align 8
  %230 = bitcast %struct.Table* %229 to %union.GCUnion*
  %231 = bitcast %union.GCUnion* %230 to %struct.GCObject*
  %232 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %231, i32 0, i32 2
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %252

; <label>:237:                                    ; preds = %228
  %238 = load %struct.TValue*, %struct.TValue** %7, align 8
  %239 = getelementptr inbounds %struct.TValue, %struct.TValue* %238, i32 0, i32 0
  %240 = bitcast %union.Value* %239 to %struct.GCObject**
  %241 = load %struct.GCObject*, %struct.GCObject** %240, align 8
  %242 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %241, i32 0, i32 2
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = and i32 %244, 24
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

; <label>:247:                                    ; preds = %237
  %248 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %249 = load %struct.Table*, %struct.Table** %6, align 8
  %250 = bitcast %struct.Table* %249 to %union.GCUnion*
  %251 = bitcast %union.GCUnion* %250 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %248, %struct.GCObject* %251)
  br label %253

; <label>:252:                                    ; preds = %237, %228, %205
  br label %253

; <label>:253:                                    ; preds = %252, %247
  %254 = load %union.Node*, %union.Node** %8, align 8
  %255 = bitcast %union.Node* %254 to %struct.TValue*
  store %struct.TValue* %255, %struct.TValue** %4, align 8
  br label %256

; <label>:256:                                    ; preds = %253, %87
  %257 = load %struct.TValue*, %struct.TValue** %4, align 8
  ret %struct.TValue* %257
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #3

declare hidden i32 @luaV_flttointeger(double, i64*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.Node* @mainpositionTV(%struct.Table*, %struct.TValue*) #0 {
  %3 = alloca %struct.Table*, align 8
  %4 = alloca %struct.TValue*, align 8
  store %struct.Table* %0, %struct.Table** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  %5 = load %struct.Table*, %struct.Table** %3, align 8
  %6 = load %struct.TValue*, %struct.TValue** %4, align 8
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 8
  %9 = zext i8 %8 to i32
  %10 = load %struct.TValue*, %struct.TValue** %4, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 0
  %12 = call %union.Node* @mainposition(%struct.Table* %5, i32 %9, %union.Value* %11)
  ret %union.Node* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.Node* @getfreepos(%struct.Table*) #0 {
  %2 = alloca %union.Node*, align 8
  %3 = alloca %struct.Table*, align 8
  store %struct.Table* %0, %struct.Table** %3, align 8
  %4 = load %struct.Table*, %struct.Table** %3, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 8
  %6 = load %union.Node*, %union.Node** %5, align 8
  %7 = icmp eq %union.Node* %6, null
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %1
  br label %9

; <label>:9:                                      ; preds = %34, %8
  %10 = load %struct.Table*, %struct.Table** %3, align 8
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 8
  %12 = load %union.Node*, %union.Node** %11, align 8
  %13 = load %struct.Table*, %struct.Table** %3, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 7
  %15 = load %union.Node*, %union.Node** %14, align 8
  %16 = icmp ugt %union.Node* %12, %15
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %9
  %18 = load %struct.Table*, %struct.Table** %3, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 8
  %20 = load %union.Node*, %union.Node** %19, align 8
  %21 = getelementptr inbounds %union.Node, %union.Node* %20, i32 -1
  store %union.Node* %21, %union.Node** %19, align 8
  %22 = load %struct.Table*, %struct.Table** %3, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 8
  %24 = load %union.Node*, %union.Node** %23, align 8
  %25 = bitcast %union.Node* %24 to %struct.NodeKey*
  %26 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Table*, %struct.Table** %3, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 8
  %33 = load %union.Node*, %union.Node** %32, align 8
  store %union.Node* %33, %union.Node** %2, align 8
  br label %37

; <label>:34:                                     ; preds = %17
  br label %9

; <label>:35:                                     ; preds = %9
  br label %36

; <label>:36:                                     ; preds = %35, %1
  store %union.Node* null, %union.Node** %2, align 8
  br label %37

; <label>:37:                                     ; preds = %36, %30
  %38 = load %union.Node*, %union.Node** %2, align 8
  ret %union.Node* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(%struct.lua_State*, %struct.Table*, %struct.TValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store %struct.TValue* %2, %struct.TValue** %6, align 8
  store i32 0, i32* %10, align 4
  br label %12

; <label>:12:                                     ; preds = %19, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp sle i32 %13, 31
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 %17
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %12

; <label>:22:                                     ; preds = %12
  %23 = load %struct.Table*, %struct.Table** %5, align 8
  %24 = call i32 @setlimittosize(%struct.Table* %23)
  %25 = load %struct.Table*, %struct.Table** %5, align 8
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %27 = call i32 @numusearray(%struct.Table* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.Table*, %struct.Table** %5, align 8
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %31 = call i32 @numusehash(%struct.Table* %29, i32* %30, i32* %8)
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TValue*, %struct.TValue** %6, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %22
  %40 = load %struct.TValue*, %struct.TValue** %6, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %45 = call i32 @countint(i64 %43, i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

; <label>:48:                                     ; preds = %39, %22
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %52 = call i32 @computesizes(i32* %51, i32* %8)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = load %struct.Table*, %struct.Table** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %56, %57
  call void @luaH_resize(%struct.lua_State* %53, %struct.Table* %54, i32 %55, i32 %58)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %9 = load %struct.Table*, %struct.Table** %6, align 8
  %10 = load %struct.TValue*, %struct.TValue** %7, align 8
  %11 = call %struct.TValue* @luaH_get(%struct.Table* %9, %struct.TValue* %10)
  store %struct.TValue* %11, %struct.TValue** %8, align 8
  %12 = load %struct.TValue*, %struct.TValue** %8, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %3
  %18 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %18, %struct.TValue** %4, align 8
  br label %24

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct.Table*, %struct.Table** %6, align 8
  %22 = load %struct.TValue*, %struct.TValue** %7, align 8
  %23 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %20, %struct.Table* %21, %struct.TValue* %22)
  store %struct.TValue* %23, %struct.TValue** %4, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %17
  %25 = load %struct.TValue*, %struct.TValue** %4, align 8
  ret %struct.TValue* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.Node* @mainposition(%struct.Table*, i32, %union.Value*) #0 {
  %4 = alloca %union.Node*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.Value*, align 8
  store %struct.Table* %0, %struct.Table** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.Value* %2, %union.Value** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, 63
  switch i32 %9, label %141 [
    i32 35, label %10
    i32 19, label %28
    i32 20, label %46
    i32 36, label %66
    i32 1, label %85
    i32 2, label %101
    i32 38, label %121
  ]

; <label>:10:                                     ; preds = %3
  %11 = load %struct.Table*, %struct.Table** %5, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %union.Node*, %union.Node** %12, align 8
  %14 = load %union.Value*, %union.Value** %7, align 8
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.Table*, %struct.Table** %5, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 4
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = and i64 %16, %23
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %union.Node, %union.Node* %13, i64 %26
  store %union.Node* %27, %union.Node** %4, align 8
  br label %161

; <label>:28:                                     ; preds = %3
  %29 = load %struct.Table*, %struct.Table** %5, align 8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 7
  %31 = load %union.Node*, %union.Node** %30, align 8
  %32 = load %union.Value*, %union.Value** %7, align 8
  %33 = bitcast %union.Value* %32 to double*
  %34 = load double, double* %33, align 8
  %35 = call i32 @l_hashfloat(double %34)
  %36 = load %struct.Table*, %struct.Table** %5, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  %42 = or i32 %41, 1
  %43 = srem i32 %35, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %union.Node, %union.Node* %31, i64 %44
  store %union.Node* %45, %union.Node** %4, align 8
  br label %161

; <label>:46:                                     ; preds = %3
  %47 = load %struct.Table*, %struct.Table** %5, align 8
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %47, i32 0, i32 7
  %49 = load %union.Node*, %union.Node** %48, align 8
  %50 = load %union.Value*, %union.Value** %7, align 8
  %51 = bitcast %union.Value* %50 to %struct.GCObject**
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8
  %53 = bitcast %struct.GCObject* %52 to %union.GCUnion*
  %54 = bitcast %union.GCUnion* %53 to %struct.TString*
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.Table*, %struct.Table** %5, align 8
  %58 = getelementptr inbounds %struct.Table, %struct.Table* %57, i32 0, i32 4
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %56, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %union.Node, %union.Node* %49, i64 %64
  store %union.Node* %65, %union.Node** %4, align 8
  br label %161

; <label>:66:                                     ; preds = %3
  %67 = load %struct.Table*, %struct.Table** %5, align 8
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %67, i32 0, i32 7
  %69 = load %union.Node*, %union.Node** %68, align 8
  %70 = load %union.Value*, %union.Value** %7, align 8
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = bitcast %struct.GCObject* %72 to %union.GCUnion*
  %74 = bitcast %union.GCUnion* %73 to %struct.TString*
  %75 = call i32 @luaS_hashlongstr(%struct.TString* %74)
  %76 = load %struct.Table*, %struct.Table** %5, align 8
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %76, i32 0, i32 4
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 1, %79
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %75, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %union.Node, %union.Node* %69, i64 %83
  store %union.Node* %84, %union.Node** %4, align 8
  br label %161

; <label>:85:                                     ; preds = %3
  %86 = load %struct.Table*, %struct.Table** %5, align 8
  %87 = getelementptr inbounds %struct.Table, %struct.Table* %86, i32 0, i32 7
  %88 = load %union.Node*, %union.Node** %87, align 8
  %89 = load %union.Value*, %union.Value** %7, align 8
  %90 = bitcast %union.Value* %89 to i32*
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.Table*, %struct.Table** %5, align 8
  %93 = getelementptr inbounds %struct.Table, %struct.Table* %92, i32 0, i32 4
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 1, %95
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %91, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %union.Node, %union.Node* %88, i64 %99
  store %union.Node* %100, %union.Node** %4, align 8
  br label %161

; <label>:101:                                    ; preds = %3
  %102 = load %struct.Table*, %struct.Table** %5, align 8
  %103 = getelementptr inbounds %struct.Table, %struct.Table* %102, i32 0, i32 7
  %104 = load %union.Node*, %union.Node** %103, align 8
  %105 = load %union.Value*, %union.Value** %7, align 8
  %106 = bitcast %union.Value* %105 to i8**
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = and i64 %108, 4294967295
  %110 = trunc i64 %109 to i32
  %111 = load %struct.Table*, %struct.Table** %5, align 8
  %112 = getelementptr inbounds %struct.Table, %struct.Table* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 1, %114
  %116 = sub nsw i32 %115, 1
  %117 = or i32 %116, 1
  %118 = urem i32 %110, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %union.Node, %union.Node* %104, i64 %119
  store %union.Node* %120, %union.Node** %4, align 8
  br label %161

; <label>:121:                                    ; preds = %3
  %122 = load %struct.Table*, %struct.Table** %5, align 8
  %123 = getelementptr inbounds %struct.Table, %struct.Table* %122, i32 0, i32 7
  %124 = load %union.Node*, %union.Node** %123, align 8
  %125 = load %union.Value*, %union.Value** %7, align 8
  %126 = bitcast %union.Value* %125 to i32 (%struct.lua_State*)**
  %127 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %126, align 8
  %128 = ptrtoint i32 (%struct.lua_State*)* %127 to i64
  %129 = and i64 %128, 4294967295
  %130 = trunc i64 %129 to i32
  %131 = load %struct.Table*, %struct.Table** %5, align 8
  %132 = getelementptr inbounds %struct.Table, %struct.Table* %131, i32 0, i32 4
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 1, %134
  %136 = sub nsw i32 %135, 1
  %137 = or i32 %136, 1
  %138 = urem i32 %130, %137
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %union.Node, %union.Node* %124, i64 %139
  store %union.Node* %140, %union.Node** %4, align 8
  br label %161

; <label>:141:                                    ; preds = %3
  %142 = load %struct.Table*, %struct.Table** %5, align 8
  %143 = getelementptr inbounds %struct.Table, %struct.Table* %142, i32 0, i32 7
  %144 = load %union.Node*, %union.Node** %143, align 8
  %145 = load %union.Value*, %union.Value** %7, align 8
  %146 = bitcast %union.Value* %145 to %struct.GCObject**
  %147 = load %struct.GCObject*, %struct.GCObject** %146, align 8
  %148 = ptrtoint %struct.GCObject* %147 to i64
  %149 = and i64 %148, 4294967295
  %150 = trunc i64 %149 to i32
  %151 = load %struct.Table*, %struct.Table** %5, align 8
  %152 = getelementptr inbounds %struct.Table, %struct.Table* %151, i32 0, i32 4
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl i32 1, %154
  %156 = sub nsw i32 %155, 1
  %157 = or i32 %156, 1
  %158 = urem i32 %150, %157
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %union.Node, %union.Node* %144, i64 %159
  store %union.Node* %160, %union.Node** %4, align 8
  br label %161

; <label>:161:                                    ; preds = %141, %121, %101, %85, %66, %46, %28, %10
  %162 = load %union.Node*, %union.Node** %4, align 8
  ret %union.Node* %162
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sub i64 %8, 1
  %10 = load %struct.Table*, %struct.Table** %4, align 8
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %2
  %16 = load %struct.Table*, %struct.Table** %4, align 8
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 6
  %18 = load %struct.TValue*, %struct.TValue** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %19, 1
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %20
  store %struct.TValue* %21, %struct.TValue** %3, align 8
  br label %114

; <label>:22:                                     ; preds = %2
  %23 = load %struct.Table*, %struct.Table** %4, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

; <label>:29:                                     ; preds = %22
  %30 = load %struct.Table*, %struct.Table** %4, align 8
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Table*, %struct.Table** %4, align 8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, 1
  %37 = and i32 %32, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %39

; <label>:39:                                     ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.Table*, %struct.Table** %4, align 8
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %54, label %47

; <label>:47:                                     ; preds = %39
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, 1
  %50 = load %struct.Table*, %struct.Table** %4, align 8
  %51 = call i32 @luaH_realasize(%struct.Table* %50)
  %52 = zext i32 %51 to i64
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %47, %39
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.Table*, %struct.Table** %4, align 8
  %58 = getelementptr inbounds %struct.Table, %struct.Table* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.Table*, %struct.Table** %4, align 8
  %60 = getelementptr inbounds %struct.Table, %struct.Table* %59, i32 0, i32 6
  %61 = load %struct.TValue*, %struct.TValue** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 %63
  store %struct.TValue* %64, %struct.TValue** %3, align 8
  br label %114

; <label>:65:                                     ; preds = %47, %29, %22
  %66 = load %struct.Table*, %struct.Table** %4, align 8
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %66, i32 0, i32 7
  %68 = load %union.Node*, %union.Node** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.Table*, %struct.Table** %4, align 8
  %71 = getelementptr inbounds %struct.Table, %struct.Table* %70, i32 0, i32 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = and i64 %69, %76
  %78 = trunc i64 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %union.Node, %union.Node* %68, i64 %79
  store %union.Node* %80, %union.Node** %6, align 8
  br label %81

; <label>:81:                                     ; preds = %112, %65
  %82 = load %union.Node*, %union.Node** %6, align 8
  %83 = bitcast %union.Node* %82 to %struct.NodeKey*
  %84 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %83, i32 0, i32 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 35
  br i1 %87, label %88, label %99

; <label>:88:                                     ; preds = %81
  %89 = load %union.Node*, %union.Node** %6, align 8
  %90 = bitcast %union.Node* %89 to %struct.NodeKey*
  %91 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %90, i32 0, i32 4
  %92 = bitcast %union.Value* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %88
  %97 = load %union.Node*, %union.Node** %6, align 8
  %98 = bitcast %union.Node* %97 to %struct.TValue*
  store %struct.TValue* %98, %struct.TValue** %3, align 8
  br label %114

; <label>:99:                                     ; preds = %88, %81
  %100 = load %union.Node*, %union.Node** %6, align 8
  %101 = bitcast %union.Node* %100 to %struct.NodeKey*
  %102 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %99
  br label %113

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = load %union.Node*, %union.Node** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %union.Node, %union.Node* %109, i64 %110
  store %union.Node* %111, %union.Node** %6, align 8
  br label %112

; <label>:112:                                    ; preds = %107
  br label %81

; <label>:113:                                    ; preds = %106
  store %struct.TValue* @absentkey, %struct.TValue** %3, align 8
  br label %114

; <label>:114:                                    ; preds = %113, %96, %54, %15
  %115 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %115
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 7
  %10 = load %union.Node*, %union.Node** %9, align 8
  %11 = load %struct.TString*, %struct.TString** %5, align 8
  %12 = getelementptr inbounds %struct.TString, %struct.TString* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Table*, %struct.Table** %4, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %13, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %21
  store %union.Node* %22, %union.Node** %6, align 8
  br label %23

; <label>:23:                                     ; preds = %56, %2
  %24 = load %union.Node*, %union.Node** %6, align 8
  %25 = bitcast %union.Node* %24 to %struct.NodeKey*
  %26 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 84
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %23
  %31 = load %union.Node*, %union.Node** %6, align 8
  %32 = bitcast %union.Node* %31 to %struct.NodeKey*
  %33 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %32, i32 0, i32 4
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*
  %37 = bitcast %union.GCUnion* %36 to %struct.TString*
  %38 = load %struct.TString*, %struct.TString** %5, align 8
  %39 = icmp eq %struct.TString* %37, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %30
  %41 = load %union.Node*, %union.Node** %6, align 8
  %42 = bitcast %union.Node* %41 to %struct.TValue*
  store %struct.TValue* %42, %struct.TValue** %3, align 8
  br label %57

; <label>:43:                                     ; preds = %30, %23
  %44 = load %union.Node*, %union.Node** %6, align 8
  %45 = bitcast %union.Node* %44 to %struct.NodeKey*
  %46 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %43
  store %struct.TValue* @absentkey, %struct.TValue** %3, align 8
  br label %57

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load %union.Node*, %union.Node** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %union.Node, %union.Node* %53, i64 %54
  store %union.Node* %55, %union.Node** %6, align 8
  br label %56

; <label>:56:                                     ; preds = %51
  br label %23

; <label>:57:                                     ; preds = %50, %40
  %58 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %58
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %9 = load %struct.TString*, %struct.TString** %5, align 8
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %2
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = load %struct.TString*, %struct.TString** %5, align 8
  %17 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %15, %struct.TString* %16)
  store %struct.TValue* %17, %struct.TValue** %3, align 8
  br label %36

; <label>:18:                                     ; preds = %2
  store %struct.TValue* %6, %struct.TValue** %7, align 8
  %19 = load %struct.TString*, %struct.TString** %5, align 8
  store %struct.TString* %19, %struct.TString** %8, align 8
  %20 = load %struct.TString*, %struct.TString** %8, align 8
  %21 = bitcast %struct.TString* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*
  %23 = load %struct.TValue*, %struct.TValue** %7, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  store %struct.GCObject* %22, %struct.GCObject** %25, align 8
  %26 = load %struct.TString*, %struct.TString** %8, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, 64
  %31 = trunc i32 %30 to i8
  %32 = load %struct.TValue*, %struct.TValue** %7, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  store i8 %31, i8* %33, align 8
  %34 = load %struct.Table*, %struct.Table** %4, align 8
  %35 = call %struct.TValue* @getgeneric(%struct.Table* %34, %struct.TValue* %6)
  store %struct.TValue* %35, %struct.TValue** %3, align 8
  br label %36

; <label>:36:                                     ; preds = %18, %14
  %37 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TValue* @getgeneric(%struct.Table*, %struct.TValue*) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = call %union.Node* @mainpositionTV(%struct.Table* %8, %struct.TValue* %9)
  store %union.Node* %10, %union.Node** %6, align 8
  br label %11

; <label>:11:                                     ; preds = %32, %2
  %12 = load %struct.TValue*, %struct.TValue** %5, align 8
  %13 = load %union.Node*, %union.Node** %6, align 8
  %14 = call i32 @equalkey(%struct.TValue* %12, %union.Node* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = load %union.Node*, %union.Node** %6, align 8
  %18 = bitcast %union.Node* %17 to %struct.TValue*
  store %struct.TValue* %18, %struct.TValue** %3, align 8
  br label %33

; <label>:19:                                     ; preds = %11
  %20 = load %union.Node*, %union.Node** %6, align 8
  %21 = bitcast %union.Node* %20 to %struct.NodeKey*
  %22 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %19
  store %struct.TValue* @absentkey, %struct.TValue** %3, align 8
  br label %33

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load %union.Node*, %union.Node** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %union.Node, %union.Node* %29, i64 %30
  store %union.Node* %31, %union.Node** %6, align 8
  br label %32

; <label>:32:                                     ; preds = %27
  br label %11

; <label>:33:                                     ; preds = %26, %16
  %34 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i64, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %7 = load %struct.TValue*, %struct.TValue** %5, align 8
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 8
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 63
  switch i32 %11, label %41 [
    i32 20, label %12
    i32 35, label %21
    i32 0, label %28
    i32 19, label %29
  ]

; <label>:12:                                     ; preds = %2
  %13 = load %struct.Table*, %struct.Table** %4, align 8
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.TString*
  %20 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %13, %struct.TString* %19)
  store %struct.TValue* %20, %struct.TValue** %3, align 8
  br label %45

; <label>:21:                                     ; preds = %2
  %22 = load %struct.Table*, %struct.Table** %4, align 8
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.TValue* @luaH_getint(%struct.Table* %22, i64 %26)
  store %struct.TValue* %27, %struct.TValue** %3, align 8
  br label %45

; <label>:28:                                     ; preds = %2
  store %struct.TValue* @absentkey, %struct.TValue** %3, align 8
  br label %45

; <label>:29:                                     ; preds = %2
  %30 = load %struct.TValue*, %struct.TValue** %5, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to double*
  %33 = load double, double* %32, align 8
  %34 = call i32 @luaV_flttointeger(double %33, i64* %6, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %29
  %37 = load %struct.Table*, %struct.Table** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.TValue* @luaH_getint(%struct.Table* %37, i64 %38)
  store %struct.TValue* %39, %struct.TValue** %3, align 8
  br label %45

; <label>:40:                                     ; preds = %29
  br label %41

; <label>:41:                                     ; preds = %2, %40
  %42 = load %struct.Table*, %struct.Table** %4, align 8
  %43 = load %struct.TValue*, %struct.TValue** %5, align 8
  %44 = call %struct.TValue* @getgeneric(%struct.Table* %42, %struct.TValue* %43)
  store %struct.TValue* %44, %struct.TValue** %3, align 8
  br label %45

; <label>:45:                                     ; preds = %41, %36, %28, %21, %12
  %46 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaH_getn(%struct.Table*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %3, align 8
  %7 = load %struct.Table*, %struct.Table** %3, align 8
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %96

; <label>:12:                                     ; preds = %1
  %13 = load %struct.Table*, %struct.Table** %3, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 6
  %15 = load %struct.TValue*, %struct.TValue** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 %18
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %96

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = icmp uge i32 %26, 2
  br i1 %27, label %28, label %68

; <label>:28:                                     ; preds = %25
  %29 = load %struct.Table*, %struct.Table** %3, align 8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 6
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 %34
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %68, label %41

; <label>:41:                                     ; preds = %28
  %42 = load %struct.Table*, %struct.Table** %3, align 8
  %43 = call i32 @ispow2realasize(%struct.Table* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %46, 1
  %48 = load i32, i32* %4, align 4
  %49 = sub i32 %48, 1
  %50 = sub i32 %49, 1
  %51 = and i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = sub i32 %54, 1
  %56 = load %struct.Table*, %struct.Table** %3, align 8
  %57 = getelementptr inbounds %struct.Table, %struct.Table* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.Table*, %struct.Table** %3, align 8
  %59 = getelementptr inbounds %struct.Table, %struct.Table* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 128
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  br label %64

; <label>:64:                                     ; preds = %53, %45, %41
  %65 = load i32, i32* %4, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %2, align 8
  br label %182

; <label>:68:                                     ; preds = %28, %25
  %69 = load %struct.Table*, %struct.Table** %3, align 8
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 6
  %71 = load %struct.TValue*, %struct.TValue** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @binsearch(%struct.TValue* %71, i32 0, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.Table*, %struct.Table** %3, align 8
  %75 = call i32 @ispow2realasize(%struct.Table* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.Table*, %struct.Table** %3, align 8
  %80 = call i32 @luaH_realasize(%struct.Table* %79)
  %81 = udiv i32 %80, 2
  %82 = icmp ugt i32 %78, %81
  br i1 %82, label %83, label %93

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.Table*, %struct.Table** %3, align 8
  %86 = getelementptr inbounds %struct.Table, %struct.Table* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.Table*, %struct.Table** %3, align 8
  %88 = getelementptr inbounds %struct.Table, %struct.Table* %87, i32 0, i32 2
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, 128
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %93

; <label>:93:                                     ; preds = %83, %77, %68
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %2, align 8
  br label %182

; <label>:96:                                     ; preds = %12, %1
  %97 = load %struct.Table*, %struct.Table** %3, align 8
  %98 = getelementptr inbounds %struct.Table, %struct.Table* %97, i32 0, i32 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %158

; <label>:103:                                    ; preds = %96
  %104 = load %struct.Table*, %struct.Table** %3, align 8
  %105 = getelementptr inbounds %struct.Table, %struct.Table* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.Table*, %struct.Table** %3, align 8
  %108 = getelementptr inbounds %struct.Table, %struct.Table* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, 1
  %111 = and i32 %106, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %158, label %113

; <label>:113:                                    ; preds = %103
  %114 = load %struct.Table*, %struct.Table** %3, align 8
  %115 = getelementptr inbounds %struct.Table, %struct.Table* %114, i32 0, i32 6
  %116 = load %struct.TValue*, %struct.TValue** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %116, i64 %118
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %119, i32 0, i32 1
  %121 = load i8, i8* %120, align 8
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

; <label>:125:                                    ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %2, align 8
  br label %182

; <label>:128:                                    ; preds = %113
  %129 = load %struct.Table*, %struct.Table** %3, align 8
  %130 = call i32 @luaH_realasize(%struct.Table* %129)
  store i32 %130, i32* %4, align 4
  %131 = load %struct.Table*, %struct.Table** %3, align 8
  %132 = getelementptr inbounds %struct.Table, %struct.Table* %131, i32 0, i32 6
  %133 = load %struct.TValue*, %struct.TValue** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sub i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TValue, %struct.TValue* %133, i64 %136
  %138 = getelementptr inbounds %struct.TValue, %struct.TValue* %137, i32 0, i32 1
  %139 = load i8, i8* %138, align 8
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 15
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %157

; <label>:143:                                    ; preds = %128
  %144 = load %struct.Table*, %struct.Table** %3, align 8
  %145 = getelementptr inbounds %struct.Table, %struct.Table* %144, i32 0, i32 6
  %146 = load %struct.TValue*, %struct.TValue** %145, align 8
  %147 = load %struct.Table*, %struct.Table** %3, align 8
  %148 = getelementptr inbounds %struct.Table, %struct.Table* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @binsearch(%struct.TValue* %146, i32 %149, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.Table*, %struct.Table** %3, align 8
  %154 = getelementptr inbounds %struct.Table, %struct.Table* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %2, align 8
  br label %182

; <label>:157:                                    ; preds = %128
  br label %158

; <label>:158:                                    ; preds = %157, %103, %96
  %159 = load %struct.Table*, %struct.Table** %3, align 8
  %160 = getelementptr inbounds %struct.Table, %struct.Table* %159, i32 0, i32 8
  %161 = load %union.Node*, %union.Node** %160, align 8
  %162 = icmp eq %union.Node* %161, null
  br i1 %162, label %174, label %163

; <label>:163:                                    ; preds = %158
  %164 = load %struct.Table*, %struct.Table** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = add i32 %165, 1
  %167 = zext i32 %166 to i64
  %168 = call %struct.TValue* @luaH_getint(%struct.Table* %164, i64 %167)
  %169 = getelementptr inbounds %struct.TValue, %struct.TValue* %168, i32 0, i32 1
  %170 = load i8, i8* %169, align 8
  %171 = zext i8 %170 to i32
  %172 = and i32 %171, 15
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

; <label>:174:                                    ; preds = %163, %158
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %2, align 8
  br label %182

; <label>:177:                                    ; preds = %163
  %178 = load %struct.Table*, %struct.Table** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = zext i32 %179 to i64
  %181 = call i64 @hash_search(%struct.Table* %178, i64 %180)
  store i64 %181, i64* %2, align 8
  br label %182

; <label>:182:                                    ; preds = %177, %174, %143, %125, %93, %64
  %183 = load i64, i64* %2, align 8
  ret i64 %183
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispow2realasize(%struct.Table*) #0 {
  %2 = alloca %struct.Table*, align 8
  store %struct.Table* %0, %struct.Table** %2, align 8
  %3 = load %struct.Table*, %struct.Table** %2, align 8
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

; <label>:9:                                      ; preds = %1
  %10 = load %struct.Table*, %struct.Table** %2, align 8
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.Table*, %struct.Table** %2, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %15, 1
  %17 = and i32 %12, %16
  %18 = icmp eq i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %9, %1
  %20 = phi i1 [ true, %1 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binsearch(%struct.TValue*, i32, i32) #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %32, %3
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub i32 %9, %10
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %33

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add i32 %14, %15
  %17 = udiv i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TValue*, %struct.TValue** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %21
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %6, align 4
  br label %32

; <label>:30:                                     ; preds = %13
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %30, %28
  br label %8

; <label>:33:                                     ; preds = %8
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_search(%struct.Table*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %5, align 8
  br label %13

; <label>:13:                                     ; preds = %10, %2
  br label %14

; <label>:14:                                     ; preds = %34, %13
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ule i64 %16, 4611686018427387903
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = mul i64 %19, 2
  store i64 %20, i64* %5, align 8
  br label %33

; <label>:21:                                     ; preds = %14
  store i64 9223372036854775807, i64* %5, align 8
  %22 = load %struct.Table*, %struct.Table** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TValue* @luaH_getint(%struct.Table* %22, i64 %23)
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %21
  br label %44

; <label>:31:                                     ; preds = %21
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %3, align 8
  br label %70

; <label>:33:                                     ; preds = %18
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load %struct.Table*, %struct.Table** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.TValue* @luaH_getint(%struct.Table* %35, i64 %36)
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %14, label %44

; <label>:44:                                     ; preds = %34, %30
  br label %45

; <label>:45:                                     ; preds = %67, %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  %49 = icmp ugt i64 %48, 1
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %51, %52
  %54 = udiv i64 %53, 2
  store i64 %54, i64* %7, align 8
  %55 = load %struct.Table*, %struct.Table** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call %struct.TValue* @luaH_getint(%struct.Table* %55, i64 %56)
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 1
  %59 = load i8, i8* %58, align 8
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %50
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %5, align 8
  br label %67

; <label>:65:                                     ; preds = %50
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %6, align 8
  br label %67

; <label>:67:                                     ; preds = %65, %63
  br label %45

; <label>:68:                                     ; preds = %45
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  br label %70

; <label>:70:                                     ; preds = %68, %31
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayindex(i64) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = sub i64 %4, 1
  %6 = icmp ult i64 %5, 2147483648
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %2, align 4
  br label %11

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare hidden i32 @luaO_ceillog2(i32) #2

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numusearray(%struct.Table*, i32*) #0 {
  %3 = alloca %struct.Table*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.Table*, %struct.Table** %3, align 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %66, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 31
  br i1 %17, label %18, label %71

; <label>:18:                                     ; preds = %15
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %23
  br label %71

; <label>:29:                                     ; preds = %23
  br label %30

; <label>:30:                                     ; preds = %29, %18
  br label %31

; <label>:31:                                     ; preds = %52, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %55

; <label>:35:                                     ; preds = %31
  %36 = load %struct.Table*, %struct.Table** %3, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 6
  %38 = load %struct.TValue*, %struct.TValue** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 %41
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

; <label>:51:                                     ; preds = %48, %35
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %31

; <label>:55:                                     ; preds = %31
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul i32 %69, 2
  store i32 %70, i32* %6, align 4
  br label %15

; <label>:71:                                     ; preds = %28, %15
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numusehash(%struct.Table*, i32*, i32*) #0 {
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.Node*, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  store i32 %15, i32* %9, align 4
  br label %16

; <label>:16:                                     ; preds = %54, %3
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %55

; <label>:20:                                     ; preds = %16
  %21 = load %struct.Table*, %struct.Table** %4, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 7
  %23 = load %union.Node*, %union.Node** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %union.Node, %union.Node* %23, i64 %25
  store %union.Node* %26, %union.Node** %10, align 8
  %27 = load %union.Node*, %union.Node** %10, align 8
  %28 = bitcast %union.Node* %27 to %struct.TValue*
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

; <label>:34:                                     ; preds = %20
  %35 = load %union.Node*, %union.Node** %10, align 8
  %36 = bitcast %union.Node* %35 to %struct.NodeKey*
  %37 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %51

; <label>:41:                                     ; preds = %34
  %42 = load %union.Node*, %union.Node** %10, align 8
  %43 = bitcast %union.Node* %42 to %struct.NodeKey*
  %44 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %43, i32 0, i32 4
  %45 = bitcast %union.Value* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @countint(i64 %46, i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

; <label>:51:                                     ; preds = %41, %34
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %20
  br label %16

; <label>:55:                                     ; preds = %16
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countint(i64, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @arrayindex(i64 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @luaO_ceillog2(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4
  store i32 1, i32* %3, align 4
  br label %20

; <label>:19:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computesizes(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %37, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = udiv i32 %16, 2
  %18 = icmp ugt i32 %15, %17
  br label %19

; <label>:19:                                     ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %42

; <label>:21:                                     ; preds = %19
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %30, 2
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %8, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %21
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %10

; <label>:42:                                     ; preds = %19
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_hashfloat(double) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = call double @frexp(double %7, i32* %4) #6
  %9 = fmul double %8, 0x41E0000000000000
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = fcmp oge double %10, 0xC3E0000000000000
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %1
  %13 = load double, double* %3, align 8
  %14 = fcmp olt double %13, 0x43E0000000000000
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load double, double* %3, align 8
  %17 = fptosi double %16 to i64
  store i64 %17, i64* %5, align 8
  br i1 true, label %19, label %18

; <label>:18:                                     ; preds = %15, %12, %1
  store i32 0, i32* %2, align 4
  br label %33

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = add i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ule i32 %24, 2147483647
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %6, align 4
  br label %31

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %29, -1
  br label %31

; <label>:31:                                     ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  store i32 %32, i32* %2, align 4
  br label %33

; <label>:33:                                     ; preds = %31, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare hidden i32 @luaS_hashlongstr(%struct.TString*) #2

; Function Attrs: nounwind
declare double @frexp(double, i32*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equalkey(%struct.TValue*, %union.Node*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %union.Node*, align 8
  store %struct.TValue* %0, %struct.TValue** %4, align 8
  store %union.Node* %1, %union.Node** %5, align 8
  %6 = load %struct.TValue*, %struct.TValue** %4, align 8
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 8
  %9 = zext i8 %8 to i32
  %10 = load %union.Node*, %union.Node** %5, align 8
  %11 = bitcast %union.Node* %10 to %struct.NodeKey*
  %12 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %11, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %9, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

; <label>:17:                                     ; preds = %2
  %18 = load %struct.TValue*, %struct.TValue** %4, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 63
  switch i32 %22, label %99 [
    i32 0, label %23
    i32 35, label %24
    i32 19, label %36
    i32 1, label %48
    i32 2, label %60
    i32 38, label %72
    i32 36, label %84
  ]

; <label>:23:                                     ; preds = %17
  store i32 1, i32* %3, align 4
  br label %111

; <label>:24:                                     ; preds = %17
  %25 = load %struct.TValue*, %struct.TValue** %4, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load %union.Node*, %union.Node** %5, align 8
  %30 = bitcast %union.Node* %29 to %struct.NodeKey*
  %31 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %30, i32 0, i32 4
  %32 = bitcast %union.Value* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %111

; <label>:36:                                     ; preds = %17
  %37 = load %struct.TValue*, %struct.TValue** %4, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to double*
  %40 = load double, double* %39, align 8
  %41 = load %union.Node*, %union.Node** %5, align 8
  %42 = bitcast %union.Node* %41 to %struct.NodeKey*
  %43 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %42, i32 0, i32 4
  %44 = bitcast %union.Value* %43 to double*
  %45 = load double, double* %44, align 8
  %46 = fcmp oeq double %40, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %111

; <label>:48:                                     ; preds = %17
  %49 = load %struct.TValue*, %struct.TValue** %4, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 0
  %51 = bitcast %union.Value* %50 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = load %union.Node*, %union.Node** %5, align 8
  %54 = bitcast %union.Node* %53 to %struct.NodeKey*
  %55 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %54, i32 0, i32 4
  %56 = bitcast %union.Value* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %52, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %111

; <label>:60:                                     ; preds = %17
  %61 = load %struct.TValue*, %struct.TValue** %4, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to i8**
  %64 = load i8*, i8** %63, align 8
  %65 = load %union.Node*, %union.Node** %5, align 8
  %66 = bitcast %union.Node* %65 to %struct.NodeKey*
  %67 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %66, i32 0, i32 4
  %68 = bitcast %union.Value* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %64, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %111

; <label>:72:                                     ; preds = %17
  %73 = load %struct.TValue*, %struct.TValue** %4, align 8
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %74 to i32 (%struct.lua_State*)**
  %76 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %75, align 8
  %77 = load %union.Node*, %union.Node** %5, align 8
  %78 = bitcast %union.Node* %77 to %struct.NodeKey*
  %79 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %78, i32 0, i32 4
  %80 = bitcast %union.Value* %79 to i32 (%struct.lua_State*)**
  %81 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %80, align 8
  %82 = icmp eq i32 (%struct.lua_State*)* %76, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %111

; <label>:84:                                     ; preds = %17
  %85 = load %struct.TValue*, %struct.TValue** %4, align 8
  %86 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i32 0, i32 0
  %87 = bitcast %union.Value* %86 to %struct.GCObject**
  %88 = load %struct.GCObject*, %struct.GCObject** %87, align 8
  %89 = bitcast %struct.GCObject* %88 to %union.GCUnion*
  %90 = bitcast %union.GCUnion* %89 to %struct.TString*
  %91 = load %union.Node*, %union.Node** %5, align 8
  %92 = bitcast %union.Node* %91 to %struct.NodeKey*
  %93 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %92, i32 0, i32 4
  %94 = bitcast %union.Value* %93 to %struct.GCObject**
  %95 = load %struct.GCObject*, %struct.GCObject** %94, align 8
  %96 = bitcast %struct.GCObject* %95 to %union.GCUnion*
  %97 = bitcast %union.GCUnion* %96 to %struct.TString*
  %98 = call i32 @luaS_eqlngstr(%struct.TString* %90, %struct.TString* %97)
  store i32 %98, i32* %3, align 4
  br label %111

; <label>:99:                                     ; preds = %17
  %100 = load %struct.TValue*, %struct.TValue** %4, align 8
  %101 = getelementptr inbounds %struct.TValue, %struct.TValue* %100, i32 0, i32 0
  %102 = bitcast %union.Value* %101 to %struct.GCObject**
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8
  %104 = load %union.Node*, %union.Node** %5, align 8
  %105 = bitcast %union.Node* %104 to %struct.NodeKey*
  %106 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %105, i32 0, i32 4
  %107 = bitcast %union.Value* %106 to %struct.GCObject**
  %108 = load %struct.GCObject*, %struct.GCObject** %107, align 8
  %109 = icmp eq %struct.GCObject* %103, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

; <label>:111:                                    ; preds = %99, %84, %72, %60, %48, %36, %24, %23, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
