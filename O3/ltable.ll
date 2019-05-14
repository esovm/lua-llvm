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
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %6 = load i32, i32* %5, align 4, !tbaa !8
  br i1 %4, label %7, label %23

; <label>:7:                                      ; preds = %1
  %8 = add i32 %6, -1
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

; <label>:11:                                     ; preds = %7
  %12 = lshr i32 %6, 1
  %13 = or i32 %12, %6
  %14 = lshr i32 %13, 2
  %15 = or i32 %14, %13
  %16 = lshr i32 %15, 4
  %17 = or i32 %16, %15
  %18 = lshr i32 %17, 8
  %19 = or i32 %18, %17
  %20 = lshr i32 %19, 16
  %21 = or i32 %20, %19
  %22 = add i32 %21, 1
  br label %23

; <label>:23:                                     ; preds = %1, %7, %11
  %24 = phi i32 [ %22, %11 ], [ %6, %7 ], [ %6, %1 ]
  ret i32 %24
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table* nocapture readonly, %union.StackValue* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %6 = icmp slt i8 %5, 0
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !8
  br i1 %6, label %9, label %25

; <label>:9:                                      ; preds = %3
  %10 = add i32 %8, -1
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

; <label>:13:                                     ; preds = %9
  %14 = lshr i32 %8, 1
  %15 = or i32 %14, %8
  %16 = lshr i32 %15, 2
  %17 = or i32 %16, %15
  %18 = lshr i32 %17, 4
  %19 = or i32 %18, %17
  %20 = lshr i32 %19, 8
  %21 = or i32 %20, %19
  %22 = lshr i32 %21, 16
  %23 = or i32 %22, %21
  %24 = add i32 %23, 1
  br label %25

; <label>:25:                                     ; preds = %3, %9, %13
  %26 = phi i32 [ %24, %13 ], [ %8, %9 ], [ %8, %3 ]
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0, i32 1
  %29 = load i8, i8* %28, align 8, !tbaa !9
  %30 = and i8 %29, 15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %61, label %32

; <label>:32:                                     ; preds = %25
  %33 = icmp eq i8 %29, 35
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %32
  %35 = bitcast %union.StackValue* %2 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !11
  %37 = add i64 %36, -1
  %38 = icmp ult i64 %37, 2147483648
  %39 = trunc i64 %36 to i32
  %40 = select i1 %38, i32 %39, i32 0
  br label %41

; <label>:41:                                     ; preds = %34, %32
  %42 = phi i32 [ %40, %34 ], [ 0, %32 ]
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, %26
  br i1 %44, label %61, label %45

; <label>:45:                                     ; preds = %41
  %46 = tail call fastcc %struct.TValue* @getgeneric(%struct.Table* nonnull %1, %struct.TValue* nonnull %27) #7
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i64 0, i32 1
  %48 = load i8, i8* %47, align 8, !tbaa !9
  %49 = icmp eq i8 %48, 32
  br i1 %49, label %50, label %51, !prof !12

; <label>:50:                                     ; preds = %45
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #8
  unreachable

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %53 = bitcast %union.Node** %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !13
  %55 = ptrtoint %struct.TValue* %46 to i64
  %56 = sub i64 %55, %54
  %57 = sdiv exact i64 %56, 24
  %58 = trunc i64 %57 to i32
  %59 = add i32 %26, 1
  %60 = add i32 %59, %58
  br label %61

; <label>:61:                                     ; preds = %25, %41, %51
  %62 = phi i32 [ %60, %51 ], [ 0, %25 ], [ %42, %41 ]
  %63 = icmp ult i32 %62, %26
  br i1 %63, label %64, label %90

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %66 = load %struct.TValue*, %struct.TValue** %65, align 8, !tbaa !14
  br label %69

; <label>:67:                                     ; preds = %69
  %68 = icmp ult i32 %76, %26
  br i1 %68, label %69, label %90

; <label>:69:                                     ; preds = %64, %67
  %70 = phi i32 [ %62, %64 ], [ %76, %67 ]
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %66, i64 %71, i32 1
  %73 = load i8, i8* %72, align 8, !tbaa !9
  %74 = and i8 %73, 15
  %75 = icmp eq i8 %74, 0
  %76 = add i32 %70, 1
  br i1 %75, label %67, label %77

; <label>:77:                                     ; preds = %69
  %78 = zext i32 %70 to i64
  %79 = zext i32 %76 to i64
  %80 = bitcast %union.StackValue* %2 to i64*
  store i64 %79, i64* %80, align 8, !tbaa !11
  store i8 35, i8* %28, align 8, !tbaa !9
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %82 = load %struct.TValue*, %struct.TValue** %65, align 8, !tbaa !14
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 %78
  %84 = bitcast %struct.TValue* %83 to i64*
  %85 = bitcast %struct.TValue* %81 to i64*
  %86 = load i64, i64* %84, align 8
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 %78, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !9
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %88, i8* %89, align 8, !tbaa !9
  br label %126

; <label>:90:                                     ; preds = %67, %61
  %91 = phi i32 [ %62, %61 ], [ %76, %67 ]
  %92 = sub i32 %91, %26
  %93 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %94 = load i8, i8* %93, align 1, !tbaa !15
  %95 = zext i8 %94 to i32
  %96 = shl i32 1, %95
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %126

; <label>:98:                                     ; preds = %90
  %99 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %100 = load %union.Node*, %union.Node** %99, align 8, !tbaa !13
  br label %103

; <label>:101:                                    ; preds = %103
  %102 = icmp slt i32 %110, %96
  br i1 %102, label %103, label %126

; <label>:103:                                    ; preds = %98, %101
  %104 = phi i32 [ %92, %98 ], [ %110, %101 ]
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %union.Node, %union.Node* %100, i64 %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 8, !tbaa !11
  %108 = and i8 %107, 15
  %109 = icmp eq i8 %108, 0
  %110 = add nsw i32 %104, 1
  br i1 %109, label %101, label %111

; <label>:111:                                    ; preds = %103
  %112 = zext i32 %104 to i64
  %113 = getelementptr inbounds %union.Node, %union.Node* %100, i64 %112, i32 0, i32 4
  %114 = bitcast %union.Value* %113 to i64*
  %115 = bitcast %union.StackValue* %2 to i64*
  %116 = load i64, i64* %114, align 8
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds %union.Node, %union.Node* %100, i64 %112, i32 0, i32 2
  %118 = load i8, i8* %117, align 1, !tbaa !11
  store i8 %118, i8* %28, align 8, !tbaa !9
  %119 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %120 = getelementptr inbounds %union.Node, %union.Node* %100, i64 %112, i32 0, i32 0
  %121 = bitcast %union.Value* %120 to i64*
  %122 = bitcast %struct.TValue* %119 to i64*
  %123 = load i64, i64* %121, align 8
  store i64 %123, i64* %122, align 8
  %124 = load i8, i8* %106, align 8, !tbaa !9
  %125 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %124, i8* %125, align 8, !tbaa !9
  br label %126

; <label>:126:                                    ; preds = %101, %90, %111, %77
  %127 = phi i32 [ 1, %77 ], [ 1, %111 ], [ 0, %90 ], [ 0, %101 ]
  ret i32 %127
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.Table, align 8
  %7 = bitcast %struct.Table* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #7
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !2
  %10 = icmp slt i8 %9, 0
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %12 = load i32, i32* %11, align 4, !tbaa !8
  br i1 %10, label %13, label %29

; <label>:13:                                     ; preds = %4
  %14 = add i32 %12, -1
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

; <label>:17:                                     ; preds = %13
  %18 = lshr i32 %12, 1
  %19 = or i32 %18, %12
  %20 = lshr i32 %19, 2
  %21 = or i32 %20, %19
  %22 = lshr i32 %21, 4
  %23 = or i32 %22, %21
  %24 = lshr i32 %23, 8
  %25 = or i32 %24, %23
  %26 = lshr i32 %25, 16
  %27 = or i32 %26, %25
  %28 = add i32 %27, 1
  br label %29

; <label>:29:                                     ; preds = %4, %13, %17
  %30 = phi i32 [ %28, %17 ], [ %12, %13 ], [ %12, %4 ]
  store i32 %30, i32* %11, align 4, !tbaa !8
  %31 = and i8 %9, 127
  store i8 %31, i8* %8, align 1, !tbaa !2
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  store i8 0, i8* %35, align 1, !tbaa !15
  %36 = bitcast %union.Node** %34 to <2 x %union.Node*>*
  store <2 x %union.Node*> <%union.Node* @dummynode_, %union.Node* null>, <2 x %union.Node*>* %36, align 8, !tbaa !16
  br label %72

; <label>:37:                                     ; preds = %29
  %38 = tail call i32 @luaO_ceillog2(i32 %3) #7
  %39 = icmp sgt i32 %38, 30
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %37
  %41 = shl i32 1, %38
  %42 = icmp ugt i32 %38, 30
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40, %37
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8
  unreachable

; <label>:44:                                     ; preds = %40
  %45 = zext i32 %41 to i64
  %46 = mul nuw nsw i64 %45, 24
  %47 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 %46, i32 0) #7
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %49 = bitcast %union.Node** %48 to i8**
  store i8* %47, i8** %49, align 8, !tbaa !13
  %50 = bitcast i8* %47 to %union.Node*
  %51 = sext i32 %41 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 12
  %53 = bitcast i8* %52 to i32*
  store i32 0, i32* %53, align 4, !tbaa !11
  %54 = getelementptr inbounds i8, i8* %47, i64 9
  store i8 0, i8* %54, align 1, !tbaa !11
  %55 = getelementptr inbounds i8, i8* %47, i64 8
  store i8 16, i8* %55, align 8, !tbaa !11
  %56 = icmp sgt i32 %41, 1
  %57 = ptrtoint i8* %47 to i64
  br i1 %56, label %58, label %66

; <label>:58:                                     ; preds = %44
  br label %59

; <label>:59:                                     ; preds = %58, %59
  %60 = phi i64 [ %64, %59 ], [ 1, %58 ]
  %61 = getelementptr inbounds %union.Node, %union.Node* %50, i64 %60, i32 0, i32 3
  store i32 0, i32* %61, align 4, !tbaa !11
  %62 = getelementptr inbounds %union.Node, %union.Node* %50, i64 %60, i32 0, i32 2
  store i8 0, i8* %62, align 1, !tbaa !11
  %63 = getelementptr inbounds %union.Node, %union.Node* %50, i64 %60, i32 0, i32 1
  store i8 16, i8* %63, align 8, !tbaa !11
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp slt i64 %64, %51
  br i1 %65, label %59, label %66, !llvm.loop !17

; <label>:66:                                     ; preds = %59, %44
  %67 = trunc i32 %38 to i8
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  store i8 %67, i8* %68, align 1, !tbaa !15
  %69 = getelementptr inbounds %union.Node, %union.Node* %50, i64 %45
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  store %union.Node* %69, %union.Node** %70, align 8, !tbaa !19
  %71 = ptrtoint %union.Node* %69 to i64
  br label %72

; <label>:72:                                     ; preds = %33, %66
  %73 = phi i64 [ 0, %33 ], [ %71, %66 ]
  %74 = phi i64 [ ptrtoint (%union.Node* @dummynode_ to i64), %33 ], [ %57, %66 ]
  %75 = phi i8 [ 0, %33 ], [ %67, %66 ]
  %76 = icmp ugt i32 %30, %2
  br i1 %76, label %80, label %77

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %79 = zext i32 %2 to i64
  br label %116

; <label>:80:                                     ; preds = %72
  store i32 %2, i32* %11, align 4, !tbaa !8
  %81 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %82 = load i8, i8* %81, align 1, !tbaa !15
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %84 = bitcast %union.Node** %83 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !13
  %86 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %87 = bitcast %union.Node** %86 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !19
  %89 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  store i8 %75, i8* %81, align 1, !tbaa !15
  %90 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %91 = bitcast %union.Node** %90 to i64*
  store i64 %74, i64* %84, align 8, !tbaa !13
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  %93 = bitcast %union.Node** %92 to i64*
  store i64 %73, i64* %87, align 8, !tbaa !19
  store i8 %82, i8* %89, align 1, !tbaa !15
  store i64 %85, i64* %91, align 8, !tbaa !13
  store i64 %88, i64* %93, align 8, !tbaa !19
  %94 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %95 = zext i32 %2 to i64
  %96 = zext i32 %30 to i64
  br label %97

; <label>:97:                                     ; preds = %109, %80
  %98 = phi i64 [ %95, %80 ], [ %110, %109 ]
  %99 = load %struct.TValue*, %struct.TValue** %94, align 8, !tbaa !14
  %100 = getelementptr inbounds %struct.TValue, %struct.TValue* %99, i64 %98, i32 1
  %101 = load i8, i8* %100, align 8, !tbaa !9
  %102 = and i8 %101, 15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %97
  %105 = add nuw nsw i64 %98, 1
  br label %109

; <label>:106:                                    ; preds = %97
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %99, i64 %98
  %108 = add nuw nsw i64 %98, 1
  tail call void @luaH_setint(%struct.lua_State* %0, %struct.Table* nonnull %1, i64 %108, %struct.TValue* %107)
  br label %109

; <label>:109:                                    ; preds = %104, %106
  %110 = phi i64 [ %105, %104 ], [ %108, %106 ]
  %111 = icmp eq i64 %110, %96
  br i1 %111, label %112, label %97

; <label>:112:                                    ; preds = %109
  store i32 %30, i32* %11, align 4, !tbaa !8
  %113 = load i8, i8* %81, align 1, !tbaa !15
  %114 = load i64, i64* %84, align 8, !tbaa !13
  %115 = load i64, i64* %87, align 8, !tbaa !19
  store i8 %82, i8* %81, align 1, !tbaa !15
  store i64 %85, i64* %84, align 8, !tbaa !13
  store i64 %88, i64* %87, align 8, !tbaa !19
  store i8 %113, i8* %89, align 1, !tbaa !15
  store i64 %114, i64* %91, align 8, !tbaa !13
  store i64 %115, i64* %93, align 8, !tbaa !19
  br label %116

; <label>:116:                                    ; preds = %77, %112
  %117 = phi i64 [ %79, %77 ], [ %95, %112 ]
  %118 = phi %struct.TValue** [ %78, %77 ], [ %94, %112 ]
  %119 = phi i64 [ %73, %77 ], [ %115, %112 ]
  %120 = phi i64 [ %74, %77 ], [ %114, %112 ]
  %121 = phi i8 [ %75, %77 ], [ %113, %112 ]
  %122 = zext i32 %30 to i64
  %123 = bitcast %struct.TValue** %118 to i8**
  %124 = load i8*, i8** %123, align 8, !tbaa !14
  %125 = shl nuw nsw i64 %122, 4
  %126 = shl nuw nsw i64 %117, 4
  %127 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %124, i64 %125, i64 %126) #7
  %128 = icmp eq i8* %127, null
  %129 = icmp ne i32 %2, 0
  %130 = and i1 %129, %128
  br i1 %130, label %131, label %132, !prof !12

; <label>:131:                                    ; preds = %116
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %6)
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #8
  unreachable

; <label>:132:                                    ; preds = %116
  %133 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %134 = load i8, i8* %133, align 1, !tbaa !15
  %135 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %136 = bitcast %union.Node** %135 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !13
  %138 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %139 = bitcast %union.Node** %138 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !19
  %141 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  store i8 %121, i8* %133, align 1, !tbaa !15
  %142 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %143 = bitcast %union.Node** %142 to i64*
  store i64 %120, i64* %136, align 8, !tbaa !13
  %144 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  %145 = bitcast %union.Node** %144 to i64*
  store i64 %119, i64* %139, align 8, !tbaa !19
  store i8 %134, i8* %141, align 1, !tbaa !15
  store i64 %137, i64* %143, align 8, !tbaa !13
  store i64 %140, i64* %145, align 8, !tbaa !19
  store i8* %127, i8** %123, align 8, !tbaa !14
  store i32 %2, i32* %11, align 4, !tbaa !8
  %146 = icmp ult i32 %30, %2
  %147 = bitcast i8* %127 to %struct.TValue*
  %148 = inttoptr i64 %137 to %union.Node*
  %149 = inttoptr i64 %137 to i8*
  br i1 %146, label %150, label %179

; <label>:150:                                    ; preds = %132
  %151 = sub nsw i64 %117, %122
  %152 = add nsw i64 %117, -1
  %153 = sub nsw i64 %152, %122
  %154 = and i64 %151, 3
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %164, label %156

; <label>:156:                                    ; preds = %150
  br label %157

; <label>:157:                                    ; preds = %157, %156
  %158 = phi i64 [ %161, %157 ], [ %122, %156 ]
  %159 = phi i64 [ %162, %157 ], [ %154, %156 ]
  %160 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i64 %158, i32 1
  store i8 16, i8* %160, align 8, !tbaa !9
  %161 = add nuw nsw i64 %158, 1
  %162 = add i64 %159, -1
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %157, !llvm.loop !20

; <label>:164:                                    ; preds = %157, %150
  %165 = phi i64 [ %122, %150 ], [ %161, %157 ]
  %166 = icmp ult i64 %153, 3
  br i1 %166, label %179, label %167

; <label>:167:                                    ; preds = %164
  br label %168

; <label>:168:                                    ; preds = %168, %167
  %169 = phi i64 [ %165, %167 ], [ %177, %168 ]
  %170 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i64 %169, i32 1
  store i8 16, i8* %170, align 8, !tbaa !9
  %171 = add nuw nsw i64 %169, 1
  %172 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i64 %171, i32 1
  store i8 16, i8* %172, align 8, !tbaa !9
  %173 = add nsw i64 %169, 2
  %174 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i64 %173, i32 1
  store i8 16, i8* %174, align 8, !tbaa !9
  %175 = add nsw i64 %169, 3
  %176 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i64 %175, i32 1
  store i8 16, i8* %176, align 8, !tbaa !9
  %177 = add nsw i64 %169, 4
  %178 = icmp eq i64 %177, %117
  br i1 %178, label %179, label %168

; <label>:179:                                    ; preds = %164, %168, %132
  %180 = zext i8 %134 to i32
  %181 = shl i32 1, %180
  %182 = icmp eq i8 %134, 31
  br i1 %182, label %218, label %183

; <label>:183:                                    ; preds = %179
  %184 = bitcast %struct.TValue* %5 to i8*
  %185 = bitcast %struct.TValue* %5 to i64*
  %186 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %187 = sext i32 %181 to i64
  br label %188

; <label>:188:                                    ; preds = %183, %215
  %189 = phi i64 [ 0, %183 ], [ %216, %215 ]
  %190 = getelementptr inbounds %union.Node, %union.Node* %148, i64 %189, i32 0, i32 1
  %191 = load i8, i8* %190, align 8, !tbaa !11
  %192 = and i8 %191, 15
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %215, label %194

; <label>:194:                                    ; preds = %188
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %184) #7
  %195 = getelementptr inbounds %union.Node, %union.Node* %148, i64 %189, i32 0, i32 4
  %196 = bitcast %union.Value* %195 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %185, align 8
  %198 = getelementptr inbounds %union.Node, %union.Node* %148, i64 %189, i32 0, i32 2
  %199 = load i8, i8* %198, align 1, !tbaa !11
  store i8 %199, i8* %186, align 8, !tbaa !9
  %200 = call %struct.TValue* @luaH_get(%struct.Table* %1, %struct.TValue* nonnull %5) #7
  %201 = getelementptr inbounds %struct.TValue, %struct.TValue* %200, i64 0, i32 1
  %202 = load i8, i8* %201, align 8, !tbaa !9
  %203 = icmp eq i8 %202, 32
  br i1 %203, label %204, label %207

; <label>:204:                                    ; preds = %194
  %205 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5) #7
  %206 = getelementptr inbounds %struct.TValue, %struct.TValue* %205, i64 0, i32 1
  br label %207

; <label>:207:                                    ; preds = %194, %204
  %208 = phi i8* [ %201, %194 ], [ %206, %204 ]
  %209 = phi %struct.TValue* [ %200, %194 ], [ %205, %204 ]
  %210 = getelementptr inbounds %union.Node, %union.Node* %148, i64 %189, i32 0, i32 0
  %211 = bitcast %union.Value* %210 to i64*
  %212 = bitcast %struct.TValue* %209 to i64*
  %213 = load i64, i64* %211, align 8
  store i64 %213, i64* %212, align 8
  %214 = load i8, i8* %190, align 8, !tbaa !9
  store i8 %214, i8* %208, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %184) #7
  br label %215

; <label>:215:                                    ; preds = %207, %188
  %216 = add nuw nsw i64 %189, 1
  %217 = icmp slt i64 %216, %187
  br i1 %217, label %188, label %218

; <label>:218:                                    ; preds = %215, %179
  %219 = icmp eq i64 %140, 0
  br i1 %219, label %223, label %220

; <label>:220:                                    ; preds = %218
  %221 = sext i32 %181 to i64
  %222 = mul nsw i64 %221, 24
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %149, i64 %222) #7
  br label %223

; <label>:223:                                    ; preds = %218, %220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = add i64 %2, -1
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !8
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %13 = load %struct.TValue*, %struct.TValue** %12, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 %6
  br label %75

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %17 = load i8, i8* %16, align 1, !tbaa !2
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %19, label %46

; <label>:19:                                     ; preds = %15
  %20 = add i32 %8, -1
  %21 = and i32 %20, %8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

; <label>:23:                                     ; preds = %19
  %24 = add i32 %8, 1
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %23
  %28 = lshr i32 %8, 1
  %29 = or i32 %28, %8
  %30 = lshr i32 %29, 2
  %31 = or i32 %30, %29
  %32 = lshr i32 %31, 4
  %33 = or i32 %32, %31
  %34 = lshr i32 %33, 8
  %35 = or i32 %34, %33
  %36 = lshr i32 %35, 16
  %37 = or i32 %36, %35
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %6, %39
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %27, %23
  %42 = trunc i64 %2 to i32
  store i32 %42, i32* %7, align 4, !tbaa !8
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %44 = load %struct.TValue*, %struct.TValue** %43, align 8, !tbaa !14
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i64 %6
  br label %75

; <label>:46:                                     ; preds = %27, %19, %15
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %48 = load %union.Node*, %union.Node** %47, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %50 = load i8, i8* %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = shl i32 1, %51
  %53 = add nsw i32 %52, -1
  %54 = trunc i64 %2 to i32
  %55 = and i32 %53, %54
  br label %56

; <label>:56:                                     ; preds = %71, %46
  %57 = phi i32 [ %55, %46 ], [ %73, %71 ]
  %58 = phi %union.Node* [ %48, %46 ], [ %60, %71 ]
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %union.Node, %union.Node* %58, i64 %59
  %61 = getelementptr inbounds %union.Node, %union.Node* %58, i64 %59, i32 0, i32 2
  %62 = load i8, i8* %61, align 1, !tbaa !11
  %63 = icmp eq i8 %62, 35
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %56
  %65 = getelementptr inbounds %union.Node, %union.Node* %58, i64 %59, i32 0, i32 4
  %66 = bitcast %union.Value* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !11
  %68 = icmp eq i64 %67, %2
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %64
  %70 = bitcast %union.Node* %60 to %struct.TValue*
  br label %75

; <label>:71:                                     ; preds = %64, %56
  %72 = getelementptr inbounds %union.Node, %union.Node* %58, i64 %59, i32 0, i32 3
  %73 = load i32, i32* %72, align 4, !tbaa !11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %56

; <label>:75:                                     ; preds = %71, %11, %41, %69
  %76 = phi %struct.TValue* [ %14, %11 ], [ %45, %41 ], [ %70, %69 ], [ @absentkey, %71 ]
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i64 0, i32 1
  %78 = load i8, i8* %77, align 8, !tbaa !9
  %79 = icmp eq i8 %78, 32
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %75
  %81 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %81) #7
  %82 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %82, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %83, align 8, !tbaa !9
  %84 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %81) #7
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i64 0, i32 1
  br label %86

; <label>:86:                                     ; preds = %75, %80
  %87 = phi i8* [ %77, %75 ], [ %85, %80 ]
  %88 = phi %struct.TValue* [ %76, %75 ], [ %84, %80 ]
  %89 = bitcast %struct.TValue* %3 to i64*
  %90 = bitcast %struct.TValue* %88 to i64*
  %91 = load i64, i64* %89, align 8
  store i64 %91, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %93 = load i8, i8* %92, align 8, !tbaa !9
  store i8 %93, i8* %87, align 8, !tbaa !9
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @freehash(%struct.lua_State*, %struct.Table* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !19
  %5 = icmp eq %union.Node* %4, null
  br i1 %5, label %16, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %8 = bitcast %union.Node** %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 24
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 %15) #7
  br label %16

; <label>:16:                                     ; preds = %6, %2
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %5 = load %union.Node*, %union.Node** %4, align 8, !tbaa !19
  %6 = icmp eq %union.Node* %5, null
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %9 = load i8, i8* %8, align 1, !tbaa !15
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
  %2 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 5, i64 56) #7
  %3 = bitcast %struct.GCObject* %2 to %struct.Table*
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 2, i32 1
  %5 = bitcast i8* %4 to %struct.Table**
  store %struct.Table* null, %struct.Table** %5, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 3
  store i8 -1, i8* %6, align 2, !tbaa !22
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1
  %8 = bitcast %struct.GCObject* %7 to %struct.TValue**
  store %struct.TValue* null, %struct.TValue** %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 5
  store i32 0, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1, i32 1
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 4
  store i8 0, i8* %11, align 1, !tbaa !15
  %12 = bitcast i8* %10 to <2 x %union.Node*>*
  store <2 x %union.Node*> <%union.Node* @dummynode_, %union.Node* null>, <2 x %union.Node*>* %12, align 8, !tbaa !16
  ret %struct.Table* %3
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !19
  %5 = icmp eq %union.Node* %4, null
  br i1 %5, label %16, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %8 = bitcast %union.Node** %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 24
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 %15) #7
  br label %16

; <label>:16:                                     ; preds = %2, %6
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %18 = bitcast %struct.TValue** %17 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %22 = icmp slt i8 %21, 0
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %24 = load i32, i32* %23, align 4, !tbaa !8
  br i1 %22, label %25, label %41

; <label>:25:                                     ; preds = %16
  %26 = add i32 %24, -1
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

; <label>:29:                                     ; preds = %25
  %30 = lshr i32 %24, 1
  %31 = or i32 %30, %24
  %32 = lshr i32 %31, 2
  %33 = or i32 %32, %31
  %34 = lshr i32 %33, 4
  %35 = or i32 %34, %33
  %36 = lshr i32 %35, 8
  %37 = or i32 %36, %35
  %38 = lshr i32 %37, 16
  %39 = or i32 %38, %37
  %40 = add i32 %39, 1
  br label %41

; <label>:41:                                     ; preds = %16, %25, %29
  %42 = phi i32 [ %40, %29 ], [ %24, %25 ], [ %24, %16 ]
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %19, i64 %44) #7
  %45 = bitcast %struct.Table* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %45, i64 56) #7
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = alloca [32 x i32], align 16
  %5 = bitcast [32 x i32]* %4 to i8*
  %6 = alloca %struct.TValue, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !9
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !12

; <label>:13:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #8
  unreachable

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8 %10, 19
  br i1 %15, label %16, label %35

; <label>:16:                                     ; preds = %14
  %17 = bitcast %struct.TValue* %2 to double*
  %18 = load double, double* %17, align 8, !tbaa !11
  %19 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7
  %20 = call i32 @luaV_flttointeger(double %18, i64* nonnull %7, i32 0) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %7, align 8, !tbaa !23
  %24 = bitcast %struct.TValue* %6 to i64*
  store i64 %23, i64* %24, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  store i8 35, i8* %25, align 8, !tbaa !9
  br label %31

; <label>:26:                                     ; preds = %16
  %27 = fcmp uno double %18, 0.000000e+00
  br i1 %27, label %30, label %28, !prof !12

; <label>:28:                                     ; preds = %26
  %29 = load i8, i8* %9, align 8, !tbaa !9
  br label %31

; <label>:30:                                     ; preds = %26
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #8
  unreachable

; <label>:31:                                     ; preds = %28, %22
  %32 = phi i8* [ %9, %28 ], [ %25, %22 ]
  %33 = phi i8 [ %29, %28 ], [ 35, %22 ]
  %34 = phi %struct.TValue* [ %2, %28 ], [ %6, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7
  br label %35

; <label>:35:                                     ; preds = %14, %31
  %36 = phi i8* [ %9, %14 ], [ %32, %31 ]
  %37 = phi i8 [ %10, %14 ], [ %33, %31 ]
  %38 = phi %struct.TValue* [ %2, %14 ], [ %34, %31 ]
  %39 = zext i8 %37 to i32
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 0
  %41 = call fastcc %union.Node* @mainposition(%struct.Table* %1, i32 %39, %union.Value* %40) #7
  %42 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 1
  %43 = load i8, i8* %42, align 8, !tbaa !11
  %44 = and i8 %43, 15
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %47 = load %union.Node*, %union.Node** %46, align 8, !tbaa !19
  %48 = icmp eq %union.Node* %47, null
  br i1 %45, label %49, label %50

; <label>:49:                                     ; preds = %35
  br i1 %48, label %64, label %283

; <label>:50:                                     ; preds = %35
  br i1 %48, label %64, label %51

; <label>:51:                                     ; preds = %50
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %53 = load %union.Node*, %union.Node** %52, align 8, !tbaa !13
  %54 = icmp ugt %union.Node* %47, %53
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %51
  br label %58

; <label>:56:                                     ; preds = %58
  %57 = icmp ugt %union.Node* %60, %53
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %55, %56
  %59 = phi %union.Node* [ %60, %56 ], [ %47, %55 ]
  %60 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1
  store %union.Node* %60, %union.Node** %46, align 8, !tbaa !19
  %61 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 2
  %62 = load i8, i8* %61, align 1, !tbaa !11
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %226, label %56

; <label>:64:                                     ; preds = %56, %49, %50, %51
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 128, i32 16, i1 false)
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %66 = load i8, i8* %65, align 1, !tbaa !2
  %67 = icmp slt i8 %66, 0
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %69 = load i32, i32* %68, align 4, !tbaa !8
  br i1 %67, label %70, label %86

; <label>:70:                                     ; preds = %64
  %71 = add i32 %69, -1
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

; <label>:74:                                     ; preds = %70
  %75 = lshr i32 %69, 1
  %76 = or i32 %75, %69
  %77 = lshr i32 %76, 2
  %78 = or i32 %77, %76
  %79 = lshr i32 %78, 4
  %80 = or i32 %79, %78
  %81 = lshr i32 %80, 8
  %82 = or i32 %81, %80
  %83 = lshr i32 %82, 16
  %84 = or i32 %83, %82
  %85 = add i32 %84, 1
  br label %86

; <label>:86:                                     ; preds = %74, %70, %64
  %87 = phi i32 [ %85, %74 ], [ %69, %70 ], [ %69, %64 ]
  store i32 %87, i32* %68, align 4, !tbaa !8
  %88 = and i8 %66, 127
  store i8 %88, i8* %65, align 1, !tbaa !2
  %89 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  br label %90

; <label>:90:                                     ; preds = %116, %86
  %91 = phi i64 [ 0, %86 ], [ %123, %116 ]
  %92 = phi i32 [ 1, %86 ], [ %117, %116 ]
  %93 = phi i32 [ 0, %86 ], [ %122, %116 ]
  %94 = phi i32 [ 1, %86 ], [ %124, %116 ]
  %95 = icmp ugt i32 %94, %87
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %90
  %97 = icmp ugt i32 %92, %87
  br i1 %97, label %126, label %98

; <label>:98:                                     ; preds = %96, %90
  %99 = phi i32 [ %87, %96 ], [ %94, %90 ]
  %100 = icmp ugt i32 %92, %99
  br i1 %100, label %116, label %101

; <label>:101:                                    ; preds = %98
  %102 = load %struct.TValue*, %struct.TValue** %89, align 8, !tbaa !14
  br label %103

; <label>:103:                                    ; preds = %103, %101
  %104 = phi i32 [ 0, %101 ], [ %113, %103 ]
  %105 = phi i32 [ %92, %101 ], [ %114, %103 ]
  %106 = add i32 %105, -1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %102, i64 %107, i32 1
  %109 = load i8, i8* %108, align 8, !tbaa !9
  %110 = and i8 %109, 15
  %111 = icmp ne i8 %110, 0
  %112 = zext i1 %111 to i32
  %113 = add i32 %104, %112
  %114 = add i32 %105, 1
  %115 = icmp ugt i32 %114, %99
  br i1 %115, label %116, label %103

; <label>:116:                                    ; preds = %103, %98
  %117 = phi i32 [ %92, %98 ], [ %114, %103 ]
  %118 = phi i32 [ 0, %98 ], [ %113, %103 ]
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %91
  %120 = load i32, i32* %119, align 4, !tbaa !25
  %121 = add i32 %120, %118
  store i32 %121, i32* %119, align 4, !tbaa !25
  %122 = add i32 %118, %93
  %123 = add nuw nsw i64 %91, 1
  %124 = shl i32 %94, 1
  %125 = icmp ult i64 %123, 32
  br i1 %125, label %90, label %126

; <label>:126:                                    ; preds = %116, %96
  %127 = phi i32 [ %93, %96 ], [ %122, %116 ]
  %128 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %129 = load i8, i8* %128, align 1, !tbaa !15
  %130 = zext i8 %129 to i32
  %131 = shl i32 1, %130
  %132 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %133 = sext i32 %131 to i64
  br label %134

; <label>:134:                                    ; preds = %169, %126
  %135 = phi i64 [ %133, %126 ], [ %138, %169 ]
  %136 = phi i32 [ 0, %126 ], [ %171, %169 ]
  %137 = phi i32 [ 0, %126 ], [ %170, %169 ]
  %138 = add nsw i64 %135, -1
  %139 = load %union.Node*, %union.Node** %132, align 8, !tbaa !13
  %140 = getelementptr inbounds %union.Node, %union.Node* %139, i64 %138, i32 0, i32 1
  %141 = load i8, i8* %140, align 8, !tbaa !11
  %142 = and i8 %141, 15
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %169, label %144

; <label>:144:                                    ; preds = %134
  %145 = getelementptr inbounds %union.Node, %union.Node* %139, i64 %138, i32 0, i32 2
  %146 = load i8, i8* %145, align 1, !tbaa !11
  %147 = icmp eq i8 %146, 35
  br i1 %147, label %148, label %166

; <label>:148:                                    ; preds = %144
  %149 = getelementptr inbounds %union.Node, %union.Node* %139, i64 %138, i32 0, i32 4
  %150 = bitcast %union.Value* %149 to i64*
  %151 = load i64, i64* %150, align 8, !tbaa !11
  %152 = add i64 %151, -1
  %153 = icmp ugt i64 %152, 2147483647
  %154 = trunc i64 %151 to i32
  %155 = icmp eq i32 %154, 0
  %156 = or i1 %155, %153
  br i1 %156, label %163, label %157

; <label>:157:                                    ; preds = %148
  %158 = call i32 @luaO_ceillog2(i32 %154) #7
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !25
  %162 = add i32 %161, 1
  store i32 %162, i32* %160, align 4, !tbaa !25
  br label %163

; <label>:163:                                    ; preds = %157, %148
  %164 = phi i32 [ 1, %157 ], [ 0, %148 ]
  %165 = add nsw i32 %164, %137
  br label %166

; <label>:166:                                    ; preds = %163, %144
  %167 = phi i32 [ %165, %163 ], [ %137, %144 ]
  %168 = add nsw i32 %136, 1
  br label %169

; <label>:169:                                    ; preds = %166, %134
  %170 = phi i32 [ %137, %134 ], [ %167, %166 ]
  %171 = phi i32 [ %136, %134 ], [ %168, %166 ]
  %172 = trunc i64 %138 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %134

; <label>:174:                                    ; preds = %169
  %175 = add i32 %170, %127
  %176 = load i8, i8* %36, align 8, !tbaa !9
  %177 = icmp eq i8 %176, 35
  br i1 %177, label %178, label %195

; <label>:178:                                    ; preds = %174
  %179 = bitcast %struct.TValue* %38 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !11
  %181 = add i64 %180, -1
  %182 = icmp ugt i64 %181, 2147483647
  %183 = trunc i64 %180 to i32
  %184 = icmp eq i32 %183, 0
  %185 = or i1 %184, %182
  br i1 %185, label %192, label %186

; <label>:186:                                    ; preds = %178
  %187 = call i32 @luaO_ceillog2(i32 %183) #7
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4, !tbaa !25
  %191 = add i32 %190, 1
  store i32 %191, i32* %189, align 4, !tbaa !25
  br label %192

; <label>:192:                                    ; preds = %186, %178
  %193 = phi i32 [ 1, %186 ], [ 0, %178 ]
  %194 = add i32 %193, %175
  br label %195

; <label>:195:                                    ; preds = %192, %174
  %196 = phi i32 [ %194, %192 ], [ %175, %174 ]
  br label %197

; <label>:197:                                    ; preds = %312, %195
  %198 = phi i64 [ 0, %195 ], [ %321, %312 ]
  %199 = phi i32 [ 0, %195 ], [ %320, %312 ]
  %200 = phi i32 [ 0, %195 ], [ %319, %312 ]
  %201 = phi i32 [ 0, %195 ], [ %317, %312 ]
  %202 = phi i32 [ 1, %195 ], [ %322, %312 ]
  %203 = lshr i32 %202, 1
  %204 = icmp ugt i32 %196, %203
  br i1 %204, label %205, label %214

; <label>:205:                                    ; preds = %197
  %206 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %198
  %207 = load i32, i32* %206, align 8, !tbaa !25
  %208 = add i32 %207, %201
  %209 = icmp ugt i32 %208, %203
  %210 = select i1 %209, i32 %208, i32 %200
  %211 = select i1 %209, i32 %202, i32 %199
  %212 = and i32 %202, 2147483645
  %213 = icmp ugt i32 %196, %212
  br i1 %213, label %312, label %214

; <label>:214:                                    ; preds = %312, %205, %197
  %215 = phi i32 [ %200, %197 ], [ %210, %205 ], [ %319, %312 ]
  %216 = phi i32 [ %199, %197 ], [ %211, %205 ], [ %320, %312 ]
  %217 = add i32 %127, 1
  %218 = add i32 %217, %171
  %219 = sub i32 %218, %215
  call void @luaH_resize(%struct.lua_State* %0, %struct.Table* %1, i32 %216, i32 %219) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7
  %220 = call %struct.TValue* @luaH_get(%struct.Table* %1, %struct.TValue* %38) #7
  %221 = getelementptr inbounds %struct.TValue, %struct.TValue* %220, i64 0, i32 1
  %222 = load i8, i8* %221, align 8, !tbaa !9
  %223 = icmp eq i8 %222, 32
  br i1 %223, label %224, label %310

; <label>:224:                                    ; preds = %214
  %225 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %38) #7
  br label %310

; <label>:226:                                    ; preds = %58
  %227 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 2
  %228 = load i8, i8* %227, align 1, !tbaa !11
  %229 = zext i8 %228 to i32
  %230 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 4
  %231 = call fastcc %union.Node* @mainposition(%struct.Table* nonnull %1, i32 %229, %union.Value* nonnull %230)
  %232 = icmp eq %union.Node* %231, %41
  br i1 %232, label %262, label %233

; <label>:233:                                    ; preds = %226
  br label %234

; <label>:234:                                    ; preds = %233, %234
  %235 = phi %union.Node* [ %239, %234 ], [ %231, %233 ]
  %236 = getelementptr inbounds %union.Node, %union.Node* %235, i64 0, i32 0, i32 3
  %237 = load i32, i32* %236, align 4, !tbaa !11
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %union.Node, %union.Node* %235, i64 %238
  %240 = icmp eq %union.Node* %239, %41
  br i1 %240, label %241, label %234

; <label>:241:                                    ; preds = %234
  %242 = getelementptr inbounds %union.Node, %union.Node* %235, i64 0, i32 0, i32 3
  %243 = ptrtoint %union.Node* %60 to i64
  %244 = ptrtoint %union.Node* %235 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 24
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %242, align 4, !tbaa !11
  %248 = bitcast %union.Node* %60 to i8*
  %249 = bitcast %union.Node* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %248, i8* %249, i64 24, i32 8, i1 false), !tbaa.struct !26
  %250 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  %251 = load i32, i32* %250, align 4, !tbaa !11
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %261, label %253

; <label>:253:                                    ; preds = %241
  %254 = ptrtoint %union.Node* %41 to i64
  %255 = sub i64 %254, %243
  %256 = sdiv exact i64 %255, 24
  %257 = trunc i64 %256 to i32
  %258 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 3
  %259 = load i32, i32* %258, align 4, !tbaa !11
  %260 = add nsw i32 %259, %257
  store i32 %260, i32* %258, align 4, !tbaa !11
  store i32 0, i32* %250, align 4, !tbaa !11
  br label %261

; <label>:261:                                    ; preds = %241, %253
  store i8 16, i8* %42, align 8, !tbaa !11
  br label %283

; <label>:262:                                    ; preds = %226
  %263 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  %264 = load i32, i32* %263, align 4, !tbaa !11
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

; <label>:266:                                    ; preds = %262
  %267 = ptrtoint %union.Node* %60 to i64
  br label %277

; <label>:268:                                    ; preds = %262
  %269 = sext i32 %264 to i64
  %270 = getelementptr inbounds %union.Node, %union.Node* %41, i64 %269
  %271 = ptrtoint %union.Node* %270 to i64
  %272 = ptrtoint %union.Node* %60 to i64
  %273 = sub i64 %271, %272
  %274 = sdiv exact i64 %273, 24
  %275 = trunc i64 %274 to i32
  %276 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 3
  store i32 %275, i32* %276, align 4, !tbaa !11
  br label %277

; <label>:277:                                    ; preds = %266, %268
  %278 = phi i64 [ %267, %266 ], [ %272, %268 ]
  %279 = ptrtoint %union.Node* %41 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 24
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %263, align 4, !tbaa !11
  br label %283

; <label>:283:                                    ; preds = %261, %277, %49
  %284 = phi %union.Node* [ %41, %49 ], [ %60, %277 ], [ %41, %261 ]
  %285 = getelementptr inbounds %union.Node, %union.Node* %284, i64 0, i32 0, i32 4
  %286 = bitcast %struct.TValue* %38 to i64*
  %287 = bitcast %union.Value* %285 to i64*
  %288 = load i64, i64* %286, align 8
  store i64 %288, i64* %287, align 8
  %289 = load i8, i8* %36, align 8, !tbaa !9
  %290 = getelementptr inbounds %union.Node, %union.Node* %284, i64 0, i32 0, i32 2
  store i8 %289, i8* %290, align 1, !tbaa !11
  %291 = load i8, i8* %36, align 8, !tbaa !9
  %292 = and i8 %291, 64
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %308, label %294

; <label>:294:                                    ; preds = %283
  %295 = bitcast %struct.Table* %1 to %struct.GCObject*
  %296 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %297 = load i8, i8* %296, align 1, !tbaa !11
  %298 = and i8 %297, 32
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %308, label %300

; <label>:300:                                    ; preds = %294
  %301 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 0, i32 0
  %302 = load %struct.GCObject*, %struct.GCObject** %301, align 8, !tbaa !11
  %303 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %302, i64 0, i32 2
  %304 = load i8, i8* %303, align 1, !tbaa !29
  %305 = and i8 %304, 24
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %308, label %307

; <label>:307:                                    ; preds = %300
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %295) #7
  br label %308

; <label>:308:                                    ; preds = %300, %294, %283, %307
  %309 = bitcast %union.Node* %284 to %struct.TValue*
  br label %310

; <label>:310:                                    ; preds = %214, %224, %308
  %311 = phi %struct.TValue* [ %309, %308 ], [ %225, %224 ], [ %220, %214 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7
  ret %struct.TValue* %311

; <label>:312:                                    ; preds = %205
  %313 = or i64 %198, 1
  %314 = shl i32 %202, 1
  %315 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %313
  %316 = load i32, i32* %315, align 4, !tbaa !25
  %317 = add i32 %316, %208
  %318 = icmp ugt i32 %317, %212
  %319 = select i1 %318, i32 %317, i32 %210
  %320 = select i1 %318, i32 %314, i32 %211
  %321 = add nuw nsw i64 %198, 2
  %322 = shl i32 %202, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %214, label %197
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2 {
  %4 = tail call %struct.TValue* @luaH_get(%struct.Table* %1, %struct.TValue* %2)
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !9
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
  %4 = alloca i32, align 4
  %5 = trunc i32 %1 to i6
  switch i6 %5, label %121 [
    i6 -29, label %6
    i6 19, label %20
    i6 20, label %49
    i6 -28, label %64
    i6 1, label %78
    i6 2, label %91
    i6 -26, label %106
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %8 = load %union.Node*, %union.Node** %7, align 8, !tbaa !13
  %9 = bitcast %union.Value* %2 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = shl i32 1, %13
  %15 = add nsw i32 %14, -1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.Node, %union.Node* %8, i64 %18
  br label %136

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %22 = load %union.Node*, %union.Node** %21, align 8, !tbaa !13
  %23 = bitcast %union.Value* %2 to double*
  %24 = load double, double* %23, align 8, !tbaa !11
  %25 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #7
  %26 = call double @frexp(double %24, i32* nonnull %4) #7
  %27 = fmul double %26, 0x41E0000000000000
  %28 = fcmp oge double %27, 0xC3E0000000000000
  %29 = fcmp olt double %27, 0x43E0000000000000
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %20
  %32 = fptosi double %27 to i64
  %33 = load i32, i32* %4, align 4, !tbaa !25
  %34 = trunc i64 %32 to i32
  %35 = add i32 %33, %34
  %36 = ashr i32 %35, 31
  %37 = xor i32 %36, %35
  br label %38

; <label>:38:                                     ; preds = %20, %31
  %39 = phi i32 [ %37, %31 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #7
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %41 = load i8, i8* %40, align 1, !tbaa !15
  %42 = zext i8 %41 to i32
  %43 = shl i32 1, %42
  %44 = add nsw i32 %43, -1
  %45 = or i32 %44, 1
  %46 = srem i32 %39, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.Node, %union.Node* %22, i64 %47
  br label %136

; <label>:49:                                     ; preds = %3
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %51 = load %union.Node*, %union.Node** %50, align 8, !tbaa !13
  %52 = bitcast %union.Value* %2 to %struct.TString**
  %53 = load %struct.TString*, %struct.TString** %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %53, i64 0, i32 5
  %55 = load i32, i32* %54, align 4, !tbaa !11
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %57 = load i8, i8* %56, align 1, !tbaa !15
  %58 = zext i8 %57 to i32
  %59 = shl i32 1, %58
  %60 = add nsw i32 %59, -1
  %61 = and i32 %60, %55
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %union.Node, %union.Node* %51, i64 %62
  br label %136

; <label>:64:                                     ; preds = %3
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %66 = load %union.Node*, %union.Node** %65, align 8, !tbaa !13
  %67 = bitcast %union.Value* %2 to %struct.TString**
  %68 = load %struct.TString*, %struct.TString** %67, align 8, !tbaa !11
  %69 = tail call i32 @luaS_hashlongstr(%struct.TString* %68) #7
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %71 = load i8, i8* %70, align 1, !tbaa !15
  %72 = zext i8 %71 to i32
  %73 = shl i32 1, %72
  %74 = add nsw i32 %73, -1
  %75 = and i32 %74, %69
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %union.Node, %union.Node* %66, i64 %76
  br label %136

; <label>:78:                                     ; preds = %3
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %80 = load %union.Node*, %union.Node** %79, align 8, !tbaa !13
  %81 = bitcast %union.Value* %2 to i32*
  %82 = load i32, i32* %81, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %84 = load i8, i8* %83, align 1, !tbaa !15
  %85 = zext i8 %84 to i32
  %86 = shl i32 1, %85
  %87 = add nsw i32 %86, -1
  %88 = and i32 %87, %82
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %union.Node, %union.Node* %80, i64 %89
  br label %136

; <label>:91:                                     ; preds = %3
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %93 = load %union.Node*, %union.Node** %92, align 8, !tbaa !13
  %94 = bitcast %union.Value* %2 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !11
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %98 = load i8, i8* %97, align 1, !tbaa !15
  %99 = zext i8 %98 to i32
  %100 = shl i32 1, %99
  %101 = add nsw i32 %100, -1
  %102 = or i32 %101, 1
  %103 = urem i32 %96, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %union.Node, %union.Node* %93, i64 %104
  br label %136

; <label>:106:                                    ; preds = %3
  %107 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %108 = load %union.Node*, %union.Node** %107, align 8, !tbaa !13
  %109 = bitcast %union.Value* %2 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !11
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %113 = load i8, i8* %112, align 1, !tbaa !15
  %114 = zext i8 %113 to i32
  %115 = shl i32 1, %114
  %116 = add nsw i32 %115, -1
  %117 = or i32 %116, 1
  %118 = urem i32 %111, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %union.Node, %union.Node* %108, i64 %119
  br label %136

; <label>:121:                                    ; preds = %3
  %122 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %123 = load %union.Node*, %union.Node** %122, align 8, !tbaa !13
  %124 = bitcast %union.Value* %2 to i64*
  %125 = load i64, i64* %124, align 8, !tbaa !11
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %128 = load i8, i8* %127, align 1, !tbaa !15
  %129 = zext i8 %128 to i32
  %130 = shl i32 1, %129
  %131 = add nsw i32 %130, -1
  %132 = or i32 %131, 1
  %133 = urem i32 %126, %132
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %union.Node, %union.Node* %123, i64 %134
  br label %136

; <label>:136:                                    ; preds = %121, %106, %91, %78, %64, %49, %38, %6
  %137 = phi %union.Node* [ %135, %121 ], [ %120, %106 ], [ %105, %91 ], [ %90, %78 ], [ %77, %64 ], [ %63, %49 ], [ %48, %38 ], [ %19, %6 ]
  ret %union.Node* %137
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define hidden %struct.TValue* @luaH_getint(%struct.Table* nocapture, i64) local_unnamed_addr #5 {
  %3 = add i64 %1, -1
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = zext i32 %5 to i64
  %7 = icmp ult i64 %3, %6
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 %3
  br label %72

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %14 = load i8, i8* %13, align 1, !tbaa !2
  %15 = icmp slt i8 %14, 0
  br i1 %15, label %16, label %43

; <label>:16:                                     ; preds = %12
  %17 = add i32 %5, -1
  %18 = and i32 %17, %5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

; <label>:20:                                     ; preds = %16
  %21 = add i32 %5, 1
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %38, label %24

; <label>:24:                                     ; preds = %20
  %25 = lshr i32 %5, 1
  %26 = or i32 %25, %5
  %27 = lshr i32 %26, 2
  %28 = or i32 %27, %26
  %29 = lshr i32 %28, 4
  %30 = or i32 %29, %28
  %31 = lshr i32 %30, 8
  %32 = or i32 %31, %30
  %33 = lshr i32 %32, 16
  %34 = or i32 %33, %32
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %3, %36
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %24, %20
  %39 = trunc i64 %1 to i32
  store i32 %39, i32* %4, align 4, !tbaa !8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %41 = load %struct.TValue*, %struct.TValue** %40, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %3
  br label %72

; <label>:43:                                     ; preds = %24, %16, %12
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %45 = load %union.Node*, %union.Node** %44, align 8, !tbaa !13
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %47 = load i8, i8* %46, align 1, !tbaa !15
  %48 = zext i8 %47 to i32
  %49 = shl i32 1, %48
  %50 = add nsw i32 %49, -1
  %51 = trunc i64 %1 to i32
  %52 = and i32 %50, %51
  br label %53

; <label>:53:                                     ; preds = %68, %43
  %54 = phi i32 [ %52, %43 ], [ %70, %68 ]
  %55 = phi %union.Node* [ %45, %43 ], [ %57, %68 ]
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %union.Node, %union.Node* %55, i64 %56
  %58 = getelementptr inbounds %union.Node, %union.Node* %55, i64 %56, i32 0, i32 2
  %59 = load i8, i8* %58, align 1, !tbaa !11
  %60 = icmp eq i8 %59, 35
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds %union.Node, %union.Node* %55, i64 %56, i32 0, i32 4
  %63 = bitcast %union.Value* %62 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !11
  %65 = icmp eq i64 %64, %1
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %61
  %67 = bitcast %union.Node* %57 to %struct.TValue*
  br label %72

; <label>:68:                                     ; preds = %61, %53
  %69 = getelementptr inbounds %union.Node, %union.Node* %55, i64 %56, i32 0, i32 3
  %70 = load i32, i32* %69, align 4, !tbaa !11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %53

; <label>:72:                                     ; preds = %68, %66, %38, %8
  %73 = phi %struct.TValue* [ %11, %8 ], [ %42, %38 ], [ %67, %66 ], [ @absentkey, %68 ]
  ret %struct.TValue* %73
}

; Function Attrs: norecurse nounwind readonly uwtable
define hidden %struct.TValue* @luaH_getshortstr(%struct.Table* nocapture readonly, %struct.TString* readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 5
  %6 = load i32, i32* %5, align 4, !tbaa !31
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %8 = load i8, i8* %7, align 1, !tbaa !15
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
  %19 = load i8, i8* %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 84
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16, i32 0, i32 4, i32 0
  %23 = bitcast %struct.GCObject** %22 to %struct.TString**
  %24 = load %struct.TString*, %struct.TString** %23, align 8, !tbaa !11
  %25 = icmp eq %struct.TString* %24, %1
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %21
  %27 = bitcast %union.Node* %17 to %struct.TValue*
  br label %32

; <label>:28:                                     ; preds = %21, %13
  %29 = getelementptr inbounds %union.Node, %union.Node* %15, i64 %16, i32 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !11
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
  %5 = load i8, i8* %4, align 8, !tbaa !33
  %6 = icmp eq i8 %5, 20
  br i1 %6, label %7, label %37

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %9 = load %union.Node*, %union.Node** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !31
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = add nsw i32 %15, -1
  %17 = and i32 %16, %11
  br label %18

; <label>:18:                                     ; preds = %33, %7
  %19 = phi i32 [ %17, %7 ], [ %35, %33 ]
  %20 = phi %union.Node* [ %9, %7 ], [ %22, %33 ]
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %union.Node, %union.Node* %20, i64 %21
  %23 = getelementptr inbounds %union.Node, %union.Node* %20, i64 %21, i32 0, i32 2
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = icmp eq i8 %24, 84
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %union.Node, %union.Node* %20, i64 %21, i32 0, i32 4, i32 0
  %28 = bitcast %struct.GCObject** %27 to %struct.TString**
  %29 = load %struct.TString*, %struct.TString** %28, align 8, !tbaa !11
  %30 = icmp eq %struct.TString* %29, %1
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %26
  %32 = bitcast %union.Node* %22 to %struct.TValue*
  br label %43

; <label>:33:                                     ; preds = %26, %18
  %34 = getelementptr inbounds %union.Node, %union.Node* %20, i64 %21, i32 0, i32 3
  %35 = load i32, i32* %34, align 4, !tbaa !11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %18

; <label>:37:                                     ; preds = %2
  %38 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #7
  %39 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %39, align 8, !tbaa !11
  %40 = or i8 %5, 64
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %40, i8* %41, align 8, !tbaa !9
  %42 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #7
  br label %43

; <label>:43:                                     ; preds = %33, %31, %37
  %44 = phi %struct.TValue* [ %42, %37 ], [ %32, %31 ], [ @absentkey, %33 ]
  ret %struct.TValue* %44
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TValue* @getgeneric(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !9
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0
  %7 = tail call fastcc %union.Node* @mainposition(%struct.Table* %0, i32 %5, %union.Value* %6) #7
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %9 = bitcast %struct.TValue* %1 to i64*
  %10 = bitcast %struct.TValue* %1 to double*
  %11 = bitcast %struct.TValue* %1 to i32*
  %12 = bitcast %struct.TValue* %1 to i8**
  %13 = bitcast %struct.TValue* %1 to i32 (%struct.lua_State*)**
  %14 = bitcast %struct.TValue* %1 to %struct.TString**
  br label %15

; <label>:15:                                     ; preds = %79, %2
  %16 = phi %union.Node* [ %7, %2 ], [ %81, %79 ]
  %17 = load i8, i8* %3, align 8, !tbaa !9
  %18 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !11
  %20 = icmp eq i8 %17, %19
  br i1 %20, label %21, label %75

; <label>:21:                                     ; preds = %15
  %22 = trunc i8 %17 to i6
  switch i6 %22, label %64 [
    i6 0, label %73
    i6 -29, label %23
    i6 19, label %30
    i6 1, label %37
    i6 2, label %44
    i6 -26, label %51
    i6 -28, label %58
  ]

; <label>:23:                                     ; preds = %21
  %24 = load i64, i64* %9, align 8, !tbaa !11
  %25 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4
  %26 = bitcast %union.Value* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !11
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  br label %70

; <label>:30:                                     ; preds = %21
  %31 = load double, double* %10, align 8, !tbaa !11
  %32 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4
  %33 = bitcast %union.Value* %32 to double*
  %34 = load double, double* %33, align 8, !tbaa !11
  %35 = fcmp oeq double %31, %34
  %36 = zext i1 %35 to i32
  br label %70

; <label>:37:                                     ; preds = %21
  %38 = load i32, i32* %11, align 8, !tbaa !11
  %39 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4
  %40 = bitcast %union.Value* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !11
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  br label %70

; <label>:44:                                     ; preds = %21
  %45 = load i8*, i8** %12, align 8, !tbaa !11
  %46 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4
  %47 = bitcast %union.Value* %46 to i8**
  %48 = load i8*, i8** %47, align 8, !tbaa !11
  %49 = icmp eq i8* %45, %48
  %50 = zext i1 %49 to i32
  br label %70

; <label>:51:                                     ; preds = %21
  %52 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %13, align 8, !tbaa !11
  %53 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4
  %54 = bitcast %union.Value* %53 to i32 (%struct.lua_State*)**
  %55 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %54, align 8, !tbaa !11
  %56 = icmp eq i32 (%struct.lua_State*)* %52, %55
  %57 = zext i1 %56 to i32
  br label %70

; <label>:58:                                     ; preds = %21
  %59 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !11
  %60 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4, i32 0
  %61 = bitcast %struct.GCObject** %60 to %struct.TString**
  %62 = load %struct.TString*, %struct.TString** %61, align 8, !tbaa !11
  %63 = tail call i32 @luaS_eqlngstr(%struct.TString* %59, %struct.TString* %62) #7
  br label %70

; <label>:64:                                     ; preds = %21
  %65 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !11
  %66 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 4, i32 0
  %67 = load %struct.GCObject*, %struct.GCObject** %66, align 8, !tbaa !11
  %68 = icmp eq %struct.GCObject* %65, %67
  %69 = zext i1 %68 to i32
  br label %70

; <label>:70:                                     ; preds = %23, %30, %37, %44, %51, %58, %64
  %71 = phi i32 [ %69, %64 ], [ %63, %58 ], [ %57, %51 ], [ %50, %44 ], [ %43, %37 ], [ %36, %30 ], [ %29, %23 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

; <label>:73:                                     ; preds = %21, %70
  %74 = bitcast %union.Node* %16 to %struct.TValue*
  br label %82

; <label>:75:                                     ; preds = %15, %70
  %76 = getelementptr inbounds %union.Node, %union.Node* %16, i64 0, i32 0, i32 3
  %77 = load i32, i32* %76, align 4, !tbaa !11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %75
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds %union.Node, %union.Node* %16, i64 %80
  br label %15

; <label>:82:                                     ; preds = %75, %73
  %83 = phi %struct.TValue* [ %74, %73 ], [ @absentkey, %75 ]
  ret %struct.TValue* %83
}

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaH_get(%struct.Table* nocapture, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !9
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %191 [
    i6 20, label %7
    i6 -29, label %39
    i6 0, label %193
    i6 19, label %111
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %1 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %11 = load %union.Node*, %union.Node** %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !31
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = shl i32 1, %16
  %18 = add nsw i32 %17, -1
  %19 = and i32 %18, %13
  br label %20

; <label>:20:                                     ; preds = %35, %7
  %21 = phi i32 [ %19, %7 ], [ %37, %35 ]
  %22 = phi %union.Node* [ %11, %7 ], [ %24, %35 ]
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %union.Node, %union.Node* %22, i64 %23
  %25 = getelementptr inbounds %union.Node, %union.Node* %22, i64 %23, i32 0, i32 2
  %26 = load i8, i8* %25, align 1, !tbaa !11
  %27 = icmp eq i8 %26, 84
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %union.Node, %union.Node* %22, i64 %23, i32 0, i32 4, i32 0
  %30 = bitcast %struct.GCObject** %29 to %struct.TString**
  %31 = load %struct.TString*, %struct.TString** %30, align 8, !tbaa !11
  %32 = icmp eq %struct.TString* %31, %9
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %28
  %34 = bitcast %union.Node* %24 to %struct.TValue*
  br label %193

; <label>:35:                                     ; preds = %28, %20
  %36 = getelementptr inbounds %union.Node, %union.Node* %22, i64 %23, i32 0, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %193, label %20

; <label>:39:                                     ; preds = %2
  %40 = bitcast %struct.TValue* %1 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !11
  %42 = add i64 %41, -1
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %44 = load i32, i32* %43, align 4, !tbaa !8
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %49 = load %struct.TValue*, %struct.TValue** %48, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %42
  br label %193

; <label>:51:                                     ; preds = %39
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !2
  %54 = icmp slt i8 %53, 0
  br i1 %54, label %55, label %82

; <label>:55:                                     ; preds = %51
  %56 = add i32 %44, -1
  %57 = and i32 %56, %44
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

; <label>:59:                                     ; preds = %55
  %60 = add i32 %44, 1
  %61 = zext i32 %60 to i64
  %62 = icmp eq i64 %41, %61
  br i1 %62, label %77, label %63

; <label>:63:                                     ; preds = %59
  %64 = lshr i32 %44, 1
  %65 = or i32 %64, %44
  %66 = lshr i32 %65, 2
  %67 = or i32 %66, %65
  %68 = lshr i32 %67, 4
  %69 = or i32 %68, %67
  %70 = lshr i32 %69, 8
  %71 = or i32 %70, %69
  %72 = lshr i32 %71, 16
  %73 = or i32 %72, %71
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %42, %75
  br i1 %76, label %77, label %82

; <label>:77:                                     ; preds = %63, %59
  %78 = trunc i64 %41 to i32
  store i32 %78, i32* %43, align 4, !tbaa !8
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %80 = load %struct.TValue*, %struct.TValue** %79, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %42
  br label %193

; <label>:82:                                     ; preds = %63, %55, %51
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %84 = load %union.Node*, %union.Node** %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %86 = load i8, i8* %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i32
  %88 = shl i32 1, %87
  %89 = add nsw i32 %88, -1
  %90 = trunc i64 %41 to i32
  %91 = and i32 %89, %90
  br label %92

; <label>:92:                                     ; preds = %107, %82
  %93 = phi i32 [ %91, %82 ], [ %109, %107 ]
  %94 = phi %union.Node* [ %84, %82 ], [ %96, %107 ]
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds %union.Node, %union.Node* %94, i64 %95
  %97 = getelementptr inbounds %union.Node, %union.Node* %94, i64 %95, i32 0, i32 2
  %98 = load i8, i8* %97, align 1, !tbaa !11
  %99 = icmp eq i8 %98, 35
  br i1 %99, label %100, label %107

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds %union.Node, %union.Node* %94, i64 %95, i32 0, i32 4
  %102 = bitcast %union.Value* %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !11
  %104 = icmp eq i64 %103, %41
  br i1 %104, label %105, label %107

; <label>:105:                                    ; preds = %100
  %106 = bitcast %union.Node* %96 to %struct.TValue*
  br label %193

; <label>:107:                                    ; preds = %100, %92
  %108 = getelementptr inbounds %union.Node, %union.Node* %94, i64 %95, i32 0, i32 3
  %109 = load i32, i32* %108, align 4, !tbaa !11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %193, label %92

; <label>:111:                                    ; preds = %2
  %112 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #7
  %113 = bitcast %struct.TValue* %1 to double*
  %114 = load double, double* %113, align 8, !tbaa !11
  %115 = call i32 @luaV_flttointeger(double %114, i64* nonnull %3, i32 0) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %190, label %117

; <label>:117:                                    ; preds = %111
  %118 = load i64, i64* %3, align 8, !tbaa !23
  %119 = add i64 %118, -1
  %120 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %121 = load i32, i32* %120, align 4, !tbaa !8
  %122 = zext i32 %121 to i64
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %128

; <label>:124:                                    ; preds = %117
  %125 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %126 = load %struct.TValue*, %struct.TValue** %125, align 8, !tbaa !14
  %127 = getelementptr inbounds %struct.TValue, %struct.TValue* %126, i64 %119
  br label %188

; <label>:128:                                    ; preds = %117
  %129 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %130 = load i8, i8* %129, align 1, !tbaa !2
  %131 = icmp slt i8 %130, 0
  br i1 %131, label %132, label %159

; <label>:132:                                    ; preds = %128
  %133 = add i32 %121, -1
  %134 = and i32 %133, %121
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %159, label %136

; <label>:136:                                    ; preds = %132
  %137 = add i32 %121, 1
  %138 = zext i32 %137 to i64
  %139 = icmp eq i64 %118, %138
  br i1 %139, label %154, label %140

; <label>:140:                                    ; preds = %136
  %141 = lshr i32 %121, 1
  %142 = or i32 %141, %121
  %143 = lshr i32 %142, 2
  %144 = or i32 %143, %142
  %145 = lshr i32 %144, 4
  %146 = or i32 %145, %144
  %147 = lshr i32 %146, 8
  %148 = or i32 %147, %146
  %149 = lshr i32 %148, 16
  %150 = or i32 %149, %148
  %151 = add i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = icmp ult i64 %119, %152
  br i1 %153, label %154, label %159

; <label>:154:                                    ; preds = %140, %136
  %155 = trunc i64 %118 to i32
  store i32 %155, i32* %120, align 4, !tbaa !8
  %156 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %157 = load %struct.TValue*, %struct.TValue** %156, align 8, !tbaa !14
  %158 = getelementptr inbounds %struct.TValue, %struct.TValue* %157, i64 %119
  br label %188

; <label>:159:                                    ; preds = %140, %132, %128
  %160 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %161 = load %union.Node*, %union.Node** %160, align 8, !tbaa !13
  %162 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %163 = load i8, i8* %162, align 1, !tbaa !15
  %164 = zext i8 %163 to i32
  %165 = shl i32 1, %164
  %166 = add nsw i32 %165, -1
  %167 = trunc i64 %118 to i32
  %168 = and i32 %166, %167
  br label %169

; <label>:169:                                    ; preds = %184, %159
  %170 = phi i32 [ %168, %159 ], [ %186, %184 ]
  %171 = phi %union.Node* [ %161, %159 ], [ %173, %184 ]
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds %union.Node, %union.Node* %171, i64 %172
  %174 = getelementptr inbounds %union.Node, %union.Node* %171, i64 %172, i32 0, i32 2
  %175 = load i8, i8* %174, align 1, !tbaa !11
  %176 = icmp eq i8 %175, 35
  br i1 %176, label %177, label %184

; <label>:177:                                    ; preds = %169
  %178 = getelementptr inbounds %union.Node, %union.Node* %171, i64 %172, i32 0, i32 4
  %179 = bitcast %union.Value* %178 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !11
  %181 = icmp eq i64 %180, %118
  br i1 %181, label %182, label %184

; <label>:182:                                    ; preds = %177
  %183 = bitcast %union.Node* %173 to %struct.TValue*
  br label %188

; <label>:184:                                    ; preds = %177, %169
  %185 = getelementptr inbounds %union.Node, %union.Node* %171, i64 %172, i32 0, i32 3
  %186 = load i32, i32* %185, align 4, !tbaa !11
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %169

; <label>:188:                                    ; preds = %184, %124, %154, %182
  %189 = phi %struct.TValue* [ %183, %182 ], [ %158, %154 ], [ %127, %124 ], [ @absentkey, %184 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #7
  br label %193

; <label>:190:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #7
  br label %191

; <label>:191:                                    ; preds = %190, %2
  %192 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %1)
  br label %193

; <label>:193:                                    ; preds = %107, %35, %188, %105, %77, %47, %33, %2, %191
  %194 = phi %struct.TValue* [ %192, %191 ], [ @absentkey, %2 ], [ %34, %33 ], [ %50, %47 ], [ %81, %77 ], [ %106, %105 ], [ %189, %188 ], [ @absentkey, %35 ], [ @absentkey, %107 ]
  ret %struct.TValue* %194
}

; Function Attrs: norecurse nounwind uwtable
define hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %83, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !14
  %8 = add i32 %3, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %9, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !9
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %83

; <label>:14:                                     ; preds = %5
  %15 = icmp ugt i32 %3, 1
  br i1 %15, label %16, label %54

; <label>:16:                                     ; preds = %14
  %17 = add i32 %3, -2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %18, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !9
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %16
  br label %39

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %26 = load i8, i8* %25, align 1, !tbaa !2
  %27 = icmp slt i8 %26, 0
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %24
  %29 = and i32 %8, %3
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %8, %17
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %30, %32
  br i1 %33, label %509, label %37

; <label>:34:                                     ; preds = %24
  %35 = and i32 %8, %17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %509, label %37

; <label>:37:                                     ; preds = %28, %34
  store i32 %8, i32* %2, align 4, !tbaa !8
  %38 = or i8 %26, -128
  store i8 %38, i8* %25, align 1, !tbaa !2
  br label %509

; <label>:39:                                     ; preds = %23, %39
  %40 = phi i32 [ %51, %39 ], [ 0, %23 ]
  %41 = phi i32 [ %50, %39 ], [ %3, %23 ]
  %42 = add i32 %41, %40
  %43 = lshr i32 %42, 1
  %44 = add nsw i32 %43, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %45, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !9
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 %43, i32 %41
  %51 = select i1 %49, i32 %40, i32 %43
  %52 = sub i32 %50, %51
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %39, label %54

; <label>:54:                                     ; preds = %39, %14
  %55 = phi i32 [ 0, %14 ], [ %51, %39 ]
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %57 = load i8, i8* %56, align 1, !tbaa !2
  %58 = icmp slt i8 %57, 0
  %59 = and i32 %8, %3
  %60 = icmp eq i32 %59, 0
  br i1 %58, label %62, label %61

; <label>:61:                                     ; preds = %54
  br i1 %60, label %75, label %81

; <label>:62:                                     ; preds = %54
  br i1 %60, label %75, label %63

; <label>:63:                                     ; preds = %62
  %64 = lshr i32 %3, 1
  %65 = or i32 %64, %3
  %66 = lshr i32 %65, 2
  %67 = or i32 %66, %65
  %68 = lshr i32 %67, 4
  %69 = or i32 %68, %67
  %70 = lshr i32 %69, 8
  %71 = or i32 %70, %69
  %72 = lshr i32 %71, 16
  %73 = or i32 %72, %71
  %74 = add i32 %73, 1
  br label %75

; <label>:75:                                     ; preds = %61, %62, %63
  %76 = phi i32 [ %74, %63 ], [ %3, %62 ], [ %3, %61 ]
  %77 = lshr i32 %76, 1
  %78 = icmp ugt i32 %55, %77
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %75
  store i32 %55, i32* %2, align 4, !tbaa !8
  %80 = or i8 %57, -128
  store i8 %80, i8* %56, align 1, !tbaa !2
  br label %81

; <label>:81:                                     ; preds = %61, %79, %75
  %82 = zext i32 %55 to i64
  br label %509

; <label>:83:                                     ; preds = %1, %5
  %84 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %85 = load i8, i8* %84, align 1, !tbaa !2
  %86 = icmp slt i8 %85, 0
  br i1 %86, label %87, label %140

; <label>:87:                                     ; preds = %83
  %88 = add i32 %3, -1
  %89 = and i32 %88, %3
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %140, label %91

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %93 = load %struct.TValue*, %struct.TValue** %92, align 8, !tbaa !14
  %94 = zext i32 %3 to i64
  %95 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i64 %94, i32 1
  %96 = load i8, i8* %95, align 8, !tbaa !9
  %97 = and i8 %96, 15
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %509, label %99

; <label>:99:                                     ; preds = %91
  %100 = lshr i32 %3, 1
  %101 = or i32 %100, %3
  %102 = lshr i32 %101, 2
  %103 = or i32 %102, %101
  %104 = lshr i32 %103, 4
  %105 = or i32 %104, %103
  %106 = lshr i32 %105, 8
  %107 = or i32 %106, %105
  %108 = lshr i32 %107, 16
  %109 = or i32 %108, %107
  %110 = add i32 %109, 1
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i64 %111, i32 1
  %113 = load i8, i8* %112, align 8, !tbaa !9
  %114 = and i8 %113, 15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %140

; <label>:116:                                    ; preds = %99
  %117 = sub i32 %110, %3
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %137

; <label>:119:                                    ; preds = %116
  br label %120

; <label>:120:                                    ; preds = %119, %120
  %121 = phi i32 [ %132, %120 ], [ %3, %119 ]
  %122 = phi i32 [ %131, %120 ], [ %110, %119 ]
  %123 = add i32 %122, %121
  %124 = lshr i32 %123, 1
  %125 = add nsw i32 %124, -1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i64 %126, i32 1
  %128 = load i8, i8* %127, align 8, !tbaa !9
  %129 = and i8 %128, 15
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 %124, i32 %122
  %132 = select i1 %130, i32 %121, i32 %124
  %133 = sub i32 %131, %132
  %134 = icmp ugt i32 %133, 1
  br i1 %134, label %120, label %135

; <label>:135:                                    ; preds = %120
  %136 = zext i32 %132 to i64
  br label %137

; <label>:137:                                    ; preds = %135, %116
  %138 = phi i64 [ %136, %135 ], [ %94, %116 ]
  %139 = phi i32 [ %132, %135 ], [ %3, %116 ]
  store i32 %139, i32* %2, align 4, !tbaa !8
  br label %509

; <label>:140:                                    ; preds = %99, %87, %83
  %141 = phi i32 [ %3, %87 ], [ %110, %99 ], [ %3, %83 ]
  %142 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %143 = load %union.Node*, %union.Node** %142, align 8, !tbaa !19
  %144 = icmp eq %union.Node* %143, null
  br i1 %144, label %215, label %145

; <label>:145:                                    ; preds = %140
  %146 = add i32 %141, 1
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %147, -1
  %149 = zext i32 %3 to i64
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %155

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %153 = load %struct.TValue*, %struct.TValue** %152, align 8, !tbaa !14
  %154 = getelementptr inbounds %struct.TValue, %struct.TValue* %153, i64 %148
  br label %208

; <label>:155:                                    ; preds = %145
  br i1 %86, label %156, label %180

; <label>:156:                                    ; preds = %155
  %157 = add i32 %3, -1
  %158 = and i32 %157, %3
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %180, label %160

; <label>:160:                                    ; preds = %156
  %161 = icmp eq i32 %3, %141
  br i1 %161, label %176, label %162

; <label>:162:                                    ; preds = %160
  %163 = lshr i32 %3, 1
  %164 = or i32 %163, %3
  %165 = lshr i32 %164, 2
  %166 = or i32 %165, %164
  %167 = lshr i32 %166, 4
  %168 = or i32 %167, %166
  %169 = lshr i32 %168, 8
  %170 = or i32 %169, %168
  %171 = lshr i32 %170, 16
  %172 = or i32 %171, %170
  %173 = add i32 %172, 1
  %174 = zext i32 %173 to i64
  %175 = icmp ult i64 %148, %174
  br i1 %175, label %176, label %180

; <label>:176:                                    ; preds = %162, %160
  store i32 %146, i32* %2, align 4, !tbaa !8
  %177 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %178 = load %struct.TValue*, %struct.TValue** %177, align 8, !tbaa !14
  %179 = getelementptr inbounds %struct.TValue, %struct.TValue* %178, i64 %148
  br label %208

; <label>:180:                                    ; preds = %162, %156, %155
  %181 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %182 = load %union.Node*, %union.Node** %181, align 8, !tbaa !13
  %183 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %184 = load i8, i8* %183, align 1, !tbaa !15
  %185 = zext i8 %184 to i32
  %186 = shl i32 1, %185
  %187 = add nsw i32 %186, -1
  %188 = and i32 %187, %146
  br label %189

; <label>:189:                                    ; preds = %204, %180
  %190 = phi i32 [ %188, %180 ], [ %206, %204 ]
  %191 = phi %union.Node* [ %182, %180 ], [ %193, %204 ]
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds %union.Node, %union.Node* %191, i64 %192
  %194 = getelementptr inbounds %union.Node, %union.Node* %191, i64 %192, i32 0, i32 2
  %195 = load i8, i8* %194, align 1, !tbaa !11
  %196 = icmp eq i8 %195, 35
  br i1 %196, label %197, label %204

; <label>:197:                                    ; preds = %189
  %198 = getelementptr inbounds %union.Node, %union.Node* %191, i64 %192, i32 0, i32 4
  %199 = bitcast %union.Value* %198 to i64*
  %200 = load i64, i64* %199, align 8, !tbaa !11
  %201 = icmp eq i64 %200, %147
  br i1 %201, label %202, label %204

; <label>:202:                                    ; preds = %197
  %203 = bitcast %union.Node* %193 to %struct.TValue*
  br label %208

; <label>:204:                                    ; preds = %197, %189
  %205 = getelementptr inbounds %union.Node, %union.Node* %191, i64 %192, i32 0, i32 3
  %206 = load i32, i32* %205, align 4, !tbaa !11
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %189

; <label>:208:                                    ; preds = %204, %151, %176, %202
  %209 = phi i32 [ %3, %151 ], [ %146, %176 ], [ %3, %202 ], [ %3, %204 ]
  %210 = phi %struct.TValue* [ %154, %151 ], [ %179, %176 ], [ %203, %202 ], [ @absentkey, %204 ]
  %211 = getelementptr inbounds %struct.TValue, %struct.TValue* %210, i64 0, i32 1
  %212 = load i8, i8* %211, align 8, !tbaa !9
  %213 = and i8 %212, 15
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %217

; <label>:215:                                    ; preds = %208, %140
  %216 = zext i32 %141 to i64
  br label %509

; <label>:217:                                    ; preds = %208
  %218 = zext i32 %141 to i64
  %219 = icmp eq i32 %141, 0
  %220 = zext i1 %219 to i64
  %221 = add nuw nsw i64 %220, %218
  %222 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %223 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %224 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  br i1 %86, label %225, label %298

; <label>:225:                                    ; preds = %217
  br label %226

; <label>:226:                                    ; preds = %225, %291
  %227 = phi i32 [ %292, %291 ], [ %209, %225 ]
  %228 = phi i64 [ %231, %291 ], [ %221, %225 ]
  %229 = icmp ult i64 %228, 4611686018427387904
  br i1 %229, label %230, label %343

; <label>:230:                                    ; preds = %226
  %231 = shl i64 %228, 1
  %232 = add i64 %231, -1
  %233 = zext i32 %227 to i64
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %288, label %235

; <label>:235:                                    ; preds = %230
  %236 = add i32 %227, -1
  %237 = and i32 %236, %227
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %261, label %239

; <label>:239:                                    ; preds = %235
  %240 = add i32 %227, 1
  %241 = zext i32 %240 to i64
  %242 = icmp eq i64 %231, %241
  br i1 %242, label %257, label %243

; <label>:243:                                    ; preds = %239
  %244 = lshr i32 %227, 1
  %245 = or i32 %244, %227
  %246 = lshr i32 %245, 2
  %247 = or i32 %246, %245
  %248 = lshr i32 %247, 4
  %249 = or i32 %248, %247
  %250 = lshr i32 %249, 8
  %251 = or i32 %250, %249
  %252 = lshr i32 %251, 16
  %253 = or i32 %252, %251
  %254 = add i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = icmp ult i64 %232, %255
  br i1 %256, label %257, label %261

; <label>:257:                                    ; preds = %243, %239
  %258 = trunc i64 %231 to i32
  store i32 %258, i32* %2, align 4, !tbaa !8
  %259 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %260 = getelementptr inbounds %struct.TValue, %struct.TValue* %259, i64 %232
  br label %291

; <label>:261:                                    ; preds = %243, %235
  %262 = load %union.Node*, %union.Node** %223, align 8, !tbaa !13
  %263 = load i8, i8* %224, align 1, !tbaa !15
  %264 = zext i8 %263 to i32
  %265 = shl i32 1, %264
  %266 = add nsw i32 %265, -1
  %267 = trunc i64 %231 to i32
  %268 = and i32 %266, %267
  br label %269

; <label>:269:                                    ; preds = %282, %261
  %270 = phi i32 [ %268, %261 ], [ %284, %282 ]
  %271 = phi %union.Node* [ %262, %261 ], [ %273, %282 ]
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %union.Node, %union.Node* %271, i64 %272
  %274 = getelementptr inbounds %union.Node, %union.Node* %271, i64 %272, i32 0, i32 2
  %275 = load i8, i8* %274, align 1, !tbaa !11
  %276 = icmp eq i8 %275, 35
  br i1 %276, label %277, label %282

; <label>:277:                                    ; preds = %269
  %278 = getelementptr inbounds %union.Node, %union.Node* %271, i64 %272, i32 0, i32 4
  %279 = bitcast %union.Value* %278 to i64*
  %280 = load i64, i64* %279, align 8, !tbaa !11
  %281 = icmp eq i64 %280, %231
  br i1 %281, label %286, label %282

; <label>:282:                                    ; preds = %277, %269
  %283 = getelementptr inbounds %union.Node, %union.Node* %271, i64 %272, i32 0, i32 3
  %284 = load i32, i32* %283, align 4, !tbaa !11
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %291, label %269

; <label>:286:                                    ; preds = %277
  %287 = bitcast %union.Node* %273 to %struct.TValue*
  br label %291

; <label>:288:                                    ; preds = %230
  %289 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %290 = getelementptr inbounds %struct.TValue, %struct.TValue* %289, i64 %232
  br label %291

; <label>:291:                                    ; preds = %282, %288, %286, %257
  %292 = phi i32 [ %227, %288 ], [ %258, %257 ], [ %227, %286 ], [ %227, %282 ]
  %293 = phi %struct.TValue* [ %290, %288 ], [ %260, %257 ], [ %287, %286 ], [ @absentkey, %282 ]
  %294 = getelementptr inbounds %struct.TValue, %struct.TValue* %293, i64 0, i32 1
  %295 = load i8, i8* %294, align 8, !tbaa !9
  %296 = and i8 %295, 15
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %376, label %226

; <label>:298:                                    ; preds = %217
  %299 = zext i32 %209 to i64
  br label %300

; <label>:300:                                    ; preds = %337, %298
  %301 = phi i64 [ %221, %298 ], [ %304, %337 ]
  %302 = icmp ult i64 %301, 4611686018427387904
  br i1 %302, label %303, label %343

; <label>:303:                                    ; preds = %300
  %304 = shl i64 %301, 1
  %305 = add i64 %304, -1
  %306 = icmp ult i64 %305, %299
  br i1 %306, label %307, label %310

; <label>:307:                                    ; preds = %303
  %308 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %309 = getelementptr inbounds %struct.TValue, %struct.TValue* %308, i64 %305
  br label %337

; <label>:310:                                    ; preds = %303
  %311 = load %union.Node*, %union.Node** %223, align 8, !tbaa !13
  %312 = load i8, i8* %224, align 1, !tbaa !15
  %313 = zext i8 %312 to i32
  %314 = shl i32 1, %313
  %315 = add nsw i32 %314, -1
  %316 = trunc i64 %304 to i32
  %317 = and i32 %315, %316
  br label %318

; <label>:318:                                    ; preds = %333, %310
  %319 = phi i32 [ %317, %310 ], [ %335, %333 ]
  %320 = phi %union.Node* [ %311, %310 ], [ %322, %333 ]
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds %union.Node, %union.Node* %320, i64 %321
  %323 = getelementptr inbounds %union.Node, %union.Node* %320, i64 %321, i32 0, i32 2
  %324 = load i8, i8* %323, align 1, !tbaa !11
  %325 = icmp eq i8 %324, 35
  br i1 %325, label %326, label %333

; <label>:326:                                    ; preds = %318
  %327 = getelementptr inbounds %union.Node, %union.Node* %320, i64 %321, i32 0, i32 4
  %328 = bitcast %union.Value* %327 to i64*
  %329 = load i64, i64* %328, align 8, !tbaa !11
  %330 = icmp eq i64 %329, %304
  br i1 %330, label %331, label %333

; <label>:331:                                    ; preds = %326
  %332 = bitcast %union.Node* %322 to %struct.TValue*
  br label %337

; <label>:333:                                    ; preds = %326, %318
  %334 = getelementptr inbounds %union.Node, %union.Node* %320, i64 %321, i32 0, i32 3
  %335 = load i32, i32* %334, align 4, !tbaa !11
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %318

; <label>:337:                                    ; preds = %333, %331, %307
  %338 = phi %struct.TValue* [ %309, %307 ], [ %332, %331 ], [ @absentkey, %333 ]
  %339 = getelementptr inbounds %struct.TValue, %struct.TValue* %338, i64 0, i32 1
  %340 = load i8, i8* %339, align 8, !tbaa !9
  %341 = and i8 %340, 15
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %376, label %300

; <label>:343:                                    ; preds = %300, %226
  %344 = phi i32 [ %227, %226 ], [ %209, %300 ]
  %345 = phi i64 [ %228, %226 ], [ %301, %300 ]
  %346 = load %union.Node*, %union.Node** %223, align 8, !tbaa !13
  %347 = load i8, i8* %224, align 1, !tbaa !15
  %348 = zext i8 %347 to i32
  %349 = shl i32 1, %348
  %350 = add nsw i32 %349, -1
  br label %351

; <label>:351:                                    ; preds = %366, %343
  %352 = phi i32 [ %350, %343 ], [ %368, %366 ]
  %353 = phi %union.Node* [ %346, %343 ], [ %355, %366 ]
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds %union.Node, %union.Node* %353, i64 %354
  %356 = getelementptr inbounds %union.Node, %union.Node* %353, i64 %354, i32 0, i32 2
  %357 = load i8, i8* %356, align 1, !tbaa !11
  %358 = icmp eq i8 %357, 35
  br i1 %358, label %359, label %366

; <label>:359:                                    ; preds = %351
  %360 = getelementptr inbounds %union.Node, %union.Node* %353, i64 %354, i32 0, i32 4
  %361 = bitcast %union.Value* %360 to i64*
  %362 = load i64, i64* %361, align 8, !tbaa !11
  %363 = icmp eq i64 %362, 9223372036854775807
  br i1 %363, label %364, label %366

; <label>:364:                                    ; preds = %359
  %365 = bitcast %union.Node* %355 to %struct.TValue*
  br label %370

; <label>:366:                                    ; preds = %359, %351
  %367 = getelementptr inbounds %union.Node, %union.Node* %353, i64 %354, i32 0, i32 3
  %368 = load i32, i32* %367, align 4, !tbaa !11
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %351

; <label>:370:                                    ; preds = %366, %364
  %371 = phi %struct.TValue* [ %365, %364 ], [ @absentkey, %366 ]
  %372 = getelementptr inbounds %struct.TValue, %struct.TValue* %371, i64 0, i32 1
  %373 = load i8, i8* %372, align 8, !tbaa !9
  %374 = and i8 %373, 15
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %509

; <label>:376:                                    ; preds = %337, %291, %370
  %377 = phi i32 [ %344, %370 ], [ %292, %291 ], [ %209, %337 ]
  %378 = phi i64 [ %345, %370 ], [ %228, %291 ], [ %301, %337 ]
  %379 = phi i64 [ 9223372036854775807, %370 ], [ %231, %291 ], [ %304, %337 ]
  %380 = sub i64 %379, %378
  %381 = icmp ugt i64 %380, 1
  br i1 %381, label %382, label %509

; <label>:382:                                    ; preds = %376
  br i1 %86, label %383, label %460

; <label>:383:                                    ; preds = %382
  br label %384

; <label>:384:                                    ; preds = %383, %449
  %385 = phi i32 [ %450, %449 ], [ %377, %383 ]
  %386 = phi i64 [ %457, %449 ], [ %378, %383 ]
  %387 = phi i64 [ %456, %449 ], [ %379, %383 ]
  %388 = add i64 %387, %386
  %389 = lshr i64 %388, 1
  %390 = add nsw i64 %389, -1
  %391 = zext i32 %385 to i64
  %392 = icmp ult i64 %390, %391
  br i1 %392, label %446, label %393

; <label>:393:                                    ; preds = %384
  %394 = add i32 %385, -1
  %395 = and i32 %394, %385
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %419, label %397

; <label>:397:                                    ; preds = %393
  %398 = add i32 %385, 1
  %399 = zext i32 %398 to i64
  %400 = icmp eq i64 %389, %399
  br i1 %400, label %415, label %401

; <label>:401:                                    ; preds = %397
  %402 = lshr i32 %385, 1
  %403 = or i32 %402, %385
  %404 = lshr i32 %403, 2
  %405 = or i32 %404, %403
  %406 = lshr i32 %405, 4
  %407 = or i32 %406, %405
  %408 = lshr i32 %407, 8
  %409 = or i32 %408, %407
  %410 = lshr i32 %409, 16
  %411 = or i32 %410, %409
  %412 = add i32 %411, 1
  %413 = zext i32 %412 to i64
  %414 = icmp ult i64 %390, %413
  br i1 %414, label %415, label %419

; <label>:415:                                    ; preds = %401, %397
  %416 = trunc i64 %389 to i32
  store i32 %416, i32* %2, align 4, !tbaa !8
  %417 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %418 = getelementptr inbounds %struct.TValue, %struct.TValue* %417, i64 %390
  br label %449

; <label>:419:                                    ; preds = %401, %393
  %420 = load %union.Node*, %union.Node** %223, align 8, !tbaa !13
  %421 = load i8, i8* %224, align 1, !tbaa !15
  %422 = zext i8 %421 to i32
  %423 = shl i32 1, %422
  %424 = add nsw i32 %423, -1
  %425 = trunc i64 %389 to i32
  %426 = and i32 %424, %425
  br label %427

; <label>:427:                                    ; preds = %440, %419
  %428 = phi i32 [ %426, %419 ], [ %442, %440 ]
  %429 = phi %union.Node* [ %420, %419 ], [ %431, %440 ]
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds %union.Node, %union.Node* %429, i64 %430
  %432 = getelementptr inbounds %union.Node, %union.Node* %429, i64 %430, i32 0, i32 2
  %433 = load i8, i8* %432, align 1, !tbaa !11
  %434 = icmp eq i8 %433, 35
  br i1 %434, label %435, label %440

; <label>:435:                                    ; preds = %427
  %436 = getelementptr inbounds %union.Node, %union.Node* %429, i64 %430, i32 0, i32 4
  %437 = bitcast %union.Value* %436 to i64*
  %438 = load i64, i64* %437, align 8, !tbaa !11
  %439 = icmp eq i64 %438, %389
  br i1 %439, label %444, label %440

; <label>:440:                                    ; preds = %435, %427
  %441 = getelementptr inbounds %union.Node, %union.Node* %429, i64 %430, i32 0, i32 3
  %442 = load i32, i32* %441, align 4, !tbaa !11
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %449, label %427

; <label>:444:                                    ; preds = %435
  %445 = bitcast %union.Node* %431 to %struct.TValue*
  br label %449

; <label>:446:                                    ; preds = %384
  %447 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %448 = getelementptr inbounds %struct.TValue, %struct.TValue* %447, i64 %390
  br label %449

; <label>:449:                                    ; preds = %440, %446, %444, %415
  %450 = phi i32 [ %385, %446 ], [ %416, %415 ], [ %385, %444 ], [ %385, %440 ]
  %451 = phi %struct.TValue* [ %448, %446 ], [ %418, %415 ], [ %445, %444 ], [ @absentkey, %440 ]
  %452 = getelementptr inbounds %struct.TValue, %struct.TValue* %451, i64 0, i32 1
  %453 = load i8, i8* %452, align 8, !tbaa !9
  %454 = and i8 %453, 15
  %455 = icmp eq i8 %454, 0
  %456 = select i1 %455, i64 %389, i64 %387
  %457 = select i1 %455, i64 %386, i64 %389
  %458 = sub i64 %456, %457
  %459 = icmp ugt i64 %458, 1
  br i1 %459, label %384, label %509

; <label>:460:                                    ; preds = %382
  %461 = zext i32 %377 to i64
  br label %462

; <label>:462:                                    ; preds = %499, %460
  %463 = phi i64 [ %378, %460 ], [ %506, %499 ]
  %464 = phi i64 [ %379, %460 ], [ %505, %499 ]
  %465 = add i64 %464, %463
  %466 = lshr i64 %465, 1
  %467 = add nsw i64 %466, -1
  %468 = icmp ult i64 %467, %461
  br i1 %468, label %469, label %472

; <label>:469:                                    ; preds = %462
  %470 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !14
  %471 = getelementptr inbounds %struct.TValue, %struct.TValue* %470, i64 %467
  br label %499

; <label>:472:                                    ; preds = %462
  %473 = load %union.Node*, %union.Node** %223, align 8, !tbaa !13
  %474 = load i8, i8* %224, align 1, !tbaa !15
  %475 = zext i8 %474 to i32
  %476 = shl i32 1, %475
  %477 = add nsw i32 %476, -1
  %478 = trunc i64 %466 to i32
  %479 = and i32 %477, %478
  br label %480

; <label>:480:                                    ; preds = %495, %472
  %481 = phi i32 [ %479, %472 ], [ %497, %495 ]
  %482 = phi %union.Node* [ %473, %472 ], [ %484, %495 ]
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds %union.Node, %union.Node* %482, i64 %483
  %485 = getelementptr inbounds %union.Node, %union.Node* %482, i64 %483, i32 0, i32 2
  %486 = load i8, i8* %485, align 1, !tbaa !11
  %487 = icmp eq i8 %486, 35
  br i1 %487, label %488, label %495

; <label>:488:                                    ; preds = %480
  %489 = getelementptr inbounds %union.Node, %union.Node* %482, i64 %483, i32 0, i32 4
  %490 = bitcast %union.Value* %489 to i64*
  %491 = load i64, i64* %490, align 8, !tbaa !11
  %492 = icmp eq i64 %491, %466
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %488
  %494 = bitcast %union.Node* %484 to %struct.TValue*
  br label %499

; <label>:495:                                    ; preds = %488, %480
  %496 = getelementptr inbounds %union.Node, %union.Node* %482, i64 %483, i32 0, i32 3
  %497 = load i32, i32* %496, align 4, !tbaa !11
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %480

; <label>:499:                                    ; preds = %495, %493, %469
  %500 = phi %struct.TValue* [ %471, %469 ], [ %494, %493 ], [ @absentkey, %495 ]
  %501 = getelementptr inbounds %struct.TValue, %struct.TValue* %500, i64 0, i32 1
  %502 = load i8, i8* %501, align 8, !tbaa !9
  %503 = and i8 %502, 15
  %504 = icmp eq i8 %503, 0
  %505 = select i1 %504, i64 %466, i64 %464
  %506 = select i1 %504, i64 %463, i64 %466
  %507 = sub i64 %505, %506
  %508 = icmp ugt i64 %507, 1
  br i1 %508, label %462, label %509

; <label>:509:                                    ; preds = %499, %449, %376, %370, %91, %34, %37, %28, %215, %137, %81
  %510 = phi i64 [ %82, %81 ], [ %216, %215 ], [ %138, %137 ], [ %9, %28 ], [ %9, %37 ], [ %9, %34 ], [ %94, %91 ], [ 9223372036854775807, %370 ], [ %378, %376 ], [ %457, %449 ], [ %506, %499 ]
  ret i64 %510
}

declare hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #3

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #3

declare hidden i32 @luaS_hashlongstr(%struct.TString*) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @frexp(double, i32* nocapture) local_unnamed_addr #6

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!9 = !{!10, !5, i64 8}
!10 = !{!"TValue", !5, i64 0, !5, i64 8}
!11 = !{!5, !5, i64 0}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!3, !4, i64 24}
!14 = !{!3, !4, i64 16}
!15 = !{!3, !5, i64 11}
!16 = !{!4, !4, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!3, !4, i64 32}
!20 = distinct !{!20, !18}
!21 = !{!3, !4, i64 40}
!22 = !{!3, !5, i64 10}
!23 = !{!24, !24, i64 0}
!24 = !{!"long long", !5, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{i64 0, i64 8, !16, i64 0, i64 8, !16, i64 0, i64 4, !25, i64 0, i64 8, !16, i64 0, i64 8, !23, i64 0, i64 8, !27, i64 8, i64 1, !11, i64 9, i64 1, !11, i64 12, i64 4, !25, i64 16, i64 8, !16, i64 16, i64 8, !16, i64 16, i64 4, !25, i64 16, i64 8, !16, i64 16, i64 8, !23, i64 16, i64 8, !27, i64 0, i64 8, !16, i64 0, i64 8, !16, i64 0, i64 4, !25, i64 0, i64 8, !16, i64 0, i64 8, !23, i64 0, i64 8, !27, i64 8, i64 1, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !5, i64 0}
!29 = !{!30, !5, i64 9}
!30 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!31 = !{!32, !7, i64 12}
!32 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!33 = !{!32, !5, i64 8}
