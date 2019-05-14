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

; Function Attrs: minsize nounwind optsize readonly uwtable
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

; Function Attrs: minsize nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define hidden i32 @luaS_hash(i8* nocapture readonly, i64, i32) local_unnamed_addr #2 {
  %4 = trunc i64 %1 to i32
  %5 = xor i32 %4, %2
  %6 = lshr i64 %1, 5
  %7 = xor i64 %6, -1
  br label %8

; <label>:8:                                      ; preds = %12, %3
  %9 = phi i32 [ %5, %3 ], [ %21, %12 ]
  %10 = phi i64 [ %1, %3 ], [ %22, %12 ]
  %11 = icmp ugt i64 %10, %6
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %8
  %13 = shl i32 %9, 5
  %14 = lshr i32 %9, 2
  %15 = add i32 %13, %14
  %16 = add i64 %10, -1
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = zext i8 %18 to i32
  %20 = add i32 %15, %19
  %21 = xor i32 %20, %9
  %22 = add i64 %10, %7
  br label %8

; <label>:23:                                     ; preds = %8
  ret i32 %9
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden i32 @luaS_hashlongstr(%struct.TString* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 2, !tbaa !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4, !tbaa !9
  br label %16

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %14 = load i32, i32* %13, align 4, !tbaa !9
  %15 = tail call i32 @luaS_hash(i8* nonnull %10, i64 %12, i32 %14) #10
  store i32 %15, i32* %13, align 4, !tbaa !9
  store i8 1, i8* %2, align 2, !tbaa !5
  br label %16

; <label>:16:                                     ; preds = %5, %8
  %17 = phi i32 [ %7, %5 ], [ %15, %8 ]
  ret i32 %17
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, %1
  %9 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %5, i64 0, i32 0
  br i1 %8, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load %struct.TString**, %struct.TString*** %9, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %11, i32 %7, i32 %1) #10
  br label %12

; <label>:12:                                     ; preds = %2, %10
  %13 = bitcast %struct.stringtable* %5 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !17
  %15 = sext i32 %7 to i64
  %16 = shl nsw i64 %15, 3
  %17 = sext i32 %1 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %14, i64 %16, i64 %18) #11
  %20 = bitcast i8* %19 to %struct.TString**
  %21 = icmp eq i8* %19, null
  br i1 %21, label %22, label %25, !prof !18

; <label>:22:                                     ; preds = %12
  br i1 %8, label %23, label %28

; <label>:23:                                     ; preds = %22
  %24 = load %struct.TString**, %struct.TString*** %9, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %24, i32 %1, i32 %7) #10
  br label %28

; <label>:25:                                     ; preds = %12
  store i8* %19, i8** %13, align 8, !tbaa !17
  store i32 %1, i32* %6, align 4, !tbaa !15
  %26 = icmp slt i32 %7, %1
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %25
  tail call fastcc void @tablerehash(%struct.TString** %20, i32 %7, i32 %1) #10
  br label %28

; <label>:28:                                     ; preds = %25, %27, %22, %23
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @tablerehash(%struct.TString** nocapture, i32, i32) unnamed_addr #3 {
  %4 = sext i32 %1 to i64
  %5 = sext i32 %2 to i64
  br label %6

; <label>:6:                                      ; preds = %9, %3
  %7 = phi i64 [ %11, %9 ], [ %4, %3 ]
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.TString*, %struct.TString** %0, i64 %7
  store %struct.TString* null, %struct.TString** %10, align 8, !tbaa !19
  %11 = add nsw i64 %7, 1
  br label %6

; <label>:12:                                     ; preds = %6
  %13 = add nsw i32 %2, -1
  br label %14

; <label>:14:                                     ; preds = %35, %12
  %15 = phi i64 [ %36, %35 ], [ 0, %12 ]
  %16 = icmp slt i64 %15, %4
  br i1 %16, label %17, label %37

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.TString*, %struct.TString** %0, i64 %15
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !19
  store %struct.TString* null, %struct.TString** %18, align 8, !tbaa !19
  br label %20

; <label>:20:                                     ; preds = %23, %17
  %21 = phi %struct.TString* [ %19, %17 ], [ %26, %23 ]
  %22 = icmp eq %struct.TString* %21, null
  br i1 %22, label %35, label %23

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 6
  %25 = bitcast %union.anon* %24 to %struct.TString**
  %26 = load %struct.TString*, %struct.TString** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 5
  %28 = load i32, i32* %27, align 4, !tbaa !9
  %29 = and i32 %28, %13
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TString*, %struct.TString** %0, i64 %30
  %32 = bitcast %struct.TString** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  store i64 %33, i64* %34, align 8, !tbaa !2
  store %struct.TString* %21, %struct.TString** %31, align 8, !tbaa !19
  br label %20

; <label>:35:                                     ; preds = %20
  %36 = add nuw nsw i64 %15, 1
  br label %14

; <label>:37:                                     ; preds = %14
  ret void
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #5

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden void @luaS_clearcache(%struct.global_State* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 39
  %3 = bitcast %struct.TString** %2 to i64*
  br label %4

; <label>:4:                                      ; preds = %23, %1
  %5 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %25, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %21
  %9 = phi i64 [ %22, %21 ], [ 0, %7 ]
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %23, label %11

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 42, i64 %5, i64 %9
  %13 = load %struct.TString*, %struct.TString** %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.TString, %struct.TString* %13, i64 0, i32 2
  %15 = load i8, i8* %14, align 1, !tbaa !20
  %16 = and i8 %15, 24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8, !tbaa !21
  %20 = bitcast %struct.TString** %12 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !19
  br label %21

; <label>:21:                                     ; preds = %11, %18
  %22 = add nuw nsw i64 %9, 1
  br label %8

; <label>:23:                                     ; preds = %8
  %24 = add nuw nsw i64 %5, 1
  br label %4

; <label>:25:                                     ; preds = %4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaS_init(%struct.lua_State*) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6
  %5 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 1024, i32 0) #11
  %6 = bitcast i8* %5 to %struct.TString**
  %7 = bitcast %struct.stringtable* %4 to i8**
  store i8* %5, i8** %7, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %6, i32 0, i32 128) #10
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, i32 2
  store i32 128, i32* %8, align 4, !tbaa !15
  %9 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #10
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 39
  store %struct.TString* %9, %struct.TString** %10, align 8, !tbaa !21
  %11 = bitcast %struct.TString* %9 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %11) #11
  %12 = bitcast %struct.TString** %10 to i64*
  br label %13

; <label>:13:                                     ; preds = %25, %1
  %14 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %27, label %16

; <label>:16:                                     ; preds = %13
  br label %17

; <label>:17:                                     ; preds = %16, %20
  %18 = phi i64 [ %24, %20 ], [ 0, %16 ]
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %12, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %14, i64 %18
  %23 = bitcast %struct.TString** %22 to i64*
  store i64 %21, i64* %23, align 8, !tbaa !19
  %24 = add nuw nsw i64 %18, 1
  br label %17

; <label>:25:                                     ; preds = %17
  %26 = add nuw nsw i64 %14, 1
  br label %13

; <label>:27:                                     ; preds = %13
  ret void
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8* nocapture readonly, i64) local_unnamed_addr #4 {
  %4 = icmp ult i64 %2, 41
  br i1 %4, label %5, label %83

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 9
  %9 = load i32, i32* %8, align 8, !tbaa !24
  %10 = tail call i32 @luaS_hash(i8* %1, i64 %2, i32 %9) #11
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 0
  %12 = load %struct.TString**, %struct.TString*** %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !15
  %15 = add nsw i32 %14, -1
  %16 = and i32 %15, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TString*, %struct.TString** %12, i64 %17
  br label %19

; <label>:19:                                     ; preds = %43, %5
  %20 = phi %struct.TString** [ %18, %5 ], [ %45, %43 ]
  %21 = load %struct.TString*, %struct.TString** %20, align 8, !tbaa !2
  %22 = icmp eq %struct.TString* %21, null
  br i1 %22, label %46, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 4
  %25 = load i8, i8* %24, align 1, !tbaa !25
  %26 = zext i8 %25 to i64
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %28, label %43

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 1
  %30 = bitcast %struct.TString* %29 to i8*
  %31 = tail call i32 @memcmp(i8* %1, i8* nonnull %30, i64 %2) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !20
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 10
  %37 = load i8, i8* %36, align 4, !tbaa !26
  %38 = xor i8 %37, 24
  %39 = and i8 %38, %35
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %90, label %41

; <label>:41:                                     ; preds = %33
  %42 = xor i8 %35, 24
  store i8 %42, i8* %34, align 1, !tbaa !20
  br label %90

; <label>:43:                                     ; preds = %28, %23
  %44 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 6
  %45 = bitcast %union.anon* %44 to %struct.TString**
  br label %19

; <label>:46:                                     ; preds = %19
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 1
  %48 = load i32, i32* %47, align 8, !tbaa !27
  %49 = icmp slt i32 %48, %14
  br i1 %49, label %71, label %50

; <label>:50:                                     ; preds = %46
  %51 = icmp eq i32 %48, 2147483647
  br i1 %51, label %52, label %58, !prof !18

; <label>:52:                                     ; preds = %50
  tail call void @luaC_fullgc(%struct.lua_State* %0, i32 1) #11
  %53 = load i32, i32* %47, align 8, !tbaa !27
  %54 = icmp eq i32 %53, 2147483647
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %13, align 4, !tbaa !15
  br label %58

; <label>:57:                                     ; preds = %52
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #12
  unreachable

; <label>:58:                                     ; preds = %55, %50
  %59 = phi i32 [ %56, %55 ], [ %14, %50 ]
  %60 = icmp slt i32 %59, 1073741824
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %58
  %62 = shl nsw i32 %59, 1
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %62) #11
  %63 = load i32, i32* %13, align 4, !tbaa !15
  br label %64

; <label>:64:                                     ; preds = %61, %58
  %65 = phi i32 [ %59, %58 ], [ %63, %61 ]
  %66 = load %struct.TString**, %struct.TString*** %11, align 8, !tbaa !17
  %67 = add nsw i32 %65, -1
  %68 = and i32 %67, %10
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TString*, %struct.TString** %66, i64 %69
  br label %71

; <label>:71:                                     ; preds = %64, %46
  %72 = phi %struct.TString** [ %70, %64 ], [ %18, %46 ]
  %73 = tail call fastcc %struct.TString* @createstrobj(%struct.lua_State* %0, i64 %2, i32 20, i32 %10) #11
  %74 = getelementptr inbounds %struct.TString, %struct.TString* %73, i64 1
  %75 = bitcast %struct.TString* %74 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %75, i8* %1, i64 %2, i32 1, i1 false) #13
  %76 = trunc i64 %2 to i8
  %77 = getelementptr inbounds %struct.TString, %struct.TString* %73, i64 0, i32 4
  store i8 %76, i8* %77, align 1, !tbaa !25
  %78 = bitcast %struct.TString** %72 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !19
  %80 = getelementptr inbounds %struct.TString, %struct.TString* %73, i64 0, i32 6, i32 0
  store i64 %79, i64* %80, align 8, !tbaa !2
  store %struct.TString* %73, %struct.TString** %72, align 8, !tbaa !19
  %81 = load i32, i32* %47, align 8, !tbaa !27
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %47, align 8, !tbaa !27
  br label %90

; <label>:83:                                     ; preds = %3
  %84 = icmp ugt i64 %2, 9223372036854775782
  br i1 %84, label %85, label %86, !prof !18

; <label>:85:                                     ; preds = %83
  tail call void @luaM_toobig(%struct.lua_State* %0) #12
  unreachable

; <label>:86:                                     ; preds = %83
  %87 = tail call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %2) #10
  %88 = getelementptr inbounds %struct.TString, %struct.TString* %87, i64 1
  %89 = bitcast %struct.TString* %88 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %89, i8* %1, i64 %2, i32 1, i1 false)
  br label %90

; <label>:90:                                     ; preds = %71, %41, %33, %86
  %91 = phi %struct.TString* [ %87, %86 ], [ %73, %71 ], [ %21, %33 ], [ %21, %41 ]
  ret %struct.TString* %91
}

; Function Attrs: minsize optsize
declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9
  %6 = load i32, i32* %5, align 8, !tbaa !24
  %7 = tail call fastcc %struct.TString* @createstrobj(%struct.lua_State* %0, i64 %1, i32 36, i32 %6) #10
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 6, i32 0
  store i64 %1, i64* %8, align 8, !tbaa !2
  ret %struct.TString* %7
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.TString* @createstrobj(%struct.lua_State*, i64, i32, i32) unnamed_addr #4 {
  %5 = add i64 %1, 25
  %6 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 %2, i64 %5) #11
  %7 = bitcast %struct.GCObject* %6 to %struct.TString*
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 5
  store i32 %3, i32* %8, align 4, !tbaa !9
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 3
  store i8 0, i8* %9, align 2, !tbaa !5
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %11 = getelementptr inbounds i8, i8* %10, i64 %1
  store i8 0, i8* %11, align 1, !tbaa !2
  ret %struct.TString* %7
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
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
  br label %15

; <label>:15:                                     ; preds = %20, %2
  %16 = phi %struct.TString** [ %14, %2 ], [ %21, %20 ]
  %17 = load %struct.TString*, %struct.TString** %16, align 8, !tbaa !19
  %18 = icmp eq %struct.TString* %17, %1
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %17, i64 0, i32 6
  br i1 %18, label %22, label %20

; <label>:20:                                     ; preds = %15
  %21 = bitcast %union.anon* %19 to %struct.TString**
  br label %15

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !2
  %25 = bitcast %struct.TString** %16 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 1
  %27 = load i32, i32* %26, align 8, !tbaa !27
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8, !tbaa !27
  ret void
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaM_toobig(%struct.lua_State*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #4 {
  %3 = ptrtoint i8* %1 to i64
  %4 = trunc i64 %3 to i32
  %5 = urem i32 %4, 53
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !10
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 0
  br label %10

; <label>:10:                                     ; preds = %14, %2
  %11 = phi i64 [ %21, %14 ], [ 0, %2 ]
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %10
  br label %22

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 %11
  %16 = load %struct.TString*, %struct.TString** %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  %19 = tail call i32 @strcmp(i8* %1, i8* nonnull %18) #9
  %20 = icmp eq i32 %19, 0
  %21 = add nuw nsw i64 %11, 1
  br i1 %20, label %35, label %10

; <label>:22:                                     ; preds = %13, %25
  %23 = phi i64 [ %26, %25 ], [ 1, %13 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

; <label>:25:                                     ; preds = %22
  %26 = add nsw i64 %23, -1
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 %26
  %28 = bitcast %struct.TString** %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 %23
  %31 = bitcast %struct.TString** %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !19
  br label %22

; <label>:32:                                     ; preds = %22
  %33 = tail call i64 @strlen(i8* %1) #9
  %34 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %1, i64 %33) #10
  store %struct.TString* %34, %struct.TString** %9, align 8, !tbaa !19
  br label %35

; <label>:35:                                     ; preds = %14, %32
  %36 = phi %struct.TString* [ %34, %32 ], [ %16, %14 ]
  ret %struct.TString* %36
}

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %11, label %12, label %13, !prof !18

; <label>:12:                                     ; preds = %9
  tail call void @luaM_toobig(%struct.lua_State* %0) #12
  unreachable

; <label>:13:                                     ; preds = %9
  br i1 %4, label %18, label %14

; <label>:14:                                     ; preds = %13
  %15 = sext i32 %2 to i64
  %16 = shl nsw i64 %15, 4
  %17 = add nsw i64 %16, 40
  br label %18

; <label>:18:                                     ; preds = %13, %14
  %19 = phi i64 [ %15, %14 ], [ 0, %13 ]
  %20 = phi i64 [ %17, %14 ], [ 32, %13 ]
  %21 = add i64 %20, %1
  %22 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 7, i64 %21) #11
  %23 = bitcast %struct.GCObject* %22 to %struct.Udata*
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i64 1
  %25 = bitcast %struct.GCObject* %24 to i64*
  store i64 %1, i64* %25, align 8, !tbaa !28
  %26 = trunc i32 %2 to i16
  %27 = getelementptr inbounds %struct.Udata, %struct.Udata* %23, i64 0, i32 3
  store i16 %26, i16* %27, align 2, !tbaa !30
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i64 1, i32 1
  %29 = bitcast i8* %28 to %struct.Table**
  store %struct.Table* null, %struct.Table** %29, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i64 2, i32 1
  %31 = bitcast i8* %30 to [1 x %union.UValue]*
  br label %32

; <label>:32:                                     ; preds = %35, %18
  %33 = phi i64 [ %37, %35 ], [ 0, %18 ]
  %34 = icmp slt i64 %33, %19
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %31, i64 0, i64 %33, i32 0, i32 1
  store i8 0, i8* %36, align 8, !tbaa !2
  %37 = add nuw nsw i64 %33, 1
  br label %32

; <label>:38:                                     ; preds = %32
  ret %struct.Udata* %23
}

; Function Attrs: minsize optsize
declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #5

; Function Attrs: minsize noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #6

attributes #0 = { minsize nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { minsize nounwind optsize readonly }
attributes #10 = { minsize optsize }
attributes #11 = { minsize nounwind optsize }
attributes #12 = { minsize noreturn nounwind optsize }
attributes #13 = { nounwind }

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
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!7, !7, i64 0}
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
