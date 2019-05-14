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

@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@absentkey = internal constant %struct.TValue { %union.Value zeroinitializer, i8 32 }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@dummynode_ = internal constant %union.Node { %struct.NodeKey { %union.Value zeroinitializer, i8 16, i8 0, i32 0, %union.Value zeroinitializer } }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: norecurse nounwind readonly uwtable
define hidden i32 @luaH_realasize(%struct.Table* nocapture readonly) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 1, !tbaa !2
  %4 = icmp slt i8 %3, 0
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4, !tbaa !8
  %8 = add i32 %7, -1
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %5, %1
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !8
  br label %26

; <label>:14:                                     ; preds = %5
  %15 = lshr i32 %7, 1
  %16 = or i32 %15, %7
  %17 = lshr i32 %16, 2
  %18 = or i32 %17, %16
  %19 = lshr i32 %18, 4
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 8
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 16
  %24 = or i32 %23, %22
  %25 = add i32 %24, 1
  br label %26

; <label>:26:                                     ; preds = %14, %11
  %27 = phi i32 [ %13, %11 ], [ %25, %14 ]
  ret i32 %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table* nocapture readonly, %union.StackValue* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaH_realasize(%struct.Table* %1)
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %6 = tail call fastcc i32 @findindex(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %5, i32 %4)
  %7 = icmp ult i32 %6, %4
  br i1 %7, label %8, label %36

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !9
  br label %13

; <label>:11:                                     ; preds = %13
  %12 = icmp ult i32 %20, %4
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %8, %11
  %14 = phi i32 [ %6, %8 ], [ %20, %11 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 %15, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !10
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  %20 = add i32 %14, 1
  br i1 %19, label %11, label %21

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %23 = zext i32 %14 to i64
  %24 = zext i32 %20 to i64
  %25 = bitcast %union.StackValue* %2 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !12
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0, i32 1
  store i8 35, i8* %26, align 8, !tbaa !10
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %28 = load %struct.TValue*, %struct.TValue** %22, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %23
  %30 = bitcast %struct.TValue* %29 to i64*
  %31 = bitcast %struct.TValue* %27 to i64*
  %32 = load i64, i64* %30, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %23, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %34, i8* %35, align 8, !tbaa !10
  br label %76

; <label>:36:                                     ; preds = %11, %3
  %37 = phi i32 [ %6, %3 ], [ %20, %11 ]
  %38 = sub i32 %37, %4
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %40 = load i8, i8* %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %76

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %46 = load %union.Node*, %union.Node** %45, align 8, !tbaa !14
  br label %52

; <label>:47:                                     ; preds = %52
  %48 = load i8, i8* %39, align 1, !tbaa !13
  %49 = zext i8 %48 to i32
  %50 = shl i32 1, %49
  %51 = icmp slt i32 %59, %50
  br i1 %51, label %52, label %76

; <label>:52:                                     ; preds = %44, %47
  %53 = phi i32 [ %38, %44 ], [ %59, %47 ]
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %union.Node, %union.Node* %46, i64 %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 8, !tbaa !12
  %57 = and i8 %56, 15
  %58 = icmp eq i8 %57, 0
  %59 = add nsw i32 %53, 1
  br i1 %58, label %47, label %60

; <label>:60:                                     ; preds = %52
  %61 = zext i32 %53 to i64
  %62 = getelementptr inbounds %union.Node, %union.Node* %46, i64 %61, i32 0, i32 4
  %63 = bitcast %union.Value* %62 to i64*
  %64 = bitcast %union.StackValue* %2 to i64*
  %65 = load i64, i64* %63, align 8
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds %union.Node, %union.Node* %46, i64 %61, i32 0, i32 2
  %67 = load i8, i8* %66, align 1, !tbaa !12
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0, i32 1
  store i8 %67, i8* %68, align 8, !tbaa !10
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %70 = getelementptr inbounds %union.Node, %union.Node* %46, i64 %61, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to i64*
  %72 = bitcast %struct.TValue* %69 to i64*
  %73 = load i64, i64* %71, align 8
  store i64 %73, i64* %72, align 8
  %74 = load i8, i8* %55, align 8, !tbaa !10
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %74, i8* %75, align 8, !tbaa !10
  br label %76

; <label>:76:                                     ; preds = %47, %36, %60, %21
  %77 = phi i32 [ 1, %21 ], [ 1, %60 ], [ 0, %36 ], [ 0, %47 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @findindex(%struct.lua_State*, %struct.Table* nocapture readonly, %struct.TValue* nocapture readonly, i32) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !10
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8 %6, 35
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %9
  %12 = bitcast %struct.TValue* %2 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !12
  %14 = tail call fastcc i32 @arrayindex(i64 %13)
  br label %15

; <label>:15:                                     ; preds = %9, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %9 ]
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %35, label %19

; <label>:19:                                     ; preds = %15
  %20 = tail call fastcc %struct.TValue* @getgeneric(%struct.Table* %1, %struct.TValue* nonnull %2)
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !10
  %23 = icmp eq i8 %22, 32
  br i1 %23, label %24, label %25, !prof !15

; <label>:24:                                     ; preds = %19
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #8
  unreachable

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %27 = bitcast %union.Node** %26 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !14
  %29 = ptrtoint %struct.TValue* %20 to i64
  %30 = sub i64 %29, %28
  %31 = sdiv exact i64 %30, 24
  %32 = trunc i64 %31 to i32
  %33 = add i32 %3, 1
  %34 = add i32 %33, %32
  br label %35

; <label>:35:                                     ; preds = %15, %4, %25
  %36 = phi i32 [ %34, %25 ], [ 0, %4 ], [ %16, %15 ]
  ret i32 %36
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2 {
  %5 = alloca %struct.Table, align 8
  %6 = bitcast %struct.Table* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9
  %7 = tail call fastcc i32 @setlimittosize(%struct.Table* %1)
  call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %5, i32 %3)
  %8 = icmp ugt i32 %7, %2
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %2, i32* %10, align 4, !tbaa !8
  call fastcc void @exchangehashpart(%struct.Table* %1, %struct.Table* nonnull %5)
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %12 = zext i32 %2 to i64
  %13 = zext i32 %7 to i64
  br label %14

; <label>:14:                                     ; preds = %24, %9
  %15 = phi i64 [ %12, %9 ], [ %25, %24 ]
  %16 = load %struct.TValue*, %struct.TValue** %11, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 %15, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !10
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 %15
  %23 = add nuw nsw i64 %15, 1
  tail call void @luaH_setint(%struct.lua_State* %0, %struct.Table* nonnull %1, i64 %23, %struct.TValue* %22)
  br label %24

; <label>:24:                                     ; preds = %14, %21
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %27, label %14

; <label>:27:                                     ; preds = %24
  store i32 %7, i32* %10, align 4, !tbaa !8
  call fastcc void @exchangehashpart(%struct.Table* nonnull %1, %struct.Table* nonnull %5)
  br label %28

; <label>:28:                                     ; preds = %27, %4
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %30 = bitcast %struct.TValue** %29 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !9
  %32 = zext i32 %7 to i64
  %33 = shl nuw nsw i64 %32, 4
  %34 = zext i32 %2 to i64
  %35 = shl nuw nsw i64 %34, 4
  %36 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %31, i64 %33, i64 %35) #9
  %37 = icmp eq i8* %36, null
  %38 = icmp ne i32 %2, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %41, !prof !15

; <label>:40:                                     ; preds = %28
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %5)
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #8
  unreachable

; <label>:41:                                     ; preds = %28
  call fastcc void @exchangehashpart(%struct.Table* nonnull %1, %struct.Table* nonnull %5)
  store i8* %36, i8** %30, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %2, i32* %42, align 4, !tbaa !8
  %43 = icmp ult i32 %7, %2
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %41
  %45 = load %struct.TValue*, %struct.TValue** %29, align 8, !tbaa !9
  %46 = zext i32 %7 to i64
  %47 = zext i32 %2 to i64
  br label %48

; <label>:48:                                     ; preds = %48, %44
  %49 = phi i64 [ %46, %44 ], [ %51, %48 ]
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 %49, i32 1
  store i8 16, i8* %50, align 8, !tbaa !10
  %51 = add nuw nsw i64 %49, 1
  %52 = icmp eq i64 %51, %47
  br i1 %52, label %53, label %48

; <label>:53:                                     ; preds = %48, %41
  call fastcc void @reinsert(%struct.lua_State* %0, %struct.Table* nonnull %5, %struct.Table* nonnull %1)
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @setlimittosize(%struct.Table* nocapture) unnamed_addr #3 {
  %2 = tail call i32 @luaH_realasize(%struct.Table* %0)
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  store i32 %2, i32* %3, align 4, !tbaa !8
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %6 = and i8 %5, 127
  store i8 %6, i8* %4, align 1, !tbaa !2
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setnodevector(%struct.lua_State*, %struct.Table* nocapture, i32) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  store %union.Node* @dummynode_, %union.Node** %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  store i8 0, i8* %7, align 1, !tbaa !13
  br label %35

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @luaO_ceillog2(i32 %2) #9
  %10 = icmp sgt i32 %9, 30
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = shl i32 1, %9
  %13 = icmp ugt i32 %9, 30
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8
  unreachable

; <label>:15:                                     ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = mul nuw nsw i64 %16, 24
  %18 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 %17, i32 0) #9
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %20 = bitcast %union.Node** %19 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !14
  %21 = sext i32 %12 to i64
  br label %22

; <label>:22:                                     ; preds = %15, %22
  %23 = phi i64 [ 0, %15 ], [ %28, %22 ]
  %24 = load %union.Node*, %union.Node** %19, align 8, !tbaa !14
  %25 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %23, i32 0, i32 3
  store i32 0, i32* %25, align 4, !tbaa !12
  %26 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %23, i32 0, i32 2
  store i8 0, i8* %26, align 1, !tbaa !12
  %27 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %23, i32 0, i32 1
  store i8 16, i8* %27, align 8, !tbaa !12
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp slt i64 %28, %21
  br i1 %29, label %22, label %30

; <label>:30:                                     ; preds = %22
  %31 = trunc i32 %9 to i8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  store i8 %31, i8* %32, align 1, !tbaa !13
  %33 = load %union.Node*, %union.Node** %19, align 8, !tbaa !14
  %34 = getelementptr inbounds %union.Node, %union.Node* %33, i64 %16
  br label %35

; <label>:35:                                     ; preds = %30, %5
  %36 = phi %union.Node* [ %34, %30 ], [ null, %5 ]
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  store %union.Node* %36, %union.Node** %37, align 8, !tbaa !16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @exchangehashpart(%struct.Table* nocapture, %struct.Table* nocapture) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %4 = load i8, i8* %3, align 1, !tbaa !13
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %6 = bitcast %union.Node** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %9 = bitcast %union.Node** %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !13
  store i8 %12, i8* %3, align 1, !tbaa !13
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %14 = bitcast %union.Node** %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !14
  store i64 %15, i64* %6, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %17 = bitcast %union.Node** %16 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  store i64 %18, i64* %9, align 8, !tbaa !16
  store i8 %4, i8* %11, align 1, !tbaa !13
  store i64 %7, i64* %14, align 8, !tbaa !14
  store i64 %10, i64* %17, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = tail call %struct.TValue* @luaH_getint(%struct.Table* %1, i64 %2)
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !10
  %9 = icmp eq i8 %8, 32
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #9
  %12 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %13, align 8, !tbaa !10
  %14 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #9
  br label %15

; <label>:15:                                     ; preds = %4, %10
  %16 = phi %struct.TValue* [ %14, %10 ], [ %6, %4 ]
  %17 = bitcast %struct.TValue* %3 to i64*
  %18 = bitcast %struct.TValue* %16 to i64*
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  store i8 %21, i8* %22, align 8, !tbaa !10
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @freehash(%struct.lua_State*, %struct.Table* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !16
  %5 = icmp eq %union.Node* %4, null
  br i1 %5, label %16, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %8 = bitcast %union.Node** %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 24
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 %15) #9
  br label %16

; <label>:16:                                     ; preds = %6, %2
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @reinsert(%struct.lua_State*, %struct.Table* nocapture readonly, %struct.Table*) unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !13
  %7 = icmp eq i8 %6, 31
  br i1 %7, label %39, label %8

; <label>:8:                                      ; preds = %3
  %9 = zext i8 %6 to i32
  %10 = shl i32 1, %9
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %12 = bitcast %struct.TValue* %4 to i8*
  %13 = bitcast %struct.TValue* %4 to i64*
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %15 = sext i32 %10 to i64
  br label %16

; <label>:16:                                     ; preds = %8, %36
  %17 = phi i64 [ 0, %8 ], [ %37, %36 ]
  %18 = load %union.Node*, %union.Node** %11, align 8, !tbaa !14
  %19 = getelementptr inbounds %union.Node, %union.Node* %18, i64 %17, i32 0, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !12
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %36, label %23

; <label>:23:                                     ; preds = %16
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #9
  %24 = getelementptr inbounds %union.Node, %union.Node* %18, i64 %17, i32 0, i32 4
  %25 = bitcast %union.Value* %24 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = getelementptr inbounds %union.Node, %union.Node* %18, i64 %17, i32 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !12
  store i8 %28, i8* %14, align 8, !tbaa !10
  %29 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %2, %struct.TValue* nonnull %4)
  %30 = getelementptr inbounds %union.Node, %union.Node* %18, i64 %17, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to i64*
  %32 = bitcast %struct.TValue* %29 to i64*
  %33 = load i64, i64* %31, align 8
  store i64 %33, i64* %32, align 8
  %34 = load i8, i8* %19, align 8, !tbaa !10
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i64 0, i32 1
  store i8 %34, i8* %35, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #9
  br label %36

; <label>:36:                                     ; preds = %23, %16
  %37 = add nuw nsw i64 %17, 1
  %38 = icmp slt i64 %37, %15
  br i1 %38, label %16, label %39

; <label>:39:                                     ; preds = %36, %3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %5 = load %union.Node*, %union.Node** %4, align 8, !tbaa !16
  %6 = icmp eq %union.Node* %5, null
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %9 = load i8, i8* %8, align 1, !tbaa !13
  %10 = zext i8 %9 to i32
  %11 = shl i32 1, %10
  br label %12

; <label>:12:                                     ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ]
  tail call void @luaH_resize(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %2, i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 5, i64 56) #9
  %3 = bitcast %struct.GCObject* %2 to %struct.Table*
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 2, i32 1
  %5 = bitcast i8* %4 to %struct.Table**
  store %struct.Table* null, %struct.Table** %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 3
  store i8 -1, i8* %6, align 2, !tbaa !18
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1
  %8 = bitcast %struct.GCObject* %7 to %struct.TValue**
  store %struct.TValue* null, %struct.TValue** %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 5
  store i32 0, i32* %9, align 4, !tbaa !8
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* %3, i32 0)
  ret %struct.Table* %3
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #2 {
  tail call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* %1)
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %4 = bitcast %struct.TValue** %3 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !9
  %6 = tail call i32 @luaH_realasize(%struct.Table* %1)
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %5, i64 %8) #9
  %9 = bitcast %struct.Table* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 56) #9
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !10
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !15

; <label>:11:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #8
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = icmp eq i8 %8, 19
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %12
  %15 = bitcast %struct.TValue* %2 to double*
  %16 = load double, double* %15, align 8, !tbaa !12
  %17 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #9
  %18 = call i32 @luaV_flttointeger(double %16, i64* nonnull %5, i32 0) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %5, align 8, !tbaa !19
  %22 = bitcast %struct.TValue* %4 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %23, align 8, !tbaa !10
  br label %27

; <label>:24:                                     ; preds = %14
  %25 = fcmp uno double %16, 0.000000e+00
  br i1 %25, label %26, label %27, !prof !15

; <label>:26:                                     ; preds = %24
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #8
  unreachable

; <label>:27:                                     ; preds = %24, %20
  %28 = phi %struct.TValue* [ %4, %20 ], [ %2, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  br label %29

; <label>:29:                                     ; preds = %12, %27
  %30 = phi %struct.TValue* [ %28, %27 ], [ %2, %12 ]
  %31 = call fastcc %union.Node* @mainpositionTV(%struct.Table* %1, %struct.TValue* nonnull %30)
  %32 = getelementptr inbounds %union.Node, %union.Node* %31, i64 0, i32 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !12
  %34 = and i8 %33, 15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %38 = load %union.Node*, %union.Node** %37, align 8, !tbaa !16
  %39 = icmp eq %union.Node* %38, null
  br i1 %39, label %40, label %100

; <label>:40:                                     ; preds = %36, %29
  %41 = call fastcc %union.Node* @getfreepos(%struct.Table* %1)
  %42 = icmp eq %union.Node* %41, null
  br i1 %42, label %98, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds %union.Node, %union.Node* %31, i64 0, i32 0, i32 2
  %45 = load i8, i8* %44, align 1, !tbaa !12
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %union.Node, %union.Node* %31, i64 0, i32 0, i32 4
  %48 = call fastcc %union.Node* @mainposition(%struct.Table* %1, i32 %46, %union.Value* nonnull %47)
  %49 = icmp eq %union.Node* %48, %31
  br i1 %49, label %79, label %50

; <label>:50:                                     ; preds = %43
  br label %51

; <label>:51:                                     ; preds = %50, %51
  %52 = phi %union.Node* [ %56, %51 ], [ %48, %50 ]
  %53 = getelementptr inbounds %union.Node, %union.Node* %52, i64 0, i32 0, i32 3
  %54 = load i32, i32* %53, align 4, !tbaa !12
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %union.Node, %union.Node* %52, i64 %55
  %57 = icmp eq %union.Node* %56, %31
  br i1 %57, label %58, label %51

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %union.Node, %union.Node* %52, i64 0, i32 0, i32 3
  %60 = ptrtoint %union.Node* %41 to i64
  %61 = ptrtoint %union.Node* %52 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 24
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %59, align 4, !tbaa !12
  %65 = bitcast %union.Node* %41 to i8*
  %66 = bitcast %union.Node* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 24, i32 8, i1 false), !tbaa.struct !21
  %67 = getelementptr inbounds %union.Node, %union.Node* %31, i64 0, i32 0, i32 3
  %68 = load i32, i32* %67, align 4, !tbaa !12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

; <label>:70:                                     ; preds = %58
  %71 = ptrtoint %union.Node* %31 to i64
  %72 = sub i64 %71, %60
  %73 = sdiv exact i64 %72, 24
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  %76 = load i32, i32* %75, align 4, !tbaa !12
  %77 = add nsw i32 %76, %74
  store i32 %77, i32* %75, align 4, !tbaa !12
  store i32 0, i32* %67, align 4, !tbaa !12
  br label %78

; <label>:78:                                     ; preds = %58, %70
  store i8 16, i8* %32, align 8, !tbaa !12
  br label %100

; <label>:79:                                     ; preds = %43
  %80 = getelementptr inbounds %union.Node, %union.Node* %31, i64 0, i32 0, i32 3
  %81 = load i32, i32* %80, align 4, !tbaa !12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

; <label>:83:                                     ; preds = %79
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds %union.Node, %union.Node* %31, i64 %84
  %86 = ptrtoint %union.Node* %85 to i64
  %87 = ptrtoint %union.Node* %41 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 24
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  store i32 %90, i32* %91, align 4, !tbaa !12
  br label %92

; <label>:92:                                     ; preds = %79, %83
  %93 = ptrtoint %union.Node* %41 to i64
  %94 = ptrtoint %union.Node* %31 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 24
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %80, align 4, !tbaa !12
  br label %100

; <label>:98:                                     ; preds = %40
  call fastcc void @rehash(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %30)
  %99 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %30)
  br label %128

; <label>:100:                                    ; preds = %78, %92, %36
  %101 = phi %union.Node* [ %31, %36 ], [ %41, %92 ], [ %31, %78 ]
  %102 = getelementptr inbounds %union.Node, %union.Node* %101, i64 0, i32 0, i32 4
  %103 = bitcast %struct.TValue* %30 to i64*
  %104 = bitcast %union.Value* %102 to i64*
  %105 = load i64, i64* %103, align 8
  store i64 %105, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i64 0, i32 1
  %107 = load i8, i8* %106, align 8, !tbaa !10
  %108 = getelementptr inbounds %union.Node, %union.Node* %101, i64 0, i32 0, i32 2
  store i8 %107, i8* %108, align 1, !tbaa !12
  %109 = load i8, i8* %106, align 8, !tbaa !10
  %110 = and i8 %109, 64
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %126, label %112

; <label>:112:                                    ; preds = %100
  %113 = bitcast %struct.Table* %1 to %struct.GCObject*
  %114 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %115 = load i8, i8* %114, align 1, !tbaa !12
  %116 = and i8 %115, 32
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %126, label %118

; <label>:118:                                    ; preds = %112
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i64 0, i32 0, i32 0
  %120 = load %struct.GCObject*, %struct.GCObject** %119, align 8, !tbaa !12
  %121 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %120, i64 0, i32 2
  %122 = load i8, i8* %121, align 1, !tbaa !26
  %123 = and i8 %122, 24
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

; <label>:125:                                    ; preds = %118
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %113) #9
  br label %126

; <label>:126:                                    ; preds = %118, %112, %100, %125
  %127 = bitcast %union.Node* %101 to %struct.TValue*
  br label %128

; <label>:128:                                    ; preds = %98, %126
  %129 = phi %struct.TValue* [ %127, %126 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  ret %struct.TValue* %129
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #5

declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc %union.Node* @mainpositionTV(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0
  %7 = tail call fastcc %union.Node* @mainposition(%struct.Table* %0, i32 %5, %union.Value* %6)
  ret %union.Node* %7
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc %union.Node* @getfreepos(%struct.Table* nocapture) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %3 = load %union.Node*, %union.Node** %2, align 8, !tbaa !16
  %4 = icmp eq %union.Node* %3, null
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %1
  %6 = load %union.Node*, %union.Node** %2, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %8 = load %union.Node*, %union.Node** %7, align 8, !tbaa !14
  %9 = icmp ugt %union.Node* %6, %8
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %5
  br label %15

; <label>:11:                                     ; preds = %15
  %12 = load %union.Node*, %union.Node** %2, align 8, !tbaa !16
  %13 = load %union.Node*, %union.Node** %7, align 8, !tbaa !14
  %14 = icmp ugt %union.Node* %12, %13
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %10, %11
  %16 = phi %union.Node* [ %12, %11 ], [ %6, %10 ]
  %17 = getelementptr inbounds %union.Node, %union.Node* %16, i64 -1
  store %union.Node* %17, %union.Node** %2, align 8, !tbaa !16
  %18 = getelementptr inbounds %union.Node, %union.Node* %16, i64 -1, i32 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %11

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %union.Node, %union.Node* %16, i64 -1
  br label %23

; <label>:23:                                     ; preds = %11, %5, %21, %1
  %24 = phi %union.Node* [ null, %1 ], [ %22, %21 ], [ null, %5 ], [ null, %11 ]
  ret %union.Node* %24
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rehash(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = bitcast [32 x i32]* %5 to i8*
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 128, i32 16, i1 false)
  %8 = tail call fastcc i32 @setlimittosize(%struct.Table* %1)
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %10 = call fastcc i32 @numusearray(%struct.Table* %1, i32* nonnull %9)
  store i32 %10, i32* %4, align 4, !tbaa !23
  %11 = call fastcc i32 @numusehash(%struct.Table* %1, i32* nonnull %9, i32* nonnull %4)
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !10
  %14 = icmp eq i8 %13, 35
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.TValue* %2 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !12
  %18 = call fastcc i32 @countint(i64 %17, i32* nonnull %9)
  %19 = load i32, i32* %4, align 4, !tbaa !23
  %20 = add i32 %19, %18
  store i32 %20, i32* %4, align 4, !tbaa !23
  br label %21

; <label>:21:                                     ; preds = %15, %3
  %22 = call fastcc i32 @computesizes(i32* nonnull %9, i32* nonnull %4)
  %23 = load i32, i32* %4, align 4, !tbaa !23
  %24 = add i32 %10, 1
  %25 = add i32 %24, %11
  %26 = sub i32 %25, %23
  tail call void @luaH_resize(%struct.lua_State* %0, %struct.Table* %1, i32 %22, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = tail call %struct.TValue* @luaH_get(%struct.Table* %1, %struct.TValue* %2)
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !10
  %7 = icmp eq i8 %6, 32
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %2)
  br label %10

; <label>:10:                                     ; preds = %3, %8
  %11 = phi %struct.TValue* [ %9, %8 ], [ %4, %3 ]
  ret %struct.TValue* %11
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.Node* @mainposition(%struct.Table* nocapture readonly, i32, %union.Value* nocapture readonly) unnamed_addr #2 {
  %4 = trunc i32 %1 to i6
  switch i6 %4, label %106 [
    i6 -29, label %5
    i6 19, label %19
    i6 20, label %34
    i6 -28, label %49
    i6 1, label %63
    i6 2, label %76
    i6 -26, label %91
  ]

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %7 = load %union.Node*, %union.Node** %6, align 8, !tbaa !14
  %8 = bitcast %union.Value* %2 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = shl i32 1, %12
  %14 = add nsw i32 %13, -1
  %15 = trunc i64 %9 to i32
  %16 = and i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %union.Node, %union.Node* %7, i64 %17
  br label %121

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %21 = load %union.Node*, %union.Node** %20, align 8, !tbaa !14
  %22 = bitcast %union.Value* %2 to double*
  %23 = load double, double* %22, align 8, !tbaa !12
  %24 = tail call fastcc i32 @l_hashfloat(double %23)
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i32
  %28 = shl i32 1, %27
  %29 = add nsw i32 %28, -1
  %30 = or i32 %29, 1
  %31 = srem i32 %24, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %union.Node, %union.Node* %21, i64 %32
  br label %121

; <label>:34:                                     ; preds = %3
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %36 = load %union.Node*, %union.Node** %35, align 8, !tbaa !14
  %37 = bitcast %union.Value* %2 to %struct.TString**
  %38 = load %struct.TString*, %struct.TString** %37, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.TString, %struct.TString* %38, i64 0, i32 5
  %40 = load i32, i32* %39, align 4, !tbaa !12
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i32
  %44 = shl i32 1, %43
  %45 = add nsw i32 %44, -1
  %46 = and i32 %45, %40
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.Node, %union.Node* %36, i64 %47
  br label %121

; <label>:49:                                     ; preds = %3
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %51 = load %union.Node*, %union.Node** %50, align 8, !tbaa !14
  %52 = bitcast %union.Value* %2 to %struct.TString**
  %53 = load %struct.TString*, %struct.TString** %52, align 8, !tbaa !12
  %54 = tail call i32 @luaS_hashlongstr(%struct.TString* %53) #9
  %55 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %56 = load i8, i8* %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i32
  %58 = shl i32 1, %57
  %59 = add nsw i32 %58, -1
  %60 = and i32 %59, %54
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %union.Node, %union.Node* %51, i64 %61
  br label %121

; <label>:63:                                     ; preds = %3
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %65 = load %union.Node*, %union.Node** %64, align 8, !tbaa !14
  %66 = bitcast %union.Value* %2 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %69 = load i8, i8* %68, align 1, !tbaa !13
  %70 = zext i8 %69 to i32
  %71 = shl i32 1, %70
  %72 = add nsw i32 %71, -1
  %73 = and i32 %72, %67
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %union.Node, %union.Node* %65, i64 %74
  br label %121

; <label>:76:                                     ; preds = %3
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %78 = load %union.Node*, %union.Node** %77, align 8, !tbaa !14
  %79 = bitcast %union.Value* %2 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !12
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %83 = load i8, i8* %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i32
  %85 = shl i32 1, %84
  %86 = add nsw i32 %85, -1
  %87 = or i32 %86, 1
  %88 = urem i32 %81, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %union.Node, %union.Node* %78, i64 %89
  br label %121

; <label>:91:                                     ; preds = %3
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %93 = load %union.Node*, %union.Node** %92, align 8, !tbaa !14
  %94 = bitcast %union.Value* %2 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !12
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %98 = load i8, i8* %97, align 1, !tbaa !13
  %99 = zext i8 %98 to i32
  %100 = shl i32 1, %99
  %101 = add nsw i32 %100, -1
  %102 = or i32 %101, 1
  %103 = urem i32 %96, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %union.Node, %union.Node* %93, i64 %104
  br label %121

; <label>:106:                                    ; preds = %3
  %107 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %108 = load %union.Node*, %union.Node** %107, align 8, !tbaa !14
  %109 = bitcast %union.Value* %2 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !12
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %113 = load i8, i8* %112, align 1, !tbaa !13
  %114 = zext i8 %113 to i32
  %115 = shl i32 1, %114
  %116 = add nsw i32 %115, -1
  %117 = or i32 %116, 1
  %118 = urem i32 %111, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %union.Node, %union.Node* %108, i64 %119
  br label %121

; <label>:121:                                    ; preds = %106, %91, %76, %63, %49, %34, %19, %5
  %122 = phi %union.Node* [ %120, %106 ], [ %105, %91 ], [ %90, %76 ], [ %75, %63 ], [ %62, %49 ], [ %48, %34 ], [ %33, %19 ], [ %18, %5 ]
  ret %union.Node* %122
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define hidden %struct.TValue* @luaH_getint(%struct.Table* nocapture, i64) local_unnamed_addr #3 {
  %3 = add i64 %1, -1
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = zext i32 %5 to i64
  %7 = icmp ult i64 %3, %6
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 %3
  br label %62

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %14 = load i8, i8* %13, align 1, !tbaa !2
  %15 = icmp slt i8 %14, 0
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %12
  %17 = add i32 %5, -1
  %18 = and i32 %17, %5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

; <label>:20:                                     ; preds = %16
  %21 = add i32 %5, 1
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %20
  %25 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0)
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %3, %26
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %24, %20
  %29 = trunc i64 %1 to i32
  store i32 %29, i32* %4, align 4, !tbaa !8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 %3
  br label %62

; <label>:33:                                     ; preds = %24, %16, %12
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %35 = load %union.Node*, %union.Node** %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %37 = load i8, i8* %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = shl i32 1, %38
  %40 = add nsw i32 %39, -1
  %41 = trunc i64 %1 to i32
  %42 = and i32 %40, %41
  br label %43

; <label>:43:                                     ; preds = %58, %33
  %44 = phi i32 [ %42, %33 ], [ %60, %58 ]
  %45 = phi %union.Node* [ %35, %33 ], [ %47, %58 ]
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46
  %48 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46, i32 0, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !12
  %50 = icmp eq i8 %49, 35
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46, i32 0, i32 4
  %53 = bitcast %union.Value* %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !12
  %55 = icmp eq i64 %54, %1
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %51
  %57 = bitcast %union.Node* %47 to %struct.TValue*
  br label %62

; <label>:58:                                     ; preds = %51, %43
  %59 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46, i32 0, i32 3
  %60 = load i32, i32* %59, align 4, !tbaa !12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %43

; <label>:62:                                     ; preds = %58, %56, %28, %8
  %63 = phi %struct.TValue* [ %11, %8 ], [ %32, %28 ], [ %57, %56 ], [ @absentkey, %58 ]
  ret %struct.TValue* %63
}

; Function Attrs: norecurse nounwind readonly uwtable
define hidden %struct.TValue* @luaH_getshortstr(%struct.Table* nocapture readonly, %struct.TString* readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 5
  %6 = load i32, i32* %5, align 4, !tbaa !28
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %8 = load i8, i8* %7, align 1, !tbaa !13
  %9 = zext i8 %8 to i32
  %10 = shl i32 1, %9
  %11 = add nsw i32 %10, -1
  %12 = and i32 %11, %6
  br label %13

; <label>:13:                                     ; preds = %28, %2
  %14 = phi i32 [ %12, %2 ], [ %30, %28 ]
  %15 = phi %union.Node* [ %4, %2 ], [ %17, %28 ]
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16
  %18 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16, i32 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %20 = icmp eq i8 %19, 84
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16, i32 0, i32 4, i32 0
  %23 = bitcast %struct.GCObject** %22 to %struct.TString**
  %24 = load %struct.TString*, %struct.TString** %23, align 8, !tbaa !12
  %25 = icmp eq %struct.TString* %24, %1
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %21
  %27 = bitcast %union.Node* %17 to %struct.TValue*
  br label %32

; <label>:28:                                     ; preds = %21, %13
  %29 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16, i32 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %13

; <label>:32:                                     ; preds = %28, %26
  %33 = phi %struct.TValue* [ %27, %26 ], [ @absentkey, %28 ]
  ret %struct.TValue* %33
}

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_getstr(%struct.Table* nocapture readonly, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !30
  %6 = icmp eq i8 %5, 20
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* %0, %struct.TString* nonnull %1)
  br label %15

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #9
  %11 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %11, align 8, !tbaa !12
  %12 = or i8 %5, 64
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %12, i8* %13, align 8, !tbaa !10
  %14 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  br label %15

; <label>:15:                                     ; preds = %9, %7
  %16 = phi %struct.TValue* [ %8, %7 ], [ %14, %9 ]
  ret %struct.TValue* %16
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TValue* @getgeneric(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = tail call fastcc %union.Node* @mainpositionTV(%struct.Table* %0, %struct.TValue* %1)
  %4 = tail call fastcc i32 @equalkey(%struct.TValue* %1, %union.Node* %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  br label %10

; <label>:7:                                      ; preds = %15, %2
  %8 = phi %union.Node* [ %3, %2 ], [ %17, %15 ]
  %9 = bitcast %union.Node* %8 to %struct.TValue*
  br label %20

; <label>:10:                                     ; preds = %6, %15
  %11 = phi %union.Node* [ %17, %15 ], [ %3, %6 ]
  %12 = getelementptr inbounds %union.Node, %union.Node* %11, i64 0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

; <label>:15:                                     ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %16
  %18 = tail call fastcc i32 @equalkey(%struct.TValue* %1, %union.Node* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %10, label %7

; <label>:20:                                     ; preds = %10, %7
  %21 = phi %struct.TValue* [ %9, %7 ], [ @absentkey, %10 ]
  ret %struct.TValue* %21
}

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_get(%struct.Table* nocapture, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !10
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %25 [
    i6 20, label %7
    i6 -29, label %11
    i6 0, label %27
    i6 19, label %15
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %1 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !12
  %10 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* %0, %struct.TString* %9)
  br label %27

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.TValue* %1 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !12
  %14 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %13)
  br label %27

; <label>:15:                                     ; preds = %2
  %16 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9
  %17 = bitcast %struct.TValue* %1 to double*
  %18 = load double, double* %17, align 8, !tbaa !12
  %19 = call i32 @luaV_flttointeger(double %18, i64* nonnull %3, i32 0) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9
  br label %25

; <label>:22:                                     ; preds = %15
  %23 = load i64, i64* %3, align 8, !tbaa !19
  %24 = call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %23)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9
  br label %27

; <label>:25:                                     ; preds = %21, %2
  %26 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %1)
  br label %27

; <label>:27:                                     ; preds = %22, %2, %25, %11, %7
  %28 = phi %struct.TValue* [ %26, %25 ], [ %24, %22 ], [ %14, %11 ], [ %10, %7 ], [ @absentkey, %2 ]
  ret %struct.TValue* %28
}

; Function Attrs: norecurse nounwind uwtable
define hidden i64 @luaH_getn(%struct.Table* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !9
  %8 = add i32 %3, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %9, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !10
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %47

; <label>:14:                                     ; preds = %5
  %15 = icmp ugt i32 %3, 1
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %14
  %17 = add i32 %3, -2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %18, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !10
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

; <label>:23:                                     ; preds = %16
  %24 = tail call fastcc i32 @ispow2realasize(%struct.Table* nonnull %0)
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %8, %17
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %27, %25
  br i1 %28, label %92, label %29

; <label>:29:                                     ; preds = %23
  store i32 %8, i32* %2, align 4, !tbaa !8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %32 = or i8 %31, -128
  store i8 %32, i8* %30, align 1, !tbaa !2
  br label %92

; <label>:33:                                     ; preds = %16, %14
  %34 = tail call fastcc i32 @binsearch(%struct.TValue* %7, i32 0, i32 %3)
  %35 = tail call fastcc i32 @ispow2realasize(%struct.Table* nonnull %0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0)
  %39 = lshr i32 %38, 1
  %40 = icmp ugt i32 %34, %39
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %37
  store i32 %34, i32* %2, align 4, !tbaa !8
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %44 = or i8 %43, -128
  store i8 %44, i8* %42, align 1, !tbaa !2
  br label %45

; <label>:45:                                     ; preds = %33, %41, %37
  %46 = zext i32 %34 to i64
  br label %92

; <label>:47:                                     ; preds = %1, %5
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %50 = icmp slt i8 %49, 0
  br i1 %50, label %51, label %74

; <label>:51:                                     ; preds = %47
  %52 = add i32 %3, -1
  %53 = and i32 %52, %3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %55

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %57 = load %struct.TValue*, %struct.TValue** %56, align 8, !tbaa !9
  %58 = zext i32 %3 to i64
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %58, i32 1
  %60 = load i8, i8* %59, align 8, !tbaa !10
  %61 = and i8 %60, 15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %92, label %63

; <label>:63:                                     ; preds = %55
  %64 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0)
  %65 = add i32 %64, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %66, i32 1
  %68 = load i8, i8* %67, align 8, !tbaa !10
  %69 = and i8 %68, 15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %63
  %72 = tail call fastcc i32 @binsearch(%struct.TValue* nonnull %57, i32 %3, i32 %64)
  store i32 %72, i32* %2, align 4, !tbaa !8
  %73 = zext i32 %72 to i64
  br label %92

; <label>:74:                                     ; preds = %63, %51, %47
  %75 = phi i32 [ %3, %51 ], [ %64, %63 ], [ %3, %47 ]
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %77 = load %union.Node*, %union.Node** %76, align 8, !tbaa !16
  %78 = icmp eq %union.Node* %77, null
  br i1 %78, label %87, label %79

; <label>:79:                                     ; preds = %74
  %80 = add i32 %75, 1
  %81 = zext i32 %80 to i64
  %82 = tail call %struct.TValue* @luaH_getint(%struct.Table* nonnull %0, i64 %81)
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 0, i32 1
  %84 = load i8, i8* %83, align 8, !tbaa !10
  %85 = and i8 %84, 15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %79, %74
  %88 = zext i32 %75 to i64
  br label %92

; <label>:89:                                     ; preds = %79
  %90 = zext i32 %75 to i64
  %91 = tail call fastcc i64 @hash_search(%struct.Table* nonnull %0, i64 %90)
  br label %92

; <label>:92:                                     ; preds = %55, %29, %23, %89, %87, %71, %45
  %93 = phi i64 [ %46, %45 ], [ %88, %87 ], [ %91, %89 ], [ %73, %71 ], [ %9, %23 ], [ %9, %29 ], [ %58, %55 ]
  ret i64 %93
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @ispow2realasize(%struct.Table* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 1, !tbaa !2
  %4 = icmp slt i8 %3, 0
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4, !tbaa !8
  %8 = add i32 %7, -1
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @binsearch(%struct.TValue* nocapture readonly, i32, i32) unnamed_addr #0 {
  %4 = sub i32 %2, %1
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %22

; <label>:6:                                      ; preds = %3
  br label %7

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i32 [ %19, %7 ], [ %1, %6 ]
  %9 = phi i32 [ %18, %7 ], [ %2, %6 ]
  %10 = add i32 %8, %9
  %11 = lshr i32 %10, 1
  %12 = add nsw i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 %13, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !10
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 %11, i32 %9
  %19 = select i1 %17, i32 %8, i32 %11
  %20 = sub i32 %18, %19
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %7, label %22

; <label>:22:                                     ; preds = %7, %3
  %23 = phi i32 [ %1, %3 ], [ %19, %7 ]
  ret i32 %23
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i64 @hash_search(%struct.Table* nocapture, i64) unnamed_addr #3 {
  %3 = icmp eq i64 %1, 0
  %4 = zext i1 %3 to i64
  %5 = add i64 %4, %1
  br label %6

; <label>:6:                                      ; preds = %9, %2
  %7 = phi i64 [ %5, %2 ], [ %10, %9 ]
  %8 = icmp ult i64 %7, 4611686018427387904
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = shl i64 %7, 1
  %11 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %10)
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !10
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %6

; <label>:16:                                     ; preds = %6
  %17 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 9223372036854775807)
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i64 0, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !10
  %20 = and i8 %19, 15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %41

; <label>:22:                                     ; preds = %9, %16
  %23 = phi i64 [ 9223372036854775807, %16 ], [ %10, %9 ]
  %24 = sub i64 %23, %7
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %41

; <label>:26:                                     ; preds = %22
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %38, %27 ], [ %7, %26 ]
  %29 = phi i64 [ %37, %27 ], [ %23, %26 ]
  %30 = add i64 %28, %29
  %31 = lshr i64 %30, 1
  %32 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %31)
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !10
  %35 = and i8 %34, 15
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i64 %31, i64 %29
  %38 = select i1 %36, i64 %28, i64 %31
  %39 = sub i64 %37, %38
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %27, label %41

; <label>:41:                                     ; preds = %27, %22, %16
  %42 = phi i64 [ 9223372036854775807, %16 ], [ %7, %22 ], [ %38, %27 ]
  ret i64 %42
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @arrayindex(i64) unnamed_addr #6 {
  %2 = add i64 %0, -1
  %3 = icmp ult i64 %2, 2147483648
  %4 = trunc i64 %0 to i32
  %5 = select i1 %3, i32 %4, i32 0
  ret i32 %5
}

declare hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #4

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @numusearray(%struct.Table* nocapture readonly, i32* nocapture) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %4 = load i32, i32* %3, align 4, !tbaa !8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  br label %6

; <label>:6:                                      ; preds = %2, %32
  %7 = phi i64 [ 0, %2 ], [ %39, %32 ]
  %8 = phi i32 [ 1, %2 ], [ %33, %32 ]
  %9 = phi i32 [ 0, %2 ], [ %38, %32 ]
  %10 = phi i32 [ 1, %2 ], [ %40, %32 ]
  %11 = icmp ugt i32 %10, %4
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %6
  %13 = icmp ugt i32 %8, %4
  br i1 %13, label %42, label %14

; <label>:14:                                     ; preds = %12, %6
  %15 = phi i32 [ %4, %12 ], [ %10, %6 ]
  %16 = icmp ugt i32 %8, %15
  br i1 %16, label %32, label %17

; <label>:17:                                     ; preds = %14
  %18 = load %struct.TValue*, %struct.TValue** %5, align 8, !tbaa !9
  br label %19

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i32 [ 0, %17 ], [ %29, %19 ]
  %21 = phi i32 [ %8, %17 ], [ %30, %19 ]
  %22 = add i32 %21, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %23, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !10
  %26 = and i8 %25, 15
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add i32 %20, %28
  %30 = add i32 %21, 1
  %31 = icmp ugt i32 %30, %15
  br i1 %31, label %32, label %19

; <label>:32:                                     ; preds = %19, %14
  %33 = phi i32 [ %8, %14 ], [ %30, %19 ]
  %34 = phi i32 [ 0, %14 ], [ %29, %19 ]
  %35 = getelementptr inbounds i32, i32* %1, i64 %7
  %36 = load i32, i32* %35, align 4, !tbaa !23
  %37 = add i32 %36, %34
  store i32 %37, i32* %35, align 4, !tbaa !23
  %38 = add i32 %34, %9
  %39 = add nuw nsw i64 %7, 1
  %40 = shl i32 %10, 1
  %41 = icmp ult i64 %39, 32
  br i1 %41, label %6, label %42

; <label>:42:                                     ; preds = %12, %32
  %43 = phi i32 [ %9, %12 ], [ %38, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @numusehash(%struct.Table* nocapture readonly, i32* nocapture, i32* nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %5 = load i8, i8* %4, align 1, !tbaa !13
  %6 = zext i8 %5 to i32
  %7 = shl i32 1, %6
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %9 = sext i32 %7 to i64
  br label %10

; <label>:10:                                     ; preds = %3, %33
  %11 = phi i64 [ %9, %3 ], [ %14, %33 ]
  %12 = phi i32 [ 0, %3 ], [ %35, %33 ]
  %13 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %14 = add nsw i64 %11, -1
  %15 = load %union.Node*, %union.Node** %8, align 8, !tbaa !14
  %16 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %14, i32 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !12
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %14, i32 0, i32 2
  %22 = load i8, i8* %21, align 1, !tbaa !12
  %23 = icmp eq i8 %22, 35
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %14, i32 0, i32 4
  %26 = bitcast %union.Value* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = tail call fastcc i32 @countint(i64 %27, i32* %1)
  %29 = add nsw i32 %28, %13
  br label %30

; <label>:30:                                     ; preds = %24, %20
  %31 = phi i32 [ %29, %24 ], [ %13, %20 ]
  %32 = add nsw i32 %12, 1
  br label %33

; <label>:33:                                     ; preds = %30, %10
  %34 = phi i32 [ %13, %10 ], [ %31, %30 ]
  %35 = phi i32 [ %12, %10 ], [ %32, %30 ]
  %36 = trunc i64 %14 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %10

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %2, align 4, !tbaa !23
  %40 = add i32 %39, %34
  store i32 %40, i32* %2, align 4, !tbaa !23
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @countint(i64, i32* nocapture) unnamed_addr #2 {
  %3 = tail call fastcc i32 @arrayindex(i64 %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaO_ceillog2(i32 %3) #9
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %1, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !23
  %10 = add i32 %9, 1
  store i32 %10, i32* %8, align 4, !tbaa !23
  br label %11

; <label>:11:                                     ; preds = %2, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @computesizes(i32* nocapture readonly, i32* nocapture) unnamed_addr #3 {
  %3 = load i32, i32* %1, align 4, !tbaa !23
  br label %4

; <label>:4:                                      ; preds = %2, %12
  %5 = phi i64 [ 0, %2 ], [ %19, %12 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %12 ]
  %7 = phi i32 [ 0, %2 ], [ %17, %12 ]
  %8 = phi i32 [ 0, %2 ], [ %15, %12 ]
  %9 = phi i32 [ 1, %2 ], [ %20, %12 ]
  %10 = lshr i32 %9, 1
  %11 = icmp ugt i32 %3, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i32, i32* %0, i64 %5
  %14 = load i32, i32* %13, align 4, !tbaa !23
  %15 = add i32 %14, %8
  %16 = icmp ugt i32 %15, %10
  %17 = select i1 %16, i32 %15, i32 %7
  %18 = select i1 %16, i32 %9, i32 %6
  %19 = add nuw nsw i64 %5, 1
  %20 = shl i32 %9, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %4

; <label>:22:                                     ; preds = %12, %4
  %23 = phi i32 [ %17, %12 ], [ %7, %4 ]
  %24 = phi i32 [ %18, %12 ], [ %6, %4 ]
  store i32 %23, i32* %1, align 4, !tbaa !23
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @l_hashfloat(double) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %4 = call double @frexp(double %0, i32* nonnull %2) #9
  %5 = fmul double %4, 0x41E0000000000000
  %6 = fcmp oge double %5, 0xC3E0000000000000
  %7 = fcmp olt double %5, 0x43E0000000000000
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %1
  %10 = fptosi double %5 to i64
  %11 = load i32, i32* %2, align 4, !tbaa !23
  %12 = trunc i64 %10 to i32
  %13 = add i32 %11, %12
  %14 = ashr i32 %13, 31
  %15 = xor i32 %14, %13
  br label %16

; <label>:16:                                     ; preds = %1, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %17
}

declare hidden i32 @luaS_hashlongstr(%struct.TString*) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @frexp(double, i32* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @equalkey(%struct.TValue* nocapture readonly, %union.Node* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 2
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %64

; <label>:8:                                      ; preds = %2
  %9 = trunc i8 %4 to i6
  switch i6 %9, label %57 [
    i6 0, label %64
    i6 -29, label %10
    i6 19, label %18
    i6 1, label %26
    i6 2, label %34
    i6 -26, label %42
    i6 -28, label %50
  ]

; <label>:10:                                     ; preds = %8
  %11 = bitcast %struct.TValue* %0 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4
  %14 = bitcast %union.Value* %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !12
  %16 = icmp eq i64 %12, %15
  %17 = zext i1 %16 to i32
  br label %64

; <label>:18:                                     ; preds = %8
  %19 = bitcast %struct.TValue* %0 to double*
  %20 = load double, double* %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4
  %22 = bitcast %union.Value* %21 to double*
  %23 = load double, double* %22, align 8, !tbaa !12
  %24 = fcmp oeq double %20, %23
  %25 = zext i1 %24 to i32
  br label %64

; <label>:26:                                     ; preds = %8
  %27 = bitcast %struct.TValue* %0 to i32*
  %28 = load i32, i32* %27, align 8, !tbaa !12
  %29 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4
  %30 = bitcast %union.Value* %29 to i32*
  %31 = load i32, i32* %30, align 8, !tbaa !12
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  br label %64

; <label>:34:                                     ; preds = %8
  %35 = bitcast %struct.TValue* %0 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4
  %38 = bitcast %union.Value* %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !12
  %40 = icmp eq i8* %36, %39
  %41 = zext i1 %40 to i32
  br label %64

; <label>:42:                                     ; preds = %8
  %43 = bitcast %struct.TValue* %0 to i32 (%struct.lua_State*)**
  %44 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %43, align 8, !tbaa !12
  %45 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4
  %46 = bitcast %union.Value* %45 to i32 (%struct.lua_State*)**
  %47 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %46, align 8, !tbaa !12
  %48 = icmp eq i32 (%struct.lua_State*)* %44, %47
  %49 = zext i1 %48 to i32
  br label %64

; <label>:50:                                     ; preds = %8
  %51 = bitcast %struct.TValue* %0 to %struct.TString**
  %52 = load %struct.TString*, %struct.TString** %51, align 8, !tbaa !12
  %53 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4, i32 0
  %54 = bitcast %struct.GCObject** %53 to %struct.TString**
  %55 = load %struct.TString*, %struct.TString** %54, align 8, !tbaa !12
  %56 = tail call i32 @luaS_eqlngstr(%struct.TString* %52, %struct.TString* %55) #9
  br label %64

; <label>:57:                                     ; preds = %8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 0, i32 0
  %59 = load %struct.GCObject*, %struct.GCObject** %58, align 8, !tbaa !12
  %60 = getelementptr inbounds %union.Node, %union.Node* %1, i64 0, i32 0, i32 4, i32 0
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !12
  %62 = icmp eq %struct.GCObject* %59, %61
  %63 = zext i1 %62 to i32
  br label %64

; <label>:64:                                     ; preds = %8, %2, %57, %50, %42, %34, %26, %18, %10
  %65 = phi i32 [ %63, %57 ], [ %56, %50 ], [ %49, %42 ], [ %41, %34 ], [ %33, %26 ], [ %25, %18 ], [ %17, %10 ], [ 0, %2 ], [ 1, %8 ]
  ret i32 %65
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !5, i64 9}
!3 = !{!"Table", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 12}
!9 = !{!3, !4, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"TValue", !5, i64 0, !5, i64 8}
!12 = !{!5, !5, i64 0}
!13 = !{!3, !5, i64 11}
!14 = !{!3, !4, i64 24}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!3, !4, i64 32}
!17 = !{!3, !4, i64 40}
!18 = !{!3, !5, i64 10}
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !5, i64 0}
!21 = !{i64 0, i64 8, !22, i64 0, i64 8, !22, i64 0, i64 4, !23, i64 0, i64 8, !22, i64 0, i64 8, !19, i64 0, i64 8, !24, i64 8, i64 1, !12, i64 9, i64 1, !12, i64 12, i64 4, !23, i64 16, i64 8, !22, i64 16, i64 8, !22, i64 16, i64 4, !23, i64 16, i64 8, !22, i64 16, i64 8, !19, i64 16, i64 8, !24, i64 0, i64 8, !22, i64 0, i64 8, !22, i64 0, i64 4, !23, i64 0, i64 8, !22, i64 0, i64 8, !19, i64 0, i64 8, !24, i64 8, i64 1, !12}
!22 = !{!4, !4, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !5, i64 0}
!26 = !{!27, !5, i64 9}
!27 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!28 = !{!29, !7, i64 12}
!29 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!30 = !{!29, !5, i64 8}
