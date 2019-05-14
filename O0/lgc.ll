; ModuleID = 'lgc.c'
source_filename = "lgc.c"
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
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i64, %union.Value }
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error in __gc metamethod (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %7, align 8
  %11 = load %struct.global_State*, %struct.global_State** %7, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 10
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %3
  %17 = load %struct.global_State*, %struct.global_State** %7, align 8
  %18 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  call void @reallymarkobject(%struct.global_State* %17, %struct.GCObject* %18)
  br label %36

; <label>:19:                                     ; preds = %3
  %20 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, -8
  %25 = load %struct.global_State*, %struct.global_State** %7, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 9
  %27 = load i8, i8* %26, align 4
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 3
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = or i32 %24, %31
  %33 = trunc i32 %32 to i8
  %34 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %35 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %34, i32 0, i32 2
  store i8 %33, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.global_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.Udata*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %133, %2
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 252
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 1
  %15 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  switch i32 %18, label %217 [
    i32 4, label %19
    i32 20, label %40
    i32 7, label %60
    i32 6, label %138
    i32 38, label %155
    i32 5, label %172
    i32 8, label %187
    i32 9, label %202
  ]

; <label>:19:                                     ; preds = %8
  %20 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.TString*
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i32 0, i32 4
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = add i64 24, %34
  %36 = load %struct.global_State*, %struct.global_State** %3, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %218

; <label>:40:                                     ; preds = %8
  %41 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 4
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %struct.TString*
  %50 = getelementptr inbounds %struct.TString, %struct.TString* %49, i32 0, i32 6
  %51 = bitcast %union.anon* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = mul i64 %53, 1
  %55 = add i64 24, %54
  %56 = load %struct.global_State*, %struct.global_State** %3, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %218

; <label>:60:                                     ; preds = %8
  %61 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %62 = bitcast %struct.GCObject* %61 to %union.GCUnion*
  %63 = bitcast %union.GCUnion* %62 to %struct.Udata*
  %64 = getelementptr inbounds %struct.Udata, %struct.Udata* %63, i32 0, i32 4
  %65 = load %struct.Table*, %struct.Table** %64, align 8
  %66 = icmp ne %struct.Table* %65, null
  br i1 %66, label %67, label %88

; <label>:67:                                     ; preds = %60
  %68 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*
  %70 = bitcast %union.GCUnion* %69 to %struct.Udata*
  %71 = getelementptr inbounds %struct.Udata, %struct.Udata* %70, i32 0, i32 4
  %72 = load %struct.Table*, %struct.Table** %71, align 8
  %73 = getelementptr inbounds %struct.Table, %struct.Table* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

; <label>:78:                                     ; preds = %67
  %79 = load %struct.global_State*, %struct.global_State** %3, align 8
  %80 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %81 = bitcast %struct.GCObject* %80 to %union.GCUnion*
  %82 = bitcast %union.GCUnion* %81 to %struct.Udata*
  %83 = getelementptr inbounds %struct.Udata, %struct.Udata* %82, i32 0, i32 4
  %84 = load %struct.Table*, %struct.Table** %83, align 8
  %85 = bitcast %struct.Table* %84 to %union.GCUnion*
  %86 = bitcast %union.GCUnion* %85 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %79, %struct.GCObject* %86)
  br label %87

; <label>:87:                                     ; preds = %78, %67
  br label %88

; <label>:88:                                     ; preds = %87, %60
  %89 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %90 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, 4
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 1
  %95 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %96 = bitcast %struct.GCObject* %95 to %union.GCUnion*
  %97 = bitcast %union.GCUnion* %96 to %struct.Udata*
  %98 = getelementptr inbounds %struct.Udata, %struct.Udata* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = add i64 40, %99
  %101 = load %struct.global_State*, %struct.global_State** %3, align 8
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %6, align 8
  %105 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %106 = bitcast %struct.GCObject* %105 to %union.GCUnion*
  %107 = bitcast %union.GCUnion* %106 to %struct.Udata*
  store %struct.Udata* %107, %struct.Udata** %7, align 8
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i32 0, i32 0
  %110 = load %struct.Udata*, %struct.Udata** %7, align 8
  %111 = getelementptr inbounds %struct.Udata, %struct.Udata* %110, i32 0, i32 6
  %112 = bitcast %union.Value* %109 to i8*
  %113 = bitcast %union.Value* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 8, i32 8, i1 false)
  %114 = load %struct.Udata*, %struct.Udata** %7, align 8
  %115 = getelementptr inbounds %struct.Udata, %struct.Udata* %114, i32 0, i32 3
  %116 = load i8, i8* %115, align 2
  %117 = zext i8 %116 to i32
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 64
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

; <label>:124:                                    ; preds = %88
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %126 = bitcast %union.Value* %125 to %struct.GCObject**
  %127 = load %struct.GCObject*, %struct.GCObject** %126, align 8
  %128 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %127, i32 0, i32 2
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 3
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %135 = bitcast %union.Value* %134 to %struct.GCObject**
  %136 = load %struct.GCObject*, %struct.GCObject** %135, align 8
  store %struct.GCObject* %136, %struct.GCObject** %4, align 8
  br label %8

; <label>:137:                                    ; preds = %124, %88
  br label %218

; <label>:138:                                    ; preds = %8
  %139 = load %struct.global_State*, %struct.global_State** %3, align 8
  %140 = getelementptr inbounds %struct.global_State, %struct.global_State* %139, i32 0, i32 16
  %141 = load %struct.GCObject*, %struct.GCObject** %140, align 8
  %142 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %143 = bitcast %struct.GCObject* %142 to %union.GCUnion*
  %144 = bitcast %union.GCUnion* %143 to %union.Closure*
  %145 = bitcast %union.Closure* %144 to %struct.LClosure*
  %146 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %145, i32 0, i32 4
  store %struct.GCObject* %141, %struct.GCObject** %146, align 8
  %147 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %148 = bitcast %struct.GCObject* %147 to %union.GCUnion*
  %149 = bitcast %union.GCUnion* %148 to %union.Closure*
  %150 = bitcast %union.Closure* %149 to %struct.LClosure*
  %151 = bitcast %struct.LClosure* %150 to %union.GCUnion*
  %152 = bitcast %union.GCUnion* %151 to %struct.GCObject*
  %153 = load %struct.global_State*, %struct.global_State** %3, align 8
  %154 = getelementptr inbounds %struct.global_State, %struct.global_State* %153, i32 0, i32 16
  store %struct.GCObject* %152, %struct.GCObject** %154, align 8
  br label %218

; <label>:155:                                    ; preds = %8
  %156 = load %struct.global_State*, %struct.global_State** %3, align 8
  %157 = getelementptr inbounds %struct.global_State, %struct.global_State* %156, i32 0, i32 16
  %158 = load %struct.GCObject*, %struct.GCObject** %157, align 8
  %159 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %160 = bitcast %struct.GCObject* %159 to %union.GCUnion*
  %161 = bitcast %union.GCUnion* %160 to %union.Closure*
  %162 = bitcast %union.Closure* %161 to %struct.CClosure*
  %163 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %162, i32 0, i32 4
  store %struct.GCObject* %158, %struct.GCObject** %163, align 8
  %164 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %165 = bitcast %struct.GCObject* %164 to %union.GCUnion*
  %166 = bitcast %union.GCUnion* %165 to %union.Closure*
  %167 = bitcast %union.Closure* %166 to %struct.CClosure*
  %168 = bitcast %struct.CClosure* %167 to %union.GCUnion*
  %169 = bitcast %union.GCUnion* %168 to %struct.GCObject*
  %170 = load %struct.global_State*, %struct.global_State** %3, align 8
  %171 = getelementptr inbounds %struct.global_State, %struct.global_State* %170, i32 0, i32 16
  store %struct.GCObject* %169, %struct.GCObject** %171, align 8
  br label %218

; <label>:172:                                    ; preds = %8
  %173 = load %struct.global_State*, %struct.global_State** %3, align 8
  %174 = getelementptr inbounds %struct.global_State, %struct.global_State* %173, i32 0, i32 16
  %175 = load %struct.GCObject*, %struct.GCObject** %174, align 8
  %176 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %177 = bitcast %struct.GCObject* %176 to %union.GCUnion*
  %178 = bitcast %union.GCUnion* %177 to %struct.Table*
  %179 = getelementptr inbounds %struct.Table, %struct.Table* %178, i32 0, i32 10
  store %struct.GCObject* %175, %struct.GCObject** %179, align 8
  %180 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %181 = bitcast %struct.GCObject* %180 to %union.GCUnion*
  %182 = bitcast %union.GCUnion* %181 to %struct.Table*
  %183 = bitcast %struct.Table* %182 to %union.GCUnion*
  %184 = bitcast %union.GCUnion* %183 to %struct.GCObject*
  %185 = load %struct.global_State*, %struct.global_State** %3, align 8
  %186 = getelementptr inbounds %struct.global_State, %struct.global_State* %185, i32 0, i32 16
  store %struct.GCObject* %184, %struct.GCObject** %186, align 8
  br label %218

; <label>:187:                                    ; preds = %8
  %188 = load %struct.global_State*, %struct.global_State** %3, align 8
  %189 = getelementptr inbounds %struct.global_State, %struct.global_State* %188, i32 0, i32 16
  %190 = load %struct.GCObject*, %struct.GCObject** %189, align 8
  %191 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %192 = bitcast %struct.GCObject* %191 to %union.GCUnion*
  %193 = bitcast %union.GCUnion* %192 to %struct.lua_State*
  %194 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %193, i32 0, i32 12
  store %struct.GCObject* %190, %struct.GCObject** %194, align 8
  %195 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %196 = bitcast %struct.GCObject* %195 to %union.GCUnion*
  %197 = bitcast %union.GCUnion* %196 to %struct.lua_State*
  %198 = bitcast %struct.lua_State* %197 to %union.GCUnion*
  %199 = bitcast %union.GCUnion* %198 to %struct.GCObject*
  %200 = load %struct.global_State*, %struct.global_State** %3, align 8
  %201 = getelementptr inbounds %struct.global_State, %struct.global_State* %200, i32 0, i32 16
  store %struct.GCObject* %199, %struct.GCObject** %201, align 8
  br label %218

; <label>:202:                                    ; preds = %8
  %203 = load %struct.global_State*, %struct.global_State** %3, align 8
  %204 = getelementptr inbounds %struct.global_State, %struct.global_State* %203, i32 0, i32 16
  %205 = load %struct.GCObject*, %struct.GCObject** %204, align 8
  %206 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %207 = bitcast %struct.GCObject* %206 to %union.GCUnion*
  %208 = bitcast %union.GCUnion* %207 to %struct.Proto*
  %209 = getelementptr inbounds %struct.Proto, %struct.Proto* %208, i32 0, i32 22
  store %struct.GCObject* %205, %struct.GCObject** %209, align 8
  %210 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %211 = bitcast %struct.GCObject* %210 to %union.GCUnion*
  %212 = bitcast %union.GCUnion* %211 to %struct.Proto*
  %213 = bitcast %struct.Proto* %212 to %union.GCUnion*
  %214 = bitcast %union.GCUnion* %213 to %struct.GCObject*
  %215 = load %struct.global_State*, %struct.global_State** %3, align 8
  %216 = getelementptr inbounds %struct.global_State, %struct.global_State* %215, i32 0, i32 16
  store %struct.GCObject* %214, %struct.GCObject** %216, align 8
  br label %218

; <label>:217:                                    ; preds = %8
  br label %218

; <label>:218:                                    ; preds = %217, %202, %187, %172, %155, %138, %137, %40, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load %struct.Table*, %struct.Table** %4, align 8
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 251
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 1
  %15 = load %struct.global_State*, %struct.global_State** %5, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 17
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = load %struct.Table*, %struct.Table** %4, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 10
  store %struct.GCObject* %17, %struct.GCObject** %19, align 8
  %20 = load %struct.Table*, %struct.Table** %4, align 8
  %21 = bitcast %struct.Table* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*
  %23 = load %struct.global_State*, %struct.global_State** %5, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 17
  store %struct.GCObject* %22, %struct.GCObject** %24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.UpVal*, align 8
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.UpVal* %1, %struct.UpVal** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %5, align 8
  %10 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %11 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %10, i32 0, i32 0
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  store %struct.GCObject* %15, %struct.GCObject** %6, align 8
  %16 = load %struct.global_State*, %struct.global_State** %5, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 10
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %2
  %22 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %23 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %21
  %29 = load %struct.global_State*, %struct.global_State** %5, align 8
  %30 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %29, %struct.GCObject* %32)
  br label %33

; <label>:33:                                     ; preds = %28, %21
  br label %34

; <label>:34:                                     ; preds = %33, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 252
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 1
  %15 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 0
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = load %struct.global_State*, %struct.global_State** %5, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 13
  store %struct.GCObject* %17, %struct.GCObject** %19, align 8
  %20 = load %struct.global_State*, %struct.global_State** %5, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 22
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %23, i32 0, i32 0
  store %struct.GCObject* %22, %struct.GCObject** %24, align 8
  %25 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %26 = load %struct.global_State*, %struct.global_State** %5, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 22
  store %struct.GCObject* %25, %struct.GCObject** %27, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  store %struct.global_State* %11, %struct.global_State** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* null, i64 %15, i64 %16)
  %18 = bitcast i8* %17 to %struct.GCObject*
  store %struct.GCObject* %18, %struct.GCObject** %8, align 8
  %19 = load %struct.global_State*, %struct.global_State** %7, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 9
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 3
  %24 = trunc i32 %23 to i8
  %25 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 2
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %29, i32 0, i32 1
  store i8 %28, i8* %30, align 8
  %31 = load %struct.global_State*, %struct.global_State** %7, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 13
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8
  %34 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %35 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %34, i32 0, i32 0
  store %struct.GCObject* %33, %struct.GCObject** %35, align 8
  %36 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %37 = load %struct.global_State*, %struct.global_State** %7, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 13
  store %struct.GCObject* %36, %struct.GCObject** %38, align 8
  %39 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  ret %struct.GCObject* %39
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_upvdeccount(%struct.lua_State*, %struct.UpVal*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.UpVal* %1, %struct.UpVal** %4, align 8
  %5 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %2
  %14 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %15 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i32 0, i32 0
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %17, i32 0, i32 2
  %19 = bitcast %union.anon.3* %18 to %struct.lua_TValue*
  %20 = icmp ne %struct.lua_TValue* %16, %19
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %13
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %24 = bitcast %struct.UpVal* %23 to i8*
  %25 = call i8* @luaM_realloc_(%struct.lua_State* %22, i8* %24, i64 32, i64 0)
  br label %26

; <label>:26:                                     ; preds = %21, %13, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca %struct.GCObject**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.Table* %2, %struct.Table** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  store %struct.global_State* %11, %struct.global_State** %7, align 8
  %12 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i32 0, i32 2
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

; <label>:18:                                     ; preds = %3
  %19 = load %struct.Table*, %struct.Table** %6, align 8
  %20 = icmp eq %struct.Table* %19, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  br label %39

; <label>:22:                                     ; preds = %18
  %23 = load %struct.Table*, %struct.Table** %6, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 2
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %37

; <label>:30:                                     ; preds = %22
  %31 = load %struct.Table*, %struct.Table** %6, align 8
  %32 = load %struct.global_State*, %struct.global_State** %7, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 31
  %34 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %33, i64 0, i64 2
  %35 = load %struct.TString*, %struct.TString** %34, align 8
  %36 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %31, i32 2, %struct.TString* %35)
  br label %37

; <label>:37:                                     ; preds = %30, %29
  %38 = phi %struct.lua_TValue* [ null, %29 ], [ %36, %30 ]
  br label %39

; <label>:39:                                     ; preds = %37, %21
  %40 = phi %struct.lua_TValue* [ null, %21 ], [ %38, %37 ]
  %41 = icmp eq %struct.lua_TValue* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39, %3
  br label %119

; <label>:43:                                     ; preds = %39
  %44 = load %struct.global_State*, %struct.global_State** %7, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 10
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 2, %47
  br i1 %48, label %49, label %87

; <label>:49:                                     ; preds = %43
  %50 = load %struct.global_State*, %struct.global_State** %7, align 8
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 10
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sle i32 %53, 5
  br i1 %54, label %55, label %87

; <label>:55:                                     ; preds = %49
  %56 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, -8
  %61 = load %struct.global_State*, %struct.global_State** %7, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 9
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 3
  %66 = trunc i32 %65 to i8
  %67 = zext i8 %66 to i32
  %68 = or i32 %60, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %71 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %70, i32 0, i32 2
  store i8 %69, i8* %71, align 1
  %72 = load %struct.global_State*, %struct.global_State** %7, align 8
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %72, i32 0, i32 14
  %74 = load %struct.GCObject**, %struct.GCObject*** %73, align 8
  %75 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %76 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %75, i32 0, i32 0
  %77 = icmp eq %struct.GCObject** %74, %76
  br i1 %77, label %78, label %86

; <label>:78:                                     ; preds = %55
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = load %struct.global_State*, %struct.global_State** %7, align 8
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %80, i32 0, i32 14
  %82 = load %struct.GCObject**, %struct.GCObject*** %81, align 8
  %83 = call %struct.GCObject** @sweeptolive(%struct.lua_State* %79, %struct.GCObject** %82)
  %84 = load %struct.global_State*, %struct.global_State** %7, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 14
  store %struct.GCObject** %83, %struct.GCObject*** %85, align 8
  br label %86

; <label>:86:                                     ; preds = %78, %55
  br label %87

; <label>:87:                                     ; preds = %86, %49, %43
  %88 = load %struct.global_State*, %struct.global_State** %7, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 13
  store %struct.GCObject** %89, %struct.GCObject*** %8, align 8
  br label %90

; <label>:90:                                     ; preds = %96, %87
  %91 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  %92 = load %struct.GCObject*, %struct.GCObject** %91, align 8
  %93 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %94 = icmp ne %struct.GCObject* %92, %93
  br i1 %94, label %95, label %100

; <label>:95:                                     ; preds = %90
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8
  %99 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %98, i32 0, i32 0
  store %struct.GCObject** %99, %struct.GCObject*** %8, align 8
  br label %90

; <label>:100:                                    ; preds = %90
  %101 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %102 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %101, i32 0, i32 0
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8
  %104 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  store %struct.GCObject* %103, %struct.GCObject** %104, align 8
  %105 = load %struct.global_State*, %struct.global_State** %7, align 8
  %106 = getelementptr inbounds %struct.global_State, %struct.global_State* %105, i32 0, i32 15
  %107 = load %struct.GCObject*, %struct.GCObject** %106, align 8
  %108 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %109 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %108, i32 0, i32 0
  store %struct.GCObject* %107, %struct.GCObject** %109, align 8
  %110 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %111 = load %struct.global_State*, %struct.global_State** %7, align 8
  %112 = getelementptr inbounds %struct.global_State, %struct.global_State* %111, i32 0, i32 15
  store %struct.GCObject* %110, %struct.GCObject** %112, align 8
  %113 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %114 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %113, i32 0, i32 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, 8
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 1
  br label %119

; <label>:119:                                    ; preds = %42, %100
  ret void
}

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @sweeptolive(%struct.lua_State*, %struct.GCObject**) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject**, align 8
  %5 = alloca %struct.GCObject**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject** %1, %struct.GCObject*** %4, align 8
  %6 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  store %struct.GCObject** %6, %struct.GCObject*** %5, align 8
  br label %7

; <label>:7:                                      ; preds = %11, %2
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %10 = call %struct.GCObject** @sweeplist(%struct.lua_State* %8, %struct.GCObject** %9, i64 1)
  store %struct.GCObject** %10, %struct.GCObject*** %4, align 8
  br label %11

; <label>:11:                                     ; preds = %7
  %12 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %13 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %14 = icmp eq %struct.GCObject** %12, %13
  br i1 %14, label %7, label %15

; <label>:15:                                     ; preds = %11
  %16 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  ret %struct.GCObject** %16
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @separatetobefnz(%struct.global_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @callallpendingfinalizers(%struct.lua_State* %8)
  %9 = load %struct.global_State*, %struct.global_State** %3, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 9
  store i8 3, i8* %10, align 4
  %11 = load %struct.global_State*, %struct.global_State** %3, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 11
  store i8 0, i8* %12, align 2
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load %struct.global_State*, %struct.global_State** %3, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 15
  %16 = call %struct.GCObject** @sweeplist(%struct.lua_State* %13, %struct.GCObject** %15, i64 -1)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = load %struct.global_State*, %struct.global_State** %3, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 13
  %20 = call %struct.GCObject** @sweeplist(%struct.lua_State* %17, %struct.GCObject** %19, i64 -1)
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load %struct.global_State*, %struct.global_State** %3, align 8
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 22
  %24 = call %struct.GCObject** @sweeplist(%struct.lua_State* %21, %struct.GCObject** %23, i64 -1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @separatetobefnz(%struct.global_State*, i32) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject**, align 8
  %7 = alloca %struct.GCObject**, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.global_State*, %struct.global_State** %3, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 15
  store %struct.GCObject** %9, %struct.GCObject*** %6, align 8
  %10 = load %struct.global_State*, %struct.global_State** %3, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 21
  %12 = call %struct.GCObject** @findlast(%struct.GCObject** %11)
  store %struct.GCObject** %12, %struct.GCObject*** %7, align 8
  br label %13

; <label>:13:                                     ; preds = %43, %2
  %14 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  store %struct.GCObject* %15, %struct.GCObject** %5, align 8
  %16 = icmp ne %struct.GCObject* %15, null
  br i1 %16, label %17, label %44

; <label>:17:                                     ; preds = %13
  %18 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %24
  %28 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i32 0, i32 0
  store %struct.GCObject** %29, %struct.GCObject*** %6, align 8
  br label %43

; <label>:30:                                     ; preds = %24, %17
  %31 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 0
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8
  %34 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  store %struct.GCObject* %33, %struct.GCObject** %34, align 8
  %35 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8
  %37 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %37, i32 0, i32 0
  store %struct.GCObject* %36, %struct.GCObject** %38, align 8
  %39 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %40 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  store %struct.GCObject* %39, %struct.GCObject** %40, align 8
  %41 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i32 0, i32 0
  store %struct.GCObject** %42, %struct.GCObject*** %7, align 8
  br label %43

; <label>:43:                                     ; preds = %30, %27
  br label %13

; <label>:44:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callallpendingfinalizers(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %12, %1
  %8 = load %struct.global_State*, %struct.global_State** %3, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 21
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %11 = icmp ne %struct.GCObject* %10, null
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %7
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @GCTM(%struct.lua_State* %13, i32 0)
  br label %7

; <label>:14:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @sweeplist(%struct.lua_State*, %struct.GCObject**, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.GCObject*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject** %1, %struct.GCObject*** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  store %struct.global_State* %14, %struct.global_State** %7, align 8
  %15 = load %struct.global_State*, %struct.global_State** %7, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 9
  %17 = load i8, i8* %16, align 4
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, 3
  store i32 %19, i32* %8, align 4
  %20 = load %struct.global_State*, %struct.global_State** %7, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 9
  %22 = load i8, i8* %21, align 4
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 3
  %25 = trunc i32 %24 to i8
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

; <label>:27:                                     ; preds = %66, %3
  %28 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = icmp ne %struct.GCObject* %29, null
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = icmp ugt i64 %32, 0
  br label %35

; <label>:35:                                     ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %67

; <label>:37:                                     ; preds = %35
  %38 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  store %struct.GCObject* %39, %struct.GCObject** %10, align 8
  %40 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = xor i32 %44, 3
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

; <label>:49:                                     ; preds = %37
  %50 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %51 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %50, i32 0, i32 0
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8
  %53 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  store %struct.GCObject* %52, %struct.GCObject** %53, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  call void @freeobj(%struct.lua_State* %54, %struct.GCObject* %55)
  br label %66

; <label>:56:                                     ; preds = %37
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, -8
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %58, %59
  %61 = trunc i32 %60 to i8
  %62 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %63 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %62, i32 0, i32 2
  store i8 %61, i8* %63, align 1
  %64 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %65 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %64, i32 0, i32 0
  store %struct.GCObject** %65, %struct.GCObject*** %5, align 8
  br label %66

; <label>:66:                                     ; preds = %56, %49
  br label %27

; <label>:67:                                     ; preds = %35
  %68 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %69 = load %struct.GCObject*, %struct.GCObject** %68, align 8
  %70 = icmp eq %struct.GCObject* %69, null
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %67
  br label %74

; <label>:72:                                     ; preds = %67
  %73 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  br label %74

; <label>:74:                                     ; preds = %72, %71
  %75 = phi %struct.GCObject** [ null, %71 ], [ %73, %72 ]
  ret %struct.GCObject** %75
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_runtilstate(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %19, %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.global_State*, %struct.global_State** %5, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 10
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %9
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i64 @singlestep(%struct.lua_State* %20)
  br label %9

; <label>:22:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @singlestep(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %4, align 8
  %10 = load %struct.global_State*, %struct.global_State** %4, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %120 [
    i32 7, label %14
    i32 0, label %29
    i32 1, label %44
    i32 2, label %59
    i32 3, label %65
    i32 4, label %71
    i32 5, label %75
    i32 6, label %100
  ]

; <label>:14:                                     ; preds = %1
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = load %struct.global_State*, %struct.global_State** %4, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @restartcollection(%struct.global_State* %23)
  %24 = load %struct.global_State*, %struct.global_State** %4, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 10
  store i8 0, i8* %25, align 1
  %26 = load %struct.global_State*, %struct.global_State** %4, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %121

; <label>:29:                                     ; preds = %1
  %30 = load %struct.global_State*, %struct.global_State** %4, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @propagatemark(%struct.global_State* %32)
  %33 = load %struct.global_State*, %struct.global_State** %4, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 16
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = icmp eq %struct.GCObject* %35, null
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %29
  %38 = load %struct.global_State*, %struct.global_State** %4, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 10
  store i8 1, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %37, %29
  %41 = load %struct.global_State*, %struct.global_State** %4, align 8
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %2, align 8
  br label %121

; <label>:44:                                     ; preds = %1
  %45 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @propagateall(%struct.global_State* %45)
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = call i64 @atomic(%struct.lua_State* %46)
  store i64 %47, i64* %5, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @entersweep(%struct.lua_State* %48)
  %49 = load %struct.global_State*, %struct.global_State** %4, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.global_State*, %struct.global_State** %4, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.global_State*, %struct.global_State** %4, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %121

; <label>:59:                                     ; preds = %1
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load %struct.global_State*, %struct.global_State** %4, align 8
  %62 = load %struct.global_State*, %struct.global_State** %4, align 8
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %62, i32 0, i32 15
  %64 = call i64 @sweepstep(%struct.lua_State* %60, %struct.global_State* %61, i32 3, %struct.GCObject** %63)
  store i64 %64, i64* %2, align 8
  br label %121

; <label>:65:                                     ; preds = %1
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %67 = load %struct.global_State*, %struct.global_State** %4, align 8
  %68 = load %struct.global_State*, %struct.global_State** %4, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 21
  %70 = call i64 @sweepstep(%struct.lua_State* %66, %struct.global_State* %67, i32 4, %struct.GCObject** %69)
  store i64 %70, i64* %2, align 8
  br label %121

; <label>:71:                                     ; preds = %1
  %72 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %73 = load %struct.global_State*, %struct.global_State** %4, align 8
  %74 = call i64 @sweepstep(%struct.lua_State* %72, %struct.global_State* %73, i32 5, %struct.GCObject** null)
  store i64 %74, i64* %2, align 8
  br label %121

; <label>:75:                                     ; preds = %1
  %76 = load %struct.global_State*, %struct.global_State** %4, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 28
  %78 = load %struct.lua_State*, %struct.lua_State** %77, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, -8
  %83 = load %struct.global_State*, %struct.global_State** %4, align 8
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %83, i32 0, i32 9
  %85 = load i8, i8* %84, align 4
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 3
  %88 = trunc i32 %87 to i8
  %89 = zext i8 %88 to i32
  %90 = or i32 %82, %89
  %91 = trunc i32 %90 to i8
  %92 = load %struct.global_State*, %struct.global_State** %4, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 28
  %94 = load %struct.lua_State*, %struct.lua_State** %93, align 8
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %94, i32 0, i32 2
  store i8 %91, i8* %95, align 1
  %96 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %97 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @checkSizes(%struct.lua_State* %96, %struct.global_State* %97)
  %98 = load %struct.global_State*, %struct.global_State** %4, align 8
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i32 0, i32 10
  store i8 6, i8* %99, align 1
  store i64 0, i64* %2, align 8
  br label %121

; <label>:100:                                    ; preds = %1
  %101 = load %struct.global_State*, %struct.global_State** %4, align 8
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i32 0, i32 21
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8
  %104 = icmp ne %struct.GCObject* %103, null
  br i1 %104, label %105, label %117

; <label>:105:                                    ; preds = %100
  %106 = load %struct.global_State*, %struct.global_State** %4, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 11
  %108 = load i8, i8* %107, align 2
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %117

; <label>:111:                                    ; preds = %105
  %112 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %113 = call i32 @runafewfinalizers(%struct.lua_State* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 7
  store i64 %116, i64* %2, align 8
  br label %121

; <label>:117:                                    ; preds = %105, %100
  %118 = load %struct.global_State*, %struct.global_State** %4, align 8
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %118, i32 0, i32 10
  store i8 7, i8* %119, align 1
  store i64 0, i64* %2, align 8
  br label %121

; <label>:120:                                    ; preds = %1
  store i64 0, i64* %2, align 8
  br label %121

; <label>:121:                                    ; preds = %120, %117, %111, %75, %71, %65, %59, %44, %40, %14
  %122 = load i64, i64* %2, align 8
  ret i64 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_step(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %3, align 8
  %9 = load %struct.global_State*, %struct.global_State** %3, align 8
  %10 = call i64 @getdebt(%struct.global_State* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.global_State*, %struct.global_State** %3, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 12
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %1
  %16 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @luaE_setdebt(%struct.global_State* %16, i64 -24000)
  br label %55

; <label>:17:                                     ; preds = %1
  br label %18

; <label>:18:                                     ; preds = %33, %17
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i64 @singlestep(%struct.lua_State* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %24

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %25, -2400
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %24
  %28 = load %struct.global_State*, %struct.global_State** %3, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 10
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 7
  br label %33

; <label>:33:                                     ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %18, label %35

; <label>:35:                                     ; preds = %33
  %36 = load %struct.global_State*, %struct.global_State** %3, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 10
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %35
  %42 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @setpause(%struct.global_State* %42)
  br label %55

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.global_State*, %struct.global_State** %3, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 26
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sdiv i64 %44, %48
  %50 = mul nsw i64 %49, 200
  store i64 %50, i64* %4, align 8
  %51 = load %struct.global_State*, %struct.global_State** %3, align 8
  %52 = load i64, i64* %4, align 8
  call void @luaE_setdebt(%struct.global_State* %51, i64 %52)
  %53 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %54 = call i32 @runafewfinalizers(%struct.lua_State* %53)
  br label %55

; <label>:55:                                     ; preds = %15, %43, %41
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getdebt(%struct.global_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  %6 = load %struct.global_State*, %struct.global_State** %3, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.global_State*, %struct.global_State** %3, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 26
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i64 0, i64* %2, align 8
  br label %33

; <label>:15:                                     ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = sdiv i64 %16, 200
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = sdiv i64 9223372036854775807, %21
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %25, %27
  br label %30

; <label>:29:                                     ; preds = %15
  br label %30

; <label>:30:                                     ; preds = %29, %24
  %31 = phi i64 [ %28, %24 ], [ 9223372036854775807, %29 ]
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %14
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setpause(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %6 = load %struct.global_State*, %struct.global_State** %2, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = udiv i64 %8, 100
  store i64 %9, i64* %5, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 25
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = sdiv i64 9223372036854775807, %14
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.global_State*, %struct.global_State** %2, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 25
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %18, %22
  br label %25

; <label>:24:                                     ; preds = %1
  br label %25

; <label>:25:                                     ; preds = %24, %17
  %26 = phi i64 [ %23, %17 ], [ 9223372036854775807, %24 ]
  store i64 %26, i64* %3, align 8
  %27 = load %struct.global_State*, %struct.global_State** %2, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.global_State*, %struct.global_State** %2, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* %3, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %4, align 8
  %36 = load %struct.global_State*, %struct.global_State** %2, align 8
  %37 = load i64, i64* %4, align 8
  call void @luaE_setdebt(%struct.global_State* %36, i64 %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runafewfinalizers(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8
  store %struct.global_State* %7, %struct.global_State** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %1
  %9 = load %struct.global_State*, %struct.global_State** %3, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 21
  %11 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %12 = icmp ne %struct.GCObject* %11, null
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.global_State*, %struct.global_State** %3, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 24
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br label %19

; <label>:19:                                     ; preds = %13, %8
  %20 = phi i1 [ false, %8 ], [ %18, %13 ]
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %19
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @GCTM(%struct.lua_State* %22, i32 1)
  br label %23

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

; <label>:26:                                     ; preds = %19
  %27 = load %struct.global_State*, %struct.global_State** %3, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 21
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = icmp ne %struct.GCObject* %29, null
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %26
  br label %37

; <label>:32:                                     ; preds = %26
  %33 = load %struct.global_State*, %struct.global_State** %3, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 24
  %35 = load i32, i32* %34, align 8
  %36 = mul i32 %35, 2
  br label %37

; <label>:37:                                     ; preds = %32, %31
  %38 = phi i32 [ 0, %31 ], [ %36, %32 ]
  %39 = load %struct.global_State*, %struct.global_State** %3, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 24
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct.global_State*, %struct.global_State** %5, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 11
  store i8 1, i8* %13, align 2
  br label %14

; <label>:14:                                     ; preds = %11, %2
  %15 = load %struct.global_State*, %struct.global_State** %5, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 10
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @entersweep(%struct.lua_State* %21)
  br label %22

; <label>:22:                                     ; preds = %20, %14
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %23, i32 128)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %24, i32 -129)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %25, i32 64)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %26, i32 128)
  %27 = load %struct.global_State*, %struct.global_State** %5, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 11
  store i8 0, i8* %28, align 2
  %29 = load %struct.global_State*, %struct.global_State** %5, align 8
  call void @setpause(%struct.global_State* %29)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entersweep(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %3, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 10
  store i8 2, i8* %8, align 1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load %struct.global_State*, %struct.global_State** %3, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 13
  %12 = call %struct.GCObject** @sweeplist(%struct.lua_State* %9, %struct.GCObject** %11, i64 1)
  %13 = load %struct.global_State*, %struct.global_State** %3, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 14
  store %struct.GCObject** %12, %struct.GCObject*** %14, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @findlast(%struct.GCObject**) #0 {
  %2 = alloca %struct.GCObject**, align 8
  store %struct.GCObject** %0, %struct.GCObject*** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %6 = icmp ne %struct.GCObject* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 0
  store %struct.GCObject** %10, %struct.GCObject*** %2, align 8
  br label %3

; <label>:11:                                     ; preds = %3
  %12 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  ret %struct.GCObject** %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GCTM(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.GCObject*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca %struct.lua_TValue*, align 8
  %15 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8
  store %struct.global_State* %18, %struct.global_State** %5, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %8, align 8
  %19 = load %struct.global_State*, %struct.global_State** %5, align 8
  %20 = call %struct.GCObject* @udata2finalize(%struct.global_State* %19)
  store %struct.GCObject* %20, %struct.GCObject** %9, align 8
  %21 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  store %struct.GCObject* %21, %struct.GCObject** %24, align 8
  %25 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 64
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %32, %struct.lua_TValue* %7, i32 2)
  store %struct.lua_TValue* %33, %struct.lua_TValue** %6, align 8
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %35 = icmp ne %struct.lua_TValue* %34, null
  br i1 %35, label %36, label %150

; <label>:36:                                     ; preds = %2
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %150

; <label>:42:                                     ; preds = %36
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 24
  %45 = load i8, i8* %44, align 4
  store i8 %45, i8* %11, align 1
  %46 = load %struct.global_State*, %struct.global_State** %5, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 12
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 24
  store i8 0, i8* %51, align 4
  %52 = load %struct.global_State*, %struct.global_State** %5, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 12
  store i8 0, i8* %53, align 1
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 5
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  store %struct.lua_TValue* %56, %struct.lua_TValue** %13, align 8
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %59 = bitcast %struct.lua_TValue* %57 to i8*
  %60 = bitcast %struct.lua_TValue* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 5
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 1
  store %struct.lua_TValue* %65, %struct.lua_TValue** %14, align 8
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %67 = bitcast %struct.lua_TValue* %66 to i8*
  %68 = bitcast %struct.lua_TValue* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 16, i32 8, i1 false)
  %69 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 5
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 2
  store %struct.lua_TValue* %73, %struct.lua_TValue** %71, align 8
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 7
  %76 = load %struct.CallInfo*, %struct.CallInfo** %75, align 8
  %77 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i32 0, i32 7
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, 256
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %77, align 2
  %82 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %83 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 5
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 -2
  %87 = bitcast %struct.lua_TValue* %86 to i8*
  %88 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 10
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %91 = bitcast %struct.lua_TValue* %90 to i8*
  %92 = ptrtoint i8* %87 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = call i32 @luaD_pcall(%struct.lua_State* %82, void (%struct.lua_State*, i8*)* @dothecall, i8* null, i64 %94, i64 0)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i32 0, i32 7
  %98 = load %struct.CallInfo*, %struct.CallInfo** %97, align 8
  %99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i32 0, i32 7
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, -257
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %99, align 2
  %104 = load i8, i8* %11, align 1
  %105 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %106 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %105, i32 0, i32 24
  store i8 %104, i8* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = trunc i32 %107 to i8
  %109 = load %struct.global_State*, %struct.global_State** %5, align 8
  %110 = getelementptr inbounds %struct.global_State, %struct.global_State* %109, i32 0, i32 12
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %149

; <label>:113:                                    ; preds = %42
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %146

; <label>:119:                                    ; preds = %116
  %120 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %121 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %120, i32 0, i32 5
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %121, align 8
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %122, i64 -1
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 15
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %140

; <label>:128:                                    ; preds = %119
  %129 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %130 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %129, i32 0, i32 5
  %131 = load %struct.lua_TValue*, %struct.lua_TValue** %130, align 8
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i64 -1
  %133 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i32 0, i32 0
  %134 = bitcast %union.Value* %133 to %struct.GCObject**
  %135 = load %struct.GCObject*, %struct.GCObject** %134, align 8
  %136 = bitcast %struct.GCObject* %135 to %union.GCUnion*
  %137 = bitcast %union.GCUnion* %136 to %struct.TString*
  %138 = bitcast %struct.TString* %137 to i8*
  %139 = getelementptr inbounds i8, i8* %138, i64 24
  br label %141

; <label>:140:                                    ; preds = %119
  br label %141

; <label>:141:                                    ; preds = %140, %128
  %142 = phi i8* [ %139, %128 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %140 ]
  store i8* %142, i8** %15, align 8
  %143 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %144)
  store i32 5, i32* %10, align 4
  br label %146

; <label>:146:                                    ; preds = %141, %116
  %147 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %148 = load i32, i32* %10, align 4
  call void @luaD_throw(%struct.lua_State* %147, i32 %148) #5
  unreachable

; <label>:149:                                    ; preds = %113, %42
  br label %150

; <label>:150:                                    ; preds = %149, %36, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject* @udata2finalize(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 21
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i32 0, i32 0
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 21
  store %struct.GCObject* %9, %struct.GCObject** %11, align 8
  %12 = load %struct.global_State*, %struct.global_State** %2, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 13
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 0
  store %struct.GCObject* %14, %struct.GCObject** %16, align 8
  %17 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %18 = load %struct.global_State*, %struct.global_State** %2, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 13
  store %struct.GCObject* %17, %struct.GCObject** %19, align 8
  %20 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 247
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load %struct.global_State*, %struct.global_State** %2, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 10
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 2, %29
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %1
  %32 = load %struct.global_State*, %struct.global_State** %2, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 10
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %37, label %54

; <label>:37:                                     ; preds = %31
  %38 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, -8
  %43 = load %struct.global_State*, %struct.global_State** %2, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 9
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 3
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = or i32 %42, %49
  %51 = trunc i32 %50 to i8
  %52 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i32 0, i32 2
  store i8 %51, i8* %53, align 1
  br label %54

; <label>:54:                                     ; preds = %37, %31, %1
  %55 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  ret %struct.GCObject* %55
}

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dothecall(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 5
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 -2
  call void @luaD_callnoyield(%struct.lua_State* %6, %struct.lua_TValue* %10, i32 0)
  ret void
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #3

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeobj(%struct.lua_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %6 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i32 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = zext i8 %7 to i32
  switch i32 %8, label %92 [
    i32 9, label %9
    i32 6, label %14
    i32 38, label %20
    i32 5, label %38
    i32 8, label %43
    i32 7, label %48
    i32 4, label %59
    i32 20, label %78
  ]

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %12 = bitcast %struct.GCObject* %11 to %union.GCUnion*
  %13 = bitcast %union.GCUnion* %12 to %struct.Proto*
  call void @luaF_freeproto(%struct.lua_State* %10, %struct.Proto* %13)
  br label %93

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %union.Closure*
  %19 = bitcast %union.Closure* %18 to %struct.LClosure*
  call void @freeLclosure(%struct.lua_State* %15, %struct.LClosure* %19)
  br label %93

; <label>:20:                                     ; preds = %2
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %23 = bitcast %struct.GCObject* %22 to i8*
  %24 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %union.Closure*
  %27 = bitcast %union.Closure* %26 to %struct.CClosure*
  %28 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %27, i32 0, i32 3
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 48, %34
  %36 = sext i32 %35 to i64
  %37 = call i8* @luaM_realloc_(%struct.lua_State* %21, i8* %23, i64 %36, i64 0)
  br label %93

; <label>:38:                                     ; preds = %2
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %41 = bitcast %struct.GCObject* %40 to %union.GCUnion*
  %42 = bitcast %union.GCUnion* %41 to %struct.Table*
  call void @luaH_free(%struct.lua_State* %39, %struct.Table* %42)
  br label %93

; <label>:43:                                     ; preds = %2
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.lua_State*
  call void @luaE_freethread(%struct.lua_State* %44, %struct.lua_State* %47)
  br label %93

; <label>:48:                                     ; preds = %2
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %51 = bitcast %struct.GCObject* %50 to i8*
  %52 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %53 = bitcast %struct.GCObject* %52 to %union.GCUnion*
  %54 = bitcast %union.GCUnion* %53 to %struct.Udata*
  %55 = getelementptr inbounds %struct.Udata, %struct.Udata* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = add i64 40, %56
  %58 = call i8* @luaM_realloc_(%struct.lua_State* %49, i8* %51, i64 %57, i64 0)
  br label %93

; <label>:59:                                     ; preds = %2
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %62 = bitcast %struct.GCObject* %61 to %union.GCUnion*
  %63 = bitcast %union.GCUnion* %62 to %struct.TString*
  call void @luaS_remove(%struct.lua_State* %60, %struct.TString* %63)
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %66 = bitcast %struct.GCObject* %65 to i8*
  %67 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*
  %69 = bitcast %union.GCUnion* %68 to %struct.TString*
  %70 = getelementptr inbounds %struct.TString, %struct.TString* %69, i32 0, i32 4
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = add i64 24, %75
  %77 = call i8* @luaM_realloc_(%struct.lua_State* %64, i8* %66, i64 %76, i64 0)
  br label %93

; <label>:78:                                     ; preds = %2
  %79 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %80 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %81 = bitcast %struct.GCObject* %80 to i8*
  %82 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %83 = bitcast %struct.GCObject* %82 to %union.GCUnion*
  %84 = bitcast %union.GCUnion* %83 to %struct.TString*
  %85 = getelementptr inbounds %struct.TString, %struct.TString* %84, i32 0, i32 6
  %86 = bitcast %union.anon* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  %89 = mul i64 %88, 1
  %90 = add i64 24, %89
  %91 = call i8* @luaM_realloc_(%struct.lua_State* %79, i8* %81, i64 %90, i64 0)
  br label %93

; <label>:92:                                     ; preds = %2
  br label %93

; <label>:93:                                     ; preds = %92, %78, %59, %48, %43, %38, %20, %14, %9
  ret void
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeLclosure(%struct.lua_State*, %struct.LClosure*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.LClosure* %1, %struct.LClosure** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %27, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %10 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %30

; <label>:14:                                     ; preds = %7
  %15 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i32 0, i32 6
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %16, i64 0, i64 %18
  %20 = load %struct.UpVal*, %struct.UpVal** %19, align 8
  store %struct.UpVal* %20, %struct.UpVal** %6, align 8
  %21 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %22 = icmp ne %struct.UpVal* %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %14
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  call void @luaC_upvdeccount(%struct.lua_State* %24, %struct.UpVal* %25)
  br label %26

; <label>:26:                                     ; preds = %23, %14
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7

; <label>:30:                                     ; preds = %7
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %33 = bitcast %struct.LClosure* %32 to i8*
  %34 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %35 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 2
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = add nsw i32 40, %41
  %43 = sext i32 %42 to i64
  %44 = call i8* @luaM_realloc_(%struct.lua_State* %31, i8* %33, i64 %43, i64 0)
  ret void
}

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #1

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) #1

declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restartcollection(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 17
  store %struct.GCObject* null, %struct.GCObject** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %2, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 16
  store %struct.GCObject* null, %struct.GCObject** %6, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 19
  store %struct.GCObject* null, %struct.GCObject** %8, align 8
  %9 = load %struct.global_State*, %struct.global_State** %2, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 20
  store %struct.GCObject* null, %struct.GCObject** %10, align 8
  %11 = load %struct.global_State*, %struct.global_State** %2, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 18
  store %struct.GCObject* null, %struct.GCObject** %12, align 8
  %13 = load %struct.global_State*, %struct.global_State** %2, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 28
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %1
  %22 = load %struct.global_State*, %struct.global_State** %2, align 8
  %23 = load %struct.global_State*, %struct.global_State** %2, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 28
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = bitcast %struct.lua_State* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %22, %struct.GCObject* %27)
  br label %28

; <label>:28:                                     ; preds = %21, %1
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

; <label>:35:                                     ; preds = %28
  %36 = load %struct.global_State*, %struct.global_State** %2, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to %struct.GCObject**
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %35
  %47 = load %struct.global_State*, %struct.global_State** %2, align 8
  %48 = load %struct.global_State*, %struct.global_State** %2, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 0
  %51 = bitcast %union.Value* %50 to %struct.GCObject**
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8
  call void @reallymarkobject(%struct.global_State* %47, %struct.GCObject* %52)
  br label %53

; <label>:53:                                     ; preds = %46, %35, %28
  %54 = load %struct.global_State*, %struct.global_State** %2, align 8
  call void @markmt(%struct.global_State* %54)
  %55 = load %struct.global_State*, %struct.global_State** %2, align 8
  call void @markbeingfnz(%struct.global_State* %55)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagatemark(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.LClosure*, align 8
  %7 = alloca %struct.CClosure*, align 8
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca %struct.Proto*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 16
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  store %struct.GCObject* %12, %struct.GCObject** %4, align 8
  %13 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %13, i32 0, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  switch i32 %22, label %102 [
    i32 5, label %23
    i32 6, label %35
    i32 38, label %48
    i32 8, label %61
    i32 9, label %89
  ]

; <label>:23:                                     ; preds = %1
  %24 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.Table*
  store %struct.Table* %26, %struct.Table** %5, align 8
  %27 = load %struct.Table*, %struct.Table** %5, align 8
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %27, i32 0, i32 10
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = load %struct.global_State*, %struct.global_State** %2, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 16
  store %struct.GCObject* %29, %struct.GCObject** %31, align 8
  %32 = load %struct.global_State*, %struct.global_State** %2, align 8
  %33 = load %struct.Table*, %struct.Table** %5, align 8
  %34 = call i64 @traversetable(%struct.global_State* %32, %struct.Table* %33)
  store i64 %34, i64* %3, align 8
  br label %103

; <label>:35:                                     ; preds = %1
  %36 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %37 = bitcast %struct.GCObject* %36 to %union.GCUnion*
  %38 = bitcast %union.GCUnion* %37 to %union.Closure*
  %39 = bitcast %union.Closure* %38 to %struct.LClosure*
  store %struct.LClosure* %39, %struct.LClosure** %6, align 8
  %40 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %41 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %40, i32 0, i32 4
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  %43 = load %struct.global_State*, %struct.global_State** %2, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 16
  store %struct.GCObject* %42, %struct.GCObject** %44, align 8
  %45 = load %struct.global_State*, %struct.global_State** %2, align 8
  %46 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %47 = call i64 @traverseLclosure(%struct.global_State* %45, %struct.LClosure* %46)
  store i64 %47, i64* %3, align 8
  br label %103

; <label>:48:                                     ; preds = %1
  %49 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %50 = bitcast %struct.GCObject* %49 to %union.GCUnion*
  %51 = bitcast %union.GCUnion* %50 to %union.Closure*
  %52 = bitcast %union.Closure* %51 to %struct.CClosure*
  store %struct.CClosure* %52, %struct.CClosure** %7, align 8
  %53 = load %struct.CClosure*, %struct.CClosure** %7, align 8
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %53, i32 0, i32 4
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = load %struct.global_State*, %struct.global_State** %2, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 16
  store %struct.GCObject* %55, %struct.GCObject** %57, align 8
  %58 = load %struct.global_State*, %struct.global_State** %2, align 8
  %59 = load %struct.CClosure*, %struct.CClosure** %7, align 8
  %60 = call i64 @traverseCclosure(%struct.global_State* %58, %struct.CClosure* %59)
  store i64 %60, i64* %3, align 8
  br label %103

; <label>:61:                                     ; preds = %1
  %62 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*
  %64 = bitcast %union.GCUnion* %63 to %struct.lua_State*
  store %struct.lua_State* %64, %struct.lua_State** %8, align 8
  %65 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 12
  %67 = load %struct.GCObject*, %struct.GCObject** %66, align 8
  %68 = load %struct.global_State*, %struct.global_State** %2, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 16
  store %struct.GCObject* %67, %struct.GCObject** %69, align 8
  %70 = load %struct.global_State*, %struct.global_State** %2, align 8
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i32 0, i32 17
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 12
  store %struct.GCObject* %72, %struct.GCObject** %74, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %76 = bitcast %struct.lua_State* %75 to %union.GCUnion*
  %77 = bitcast %union.GCUnion* %76 to %struct.GCObject*
  %78 = load %struct.global_State*, %struct.global_State** %2, align 8
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i32 0, i32 17
  store %struct.GCObject* %77, %struct.GCObject** %79, align 8
  %80 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %81 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 251
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  %86 = load %struct.global_State*, %struct.global_State** %2, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %88 = call i64 @traversethread(%struct.global_State* %86, %struct.lua_State* %87)
  store i64 %88, i64* %3, align 8
  br label %103

; <label>:89:                                     ; preds = %1
  %90 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %91 = bitcast %struct.GCObject* %90 to %union.GCUnion*
  %92 = bitcast %union.GCUnion* %91 to %struct.Proto*
  store %struct.Proto* %92, %struct.Proto** %9, align 8
  %93 = load %struct.Proto*, %struct.Proto** %9, align 8
  %94 = getelementptr inbounds %struct.Proto, %struct.Proto* %93, i32 0, i32 22
  %95 = load %struct.GCObject*, %struct.GCObject** %94, align 8
  %96 = load %struct.global_State*, %struct.global_State** %2, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 16
  store %struct.GCObject* %95, %struct.GCObject** %97, align 8
  %98 = load %struct.global_State*, %struct.global_State** %2, align 8
  %99 = load %struct.Proto*, %struct.Proto** %9, align 8
  %100 = call i32 @traverseproto(%struct.global_State* %98, %struct.Proto* %99)
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %3, align 8
  br label %103

; <label>:102:                                    ; preds = %1
  br label %109

; <label>:103:                                    ; preds = %89, %61, %48, %35, %23
  %104 = load i64, i64* %3, align 8
  %105 = load %struct.global_State*, %struct.global_State** %2, align 8
  %106 = getelementptr inbounds %struct.global_State, %struct.global_State* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %109

; <label>:109:                                    ; preds = %103, %102
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagateall(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %8, %1
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 16
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %7 = icmp ne %struct.GCObject* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = load %struct.global_State*, %struct.global_State** %2, align 8
  call void @propagatemark(%struct.global_State* %9)
  br label %3

; <label>:10:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atomic(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %3, align 8
  %11 = load %struct.global_State*, %struct.global_State** %3, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 17
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8
  store %struct.GCObject* %13, %struct.GCObject** %7, align 8
  %14 = load %struct.global_State*, %struct.global_State** %3, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 10
  store i8 8, i8* %15, align 1
  %16 = load %struct.global_State*, %struct.global_State** %3, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %1
  %25 = load %struct.global_State*, %struct.global_State** %3, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = bitcast %struct.lua_State* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %25, %struct.GCObject* %28)
  br label %29

; <label>:29:                                     ; preds = %24, %1
  %30 = load %struct.global_State*, %struct.global_State** %3, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %29
  %37 = load %struct.global_State*, %struct.global_State** %3, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 0
  %40 = bitcast %union.Value* %39 to %struct.GCObject**
  %41 = load %struct.GCObject*, %struct.GCObject** %40, align 8
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %36
  %48 = load %struct.global_State*, %struct.global_State** %3, align 8
  %49 = load %struct.global_State*, %struct.global_State** %3, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  call void @reallymarkobject(%struct.global_State* %48, %struct.GCObject* %53)
  br label %54

; <label>:54:                                     ; preds = %47, %36, %29
  %55 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @markmt(%struct.global_State* %55)
  %56 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @remarkupvals(%struct.global_State* %56)
  %57 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @propagateall(%struct.global_State* %57)
  %58 = load %struct.global_State*, %struct.global_State** %3, align 8
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  %61 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %62 = load %struct.global_State*, %struct.global_State** %3, align 8
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %62, i32 0, i32 16
  store %struct.GCObject* %61, %struct.GCObject** %63, align 8
  %64 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @propagateall(%struct.global_State* %64)
  %65 = load %struct.global_State*, %struct.global_State** %3, align 8
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @convergeephemerons(%struct.global_State* %67)
  %68 = load %struct.global_State*, %struct.global_State** %3, align 8
  %69 = load %struct.global_State*, %struct.global_State** %3, align 8
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i32 0, i32 18
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  call void @clearvalues(%struct.global_State* %68, %struct.GCObject* %71, %struct.GCObject* null)
  %72 = load %struct.global_State*, %struct.global_State** %3, align 8
  %73 = load %struct.global_State*, %struct.global_State** %3, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 20
  %75 = load %struct.GCObject*, %struct.GCObject** %74, align 8
  call void @clearvalues(%struct.global_State* %72, %struct.GCObject* %75, %struct.GCObject* null)
  %76 = load %struct.global_State*, %struct.global_State** %3, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 18
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8
  store %struct.GCObject* %78, %struct.GCObject** %5, align 8
  %79 = load %struct.global_State*, %struct.global_State** %3, align 8
  %80 = getelementptr inbounds %struct.global_State, %struct.global_State* %79, i32 0, i32 20
  %81 = load %struct.GCObject*, %struct.GCObject** %80, align 8
  store %struct.GCObject* %81, %struct.GCObject** %6, align 8
  %82 = load %struct.global_State*, %struct.global_State** %3, align 8
  %83 = getelementptr inbounds %struct.global_State, %struct.global_State* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %4, align 8
  %87 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @separatetobefnz(%struct.global_State* %87, i32 0)
  %88 = load %struct.global_State*, %struct.global_State** %3, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 24
  store i32 1, i32* %89, align 8
  %90 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @markbeingfnz(%struct.global_State* %90)
  %91 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @propagateall(%struct.global_State* %91)
  %92 = load %struct.global_State*, %struct.global_State** %3, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @convergeephemerons(%struct.global_State* %94)
  %95 = load %struct.global_State*, %struct.global_State** %3, align 8
  %96 = load %struct.global_State*, %struct.global_State** %3, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 19
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8
  call void @clearkeys(%struct.global_State* %95, %struct.GCObject* %98, %struct.GCObject* null)
  %99 = load %struct.global_State*, %struct.global_State** %3, align 8
  %100 = load %struct.global_State*, %struct.global_State** %3, align 8
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i32 0, i32 20
  %102 = load %struct.GCObject*, %struct.GCObject** %101, align 8
  call void @clearkeys(%struct.global_State* %99, %struct.GCObject* %102, %struct.GCObject* null)
  %103 = load %struct.global_State*, %struct.global_State** %3, align 8
  %104 = load %struct.global_State*, %struct.global_State** %3, align 8
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %104, i32 0, i32 18
  %106 = load %struct.GCObject*, %struct.GCObject** %105, align 8
  %107 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  call void @clearvalues(%struct.global_State* %103, %struct.GCObject* %106, %struct.GCObject* %107)
  %108 = load %struct.global_State*, %struct.global_State** %3, align 8
  %109 = load %struct.global_State*, %struct.global_State** %3, align 8
  %110 = getelementptr inbounds %struct.global_State, %struct.global_State* %109, i32 0, i32 20
  %111 = load %struct.GCObject*, %struct.GCObject** %110, align 8
  %112 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  call void @clearvalues(%struct.global_State* %108, %struct.GCObject* %111, %struct.GCObject* %112)
  %113 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @luaS_clearcache(%struct.global_State* %113)
  %114 = load %struct.global_State*, %struct.global_State** %3, align 8
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i32 0, i32 9
  %116 = load i8, i8* %115, align 4
  %117 = zext i8 %116 to i32
  %118 = xor i32 %117, 3
  %119 = trunc i32 %118 to i8
  %120 = load %struct.global_State*, %struct.global_State** %3, align 8
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %120, i32 0, i32 9
  store i8 %119, i8* %121, align 4
  %122 = load %struct.global_State*, %struct.global_State** %3, align 8
  %123 = getelementptr inbounds %struct.global_State, %struct.global_State* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %4, align 8
  %127 = load i64, i64* %4, align 8
  ret i64 %127
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sweepstep(%struct.lua_State*, %struct.global_State*, i32, %struct.GCObject**) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.GCObject**, align 8
  %10 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.global_State* %1, %struct.global_State** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.GCObject** %3, %struct.GCObject*** %9, align 8
  %11 = load %struct.global_State*, %struct.global_State** %7, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 14
  %13 = load %struct.GCObject**, %struct.GCObject*** %12, align 8
  %14 = icmp ne %struct.GCObject** %13, null
  br i1 %14, label %15, label %41

; <label>:15:                                     ; preds = %4
  %16 = load %struct.global_State*, %struct.global_State** %7, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %20 = load %struct.global_State*, %struct.global_State** %7, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 14
  %22 = load %struct.GCObject**, %struct.GCObject*** %21, align 8
  %23 = call %struct.GCObject** @sweeplist(%struct.lua_State* %19, %struct.GCObject** %22, i64 85)
  %24 = load %struct.global_State*, %struct.global_State** %7, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 14
  store %struct.GCObject** %23, %struct.GCObject*** %25, align 8
  %26 = load %struct.global_State*, %struct.global_State** %7, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load %struct.global_State*, %struct.global_State** %7, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.global_State*, %struct.global_State** %7, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 14
  %37 = load %struct.GCObject**, %struct.GCObject*** %36, align 8
  %38 = icmp ne %struct.GCObject** %37, null
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %15
  store i64 595, i64* %5, align 8
  br label %49

; <label>:40:                                     ; preds = %15
  br label %41

; <label>:41:                                     ; preds = %40, %4
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i8
  %44 = load %struct.global_State*, %struct.global_State** %7, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 10
  store i8 %43, i8* %45, align 1
  %46 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  %47 = load %struct.global_State*, %struct.global_State** %7, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 14
  store %struct.GCObject** %46, %struct.GCObject*** %48, align 8
  store i64 0, i64* %5, align 8
  br label %49

; <label>:49:                                     ; preds = %41, %39
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkSizes(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 11
  %8 = load i8, i8* %7, align 2
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %42

; <label>:11:                                     ; preds = %2
  %12 = load %struct.global_State*, %struct.global_State** %4, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.global_State*, %struct.global_State** %4, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %11
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.global_State*, %struct.global_State** %4, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  call void @luaS_resize(%struct.lua_State* %26, i32 %31)
  br label %32

; <label>:32:                                     ; preds = %25, %11
  %33 = load %struct.global_State*, %struct.global_State** %4, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.global_State*, %struct.global_State** %4, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

; <label>:42:                                     ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markmt(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 9
  br i1 %6, label %7, label %42

; <label>:7:                                      ; preds = %4
  %8 = load %struct.global_State*, %struct.global_State** %2, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 32
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %9, i64 0, i64 %11
  %13 = load %struct.Table*, %struct.Table** %12, align 8
  %14 = icmp ne %struct.Table* %13, null
  br i1 %14, label %15, label %38

; <label>:15:                                     ; preds = %7
  %16 = load %struct.global_State*, %struct.global_State** %2, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 32
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %17, i64 0, i64 %19
  %21 = load %struct.Table*, %struct.Table** %20, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %15
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 32
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %30, i64 0, i64 %32
  %34 = load %struct.Table*, %struct.Table** %33, align 8
  %35 = bitcast %struct.Table* %34 to %union.GCUnion*
  %36 = bitcast %union.GCUnion* %35 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %28, %struct.GCObject* %36)
  br label %37

; <label>:37:                                     ; preds = %27, %15
  br label %38

; <label>:38:                                     ; preds = %37, %7
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

; <label>:42:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markbeingfnz(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 21
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %23, %1
  %8 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %9 = icmp ne %struct.GCObject* %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %7
  %11 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %10
  %18 = load %struct.global_State*, %struct.global_State** %2, align 8
  %19 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %18, %struct.GCObject* %21)
  br label %22

; <label>:22:                                     ; preds = %17, %10
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i32 0, i32 0
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  store %struct.GCObject* %26, %struct.GCObject** %3, align 8
  br label %7

; <label>:27:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traversetable(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 9
  %10 = load %struct.Table*, %struct.Table** %9, align 8
  %11 = icmp eq %struct.Table* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  br label %34

; <label>:13:                                     ; preds = %2
  %14 = load %struct.Table*, %struct.Table** %4, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 9
  %16 = load %struct.Table*, %struct.Table** %15, align 8
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 3
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %13
  br label %32

; <label>:23:                                     ; preds = %13
  %24 = load %struct.Table*, %struct.Table** %4, align 8
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 9
  %26 = load %struct.Table*, %struct.Table** %25, align 8
  %27 = load %struct.global_State*, %struct.global_State** %3, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 31
  %29 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %28, i64 0, i64 3
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %26, i32 3, %struct.TString* %30)
  br label %32

; <label>:32:                                     ; preds = %23, %22
  %33 = phi %struct.lua_TValue* [ null, %22 ], [ %31, %23 ]
  br label %34

; <label>:34:                                     ; preds = %32, %12
  %35 = phi %struct.lua_TValue* [ null, %12 ], [ %33, %32 ]
  store %struct.lua_TValue* %35, %struct.lua_TValue** %7, align 8
  %36 = load %struct.Table*, %struct.Table** %4, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 9
  %38 = load %struct.Table*, %struct.Table** %37, align 8
  %39 = icmp ne %struct.Table* %38, null
  br i1 %39, label %40, label %57

; <label>:40:                                     ; preds = %34
  %41 = load %struct.Table*, %struct.Table** %4, align 8
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 9
  %43 = load %struct.Table*, %struct.Table** %42, align 8
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %40
  %50 = load %struct.global_State*, %struct.global_State** %3, align 8
  %51 = load %struct.Table*, %struct.Table** %4, align 8
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %51, i32 0, i32 9
  %53 = load %struct.Table*, %struct.Table** %52, align 8
  %54 = bitcast %struct.Table* %53 to %union.GCUnion*
  %55 = bitcast %union.GCUnion* %54 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %50, %struct.GCObject* %55)
  br label %56

; <label>:56:                                     ; preds = %49, %40
  br label %57

; <label>:57:                                     ; preds = %56, %34
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %59 = icmp ne %struct.lua_TValue* %58, null
  br i1 %59, label %60, label %124

; <label>:60:                                     ; preds = %57
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 15
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %124

; <label>:66:                                     ; preds = %60
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %68 to %struct.GCObject**
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  %71 = bitcast %struct.GCObject* %70 to %union.GCUnion*
  %72 = bitcast %union.GCUnion* %71 to %struct.TString*
  %73 = bitcast %struct.TString* %72 to i8*
  %74 = getelementptr inbounds i8, i8* %73, i64 24
  %75 = call i8* @strchr(i8* %74, i32 107) #6
  store i8* %75, i8** %5, align 8
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i32 0, i32 0
  %78 = bitcast %union.Value* %77 to %struct.GCObject**
  %79 = load %struct.GCObject*, %struct.GCObject** %78, align 8
  %80 = bitcast %struct.GCObject* %79 to %union.GCUnion*
  %81 = bitcast %union.GCUnion* %80 to %struct.TString*
  %82 = bitcast %struct.TString* %81 to i8*
  %83 = getelementptr inbounds i8, i8* %82, i64 24
  %84 = call i8* @strchr(i8* %83, i32 118) #6
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

; <label>:87:                                     ; preds = %66
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br label %90

; <label>:90:                                     ; preds = %87, %66
  %91 = phi i1 [ true, %66 ], [ %89, %87 ]
  br i1 %91, label %92, label %124

; <label>:92:                                     ; preds = %90
  %93 = load %struct.Table*, %struct.Table** %4, align 8
  %94 = getelementptr inbounds %struct.Table, %struct.Table* %93, i32 0, i32 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 251
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

; <label>:101:                                    ; preds = %92
  %102 = load %struct.global_State*, %struct.global_State** %3, align 8
  %103 = load %struct.Table*, %struct.Table** %4, align 8
  call void @traverseweakvalue(%struct.global_State* %102, %struct.Table* %103)
  br label %123

; <label>:104:                                    ; preds = %92
  %105 = load i8*, i8** %6, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %111, label %107

; <label>:107:                                    ; preds = %104
  %108 = load %struct.global_State*, %struct.global_State** %3, align 8
  %109 = load %struct.Table*, %struct.Table** %4, align 8
  %110 = call i32 @traverseephemeron(%struct.global_State* %108, %struct.Table* %109)
  br label %122

; <label>:111:                                    ; preds = %104
  %112 = load %struct.global_State*, %struct.global_State** %3, align 8
  %113 = getelementptr inbounds %struct.global_State, %struct.global_State* %112, i32 0, i32 20
  %114 = load %struct.GCObject*, %struct.GCObject** %113, align 8
  %115 = load %struct.Table*, %struct.Table** %4, align 8
  %116 = getelementptr inbounds %struct.Table, %struct.Table* %115, i32 0, i32 10
  store %struct.GCObject* %114, %struct.GCObject** %116, align 8
  %117 = load %struct.Table*, %struct.Table** %4, align 8
  %118 = bitcast %struct.Table* %117 to %union.GCUnion*
  %119 = bitcast %union.GCUnion* %118 to %struct.GCObject*
  %120 = load %struct.global_State*, %struct.global_State** %3, align 8
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %120, i32 0, i32 20
  store %struct.GCObject* %119, %struct.GCObject** %121, align 8
  br label %122

; <label>:122:                                    ; preds = %111, %107
  br label %123

; <label>:123:                                    ; preds = %122, %101
  br label %127

; <label>:124:                                    ; preds = %90, %60, %57
  %125 = load %struct.global_State*, %struct.global_State** %3, align 8
  %126 = load %struct.Table*, %struct.Table** %4, align 8
  call void @traversestrongtable(%struct.global_State* %125, %struct.Table* %126)
  br label %127

; <label>:127:                                    ; preds = %124, %123
  %128 = load %struct.Table*, %struct.Table** %4, align 8
  %129 = getelementptr inbounds %struct.Table, %struct.Table* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = mul i64 16, %131
  %133 = add i64 56, %132
  %134 = load %struct.Table*, %struct.Table** %4, align 8
  %135 = getelementptr inbounds %struct.Table, %struct.Table* %134, i32 0, i32 8
  %136 = load %struct.Node*, %struct.Node** %135, align 8
  %137 = icmp eq %struct.Node* %136, null
  br i1 %137, label %138, label %139

; <label>:138:                                    ; preds = %127
  br label %145

; <label>:139:                                    ; preds = %127
  %140 = load %struct.Table*, %struct.Table** %4, align 8
  %141 = getelementptr inbounds %struct.Table, %struct.Table* %140, i32 0, i32 4
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl i32 1, %143
  br label %145

; <label>:145:                                    ; preds = %139, %138
  %146 = phi i32 [ 0, %138 ], [ %144, %139 ]
  %147 = sext i32 %146 to i64
  %148 = mul i64 32, %147
  %149 = add i64 %133, %148
  ret i64 %149
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traverseLclosure(%struct.global_State*, %struct.LClosure*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.UpVal*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.LClosure* %1, %struct.LClosure** %4, align 8
  %7 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i32 0, i32 5
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = icmp ne %struct.Proto* %9, null
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %2
  %12 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %13 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %12, i32 0, i32 5
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %11
  %21 = load %struct.global_State*, %struct.global_State** %3, align 8
  %22 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %22, i32 0, i32 5
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8
  %25 = bitcast %struct.Proto* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %21, %struct.GCObject* %26)
  br label %27

; <label>:27:                                     ; preds = %20, %11
  br label %28

; <label>:28:                                     ; preds = %27, %2
  store i32 0, i32* %5, align 4
  br label %29

; <label>:29:                                     ; preds = %95, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 3
  %33 = load i8, i8* %32, align 2
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %98

; <label>:36:                                     ; preds = %29
  %37 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %38 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i32 0, i32 6
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %38, i64 0, i64 %40
  %42 = load %struct.UpVal*, %struct.UpVal** %41, align 8
  store %struct.UpVal* %42, %struct.UpVal** %6, align 8
  %43 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %44 = icmp ne %struct.UpVal* %43, null
  br i1 %44, label %45, label %94

; <label>:45:                                     ; preds = %36
  %46 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %47 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %46, i32 0, i32 0
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %49 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %50 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %49, i32 0, i32 2
  %51 = bitcast %union.anon.3* %50 to %struct.lua_TValue*
  %52 = icmp ne %struct.lua_TValue* %48, %51
  br i1 %52, label %53, label %64

; <label>:53:                                     ; preds = %45
  %54 = load %struct.global_State*, %struct.global_State** %3, align 8
  %55 = getelementptr inbounds %struct.global_State, %struct.global_State* %54, i32 0, i32 10
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 8
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %53
  %60 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %61 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %60, i32 0, i32 2
  %62 = bitcast %union.anon.3* %61 to %struct.anon.4*
  %63 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %93

; <label>:64:                                     ; preds = %53, %45
  %65 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %66 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %65, i32 0, i32 0
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

; <label>:72:                                     ; preds = %64
  %73 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %74 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %73, i32 0, i32 0
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 0
  %77 = bitcast %union.Value* %76 to %struct.GCObject**
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8
  %79 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %78, i32 0, i32 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

; <label>:84:                                     ; preds = %72
  %85 = load %struct.global_State*, %struct.global_State** %3, align 8
  %86 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %87 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %86, i32 0, i32 0
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %87, align 8
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i32 0, i32 0
  %90 = bitcast %union.Value* %89 to %struct.GCObject**
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  call void @reallymarkobject(%struct.global_State* %85, %struct.GCObject* %91)
  br label %92

; <label>:92:                                     ; preds = %84, %72, %64
  br label %93

; <label>:93:                                     ; preds = %92, %59
  br label %94

; <label>:94:                                     ; preds = %93, %36
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %29

; <label>:98:                                     ; preds = %29
  %99 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %100 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %99, i32 0, i32 3
  %101 = load i8, i8* %100, align 2
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = add nsw i32 40, %106
  %108 = sext i32 %107 to i64
  ret i64 %108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traverseCclosure(%struct.global_State*, %struct.CClosure*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.CClosure*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.CClosure* %1, %struct.CClosure** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %48, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %9 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %8, i32 0, i32 3
  %10 = load i8, i8* %9, align 2
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %51

; <label>:13:                                     ; preds = %6
  %14 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %15 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i32 0, i32 6
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %15, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

; <label>:23:                                     ; preds = %13
  %24 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %25 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %24, i32 0, i32 6
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %25, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

; <label>:37:                                     ; preds = %23
  %38 = load %struct.global_State*, %struct.global_State** %3, align 8
  %39 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %40 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %39, i32 0, i32 6
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %40, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  call void @reallymarkobject(%struct.global_State* %38, %struct.GCObject* %46)
  br label %47

; <label>:47:                                     ; preds = %37, %23, %13
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

; <label>:51:                                     ; preds = %6
  %52 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %53 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 2
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 16, %57
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 48, %59
  %61 = sext i32 %60 to i64
  ret i64 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traversethread(%struct.global_State*, %struct.lua_State*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %10, %struct.lua_TValue** %6, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %12 = icmp eq %struct.lua_TValue* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %2
  store i64 1, i64* %3, align 8
  br label %115

; <label>:14:                                     ; preds = %2
  br label %15

; <label>:15:                                     ; preds = %44, %14
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = icmp ult %struct.lua_TValue* %16, %19
  br i1 %20, label %21, label %47

; <label>:21:                                     ; preds = %15
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

; <label>:27:                                     ; preds = %21
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %27
  %38 = load %struct.global_State*, %struct.global_State** %4, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to %struct.GCObject**
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  call void @reallymarkobject(%struct.global_State* %38, %struct.GCObject* %42)
  br label %43

; <label>:43:                                     ; preds = %37, %27, %21
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 1
  store %struct.lua_TValue* %46, %struct.lua_TValue** %6, align 8
  br label %15

; <label>:47:                                     ; preds = %15
  %48 = load %struct.global_State*, %struct.global_State** %4, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 10
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %93

; <label>:53:                                     ; preds = %47
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 10
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 %60
  store %struct.lua_TValue* %61, %struct.lua_TValue** %7, align 8
  br label %62

; <label>:62:                                     ; preds = %69, %53
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %65 = icmp ult %struct.lua_TValue* %63, %64
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %62
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %66
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 1
  store %struct.lua_TValue* %71, %struct.lua_TValue** %6, align 8
  br label %62

; <label>:72:                                     ; preds = %62
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 13
  %75 = load %struct.lua_State*, %struct.lua_State** %74, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %77 = icmp ne %struct.lua_State* %75, %76
  br i1 %77, label %92, label %78

; <label>:78:                                     ; preds = %72
  %79 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 11
  %81 = load %struct.UpVal*, %struct.UpVal** %80, align 8
  %82 = icmp ne %struct.UpVal* %81, null
  br i1 %82, label %83, label %92

; <label>:83:                                     ; preds = %78
  %84 = load %struct.global_State*, %struct.global_State** %4, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 23
  %86 = load %struct.lua_State*, %struct.lua_State** %85, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %87, i32 0, i32 13
  store %struct.lua_State* %86, %struct.lua_State** %88, align 8
  %89 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %90 = load %struct.global_State*, %struct.global_State** %4, align 8
  %91 = getelementptr inbounds %struct.global_State, %struct.global_State* %90, i32 0, i32 23
  store %struct.lua_State* %89, %struct.lua_State** %91, align 8
  br label %92

; <label>:92:                                     ; preds = %83, %78, %72
  br label %102

; <label>:93:                                     ; preds = %47
  %94 = load %struct.global_State*, %struct.global_State** %4, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 11
  %96 = load i8, i8* %95, align 2
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %101

; <label>:99:                                     ; preds = %93
  %100 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %100)
  br label %101

; <label>:101:                                    ; preds = %99, %93
  br label %102

; <label>:102:                                    ; preds = %101, %92
  %103 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %103, i32 0, i32 18
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 16, %106
  %108 = add i64 208, %107
  %109 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %110 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %109, i32 0, i32 3
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i64
  %113 = mul i64 72, %112
  %114 = add i64 %108, %113
  store i64 %114, i64* %3, align 8
  br label %115

; <label>:115:                                    ; preds = %102, %13
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseproto(%struct.global_State*, %struct.Proto*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %6 = load %struct.Proto*, %struct.Proto** %4, align 8
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 20
  %8 = load %struct.LClosure*, %struct.LClosure** %7, align 8
  %9 = icmp ne %struct.LClosure* %8, null
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %2
  %11 = load %struct.Proto*, %struct.Proto** %4, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 20
  %13 = load %struct.LClosure*, %struct.LClosure** %12, align 8
  %14 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %13, i32 0, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %10
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 20
  store %struct.LClosure* null, %struct.LClosure** %21, align 8
  br label %22

; <label>:22:                                     ; preds = %19, %10, %2
  %23 = load %struct.Proto*, %struct.Proto** %4, align 8
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 21
  %25 = load %struct.TString*, %struct.TString** %24, align 8
  %26 = icmp ne %struct.TString* %25, null
  br i1 %26, label %27, label %44

; <label>:27:                                     ; preds = %22
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 21
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = getelementptr inbounds %struct.TString, %struct.TString* %30, i32 0, i32 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

; <label>:36:                                     ; preds = %27
  %37 = load %struct.global_State*, %struct.global_State** %3, align 8
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 21
  %40 = load %struct.TString*, %struct.TString** %39, align 8
  %41 = bitcast %struct.TString* %40 to %union.GCUnion*
  %42 = bitcast %union.GCUnion* %41 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %37, %struct.GCObject* %42)
  br label %43

; <label>:43:                                     ; preds = %36, %27
  br label %44

; <label>:44:                                     ; preds = %43, %22
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %89, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.Proto*, %struct.Proto** %4, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %92

; <label>:51:                                     ; preds = %45
  %52 = load %struct.Proto*, %struct.Proto** %4, align 8
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i32 0, i32 14
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 %56
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

; <label>:62:                                     ; preds = %51
  %63 = load %struct.Proto*, %struct.Proto** %4, align 8
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 14
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %67
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

; <label>:77:                                     ; preds = %62
  %78 = load %struct.global_State*, %struct.global_State** %3, align 8
  %79 = load %struct.Proto*, %struct.Proto** %4, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 14
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 %83
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to %struct.GCObject**
  %87 = load %struct.GCObject*, %struct.GCObject** %86, align 8
  call void @reallymarkobject(%struct.global_State* %78, %struct.GCObject* %87)
  br label %88

; <label>:88:                                     ; preds = %77, %62, %51
  br label %89

; <label>:89:                                     ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %45

; <label>:92:                                     ; preds = %45
  store i32 0, i32* %5, align 4
  br label %93

; <label>:93:                                     ; preds = %137, %92
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.Proto*, %struct.Proto** %4, align 8
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %140

; <label>:99:                                     ; preds = %93
  %100 = load %struct.Proto*, %struct.Proto** %4, align 8
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %100, i32 0, i32 19
  %102 = load %struct.Upvaldesc*, %struct.Upvaldesc** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %102, i64 %104
  %106 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %105, i32 0, i32 0
  %107 = load %struct.TString*, %struct.TString** %106, align 8
  %108 = icmp ne %struct.TString* %107, null
  br i1 %108, label %109, label %136

; <label>:109:                                    ; preds = %99
  %110 = load %struct.Proto*, %struct.Proto** %4, align 8
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i32 0, i32 19
  %112 = load %struct.Upvaldesc*, %struct.Upvaldesc** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %112, i64 %114
  %116 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %115, i32 0, i32 0
  %117 = load %struct.TString*, %struct.TString** %116, align 8
  %118 = getelementptr inbounds %struct.TString, %struct.TString* %117, i32 0, i32 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

; <label>:123:                                    ; preds = %109
  %124 = load %struct.global_State*, %struct.global_State** %3, align 8
  %125 = load %struct.Proto*, %struct.Proto** %4, align 8
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %125, i32 0, i32 19
  %127 = load %struct.Upvaldesc*, %struct.Upvaldesc** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %127, i64 %129
  %131 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %130, i32 0, i32 0
  %132 = load %struct.TString*, %struct.TString** %131, align 8
  %133 = bitcast %struct.TString* %132 to %union.GCUnion*
  %134 = bitcast %union.GCUnion* %133 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %124, %struct.GCObject* %134)
  br label %135

; <label>:135:                                    ; preds = %123, %109
  br label %136

; <label>:136:                                    ; preds = %135, %99
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %93

; <label>:140:                                    ; preds = %93
  store i32 0, i32* %5, align 4
  br label %141

; <label>:141:                                    ; preds = %182, %140
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.Proto*, %struct.Proto** %4, align 8
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %185

; <label>:147:                                    ; preds = %141
  %148 = load %struct.Proto*, %struct.Proto** %4, align 8
  %149 = getelementptr inbounds %struct.Proto, %struct.Proto* %148, i32 0, i32 16
  %150 = load %struct.Proto**, %struct.Proto*** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.Proto*, %struct.Proto** %150, i64 %152
  %154 = load %struct.Proto*, %struct.Proto** %153, align 8
  %155 = icmp ne %struct.Proto* %154, null
  br i1 %155, label %156, label %181

; <label>:156:                                    ; preds = %147
  %157 = load %struct.Proto*, %struct.Proto** %4, align 8
  %158 = getelementptr inbounds %struct.Proto, %struct.Proto* %157, i32 0, i32 16
  %159 = load %struct.Proto**, %struct.Proto*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Proto*, %struct.Proto** %159, i64 %161
  %163 = load %struct.Proto*, %struct.Proto** %162, align 8
  %164 = getelementptr inbounds %struct.Proto, %struct.Proto* %163, i32 0, i32 2
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

; <label>:169:                                    ; preds = %156
  %170 = load %struct.global_State*, %struct.global_State** %3, align 8
  %171 = load %struct.Proto*, %struct.Proto** %4, align 8
  %172 = getelementptr inbounds %struct.Proto, %struct.Proto* %171, i32 0, i32 16
  %173 = load %struct.Proto**, %struct.Proto*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.Proto*, %struct.Proto** %173, i64 %175
  %177 = load %struct.Proto*, %struct.Proto** %176, align 8
  %178 = bitcast %struct.Proto* %177 to %union.GCUnion*
  %179 = bitcast %union.GCUnion* %178 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %170, %struct.GCObject* %179)
  br label %180

; <label>:180:                                    ; preds = %169, %156
  br label %181

; <label>:181:                                    ; preds = %180, %147
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %141

; <label>:185:                                    ; preds = %141
  store i32 0, i32* %5, align 4
  br label %186

; <label>:186:                                    ; preds = %230, %185
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.Proto*, %struct.Proto** %4, align 8
  %189 = getelementptr inbounds %struct.Proto, %struct.Proto* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %233

; <label>:192:                                    ; preds = %186
  %193 = load %struct.Proto*, %struct.Proto** %4, align 8
  %194 = getelementptr inbounds %struct.Proto, %struct.Proto* %193, i32 0, i32 18
  %195 = load %struct.LocVar*, %struct.LocVar** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %195, i64 %197
  %199 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %198, i32 0, i32 0
  %200 = load %struct.TString*, %struct.TString** %199, align 8
  %201 = icmp ne %struct.TString* %200, null
  br i1 %201, label %202, label %229

; <label>:202:                                    ; preds = %192
  %203 = load %struct.Proto*, %struct.Proto** %4, align 8
  %204 = getelementptr inbounds %struct.Proto, %struct.Proto* %203, i32 0, i32 18
  %205 = load %struct.LocVar*, %struct.LocVar** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %205, i64 %207
  %209 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %208, i32 0, i32 0
  %210 = load %struct.TString*, %struct.TString** %209, align 8
  %211 = getelementptr inbounds %struct.TString, %struct.TString* %210, i32 0, i32 2
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %213, 3
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

; <label>:216:                                    ; preds = %202
  %217 = load %struct.global_State*, %struct.global_State** %3, align 8
  %218 = load %struct.Proto*, %struct.Proto** %4, align 8
  %219 = getelementptr inbounds %struct.Proto, %struct.Proto* %218, i32 0, i32 18
  %220 = load %struct.LocVar*, %struct.LocVar** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %220, i64 %222
  %224 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %223, i32 0, i32 0
  %225 = load %struct.TString*, %struct.TString** %224, align 8
  %226 = bitcast %struct.TString* %225 to %union.GCUnion*
  %227 = bitcast %union.GCUnion* %226 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %217, %struct.GCObject* %227)
  br label %228

; <label>:228:                                    ; preds = %216, %202
  br label %229

; <label>:229:                                    ; preds = %228, %192
  br label %230

; <label>:230:                                    ; preds = %229
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %186

; <label>:233:                                    ; preds = %186
  %234 = load %struct.Proto*, %struct.Proto** %4, align 8
  %235 = getelementptr inbounds %struct.Proto, %struct.Proto* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = mul i64 4, %237
  %239 = add i64 120, %238
  %240 = load %struct.Proto*, %struct.Proto** %4, align 8
  %241 = getelementptr inbounds %struct.Proto, %struct.Proto* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = mul i64 8, %243
  %245 = add i64 %239, %244
  %246 = load %struct.Proto*, %struct.Proto** %4, align 8
  %247 = getelementptr inbounds %struct.Proto, %struct.Proto* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 16, %249
  %251 = add i64 %245, %250
  %252 = load %struct.Proto*, %struct.Proto** %4, align 8
  %253 = getelementptr inbounds %struct.Proto, %struct.Proto* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 4, %255
  %257 = add i64 %251, %256
  %258 = load %struct.Proto*, %struct.Proto** %4, align 8
  %259 = getelementptr inbounds %struct.Proto, %struct.Proto* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = mul i64 16, %261
  %263 = add i64 %257, %262
  %264 = load %struct.Proto*, %struct.Proto** %4, align 8
  %265 = getelementptr inbounds %struct.Proto, %struct.Proto* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = mul i64 16, %267
  %269 = add i64 %263, %268
  %270 = trunc i64 %269 to i32
  ret i32 %270
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverseweakvalue(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.Node*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 7
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %10, i64 %16
  store %struct.Node* %17, %struct.Node** %6, align 8
  %18 = load %struct.Table*, %struct.Table** %4, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.Table*, %struct.Table** %4, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 7
  %25 = load %struct.Node*, %struct.Node** %24, align 8
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0
  store %struct.Node* %26, %struct.Node** %5, align 8
  br label %27

; <label>:27:                                     ; preds = %79, %2
  %28 = load %struct.Node*, %struct.Node** %5, align 8
  %29 = load %struct.Node*, %struct.Node** %6, align 8
  %30 = icmp ult %struct.Node* %28, %29
  br i1 %30, label %31, label %82

; <label>:31:                                     ; preds = %27
  %32 = load %struct.Node*, %struct.Node** %5, align 8
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %31
  %38 = load %struct.Node*, %struct.Node** %5, align 8
  call void @removeentry(%struct.Node* %38)
  br label %78

; <label>:39:                                     ; preds = %31
  %40 = load %struct.Node*, %struct.Node** %5, align 8
  %41 = getelementptr inbounds %struct.Node, %struct.Node* %40, i32 0, i32 1
  %42 = bitcast %union.TKey* %41 to %struct.lua_TValue*
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 64
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

; <label>:47:                                     ; preds = %39
  %48 = load %struct.Node*, %struct.Node** %5, align 8
  %49 = getelementptr inbounds %struct.Node, %struct.Node* %48, i32 0, i32 1
  %50 = bitcast %union.TKey* %49 to %struct.lua_TValue*
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %47
  %60 = load %struct.global_State*, %struct.global_State** %3, align 8
  %61 = load %struct.Node*, %struct.Node** %5, align 8
  %62 = getelementptr inbounds %struct.Node, %struct.Node* %61, i32 0, i32 1
  %63 = bitcast %union.TKey* %62 to %struct.lua_TValue*
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 0
  %65 = bitcast %union.Value* %64 to %struct.GCObject**
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8
  call void @reallymarkobject(%struct.global_State* %60, %struct.GCObject* %66)
  br label %67

; <label>:67:                                     ; preds = %59, %47, %39
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

; <label>:70:                                     ; preds = %67
  %71 = load %struct.global_State*, %struct.global_State** %3, align 8
  %72 = load %struct.Node*, %struct.Node** %5, align 8
  %73 = getelementptr inbounds %struct.Node, %struct.Node* %72, i32 0, i32 0
  %74 = call i32 @iscleared(%struct.global_State* %71, %struct.lua_TValue* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %70
  store i32 1, i32* %7, align 4
  br label %77

; <label>:77:                                     ; preds = %76, %70, %67
  br label %78

; <label>:78:                                     ; preds = %77, %37
  br label %79

; <label>:79:                                     ; preds = %78
  %80 = load %struct.Node*, %struct.Node** %5, align 8
  %81 = getelementptr inbounds %struct.Node, %struct.Node* %80, i32 1
  store %struct.Node* %81, %struct.Node** %5, align 8
  br label %27

; <label>:82:                                     ; preds = %27
  %83 = load %struct.global_State*, %struct.global_State** %3, align 8
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %83, i32 0, i32 10
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

; <label>:88:                                     ; preds = %82
  %89 = load %struct.global_State*, %struct.global_State** %3, align 8
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i32 0, i32 17
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  %92 = load %struct.Table*, %struct.Table** %4, align 8
  %93 = getelementptr inbounds %struct.Table, %struct.Table* %92, i32 0, i32 10
  store %struct.GCObject* %91, %struct.GCObject** %93, align 8
  %94 = load %struct.Table*, %struct.Table** %4, align 8
  %95 = bitcast %struct.Table* %94 to %union.GCUnion*
  %96 = bitcast %union.GCUnion* %95 to %struct.GCObject*
  %97 = load %struct.global_State*, %struct.global_State** %3, align 8
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %97, i32 0, i32 17
  store %struct.GCObject* %96, %struct.GCObject** %98, align 8
  br label %114

; <label>:99:                                     ; preds = %82
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

; <label>:102:                                    ; preds = %99
  %103 = load %struct.global_State*, %struct.global_State** %3, align 8
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %103, i32 0, i32 18
  %105 = load %struct.GCObject*, %struct.GCObject** %104, align 8
  %106 = load %struct.Table*, %struct.Table** %4, align 8
  %107 = getelementptr inbounds %struct.Table, %struct.Table* %106, i32 0, i32 10
  store %struct.GCObject* %105, %struct.GCObject** %107, align 8
  %108 = load %struct.Table*, %struct.Table** %4, align 8
  %109 = bitcast %struct.Table* %108 to %union.GCUnion*
  %110 = bitcast %union.GCUnion* %109 to %struct.GCObject*
  %111 = load %struct.global_State*, %struct.global_State** %3, align 8
  %112 = getelementptr inbounds %struct.global_State, %struct.global_State* %111, i32 0, i32 18
  store %struct.GCObject* %110, %struct.GCObject** %112, align 8
  br label %113

; <label>:113:                                    ; preds = %102, %99
  br label %114

; <label>:114:                                    ; preds = %113, %88
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseephemeron(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Node*, align 8
  %9 = alloca %struct.Node*, align 8
  %10 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  %13 = load %struct.Node*, %struct.Node** %12, align 8
  %14 = load %struct.Table*, %struct.Table** %4, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Node, %struct.Node* %13, i64 %19
  store %struct.Node* %20, %struct.Node** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %65, %2
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.Table*, %struct.Table** %4, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %68

; <label>:27:                                     ; preds = %21
  %28 = load %struct.Table*, %struct.Table** %4, align 8
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %28, i32 0, i32 6
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 %32
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

; <label>:38:                                     ; preds = %27
  %39 = load %struct.Table*, %struct.Table** %4, align 8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %39, i32 0, i32 6
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 %43
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  %48 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

; <label>:53:                                     ; preds = %38
  store i32 1, i32* %5, align 4
  %54 = load %struct.global_State*, %struct.global_State** %3, align 8
  %55 = load %struct.Table*, %struct.Table** %4, align 8
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %55, i32 0, i32 6
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 %59
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %61 to %struct.GCObject**
  %63 = load %struct.GCObject*, %struct.GCObject** %62, align 8
  call void @reallymarkobject(%struct.global_State* %54, %struct.GCObject* %63)
  br label %64

; <label>:64:                                     ; preds = %53, %38, %27
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %21

; <label>:68:                                     ; preds = %21
  %69 = load %struct.Table*, %struct.Table** %4, align 8
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 7
  %71 = load %struct.Node*, %struct.Node** %70, align 8
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 0
  store %struct.Node* %72, %struct.Node** %8, align 8
  br label %73

; <label>:73:                                     ; preds = %140, %68
  %74 = load %struct.Node*, %struct.Node** %8, align 8
  %75 = load %struct.Node*, %struct.Node** %9, align 8
  %76 = icmp ult %struct.Node* %74, %75
  br i1 %76, label %77, label %143

; <label>:77:                                     ; preds = %73
  %78 = load %struct.Node*, %struct.Node** %8, align 8
  %79 = getelementptr inbounds %struct.Node, %struct.Node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %77
  %84 = load %struct.Node*, %struct.Node** %8, align 8
  call void @removeentry(%struct.Node* %84)
  br label %139

; <label>:85:                                     ; preds = %77
  %86 = load %struct.global_State*, %struct.global_State** %3, align 8
  %87 = load %struct.Node*, %struct.Node** %8, align 8
  %88 = getelementptr inbounds %struct.Node, %struct.Node* %87, i32 0, i32 1
  %89 = bitcast %union.TKey* %88 to %struct.lua_TValue*
  %90 = call i32 @iscleared(%struct.global_State* %86, %struct.lua_TValue* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

; <label>:92:                                     ; preds = %85
  store i32 1, i32* %6, align 4
  %93 = load %struct.Node*, %struct.Node** %8, align 8
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 64
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

; <label>:99:                                     ; preds = %92
  %100 = load %struct.Node*, %struct.Node** %8, align 8
  %101 = getelementptr inbounds %struct.Node, %struct.Node* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i32 0, i32 0
  %103 = bitcast %union.Value* %102 to %struct.GCObject**
  %104 = load %struct.GCObject*, %struct.GCObject** %103, align 8
  %105 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %104, i32 0, i32 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 3
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %99
  store i32 1, i32* %7, align 4
  br label %111

; <label>:111:                                    ; preds = %110, %99, %92
  br label %138

; <label>:112:                                    ; preds = %85
  %113 = load %struct.Node*, %struct.Node** %8, align 8
  %114 = getelementptr inbounds %struct.Node, %struct.Node* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 64
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

; <label>:119:                                    ; preds = %112
  %120 = load %struct.Node*, %struct.Node** %8, align 8
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i32 0, i32 0
  %123 = bitcast %union.Value* %122 to %struct.GCObject**
  %124 = load %struct.GCObject*, %struct.GCObject** %123, align 8
  %125 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %124, i32 0, i32 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 3
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

; <label>:130:                                    ; preds = %119
  store i32 1, i32* %5, align 4
  %131 = load %struct.global_State*, %struct.global_State** %3, align 8
  %132 = load %struct.Node*, %struct.Node** %8, align 8
  %133 = getelementptr inbounds %struct.Node, %struct.Node* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i32 0, i32 0
  %135 = bitcast %union.Value* %134 to %struct.GCObject**
  %136 = load %struct.GCObject*, %struct.GCObject** %135, align 8
  call void @reallymarkobject(%struct.global_State* %131, %struct.GCObject* %136)
  br label %137

; <label>:137:                                    ; preds = %130, %119, %112
  br label %138

; <label>:138:                                    ; preds = %137, %111
  br label %139

; <label>:139:                                    ; preds = %138, %83
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load %struct.Node*, %struct.Node** %8, align 8
  %142 = getelementptr inbounds %struct.Node, %struct.Node* %141, i32 1
  store %struct.Node* %142, %struct.Node** %8, align 8
  br label %73

; <label>:143:                                    ; preds = %73
  %144 = load %struct.global_State*, %struct.global_State** %3, align 8
  %145 = getelementptr inbounds %struct.global_State, %struct.global_State* %144, i32 0, i32 10
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %160

; <label>:149:                                    ; preds = %143
  %150 = load %struct.global_State*, %struct.global_State** %3, align 8
  %151 = getelementptr inbounds %struct.global_State, %struct.global_State* %150, i32 0, i32 17
  %152 = load %struct.GCObject*, %struct.GCObject** %151, align 8
  %153 = load %struct.Table*, %struct.Table** %4, align 8
  %154 = getelementptr inbounds %struct.Table, %struct.Table* %153, i32 0, i32 10
  store %struct.GCObject* %152, %struct.GCObject** %154, align 8
  %155 = load %struct.Table*, %struct.Table** %4, align 8
  %156 = bitcast %struct.Table* %155 to %union.GCUnion*
  %157 = bitcast %union.GCUnion* %156 to %struct.GCObject*
  %158 = load %struct.global_State*, %struct.global_State** %3, align 8
  %159 = getelementptr inbounds %struct.global_State, %struct.global_State* %158, i32 0, i32 17
  store %struct.GCObject* %157, %struct.GCObject** %159, align 8
  br label %190

; <label>:160:                                    ; preds = %143
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

; <label>:163:                                    ; preds = %160
  %164 = load %struct.global_State*, %struct.global_State** %3, align 8
  %165 = getelementptr inbounds %struct.global_State, %struct.global_State* %164, i32 0, i32 19
  %166 = load %struct.GCObject*, %struct.GCObject** %165, align 8
  %167 = load %struct.Table*, %struct.Table** %4, align 8
  %168 = getelementptr inbounds %struct.Table, %struct.Table* %167, i32 0, i32 10
  store %struct.GCObject* %166, %struct.GCObject** %168, align 8
  %169 = load %struct.Table*, %struct.Table** %4, align 8
  %170 = bitcast %struct.Table* %169 to %union.GCUnion*
  %171 = bitcast %union.GCUnion* %170 to %struct.GCObject*
  %172 = load %struct.global_State*, %struct.global_State** %3, align 8
  %173 = getelementptr inbounds %struct.global_State, %struct.global_State* %172, i32 0, i32 19
  store %struct.GCObject* %171, %struct.GCObject** %173, align 8
  br label %189

; <label>:174:                                    ; preds = %160
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

; <label>:177:                                    ; preds = %174
  %178 = load %struct.global_State*, %struct.global_State** %3, align 8
  %179 = getelementptr inbounds %struct.global_State, %struct.global_State* %178, i32 0, i32 20
  %180 = load %struct.GCObject*, %struct.GCObject** %179, align 8
  %181 = load %struct.Table*, %struct.Table** %4, align 8
  %182 = getelementptr inbounds %struct.Table, %struct.Table* %181, i32 0, i32 10
  store %struct.GCObject* %180, %struct.GCObject** %182, align 8
  %183 = load %struct.Table*, %struct.Table** %4, align 8
  %184 = bitcast %struct.Table* %183 to %union.GCUnion*
  %185 = bitcast %union.GCUnion* %184 to %struct.GCObject*
  %186 = load %struct.global_State*, %struct.global_State** %3, align 8
  %187 = getelementptr inbounds %struct.global_State, %struct.global_State* %186, i32 0, i32 20
  store %struct.GCObject* %185, %struct.GCObject** %187, align 8
  br label %188

; <label>:188:                                    ; preds = %177, %174
  br label %189

; <label>:189:                                    ; preds = %188, %163
  br label %190

; <label>:190:                                    ; preds = %189, %149
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traversestrongtable(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %struct.Node*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 7
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %10, i64 %16
  store %struct.Node* %17, %struct.Node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %62, %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.Table*, %struct.Table** %4, align 8
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %65

; <label>:24:                                     ; preds = %18
  %25 = load %struct.Table*, %struct.Table** %4, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 6
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %29
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

; <label>:35:                                     ; preds = %24
  %36 = load %struct.Table*, %struct.Table** %4, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 6
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %40
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %42 to %struct.GCObject**
  %44 = load %struct.GCObject*, %struct.GCObject** %43, align 8
  %45 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %44, i32 0, i32 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %35
  %51 = load %struct.global_State*, %struct.global_State** %3, align 8
  %52 = load %struct.Table*, %struct.Table** %4, align 8
  %53 = getelementptr inbounds %struct.Table, %struct.Table* %52, i32 0, i32 6
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 %56
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8
  call void @reallymarkobject(%struct.global_State* %51, %struct.GCObject* %60)
  br label %61

; <label>:61:                                     ; preds = %50, %35, %24
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %18

; <label>:65:                                     ; preds = %18
  %66 = load %struct.Table*, %struct.Table** %4, align 8
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %66, i32 0, i32 7
  %68 = load %struct.Node*, %struct.Node** %67, align 8
  %69 = getelementptr inbounds %struct.Node, %struct.Node* %68, i64 0
  store %struct.Node* %69, %struct.Node** %5, align 8
  br label %70

; <label>:70:                                     ; preds = %137, %65
  %71 = load %struct.Node*, %struct.Node** %5, align 8
  %72 = load %struct.Node*, %struct.Node** %6, align 8
  %73 = icmp ult %struct.Node* %71, %72
  br i1 %73, label %74, label %140

; <label>:74:                                     ; preds = %70
  %75 = load %struct.Node*, %struct.Node** %5, align 8
  %76 = getelementptr inbounds %struct.Node, %struct.Node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %74
  %81 = load %struct.Node*, %struct.Node** %5, align 8
  call void @removeentry(%struct.Node* %81)
  br label %136

; <label>:82:                                     ; preds = %74
  %83 = load %struct.Node*, %struct.Node** %5, align 8
  %84 = getelementptr inbounds %struct.Node, %struct.Node* %83, i32 0, i32 1
  %85 = bitcast %union.TKey* %84 to %struct.lua_TValue*
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 64
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

; <label>:90:                                     ; preds = %82
  %91 = load %struct.Node*, %struct.Node** %5, align 8
  %92 = getelementptr inbounds %struct.Node, %struct.Node* %91, i32 0, i32 1
  %93 = bitcast %union.TKey* %92 to %struct.lua_TValue*
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to %struct.GCObject**
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  %97 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %96, i32 0, i32 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 3
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

; <label>:102:                                    ; preds = %90
  %103 = load %struct.global_State*, %struct.global_State** %3, align 8
  %104 = load %struct.Node*, %struct.Node** %5, align 8
  %105 = getelementptr inbounds %struct.Node, %struct.Node* %104, i32 0, i32 1
  %106 = bitcast %union.TKey* %105 to %struct.lua_TValue*
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i32 0, i32 0
  %108 = bitcast %union.Value* %107 to %struct.GCObject**
  %109 = load %struct.GCObject*, %struct.GCObject** %108, align 8
  call void @reallymarkobject(%struct.global_State* %103, %struct.GCObject* %109)
  br label %110

; <label>:110:                                    ; preds = %102, %90, %82
  %111 = load %struct.Node*, %struct.Node** %5, align 8
  %112 = getelementptr inbounds %struct.Node, %struct.Node* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 64
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

; <label>:117:                                    ; preds = %110
  %118 = load %struct.Node*, %struct.Node** %5, align 8
  %119 = getelementptr inbounds %struct.Node, %struct.Node* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i32 0, i32 0
  %121 = bitcast %union.Value* %120 to %struct.GCObject**
  %122 = load %struct.GCObject*, %struct.GCObject** %121, align 8
  %123 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 3
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

; <label>:128:                                    ; preds = %117
  %129 = load %struct.global_State*, %struct.global_State** %3, align 8
  %130 = load %struct.Node*, %struct.Node** %5, align 8
  %131 = getelementptr inbounds %struct.Node, %struct.Node* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i32 0, i32 0
  %133 = bitcast %union.Value* %132 to %struct.GCObject**
  %134 = load %struct.GCObject*, %struct.GCObject** %133, align 8
  call void @reallymarkobject(%struct.global_State* %129, %struct.GCObject* %134)
  br label %135

; <label>:135:                                    ; preds = %128, %117, %110
  br label %136

; <label>:136:                                    ; preds = %135, %80
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load %struct.Node*, %struct.Node** %5, align 8
  %139 = getelementptr inbounds %struct.Node, %struct.Node* %138, i32 1
  store %struct.Node* %139, %struct.Node** %5, align 8
  br label %70

; <label>:140:                                    ; preds = %70
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removeentry(%struct.Node*) #0 {
  %2 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  %3 = load %struct.Node*, %struct.Node** %2, align 8
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  %5 = bitcast %union.TKey* %4 to %struct.lua_TValue*
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 64
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %1
  %11 = load %struct.Node*, %struct.Node** %2, align 8
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 1
  %13 = bitcast %union.TKey* %12 to %struct.lua_TValue*
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %16, i32 0, i32 2
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %10
  %23 = load %struct.Node*, %struct.Node** %2, align 8
  %24 = getelementptr inbounds %struct.Node, %struct.Node* %23, i32 0, i32 1
  %25 = bitcast %union.TKey* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  store i32 10, i32* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %22, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscleared(%struct.global_State*, %struct.lua_TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 64
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %41

; <label>:18:                                     ; preds = %12
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.TString*
  %25 = getelementptr inbounds %struct.TString, %struct.TString* %24, i32 0, i32 2
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %18
  %31 = load %struct.global_State*, %struct.global_State** %4, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*
  %37 = bitcast %union.GCUnion* %36 to %struct.TString*
  %38 = bitcast %struct.TString* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %31, %struct.GCObject* %39)
  br label %40

; <label>:40:                                     ; preds = %30, %18
  store i32 0, i32* %3, align 4
  br label %50

; <label>:41:                                     ; preds = %12
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 3
  store i32 %49, i32* %3, align 4
  br label %50

; <label>:50:                                     ; preds = %41, %40, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare hidden void @luaD_shrinkstack(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remarkupvals(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State**, align 8
  %5 = alloca %struct.UpVal*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %6 = load %struct.global_State*, %struct.global_State** %2, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 23
  store %struct.lua_State** %7, %struct.lua_State*** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %89, %1
  %9 = load %struct.lua_State**, %struct.lua_State*** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  store %struct.lua_State* %10, %struct.lua_State** %3, align 8
  %11 = icmp ne %struct.lua_State* %10, null
  br i1 %11, label %12, label %90

; <label>:12:                                     ; preds = %8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 7
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %12
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 11
  %22 = load %struct.UpVal*, %struct.UpVal** %21, align 8
  %23 = icmp ne %struct.UpVal* %22, null
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %19
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 13
  store %struct.lua_State** %26, %struct.lua_State*** %4, align 8
  br label %89

; <label>:27:                                     ; preds = %19, %12
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 13
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8
  %31 = load %struct.lua_State**, %struct.lua_State*** %4, align 8
  store %struct.lua_State* %30, %struct.lua_State** %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 13
  store %struct.lua_State* %32, %struct.lua_State** %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 11
  %37 = load %struct.UpVal*, %struct.UpVal** %36, align 8
  store %struct.UpVal* %37, %struct.UpVal** %5, align 8
  br label %38

; <label>:38:                                     ; preds = %82, %27
  %39 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %40 = icmp ne %struct.UpVal* %39, null
  br i1 %40, label %41, label %88

; <label>:41:                                     ; preds = %38
  %42 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %43 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %42, i32 0, i32 2
  %44 = bitcast %union.anon.3* %43 to %struct.anon.4*
  %45 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

; <label>:48:                                     ; preds = %41
  %49 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %50 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %49, i32 0, i32 0
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 64
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

; <label>:56:                                     ; preds = %48
  %57 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %58 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %57, i32 0, i32 0
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to %struct.GCObject**
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8
  %63 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 3
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %56
  %69 = load %struct.global_State*, %struct.global_State** %2, align 8
  %70 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %71 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %70, i32 0, i32 0
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i32 0, i32 0
  %74 = bitcast %union.Value* %73 to %struct.GCObject**
  %75 = load %struct.GCObject*, %struct.GCObject** %74, align 8
  call void @reallymarkobject(%struct.global_State* %69, %struct.GCObject* %75)
  br label %76

; <label>:76:                                     ; preds = %68, %56, %48
  %77 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %78 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %77, i32 0, i32 2
  %79 = bitcast %union.anon.3* %78 to %struct.anon.4*
  %80 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  br label %81

; <label>:81:                                     ; preds = %76, %41
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %84 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %83, i32 0, i32 2
  %85 = bitcast %union.anon.3* %84 to %struct.anon.4*
  %86 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %85, i32 0, i32 0
  %87 = load %struct.UpVal*, %struct.UpVal** %86, align 8
  store %struct.UpVal* %87, %struct.UpVal** %5, align 8
  br label %38

; <label>:88:                                     ; preds = %38
  br label %89

; <label>:89:                                     ; preds = %88, %24
  br label %8

; <label>:90:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convergeephemerons(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  br label %6

; <label>:6:                                      ; preds = %31, %1
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 19
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  store %struct.GCObject* %9, %struct.GCObject** %5, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 19
  store %struct.GCObject* null, %struct.GCObject** %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %29, %6
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %13, %struct.GCObject** %4, align 8
  %14 = icmp ne %struct.GCObject* %13, null
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %12
  %16 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 10
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  store %struct.GCObject* %20, %struct.GCObject** %5, align 8
  %21 = load %struct.global_State*, %struct.global_State** %2, align 8
  %22 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = call i32 @traverseephemeron(%struct.global_State* %21, %struct.Table* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %15
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  call void @propagateall(%struct.global_State* %28)
  store i32 1, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %15
  br label %12

; <label>:30:                                     ; preds = %12
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %6, label %34

; <label>:34:                                     ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.Node*, align 8
  %9 = alloca %struct.Node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  br label %12

; <label>:12:                                     ; preds = %85, %3
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %14 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %15 = icmp ne %struct.GCObject* %13, %14
  br i1 %15, label %16, label %91

; <label>:16:                                     ; preds = %12
  %17 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.Table*
  store %struct.Table* %19, %struct.Table** %7, align 8
  %20 = load %struct.Table*, %struct.Table** %7, align 8
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %20, i32 0, i32 7
  %22 = load %struct.Node*, %struct.Node** %21, align 8
  %23 = load %struct.Table*, %struct.Table** %7, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 4
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Node, %struct.Node* %22, i64 %28
  store %struct.Node* %29, %struct.Node** %9, align 8
  store i32 0, i32* %10, align 4
  br label %30

; <label>:30:                                     ; preds = %51, %16
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.Table*, %struct.Table** %7, align 8
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %30
  %37 = load %struct.Table*, %struct.Table** %7, align 8
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %37, i32 0, i32 6
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 %41
  store %struct.lua_TValue* %42, %struct.lua_TValue** %11, align 8
  %43 = load %struct.global_State*, %struct.global_State** %4, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %45 = call i32 @iscleared(%struct.global_State* %43, %struct.lua_TValue* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %36
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

; <label>:50:                                     ; preds = %47, %36
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %30

; <label>:54:                                     ; preds = %30
  %55 = load %struct.Table*, %struct.Table** %7, align 8
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %55, i32 0, i32 7
  %57 = load %struct.Node*, %struct.Node** %56, align 8
  %58 = getelementptr inbounds %struct.Node, %struct.Node* %57, i64 0
  store %struct.Node* %58, %struct.Node** %8, align 8
  br label %59

; <label>:59:                                     ; preds = %81, %54
  %60 = load %struct.Node*, %struct.Node** %8, align 8
  %61 = load %struct.Node*, %struct.Node** %9, align 8
  %62 = icmp ult %struct.Node* %60, %61
  br i1 %62, label %63, label %84

; <label>:63:                                     ; preds = %59
  %64 = load %struct.Node*, %struct.Node** %8, align 8
  %65 = getelementptr inbounds %struct.Node, %struct.Node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

; <label>:69:                                     ; preds = %63
  %70 = load %struct.global_State*, %struct.global_State** %4, align 8
  %71 = load %struct.Node*, %struct.Node** %8, align 8
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %71, i32 0, i32 0
  %73 = call i32 @iscleared(%struct.global_State* %70, %struct.lua_TValue* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

; <label>:75:                                     ; preds = %69
  %76 = load %struct.Node*, %struct.Node** %8, align 8
  %77 = getelementptr inbounds %struct.Node, %struct.Node* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.Node*, %struct.Node** %8, align 8
  call void @removeentry(%struct.Node* %79)
  br label %80

; <label>:80:                                     ; preds = %75, %69, %63
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load %struct.Node*, %struct.Node** %8, align 8
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %82, i32 1
  store %struct.Node* %83, %struct.Node** %8, align 8
  br label %59

; <label>:84:                                     ; preds = %59
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %87 = bitcast %struct.GCObject* %86 to %union.GCUnion*
  %88 = bitcast %union.GCUnion* %87 to %struct.Table*
  %89 = getelementptr inbounds %struct.Table, %struct.Table* %88, i32 0, i32 10
  %90 = load %struct.GCObject*, %struct.GCObject** %89, align 8
  store %struct.GCObject* %90, %struct.GCObject** %5, align 8
  br label %12

; <label>:91:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearkeys(%struct.global_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.Node*, align 8
  %9 = alloca %struct.Node*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %66, %3
  %11 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %12 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %13 = icmp ne %struct.GCObject* %11, %12
  br i1 %13, label %14, label %72

; <label>:14:                                     ; preds = %10
  %15 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %struct.Table*
  store %struct.Table* %17, %struct.Table** %7, align 8
  %18 = load %struct.Table*, %struct.Table** %7, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 7
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = load %struct.Table*, %struct.Table** %7, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %20, i64 %26
  store %struct.Node* %27, %struct.Node** %9, align 8
  %28 = load %struct.Table*, %struct.Table** %7, align 8
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %28, i32 0, i32 7
  %30 = load %struct.Node*, %struct.Node** %29, align 8
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %30, i64 0
  store %struct.Node* %31, %struct.Node** %8, align 8
  br label %32

; <label>:32:                                     ; preds = %62, %14
  %33 = load %struct.Node*, %struct.Node** %8, align 8
  %34 = load %struct.Node*, %struct.Node** %9, align 8
  %35 = icmp ult %struct.Node* %33, %34
  br i1 %35, label %36, label %65

; <label>:36:                                     ; preds = %32
  %37 = load %struct.Node*, %struct.Node** %8, align 8
  %38 = getelementptr inbounds %struct.Node, %struct.Node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

; <label>:42:                                     ; preds = %36
  %43 = load %struct.global_State*, %struct.global_State** %4, align 8
  %44 = load %struct.Node*, %struct.Node** %8, align 8
  %45 = getelementptr inbounds %struct.Node, %struct.Node* %44, i32 0, i32 1
  %46 = bitcast %union.TKey* %45 to %struct.lua_TValue*
  %47 = call i32 @iscleared(%struct.global_State* %43, %struct.lua_TValue* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

; <label>:49:                                     ; preds = %42
  %50 = load %struct.Node*, %struct.Node** %8, align 8
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %53

; <label>:53:                                     ; preds = %49, %42, %36
  %54 = load %struct.Node*, %struct.Node** %8, align 8
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %53
  %60 = load %struct.Node*, %struct.Node** %8, align 8
  call void @removeentry(%struct.Node* %60)
  br label %61

; <label>:61:                                     ; preds = %59, %53
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load %struct.Node*, %struct.Node** %8, align 8
  %64 = getelementptr inbounds %struct.Node, %struct.Node* %63, i32 1
  store %struct.Node* %64, %struct.Node** %8, align 8
  br label %32

; <label>:65:                                     ; preds = %32
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*
  %69 = bitcast %union.GCUnion* %68 to %struct.Table*
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 10
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  store %struct.GCObject* %71, %struct.GCObject** %5, align 8
  br label %10

; <label>:72:                                     ; preds = %10
  ret void
}

declare hidden void @luaS_clearcache(%struct.global_State*) #1

declare hidden void @luaS_resize(%struct.lua_State*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
