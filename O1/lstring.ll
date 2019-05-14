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
  br i1 %4, label %5, label %13

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %7 = bitcast %struct.TString* %6 to i8*
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !9
  %12 = tail call i32 @luaS_hash(i8* nonnull %7, i64 %9, i32 %11)
  store i32 %12, i32* %10, align 4, !tbaa !9
  store i8 1, i8* %2, align 2, !tbaa !5
  br label %13

; <label>:13:                                     ; preds = %5, %1
  %14 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !9
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %5, i64 0, i32 0
  %11 = load %struct.TString**, %struct.TString*** %10, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %11, i32 %7, i32 %1)
  br label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %5, i64 0, i32 0
  %14 = bitcast %struct.stringtable* %5 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !17
  %16 = sext i32 %7 to i64
  %17 = shl nsw i64 %16, 3
  %18 = sext i32 %1 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %15, i64 %17, i64 %19) #10
  %21 = bitcast i8* %20 to %struct.TString**
  %22 = icmp eq i8* %20, null
  br i1 %22, label %23, label %26, !prof !18

; <label>:23:                                     ; preds = %12
  br i1 %8, label %24, label %29

; <label>:24:                                     ; preds = %23
  %25 = load %struct.TString**, %struct.TString*** %13, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %25, i32 %1, i32 %7)
  br label %29

; <label>:26:                                     ; preds = %12
  store i8* %20, i8** %14, align 8, !tbaa !17
  store i32 %1, i32* %6, align 4, !tbaa !15
  %27 = icmp slt i32 %7, %1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  tail call fastcc void @tablerehash(%struct.TString** %21, i32 %7, i32 %1)
  br label %29

; <label>:29:                                     ; preds = %26, %28, %23, %24
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @tablerehash(%struct.TString** nocapture, i32, i32) unnamed_addr #3 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr %struct.TString*, %struct.TString** %0, i64 %6
  %8 = bitcast %struct.TString** %7 to i8*
  %9 = add i32 %2, -1
  %10 = sub i32 %9, %1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 8
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %13, i32 8, i1 false)
  br label %14

; <label>:14:                                     ; preds = %5, %3
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %42

; <label>:16:                                     ; preds = %14
  %17 = add nsw i32 %2, -1
  %18 = zext i32 %1 to i64
  br label %19

; <label>:19:                                     ; preds = %39, %16
  %20 = phi i64 [ 0, %16 ], [ %40, %39 ]
  %21 = getelementptr inbounds %struct.TString*, %struct.TString** %0, i64 %20
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !19
  store %struct.TString* null, %struct.TString** %21, align 8, !tbaa !19
  %23 = icmp eq %struct.TString* %22, null
  br i1 %23, label %39, label %24

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi %struct.TString* [ %29, %25 ], [ %22, %24 ]
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i64 0, i32 6
  %28 = bitcast %union.anon* %27 to %struct.TString**
  %29 = load %struct.TString*, %struct.TString** %28, align 8, !tbaa !2
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %26, i64 0, i32 5
  %31 = load i32, i32* %30, align 4, !tbaa !9
  %32 = and i32 %31, %17
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TString*, %struct.TString** %0, i64 %33
  %35 = bitcast %struct.TString** %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !19
  %37 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  store i64 %36, i64* %37, align 8, !tbaa !2
  store %struct.TString* %26, %struct.TString** %34, align 8, !tbaa !19
  %38 = icmp eq %struct.TString* %29, null
  br i1 %38, label %39, label %25

; <label>:39:                                     ; preds = %25, %19
  %40 = add nuw nsw i64 %20, 1
  %41 = icmp eq i64 %40, %18
  br i1 %41, label %42, label %19

; <label>:42:                                     ; preds = %39, %14
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #5

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaS_clearcache(%struct.global_State* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 39
  %3 = bitcast %struct.TString** %2 to i64*
  br label %4

; <label>:4:                                      ; preds = %20, %1
  %5 = phi i64 [ 0, %1 ], [ %21, %20 ]
  br label %6

; <label>:6:                                      ; preds = %17, %4
  %7 = phi i64 [ 0, %4 ], [ %18, %17 ]
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 42, i64 %5, i64 %7
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !20
  %12 = and i8 %11, 24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %6
  %15 = load i64, i64* %3, align 8, !tbaa !21
  %16 = bitcast %struct.TString** %8 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !19
  br label %17

; <label>:17:                                     ; preds = %6, %14
  %18 = add nuw nsw i64 %7, 1
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %20, label %6

; <label>:20:                                     ; preds = %17
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %4

; <label>:23:                                     ; preds = %20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaS_init(%struct.lua_State*) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6
  %5 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 1024, i32 0) #10
  %6 = bitcast i8* %5 to %struct.TString**
  %7 = bitcast %struct.stringtable* %4 to i8**
  store i8* %5, i8** %7, align 8, !tbaa !17
  tail call fastcc void @tablerehash(%struct.TString** %6, i32 0, i32 128)
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, i32 2
  store i32 128, i32* %8, align 4, !tbaa !15
  %9 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17)
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 39
  store %struct.TString* %9, %struct.TString** %10, align 8, !tbaa !21
  %11 = bitcast %struct.TString* %9 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %11) #10
  %12 = bitcast %struct.TString** %10 to i64*
  br label %13

; <label>:13:                                     ; preds = %22, %1
  %14 = phi i64 [ 0, %1 ], [ %23, %22 ]
  br label %15

; <label>:15:                                     ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = load i64, i64* %12, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 42, i64 %14, i64 %16
  %19 = bitcast %struct.TString** %18 to i64*
  store i64 %17, i64* %19, align 8, !tbaa !19
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %22, label %15

; <label>:22:                                     ; preds = %15
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, 53
  br i1 %24, label %25, label %13

; <label>:25:                                     ; preds = %22
  ret void
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8* nocapture readonly, i64) local_unnamed_addr #4 {
  %4 = icmp ult i64 %2, 41
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc %struct.TString* @internshrstr(%struct.lua_State* %0, i8* %1, i64 %2)
  br label %14

; <label>:7:                                      ; preds = %3
  %8 = icmp ugt i64 %2, 9223372036854775782
  br i1 %8, label %9, label %10, !prof !18

; <label>:9:                                      ; preds = %7
  tail call void @luaM_toobig(%struct.lua_State* %0) #11
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %2)
  %12 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 1
  %13 = bitcast %struct.TString* %12 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %13, i8* %1, i64 %2, i32 1, i1 false)
  br label %14

; <label>:14:                                     ; preds = %10, %5
  %15 = phi %struct.TString* [ %6, %5 ], [ %11, %10 ]
  ret %struct.TString* %15
}

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9
  %6 = load i32, i32* %5, align 8, !tbaa !24
  %7 = tail call fastcc %struct.TString* @createstrobj(%struct.lua_State* %0, i64 %1, i32 36, i32 %6)
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 6, i32 0
  store i64 %1, i64* %8, align 8, !tbaa !2
  ret %struct.TString* %7
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @createstrobj(%struct.lua_State*, i64, i32, i32) unnamed_addr #4 {
  %5 = add i64 %1, 25
  %6 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 %2, i64 %5) #10
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
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !19
  %16 = icmp eq %struct.TString* %15, %1
  br i1 %16, label %26, label %17

; <label>:17:                                     ; preds = %2
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi %struct.TString* [ %22, %18 ], [ %15, %17 ]
  %20 = getelementptr inbounds %struct.TString, %struct.TString* %19, i64 0, i32 6
  %21 = bitcast %union.anon* %20 to %struct.TString**
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !19
  %23 = icmp eq %struct.TString* %22, %1
  br i1 %23, label %24, label %18

; <label>:24:                                     ; preds = %18
  %25 = bitcast %union.anon* %20 to %struct.TString**
  br label %26

; <label>:26:                                     ; preds = %24, %2
  %27 = phi %struct.TString** [ %25, %24 ], [ %14, %2 ]
  %28 = phi %struct.TString* [ %22, %24 ], [ %15, %2 ]
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 6, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !2
  %31 = bitcast %struct.TString** %27 to i64*
  store i64 %30, i64* %31, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, i32 1
  %33 = load i32, i32* %32, align 8, !tbaa !25
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @internshrstr(%struct.lua_State*, i8* nocapture readonly, i64) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 9
  %8 = load i32, i32* %7, align 8, !tbaa !24
  %9 = tail call i32 @luaS_hash(i8* %1, i64 %2, i32 %8)
  %10 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %6, i64 0, i32 0
  %11 = load %struct.TString**, %struct.TString*** %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !15
  %14 = add nsw i32 %13, -1
  %15 = and i32 %14, %9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TString*, %struct.TString** %11, i64 %16
  %18 = load %struct.TString*, %struct.TString** %17, align 8, !tbaa !2
  %19 = icmp eq %struct.TString* %18, null
  br i1 %19, label %47, label %20

; <label>:20:                                     ; preds = %3
  br label %21

; <label>:21:                                     ; preds = %20, %42
  %22 = phi %struct.TString* [ %45, %42 ], [ %18, %20 ]
  %23 = getelementptr inbounds %struct.TString, %struct.TString* %22, i64 0, i32 4
  %24 = load i8, i8* %23, align 1, !tbaa !26
  %25 = zext i8 %24 to i64
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %27, label %42

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %22, i64 1
  %29 = bitcast %struct.TString* %28 to i8*
  %30 = tail call i32 @memcmp(i8* %1, i8* nonnull %29, i64 %2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.TString, %struct.TString* %22, i64 0, i32 2
  %34 = load i8, i8* %33, align 1, !tbaa !20
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 10
  %36 = load i8, i8* %35, align 4, !tbaa !27
  %37 = xor i8 %36, 24
  %38 = and i8 %37, %34
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %70, label %40

; <label>:40:                                     ; preds = %32
  %41 = xor i8 %34, 24
  store i8 %41, i8* %33, align 1, !tbaa !20
  br label %70

; <label>:42:                                     ; preds = %21, %27
  %43 = getelementptr inbounds %struct.TString, %struct.TString* %22, i64 0, i32 6
  %44 = bitcast %union.anon* %43 to %struct.TString**
  %45 = load %struct.TString*, %struct.TString** %44, align 8, !tbaa !2
  %46 = icmp eq %struct.TString* %45, null
  br i1 %46, label %47, label %21

; <label>:47:                                     ; preds = %42, %3
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6, i32 1
  %49 = load i32, i32* %48, align 8, !tbaa !25
  %50 = icmp slt i32 %49, %13
  br i1 %50, label %58, label %51

; <label>:51:                                     ; preds = %47
  tail call fastcc void @growstrtab(%struct.lua_State* %0, %struct.stringtable* nonnull %6)
  %52 = load %struct.TString**, %struct.TString*** %10, align 8, !tbaa !17
  %53 = load i32, i32* %12, align 4, !tbaa !15
  %54 = add nsw i32 %53, -1
  %55 = and i32 %54, %9
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TString*, %struct.TString** %52, i64 %56
  br label %58

; <label>:58:                                     ; preds = %47, %51
  %59 = phi %struct.TString** [ %57, %51 ], [ %17, %47 ]
  %60 = tail call fastcc %struct.TString* @createstrobj(%struct.lua_State* %0, i64 %2, i32 20, i32 %9)
  %61 = getelementptr inbounds %struct.TString, %struct.TString* %60, i64 1
  %62 = bitcast %struct.TString* %61 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %62, i8* %1, i64 %2, i32 1, i1 false)
  %63 = trunc i64 %2 to i8
  %64 = getelementptr inbounds %struct.TString, %struct.TString* %60, i64 0, i32 4
  store i8 %63, i8* %64, align 1, !tbaa !26
  %65 = bitcast %struct.TString** %59 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !19
  %67 = getelementptr inbounds %struct.TString, %struct.TString* %60, i64 0, i32 6, i32 0
  store i64 %66, i64* %67, align 8, !tbaa !2
  store %struct.TString* %60, %struct.TString** %59, align 8, !tbaa !19
  %68 = load i32, i32* %48, align 8, !tbaa !25
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %48, align 8, !tbaa !25
  br label %70

; <label>:70:                                     ; preds = %40, %32, %58
  %71 = phi %struct.TString* [ %60, %58 ], [ %22, %32 ], [ %22, %40 ]
  ret %struct.TString* %71
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
  br label %13

; <label>:10:                                     ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2, %10
  %14 = phi i64 [ 0, %2 ], [ 1, %10 ]
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 %14
  %16 = load %struct.TString*, %struct.TString** %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  %19 = tail call i32 @strcmp(i8* %1, i8* nonnull %18) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %10

; <label>:21:                                     ; preds = %10
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 0
  %23 = bitcast %struct.TString** %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 42, i64 %8, i64 1
  %26 = bitcast %struct.TString** %25 to i64*
  store i64 %24, i64* %26, align 8, !tbaa !19
  %27 = tail call i64 @strlen(i8* %1) #9
  %28 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %1, i64 %27)
  store %struct.TString* %28, %struct.TString** %9, align 8, !tbaa !19
  br label %29

; <label>:29:                                     ; preds = %13, %21
  %30 = phi %struct.TString* [ %28, %21 ], [ %16, %13 ]
  ret %struct.TString* %30
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
  br i1 %11, label %12, label %13, !prof !18

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
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %18
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 2, i32 1
  %32 = bitcast i8* %31 to [1 x %union.UValue]*
  %33 = zext i32 %2 to i64
  br label %34

; <label>:34:                                     ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %37, %34 ]
  %36 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %32, i64 0, i64 %35, i32 0, i32 1
  store i8 0, i8* %36, align 8, !tbaa !2
  %37 = add nuw nsw i64 %35, 1
  %38 = icmp eq i64 %37, %33
  br i1 %38, label %39, label %34

; <label>:39:                                     ; preds = %34, %18
  ret %struct.Udata* %22
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @growstrtab(%struct.lua_State*, %struct.stringtable* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %1, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !25
  %5 = icmp eq i32 %4, 2147483647
  br i1 %5, label %6, label %10, !prof !18

; <label>:6:                                      ; preds = %2
  tail call void @luaC_fullgc(%struct.lua_State* %0, i32 1) #10
  %7 = load i32, i32* %3, align 8, !tbaa !25
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #11
  unreachable

; <label>:10:                                     ; preds = %6, %2
  %11 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !15
  %13 = icmp slt i32 %12, 1073741824
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %10
  %15 = shl nsw i32 %12, 1
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %15)
  br label %16

; <label>:16:                                     ; preds = %14, %10
  ret void
}

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
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !3, i64 9}
!21 = !{!22, !7, i64 264}
!22 = !{!"global_State", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !16, i64 48, !23, i64 64, !23, i64 80, !8, i64 96, !3, i64 100, !3, i64 101, !3, i64 102, !3, i64 103, !3, i64 104, !3, i64 105, !3, i64 106, !3, i64 107, !3, i64 108, !3, i64 109, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !3, i64 272, !3, i64 472, !3, i64 544, !7, i64 1392, !7, i64 1400}
!23 = !{!"TValue", !3, i64 0, !3, i64 8}
!24 = !{!22, !8, i64 96}
!25 = !{!16, !8, i64 8}
!26 = !{!6, !3, i64 11}
!27 = !{!22, !3, i64 100}
!28 = !{!29, !14, i64 16}
!29 = !{!"Udata", !7, i64 0, !3, i64 8, !3, i64 9, !12, i64 10, !14, i64 16, !7, i64 24, !7, i64 32, !3, i64 40}
!30 = !{!29, !12, i64 10}
!31 = !{!29, !7, i64 24}
