; ModuleID = 'lstring.c'
source_filename = "lstring.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.anon = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: nounwind readonly uwtable
define hidden i32 @luaS_eqlngstr(%struct.TString* readonly, %struct.TString* readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !2
  %5 = icmp eq %struct.TString* %0, %1
  br i1 %5, label %18, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 6, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2
  %9 = icmp eq i64 %4, %8
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %12 = bitcast %struct.TString* %11 to i8*
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 1
  %14 = bitcast %struct.TString* %13 to i8*
  %15 = tail call i32 @memcmp(i8* nonnull %12, i8* nonnull %14, i64 %4) #9
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

; <label>:18:                                     ; preds = %6, %10, %2
  %19 = phi i32 [ 1, %2 ], [ 0, %6 ], [ %17, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly uwtable
define hidden i32 @luaS_hash(i8* nocapture readonly, i64, i32) local_unnamed_addr #2 {
  %4 = trunc i64 %1 to i32
  %5 = xor i32 %4, %2
  %6 = lshr i64 %1, 5
  %7 = icmp ult i64 %6, %1
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %3
  %9 = xor i64 %6, -1
  br label %10

; <label>:10:                                     ; preds = %8, %10
  %11 = phi i64 [ %1, %8 ], [ %22, %10 ]
  %12 = phi i32 [ %5, %8 ], [ %21, %10 ]
  %13 = shl i32 %12, 5
  %14 = lshr i32 %12, 2
  %15 = add i32 %13, %14
  %16 = add i64 %11, -1
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = zext i8 %18 to i32
  %20 = add i32 %15, %19
  %21 = xor i32 %20, %12
  %22 = add i64 %11, %9
  %23 = icmp ugt i64 %22, %6
  br i1 %23, label %10, label %24

; <label>:24:                                     ; preds = %10, %3
  %25 = phi i32 [ %5, %3 ], [ %21, %10 ]
  ret i32 %25
}

; Function Attrs: norecurse nounwind uwtable
define hidden i32 @luaS_hashlongstr(%struct.TString* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 2, !tbaa !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4, !tbaa !9
  br label %37

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %14 = load i32, i32* %13, align 4, !tbaa !9
  %15 = trunc i64 %12 to i32
  %16 = xor i32 %14, %15
  %17 = lshr i64 %12, 5
  %18 = icmp ult i64 %17, %12
  br i1 %18, label %19, label %35

; <label>:19:                                     ; preds = %8
  %20 = xor i64 %17, -1
  br label %21

; <label>:21:                                     ; preds = %21, %19
  %22 = phi i64 [ %12, %19 ], [ %33, %21 ]
  %23 = phi i32 [ %16, %19 ], [ %32, %21 ]
  %24 = shl i32 %23, 5
  %25 = lshr i32 %23, 2
  %26 = add i32 %24, %25
  %27 = add i64 %22, -1
  %28 = getelementptr inbounds i8, i8* %10, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !2
  %30 = zext i8 %29 to i32
  %31 = add i32 %26, %30
  %32 = xor i32 %31, %23
  %33 = add i64 %22, %20
  %34 = icmp ugt i64 %33, %17
  br i1 %34, label %21, label %35

; <label>:35:                                     ; preds = %21, %8
  %36 = phi i32 [ %16, %8 ], [ %32, %21 ]
  store i32 %36, i32* %13, align 4, !tbaa !9
  store i8 1, i8* %2, align 2, !tbaa !5
  br label %37

; <label>:37:                                     ; preds = %5, %35
  %38 = phi i32 [ %7, %5 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, %1
  %9 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %5, i64 0, i32 0
  br i1 %8, label %10, label %39

; <label>:10:                                     ; preds = %2
  %11 = load %struct.TString**, %struct.TString*** %9, align 8, !tbaa !17
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %39

; <label>:13:                                     ; preds = %10
  %14 = add nsw i32 %1, -1
  %15 = zext i32 %7 to i64
  br label %16

; <label>:16:                                     ; preds = %36, %13
  %17 = phi i64 [ 0, %13 ], [ %37, %36 ]
  %18 = getelementptr inbounds %struct.TString*, %struct.TString** %11, i64 %17
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !18
  store %struct.TString* null, %struct.TString** %18, align 8, !tbaa !18
  %20 = icmp eq %struct.TString* %19, null
  br i1 %20, label %36, label %21

; <label>:21:                                     ; preds = %16
  br label %22

; <label>:22:                                     ; preds = %21, %22
  %23 = phi %struct.TString* [ %26, %22 ], [ %19, %21 ]
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %23, i64 0, i32 6
  %25 = bitcast %union.anon* %24 to %struct.TString**
  %26 = load %struct.TString*, %struct.TString** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %23, i64 0, i32 5
  %28 = load i32, i32* %27, align 4, !tbaa !9
  %29 = and i32 %28, %14
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TString*, %struct.TString** %11, i64 %30
  %32 = bitcast %struct.TString** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  store i64 %33, i64* %34, align 8, !tbaa !2
  store %struct.TString* %23, %struct.TString** %31, align 8, !tbaa !18
  %35 = icmp eq %struct.TString* %26, null
  br i1 %35, label %36, label %22

; <label>:36:                                     ; preds = %22, %16
  %37 = add nuw nsw i64 %17, 1
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %39, label %16

; <label>:39:                                     ; preds = %36, %2, %10
  %40 = bitcast %struct.stringtable* %5 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !17
  %42 = sext i32 %7 to i64
  %43 = shl nsw i64 %42, 3
  %44 = sext i32 %1 to i64
  %45 = shl nsw i64 %44, 3
  %46 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %41, i64 %43, i64 %45) #10
  %47 = bitcast i8* %46 to %struct.TString**
  %48 = icmp eq i8* %46, null
  br i1 %48, label %49, label %85, !prof !19

; <label>:49:                                     ; preds = %39
  br i1 %8, label %50, label %121

; <label>:50:                                     ; preds = %49
  %51 = load %struct.TString**, %struct.TString*** %9, align 8, !tbaa !17
  %52 = getelementptr %struct.TString*, %struct.TString** %51, i64 %44
  %53 = bitcast %struct.TString** %52 to i8*
  %54 = add i32 %7, -1
  %55 = sub i32 %54, %1
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 3
  %58 = add nuw nsw i64 %57, 8
  tail call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 %58, i32 8, i1 false) #10
  %59 = icmp sgt i32 %1, 0
  br i1 %59, label %60, label %121

; <label>:60:                                     ; preds = %50
  %61 = zext i32 %1 to i64
  br label %62

; <label>:62:                                     ; preds = %82, %60
  %63 = phi i64 [ 0, %60 ], [ %83, %82 ]
  %64 = getelementptr inbounds %struct.TString*, %struct.TString** %51, i64 %63
  %65 = load %struct.TString*, %struct.TString** %64, align 8, !tbaa !18
  store %struct.TString* null, %struct.TString** %64, align 8, !tbaa !18
  %66 = icmp eq %struct.TString* %65, null
  br i1 %66, label %82, label %67

; <label>:67:                                     ; preds = %62
  br label %68

; <label>:68:                                     ; preds = %67, %68
  %69 = phi %struct.TString* [ %72, %68 ], [ %65, %67 ]
  %70 = getelementptr inbounds %struct.TString, %struct.TString* %69, i64 0, i32 6
  %71 = bitcast %union.anon* %70 to %struct.TString**
  %72 = load %struct.TString*, %struct.TString** %71, align 8, !tbaa !2
  %73 = getelementptr inbounds %struct.TString, %struct.TString* %69, i64 0, i32 5
  %74 = load i32, i32* %73, align 4, !tbaa !9
  %75 = and i32 %74, %54
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TString*, %struct.TString** %51, i64 %76
  %78 = bitcast %struct.TString** %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !18
  %80 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  store i64 %79, i64* %80, align 8, !tbaa !2
  store %struct.TString* %69, %struct.TString** %77, align 8, !tbaa !18
  %81 = icmp eq %struct.TString* %72, null
  br i1 %81, label %82, label %68

; <label>:82:                                     ; preds = %68, %62
  %83 = add nuw nsw i64 %63, 1
  %84 = icmp eq i64 %83, %61
  br i1 %84, label %121, label %62

; <label>:85:                                     ; preds = %39
  store i8* %46, i8** %40, align 8, !tbaa !17
  store i32 %1, i32* %6, align 4, !tbaa !15
  %86 = icmp slt i32 %7, %1
  br i1 %86, label %87, label %121

; <label>:87:                                     ; preds = %85
  %88 = getelementptr %struct.TString*, %struct.TString** %47, i64 %42
  %89 = bitcast %struct.TString** %88 to i8*
  %90 = add i32 %1, -1
  %91 = sub i32 %90, %7
  %92 = zext i32 %91 to i64
  %93 = shl nuw nsw i64 %92, 3
  %94 = add nuw nsw i64 %93, 8
  tail call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 %94, i32 8, i1 false) #10
  %95 = icmp sgt i32 %7, 0
  br i1 %95, label %96, label %121

; <label>:96:                                     ; preds = %87
  %97 = zext i32 %7 to i64
  br label %98

; <label>:98:                                     ; preds = %118, %96
  %99 = phi i64 [ 0, %96 ], [ %119, %118 ]
  %100 = getelementptr inbounds %struct.TString*, %struct.TString** %47, i64 %99
  %101 = load %struct.TString*, %struct.TString** %100, align 8, !tbaa !18
  store %struct.TString* null, %struct.TString** %100, align 8, !tbaa !18
  %102 = icmp eq %struct.TString* %101, null
  br i1 %102, label %118, label %103

; <label>:103:                                    ; preds = %98
  br label %104

; <label>:104:                                    ; preds = %103, %104
  %105 = phi %struct.TString* [ %108, %104 ], [ %101, %103 ]
  %106 = getelementptr inbounds %struct.TString, %struct.TString* %105, i64 0, i32 6
  %107 = bitcast %union.anon* %106 to %struct.TString**
  %108 = load %struct.TString*, %struct.TString** %107, align 8, !tbaa !2
  %109 = getelementptr inbounds %struct.TString, %struct.TString* %105, i64 0, i32 5
  %110 = load i32, i32* %109, align 4, !tbaa !9
  %111 = and i32 %110, %90
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TString*, %struct.TString** %47, i64 %112
  %114 = bitcast %struct.TString** %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !18
  %116 = getelementptr inbounds %union.anon, %union.anon* %106, i64 0, i32 0
  store i64 %115, i64* %116, align 8, !tbaa !2
  store %struct.TString* %105, %struct.TString** %113, align 8, !tbaa !18
  %117 = icmp eq %struct.TString* %108, null
  br i1 %117, label %118, label %104

; <label>:118:                                    ; preds = %104, %98
  %119 = add nuw nsw i64 %99, 1
  %120 = icmp eq i64 %119, %97
  br i1 %120, label %121, label %98

; <label>:121:                                    ; preds = %118, %82, %87, %50, %85, %49
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #5

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaS_clearcache(%struct.global_State* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 39
  %3 = bitcast %struct.TString** %2 to i64*
  br label %4

; <label>:4:                                      ; preds = %26, %1
  %5 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 42, i64 %5, i64 0
  %7 = load %struct.TString*, %struct.TString** %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !20
  %10 = and i8 %9, 24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %4
  %13 = load i64, i64* %3, align 8, !tbaa !21
  %14 = bitcast %struct.TString** %6 to i64*
  store i64 %13, i64* %14, align 8, !tbaa !18
  br label %15

; <label>:15:                                     ; preds = %4, %12
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 42, i64 %5, i64 1
  %17 = load %struct.TString*, %struct.TString** %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.TString, %struct.TString* %17, i64 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !20
  %20 = and i8 %19, 24
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %23

; <label>:22:                                     ; preds = %26
  ret void

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* %3, align 8, !tbaa !21
  %25 = bitcast %struct.TString** %16 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !18
  br label %26

; <label>:26:                                     ; preds = %23, %15
  %27 = add nuw nsw i64 %5, 1
  %28 = icmp eq i64 %27, 53
  br i1 %28, label %22, label %4
}

; Function Attrs: nounwind uwtable
define hidden void @luaS_init(%struct.lua_State*) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6
  %5 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 1024, i32 0) #10
  %6 = bitcast %struct.stringtable* %4 to i8**
  store i8* %5, i8** %6, align 8, !tbaa !17
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 1024, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, i32 2
  store i32 128, i32* %7, align 4, !tbaa !15
  %8 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17)
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 39
  store %struct.TString* %8, %struct.TString** %9, align 8, !tbaa !21
  %10 = bitcast %struct.TString* %8 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %10) #10
  %11 = bitcast %struct.TString** %9 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !21
  br label %13

; <label>:13:                                     ; preds = %22, %1
  %14 = phi i64 [ 0, %1 ], [ %37, %22 ]
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %14, i64 0
  %16 = bitcast %struct.TString** %15 to i64*
  store i64 %12, i64* %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %14, i64 1
  %18 = bitcast %struct.TString** %17 to i64*
  store i64 %12, i64* %18, align 8, !tbaa !18
  %19 = or i64 %14, 1
  %20 = icmp eq i64 %19, 53
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %13
  ret void

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %19, i64 0
  %24 = bitcast %struct.TString** %23 to i64*
  store i64 %12, i64* %24, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %19, i64 1
  %26 = bitcast %struct.TString** %25 to i64*
  store i64 %12, i64* %26, align 8, !tbaa !18
  %27 = or i64 %14, 2
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %27, i64 0
  %29 = bitcast %struct.TString** %28 to i64*
  store i64 %12, i64* %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %27, i64 1
  %31 = bitcast %struct.TString** %30 to i64*
  store i64 %12, i64* %31, align 8, !tbaa !18
  %32 = or i64 %14, 3
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %32, i64 0
  %34 = bitcast %struct.TString** %33 to i64*
  store i64 %12, i64* %34, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %32, i64 1
  %36 = bitcast %struct.TString** %35 to i64*
  store i64 %12, i64* %36, align 8, !tbaa !18
  %37 = add nuw nsw i64 %14, 4
  br label %13
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8* nocapture readonly, i64) local_unnamed_addr #4 {
  %4 = icmp ult i64 %2, 41
  br i1 %4, label %5, label %112

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 9
  %9 = load i32, i32* %8, align 8, !tbaa !24
  %10 = trunc i64 %2 to i32
  %11 = xor i32 %9, %10
  %12 = lshr i64 %2, 5
  %13 = icmp ult i64 %12, %2
  br i1 %13, label %14, label %30

; <label>:14:                                     ; preds = %5
  %15 = xor i64 %12, -1
  br label %16

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ %2, %14 ], [ %28, %16 ]
  %18 = phi i32 [ %11, %14 ], [ %27, %16 ]
  %19 = shl i32 %18, 5
  %20 = lshr i32 %18, 2
  %21 = add i32 %19, %20
  %22 = add i64 %17, -1
  %23 = getelementptr inbounds i8, i8* %1, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = zext i8 %24 to i32
  %26 = add i32 %21, %25
  %27 = xor i32 %26, %18
  %28 = add i64 %17, %15
  %29 = icmp ugt i64 %28, %12
  br i1 %29, label %16, label %30

; <label>:30:                                     ; preds = %16, %5
  %31 = phi i32 [ %11, %5 ], [ %27, %16 ]
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 0
  %33 = load %struct.TString**, %struct.TString*** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !15
  %36 = add nsw i32 %35, -1
  %37 = and i32 %36, %31
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TString*, %struct.TString** %33, i64 %38
  %40 = load %struct.TString*, %struct.TString** %39, align 8, !tbaa !2
  %41 = icmp eq %struct.TString* %40, null
  br i1 %41, label %69, label %42

; <label>:42:                                     ; preds = %30
  br label %43

; <label>:43:                                     ; preds = %42, %64
  %44 = phi %struct.TString* [ %67, %64 ], [ %40, %42 ]
  %45 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 4
  %46 = load i8, i8* %45, align 1, !tbaa !25
  %47 = zext i8 %46 to i64
  %48 = icmp eq i64 %47, %2
  br i1 %48, label %49, label %64

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 1
  %51 = bitcast %struct.TString* %50 to i8*
  %52 = tail call i32 @memcmp(i8* %1, i8* nonnull %51, i64 %2) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 2
  %56 = load i8, i8* %55, align 1, !tbaa !20
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 10
  %58 = load i8, i8* %57, align 4, !tbaa !26
  %59 = xor i8 %58, 24
  %60 = and i8 %59, %56
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %129, label %62

; <label>:62:                                     ; preds = %54
  %63 = xor i8 %56, 24
  store i8 %63, i8* %55, align 1, !tbaa !20
  br label %129

; <label>:64:                                     ; preds = %49, %43
  %65 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 6
  %66 = bitcast %union.anon* %65 to %struct.TString**
  %67 = load %struct.TString*, %struct.TString** %66, align 8, !tbaa !2
  %68 = icmp eq %struct.TString* %67, null
  br i1 %68, label %69, label %43

; <label>:69:                                     ; preds = %64, %30
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 1
  %71 = load i32, i32* %70, align 8, !tbaa !27
  %72 = icmp slt i32 %71, %35
  br i1 %72, label %94, label %73

; <label>:73:                                     ; preds = %69
  %74 = icmp eq i32 %71, 2147483647
  br i1 %74, label %75, label %81, !prof !19

; <label>:75:                                     ; preds = %73
  tail call void @luaC_fullgc(%struct.lua_State* %0, i32 1) #10
  %76 = load i32, i32* %70, align 8, !tbaa !27
  %77 = icmp eq i32 %76, 2147483647
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %34, align 4, !tbaa !15
  br label %81

; <label>:80:                                     ; preds = %75
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #11
  unreachable

; <label>:81:                                     ; preds = %78, %73
  %82 = phi i32 [ %79, %78 ], [ %35, %73 ]
  %83 = icmp slt i32 %82, 1073741824
  br i1 %83, label %84, label %87

; <label>:84:                                     ; preds = %81
  %85 = shl nsw i32 %82, 1
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %85) #10
  %86 = load i32, i32* %34, align 4, !tbaa !15
  br label %87

; <label>:87:                                     ; preds = %84, %81
  %88 = phi i32 [ %82, %81 ], [ %86, %84 ]
  %89 = load %struct.TString**, %struct.TString*** %32, align 8, !tbaa !17
  %90 = add nsw i32 %88, -1
  %91 = and i32 %90, %31
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TString*, %struct.TString** %89, i64 %92
  br label %94

; <label>:94:                                     ; preds = %87, %69
  %95 = phi %struct.TString** [ %93, %87 ], [ %39, %69 ]
  %96 = add i64 %2, 25
  %97 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 20, i64 %96) #10
  %98 = bitcast %struct.GCObject* %97 to %struct.TString*
  %99 = getelementptr inbounds %struct.TString, %struct.TString* %98, i64 0, i32 5
  store i32 %31, i32* %99, align 4, !tbaa !9
  %100 = getelementptr inbounds %struct.TString, %struct.TString* %98, i64 0, i32 3
  store i8 0, i8* %100, align 2, !tbaa !5
  %101 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %97, i64 1, i32 1
  %102 = getelementptr inbounds i8, i8* %101, i64 %2
  store i8 0, i8* %102, align 1, !tbaa !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %101, i8* %1, i64 %2, i32 1, i1 false) #10
  %103 = trunc i64 %2 to i8
  %104 = getelementptr inbounds %struct.TString, %struct.TString* %98, i64 0, i32 4
  store i8 %103, i8* %104, align 1, !tbaa !25
  %105 = bitcast %struct.TString** %95 to i64*
  %106 = load i64, i64* %105, align 8, !tbaa !18
  %107 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %97, i64 1
  %108 = bitcast %struct.GCObject* %107 to i64*
  store i64 %106, i64* %108, align 8, !tbaa !2
  %109 = bitcast %struct.TString** %95 to %struct.GCObject**
  store %struct.GCObject* %97, %struct.GCObject** %109, align 8, !tbaa !18
  %110 = load i32, i32* %70, align 8, !tbaa !27
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %70, align 8, !tbaa !27
  br label %129

; <label>:112:                                    ; preds = %3
  %113 = icmp ugt i64 %2, 9223372036854775782
  br i1 %113, label %114, label %115, !prof !19

; <label>:114:                                    ; preds = %112
  tail call void @luaM_toobig(%struct.lua_State* %0) #11
  unreachable

; <label>:115:                                    ; preds = %112
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %117 = load %struct.global_State*, %struct.global_State** %116, align 8, !tbaa !10
  %118 = getelementptr inbounds %struct.global_State, %struct.global_State* %117, i64 0, i32 9
  %119 = load i32, i32* %118, align 8, !tbaa !24
  %120 = add i64 %2, 25
  %121 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 36, i64 %120) #10
  %122 = bitcast %struct.GCObject* %121 to %struct.TString*
  %123 = getelementptr inbounds %struct.TString, %struct.TString* %122, i64 0, i32 5
  store i32 %119, i32* %123, align 4, !tbaa !9
  %124 = getelementptr inbounds %struct.TString, %struct.TString* %122, i64 0, i32 3
  store i8 0, i8* %124, align 2, !tbaa !5
  %125 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %121, i64 1, i32 1
  %126 = getelementptr inbounds i8, i8* %125, i64 %2
  store i8 0, i8* %126, align 1, !tbaa !2
  %127 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %121, i64 1
  %128 = bitcast %struct.GCObject* %127 to i64*
  store i64 %2, i64* %128, align 8, !tbaa !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %125, i8* %1, i64 %2, i32 1, i1 false)
  br label %129

; <label>:129:                                    ; preds = %94, %62, %54, %115
  %130 = phi %struct.TString* [ %122, %115 ], [ %98, %94 ], [ %44, %54 ], [ %44, %62 ]
  ret %struct.TString* %130
}

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9
  %6 = load i32, i32* %5, align 8, !tbaa !24
  %7 = add i64 %1, 25
  %8 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 36, i64 %7) #10
  %9 = bitcast %struct.GCObject* %8 to %struct.TString*
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 5
  store i32 %6, i32* %10, align 4, !tbaa !9
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 3
  store i8 0, i8* %11, align 2, !tbaa !5
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 1, i32 1
  %13 = getelementptr inbounds i8, i8* %12, i64 %1
  store i8 0, i8* %13, align 1, !tbaa !2
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 1
  %15 = bitcast %struct.GCObject* %14 to i64*
  store i64 %1, i64* %15, align 8, !tbaa !2
  ret %struct.TString* %9
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaS_remove(%struct.lua_State* nocapture readonly, %struct.TString* readonly) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 0
  %6 = load %struct.TString**, %struct.TString*** %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !15
  %11 = add nsw i32 %10, -1
  %12 = and i32 %11, %8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TString*, %struct.TString** %6, i64 %13
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !18
  %16 = icmp eq %struct.TString* %15, %1
  br i1 %16, label %26, label %17

; <label>:17:                                     ; preds = %2
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi %struct.TString* [ %22, %18 ], [ %15, %17 ]
  %20 = getelementptr inbounds %struct.TString, %struct.TString* %19, i64 0, i32 6
  %21 = bitcast %union.anon* %20 to %struct.TString**
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !18
  %23 = icmp eq %struct.TString* %22, %1
  br i1 %23, label %24, label %18

; <label>:24:                                     ; preds = %18
  %25 = bitcast %union.anon* %20 to %struct.TString**
  br label %26

; <label>:26:                                     ; preds = %24, %2
  %27 = phi %struct.TString** [ %14, %2 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 6, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2
  %30 = bitcast %struct.TString** %27 to i64*
  store i64 %29, i64* %30, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 1
  %32 = load i32, i32* %31, align 8, !tbaa !27
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8, !tbaa !27
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #4 {
  %3 = ptrtoint i8* %1 to i64
  %4 = trunc i64 %3 to i32
  %5 = urem i32 %4, 53
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !10
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 0
  %10 = load %struct.TString*, %struct.TString** %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 1
  %12 = bitcast %struct.TString* %11 to i8*
  %13 = tail call i32 @strcmp(i8* %1, i8* nonnull %12) #9
  %14 = icmp eq i32 %13, 0
  %15 = ptrtoint %struct.TString* %10 to i64
  br i1 %14, label %23, label %16

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 1
  %18 = load %struct.TString*, %struct.TString** %17, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 1
  %20 = bitcast %struct.TString* %19 to i8*
  %21 = tail call i32 @strcmp(i8* %1, i8* nonnull %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %2, %16, %25
  %24 = phi %struct.TString* [ %28, %25 ], [ %10, %2 ], [ %18, %16 ]
  ret %struct.TString* %24

; <label>:25:                                     ; preds = %16
  %26 = bitcast %struct.TString** %17 to i64*
  store i64 %15, i64* %26, align 8, !tbaa !18
  %27 = tail call i64 @strlen(i8* %1) #9
  %28 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %1, i64 %27)
  store %struct.TString* %28, %struct.TString** %9, align 8, !tbaa !18
  br label %23
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64, i32) local_unnamed_addr #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 4
  %8 = sub i64 9223372036854775767, %7
  br label %9

; <label>:9:                                      ; preds = %3, %5
  %10 = phi i64 [ %8, %5 ], [ 9223372036854775775, %3 ]
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %12, label %13, !prof !19

; <label>:12:                                     ; preds = %9
  tail call void @luaM_toobig(%struct.lua_State* %0) #11
  unreachable

; <label>:13:                                     ; preds = %9
  br i1 %4, label %18, label %14

; <label>:14:                                     ; preds = %13
  %15 = sext i32 %2 to i64
  %16 = shl nsw i64 %15, 4
  %17 = add nsw i64 %16, 40
  br label %18

; <label>:18:                                     ; preds = %13, %14
  %19 = phi i64 [ %17, %14 ], [ 32, %13 ]
  %20 = add i64 %19, %1
  %21 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 7, i64 %20) #10
  %22 = bitcast %struct.GCObject* %21 to %struct.Udata*
  %23 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 1
  %24 = bitcast %struct.GCObject* %23 to i64*
  store i64 %1, i64* %24, align 8, !tbaa !28
  %25 = trunc i32 %2 to i16
  %26 = getelementptr inbounds %struct.Udata, %struct.Udata* %22, i64 0, i32 3
  store i16 %25, i16* %26, align 2, !tbaa !30
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 1, i32 1
  %28 = bitcast i8* %27 to %struct.Table**
  store %struct.Table* null, %struct.Table** %28, align 8, !tbaa !31
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %63

; <label>:30:                                     ; preds = %18
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 2, i32 1
  %32 = bitcast i8* %31 to [1 x %union.UValue]*
  %33 = zext i32 %2 to i64
  %34 = add nsw i64 %33, -1
  %35 = and i64 %33, 3
  %36 = icmp ult i64 %34, 3
  br i1 %36, label %52, label %37

; <label>:37:                                     ; preds = %30
  %38 = sub nsw i64 %33, %35
  br label %39

; <label>:39:                                     ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %49, %39 ]
  %41 = phi i64 [ %38, %37 ], [ %50, %39 ]
  %42 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %40, i32 0, i32 1
  store i8 0, i8* %42, align 8, !tbaa !2
  %43 = or i64 %40, 1
  %44 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %43, i32 0, i32 1
  store i8 0, i8* %44, align 8, !tbaa !2
  %45 = or i64 %40, 2
  %46 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %45, i32 0, i32 1
  store i8 0, i8* %46, align 8, !tbaa !2
  %47 = or i64 %40, 3
  %48 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %47, i32 0, i32 1
  store i8 0, i8* %48, align 8, !tbaa !2
  %49 = add nuw nsw i64 %40, 4
  %50 = add i64 %41, -4
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %39

; <label>:52:                                     ; preds = %39, %30
  %53 = phi i64 [ 0, %30 ], [ %49, %39 ]
  %54 = icmp eq i64 %35, 0
  br i1 %54, label %63, label %55

; <label>:55:                                     ; preds = %52
  br label %56

; <label>:56:                                     ; preds = %56, %55
  %57 = phi i64 [ %53, %55 ], [ %60, %56 ]
  %58 = phi i64 [ %35, %55 ], [ %61, %56 ]
  %59 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %57, i32 0, i32 1
  store i8 0, i8* %59, align 8, !tbaa !2
  %60 = add nuw nsw i64 %57, 1
  %61 = add i64 %58, -1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %56, !llvm.loop !32

; <label>:63:                                     ; preds = %52, %56, %18
  ret %struct.Udata* %22
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #5

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #5

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

attributes #0 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 10}
!6 = !{!"TString", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !8, i64 12, !3, i64 16}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !8, i64 12}
!10 = !{!11, !7, i64 24}
!11 = !{!"lua_State", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !13, i64 96, !7, i64 160, !14, i64 168, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192}
!12 = !{!"short", !3, i64 0}
!13 = !{!"CallInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 56, !12, i64 60, !12, i64 62}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !8, i64 12}
!16 = !{!"stringtable", !7, i64 0, !8, i64 8, !8, i64 12}
!17 = !{!16, !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!6, !3, i64 9}
!21 = !{!22, !7, i64 264}
!22 = !{!"global_State", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !16, i64 48, !23, i64 64, !23, i64 80, !8, i64 96, !3, i64 100, !3, i64 101, !3, i64 102, !3, i64 103, !3, i64 104, !3, i64 105, !3, i64 106, !3, i64 107, !3, i64 108, !3, i64 109, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !3, i64 272, !3, i64 472, !3, i64 544, !7, i64 1392, !7, i64 1400}
!23 = !{!"TValue", !3, i64 0, !3, i64 8}
!24 = !{!22, !8, i64 96}
!25 = !{!6, !3, i64 11}
!26 = !{!22, !3, i64 100}
!27 = !{!16, !8, i64 8}
!28 = !{!29, !14, i64 16}
!29 = !{!"Udata", !7, i64 0, !3, i64 8, !3, i64 9, !12, i64 10, !14, i64 16, !7, i64 24, !7, i64 32, !3, i64 40}
!30 = !{!29, !12, i64 10}
!31 = !{!29, !7, i64 24}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
