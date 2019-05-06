; ModuleID = 'lmem.c'
source_filename = "lmem.c"
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

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %31

; <label>:20:                                     ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %20
  %26 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %11, align 4
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* %27, i32 %28) #4
  unreachable

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %14, align 4
  br label %39

; <label>:31:                                     ; preds = %6
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %31
  store i32 4, i32* %14, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %31
  br label %39

; <label>:39:                                     ; preds = %38, %29
  %40 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = mul i64 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %10, align 8
  %50 = mul i64 %48, %49
  %51 = call i8* @luaM_realloc_(%struct.lua_State* %40, i8* %41, i64 %46, i64 %50)
  store i8* %51, i8** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %13, align 8
  ret i8* %54
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.global_State*, align 8
  %11 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  store %struct.global_State* %14, %struct.global_State** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i64, i64* %7, align 8
  br label %20

; <label>:19:                                     ; preds = %4
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = phi i64 [ %18, %17 ], [ 0, %19 ]
  store i64 %21, i64* %11, align 8
  %22 = load %struct.global_State*, %struct.global_State** %10, align 8
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 0
  %24 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %23, align 8
  %25 = load %struct.global_State*, %struct.global_State** %10, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i8* %24(i8* %27, i8* %28, i64 %29, i64 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %60

; <label>:34:                                     ; preds = %20
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %34
  %38 = load %struct.global_State*, %struct.global_State** %10, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 29
  %40 = load double*, double** %39, align 8
  %41 = icmp ne double* %40, null
  br i1 %41, label %42, label %54

; <label>:42:                                     ; preds = %37
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_fullgc(%struct.lua_State* %43, i32 1)
  %44 = load %struct.global_State*, %struct.global_State** %10, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 0
  %46 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %45, align 8
  %47 = load %struct.global_State*, %struct.global_State** %10, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i8* %46(i8* %49, i8* %50, i64 %51, i64 %52)
  store i8* %53, i8** %9, align 8
  br label %54

; <label>:54:                                     ; preds = %42, %37
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %58, i32 4) #4
  unreachable

; <label>:59:                                     ; preds = %54
  br label %60

; <label>:60:                                     ; preds = %59, %34, %20
  %61 = load %struct.global_State*, %struct.global_State** %10, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %65, %66
  %68 = load %struct.global_State*, %struct.global_State** %10, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %9, align 8
  ret i8* %70
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaM_toobig(%struct.lua_State*) #2 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #3

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
