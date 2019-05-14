; ModuleID = 'lmem.c'
source_filename = "lmem.c"
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

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32* nocapture, i32, i32, i8*) local_unnamed_addr #0 {
  %8 = load i32, i32* %3, align 4, !tbaa !2
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %65, label %10

; <label>:10:                                     ; preds = %7
  %11 = sdiv i32 %5, 2
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp slt i32 %8, %5
  br i1 %14, label %20, label %15, !prof !6

; <label>:15:                                     ; preds = %13
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %5) #4
  unreachable

; <label>:16:                                     ; preds = %10
  %17 = shl nsw i32 %8, 1
  %18 = icmp sgt i32 %17, 4
  %19 = select i1 %18, i32 %17, i32 4
  br label %20

; <label>:20:                                     ; preds = %13, %16
  %21 = phi i32 [ %19, %16 ], [ %5, %13 ]
  %22 = sext i32 %8 to i64
  %23 = sext i32 %4 to i64
  %24 = mul nsw i64 %22, %23
  %25 = sext i32 %21 to i64
  %26 = mul nsw i64 %25, %23
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %28 = load %struct.global_State*, %struct.global_State** %27, align 8, !tbaa !7
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0
  %30 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %29, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 1
  %32 = load i8*, i8** %31, align 8, !tbaa !17
  %33 = tail call i8* %30(i8* %32, i8* %1, i64 %24, i64 %26) #5
  %34 = icmp eq i8* %33, null
  %35 = icmp ne i64 %26, 0
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %57, !prof !18

; <label>:37:                                     ; preds = %20
  %38 = icmp ugt i64 %26, %24
  br i1 %38, label %39, label %62

; <label>:39:                                     ; preds = %37
  %40 = load %struct.global_State*, %struct.global_State** %27, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 8, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !19
  %43 = and i8 %42, 15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %62

; <label>:45:                                     ; preds = %39
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 1) #5
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 0
  %47 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %46, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 1
  %49 = load i8*, i8** %48, align 8, !tbaa !17
  %50 = tail call i8* %47(i8* %49, i8* %1, i64 %24, i64 %26) #5
  %51 = icmp eq i8* %50, null
  br i1 %51, label %62, label %52

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 3
  %54 = load i64, i64* %53, align 8, !tbaa !20
  %55 = sub i64 %26, %24
  %56 = add i64 %55, %54
  store i64 %56, i64* %53, align 8, !tbaa !20
  br label %63

; <label>:57:                                     ; preds = %20
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 3
  %59 = load i64, i64* %58, align 8, !tbaa !20
  %60 = sub i64 %26, %24
  %61 = add i64 %60, %59
  store i64 %61, i64* %58, align 8, !tbaa !20
  br i1 %34, label %62, label %63, !prof !18

; <label>:62:                                     ; preds = %39, %37, %45, %57
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:63:                                     ; preds = %52, %57
  %64 = phi i8* [ %50, %52 ], [ %33, %57 ]
  store i32 %21, i32* %3, align 4, !tbaa !2
  br label %65

; <label>:65:                                     ; preds = %7, %63
  %66 = phi i8* [ %64, %63 ], [ %1, %7 ]
  ret i8* %66
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !17
  %11 = tail call i8* %8(i8* %10, i8* %1, i64 %2, i64 %3) #5
  %12 = icmp eq i8* %11, null
  %13 = icmp ne i64 %3, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %30, !prof !18

; <label>:15:                                     ; preds = %4
  %16 = icmp ugt i64 %3, %2
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %15
  %18 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !19
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %36

; <label>:23:                                     ; preds = %17
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 1) #5
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 0
  %25 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 1
  %27 = load i8*, i8** %26, align 8, !tbaa !17
  %28 = tail call i8* %25(i8* %27, i8* %1, i64 %2, i64 %3) #5
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %23, %4
  %31 = phi i8* [ %28, %23 ], [ %11, %4 ]
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %33 = load i64, i64* %32, align 8, !tbaa !20
  %34 = sub i64 %3, %2
  %35 = add i64 %34, %33
  store i64 %35, i64* %32, align 8, !tbaa !20
  br label %36

; <label>:36:                                     ; preds = %17, %15, %23, %30
  %37 = phi i8* [ %31, %30 ], [ null, %23 ], [ null, %15 ], [ null, %17 ]
  ret i8* %37
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32* nocapture, i32, i32) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !7
  %8 = load i32, i32* %2, align 4, !tbaa !2
  %9 = mul nsw i32 %8, %4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i32 %4, %3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 0
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8, !tbaa !17
  %17 = tail call i8* %14(i8* %16, i8* %1, i64 %10, i64 %12) #5
  %18 = icmp eq i8* %17, null
  %19 = icmp sgt i32 %3, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %22, !prof !18

; <label>:21:                                     ; preds = %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:22:                                     ; preds = %5
  %23 = sub nsw i64 %12, %10
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !20
  %26 = add i64 %23, %25
  store i64 %26, i64* %24, align 8, !tbaa !20
  store i32 %3, i32* %2, align 4, !tbaa !2
  ret i8* %17
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2 {
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @luaM_free_(%struct.lua_State* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 0
  %7 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8, !tbaa !17
  %10 = tail call i8* %7(i8* %9, i8* %1, i64 %2, i64 0) #5
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !20
  %13 = sub i64 %12, %2
  store i64 %13, i64* %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !17
  %11 = tail call i8* %8(i8* %10, i8* %1, i64 %2, i64 %3) #5
  %12 = icmp eq i8* %11, null
  %13 = icmp ne i64 %3, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %30, !prof !18

; <label>:15:                                     ; preds = %4
  %16 = icmp ugt i64 %3, %2
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %15
  %18 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !19
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %36

; <label>:23:                                     ; preds = %17
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 1) #5
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 0
  %25 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 1
  %27 = load i8*, i8** %26, align 8, !tbaa !17
  %28 = tail call i8* %25(i8* %27, i8* %1, i64 %2, i64 %3) #5
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %23, %4
  %31 = phi i8* [ %28, %23 ], [ %11, %4 ]
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %33 = load i64, i64* %32, align 8, !tbaa !20
  %34 = sub i64 %3, %2
  %35 = add i64 %34, %33
  store i64 %35, i64* %32, align 8, !tbaa !20
  br label %36

; <label>:36:                                     ; preds = %15, %17, %23, %30
  %37 = phi i8* [ %31, %30 ], [ null, %23 ], [ null, %15 ], [ null, %17 ]
  %38 = icmp eq i8* %37, null
  %39 = and i1 %13, %38
  br i1 %39, label %40, label %41, !prof !18

; <label>:40:                                     ; preds = %36
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:41:                                     ; preds = %36
  ret i8* %37
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %34, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 0
  %9 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !17
  %12 = sext i32 %2 to i64
  %13 = tail call i8* %9(i8* %11, i8* null, i64 %12, i64 %1) #5
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %29, !prof !18

; <label>:15:                                     ; preds = %5
  %16 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i64 0, i32 8, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !19
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %15
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 1) #5
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i64 0, i32 0
  %23 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !17
  %26 = tail call i8* %23(i8* %25, i8* null, i64 %12, i64 %1) #5
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %15, %21
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:29:                                     ; preds = %21, %5
  %30 = phi i8* [ %26, %21 ], [ %13, %5 ]
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 3
  %32 = load i64, i64* %31, align 8, !tbaa !20
  %33 = add i64 %32, %1
  store i64 %33, i64* %31, align 8, !tbaa !20
  br label %34

; <label>:34:                                     ; preds = %3, %29
  %35 = phi i8* [ %30, %29 ], [ null, %3 ]
  ret i8* %35
}

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"branch_weights", i32 2000, i32 1}
!7 = !{!8, !9, i64 24}
!8 = !{!"lua_State", !9, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !10, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !11, i64 96, !9, i64 160, !12, i64 168, !3, i64 176, !3, i64 180, !3, i64 184, !3, i64 188, !3, i64 192}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"CallInfo", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !4, i64 32, !4, i64 56, !10, i64 60, !10, i64 62}
!12 = !{!"long", !4, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"global_State", !9, i64 0, !9, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !15, i64 48, !16, i64 64, !16, i64 80, !3, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !9, i64 1392, !9, i64 1400}
!15 = !{!"stringtable", !9, i64 0, !3, i64 8, !3, i64 12}
!16 = !{!"TValue", !4, i64 0, !4, i64 8}
!17 = !{!14, !9, i64 8}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!14, !4, i64 88}
!20 = !{!14, !12, i64 24}
