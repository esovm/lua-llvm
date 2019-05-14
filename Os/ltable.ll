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

; Function Attrs: norecurse nounwind optsize readonly uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table* nocapture readonly, %union.StackValue* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaH_realasize(%struct.Table* %1) #7
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !9
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i8 %7, 35
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %10
  %13 = bitcast %union.StackValue* %2 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !11
  %15 = add i64 %14, -1
  %16 = icmp ult i64 %15, 2147483648
  %17 = trunc i64 %14 to i32
  %18 = select i1 %16, i32 %17, i32 0
  br label %19

; <label>:19:                                     ; preds = %12, %10
  %20 = phi i32 [ %18, %12 ], [ 0, %10 ]
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %39, label %23

; <label>:23:                                     ; preds = %19
  %24 = tail call fastcc %struct.TValue* @getgeneric(%struct.Table* %1, %struct.TValue* nonnull %5) #8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !9
  %27 = icmp eq i8 %26, 32
  br i1 %27, label %28, label %29, !prof !12

; <label>:28:                                     ; preds = %23
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #9
  unreachable

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %31 = bitcast %union.Node** %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !13
  %33 = ptrtoint %struct.TValue* %24 to i64
  %34 = sub i64 %33, %32
  %35 = sdiv exact i64 %34, 24
  %36 = trunc i64 %35 to i32
  %37 = add i32 %4, 1
  %38 = add i32 %37, %36
  br label %39

; <label>:39:                                     ; preds = %3, %19, %29
  %40 = phi i32 [ %38, %29 ], [ 0, %3 ], [ %20, %19 ]
  %41 = icmp ult i32 %40, %4
  br i1 %41, label %42, label %68

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %44 = load %struct.TValue*, %struct.TValue** %43, align 8, !tbaa !14
  br label %47

; <label>:45:                                     ; preds = %47
  %46 = icmp ult i32 %54, %4
  br i1 %46, label %47, label %68

; <label>:47:                                     ; preds = %42, %45
  %48 = phi i32 [ %40, %42 ], [ %54, %45 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i64 %49, i32 1
  %51 = load i8, i8* %50, align 8, !tbaa !9
  %52 = and i8 %51, 15
  %53 = icmp eq i8 %52, 0
  %54 = add i32 %48, 1
  br i1 %53, label %45, label %55

; <label>:55:                                     ; preds = %47
  %56 = zext i32 %48 to i64
  %57 = zext i32 %54 to i64
  %58 = bitcast %union.StackValue* %2 to i64*
  store i64 %57, i64* %58, align 8, !tbaa !11
  store i8 35, i8* %6, align 8, !tbaa !9
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %60 = load %struct.TValue*, %struct.TValue** %43, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 %56
  %62 = bitcast %struct.TValue* %61 to i64*
  %63 = bitcast %struct.TValue* %59 to i64*
  %64 = load i64, i64* %62, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 %56, i32 1
  %66 = load i8, i8* %65, align 8, !tbaa !9
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %66, i8* %67, align 8, !tbaa !9
  br label %104

; <label>:68:                                     ; preds = %45, %39
  %69 = phi i32 [ %40, %39 ], [ %54, %45 ]
  %70 = sub i32 %69, %4
  %71 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %72 = load i8, i8* %71, align 1, !tbaa !15
  %73 = zext i8 %72 to i32
  %74 = shl i32 1, %73
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %104

; <label>:76:                                     ; preds = %68
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %78 = load %union.Node*, %union.Node** %77, align 8, !tbaa !13
  br label %81

; <label>:79:                                     ; preds = %81
  %80 = icmp slt i32 %88, %74
  br i1 %80, label %81, label %104

; <label>:81:                                     ; preds = %76, %79
  %82 = phi i32 [ %70, %76 ], [ %88, %79 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %union.Node, %union.Node* %78, i64 %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !11
  %86 = and i8 %85, 15
  %87 = icmp eq i8 %86, 0
  %88 = add nsw i32 %82, 1
  br i1 %87, label %79, label %89

; <label>:89:                                     ; preds = %81
  %90 = zext i32 %82 to i64
  %91 = getelementptr inbounds %union.Node, %union.Node* %78, i64 %90, i32 0, i32 4
  %92 = bitcast %union.Value* %91 to i64*
  %93 = bitcast %union.StackValue* %2 to i64*
  %94 = load i64, i64* %92, align 8
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds %union.Node, %union.Node* %78, i64 %90, i32 0, i32 2
  %96 = load i8, i8* %95, align 1, !tbaa !11
  store i8 %96, i8* %6, align 8, !tbaa !9
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %98 = getelementptr inbounds %union.Node, %union.Node* %78, i64 %90, i32 0, i32 0
  %99 = bitcast %union.Value* %98 to i64*
  %100 = bitcast %struct.TValue* %97 to i64*
  %101 = load i64, i64* %99, align 8
  store i64 %101, i64* %100, align 8
  %102 = load i8, i8* %84, align 8, !tbaa !9
  %103 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %102, i8* %103, align 8, !tbaa !9
  br label %104

; <label>:104:                                    ; preds = %79, %68, %89, %55
  %105 = phi i32 [ 1, %55 ], [ 1, %89 ], [ 0, %68 ], [ 0, %79 ]
  ret i32 %105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.Table, align 8
  %7 = bitcast %struct.Table* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10
  %8 = tail call i32 @luaH_realasize(%struct.Table* %1) #8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %8, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !2
  %12 = and i8 %11, 127
  store i8 %12, i8* %10, align 1, !tbaa !2
  call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %6, i32 %3) #7
  %13 = icmp ugt i32 %8, %2
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %16 = zext i32 %2 to i64
  br label %58

; <label>:17:                                     ; preds = %4
  store i32 %2, i32* %9, align 4, !tbaa !8
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %19 = load i8, i8* %18, align 1, !tbaa !15
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %21 = bitcast %union.Node** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %24 = bitcast %union.Node** %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  %27 = load i8, i8* %26, align 1, !tbaa !15
  store i8 %27, i8* %18, align 1, !tbaa !15
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %29 = bitcast %union.Node** %28 to i64*
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  %31 = bitcast %union.Node** %30 to i64*
  %32 = bitcast %union.Node** %28 to <2 x i64>*
  %33 = load <2 x i64>, <2 x i64>* %32, align 8, !tbaa !17
  %34 = bitcast %union.Node** %20 to <2 x i64>*
  store <2 x i64> %33, <2 x i64>* %34, align 8, !tbaa !17
  store i8 %19, i8* %26, align 1, !tbaa !15
  store i64 %22, i64* %29, align 8, !tbaa !13
  store i64 %25, i64* %31, align 8, !tbaa !16
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %36 = zext i32 %2 to i64
  %37 = zext i32 %8 to i64
  br label %38

; <label>:38:                                     ; preds = %50, %17
  %39 = phi i64 [ %36, %17 ], [ %51, %50 ]
  %40 = load %struct.TValue*, %struct.TValue** %35, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %39, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !9
  %43 = and i8 %42, 15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %38
  %46 = add nuw nsw i64 %39, 1
  br label %50

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %39
  %49 = add nuw nsw i64 %39, 1
  tail call void @luaH_setint(%struct.lua_State* %0, %struct.Table* nonnull %1, i64 %49, %struct.TValue* %48) #7
  br label %50

; <label>:50:                                     ; preds = %45, %47
  %51 = phi i64 [ %46, %45 ], [ %49, %47 ]
  %52 = icmp eq i64 %51, %37
  br i1 %52, label %53, label %38

; <label>:53:                                     ; preds = %50
  store i32 %8, i32* %9, align 4, !tbaa !8
  %54 = load i8, i8* %18, align 1, !tbaa !15
  %55 = bitcast %union.Node** %20 to <2 x i64>*
  %56 = load <2 x i64>, <2 x i64>* %55, align 8, !tbaa !17
  store i8 %19, i8* %18, align 1, !tbaa !15
  store i64 %22, i64* %21, align 8, !tbaa !13
  store i64 %25, i64* %24, align 8, !tbaa !16
  store i8 %54, i8* %26, align 1, !tbaa !15
  %57 = bitcast %union.Node** %28 to <2 x i64>*
  store <2 x i64> %56, <2 x i64>* %57, align 8, !tbaa !17
  br label %58

; <label>:58:                                     ; preds = %14, %53
  %59 = phi i64 [ %16, %14 ], [ %36, %53 ]
  %60 = phi %struct.TValue** [ %15, %14 ], [ %35, %53 ]
  %61 = zext i32 %8 to i64
  %62 = bitcast %struct.TValue** %60 to i8**
  %63 = load i8*, i8** %62, align 8, !tbaa !14
  %64 = shl nuw nsw i64 %61, 4
  %65 = shl nuw nsw i64 %59, 4
  %66 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %63, i64 %64, i64 %65) #8
  %67 = icmp eq i8* %66, null
  %68 = icmp ne i32 %2, 0
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %71, !prof !12

; <label>:70:                                     ; preds = %58
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %6) #7
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #9
  unreachable

; <label>:71:                                     ; preds = %58
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %73 = load i8, i8* %72, align 1, !tbaa !15
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %75 = bitcast %union.Node** %74 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !13
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %78 = bitcast %union.Node** %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !16
  %80 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  %81 = load i8, i8* %80, align 1, !tbaa !15
  store i8 %81, i8* %72, align 1, !tbaa !15
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %83 = bitcast %union.Node** %82 to i64*
  %84 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  %85 = bitcast %union.Node** %84 to i64*
  %86 = bitcast %union.Node** %82 to <2 x i64>*
  %87 = load <2 x i64>, <2 x i64>* %86, align 8, !tbaa !17
  %88 = bitcast %union.Node** %74 to <2 x i64>*
  store <2 x i64> %87, <2 x i64>* %88, align 8, !tbaa !17
  store i8 %73, i8* %80, align 1, !tbaa !15
  store i64 %76, i64* %83, align 8, !tbaa !13
  store i64 %79, i64* %85, align 8, !tbaa !16
  store i8* %66, i8** %62, align 8, !tbaa !14
  store i32 %2, i32* %9, align 4, !tbaa !8
  %89 = icmp ult i32 %8, %2
  %90 = bitcast i8* %66 to %struct.TValue*
  %91 = inttoptr i64 %76 to %union.Node*
  %92 = inttoptr i64 %76 to i8*
  br i1 %89, label %93, label %99

; <label>:93:                                     ; preds = %71
  br label %94

; <label>:94:                                     ; preds = %93, %94
  %95 = phi i64 [ %97, %94 ], [ %61, %93 ]
  %96 = getelementptr inbounds %struct.TValue, %struct.TValue* %90, i64 %95, i32 1
  store i8 16, i8* %96, align 8, !tbaa !9
  %97 = add nuw nsw i64 %95, 1
  %98 = icmp eq i64 %97, %59
  br i1 %98, label %99, label %94

; <label>:99:                                     ; preds = %94, %71
  %100 = zext i8 %73 to i32
  %101 = shl i32 1, %100
  %102 = icmp eq i8 %73, 31
  br i1 %102, label %130, label %103

; <label>:103:                                    ; preds = %99
  %104 = bitcast %struct.TValue* %5 to i8*
  %105 = bitcast %struct.TValue* %5 to i64*
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %107 = sext i32 %101 to i64
  br label %108

; <label>:108:                                    ; preds = %103, %127
  %109 = phi i64 [ 0, %103 ], [ %128, %127 ]
  %110 = getelementptr inbounds %union.Node, %union.Node* %91, i64 %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 8, !tbaa !11
  %112 = and i8 %111, 15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114

; <label>:114:                                    ; preds = %108
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #10
  %115 = getelementptr inbounds %union.Node, %union.Node* %91, i64 %109, i32 0, i32 4
  %116 = bitcast %union.Value* %115 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %105, align 8
  %118 = getelementptr inbounds %union.Node, %union.Node* %91, i64 %109, i32 0, i32 2
  %119 = load i8, i8* %118, align 1, !tbaa !11
  store i8 %119, i8* %106, align 8, !tbaa !9
  %120 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5) #8
  %121 = getelementptr inbounds %union.Node, %union.Node* %91, i64 %109, i32 0, i32 0
  %122 = bitcast %union.Value* %121 to i64*
  %123 = bitcast %struct.TValue* %120 to i64*
  %124 = load i64, i64* %122, align 8
  store i64 %124, i64* %123, align 8
  %125 = load i8, i8* %110, align 8, !tbaa !9
  %126 = getelementptr inbounds %struct.TValue, %struct.TValue* %120, i64 0, i32 1
  store i8 %125, i8* %126, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #10
  br label %127

; <label>:127:                                    ; preds = %114, %108
  %128 = add nuw nsw i64 %109, 1
  %129 = icmp slt i64 %128, %107
  br i1 %129, label %108, label %130

; <label>:130:                                    ; preds = %127, %99
  %131 = icmp eq i64 %79, 0
  br i1 %131, label %135, label %132

; <label>:132:                                    ; preds = %130
  %133 = sext i32 %101 to i64
  %134 = mul nsw i64 %133, 24
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %92, i64 %134) #8
  br label %135

; <label>:135:                                    ; preds = %130, %132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @setnodevector(%struct.lua_State*, %struct.Table* nocapture, i32) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  store %union.Node* @dummynode_, %union.Node** %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  store i8 0, i8* %7, align 1, !tbaa !15
  br label %36

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @luaO_ceillog2(i32 %2) #8
  %10 = icmp sgt i32 %9, 30
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = shl i32 1, %9
  %13 = icmp ugt i32 %9, 30
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #9
  unreachable

; <label>:15:                                     ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = mul nuw nsw i64 %16, 24
  %18 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 %17, i32 0) #8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %20 = bitcast %union.Node** %19 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !13
  %21 = bitcast i8* %18 to %union.Node*
  %22 = sext i32 %12 to i64
  br label %23

; <label>:23:                                     ; preds = %23, %15
  %24 = phi %union.Node* [ %21, %15 ], [ %31, %23 ]
  %25 = phi i64 [ 0, %15 ], [ %29, %23 ]
  %26 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %25, i32 0, i32 3
  store i32 0, i32* %26, align 4, !tbaa !11
  %27 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %25, i32 0, i32 2
  store i8 0, i8* %27, align 1, !tbaa !11
  %28 = getelementptr inbounds %union.Node, %union.Node* %24, i64 %25, i32 0, i32 1
  store i8 16, i8* %28, align 8, !tbaa !11
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp slt i64 %29, %22
  %31 = load %union.Node*, %union.Node** %19, align 8, !tbaa !13
  br i1 %30, label %23, label %32

; <label>:32:                                     ; preds = %23
  %33 = trunc i32 %9 to i8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  store i8 %33, i8* %34, align 1, !tbaa !15
  %35 = getelementptr inbounds %union.Node, %union.Node* %31, i64 %16
  br label %36

; <label>:36:                                     ; preds = %32, %5
  %37 = phi %union.Node* [ %35, %32 ], [ null, %5 ]
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  store %union.Node* %37, %union.Node** %38, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = tail call %struct.TValue* @luaH_getint(%struct.Table* %1, i64 %2) #7
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !9
  %9 = icmp eq i8 %8, 32
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #10
  %12 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %13, align 8, !tbaa !9
  %14 = call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #10
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 0, i32 1
  br label %16

; <label>:16:                                     ; preds = %4, %10
  %17 = phi i8* [ %7, %4 ], [ %15, %10 ]
  %18 = phi %struct.TValue* [ %6, %4 ], [ %14, %10 ]
  %19 = bitcast %struct.TValue* %3 to i64*
  %20 = bitcast %struct.TValue* %18 to i64*
  %21 = load i64, i64* %19, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !9
  store i8 %23, i8* %17, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @freehash(%struct.lua_State*, %struct.Table* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !16
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
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 %15) #8
  br label %16

; <label>:16:                                     ; preds = %6, %2
  ret void
}

; Function Attrs: noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %5 = load %union.Node*, %union.Node** %4, align 8, !tbaa !16
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
  tail call void @luaH_resize(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %2, i32 %13) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 5, i64 56) #8
  %3 = bitcast %struct.GCObject* %2 to %struct.Table*
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 2, i32 1
  %5 = bitcast i8* %4 to %struct.Table**
  store %struct.Table* null, %struct.Table** %5, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 3
  store i8 -1, i8* %6, align 2, !tbaa !19
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1
  %8 = bitcast %struct.GCObject* %7 to %struct.TValue**
  store %struct.TValue* null, %struct.TValue** %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 5
  store i32 0, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1, i32 1
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 4
  store i8 0, i8* %11, align 1, !tbaa !15
  %12 = bitcast i8* %10 to <2 x %union.Node*>*
  store <2 x %union.Node*> <%union.Node* @dummynode_, %union.Node* null>, <2 x %union.Node*>* %12, align 8, !tbaa !17
  ret %struct.Table* %3
}

; Function Attrs: optsize
declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !16
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
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 %15) #8
  br label %16

; <label>:16:                                     ; preds = %2, %6
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %18 = bitcast %struct.TValue** %17 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !14
  %20 = tail call i32 @luaH_realasize(%struct.Table* nonnull %1) #7
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %19, i64 %22) #8
  %23 = bitcast %struct.Table* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %23, i64 56) #8
  ret void
}

; Function Attrs: optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = alloca [32 x i32], align 16
  %5 = bitcast [32 x i32]* %4 to i8*
  %6 = alloca %struct.TValue, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !9
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !12

; <label>:13:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #9
  unreachable

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8 %10, 19
  br i1 %15, label %16, label %35

; <label>:16:                                     ; preds = %14
  %17 = bitcast %struct.TValue* %2 to double*
  %18 = load double, double* %17, align 8, !tbaa !11
  %19 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10
  %20 = call i32 @luaV_flttointeger(double %18, i64* nonnull %7, i32 0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %7, align 8, !tbaa !20
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
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

; <label>:31:                                     ; preds = %28, %22
  %32 = phi i8* [ %9, %28 ], [ %25, %22 ]
  %33 = phi i8 [ %29, %28 ], [ 35, %22 ]
  %34 = phi %struct.TValue* [ %2, %28 ], [ %6, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10
  br label %35

; <label>:35:                                     ; preds = %14, %31
  %36 = phi i8* [ %9, %14 ], [ %32, %31 ]
  %37 = phi i8 [ %10, %14 ], [ %33, %31 ]
  %38 = phi %struct.TValue* [ %2, %14 ], [ %34, %31 ]
  %39 = zext i8 %37 to i32
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 0
  %41 = call fastcc %union.Node* @mainposition(%struct.Table* %1, i32 %39, %union.Value* %40) #8
  %42 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 1
  %43 = load i8, i8* %42, align 8, !tbaa !11
  %44 = and i8 %43, 15
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %47 = load %union.Node*, %union.Node** %46, align 8, !tbaa !16
  %48 = icmp eq %union.Node* %47, null
  br i1 %45, label %49, label %50

; <label>:49:                                     ; preds = %35
  br i1 %48, label %64, label %260

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
  store %union.Node* %60, %union.Node** %46, align 8, !tbaa !16
  %61 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 2
  %62 = load i8, i8* %61, align 1, !tbaa !11
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %196, label %56

; <label>:64:                                     ; preds = %56, %49, %50, %51
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 128, i32 16, i1 false)
  %65 = call i32 @luaH_realasize(%struct.Table* nonnull %1) #8
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %65, i32* %66, align 4, !tbaa !8
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %68 = load i8, i8* %67, align 1, !tbaa !2
  %69 = and i8 %68, 127
  store i8 %69, i8* %67, align 1, !tbaa !2
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  br label %71

; <label>:71:                                     ; preds = %97, %64
  %72 = phi i64 [ 0, %64 ], [ %104, %97 ]
  %73 = phi i32 [ 1, %64 ], [ %98, %97 ]
  %74 = phi i32 [ 0, %64 ], [ %103, %97 ]
  %75 = phi i32 [ 1, %64 ], [ %105, %97 ]
  %76 = icmp ugt i32 %75, %65
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %71
  %78 = icmp ugt i32 %73, %65
  br i1 %78, label %107, label %79

; <label>:79:                                     ; preds = %77, %71
  %80 = phi i32 [ %65, %77 ], [ %75, %71 ]
  %81 = icmp ugt i32 %73, %80
  br i1 %81, label %97, label %82

; <label>:82:                                     ; preds = %79
  %83 = load %struct.TValue*, %struct.TValue** %70, align 8, !tbaa !14
  br label %84

; <label>:84:                                     ; preds = %84, %82
  %85 = phi i32 [ 0, %82 ], [ %94, %84 ]
  %86 = phi i32 [ %73, %82 ], [ %95, %84 ]
  %87 = add i32 %86, -1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %83, i64 %88, i32 1
  %90 = load i8, i8* %89, align 8, !tbaa !9
  %91 = and i8 %90, 15
  %92 = icmp ne i8 %91, 0
  %93 = zext i1 %92 to i32
  %94 = add i32 %85, %93
  %95 = add i32 %86, 1
  %96 = icmp ugt i32 %95, %80
  br i1 %96, label %97, label %84

; <label>:97:                                     ; preds = %84, %79
  %98 = phi i32 [ %73, %79 ], [ %95, %84 ]
  %99 = phi i32 [ 0, %79 ], [ %94, %84 ]
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %72
  %101 = load i32, i32* %100, align 4, !tbaa !22
  %102 = add i32 %101, %99
  store i32 %102, i32* %100, align 4, !tbaa !22
  %103 = add i32 %99, %74
  %104 = add nuw nsw i64 %72, 1
  %105 = shl i32 %75, 1
  %106 = icmp ult i64 %104, 32
  br i1 %106, label %71, label %107

; <label>:107:                                    ; preds = %97, %77
  %108 = phi i32 [ %74, %77 ], [ %103, %97 ]
  %109 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %110 = load i8, i8* %109, align 1, !tbaa !15
  %111 = zext i8 %110 to i32
  %112 = shl i32 1, %111
  %113 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %114 = sext i32 %112 to i64
  br label %115

; <label>:115:                                    ; preds = %150, %107
  %116 = phi i64 [ %114, %107 ], [ %119, %150 ]
  %117 = phi i32 [ 0, %107 ], [ %152, %150 ]
  %118 = phi i32 [ 0, %107 ], [ %151, %150 ]
  %119 = add nsw i64 %116, -1
  %120 = load %union.Node*, %union.Node** %113, align 8, !tbaa !13
  %121 = getelementptr inbounds %union.Node, %union.Node* %120, i64 %119, i32 0, i32 1
  %122 = load i8, i8* %121, align 8, !tbaa !11
  %123 = and i8 %122, 15
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %150, label %125

; <label>:125:                                    ; preds = %115
  %126 = getelementptr inbounds %union.Node, %union.Node* %120, i64 %119, i32 0, i32 2
  %127 = load i8, i8* %126, align 1, !tbaa !11
  %128 = icmp eq i8 %127, 35
  br i1 %128, label %129, label %147

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %union.Node, %union.Node* %120, i64 %119, i32 0, i32 4
  %131 = bitcast %union.Value* %130 to i64*
  %132 = load i64, i64* %131, align 8, !tbaa !11
  %133 = add i64 %132, -1
  %134 = icmp ugt i64 %133, 2147483647
  %135 = trunc i64 %132 to i32
  %136 = icmp eq i32 %135, 0
  %137 = or i1 %136, %134
  br i1 %137, label %144, label %138

; <label>:138:                                    ; preds = %129
  %139 = call i32 @luaO_ceillog2(i32 %135) #8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !22
  %143 = add i32 %142, 1
  store i32 %143, i32* %141, align 4, !tbaa !22
  br label %144

; <label>:144:                                    ; preds = %138, %129
  %145 = phi i32 [ 1, %138 ], [ 0, %129 ]
  %146 = add nsw i32 %145, %118
  br label %147

; <label>:147:                                    ; preds = %144, %125
  %148 = phi i32 [ %146, %144 ], [ %118, %125 ]
  %149 = add nsw i32 %117, 1
  br label %150

; <label>:150:                                    ; preds = %147, %115
  %151 = phi i32 [ %118, %115 ], [ %148, %147 ]
  %152 = phi i32 [ %117, %115 ], [ %149, %147 ]
  %153 = trunc i64 %119 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %115

; <label>:155:                                    ; preds = %150
  %156 = add i32 %151, %108
  %157 = load i8, i8* %36, align 8, !tbaa !9
  %158 = icmp eq i8 %157, 35
  br i1 %158, label %159, label %176

; <label>:159:                                    ; preds = %155
  %160 = bitcast %struct.TValue* %38 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !11
  %162 = add i64 %161, -1
  %163 = icmp ugt i64 %162, 2147483647
  %164 = trunc i64 %161 to i32
  %165 = icmp eq i32 %164, 0
  %166 = or i1 %165, %163
  br i1 %166, label %173, label %167

; <label>:167:                                    ; preds = %159
  %168 = call i32 @luaO_ceillog2(i32 %164) #8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !22
  %172 = add i32 %171, 1
  store i32 %172, i32* %170, align 4, !tbaa !22
  br label %173

; <label>:173:                                    ; preds = %167, %159
  %174 = phi i32 [ 1, %167 ], [ 0, %159 ]
  %175 = add i32 %174, %156
  br label %176

; <label>:176:                                    ; preds = %173, %155
  %177 = phi i32 [ %175, %173 ], [ %156, %155 ]
  br label %178

; <label>:178:                                    ; preds = %186, %176
  %179 = phi i64 [ 0, %176 ], [ %193, %186 ]
  %180 = phi i32 [ 0, %176 ], [ %192, %186 ]
  %181 = phi i32 [ 0, %176 ], [ %191, %186 ]
  %182 = phi i32 [ 0, %176 ], [ %189, %186 ]
  %183 = phi i32 [ 1, %176 ], [ %194, %186 ]
  %184 = lshr i32 %183, 1
  %185 = icmp ugt i32 %177, %184
  br i1 %185, label %186, label %253

; <label>:186:                                    ; preds = %178
  %187 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %179
  %188 = load i32, i32* %187, align 4, !tbaa !22
  %189 = add i32 %188, %182
  %190 = icmp ugt i32 %189, %184
  %191 = select i1 %190, i32 %189, i32 %181
  %192 = select i1 %190, i32 %183, i32 %180
  %193 = add nuw nsw i64 %179, 1
  %194 = shl i32 %183, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %253, label %178

; <label>:196:                                    ; preds = %58
  %197 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 2
  %198 = load i8, i8* %197, align 1, !tbaa !11
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 4
  %201 = call fastcc %union.Node* @mainposition(%struct.Table* nonnull %1, i32 %199, %union.Value* nonnull %200) #7
  %202 = icmp eq %union.Node* %201, %41
  br i1 %202, label %232, label %203

; <label>:203:                                    ; preds = %196
  br label %204

; <label>:204:                                    ; preds = %203, %204
  %205 = phi %union.Node* [ %209, %204 ], [ %201, %203 ]
  %206 = getelementptr inbounds %union.Node, %union.Node* %205, i64 0, i32 0, i32 3
  %207 = load i32, i32* %206, align 4, !tbaa !11
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %union.Node, %union.Node* %205, i64 %208
  %210 = icmp eq %union.Node* %209, %41
  br i1 %210, label %211, label %204

; <label>:211:                                    ; preds = %204
  %212 = getelementptr inbounds %union.Node, %union.Node* %205, i64 0, i32 0, i32 3
  %213 = ptrtoint %union.Node* %60 to i64
  %214 = ptrtoint %union.Node* %205 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 24
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %212, align 4, !tbaa !11
  %218 = bitcast %union.Node* %60 to i8*
  %219 = bitcast %union.Node* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %218, i8* %219, i64 24, i32 8, i1 false), !tbaa.struct !23
  %220 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  %221 = load i32, i32* %220, align 4, !tbaa !11
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %231, label %223

; <label>:223:                                    ; preds = %211
  %224 = ptrtoint %union.Node* %41 to i64
  %225 = sub i64 %224, %213
  %226 = sdiv exact i64 %225, 24
  %227 = trunc i64 %226 to i32
  %228 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 3
  %229 = load i32, i32* %228, align 4, !tbaa !11
  %230 = add nsw i32 %229, %227
  store i32 %230, i32* %228, align 4, !tbaa !11
  store i32 0, i32* %220, align 4, !tbaa !11
  br label %231

; <label>:231:                                    ; preds = %211, %223
  store i8 16, i8* %42, align 8, !tbaa !11
  br label %260

; <label>:232:                                    ; preds = %196
  %233 = getelementptr inbounds %union.Node, %union.Node* %41, i64 0, i32 0, i32 3
  %234 = load i32, i32* %233, align 4, !tbaa !11
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

; <label>:236:                                    ; preds = %232
  %237 = ptrtoint %union.Node* %60 to i64
  br label %247

; <label>:238:                                    ; preds = %232
  %239 = sext i32 %234 to i64
  %240 = getelementptr inbounds %union.Node, %union.Node* %41, i64 %239
  %241 = ptrtoint %union.Node* %240 to i64
  %242 = ptrtoint %union.Node* %60 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 24
  %245 = trunc i64 %244 to i32
  %246 = getelementptr inbounds %union.Node, %union.Node* %59, i64 -1, i32 0, i32 3
  store i32 %245, i32* %246, align 4, !tbaa !11
  br label %247

; <label>:247:                                    ; preds = %236, %238
  %248 = phi i64 [ %237, %236 ], [ %242, %238 ]
  %249 = ptrtoint %union.Node* %41 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 24
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %233, align 4, !tbaa !11
  br label %260

; <label>:253:                                    ; preds = %186, %178
  %254 = phi i32 [ %191, %186 ], [ %181, %178 ]
  %255 = phi i32 [ %192, %186 ], [ %180, %178 ]
  %256 = add i32 %108, 1
  %257 = add i32 %256, %152
  %258 = sub i32 %257, %254
  call void @luaH_resize(%struct.lua_State* %0, %struct.Table* %1, i32 %255, i32 %258) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10
  %259 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %38) #7
  br label %287

; <label>:260:                                    ; preds = %231, %247, %49
  %261 = phi %union.Node* [ %41, %49 ], [ %60, %247 ], [ %41, %231 ]
  %262 = getelementptr inbounds %union.Node, %union.Node* %261, i64 0, i32 0, i32 4
  %263 = bitcast %struct.TValue* %38 to i64*
  %264 = bitcast %union.Value* %262 to i64*
  %265 = load i64, i64* %263, align 8
  store i64 %265, i64* %264, align 8
  %266 = load i8, i8* %36, align 8, !tbaa !9
  %267 = getelementptr inbounds %union.Node, %union.Node* %261, i64 0, i32 0, i32 2
  store i8 %266, i8* %267, align 1, !tbaa !11
  %268 = load i8, i8* %36, align 8, !tbaa !9
  %269 = and i8 %268, 64
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %285, label %271

; <label>:271:                                    ; preds = %260
  %272 = bitcast %struct.Table* %1 to %struct.GCObject*
  %273 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %274 = load i8, i8* %273, align 1, !tbaa !11
  %275 = and i8 %274, 32
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %285, label %277

; <label>:277:                                    ; preds = %271
  %278 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 0, i32 0
  %279 = load %struct.GCObject*, %struct.GCObject** %278, align 8, !tbaa !11
  %280 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %279, i64 0, i32 2
  %281 = load i8, i8* %280, align 1, !tbaa !26
  %282 = and i8 %281, 24
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %285, label %284

; <label>:284:                                    ; preds = %277
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %272) #8
  br label %285

; <label>:285:                                    ; preds = %277, %271, %260, %284
  %286 = bitcast %union.Node* %261 to %struct.TValue*
  br label %287

; <label>:287:                                    ; preds = %253, %285
  %288 = phi %struct.TValue* [ %286, %285 ], [ %259, %253 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10
  ret %struct.TValue* %288
}

; Function Attrs: noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = tail call %struct.TValue* @luaH_get(%struct.Table* %1, %struct.TValue* %2) #7
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 32
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %2) #7
  br label %10

; <label>:10:                                     ; preds = %3, %8
  %11 = phi %struct.TValue* [ %9, %8 ], [ %4, %3 ]
  ret %struct.TValue* %11
}

; Function Attrs: nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #10
  %26 = call double @frexp(double %24, i32* nonnull %4) #8
  %27 = fmul double %26, 0x41E0000000000000
  %28 = fcmp oge double %27, 0xC3E0000000000000
  %29 = fcmp olt double %27, 0x43E0000000000000
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %20
  %32 = fptosi double %27 to i64
  %33 = load i32, i32* %4, align 4, !tbaa !22
  %34 = trunc i64 %32 to i32
  %35 = add i32 %33, %34
  %36 = ashr i32 %35, 31
  %37 = xor i32 %36, %35
  br label %38

; <label>:38:                                     ; preds = %20, %31
  %39 = phi i32 [ %37, %31 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #10
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
  %69 = tail call i32 @luaS_hashlongstr(%struct.TString* %68) #8
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

; Function Attrs: optsize
declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind optsize uwtable
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
  %25 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0) #7
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %3, %26
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %24, %20
  %29 = trunc i64 %1 to i32
  store i32 %29, i32* %4, align 4, !tbaa !8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 %3
  br label %62

; <label>:33:                                     ; preds = %24, %16, %12
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %35 = load %union.Node*, %union.Node** %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  %37 = load i8, i8* %36, align 1, !tbaa !15
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
  %49 = load i8, i8* %48, align 1, !tbaa !11
  %50 = icmp eq i8 %49, 35
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46, i32 0, i32 4
  %53 = bitcast %union.Value* %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !11
  %55 = icmp eq i64 %54, %1
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %51
  %57 = bitcast %union.Node* %47 to %struct.TValue*
  br label %62

; <label>:58:                                     ; preds = %51, %43
  %59 = getelementptr inbounds %union.Node, %union.Node* %45, i64 %46, i32 0, i32 3
  %60 = load i32, i32* %59, align 4, !tbaa !11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %43

; <label>:62:                                     ; preds = %58, %56, %28, %8
  %63 = phi %struct.TValue* [ %11, %8 ], [ %32, %28 ], [ %57, %56 ], [ @absentkey, %58 ]
  ret %struct.TValue* %63
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define hidden %struct.TValue* @luaH_getshortstr(%struct.Table* nocapture readonly, %struct.TString* readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 5
  %6 = load i32, i32* %5, align 4, !tbaa !28
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

; Function Attrs: nounwind optsize uwtable
define hidden %struct.TValue* @luaH_getstr(%struct.Table* nocapture readonly, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !30
  %6 = icmp eq i8 %5, 20
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* %0, %struct.TString* nonnull %1) #7
  br label %15

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #10
  %11 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %11, align 8, !tbaa !11
  %12 = or i8 %5, 64
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %12, i8* %13, align 8, !tbaa !9
  %14 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #10
  br label %15

; <label>:15:                                     ; preds = %9, %7
  %16 = phi %struct.TValue* [ %8, %7 ], [ %14, %9 ]
  ret %struct.TValue* %16
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.TValue* @getgeneric(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !9
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0
  %7 = tail call fastcc %union.Node* @mainposition(%struct.Table* %0, i32 %5, %union.Value* %6) #8
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
  %63 = tail call i32 @luaS_eqlngstr(%struct.TString* %59, %struct.TString* %62) #8
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

; Function Attrs: nounwind optsize uwtable
define hidden %struct.TValue* @luaH_get(%struct.Table* nocapture, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !9
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %25 [
    i6 20, label %7
    i6 -29, label %11
    i6 0, label %27
    i6 19, label %15
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %1 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !11
  %10 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* %0, %struct.TString* %9) #7
  br label %27

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.TValue* %1 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !11
  %14 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %13) #7
  br label %27

; <label>:15:                                     ; preds = %2
  %16 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #10
  %17 = bitcast %struct.TValue* %1 to double*
  %18 = load double, double* %17, align 8, !tbaa !11
  %19 = call i32 @luaV_flttointeger(double %18, i64* nonnull %3, i32 0) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10
  br label %25

; <label>:22:                                     ; preds = %15
  %23 = load i64, i64* %3, align 8, !tbaa !20
  %24 = call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %23) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10
  br label %27

; <label>:25:                                     ; preds = %21, %2
  %26 = call fastcc %struct.TValue* @getgeneric(%struct.Table* %0, %struct.TValue* nonnull %1) #7
  br label %27

; <label>:27:                                     ; preds = %22, %2, %25, %11, %7
  %28 = phi %struct.TValue* [ %26, %25 ], [ %24, %22 ], [ %14, %11 ], [ %10, %7 ], [ @absentkey, %2 ]
  ret %struct.TValue* %28
}

; Function Attrs: norecurse nounwind optsize uwtable
define hidden i64 @luaH_getn(%struct.Table* nocapture) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %70, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !14
  %8 = add i32 %3, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %9, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !9
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %70

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
  br i1 %33, label %173, label %37

; <label>:34:                                     ; preds = %24
  %35 = and i32 %8, %17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %173, label %37

; <label>:37:                                     ; preds = %28, %34
  store i32 %8, i32* %2, align 4, !tbaa !8
  %38 = or i8 %26, -128
  store i8 %38, i8* %25, align 1, !tbaa !2
  br label %173

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
  %61 = or i1 %60, %58
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %54
  %63 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0) #7
  %64 = lshr i32 %63, 1
  %65 = icmp ugt i32 %55, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  store i32 %55, i32* %2, align 4, !tbaa !8
  %67 = or i8 %57, -128
  store i8 %67, i8* %56, align 1, !tbaa !2
  br label %68

; <label>:68:                                     ; preds = %54, %66, %62
  %69 = zext i32 %55 to i64
  br label %173

; <label>:70:                                     ; preds = %1, %5
  %71 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %72 = load i8, i8* %71, align 1, !tbaa !2
  %73 = icmp slt i8 %72, 0
  br i1 %73, label %74, label %118

; <label>:74:                                     ; preds = %70
  %75 = add i32 %3, -1
  %76 = and i32 %75, %3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %118, label %78

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %80 = load %struct.TValue*, %struct.TValue** %79, align 8, !tbaa !14
  %81 = zext i32 %3 to i64
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %81, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !9
  %84 = and i8 %83, 15
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %173, label %86

; <label>:86:                                     ; preds = %78
  %87 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0) #7
  %88 = add i32 %87, -1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %89, i32 1
  %91 = load i8, i8* %90, align 8, !tbaa !9
  %92 = and i8 %91, 15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %118

; <label>:94:                                     ; preds = %86
  %95 = sub i32 %87, %3
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %115

; <label>:97:                                     ; preds = %94
  br label %98

; <label>:98:                                     ; preds = %97, %98
  %99 = phi i32 [ %110, %98 ], [ %3, %97 ]
  %100 = phi i32 [ %109, %98 ], [ %87, %97 ]
  %101 = add i32 %100, %99
  %102 = lshr i32 %101, 1
  %103 = add nsw i32 %102, -1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %104, i32 1
  %106 = load i8, i8* %105, align 8, !tbaa !9
  %107 = and i8 %106, 15
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i32 %102, i32 %100
  %110 = select i1 %108, i32 %99, i32 %102
  %111 = sub i32 %109, %110
  %112 = icmp ugt i32 %111, 1
  br i1 %112, label %98, label %113

; <label>:113:                                    ; preds = %98
  %114 = zext i32 %110 to i64
  br label %115

; <label>:115:                                    ; preds = %113, %94
  %116 = phi i64 [ %114, %113 ], [ %81, %94 ]
  %117 = phi i32 [ %110, %113 ], [ %3, %94 ]
  store i32 %117, i32* %2, align 4, !tbaa !8
  br label %173

; <label>:118:                                    ; preds = %86, %74, %70
  %119 = phi i32 [ %3, %74 ], [ %87, %86 ], [ %3, %70 ]
  %120 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %121 = load %union.Node*, %union.Node** %120, align 8, !tbaa !16
  %122 = icmp eq %union.Node* %121, null
  br i1 %122, label %131, label %123

; <label>:123:                                    ; preds = %118
  %124 = add i32 %119, 1
  %125 = zext i32 %124 to i64
  %126 = tail call %struct.TValue* @luaH_getint(%struct.Table* nonnull %0, i64 %125) #7
  %127 = getelementptr inbounds %struct.TValue, %struct.TValue* %126, i64 0, i32 1
  %128 = load i8, i8* %127, align 8, !tbaa !9
  %129 = and i8 %128, 15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %123, %118
  %132 = zext i32 %119 to i64
  br label %173

; <label>:133:                                    ; preds = %123
  %134 = zext i32 %119 to i64
  %135 = icmp eq i32 %119, 0
  %136 = zext i1 %135 to i64
  %137 = add nuw nsw i64 %136, %134
  br label %138

; <label>:138:                                    ; preds = %141, %133
  %139 = phi i64 [ %137, %133 ], [ %142, %141 ]
  %140 = icmp ult i64 %139, 4611686018427387904
  br i1 %140, label %141, label %148

; <label>:141:                                    ; preds = %138
  %142 = shl i64 %139, 1
  %143 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %142) #8
  %144 = getelementptr inbounds %struct.TValue, %struct.TValue* %143, i64 0, i32 1
  %145 = load i8, i8* %144, align 8, !tbaa !9
  %146 = and i8 %145, 15
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %154, label %138

; <label>:148:                                    ; preds = %138
  %149 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 9223372036854775807) #8
  %150 = getelementptr inbounds %struct.TValue, %struct.TValue* %149, i64 0, i32 1
  %151 = load i8, i8* %150, align 8, !tbaa !9
  %152 = and i8 %151, 15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %173

; <label>:154:                                    ; preds = %141, %148
  %155 = phi i64 [ 9223372036854775807, %148 ], [ %142, %141 ]
  %156 = sub i64 %155, %139
  %157 = icmp ugt i64 %156, 1
  br i1 %157, label %158, label %173

; <label>:158:                                    ; preds = %154
  br label %159

; <label>:159:                                    ; preds = %158, %159
  %160 = phi i64 [ %170, %159 ], [ %139, %158 ]
  %161 = phi i64 [ %169, %159 ], [ %155, %158 ]
  %162 = add i64 %161, %160
  %163 = lshr i64 %162, 1
  %164 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %163) #8
  %165 = getelementptr inbounds %struct.TValue, %struct.TValue* %164, i64 0, i32 1
  %166 = load i8, i8* %165, align 8, !tbaa !9
  %167 = and i8 %166, 15
  %168 = icmp eq i8 %167, 0
  %169 = select i1 %168, i64 %163, i64 %161
  %170 = select i1 %168, i64 %160, i64 %163
  %171 = sub i64 %169, %170
  %172 = icmp ugt i64 %171, 1
  br i1 %172, label %159, label %173

; <label>:173:                                    ; preds = %159, %154, %148, %78, %34, %37, %28, %131, %115, %68
  %174 = phi i64 [ %69, %68 ], [ %132, %131 ], [ %116, %115 ], [ %9, %28 ], [ %9, %37 ], [ %9, %34 ], [ %81, %78 ], [ 9223372036854775807, %148 ], [ %139, %154 ], [ %170, %159 ]
  ret i64 %174
}

; Function Attrs: optsize
declare hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i32 @luaS_hashlongstr(%struct.TString*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare double @frexp(double, i32* nocapture) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind }

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
!16 = !{!3, !4, i64 32}
!17 = !{!4, !4, i64 0}
!18 = !{!3, !4, i64 40}
!19 = !{!3, !5, i64 10}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !5, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{i64 0, i64 8, !17, i64 0, i64 8, !17, i64 0, i64 4, !22, i64 0, i64 8, !17, i64 0, i64 8, !20, i64 0, i64 8, !24, i64 8, i64 1, !11, i64 9, i64 1, !11, i64 12, i64 4, !22, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 4, !22, i64 16, i64 8, !17, i64 16, i64 8, !20, i64 16, i64 8, !24, i64 0, i64 8, !17, i64 0, i64 8, !17, i64 0, i64 4, !22, i64 0, i64 8, !17, i64 0, i64 8, !20, i64 0, i64 8, !24, i64 8, i64 1, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !5, i64 0}
!26 = !{!27, !5, i64 9}
!27 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!28 = !{!29, !7, i64 12}
!29 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!30 = !{!29, !5, i64 8}
