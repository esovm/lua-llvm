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

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  br label %42

; <label>:42:                                     ; preds = %45, %39
  %43 = phi i32 [ %40, %39 ], [ %52, %45 ]
  %44 = icmp ult i32 %43, %4
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %42
  %46 = load %struct.TValue*, %struct.TValue** %41, align 8, !tbaa !14
  %47 = zext i32 %43 to i64
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i64 %47, i32 1
  %49 = load i8, i8* %48, align 8, !tbaa !9
  %50 = and i8 %49, 15
  %51 = icmp eq i8 %50, 0
  %52 = add i32 %43, 1
  br i1 %51, label %42, label %53

; <label>:53:                                     ; preds = %45
  %54 = zext i32 %43 to i64
  %55 = zext i32 %52 to i64
  %56 = bitcast %union.StackValue* %2 to i64*
  store i64 %55, i64* %56, align 8, !tbaa !11
  store i8 35, i8* %6, align 8, !tbaa !9
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %58 = load %struct.TValue*, %struct.TValue** %41, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i64 %54
  %60 = bitcast %struct.TValue* %59 to i64*
  %61 = bitcast %struct.TValue* %57 to i64*
  %62 = load i64, i64* %60, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i64 %54, i32 1
  br label %95

; <label>:64:                                     ; preds = %42
  %65 = sub i32 %43, %4
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %67 = load i8, i8* %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = shl i32 1, %68
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  br label %71

; <label>:71:                                     ; preds = %74, %64
  %72 = phi i32 [ %65, %64 ], [ %81, %74 ]
  %73 = icmp slt i32 %72, %69
  br i1 %73, label %74, label %99

; <label>:74:                                     ; preds = %71
  %75 = load %union.Node*, %union.Node** %70, align 8, !tbaa !13
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds %union.Node, %union.Node* %75, i64 %76, i32 0, i32 1
  %78 = load i8, i8* %77, align 8, !tbaa !11
  %79 = and i8 %78, 15
  %80 = icmp eq i8 %79, 0
  %81 = add i32 %72, 1
  br i1 %80, label %71, label %82

; <label>:82:                                     ; preds = %74
  %83 = zext i32 %72 to i64
  %84 = getelementptr inbounds %union.Node, %union.Node* %75, i64 %83, i32 0, i32 4
  %85 = bitcast %union.Value* %84 to i64*
  %86 = bitcast %union.StackValue* %2 to i64*
  %87 = load i64, i64* %85, align 8
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds %union.Node, %union.Node* %75, i64 %83, i32 0, i32 2
  %89 = load i8, i8* %88, align 1, !tbaa !11
  store i8 %89, i8* %6, align 8, !tbaa !9
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0
  %91 = getelementptr inbounds %union.Node, %union.Node* %75, i64 %83, i32 0, i32 0
  %92 = bitcast %union.Value* %91 to i64*
  %93 = bitcast %struct.TValue* %90 to i64*
  %94 = load i64, i64* %92, align 8
  store i64 %94, i64* %93, align 8
  br label %95

; <label>:95:                                     ; preds = %53, %82
  %96 = phi i8* [ %77, %82 ], [ %63, %53 ]
  %97 = load i8, i8* %96, align 8, !tbaa !9
  %98 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1, i32 0, i32 1
  store i8 %97, i8* %98, align 8, !tbaa !9
  br label %99

; <label>:99:                                     ; preds = %71, %95
  %100 = phi i32 [ 1, %95 ], [ 0, %71 ]
  ret i32 %100
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.Table, align 8
  %7 = bitcast %struct.Table* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10
  %8 = tail call fastcc i32 @setlimittosize(%struct.Table* %1) #7
  call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %6, i32 %3) #7
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %12 = zext i32 %8 to i64
  %13 = zext i32 %2 to i64
  br label %56

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %2, i32* %15, align 4, !tbaa !8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %19 = bitcast %union.Node** %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %22 = bitcast %union.Node** %21 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  %25 = load i8, i8* %24, align 1, !tbaa !15
  store i8 %25, i8* %16, align 1, !tbaa !15
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %27 = bitcast %union.Node** %26 to i64*
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 8
  %29 = bitcast %union.Node** %28 to i64*
  %30 = bitcast %union.Node** %26 to <2 x i64>*
  %31 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !17
  %32 = bitcast %union.Node** %18 to <2 x i64>*
  store <2 x i64> %31, <2 x i64>* %32, align 8, !tbaa !17
  store i8 %17, i8* %24, align 1, !tbaa !15
  store i64 %20, i64* %27, align 8, !tbaa !13
  store i64 %23, i64* %29, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %34 = zext i32 %2 to i64
  %35 = zext i32 %8 to i64
  br label %36

; <label>:36:                                     ; preds = %49, %14
  %37 = phi i64 [ %50, %49 ], [ %34, %14 ]
  %38 = icmp ult i64 %37, %35
  br i1 %38, label %39, label %51

; <label>:39:                                     ; preds = %36
  %40 = load %struct.TValue*, %struct.TValue** %33, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %37, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !9
  %43 = and i8 %42, 15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %37
  %47 = add nuw i64 %37, 1
  %48 = and i64 %47, 4294967295
  tail call void @luaH_setint(%struct.lua_State* %0, %struct.Table* nonnull %1, i64 %48, %struct.TValue* %46) #7
  br label %49

; <label>:49:                                     ; preds = %39, %45
  %50 = add nuw nsw i64 %37, 1
  br label %36

; <label>:51:                                     ; preds = %36
  store i32 %8, i32* %15, align 4, !tbaa !8
  %52 = load i8, i8* %16, align 1, !tbaa !15
  %53 = bitcast %union.Node** %18 to <2 x i64>*
  %54 = load <2 x i64>, <2 x i64>* %53, align 8, !tbaa !17
  store i8 %17, i8* %16, align 1, !tbaa !15
  store i64 %20, i64* %19, align 8, !tbaa !13
  store i64 %23, i64* %22, align 8, !tbaa !16
  store i8 %52, i8* %24, align 1, !tbaa !15
  %55 = bitcast %union.Node** %26 to <2 x i64>*
  store <2 x i64> %54, <2 x i64>* %55, align 8, !tbaa !17
  br label %56

; <label>:56:                                     ; preds = %10, %51
  %57 = phi i64 [ %13, %10 ], [ %34, %51 ]
  %58 = phi i64 [ %12, %10 ], [ %35, %51 ]
  %59 = phi %struct.TValue** [ %11, %10 ], [ %33, %51 ]
  %60 = bitcast %struct.TValue** %59 to i8**
  %61 = load i8*, i8** %60, align 8, !tbaa !14
  %62 = shl nuw nsw i64 %58, 4
  %63 = shl nuw nsw i64 %57, 4
  %64 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %61, i64 %62, i64 %63) #8
  %65 = icmp eq i8* %64, null
  %66 = icmp ne i32 %2, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %69, !prof !12

; <label>:68:                                     ; preds = %56
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %6) #7
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #9
  unreachable

; <label>:69:                                     ; preds = %56
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %71 = load i8, i8* %70, align 1, !tbaa !15
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %73 = bitcast %union.Node** %72 to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8, !tbaa !17
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 4
  %76 = load i8, i8* %75, align 1, !tbaa !15
  store i8 %76, i8* %70, align 1, !tbaa !15
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 7
  %78 = bitcast %union.Node** %77 to <2 x i64>*
  %79 = load <2 x i64>, <2 x i64>* %78, align 8, !tbaa !17
  %80 = bitcast %union.Node** %72 to <2 x i64>*
  store <2 x i64> %79, <2 x i64>* %80, align 8, !tbaa !17
  store i8 %71, i8* %75, align 1, !tbaa !15
  %81 = bitcast %union.Node** %77 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %81, align 8, !tbaa !17
  store i8* %64, i8** %60, align 8, !tbaa !14
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  store i32 %2, i32* %82, align 4, !tbaa !8
  %83 = extractelement <2 x i64> %74, i32 0
  %84 = inttoptr i64 %83 to %union.Node*
  %85 = bitcast i8* %64 to %struct.TValue*
  br label %86

; <label>:86:                                     ; preds = %89, %69
  %87 = phi i32 [ %8, %69 ], [ %92, %89 ]
  %88 = icmp ult i32 %87, %2
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %86
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i64 %90, i32 1
  store i8 16, i8* %91, align 8, !tbaa !9
  %92 = add i32 %87, 1
  br label %86

; <label>:93:                                     ; preds = %86
  %94 = zext i8 %71 to i32
  %95 = shl i32 1, %94
  %96 = bitcast %struct.TValue* %5 to i8*
  %97 = bitcast %struct.TValue* %5 to i64*
  %98 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %99 = sext i32 %95 to i64
  br label %100

; <label>:100:                                    ; preds = %121, %93
  %101 = phi i64 [ %122, %121 ], [ 0, %93 ]
  %102 = icmp slt i64 %101, %99
  br i1 %102, label %103, label %123

; <label>:103:                                    ; preds = %100
  %104 = getelementptr inbounds %union.Node, %union.Node* %84, i64 %101, i32 0, i32 1
  %105 = load i8, i8* %104, align 8, !tbaa !11
  %106 = and i8 %105, 15
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %121, label %108

; <label>:108:                                    ; preds = %103
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %96) #10
  %109 = getelementptr inbounds %union.Node, %union.Node* %84, i64 %101, i32 0, i32 4
  %110 = bitcast %union.Value* %109 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %97, align 8
  %112 = getelementptr inbounds %union.Node, %union.Node* %84, i64 %101, i32 0, i32 2
  %113 = load i8, i8* %112, align 1, !tbaa !11
  store i8 %113, i8* %98, align 8, !tbaa !9
  %114 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* nonnull %5) #8
  %115 = getelementptr inbounds %union.Node, %union.Node* %84, i64 %101, i32 0, i32 0
  %116 = bitcast %union.Value* %115 to i64*
  %117 = bitcast %struct.TValue* %114 to i64*
  %118 = load i64, i64* %116, align 8
  store i64 %118, i64* %117, align 8
  %119 = load i8, i8* %104, align 8, !tbaa !9
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %114, i64 0, i32 1
  store i8 %119, i8* %120, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %96) #10
  br label %121

; <label>:121:                                    ; preds = %108, %103
  %122 = add nuw nsw i64 %101, 1
  br label %100

; <label>:123:                                    ; preds = %100
  call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc i32 @setlimittosize(%struct.Table* nocapture) unnamed_addr #3 {
  %2 = tail call i32 @luaH_realasize(%struct.Table* %0) #7
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  store i32 %2, i32* %3, align 4, !tbaa !8
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %6 = and i8 %5, 127
  store i8 %6, i8* %4, align 1, !tbaa !2
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %21 = sext i32 %12 to i64
  br label %22

; <label>:22:                                     ; preds = %25, %15
  %23 = phi i64 [ %30, %25 ], [ 0, %15 ]
  %24 = icmp slt i64 %23, %21
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %22
  %26 = load %union.Node*, %union.Node** %19, align 8, !tbaa !13
  %27 = getelementptr inbounds %union.Node, %union.Node* %26, i64 %23, i32 0, i32 3
  store i32 0, i32* %27, align 4, !tbaa !11
  %28 = getelementptr inbounds %union.Node, %union.Node* %26, i64 %23, i32 0, i32 2
  store i8 0, i8* %28, align 1, !tbaa !11
  %29 = getelementptr inbounds %union.Node, %union.Node* %26, i64 %23, i32 0, i32 1
  store i8 16, i8* %29, align 8, !tbaa !11
  %30 = add nuw nsw i64 %23, 1
  br label %22

; <label>:31:                                     ; preds = %22
  %32 = trunc i32 %9 to i8
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  store i8 %32, i8* %33, align 1, !tbaa !15
  %34 = load %union.Node*, %union.Node** %19, align 8, !tbaa !13
  %35 = getelementptr inbounds %union.Node, %union.Node* %34, i64 %16
  br label %36

; <label>:36:                                     ; preds = %31, %5
  %37 = phi %union.Node* [ %35, %31 ], [ null, %5 ]
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  store %union.Node* %37, %union.Node** %38, align 8, !tbaa !16
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #2 {
  tail call fastcc void @freehash(%struct.lua_State* %0, %struct.Table* %1) #7
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %4 = bitcast %struct.TValue** %3 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !14
  %6 = tail call i32 @luaH_realasize(%struct.Table* %1) #7
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %5, i64 %8) #8
  %9 = bitcast %struct.Table* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %9, i64 56) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue* nocapture readonly) local_unnamed_addr #2 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.TValue, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #10
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !9
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !12

; <label>:12:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #9
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = icmp eq i8 %9, 19
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %13
  %16 = bitcast %struct.TValue* %2 to double*
  %17 = load double, double* %16, align 8, !tbaa !11
  %18 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10
  %19 = call i32 @luaV_flttointeger(double %17, i64* nonnull %6, i32 0) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %15
  %22 = load i64, i64* %6, align 8, !tbaa !20
  %23 = bitcast %struct.TValue* %5 to i64*
  store i64 %22, i64* %23, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %24, align 8, !tbaa !9
  br label %28

; <label>:25:                                     ; preds = %15
  %26 = fcmp uno double %17, 0.000000e+00
  br i1 %26, label %27, label %28, !prof !12

; <label>:27:                                     ; preds = %25
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

; <label>:28:                                     ; preds = %25, %21
  %29 = phi %struct.TValue* [ %5, %21 ], [ %2, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10
  br label %30

; <label>:30:                                     ; preds = %13, %28
  %31 = phi %struct.TValue* [ %29, %28 ], [ %2, %13 ]
  %32 = call fastcc %union.Node* @mainpositionTV(%struct.Table* %1, %struct.TValue* nonnull %31) #7
  %33 = getelementptr inbounds %union.Node, %union.Node* %32, i64 0, i32 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !11
  %35 = and i8 %34, 15
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %38 = load %union.Node*, %union.Node** %37, align 8, !tbaa !16
  %39 = icmp eq %union.Node* %38, null
  br i1 %36, label %40, label %41

; <label>:40:                                     ; preds = %30
  br i1 %39, label %53, label %229

; <label>:41:                                     ; preds = %30
  br i1 %39, label %53, label %42

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %44 = load %union.Node*, %union.Node** %43, align 8, !tbaa !13
  br label %45

; <label>:45:                                     ; preds = %48, %42
  %46 = phi %union.Node* [ %49, %48 ], [ %38, %42 ]
  %47 = icmp ugt %union.Node* %46, %44
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %union.Node, %union.Node* %46, i64 -1
  store %union.Node* %49, %union.Node** %37, align 8, !tbaa !16
  %50 = getelementptr inbounds %union.Node, %union.Node* %46, i64 -1, i32 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %167, label %45

; <label>:53:                                     ; preds = %45, %40, %41
  %54 = bitcast [32 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %54) #10
  br label %55

; <label>:55:                                     ; preds = %58, %53
  %56 = phi i64 [ %60, %58 ], [ 0, %53 ]
  %57 = icmp eq i64 %56, 32
  br i1 %57, label %61, label %58

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %56
  store i32 0, i32* %59, align 4, !tbaa !22
  %60 = add nuw nsw i64 %56, 1
  br label %55

; <label>:61:                                     ; preds = %55
  %62 = call fastcc i32 @setlimittosize(%struct.Table* %1) #8
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  br label %67

; <label>:67:                                     ; preds = %94, %61
  %68 = phi i64 [ %99, %94 ], [ 0, %61 ]
  %69 = phi i32 [ %100, %94 ], [ 1, %61 ]
  %70 = phi i32 [ %98, %94 ], [ 0, %61 ]
  %71 = phi i32 [ %80, %94 ], [ 1, %61 ]
  %72 = icmp ult i64 %68, 32
  br i1 %72, label %73, label %101

; <label>:73:                                     ; preds = %67
  %74 = icmp ugt i32 %69, %65
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %73
  %76 = icmp ugt i32 %71, %65
  br i1 %76, label %101, label %77

; <label>:77:                                     ; preds = %75, %73
  %78 = phi i32 [ %65, %75 ], [ %69, %73 ]
  br label %79

; <label>:79:                                     ; preds = %83, %77
  %80 = phi i32 [ %71, %77 ], [ %93, %83 ]
  %81 = phi i32 [ 0, %77 ], [ %92, %83 ]
  %82 = icmp ugt i32 %80, %78
  br i1 %82, label %94, label %83

; <label>:83:                                     ; preds = %79
  %84 = load %struct.TValue*, %struct.TValue** %66, align 8, !tbaa !14
  %85 = add i32 %80, -1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i64 %86, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !9
  %89 = and i8 %88, 15
  %90 = icmp ne i8 %89, 0
  %91 = zext i1 %90 to i32
  %92 = add i32 %81, %91
  %93 = add i32 %80, 1
  br label %79

; <label>:94:                                     ; preds = %79
  %95 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %68
  %96 = load i32, i32* %95, align 4, !tbaa !22
  %97 = add i32 %96, %81
  store i32 %97, i32* %95, align 4, !tbaa !22
  %98 = add i32 %81, %70
  %99 = add nuw nsw i64 %68, 1
  %100 = shl i32 %69, 1
  br label %67

; <label>:101:                                    ; preds = %75, %67
  %102 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %103 = load i8, i8* %102, align 1, !tbaa !15
  %104 = zext i8 %103 to i32
  %105 = shl i32 1, %104
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %107 = sext i32 %105 to i64
  br label %108

; <label>:108:                                    ; preds = %133, %101
  %109 = phi i64 [ %114, %133 ], [ %107, %101 ]
  %110 = phi i32 [ %134, %133 ], [ 0, %101 ]
  %111 = phi i32 [ %135, %133 ], [ 0, %101 ]
  br label %112

; <label>:112:                                    ; preds = %108, %117
  %113 = phi i64 [ %114, %117 ], [ %109, %108 ]
  %114 = add nsw i64 %113, -1
  %115 = trunc i64 %113 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %117

; <label>:117:                                    ; preds = %112
  %118 = load %union.Node*, %union.Node** %106, align 8, !tbaa !13
  %119 = getelementptr inbounds %union.Node, %union.Node* %118, i64 %114, i32 0, i32 1
  %120 = load i8, i8* %119, align 8, !tbaa !11
  %121 = and i8 %120, 15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %112, label %123

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds %union.Node, %union.Node* %118, i64 %114, i32 0, i32 2
  %125 = load i8, i8* %124, align 1, !tbaa !11
  %126 = icmp eq i8 %125, 35
  br i1 %126, label %127, label %133

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds %union.Node, %union.Node* %118, i64 %114, i32 0, i32 4
  %129 = bitcast %union.Value* %128 to i64*
  %130 = load i64, i64* %129, align 8, !tbaa !11
  %131 = call fastcc i32 @countint(i64 %130, i32* nonnull %63) #8
  %132 = add nsw i32 %131, %110
  br label %133

; <label>:133:                                    ; preds = %127, %123
  %134 = phi i32 [ %132, %127 ], [ %110, %123 ]
  %135 = add nuw nsw i32 %111, 1
  br label %108

; <label>:136:                                    ; preds = %112
  %137 = add i32 %110, %70
  %138 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 1
  %139 = load i8, i8* %138, align 8, !tbaa !9
  %140 = icmp eq i8 %139, 35
  br i1 %140, label %141, label %146

; <label>:141:                                    ; preds = %136
  %142 = bitcast %struct.TValue* %31 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !11
  %144 = call fastcc i32 @countint(i64 %143, i32* nonnull %63) #8
  %145 = add i32 %144, %137
  br label %146

; <label>:146:                                    ; preds = %141, %136
  %147 = phi i32 [ %145, %141 ], [ %137, %136 ]
  br label %148

; <label>:148:                                    ; preds = %158, %146
  %149 = phi i64 [ %165, %158 ], [ 0, %146 ]
  %150 = phi i32 [ %166, %158 ], [ 1, %146 ]
  %151 = phi i32 [ %161, %158 ], [ 0, %146 ]
  %152 = phi i32 [ %163, %158 ], [ 0, %146 ]
  %153 = phi i32 [ %164, %158 ], [ 0, %146 ]
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %224, label %155

; <label>:155:                                    ; preds = %148
  %156 = lshr i32 %150, 1
  %157 = icmp ugt i32 %147, %156
  br i1 %157, label %158, label %224

; <label>:158:                                    ; preds = %155
  %159 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %149
  %160 = load i32, i32* %159, align 4, !tbaa !22
  %161 = add i32 %160, %151
  %162 = icmp ugt i32 %161, %156
  %163 = select i1 %162, i32 %161, i32 %152
  %164 = select i1 %162, i32 %150, i32 %153
  %165 = add nuw nsw i64 %149, 1
  %166 = shl i32 %150, 1
  br label %148

; <label>:167:                                    ; preds = %48
  %168 = getelementptr inbounds %union.Node, %union.Node* %32, i64 0, i32 0, i32 2
  %169 = load i8, i8* %168, align 1, !tbaa !11
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds %union.Node, %union.Node* %32, i64 0, i32 0, i32 4
  %172 = call fastcc %union.Node* @mainposition(%struct.Table* nonnull %1, i32 %170, %union.Value* nonnull %171) #7
  %173 = icmp eq %union.Node* %172, %32
  br i1 %173, label %203, label %174

; <label>:174:                                    ; preds = %167
  br label %175

; <label>:175:                                    ; preds = %174, %175
  %176 = phi %union.Node* [ %180, %175 ], [ %172, %174 ]
  %177 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 3
  %178 = load i32, i32* %177, align 4, !tbaa !11
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %union.Node, %union.Node* %176, i64 %179
  %181 = icmp eq %union.Node* %180, %32
  br i1 %181, label %182, label %175

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 3
  %184 = ptrtoint %union.Node* %49 to i64
  %185 = ptrtoint %union.Node* %176 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 24
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %183, align 4, !tbaa !11
  %189 = bitcast %union.Node* %49 to i8*
  %190 = bitcast %union.Node* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %189, i8* %190, i64 24, i32 8, i1 false), !tbaa.struct !23
  %191 = getelementptr inbounds %union.Node, %union.Node* %32, i64 0, i32 0, i32 3
  %192 = load i32, i32* %191, align 4, !tbaa !11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %202, label %194

; <label>:194:                                    ; preds = %182
  %195 = ptrtoint %union.Node* %32 to i64
  %196 = sub i64 %195, %184
  %197 = sdiv exact i64 %196, 24
  %198 = trunc i64 %197 to i32
  %199 = getelementptr inbounds %union.Node, %union.Node* %46, i64 -1, i32 0, i32 3
  %200 = load i32, i32* %199, align 4, !tbaa !11
  %201 = add nsw i32 %200, %198
  store i32 %201, i32* %199, align 4, !tbaa !11
  store i32 0, i32* %191, align 4, !tbaa !11
  br label %202

; <label>:202:                                    ; preds = %182, %194
  store i8 16, i8* %33, align 8, !tbaa !11
  br label %229

; <label>:203:                                    ; preds = %167
  %204 = getelementptr inbounds %union.Node, %union.Node* %32, i64 0, i32 0, i32 3
  %205 = load i32, i32* %204, align 4, !tbaa !11
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

; <label>:207:                                    ; preds = %203
  %208 = ptrtoint %union.Node* %49 to i64
  br label %218

; <label>:209:                                    ; preds = %203
  %210 = sext i32 %205 to i64
  %211 = getelementptr inbounds %union.Node, %union.Node* %32, i64 %210
  %212 = ptrtoint %union.Node* %211 to i64
  %213 = ptrtoint %union.Node* %49 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 24
  %216 = trunc i64 %215 to i32
  %217 = getelementptr inbounds %union.Node, %union.Node* %46, i64 -1, i32 0, i32 3
  store i32 %216, i32* %217, align 4, !tbaa !11
  br label %218

; <label>:218:                                    ; preds = %207, %209
  %219 = phi i64 [ %208, %207 ], [ %213, %209 ]
  %220 = ptrtoint %union.Node* %32 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 24
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %204, align 4, !tbaa !11
  br label %229

; <label>:224:                                    ; preds = %155, %148
  %225 = add nuw i32 %111, 1
  %226 = add i32 %225, %70
  %227 = sub i32 %226, %152
  call void @luaH_resize(%struct.lua_State* %0, %struct.Table* %1, i32 %153, i32 %227) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %54) #10
  %228 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %1, %struct.TValue* %31) #7
  br label %257

; <label>:229:                                    ; preds = %202, %218, %40
  %230 = phi %union.Node* [ %32, %40 ], [ %49, %218 ], [ %32, %202 ]
  %231 = getelementptr inbounds %union.Node, %union.Node* %230, i64 0, i32 0, i32 4
  %232 = bitcast %struct.TValue* %31 to i64*
  %233 = bitcast %union.Value* %231 to i64*
  %234 = load i64, i64* %232, align 8
  store i64 %234, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 1
  %236 = load i8, i8* %235, align 8, !tbaa !9
  %237 = getelementptr inbounds %union.Node, %union.Node* %230, i64 0, i32 0, i32 2
  store i8 %236, i8* %237, align 1, !tbaa !11
  %238 = load i8, i8* %235, align 8, !tbaa !9
  %239 = and i8 %238, 64
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %255, label %241

; <label>:241:                                    ; preds = %229
  %242 = bitcast %struct.Table* %1 to %struct.GCObject*
  %243 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %244 = load i8, i8* %243, align 1, !tbaa !11
  %245 = and i8 %244, 32
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %255, label %247

; <label>:247:                                    ; preds = %241
  %248 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 0, i32 0
  %249 = load %struct.GCObject*, %struct.GCObject** %248, align 8, !tbaa !11
  %250 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %249, i64 0, i32 2
  %251 = load i8, i8* %250, align 1, !tbaa !26
  %252 = and i8 %251, 24
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %255, label %254

; <label>:254:                                    ; preds = %247
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %242) #8
  br label %255

; <label>:255:                                    ; preds = %247, %241, %229, %254
  %256 = bitcast %union.Node* %230 to %struct.TValue*
  br label %257

; <label>:257:                                    ; preds = %224, %255
  %258 = phi %struct.TValue* [ %256, %255 ], [ %228, %224 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #10
  ret %struct.TValue* %258
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %union.Node* @mainpositionTV(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !9
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0
  %7 = tail call fastcc %union.Node* @mainposition(%struct.Table* %0, i32 %5, %union.Value* %6) #7
  ret %union.Node* %7
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #4

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden %struct.TValue* @luaH_getint(%struct.Table* nocapture, i64) local_unnamed_addr #3 {
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

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.TValue* @getgeneric(%struct.Table* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = tail call fastcc %union.Node* @mainpositionTV(%struct.Table* %0, %struct.TValue* %1) #7
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %6 = bitcast %struct.TValue* %1 to i64*
  %7 = bitcast %struct.TValue* %1 to double*
  %8 = bitcast %struct.TValue* %1 to i32*
  %9 = bitcast %struct.TValue* %1 to i8**
  %10 = bitcast %struct.TValue* %1 to i32 (%struct.lua_State*)**
  %11 = bitcast %struct.TValue* %1 to %struct.TString**
  br label %12

; <label>:12:                                     ; preds = %76, %2
  %13 = phi %union.Node* [ %3, %2 ], [ %78, %76 ]
  %14 = load i8, i8* %4, align 8, !tbaa !9
  %15 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 2
  %16 = load i8, i8* %15, align 1, !tbaa !11
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %72

; <label>:18:                                     ; preds = %12
  %19 = trunc i8 %14 to i6
  switch i6 %19, label %61 [
    i6 0, label %70
    i6 -29, label %20
    i6 19, label %27
    i6 1, label %34
    i6 2, label %41
    i6 -26, label %48
    i6 -28, label %55
  ]

; <label>:20:                                     ; preds = %18
  %21 = load i64, i64* %6, align 8, !tbaa !11
  %22 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4
  %23 = bitcast %union.Value* %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !11
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  br label %67

; <label>:27:                                     ; preds = %18
  %28 = load double, double* %7, align 8, !tbaa !11
  %29 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4
  %30 = bitcast %union.Value* %29 to double*
  %31 = load double, double* %30, align 8, !tbaa !11
  %32 = fcmp oeq double %28, %31
  %33 = zext i1 %32 to i32
  br label %67

; <label>:34:                                     ; preds = %18
  %35 = load i32, i32* %8, align 8, !tbaa !11
  %36 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4
  %37 = bitcast %union.Value* %36 to i32*
  %38 = load i32, i32* %37, align 8, !tbaa !11
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  br label %67

; <label>:41:                                     ; preds = %18
  %42 = load i8*, i8** %9, align 8, !tbaa !11
  %43 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4
  %44 = bitcast %union.Value* %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !11
  %46 = icmp eq i8* %42, %45
  %47 = zext i1 %46 to i32
  br label %67

; <label>:48:                                     ; preds = %18
  %49 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %10, align 8, !tbaa !11
  %50 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4
  %51 = bitcast %union.Value* %50 to i32 (%struct.lua_State*)**
  %52 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %51, align 8, !tbaa !11
  %53 = icmp eq i32 (%struct.lua_State*)* %49, %52
  %54 = zext i1 %53 to i32
  br label %67

; <label>:55:                                     ; preds = %18
  %56 = load %struct.TString*, %struct.TString** %11, align 8, !tbaa !11
  %57 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4, i32 0
  %58 = bitcast %struct.GCObject** %57 to %struct.TString**
  %59 = load %struct.TString*, %struct.TString** %58, align 8, !tbaa !11
  %60 = tail call i32 @luaS_eqlngstr(%struct.TString* %56, %struct.TString* %59) #8
  br label %67

; <label>:61:                                     ; preds = %18
  %62 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !11
  %63 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 4, i32 0
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8, !tbaa !11
  %65 = icmp eq %struct.GCObject* %62, %64
  %66 = zext i1 %65 to i32
  br label %67

; <label>:67:                                     ; preds = %20, %27, %34, %41, %48, %55, %61
  %68 = phi i32 [ %66, %61 ], [ %60, %55 ], [ %54, %48 ], [ %47, %41 ], [ %40, %34 ], [ %33, %27 ], [ %26, %20 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

; <label>:70:                                     ; preds = %18, %67
  %71 = bitcast %union.Node* %13 to %struct.TValue*
  br label %79

; <label>:72:                                     ; preds = %12, %67
  %73 = getelementptr inbounds %union.Node, %union.Node* %13, i64 0, i32 0, i32 3
  %74 = load i32, i32* %73, align 4, !tbaa !11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

; <label>:76:                                     ; preds = %72
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds %union.Node, %union.Node* %13, i64 %77
  br label %12

; <label>:79:                                     ; preds = %72, %70
  %80 = phi %struct.TValue* [ %71, %70 ], [ @absentkey, %72 ]
  ret %struct.TValue* %80
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden i64 @luaH_getn(%struct.Table* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %54, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !14
  %8 = add i32 %3, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %9, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !9
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %54

; <label>:14:                                     ; preds = %5
  %15 = icmp ugt i32 %3, 1
  br i1 %15, label %16, label %38

; <label>:16:                                     ; preds = %14
  %17 = add i32 %3, -2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 %18, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !9
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = icmp slt i8 %25, 0
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %23
  %28 = and i32 %8, %3
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %8, %17
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %29, %31
  br i1 %32, label %134, label %36

; <label>:33:                                     ; preds = %23
  %34 = and i32 %8, %17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %134, label %36

; <label>:36:                                     ; preds = %27, %33
  store i32 %8, i32* %2, align 4, !tbaa !8
  %37 = or i8 %25, -128
  store i8 %37, i8* %24, align 1, !tbaa !2
  br label %134

; <label>:38:                                     ; preds = %16, %14
  %39 = tail call fastcc i32 @binsearch(%struct.TValue* %7, i32 0, i32 %3) #7
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !2
  %42 = icmp slt i8 %41, 0
  %43 = and i32 %8, %3
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %44, %42
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %38
  %47 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0) #7
  %48 = lshr i32 %47, 1
  %49 = icmp ugt i32 %39, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %46
  store i32 %39, i32* %2, align 4, !tbaa !8
  %51 = or i8 %41, -128
  store i8 %51, i8* %40, align 1, !tbaa !2
  br label %52

; <label>:52:                                     ; preds = %38, %50, %46
  %53 = zext i32 %39 to i64
  br label %134

; <label>:54:                                     ; preds = %1, %5
  %55 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 2
  %56 = load i8, i8* %55, align 1, !tbaa !2
  %57 = icmp slt i8 %56, 0
  br i1 %57, label %58, label %81

; <label>:58:                                     ; preds = %54
  %59 = add i32 %3, -1
  %60 = and i32 %59, %3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %64 = load %struct.TValue*, %struct.TValue** %63, align 8, !tbaa !14
  %65 = zext i32 %3 to i64
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i64 %65, i32 1
  %67 = load i8, i8* %66, align 8, !tbaa !9
  %68 = and i8 %67, 15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %134, label %70

; <label>:70:                                     ; preds = %62
  %71 = tail call i32 @luaH_realasize(%struct.Table* nonnull %0) #7
  %72 = add i32 %71, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i64 %73, i32 1
  %75 = load i8, i8* %74, align 8, !tbaa !9
  %76 = and i8 %75, 15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %70
  %79 = tail call fastcc i32 @binsearch(%struct.TValue* nonnull %64, i32 %3, i32 %71) #7
  store i32 %79, i32* %2, align 4, !tbaa !8
  %80 = zext i32 %79 to i64
  br label %134

; <label>:81:                                     ; preds = %70, %58, %54
  %82 = phi i32 [ %3, %58 ], [ %71, %70 ], [ %3, %54 ]
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 8
  %84 = load %union.Node*, %union.Node** %83, align 8, !tbaa !16
  %85 = icmp eq %union.Node* %84, null
  br i1 %85, label %94, label %86

; <label>:86:                                     ; preds = %81
  %87 = add i32 %82, 1
  %88 = zext i32 %87 to i64
  %89 = tail call %struct.TValue* @luaH_getint(%struct.Table* nonnull %0, i64 %88) #7
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %89, i64 0, i32 1
  %91 = load i8, i8* %90, align 8, !tbaa !9
  %92 = and i8 %91, 15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %86, %81
  %95 = zext i32 %82 to i64
  br label %134

; <label>:96:                                     ; preds = %86
  %97 = zext i32 %82 to i64
  %98 = icmp eq i32 %82, 0
  %99 = zext i1 %98 to i64
  %100 = add nuw nsw i64 %99, %97
  br label %101

; <label>:101:                                    ; preds = %104, %96
  %102 = phi i64 [ %100, %96 ], [ %105, %104 ]
  %103 = icmp ult i64 %102, 4611686018427387904
  br i1 %103, label %104, label %111

; <label>:104:                                    ; preds = %101
  %105 = shl i64 %102, 1
  %106 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %105) #8
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %106, i64 0, i32 1
  %108 = load i8, i8* %107, align 8, !tbaa !9
  %109 = and i8 %108, 15
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %117, label %101

; <label>:111:                                    ; preds = %101
  %112 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 9223372036854775807) #8
  %113 = getelementptr inbounds %struct.TValue, %struct.TValue* %112, i64 0, i32 1
  %114 = load i8, i8* %113, align 8, !tbaa !9
  %115 = and i8 %114, 15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %134

; <label>:117:                                    ; preds = %104, %111
  %118 = phi i64 [ 9223372036854775807, %111 ], [ %105, %104 ]
  br label %119

; <label>:119:                                    ; preds = %117, %124
  %120 = phi i64 [ %132, %124 ], [ %118, %117 ]
  %121 = phi i64 [ %133, %124 ], [ %102, %117 ]
  %122 = sub i64 %120, %121
  %123 = icmp ugt i64 %122, 1
  br i1 %123, label %124, label %134

; <label>:124:                                    ; preds = %119
  %125 = add i64 %121, %120
  %126 = lshr i64 %125, 1
  %127 = tail call %struct.TValue* @luaH_getint(%struct.Table* %0, i64 %126) #8
  %128 = getelementptr inbounds %struct.TValue, %struct.TValue* %127, i64 0, i32 1
  %129 = load i8, i8* %128, align 8, !tbaa !9
  %130 = and i8 %129, 15
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i64 %126, i64 %120
  %133 = select i1 %131, i64 %121, i64 %126
  br label %119

; <label>:134:                                    ; preds = %119, %111, %62, %33, %36, %27, %94, %78, %52
  %135 = phi i64 [ %53, %52 ], [ %95, %94 ], [ %80, %78 ], [ %9, %27 ], [ %9, %36 ], [ %9, %33 ], [ %65, %62 ], [ 9223372036854775807, %111 ], [ %121, %119 ]
  ret i64 %135
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @binsearch(%struct.TValue* nocapture readonly, i32, i32) unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %9, %3
  %5 = phi i32 [ %2, %3 ], [ %18, %9 ]
  %6 = phi i32 [ %1, %3 ], [ %19, %9 ]
  %7 = sub i32 %5, %6
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %4
  %10 = add i32 %6, %5
  %11 = lshr i32 %10, 1
  %12 = add nsw i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 %13, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !9
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 %11, i32 %5
  %19 = select i1 %17, i32 %6, i32 %11
  br label %4

; <label>:20:                                     ; preds = %4
  ret i32 %6
}

; Function Attrs: minsize optsize
declare hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @countint(i64, i32* nocapture) unnamed_addr #2 {
  %3 = add i64 %0, -1
  %4 = icmp ugt i64 %3, 2147483647
  %5 = trunc i64 %0 to i32
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %4
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @luaO_ceillog2(i32 %5) #8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !22
  %13 = add i32 %12, 1
  store i32 %13, i32* %11, align 4, !tbaa !22
  br label %14

; <label>:14:                                     ; preds = %2, %8
  %15 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: minsize optsize
declare hidden i32 @luaS_hashlongstr(%struct.TString*) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize
declare double @frexp(double, i32* nocapture) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #4

attributes #0 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize optsize }
attributes #8 = { minsize nounwind optsize }
attributes #9 = { minsize noreturn nounwind optsize }
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
