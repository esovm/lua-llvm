; ModuleID = 'lzio.c'
source_filename = "lzio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
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

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaZ_fill(%struct.Zio*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Zio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  store %struct.Zio* %0, %struct.Zio** %3, align 8
  %7 = load %struct.Zio*, %struct.Zio** %3, align 8
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 4
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  store %struct.lua_State* %9, %struct.lua_State** %5, align 8
  %10 = load %struct.Zio*, %struct.Zio** %3, align 8
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 2
  %12 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %11, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.Zio*, %struct.Zio** %3, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* %12(%struct.lua_State* %13, i8* %16, i64* %4)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20, %1
  store i32 -1, i32* %2, align 4
  br label %38

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %25, 1
  %27 = load %struct.Zio*, %struct.Zio** %3, align 8
  %28 = getelementptr inbounds %struct.Zio, %struct.Zio* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.Zio*, %struct.Zio** %3, align 8
  %31 = getelementptr inbounds %struct.Zio, %struct.Zio* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.Zio*, %struct.Zio** %3, align 8
  %33 = getelementptr inbounds %struct.Zio, %struct.Zio* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

; <label>:38:                                     ; preds = %24, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Zio*, align 8
  %7 = alloca i8* (%struct.lua_State*, i8*, i64*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Zio* %1, %struct.Zio** %6, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load %struct.Zio*, %struct.Zio** %6, align 8
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 4
  store %struct.lua_State* %9, %struct.lua_State** %11, align 8
  %12 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  %13 = load %struct.Zio*, %struct.Zio** %6, align 8
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i32 0, i32 2
  store i8* (%struct.lua_State*, i8*, i64*)* %12, i8* (%struct.lua_State*, i8*, i64*)** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.Zio*, %struct.Zio** %6, align 8
  %17 = getelementptr inbounds %struct.Zio, %struct.Zio* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.Zio*, %struct.Zio** %6, align 8
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.Zio*, %struct.Zio** %6, align 8
  %21 = getelementptr inbounds %struct.Zio, %struct.Zio* %20, i32 0, i32 1
  store i8* null, i8** %21, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Zio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Zio* %0, %struct.Zio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

; <label>:9:                                      ; preds = %45, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %68

; <label>:12:                                     ; preds = %9
  %13 = load %struct.Zio*, %struct.Zio** %5, align 8
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %12
  %18 = load %struct.Zio*, %struct.Zio** %5, align 8
  %19 = call i32 @luaZ_fill(%struct.Zio* %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %4, align 8
  br label %69

; <label>:23:                                     ; preds = %17
  %24 = load %struct.Zio*, %struct.Zio** %5, align 8
  %25 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.Zio*, %struct.Zio** %5, align 8
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %29, align 8
  br label %32

; <label>:32:                                     ; preds = %23
  br label %33

; <label>:33:                                     ; preds = %32, %12
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.Zio*, %struct.Zio** %5, align 8
  %36 = getelementptr inbounds %struct.Zio, %struct.Zio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %33
  %40 = load i64, i64* %7, align 8
  br label %45

; <label>:41:                                     ; preds = %33
  %42 = load %struct.Zio*, %struct.Zio** %5, align 8
  %43 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %45

; <label>:45:                                     ; preds = %41, %39
  %46 = phi i64 [ %40, %39 ], [ %44, %41 ]
  store i64 %46, i64* %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.Zio*, %struct.Zio** %5, align 8
  %49 = getelementptr inbounds %struct.Zio, %struct.Zio* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %50, i64 %51, i32 1, i1 false)
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.Zio*, %struct.Zio** %5, align 8
  %54 = getelementptr inbounds %struct.Zio, %struct.Zio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.Zio*, %struct.Zio** %5, align 8
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %57
  store i8* %61, i8** %59, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %9

; <label>:68:                                     ; preds = %9
  store i64 0, i64* %4, align 8
  br label %69

; <label>:69:                                     ; preds = %68, %21
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
