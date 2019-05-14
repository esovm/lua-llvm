; ModuleID = 'ltable.c'
source_filename = "ltable.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.AuxsetnodeT = type { %struct.Table*, i32 }
%union.GCUnion = type { %struct.lua_State }

@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@dummynode_ = internal constant %struct.Node zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.Table*, %struct.Table** %6, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %16 = call i32 @findindex(%struct.lua_State* %13, %struct.Table* %14, %struct.lua_TValue* %15)
  store i32 %16, i32* %8, align 4
  br label %17

; <label>:17:                                     ; preds = %56, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.Table*, %struct.Table** %6, align 8
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %59

; <label>:23:                                     ; preds = %17
  %24 = load %struct.Table*, %struct.Table** %6, align 8
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 6
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 %28
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

; <label>:33:                                     ; preds = %23
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %34, %struct.lua_TValue** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 0
  %40 = bitcast %union.Value* %39 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 1
  store i32 19, i32* %42, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1
  store %struct.lua_TValue* %44, %struct.lua_TValue** %10, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %46 = load %struct.Table*, %struct.Table** %6, align 8
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %46, i32 0, i32 6
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 %50
  %52 = bitcast %struct.lua_TValue* %45 to i8*
  %53 = bitcast %struct.lua_TValue* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false)
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store i32 1, i32* %4, align 4
  br label %116

; <label>:55:                                     ; preds = %23
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %17

; <label>:59:                                     ; preds = %17
  %60 = load %struct.Table*, %struct.Table** %6, align 8
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

; <label>:65:                                     ; preds = %112, %59
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.Table*, %struct.Table** %6, align 8
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %67, i32 0, i32 4
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 1, %70
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %115

; <label>:73:                                     ; preds = %65
  %74 = load %struct.Table*, %struct.Table** %6, align 8
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %74, i32 0, i32 7
  %76 = load %struct.Node*, %struct.Node** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.Node, %struct.Node* %76, i64 %78
  %80 = getelementptr inbounds %struct.Node, %struct.Node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %84

; <label>:84:                                     ; preds = %73
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %85, %struct.lua_TValue** %11, align 8
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %87 = load %struct.Table*, %struct.Table** %6, align 8
  %88 = getelementptr inbounds %struct.Table, %struct.Table* %87, i32 0, i32 7
  %89 = load %struct.Node*, %struct.Node** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.Node, %struct.Node* %89, i64 %91
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %92, i32 0, i32 1
  %94 = bitcast %union.TKey* %93 to %struct.lua_TValue*
  %95 = bitcast %struct.lua_TValue* %86 to i8*
  %96 = bitcast %struct.lua_TValue* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 16, i32 8, i1 false)
  %97 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 1
  store %struct.lua_TValue* %99, %struct.lua_TValue** %12, align 8
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %101 = load %struct.Table*, %struct.Table** %6, align 8
  %102 = getelementptr inbounds %struct.Table, %struct.Table* %101, i32 0, i32 7
  %103 = load %struct.Node*, %struct.Node** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.Node, %struct.Node* %103, i64 %105
  %107 = getelementptr inbounds %struct.Node, %struct.Node* %106, i32 0, i32 0
  %108 = bitcast %struct.lua_TValue* %100 to i8*
  %109 = bitcast %struct.lua_TValue* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 16, i32 8, i1 false)
  %110 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store i32 1, i32* %4, align 4
  br label %116

; <label>:111:                                    ; preds = %73
  br label %112

; <label>:112:                                    ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %65

; <label>:115:                                    ; preds = %65
  store i32 0, i32* %4, align 4
  br label %116

; <label>:116:                                    ; preds = %115, %84, %33
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findindex(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Node*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %18 = call i32 @arrayindex(%struct.lua_TValue* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.Table*, %struct.Table** %6, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ule i32 %22, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %100

; <label>:29:                                     ; preds = %21, %16
  %30 = load %struct.Table*, %struct.Table** %6, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = call %struct.Node* @mainposition(%struct.Table* %30, %struct.lua_TValue* %31)
  store %struct.Node* %32, %struct.Node** %10, align 8
  br label %33

; <label>:33:                                     ; preds = %99, %29
  %34 = load %struct.Node*, %struct.Node** %10, align 8
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %34, i32 0, i32 1
  %36 = bitcast %union.TKey* %35 to %struct.lua_TValue*
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %38 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %36, %struct.lua_TValue* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

; <label>:40:                                     ; preds = %33
  %41 = load %struct.Node*, %struct.Node** %10, align 8
  %42 = getelementptr inbounds %struct.Node, %struct.Node* %41, i32 0, i32 1
  %43 = bitcast %union.TKey* %42 to %struct.lua_TValue*
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %84

; <label>:47:                                     ; preds = %40
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

; <label>:53:                                     ; preds = %47
  %54 = load %struct.Node*, %struct.Node** %10, align 8
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %54, i32 0, i32 1
  %56 = bitcast %union.TKey* %55 to %struct.lua_TValue*
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 0
  %58 = bitcast %union.Value* %57 to %struct.GCObject**
  %59 = load %struct.GCObject*, %struct.GCObject** %58, align 8
  %60 = bitcast %struct.GCObject* %59 to i8*
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to %struct.GCObject**
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8
  %65 = bitcast %struct.GCObject* %64 to i8*
  %66 = icmp eq i8* %60, %65
  br i1 %66, label %67, label %84

; <label>:67:                                     ; preds = %53, %33
  %68 = load %struct.Node*, %struct.Node** %10, align 8
  %69 = load %struct.Table*, %struct.Table** %6, align 8
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 7
  %71 = load %struct.Node*, %struct.Node** %70, align 8
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 0
  %73 = ptrtoint %struct.Node* %68 to i64
  %74 = ptrtoint %struct.Node* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 32
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  %80 = load %struct.Table*, %struct.Table** %6, align 8
  %81 = getelementptr inbounds %struct.Table, %struct.Table* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %79, %82
  store i32 %83, i32* %4, align 4
  br label %100

; <label>:84:                                     ; preds = %53, %47, %40
  %85 = load %struct.Node*, %struct.Node** %10, align 8
  %86 = getelementptr inbounds %struct.Node, %struct.Node* %85, i32 0, i32 1
  %87 = bitcast %union.TKey* %86 to %struct.anon*
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %84
  %93 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.Node*, %struct.Node** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.Node, %struct.Node* %96, i64 %97
  store %struct.Node* %98, %struct.Node** %10, align 8
  br label %99

; <label>:99:                                     ; preds = %94
  br label %33

; <label>:100:                                    ; preds = %67, %27, %15
  %101 = load i32, i32* %4, align 4
  ret i32 %101
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
  %10 = alloca i32, align 4
  %11 = alloca %struct.AuxsetnodeT, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Node*, align 8
  %15 = alloca %struct.Node*, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.Table*, %struct.Table** %6, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.Table*, %struct.Table** %6, align 8
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %20, i32 0, i32 8
  %22 = load %struct.Node*, %struct.Node** %21, align 8
  %23 = icmp eq %struct.Node* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  br label %31

; <label>:25:                                     ; preds = %4
  %26 = load %struct.Table*, %struct.Table** %6, align 8
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %26, i32 0, i32 4
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 1, %29
  br label %31

; <label>:31:                                     ; preds = %25, %24
  %32 = phi i32 [ 0, %24 ], [ %30, %25 ]
  store i32 %32, i32* %13, align 4
  %33 = load %struct.Table*, %struct.Table** %6, align 8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %33, i32 0, i32 7
  %35 = load %struct.Node*, %struct.Node** %34, align 8
  store %struct.Node* %35, %struct.Node** %14, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %31
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %41 = load %struct.Table*, %struct.Table** %6, align 8
  %42 = load i32, i32* %7, align 4
  call void @setarrayvector(%struct.lua_State* %40, %struct.Table* %41, i32 %42)
  br label %43

; <label>:43:                                     ; preds = %39, %31
  %44 = load %struct.Table*, %struct.Table** %6, align 8
  %45 = getelementptr inbounds %struct.AuxsetnodeT, %struct.AuxsetnodeT* %11, i32 0, i32 0
  store %struct.Table* %44, %struct.Table** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds %struct.AuxsetnodeT, %struct.AuxsetnodeT* %11, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %49 = bitcast %struct.AuxsetnodeT* %11 to i8*
  %50 = call i32 @luaD_rawrunprotected(%struct.lua_State* %48, void (%struct.lua_State*, i8*)* @auxsetnode, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %43
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = load %struct.Table*, %struct.Table** %6, align 8
  %55 = load i32, i32* %12, align 4
  call void @setarrayvector(%struct.lua_State* %53, %struct.Table* %54, i32 %55)
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %56, i32 4) #5
  unreachable

; <label>:57:                                     ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %112

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.Table*, %struct.Table** %6, align 8
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %9, align 4
  br label %66

; <label>:66:                                     ; preds = %93, %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %96

; <label>:70:                                     ; preds = %66
  %71 = load %struct.Table*, %struct.Table** %6, align 8
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %71, i32 0, i32 6
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 %75
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

; <label>:80:                                     ; preds = %70
  %81 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %82 = load %struct.Table*, %struct.Table** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = load %struct.Table*, %struct.Table** %6, align 8
  %87 = getelementptr inbounds %struct.Table, %struct.Table* %86, i32 0, i32 6
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 %90
  call void @luaH_setint(%struct.lua_State* %81, %struct.Table* %82, i64 %85, %struct.lua_TValue* %91)
  br label %92

; <label>:92:                                     ; preds = %80, %70
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %66

; <label>:96:                                     ; preds = %66
  %97 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %98 = load %struct.Table*, %struct.Table** %6, align 8
  %99 = getelementptr inbounds %struct.Table, %struct.Table* %98, i32 0, i32 6
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8
  %101 = bitcast %struct.lua_TValue* %100 to i8*
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 %103, 16
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 %106, 16
  %108 = call i8* @luaM_realloc_(%struct.lua_State* %97, i8* %101, i64 %104, i64 %107)
  %109 = bitcast i8* %108 to %struct.lua_TValue*
  %110 = load %struct.Table*, %struct.Table** %6, align 8
  %111 = getelementptr inbounds %struct.Table, %struct.Table* %110, i32 0, i32 6
  store %struct.lua_TValue* %109, %struct.lua_TValue** %111, align 8
  br label %112

; <label>:112:                                    ; preds = %96, %57
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %115

; <label>:115:                                    ; preds = %142, %112
  %116 = load i32, i32* %10, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %145

; <label>:118:                                    ; preds = %115
  %119 = load %struct.Node*, %struct.Node** %14, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.Node, %struct.Node* %119, i64 %121
  store %struct.Node* %122, %struct.Node** %15, align 8
  %123 = load %struct.Node*, %struct.Node** %15, align 8
  %124 = getelementptr inbounds %struct.Node, %struct.Node* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %141, label %128

; <label>:128:                                    ; preds = %118
  %129 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %130 = load %struct.Table*, %struct.Table** %6, align 8
  %131 = load %struct.Node*, %struct.Node** %15, align 8
  %132 = getelementptr inbounds %struct.Node, %struct.Node* %131, i32 0, i32 1
  %133 = bitcast %union.TKey* %132 to %struct.lua_TValue*
  %134 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %129, %struct.Table* %130, %struct.lua_TValue* %133)
  store %struct.lua_TValue* %134, %struct.lua_TValue** %16, align 8
  %135 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %136 = load %struct.Node*, %struct.Node** %15, align 8
  %137 = getelementptr inbounds %struct.Node, %struct.Node* %136, i32 0, i32 0
  %138 = bitcast %struct.lua_TValue* %135 to i8*
  %139 = bitcast %struct.lua_TValue* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 16, i32 8, i1 false)
  %140 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  br label %141

; <label>:141:                                    ; preds = %128, %118
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  br label %115

; <label>:145:                                    ; preds = %115
  %146 = load i32, i32* %13, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %156

; <label>:148:                                    ; preds = %145
  %149 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %150 = load %struct.Node*, %struct.Node** %14, align 8
  %151 = bitcast %struct.Node* %150 to i8*
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 32
  %155 = call i8* @luaM_realloc_(%struct.lua_State* %149, i8* %151, i64 %154, i64 0)
  br label %156

; <label>:156:                                    ; preds = %148, %145
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setarrayvector(%struct.lua_State*, %struct.Table*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load %struct.Table*, %struct.Table** %5, align 8
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 6
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %12 = bitcast %struct.lua_TValue* %11 to i8*
  %13 = load %struct.Table*, %struct.Table** %5, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = call i8* @luaM_realloc_(%struct.lua_State* %8, i8* %12, i64 %17, i64 %20)
  %22 = bitcast i8* %21 to %struct.lua_TValue*
  %23 = load %struct.Table*, %struct.Table** %5, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 6
  store %struct.lua_TValue* %22, %struct.lua_TValue** %24, align 8
  %25 = load %struct.Table*, %struct.Table** %5, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %28

; <label>:28:                                     ; preds = %40, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %28
  %33 = load %struct.Table*, %struct.Table** %5, align 8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %33, i32 0, i32 6
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %37
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 1
  store i32 0, i32* %39, align 8
  br label %40

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %28

; <label>:43:                                     ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.Table*, %struct.Table** %5, align 8
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  ret void
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsetnode(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.AuxsetnodeT*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.AuxsetnodeT*
  store %struct.AuxsetnodeT* %7, %struct.AuxsetnodeT** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.AuxsetnodeT*, %struct.AuxsetnodeT** %5, align 8
  %10 = getelementptr inbounds %struct.AuxsetnodeT, %struct.AuxsetnodeT* %9, i32 0, i32 0
  %11 = load %struct.Table*, %struct.Table** %10, align 8
  %12 = load %struct.AuxsetnodeT*, %struct.AuxsetnodeT** %5, align 8
  %13 = getelementptr inbounds %struct.AuxsetnodeT, %struct.AuxsetnodeT* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  call void @setnodevector(%struct.lua_State* %8, %struct.Table* %11, i32 %14)
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %8, align 8
  %13 = load %struct.Table*, %struct.Table** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %13, i64 %14)
  store %struct.lua_TValue* %15, %struct.lua_TValue** %9, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %17 = icmp ne %struct.lua_TValue* %16, @luaO_nilobject_
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %19, %struct.lua_TValue** %10, align 8
  br label %30

; <label>:20:                                     ; preds = %4
  store %struct.lua_TValue* %11, %struct.lua_TValue** %12, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to i64*
  store i64 %21, i64* %24, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  store i32 19, i32* %26, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = load %struct.Table*, %struct.Table** %6, align 8
  %29 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %27, %struct.Table* %28, %struct.lua_TValue* %11)
  store %struct.lua_TValue* %29, %struct.lua_TValue** %10, align 8
  br label %30

; <label>:30:                                     ; preds = %20, %18
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %34 = bitcast %struct.lua_TValue* %32 to i8*
  %35 = bitcast %struct.lua_TValue* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %9 = load %struct.Table*, %struct.Table** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %11 = call %struct.lua_TValue* @luaH_get(%struct.Table* %9, %struct.lua_TValue* %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %8, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = icmp ne %struct.lua_TValue* %12, @luaO_nilobject_
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %15, %struct.lua_TValue** %4, align 8
  br label %21

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = load %struct.Table*, %struct.Table** %6, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %20 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %17, %struct.Table* %18, %struct.lua_TValue* %19)
  store %struct.lua_TValue* %20, %struct.lua_TValue** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %16, %14
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  ret %struct.lua_TValue* %22
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
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  %11 = icmp eq %struct.Node* %10, null
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
  store %struct.lua_TValue* null, %struct.lua_TValue** %15, align 8
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
define internal void @setnodevector(%struct.lua_State*, %struct.Table*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Node*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %3
  %13 = load %struct.Table*, %struct.Table** %5, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 7
  store %struct.Node* @dummynode_, %struct.Node** %14, align 8
  %15 = load %struct.Table*, %struct.Table** %5, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  store i8 0, i8* %16, align 1
  %17 = load %struct.Table*, %struct.Table** %5, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 8
  store %struct.Node* null, %struct.Node** %18, align 8
  br label %75

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @luaO_ceillog2(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 30
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %19
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 32
  %33 = call i8* @luaM_realloc_(%struct.lua_State* %29, i8* null, i64 0, i64 %32)
  %34 = bitcast i8* %33 to %struct.Node*
  %35 = load %struct.Table*, %struct.Table** %5, align 8
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %35, i32 0, i32 7
  store %struct.Node* %34, %struct.Node** %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

; <label>:37:                                     ; preds = %59, %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %62

; <label>:41:                                     ; preds = %37
  %42 = load %struct.Table*, %struct.Table** %5, align 8
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %42, i32 0, i32 7
  %44 = load %struct.Node*, %struct.Node** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 %46
  store %struct.Node* %47, %struct.Node** %9, align 8
  %48 = load %struct.Node*, %struct.Node** %9, align 8
  %49 = getelementptr inbounds %struct.Node, %struct.Node* %48, i32 0, i32 1
  %50 = bitcast %union.TKey* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.Node*, %struct.Node** %9, align 8
  %53 = getelementptr inbounds %struct.Node, %struct.Node* %52, i32 0, i32 1
  %54 = bitcast %union.TKey* %53 to %struct.anon*
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.Node*, %struct.Node** %9, align 8
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %41
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %37

; <label>:62:                                     ; preds = %37
  %63 = load i32, i32* %8, align 4
  %64 = trunc i32 %63 to i8
  %65 = load %struct.Table*, %struct.Table** %5, align 8
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %65, i32 0, i32 4
  store i8 %64, i8* %66, align 1
  %67 = load %struct.Table*, %struct.Table** %5, align 8
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %67, i32 0, i32 7
  %69 = load %struct.Node*, %struct.Node** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %69, i64 %71
  %73 = load %struct.Table*, %struct.Table** %5, align 8
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %73, i32 0, i32 8
  store %struct.Node* %72, %struct.Node** %74, align 8
  br label %75

; <label>:75:                                     ; preds = %62, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %5 = load %struct.Table*, %struct.Table** %4, align 8
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 8
  %7 = load %struct.Node*, %struct.Node** %6, align 8
  %8 = icmp eq %struct.Node* %7, null
  br i1 %8, label %23, label %9

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %struct.Node*, %struct.Node** %12, align 8
  %14 = bitcast %struct.Node* %13 to i8*
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 32
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %10, i8* %14, i64 %21, i64 0)
  br label %23

; <label>:23:                                     ; preds = %9, %2
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.Table*, %struct.Table** %4, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 6
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = bitcast %struct.lua_TValue* %27 to i8*
  %29 = load %struct.Table*, %struct.Table** %4, align 8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 16
  %34 = call i8* @luaM_realloc_(%struct.lua_State* %24, i8* %28, i64 %33, i64 0)
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load %struct.Table*, %struct.Table** %4, align 8
  %37 = bitcast %struct.Table* %36 to i8*
  %38 = call i8* @luaM_realloc_(%struct.lua_State* %35, i8* %37, i64 56, i64 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.Node*, align 8
  %9 = alloca %struct.lua_TValue, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.Node*, align 8
  %13 = alloca %struct.Node*, align 8
  %14 = alloca %union.TKey*, align 8
  %15 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Table* %1, %struct.Table** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %3
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %52

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %29 = call i32 @luaV_tointeger(%struct.lua_TValue* %28, i64* %10, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %27
  store %struct.lua_TValue* %9, %struct.lua_TValue** %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to i64*
  store i64 %32, i64* %35, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  store i32 19, i32* %37, align 8
  store %struct.lua_TValue* %9, %struct.lua_TValue** %7, align 8
  br label %51

; <label>:38:                                     ; preds = %27
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to double*
  %42 = load double, double* %41, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to double*
  %46 = load double, double* %45, align 8
  %47 = fcmp oeq double %42, %46
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %38
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

; <label>:50:                                     ; preds = %38
  br label %51

; <label>:51:                                     ; preds = %50, %31
  br label %52

; <label>:52:                                     ; preds = %51, %22
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load %struct.Table*, %struct.Table** %6, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %56 = call %struct.Node* @mainposition(%struct.Table* %54, %struct.lua_TValue* %55)
  store %struct.Node* %56, %struct.Node** %8, align 8
  %57 = load %struct.Node*, %struct.Node** %8, align 8
  %58 = getelementptr inbounds %struct.Node, %struct.Node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %53
  %63 = load %struct.Table*, %struct.Table** %6, align 8
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %63, i32 0, i32 8
  %65 = load %struct.Node*, %struct.Node** %64, align 8
  %66 = icmp eq %struct.Node* %65, null
  br i1 %66, label %67, label %195

; <label>:67:                                     ; preds = %62, %53
  %68 = load %struct.Table*, %struct.Table** %6, align 8
  %69 = call %struct.Node* @getfreepos(%struct.Table* %68)
  store %struct.Node* %69, %struct.Node** %13, align 8
  %70 = load %struct.Node*, %struct.Node** %13, align 8
  %71 = icmp eq %struct.Node* %70, null
  br i1 %71, label %72, label %80

; <label>:72:                                     ; preds = %67
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = load %struct.Table*, %struct.Table** %6, align 8
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @rehash(%struct.lua_State* %73, %struct.Table* %74, %struct.lua_TValue* %75)
  %76 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %77 = load %struct.Table*, %struct.Table** %6, align 8
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %79 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %76, %struct.Table* %77, %struct.lua_TValue* %78)
  store %struct.lua_TValue* %79, %struct.lua_TValue** %4, align 8
  br label %242

; <label>:80:                                     ; preds = %67
  %81 = load %struct.Table*, %struct.Table** %6, align 8
  %82 = load %struct.Node*, %struct.Node** %8, align 8
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %82, i32 0, i32 1
  %84 = bitcast %union.TKey* %83 to %struct.lua_TValue*
  %85 = call %struct.Node* @mainposition(%struct.Table* %81, %struct.lua_TValue* %84)
  store %struct.Node* %85, %struct.Node** %12, align 8
  %86 = load %struct.Node*, %struct.Node** %12, align 8
  %87 = load %struct.Node*, %struct.Node** %8, align 8
  %88 = icmp ne %struct.Node* %86, %87
  br i1 %88, label %89, label %154

; <label>:89:                                     ; preds = %80
  br label %90

; <label>:90:                                     ; preds = %101, %89
  %91 = load %struct.Node*, %struct.Node** %12, align 8
  %92 = load %struct.Node*, %struct.Node** %12, align 8
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %92, i32 0, i32 1
  %94 = bitcast %union.TKey* %93 to %struct.anon*
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Node, %struct.Node* %91, i64 %97
  %99 = load %struct.Node*, %struct.Node** %8, align 8
  %100 = icmp ne %struct.Node* %98, %99
  br i1 %100, label %101, label %110

; <label>:101:                                    ; preds = %90
  %102 = load %struct.Node*, %struct.Node** %12, align 8
  %103 = getelementptr inbounds %struct.Node, %struct.Node* %102, i32 0, i32 1
  %104 = bitcast %union.TKey* %103 to %struct.anon*
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.Node*, %struct.Node** %12, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds %struct.Node, %struct.Node* %107, i64 %108
  store %struct.Node* %109, %struct.Node** %12, align 8
  br label %90

; <label>:110:                                    ; preds = %90
  %111 = load %struct.Node*, %struct.Node** %13, align 8
  %112 = load %struct.Node*, %struct.Node** %12, align 8
  %113 = ptrtoint %struct.Node* %111 to i64
  %114 = ptrtoint %struct.Node* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 32
  %117 = trunc i64 %116 to i32
  %118 = load %struct.Node*, %struct.Node** %12, align 8
  %119 = getelementptr inbounds %struct.Node, %struct.Node* %118, i32 0, i32 1
  %120 = bitcast %union.TKey* %119 to %struct.anon*
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 2
  store i32 %117, i32* %121, align 4
  %122 = load %struct.Node*, %struct.Node** %13, align 8
  %123 = load %struct.Node*, %struct.Node** %8, align 8
  %124 = bitcast %struct.Node* %122 to i8*
  %125 = bitcast %struct.Node* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 32, i32 8, i1 false)
  %126 = load %struct.Node*, %struct.Node** %8, align 8
  %127 = getelementptr inbounds %struct.Node, %struct.Node* %126, i32 0, i32 1
  %128 = bitcast %union.TKey* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

; <label>:132:                                    ; preds = %110
  %133 = load %struct.Node*, %struct.Node** %8, align 8
  %134 = load %struct.Node*, %struct.Node** %13, align 8
  %135 = ptrtoint %struct.Node* %133 to i64
  %136 = ptrtoint %struct.Node* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 32
  %139 = trunc i64 %138 to i32
  %140 = load %struct.Node*, %struct.Node** %13, align 8
  %141 = getelementptr inbounds %struct.Node, %struct.Node* %140, i32 0, i32 1
  %142 = bitcast %union.TKey* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load %struct.Node*, %struct.Node** %8, align 8
  %147 = getelementptr inbounds %struct.Node, %struct.Node* %146, i32 0, i32 1
  %148 = bitcast %union.TKey* %147 to %struct.anon*
  %149 = getelementptr inbounds %struct.anon, %struct.anon* %148, i32 0, i32 2
  store i32 0, i32* %149, align 4
  br label %150

; <label>:150:                                    ; preds = %132, %110
  %151 = load %struct.Node*, %struct.Node** %8, align 8
  %152 = getelementptr inbounds %struct.Node, %struct.Node* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i32 0, i32 1
  store i32 0, i32* %153, align 8
  br label %194

; <label>:154:                                    ; preds = %80
  %155 = load %struct.Node*, %struct.Node** %8, align 8
  %156 = getelementptr inbounds %struct.Node, %struct.Node* %155, i32 0, i32 1
  %157 = bitcast %union.TKey* %156 to %struct.anon*
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %180

; <label>:161:                                    ; preds = %154
  %162 = load %struct.Node*, %struct.Node** %8, align 8
  %163 = load %struct.Node*, %struct.Node** %8, align 8
  %164 = getelementptr inbounds %struct.Node, %struct.Node* %163, i32 0, i32 1
  %165 = bitcast %union.TKey* %164 to %struct.anon*
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Node, %struct.Node* %162, i64 %168
  %170 = load %struct.Node*, %struct.Node** %13, align 8
  %171 = ptrtoint %struct.Node* %169 to i64
  %172 = ptrtoint %struct.Node* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 32
  %175 = trunc i64 %174 to i32
  %176 = load %struct.Node*, %struct.Node** %13, align 8
  %177 = getelementptr inbounds %struct.Node, %struct.Node* %176, i32 0, i32 1
  %178 = bitcast %union.TKey* %177 to %struct.anon*
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 2
  store i32 %175, i32* %179, align 4
  br label %181

; <label>:180:                                    ; preds = %154
  br label %181

; <label>:181:                                    ; preds = %180, %161
  %182 = load %struct.Node*, %struct.Node** %13, align 8
  %183 = load %struct.Node*, %struct.Node** %8, align 8
  %184 = ptrtoint %struct.Node* %182 to i64
  %185 = ptrtoint %struct.Node* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 32
  %188 = trunc i64 %187 to i32
  %189 = load %struct.Node*, %struct.Node** %8, align 8
  %190 = getelementptr inbounds %struct.Node, %struct.Node* %189, i32 0, i32 1
  %191 = bitcast %union.TKey* %190 to %struct.anon*
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 4
  %193 = load %struct.Node*, %struct.Node** %13, align 8
  store %struct.Node* %193, %struct.Node** %8, align 8
  br label %194

; <label>:194:                                    ; preds = %181, %150
  br label %195

; <label>:195:                                    ; preds = %194, %62
  %196 = load %struct.Node*, %struct.Node** %8, align 8
  %197 = getelementptr inbounds %struct.Node, %struct.Node* %196, i32 0, i32 1
  store %union.TKey* %197, %union.TKey** %14, align 8
  %198 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %198, %struct.lua_TValue** %15, align 8
  %199 = load %union.TKey*, %union.TKey** %14, align 8
  %200 = bitcast %union.TKey* %199 to %struct.anon*
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %200, i32 0, i32 0
  %202 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %203 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %202, i32 0, i32 0
  %204 = bitcast %union.Value* %201 to i8*
  %205 = bitcast %union.Value* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 8, i32 8, i1 false)
  %206 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %207 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %union.TKey*, %union.TKey** %14, align 8
  %210 = bitcast %union.TKey* %209 to %struct.anon*
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 8
  %212 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %213 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %214 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, 64
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

; <label>:218:                                    ; preds = %195
  %219 = load %struct.Table*, %struct.Table** %6, align 8
  %220 = getelementptr inbounds %struct.Table, %struct.Table* %219, i32 0, i32 2
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = and i32 %222, 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %238

; <label>:225:                                    ; preds = %218
  %226 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %226, i32 0, i32 0
  %228 = bitcast %union.Value* %227 to %struct.GCObject**
  %229 = load %struct.GCObject*, %struct.GCObject** %228, align 8
  %230 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %229, i32 0, i32 2
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %232, 3
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

; <label>:235:                                    ; preds = %225
  %236 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %237 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaC_barrierback_(%struct.lua_State* %236, %struct.Table* %237)
  br label %239

; <label>:238:                                    ; preds = %225, %218, %195
  br label %239

; <label>:239:                                    ; preds = %238, %235
  %240 = load %struct.Node*, %struct.Node** %8, align 8
  %241 = getelementptr inbounds %struct.Node, %struct.Node* %240, i32 0, i32 0
  store %struct.lua_TValue* %241, %struct.lua_TValue** %4, align 8
  br label %242

; <label>:242:                                    ; preds = %239, %72
  %243 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  ret %struct.lua_TValue* %243
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #3

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Node* @mainposition(%struct.Table*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 63
  switch i32 %9, label %148 [
    i32 19, label %10
    i32 3, label %29
    i32 4, label %48
    i32 20, label %69
    i32 1, label %89
    i32 2, label %106
    i32 22, label %127
  ]

; <label>:10:                                     ; preds = %2
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %struct.Node*, %struct.Node** %12, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Table*, %struct.Table** %4, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = and i64 %17, %24
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %13, i64 %27
  store %struct.Node* %28, %struct.Node** %3, align 8
  br label %169

; <label>:29:                                     ; preds = %2
  %30 = load %struct.Table*, %struct.Table** %4, align 8
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 7
  %32 = load %struct.Node*, %struct.Node** %31, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to double*
  %36 = load double, double* %35, align 8
  %37 = call i32 @l_hashfloat(double %36)
  %38 = load %struct.Table*, %struct.Table** %4, align 8
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = or i32 %43, 1
  %45 = srem i32 %37, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %46
  store %struct.Node* %47, %struct.Node** %3, align 8
  br label %169

; <label>:48:                                     ; preds = %2
  %49 = load %struct.Table*, %struct.Table** %4, align 8
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %49, i32 0, i32 7
  %51 = load %struct.Node*, %struct.Node** %50, align 8
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.TString*
  %58 = getelementptr inbounds %struct.TString, %struct.TString* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.Table*, %struct.Table** %4, align 8
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %60, i32 0, i32 4
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %59, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 %67
  store %struct.Node* %68, %struct.Node** %3, align 8
  br label %169

; <label>:69:                                     ; preds = %2
  %70 = load %struct.Table*, %struct.Table** %4, align 8
  %71 = getelementptr inbounds %struct.Table, %struct.Table* %70, i32 0, i32 7
  %72 = load %struct.Node*, %struct.Node** %71, align 8
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %74 to %struct.GCObject**
  %76 = load %struct.GCObject*, %struct.GCObject** %75, align 8
  %77 = bitcast %struct.GCObject* %76 to %union.GCUnion*
  %78 = bitcast %union.GCUnion* %77 to %struct.TString*
  %79 = call i32 @luaS_hashlongstr(%struct.TString* %78)
  %80 = load %struct.Table*, %struct.Table** %4, align 8
  %81 = getelementptr inbounds %struct.Table, %struct.Table* %80, i32 0, i32 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %79, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Node, %struct.Node* %72, i64 %87
  store %struct.Node* %88, %struct.Node** %3, align 8
  br label %169

; <label>:89:                                     ; preds = %2
  %90 = load %struct.Table*, %struct.Table** %4, align 8
  %91 = getelementptr inbounds %struct.Table, %struct.Table* %90, i32 0, i32 7
  %92 = load %struct.Node*, %struct.Node** %91, align 8
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to i32*
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.Table*, %struct.Table** %4, align 8
  %98 = getelementptr inbounds %struct.Table, %struct.Table* %97, i32 0, i32 4
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  %103 = and i32 %96, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Node, %struct.Node* %92, i64 %104
  store %struct.Node* %105, %struct.Node** %3, align 8
  br label %169

; <label>:106:                                    ; preds = %2
  %107 = load %struct.Table*, %struct.Table** %4, align 8
  %108 = getelementptr inbounds %struct.Table, %struct.Table* %107, i32 0, i32 7
  %109 = load %struct.Node*, %struct.Node** %108, align 8
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i32 0, i32 0
  %112 = bitcast %union.Value* %111 to i8**
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = and i64 %114, 4294967295
  %116 = trunc i64 %115 to i32
  %117 = load %struct.Table*, %struct.Table** %4, align 8
  %118 = getelementptr inbounds %struct.Table, %struct.Table* %117, i32 0, i32 4
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 1, %120
  %122 = sub nsw i32 %121, 1
  %123 = or i32 %122, 1
  %124 = urem i32 %116, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 %125
  store %struct.Node* %126, %struct.Node** %3, align 8
  br label %169

; <label>:127:                                    ; preds = %2
  %128 = load %struct.Table*, %struct.Table** %4, align 8
  %129 = getelementptr inbounds %struct.Table, %struct.Table* %128, i32 0, i32 7
  %130 = load %struct.Node*, %struct.Node** %129, align 8
  %131 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i32 0, i32 0
  %133 = bitcast %union.Value* %132 to i32 (%struct.lua_State*)**
  %134 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %133, align 8
  %135 = ptrtoint i32 (%struct.lua_State*)* %134 to i64
  %136 = and i64 %135, 4294967295
  %137 = trunc i64 %136 to i32
  %138 = load %struct.Table*, %struct.Table** %4, align 8
  %139 = getelementptr inbounds %struct.Table, %struct.Table* %138, i32 0, i32 4
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = or i32 %143, 1
  %145 = urem i32 %137, %144
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Node, %struct.Node* %130, i64 %146
  store %struct.Node* %147, %struct.Node** %3, align 8
  br label %169

; <label>:148:                                    ; preds = %2
  %149 = load %struct.Table*, %struct.Table** %4, align 8
  %150 = getelementptr inbounds %struct.Table, %struct.Table* %149, i32 0, i32 7
  %151 = load %struct.Node*, %struct.Node** %150, align 8
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i32 0, i32 0
  %154 = bitcast %union.Value* %153 to %struct.GCObject**
  %155 = load %struct.GCObject*, %struct.GCObject** %154, align 8
  %156 = ptrtoint %struct.GCObject* %155 to i64
  %157 = and i64 %156, 4294967295
  %158 = trunc i64 %157 to i32
  %159 = load %struct.Table*, %struct.Table** %4, align 8
  %160 = getelementptr inbounds %struct.Table, %struct.Table* %159, i32 0, i32 4
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 1, %162
  %164 = sub nsw i32 %163, 1
  %165 = or i32 %164, 1
  %166 = urem i32 %158, %165
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.Node, %struct.Node* %151, i64 %167
  store %struct.Node* %168, %struct.Node** %3, align 8
  br label %169

; <label>:169:                                    ; preds = %148, %127, %106, %89, %69, %48, %29, %10
  %170 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Node* @getfreepos(%struct.Table*) #0 {
  %2 = alloca %struct.Node*, align 8
  %3 = alloca %struct.Table*, align 8
  store %struct.Table* %0, %struct.Table** %3, align 8
  %4 = load %struct.Table*, %struct.Table** %3, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 8
  %6 = load %struct.Node*, %struct.Node** %5, align 8
  %7 = icmp eq %struct.Node* %6, null
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %1
  br label %9

; <label>:9:                                      ; preds = %34, %8
  %10 = load %struct.Table*, %struct.Table** %3, align 8
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 8
  %12 = load %struct.Node*, %struct.Node** %11, align 8
  %13 = load %struct.Table*, %struct.Table** %3, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 7
  %15 = load %struct.Node*, %struct.Node** %14, align 8
  %16 = icmp ugt %struct.Node* %12, %15
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %9
  %18 = load %struct.Table*, %struct.Table** %3, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 8
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 -1
  store %struct.Node* %21, %struct.Node** %19, align 8
  %22 = load %struct.Table*, %struct.Table** %3, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 8
  %24 = load %struct.Node*, %struct.Node** %23, align 8
  %25 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 1
  %26 = bitcast %union.TKey* %25 to %struct.lua_TValue*
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Table*, %struct.Table** %3, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 8
  %33 = load %struct.Node*, %struct.Node** %32, align 8
  store %struct.Node* %33, %struct.Node** %2, align 8
  br label %37

; <label>:34:                                     ; preds = %17
  br label %9

; <label>:35:                                     ; preds = %9
  br label %36

; <label>:36:                                     ; preds = %35, %1
  store %struct.Node* null, %struct.Node** %2, align 8
  br label %37

; <label>:37:                                     ; preds = %36, %30
  %38 = load %struct.Node*, %struct.Node** %2, align 8
  ret %struct.Node* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Table* %1, %struct.Table** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
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
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %25 = call i32 @numusearray(%struct.Table* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.Table*, %struct.Table** %5, align 8
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %29 = call i32 @numusehash(%struct.Table* %27, i32* %28, i32* %8)
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %34 = call i32 @countint(%struct.lua_TValue* %32, i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i32 0, i32 0
  %40 = call i32 @computesizes(i32* %39, i32* %8)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = load %struct.Table*, %struct.Table** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %44, %45
  call void @luaH_resize(%struct.lua_State* %41, %struct.Table* %42, i32 %43, i32 %46)
  ret void
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_getint(%struct.Table*, i64) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Node*, align 8
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
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %19, 1
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %20
  store %struct.lua_TValue* %21, %struct.lua_TValue** %3, align 8
  br label %73

; <label>:22:                                     ; preds = %2
  %23 = load %struct.Table*, %struct.Table** %4, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 7
  %25 = load %struct.Node*, %struct.Node** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.Table*, %struct.Table** %4, align 8
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %27, i32 0, i32 4
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = and i64 %26, %33
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 %36
  store %struct.Node* %37, %struct.Node** %6, align 8
  br label %38

; <label>:38:                                     ; preds = %71, %22
  %39 = load %struct.Node*, %struct.Node** %6, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 1
  %41 = bitcast %union.TKey* %40 to %struct.lua_TValue*
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 19
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %38
  %46 = load %struct.Node*, %struct.Node** %6, align 8
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %46, i32 0, i32 1
  %48 = bitcast %union.TKey* %47 to %struct.lua_TValue*
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %45
  %55 = load %struct.Node*, %struct.Node** %6, align 8
  %56 = getelementptr inbounds %struct.Node, %struct.Node* %55, i32 0, i32 0
  store %struct.lua_TValue* %56, %struct.lua_TValue** %3, align 8
  br label %73

; <label>:57:                                     ; preds = %45, %38
  %58 = load %struct.Node*, %struct.Node** %6, align 8
  %59 = getelementptr inbounds %struct.Node, %struct.Node* %58, i32 0, i32 1
  %60 = bitcast %union.TKey* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %57
  br label %72

; <label>:66:                                     ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.Node*, %struct.Node** %6, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.Node, %struct.Node* %68, i64 %69
  store %struct.Node* %70, %struct.Node** %6, align 8
  br label %71

; <label>:71:                                     ; preds = %66
  br label %38

; <label>:72:                                     ; preds = %65
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %73

; <label>:73:                                     ; preds = %72, %54, %15
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %74
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %9 = load %struct.Table*, %struct.Table** %4, align 8
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 7
  %11 = load %struct.Node*, %struct.Node** %10, align 8
  %12 = load %struct.TString*, %struct.TString** %5, align 8
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %14, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %22
  store %struct.Node* %23, %struct.Node** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %58, %2
  %25 = load %struct.Node*, %struct.Node** %6, align 8
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i32 0, i32 1
  %27 = bitcast %union.TKey* %26 to %struct.lua_TValue*
  store %struct.lua_TValue* %27, %struct.lua_TValue** %7, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 68
  br i1 %31, label %32, label %44

; <label>:32:                                     ; preds = %24
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to %struct.GCObject**
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8
  %37 = bitcast %struct.GCObject* %36 to %union.GCUnion*
  %38 = bitcast %union.GCUnion* %37 to %struct.TString*
  %39 = load %struct.TString*, %struct.TString** %5, align 8
  %40 = icmp eq %struct.TString* %38, %39
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %32
  %42 = load %struct.Node*, %struct.Node** %6, align 8
  %43 = getelementptr inbounds %struct.Node, %struct.Node* %42, i32 0, i32 0
  store %struct.lua_TValue* %43, %struct.lua_TValue** %3, align 8
  br label %59

; <label>:44:                                     ; preds = %32, %24
  %45 = load %struct.Node*, %struct.Node** %6, align 8
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %45, i32 0, i32 1
  %47 = bitcast %union.TKey* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %44
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %59

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.Node*, %struct.Node** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %55, i64 %56
  store %struct.Node* %57, %struct.Node** %6, align 8
  br label %58

; <label>:58:                                     ; preds = %53
  br label %24

; <label>:59:                                     ; preds = %52, %41
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %60
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %9 = load %struct.TString*, %struct.TString** %5, align 8
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %2
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = load %struct.TString*, %struct.TString** %5, align 8
  %17 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %15, %struct.TString* %16)
  store %struct.lua_TValue* %17, %struct.lua_TValue** %3, align 8
  br label %35

; <label>:18:                                     ; preds = %2
  store %struct.lua_TValue* %6, %struct.lua_TValue** %7, align 8
  %19 = load %struct.TString*, %struct.TString** %5, align 8
  store %struct.TString* %19, %struct.TString** %8, align 8
  %20 = load %struct.TString*, %struct.TString** %8, align 8
  %21 = bitcast %struct.TString* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  store %struct.GCObject* %22, %struct.GCObject** %25, align 8
  %26 = load %struct.TString*, %struct.TString** %8, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, 64
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.Table*, %struct.Table** %4, align 8
  %34 = call %struct.lua_TValue* @getgeneric(%struct.Table* %33, %struct.lua_TValue* %6)
  store %struct.lua_TValue* %34, %struct.lua_TValue** %3, align 8
  br label %35

; <label>:35:                                     ; preds = %18, %14
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_TValue* @getgeneric(%struct.Table*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = call %struct.Node* @mainposition(%struct.Table* %8, %struct.lua_TValue* %9)
  store %struct.Node* %10, %struct.Node** %6, align 8
  br label %11

; <label>:11:                                     ; preds = %35, %2
  %12 = load %struct.Node*, %struct.Node** %6, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  %14 = bitcast %union.TKey* %13 to %struct.lua_TValue*
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %14, %struct.lua_TValue* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %11
  %19 = load %struct.Node*, %struct.Node** %6, align 8
  %20 = getelementptr inbounds %struct.Node, %struct.Node* %19, i32 0, i32 0
  store %struct.lua_TValue* %20, %struct.lua_TValue** %3, align 8
  br label %36

; <label>:21:                                     ; preds = %11
  %22 = load %struct.Node*, %struct.Node** %6, align 8
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %22, i32 0, i32 1
  %24 = bitcast %union.TKey* %23 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %21
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %36

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.Node*, %struct.Node** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %33
  store %struct.Node* %34, %struct.Node** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %30
  br label %11

; <label>:36:                                     ; preds = %29, %18
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i64, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 63
  switch i32 %10, label %37 [
    i32 4, label %11
    i32 19, label %20
    i32 0, label %27
    i32 3, label %28
  ]

; <label>:11:                                     ; preds = %2
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.TString*
  %19 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %12, %struct.TString* %18)
  store %struct.lua_TValue* %19, %struct.lua_TValue** %3, align 8
  br label %41

; <label>:20:                                     ; preds = %2
  %21 = load %struct.Table*, %struct.Table** %4, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %21, i64 %25)
  store %struct.lua_TValue* %26, %struct.lua_TValue** %3, align 8
  br label %41

; <label>:27:                                     ; preds = %2
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %41

; <label>:28:                                     ; preds = %2
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %30 = call i32 @luaV_tointeger(%struct.lua_TValue* %29, i64* %6, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %28
  %33 = load %struct.Table*, %struct.Table** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %33, i64 %34)
  store %struct.lua_TValue* %35, %struct.lua_TValue** %3, align 8
  br label %41

; <label>:36:                                     ; preds = %28
  br label %37

; <label>:37:                                     ; preds = %2, %36
  %38 = load %struct.Table*, %struct.Table** %4, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %40 = call %struct.lua_TValue* @getgeneric(%struct.Table* %38, %struct.lua_TValue* %39)
  store %struct.lua_TValue* %40, %struct.lua_TValue** %3, align 8
  br label %41

; <label>:41:                                     ; preds = %37, %32, %27, %20, %11
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %42
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
  br i1 %11, label %12, label %52

; <label>:12:                                     ; preds = %1
  %13 = load %struct.Table*, %struct.Table** %3, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 6
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 %18
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %52

; <label>:23:                                     ; preds = %12
  store i32 0, i32* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %48, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %49

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %30, %31
  %33 = udiv i32 %32, 2
  store i32 %33, i32* %6, align 4
  %34 = load %struct.Table*, %struct.Table** %3, align 8
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %34, i32 0, i32 6
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 %39
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %29
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %4, align 4
  br label %48

; <label>:46:                                     ; preds = %29
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %5, align 4
  br label %48

; <label>:48:                                     ; preds = %46, %44
  br label %24

; <label>:49:                                     ; preds = %24
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %2, align 8
  br label %65

; <label>:52:                                     ; preds = %12, %1
  %53 = load %struct.Table*, %struct.Table** %3, align 8
  %54 = getelementptr inbounds %struct.Table, %struct.Table* %53, i32 0, i32 8
  %55 = load %struct.Node*, %struct.Node** %54, align 8
  %56 = icmp eq %struct.Node* %55, null
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %2, align 8
  br label %65

; <label>:60:                                     ; preds = %52
  %61 = load %struct.Table*, %struct.Table** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = call i64 @unbound_search(%struct.Table* %61, i64 %63)
  store i64 %64, i64* %2, align 8
  br label %65

; <label>:65:                                     ; preds = %60, %57, %49
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unbound_search(%struct.Table*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Table* %0, %struct.Table** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %5, align 8
  br label %11

; <label>:11:                                     ; preds = %38, %2
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %12, i64 %13)
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %41

; <label>:19:                                     ; preds = %11
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ugt i64 %21, 4611686018427387903
  br i1 %22, label %23, label %38

; <label>:23:                                     ; preds = %19
  store i64 1, i64* %6, align 8
  br label %24

; <label>:24:                                     ; preds = %32, %23
  %25 = load %struct.Table*, %struct.Table** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %25, i64 %26)
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %24

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %65

; <label>:38:                                     ; preds = %19
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %39, 2
  store i64 %40, i64* %5, align 8
  br label %11

; <label>:41:                                     ; preds = %11
  br label %42

; <label>:42:                                     ; preds = %62, %41
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %63

; <label>:47:                                     ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %48, %49
  %51 = udiv i64 %50, 2
  store i64 %51, i64* %7, align 8
  %52 = load %struct.Table*, %struct.Table** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %52, i64 %53)
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %47
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %5, align 8
  br label %62

; <label>:60:                                     ; preds = %47
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %6, align 8
  br label %62

; <label>:62:                                     ; preds = %60, %58
  br label %42

; <label>:63:                                     ; preds = %42
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %65

; <label>:65:                                     ; preds = %63, %35
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayindex(%struct.lua_TValue*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca i64, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %3, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 19
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 0, %14
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = icmp ule i64 %17, 2147483648
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %24

; <label>:22:                                     ; preds = %16, %9
  br label %23

; <label>:23:                                     ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

declare hidden i32 @luaO_ceillog2(i32) #2

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
define internal i32 @numusearray(%struct.Table*, i32*) #0 {
  %3 = alloca %struct.Table*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Table* %0, %struct.Table** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %64, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 31
  br i1 %13, label %14, label %69

; <label>:14:                                     ; preds = %11
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.Table*, %struct.Table** %3, align 8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %14
  %22 = load %struct.Table*, %struct.Table** %3, align 8
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %21
  br label %69

; <label>:29:                                     ; preds = %21
  br label %30

; <label>:30:                                     ; preds = %29, %14
  br label %31

; <label>:31:                                     ; preds = %50, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %53

; <label>:35:                                     ; preds = %31
  %36 = load %struct.Table*, %struct.Table** %3, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 6
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %41
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %35
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %31

; <label>:53:                                     ; preds = %31
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

; <label>:64:                                     ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul i32 %67, 2
  store i32 %68, i32* %6, align 4
  br label %11

; <label>:69:                                     ; preds = %28, %11
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numusehash(%struct.Table*, i32*, i32*) #0 {
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Node*, align 8
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

; <label>:16:                                     ; preds = %42, %3
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %43

; <label>:20:                                     ; preds = %16
  %21 = load %struct.Table*, %struct.Table** %4, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 7
  %23 = load %struct.Node*, %struct.Node** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 %25
  store %struct.Node* %26, %struct.Node** %10, align 8
  %27 = load %struct.Node*, %struct.Node** %10, align 8
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

; <label>:32:                                     ; preds = %20
  %33 = load %struct.Node*, %struct.Node** %10, align 8
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i32 0, i32 1
  %35 = bitcast %union.TKey* %34 to %struct.lua_TValue*
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @countint(%struct.lua_TValue* %35, i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

; <label>:42:                                     ; preds = %32, %20
  br label %16

; <label>:43:                                     ; preds = %16
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countint(%struct.lua_TValue*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %8 = call i32 @arrayindex(%struct.lua_TValue* %7)
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

; <label>:10:                                     ; preds = %45, %2
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
  br i1 %20, label %21, label %50

; <label>:21:                                     ; preds = %19
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = udiv i32 %37, 2
  %39 = icmp ugt i32 %36, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

; <label>:43:                                     ; preds = %40, %28
  br label %44

; <label>:44:                                     ; preds = %43, %21
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul i32 %48, 2
  store i32 %49, i32* %6, align 4
  br label %10

; <label>:50:                                     ; preds = %19
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

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
