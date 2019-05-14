; ModuleID = 'ldebug.c'
source_filename = "ldebug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.anon = type { i32*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.anon.2 = type { i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"(temporary)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(C temporary)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"attempt to %s a %s value%s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"bad 'for' %s (number expected, got %s)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"number%s has no integer representation\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [84 x i8], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"(vararg)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"for iterator\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"integer index\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c" (%s '%s')\00", align 1

; Function Attrs: nounwind readonly uwtable
define hidden i32 @luaG_getfuncline(%struct.Proto* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %5 = icmp eq i8* %4, null
  br i1 %5, label %142, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %8 = load i32, i32* %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %12 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 0, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !10
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10, %6
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  br label %46

; <label>:18:                                     ; preds = %10
  %19 = add nsw i32 %8, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %20, i32 0
  %22 = load i32, i32* %21, align 4, !tbaa !10
  %23 = icmp sgt i32 %22, %1
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %18
  %25 = icmp eq i32 %8, 2
  br i1 %25, label %40, label %26

; <label>:26:                                     ; preds = %24
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i32 [ %37, %27 ], [ %19, %26 ]
  %29 = phi i32 [ %36, %27 ], [ 0, %26 ]
  %30 = add i32 %29, %28
  %31 = lshr i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %32, i32 0
  %34 = load i32, i32* %33, align 4, !tbaa !10
  %35 = icmp sgt i32 %34, %1
  %36 = select i1 %35, i32 %29, i32 %31
  %37 = select i1 %35, i32 %31, i32 %28
  %38 = add i32 %37, -1
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %27, label %40

; <label>:40:                                     ; preds = %27, %24, %18
  %41 = phi i32 [ %19, %18 ], [ 0, %24 ], [ %36, %27 ]
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %42, i32 0
  %44 = load i32, i32* %43, align 4, !tbaa !10
  %45 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %42, i32 1
  br label %46

; <label>:46:                                     ; preds = %16, %40
  %47 = phi i32 [ -1, %16 ], [ %44, %40 ]
  %48 = phi i32* [ %17, %16 ], [ %45, %40 ]
  %49 = load i32, i32* %48, align 4, !tbaa !12
  %50 = icmp slt i32 %47, %1
  br i1 %50, label %51, label %142

; <label>:51:                                     ; preds = %46
  %52 = sext i32 %47 to i64
  %53 = sext i32 %1 to i64
  %54 = sub nsw i64 %53, %52
  %55 = icmp ult i64 %54, 8
  br i1 %55, label %130, label %56

; <label>:56:                                     ; preds = %51
  %57 = and i64 %54, -8
  %58 = add nsw i64 %57, %52
  %59 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %49, i32 0
  %60 = add nsw i64 %57, -8
  %61 = lshr exact i64 %60, 3
  %62 = add nuw nsw i64 %61, 1
  %63 = and i64 %62, 1
  %64 = icmp eq i64 %60, 0
  br i1 %64, label %100, label %65

; <label>:65:                                     ; preds = %56
  %66 = sub nsw i64 %62, %63
  br label %67

; <label>:67:                                     ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %97, %67 ]
  %69 = phi <4 x i32> [ %59, %65 ], [ %95, %67 ]
  %70 = phi <4 x i32> [ zeroinitializer, %65 ], [ %96, %67 ]
  %71 = phi i64 [ %66, %65 ], [ %98, %67 ]
  %72 = add i64 %68, %52
  %73 = add nsw i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %4, i64 %73
  %75 = bitcast i8* %74 to <4 x i8>*
  %76 = load <4 x i8>, <4 x i8>* %75, align 1, !tbaa !13
  %77 = getelementptr i8, i8* %74, i64 4
  %78 = bitcast i8* %77 to <4 x i8>*
  %79 = load <4 x i8>, <4 x i8>* %78, align 1, !tbaa !13
  %80 = sext <4 x i8> %76 to <4 x i32>
  %81 = sext <4 x i8> %79 to <4 x i32>
  %82 = add nsw <4 x i32> %69, %80
  %83 = add nsw <4 x i32> %70, %81
  %84 = or i64 %68, 8
  %85 = add i64 %84, %52
  %86 = add nsw i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %4, i64 %86
  %88 = bitcast i8* %87 to <4 x i8>*
  %89 = load <4 x i8>, <4 x i8>* %88, align 1, !tbaa !13
  %90 = getelementptr i8, i8* %87, i64 4
  %91 = bitcast i8* %90 to <4 x i8>*
  %92 = load <4 x i8>, <4 x i8>* %91, align 1, !tbaa !13
  %93 = sext <4 x i8> %89 to <4 x i32>
  %94 = sext <4 x i8> %92 to <4 x i32>
  %95 = add nsw <4 x i32> %82, %93
  %96 = add nsw <4 x i32> %83, %94
  %97 = add i64 %68, 16
  %98 = add i64 %71, -2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %67, !llvm.loop !14

; <label>:100:                                    ; preds = %67, %56
  %101 = phi <4 x i32> [ undef, %56 ], [ %95, %67 ]
  %102 = phi <4 x i32> [ undef, %56 ], [ %96, %67 ]
  %103 = phi i64 [ 0, %56 ], [ %97, %67 ]
  %104 = phi <4 x i32> [ %59, %56 ], [ %95, %67 ]
  %105 = phi <4 x i32> [ zeroinitializer, %56 ], [ %96, %67 ]
  %106 = icmp eq i64 %63, 0
  br i1 %106, label %120, label %107

; <label>:107:                                    ; preds = %100
  %108 = add i64 %103, %52
  %109 = add nsw i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %4, i64 %109
  %111 = getelementptr i8, i8* %110, i64 4
  %112 = bitcast i8* %111 to <4 x i8>*
  %113 = load <4 x i8>, <4 x i8>* %112, align 1, !tbaa !13
  %114 = sext <4 x i8> %113 to <4 x i32>
  %115 = add nsw <4 x i32> %105, %114
  %116 = bitcast i8* %110 to <4 x i8>*
  %117 = load <4 x i8>, <4 x i8>* %116, align 1, !tbaa !13
  %118 = sext <4 x i8> %117 to <4 x i32>
  %119 = add nsw <4 x i32> %104, %118
  br label %120

; <label>:120:                                    ; preds = %100, %107
  %121 = phi <4 x i32> [ %101, %100 ], [ %119, %107 ]
  %122 = phi <4 x i32> [ %102, %100 ], [ %115, %107 ]
  %123 = add <4 x i32> %122, %121
  %124 = shufflevector <4 x i32> %123, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %125 = add <4 x i32> %123, %124
  %126 = shufflevector <4 x i32> %125, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %127 = add <4 x i32> %125, %126
  %128 = extractelement <4 x i32> %127, i32 0
  %129 = icmp eq i64 %54, %57
  br i1 %129, label %142, label %130

; <label>:130:                                    ; preds = %120, %51
  %131 = phi i64 [ %52, %51 ], [ %58, %120 ]
  %132 = phi i32 [ %49, %51 ], [ %128, %120 ]
  br label %133

; <label>:133:                                    ; preds = %130, %133
  %134 = phi i64 [ %136, %133 ], [ %131, %130 ]
  %135 = phi i32 [ %140, %133 ], [ %132, %130 ]
  %136 = add nsw i64 %134, 1
  %137 = getelementptr inbounds i8, i8* %4, i64 %136
  %138 = load i8, i8* %137, align 1, !tbaa !13
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %135, %139
  %141 = icmp eq i64 %136, %53
  br i1 %141, label %142, label %133, !llvm.loop !16

; <label>:142:                                    ; preds = %133, %120, %46, %2
  %143 = phi i32 [ -1, %2 ], [ %49, %46 ], [ %128, %120 ], [ %140, %133 ]
  ret i32 %143
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #2 {
  %5 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %1, null
  %6 = icmp eq i32 %2, 0
  %7 = or i1 %5, %6
  %8 = select i1 %7, i32 0, i32 %2
  %9 = select i1 %7, void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)* %1
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 7
  %13 = load i16, i16* %12, align 2, !tbaa !23
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 4
  %18 = bitcast %union.anon* %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %21 = bitcast i32** %20 to i64*
  store i64 %19, i64* %21, align 8, !tbaa !24
  br label %22

; <label>:22:                                     ; preds = %4, %16
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %9, void (%struct.lua_State*, %struct.lua_Debug*)** %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  store i32 %3, i32* %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  store i32 %3, i32* %25, align 4, !tbaa !27
  %26 = and i32 %8, 255
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  store i32 %26, i32* %27, align 8, !tbaa !28
  %28 = icmp eq i32 %8, 0
  %29 = icmp eq %struct.CallInfo* %11, null
  %30 = or i1 %28, %29
  br i1 %30, label %47, label %31

; <label>:31:                                     ; preds = %22
  br label %32

; <label>:32:                                     ; preds = %31, %44
  %33 = phi i16 [ %46, %44 ], [ %13, %31 ]
  %34 = phi %struct.CallInfo* [ %42, %44 ], [ %11, %31 ]
  %35 = and i16 %33, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i64 0, i32 4, i32 0, i32 1
  %39 = bitcast i64* %38 to i32*
  store i32 1, i32* %39, align 8, !tbaa !13
  br label %40

; <label>:40:                                     ; preds = %37, %32
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i64 0, i32 2
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !tbaa !29
  %43 = icmp eq %struct.CallInfo* %42, null
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 7
  %46 = load i16, i16* %45, align 2, !tbaa !23
  br label %32

; <label>:47:                                     ; preds = %40, %22
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %3 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !tbaa !25
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3 = load i32, i32* %2, align 8, !tbaa !28
  ret i32 %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %3 = load i32, i32* %2, align 8, !tbaa !26
  ret i32 %3
}

; Function Attrs: norecurse nounwind uwtable
define i32 @lua_getstack(%struct.lua_State* readonly, i32, %struct.lua_Debug* nocapture) local_unnamed_addr #2 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %30, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !30
  %8 = icmp ne i32 %1, 0
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %10 = icmp ne %struct.CallInfo* %7, %9
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %5
  br label %13

; <label>:13:                                     ; preds = %12, %13
  %14 = phi %struct.CallInfo* [ %18, %13 ], [ %7, %12 ]
  %15 = phi i32 [ %16, %13 ], [ %1, %12 ]
  %16 = add nsw i32 %15, -1
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 2
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !tbaa !30
  %19 = icmp sgt i32 %15, 1
  %20 = icmp ne %struct.CallInfo* %18, %9
  %21 = and i1 %19, %20
  br i1 %21, label %13, label %22

; <label>:22:                                     ; preds = %13, %5
  %23 = phi i32 [ %1, %5 ], [ %16, %13 ]
  %24 = phi %struct.CallInfo* [ %7, %5 ], [ %18, %13 ]
  %25 = icmp ne i32 %23, 0
  %26 = icmp eq %struct.CallInfo* %24, %9
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 16
  store %struct.CallInfo* %24, %struct.CallInfo** %29, align 8, !tbaa !31
  br label %30

; <label>:30:                                     ; preds = %28, %22, %3
  %31 = phi i32 [ 0, %3 ], [ 1, %28 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaG_findlocal(%struct.lua_State* nocapture readonly, %struct.CallInfo* readonly, i32, %union.StackValue**) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !33
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !23
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %49

; <label>:12:                                     ; preds = %4
  %13 = bitcast %union.StackValue* %6 to %struct.LClosure**
  %14 = icmp slt i32 %2, 0
  %15 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i64 0, i32 5
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !13
  br i1 %14, label %18, label %36

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 4
  %20 = load i8, i8* %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %82, label %22

; <label>:22:                                     ; preds = %18
  %23 = sub nsw i32 0, %2
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %25 = bitcast %union.anon* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i64 0, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !13
  %28 = icmp slt i32 %27, %23
  br i1 %28, label %82, label %29

; <label>:29:                                     ; preds = %22
  %30 = sext i32 %27 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 %31
  %33 = xor i32 %2, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 %34
  store %union.StackValue* %35, %union.StackValue** %3, align 8, !tbaa !30
  br label %82

; <label>:36:                                     ; preds = %12
  %37 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %38 = bitcast %union.anon* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 16
  %41 = bitcast i32** %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !35
  %43 = sub i64 %39, %42
  %44 = lshr exact i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %45, -1
  %47 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 %46) #9
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %75

; <label>:49:                                     ; preds = %4, %36
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %51 = load %struct.CallInfo*, %struct.CallInfo** %50, align 8, !tbaa !18
  %52 = icmp eq %struct.CallInfo* %51, %1
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %59

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8, !tbaa !36
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 0
  br label %59

; <label>:59:                                     ; preds = %55, %53
  %60 = phi %union.StackValue** [ %54, %53 ], [ %58, %55 ]
  %61 = bitcast %union.StackValue** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !30
  %63 = ptrtoint %union.StackValue* %7 to i64
  %64 = sub i64 %62, %63
  %65 = ashr exact i64 %64, 4
  %66 = sext i32 %2 to i64
  %67 = icmp sge i64 %65, %66
  %68 = icmp sgt i32 %2, 0
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %59
  %71 = load i16, i16* %8, align 2, !tbaa !23
  %72 = and i16 %71, 2
  %73 = icmp eq i16 %72, 0
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %70, %36
  %76 = phi i8* [ %47, %36 ], [ %74, %70 ]
  %77 = icmp eq %union.StackValue** %3, null
  br i1 %77, label %82, label %78

; <label>:78:                                     ; preds = %75
  %79 = add nsw i32 %2, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %80
  store %union.StackValue* %81, %union.StackValue** %3, align 8, !tbaa !30
  br label %82

; <label>:82:                                     ; preds = %59, %29, %22, %18, %78, %75
  %83 = phi i8* [ %76, %75 ], [ %76, %78 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %29 ], [ null, %22 ], [ null, %18 ], [ null, %59 ]
  ret i8* %83
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i8* @lua_getlocal(%struct.lua_State* nocapture, %struct.lua_Debug* readonly, i32) local_unnamed_addr #4 {
  %4 = icmp eq %struct.lua_Debug* %1, null
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 -1, i32 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !13
  %10 = icmp eq i8 %9, 86
  br i1 %10, label %11, label %109

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 -1, i32 0, i32 0, i32 0
  %13 = bitcast %struct.GCObject** %12 to %struct.LClosure**
  %14 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !13
  %17 = tail call i8* @luaF_getlocalname(%struct.Proto* %16, i32 %2, i32 0) #9
  br label %109

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 0
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8, !tbaa !33
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 1
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 7
  %25 = load i16, i16* %24, align 2, !tbaa !23
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %62

; <label>:28:                                     ; preds = %18
  %29 = bitcast %union.StackValue* %22 to %struct.LClosure**
  %30 = icmp slt i32 %2, 0
  %31 = load %struct.LClosure*, %struct.LClosure** %29, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i64 0, i32 5
  %33 = load %struct.Proto*, %struct.Proto** %32, align 8, !tbaa !13
  br i1 %30, label %34, label %49

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i64 0, i32 4
  %36 = load i8, i8* %35, align 1, !tbaa !34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %109, label %38

; <label>:38:                                     ; preds = %34
  %39 = sub nsw i32 0, %2
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 4
  %41 = bitcast %union.anon* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i64 0, i32 2
  %43 = load i32, i32* %42, align 4, !tbaa !13
  %44 = icmp slt i32 %43, %39
  br i1 %44, label %109, label %45

; <label>:45:                                     ; preds = %38
  %46 = sext i32 %43 to i64
  %47 = sub nsw i64 0, %46
  %48 = xor i32 %2, -1
  br label %91

; <label>:49:                                     ; preds = %28
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 4
  %51 = bitcast %union.anon* %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i64 0, i32 16
  %54 = bitcast i32** %53 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !35
  %56 = sub i64 %52, %55
  %57 = lshr exact i64 %56, 2
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = tail call i8* @luaF_getlocalname(%struct.Proto* %33, i32 %2, i32 %59) #9
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %88

; <label>:62:                                     ; preds = %49, %18
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %64 = load %struct.CallInfo*, %struct.CallInfo** %63, align 8, !tbaa !18
  %65 = icmp eq %struct.CallInfo* %64, %20
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %72

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 3
  %70 = load %struct.CallInfo*, %struct.CallInfo** %69, align 8, !tbaa !36
  %71 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %70, i64 0, i32 0
  br label %72

; <label>:72:                                     ; preds = %68, %66
  %73 = phi %union.StackValue** [ %67, %66 ], [ %71, %68 ]
  %74 = bitcast %union.StackValue** %73 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !30
  %76 = ptrtoint %union.StackValue* %23 to i64
  %77 = sub i64 %75, %76
  %78 = ashr exact i64 %77, 4
  %79 = sext i32 %2 to i64
  %80 = icmp sge i64 %78, %79
  %81 = icmp sgt i32 %2, 0
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %109

; <label>:83:                                     ; preds = %72
  %84 = load i16, i16* %24, align 2, !tbaa !23
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  br label %88

; <label>:88:                                     ; preds = %49, %83
  %89 = phi i8* [ %60, %49 ], [ %87, %83 ]
  %90 = add nsw i32 %2, -1
  br label %91

; <label>:91:                                     ; preds = %88, %45
  %92 = phi i32 [ %90, %88 ], [ %48, %45 ]
  %93 = phi i64 [ 1, %88 ], [ %47, %45 ]
  %94 = phi i8* [ %89, %88 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %45 ]
  %95 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 %93
  %96 = sext i32 %92 to i64
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %95, i64 %96
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %99 = bitcast %union.StackValue** %98 to %struct.TValue**
  %100 = load %struct.TValue*, %struct.TValue** %99, align 8, !tbaa !37
  %101 = bitcast %union.StackValue* %97 to i64*
  %102 = bitcast %struct.TValue* %100 to i64*
  %103 = load i64, i64* %101, align 8
  store i64 %103, i64* %102, align 8
  %104 = getelementptr inbounds %union.StackValue, %union.StackValue* %97, i64 0, i32 0, i32 1
  %105 = load i8, i8* %104, align 8, !tbaa !38
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %100, i64 0, i32 1
  store i8 %105, i8* %106, align 8, !tbaa !38
  %107 = load %union.StackValue*, %union.StackValue** %98, align 8, !tbaa !37
  %108 = getelementptr inbounds %union.StackValue, %union.StackValue* %107, i64 1
  store %union.StackValue* %108, %union.StackValue** %98, align 8, !tbaa !37
  br label %109

; <label>:109:                                    ; preds = %72, %34, %38, %91, %5, %11
  %110 = phi i8* [ %17, %11 ], [ null, %5 ], [ %94, %91 ], [ null, %38 ], [ null, %34 ], [ null, %72 ]
  ret i8* %110
}

; Function Attrs: nounwind uwtable
define i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 1
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 7
  %10 = load i16, i16* %9, align 2, !tbaa !23
  %11 = and i16 %10, 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %47

; <label>:13:                                     ; preds = %3
  %14 = bitcast %union.StackValue* %7 to %struct.LClosure**
  %15 = icmp slt i32 %2, 0
  %16 = load %struct.LClosure*, %struct.LClosure** %14, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %16, i64 0, i32 5
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8, !tbaa !13
  br i1 %15, label %19, label %34

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 4
  %21 = load i8, i8* %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %94, label %23

; <label>:23:                                     ; preds = %19
  %24 = sub nsw i32 0, %2
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 4
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i64 0, i32 2
  %28 = load i32, i32* %27, align 4, !tbaa !13
  %29 = icmp slt i32 %28, %24
  br i1 %29, label %94, label %30

; <label>:30:                                     ; preds = %23
  %31 = sext i32 %28 to i64
  %32 = sub nsw i64 0, %31
  %33 = xor i32 %2, -1
  br label %76

; <label>:34:                                     ; preds = %13
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 4
  %36 = bitcast %union.anon* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 16
  %39 = bitcast i32** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = sub i64 %37, %40
  %42 = lshr exact i64 %41, 2
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %43, -1
  %45 = tail call i8* @luaF_getlocalname(%struct.Proto* %18, i32 %2, i32 %44) #9
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %73

; <label>:47:                                     ; preds = %34, %3
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %49 = load %struct.CallInfo*, %struct.CallInfo** %48, align 8, !tbaa !18
  %50 = icmp eq %struct.CallInfo* %49, %5
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %57

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 3
  %55 = load %struct.CallInfo*, %struct.CallInfo** %54, align 8, !tbaa !36
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %55, i64 0, i32 0
  br label %57

; <label>:57:                                     ; preds = %53, %51
  %58 = phi %union.StackValue** [ %52, %51 ], [ %56, %53 ]
  %59 = bitcast %union.StackValue** %58 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !30
  %61 = ptrtoint %union.StackValue* %8 to i64
  %62 = sub i64 %60, %61
  %63 = ashr exact i64 %62, 4
  %64 = sext i32 %2 to i64
  %65 = icmp sge i64 %63, %64
  %66 = icmp sgt i32 %2, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %94

; <label>:68:                                     ; preds = %57
  %69 = load i16, i16* %9, align 2, !tbaa !23
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  br label %73

; <label>:73:                                     ; preds = %34, %68
  %74 = phi i8* [ %45, %34 ], [ %72, %68 ]
  %75 = add nsw i32 %2, -1
  br label %76

; <label>:76:                                     ; preds = %73, %30
  %77 = phi i32 [ %75, %73 ], [ %33, %30 ]
  %78 = phi i64 [ 1, %73 ], [ %32, %30 ]
  %79 = phi i8* [ %74, %73 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %30 ]
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %78
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 %81
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %84 = load %union.StackValue*, %union.StackValue** %83, align 8, !tbaa !37
  %85 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 -1, i32 0
  %86 = bitcast %struct.TValue* %85 to i64*
  %87 = bitcast %union.StackValue* %82 to i64*
  %88 = load i64, i64* %86, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 -1, i32 0, i32 1
  %90 = load i8, i8* %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i64 0, i32 0, i32 1
  store i8 %90, i8* %91, align 8, !tbaa !38
  %92 = load %union.StackValue*, %union.StackValue** %83, align 8, !tbaa !37
  %93 = getelementptr inbounds %union.StackValue, %union.StackValue* %92, i64 -1
  store %union.StackValue* %93, %union.StackValue** %83, align 8, !tbaa !37
  br label %94

; <label>:94:                                     ; preds = %57, %19, %23, %76
  %95 = phi i8* [ %79, %76 ], [ null, %23 ], [ null, %19 ], [ null, %57 ]
  ret i8* %95
}

; Function Attrs: nounwind uwtable
define i32 @lua_getinfo(%struct.lua_State*, i8* readonly, %struct.lua_Debug*) local_unnamed_addr #4 {
  %4 = alloca %struct.TValue, align 8
  %5 = load i8, i8* %1, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 62
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !37
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -1, i32 0
  %11 = getelementptr inbounds i8, i8* %1, i64 1
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -1
  store %union.StackValue* %12, %union.StackValue** %8, align 8, !tbaa !37
  br label %18

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 16
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !tbaa !31
  %16 = bitcast %struct.CallInfo* %15 to %struct.TValue**
  %17 = load %struct.TValue*, %struct.TValue** %16, align 8, !tbaa !33
  br label %18

; <label>:18:                                     ; preds = %13, %7
  %19 = phi %struct.TValue* [ %10, %7 ], [ %17, %13 ]
  %20 = phi %struct.CallInfo* [ null, %7 ], [ %15, %13 ]
  %21 = phi i8* [ %11, %7 ], [ %1, %13 ]
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !38
  %24 = and i8 %23, 31
  %25 = icmp eq i8 %24, 22
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.TValue* %19 to %union.Closure**
  %28 = load %union.Closure*, %union.Closure** %27, align 8, !tbaa !13
  br label %29

; <label>:29:                                     ; preds = %18, %26
  %30 = phi %union.Closure* [ %28, %26 ], [ null, %18 ]
  %31 = load i8, i8* %21, align 1, !tbaa !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %376, label %33

; <label>:33:                                     ; preds = %29
  %34 = icmp eq %union.Closure* %30, null
  %35 = icmp eq %struct.CallInfo* %20, null
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 15, i64 0
  %43 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 1
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 7
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %49 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 3
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 12
  %51 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %52 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %54 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 5
  %55 = bitcast i32 (%struct.lua_State*)** %54 to %struct.Proto**
  %56 = bitcast %struct.CallInfo* %20 to %struct.LClosure***
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 4
  %58 = bitcast %union.anon* %57 to i64*
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 5
  %60 = bitcast %union.anon.1* %59 to %struct.anon.2*
  %61 = bitcast %union.anon.1* %59 to i16*
  %62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %60, i64 0, i32 1
  %63 = bitcast i8** %37 to %struct.TString**
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 2
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %66 = bitcast i8** %36 to <2 x i8*>*
  br label %67

; <label>:67:                                     ; preds = %371, %33
  %68 = phi i8 [ %31, %33 ], [ %374, %371 ]
  %69 = phi i32 [ 1, %33 ], [ %372, %371 ]
  %70 = phi i8* [ %21, %33 ], [ %373, %371 ]
  %71 = sext i8 %68 to i32
  switch i32 %71, label %370 [
    i32 83, label %72
    i32 108, label %109
    i32 117, label %268
    i32 116, label %282
    i32 110, label %289
    i32 114, label %361
    i32 76, label %371
    i32 102, label %371
  ]

; <label>:72:                                     ; preds = %67
  br i1 %34, label %76, label %73

; <label>:73:                                     ; preds = %72
  %74 = load i8, i8* %43, align 8, !tbaa !13
  %75 = icmp eq i8 %74, 54
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73, %72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %37, align 8, !tbaa !40
  store i64 4, i64* %38, align 8, !tbaa !41
  store i32 -1, i32* %39, align 4, !tbaa !42
  store i32 -1, i32* %40, align 8, !tbaa !43
  br label %105

; <label>:77:                                     ; preds = %73
  %78 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 22
  %80 = load %struct.TString*, %struct.TString** %79, align 8, !tbaa !44
  %81 = icmp eq %struct.TString* %80, null
  br i1 %81, label %95, label %82

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 1
  store %struct.TString* %83, %struct.TString** %63, align 8, !tbaa !40
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !45
  %86 = icmp eq i8 %85, 20
  %87 = bitcast %struct.TString* %83 to i8*
  br i1 %86, label %88, label %92

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 4
  %90 = load i8, i8* %89, align 1, !tbaa !47
  %91 = zext i8 %90 to i64
  br label %96

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 6, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !13
  br label %96

; <label>:95:                                     ; preds = %77
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %37, align 8, !tbaa !40
  br label %96

; <label>:96:                                     ; preds = %95, %92, %88
  %97 = phi i64 [ 2, %95 ], [ %91, %88 ], [ %94, %92 ]
  %98 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %95 ], [ %87, %88 ], [ %87, %92 ]
  store i64 %97, i64* %38, align 8, !tbaa !41
  %99 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 13
  %100 = load i32, i32* %99, align 4, !tbaa !48
  store i32 %100, i32* %39, align 4, !tbaa !42
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 14
  %102 = load i32, i32* %101, align 8, !tbaa !49
  store i32 %102, i32* %40, align 8, !tbaa !43
  %103 = icmp eq i32 %100, 0
  %104 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  br label %105

; <label>:105:                                    ; preds = %96, %76
  %106 = phi i8* [ %104, %96 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %76 ]
  %107 = phi i64 [ %97, %96 ], [ 4, %76 ]
  %108 = phi i8* [ %98, %96 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %76 ]
  store i8* %106, i8** %41, align 8, !tbaa !50
  tail call void @luaO_chunkid(i8* nonnull %42, i8* %108, i64 %107) #9
  br label %371

; <label>:109:                                    ; preds = %67
  br i1 %35, label %266, label %110

; <label>:110:                                    ; preds = %109
  %111 = load i16, i16* %45, align 2, !tbaa !23
  %112 = and i16 %111, 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %266

; <label>:114:                                    ; preds = %110
  %115 = load %struct.LClosure**, %struct.LClosure*** %56, align 8, !tbaa !33
  %116 = load %struct.LClosure*, %struct.LClosure** %115, align 8, !tbaa !13
  %117 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %116, i64 0, i32 5
  %118 = load %struct.Proto*, %struct.Proto** %117, align 8, !tbaa !13
  %119 = load i64, i64* %58, align 8, !tbaa !13
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 16
  %121 = bitcast i32** %120 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !35
  %123 = sub i64 %119, %122
  %124 = lshr exact i64 %123, 2
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %125, -1
  %127 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 19
  %128 = load i8*, i8** %127, align 8, !tbaa !2
  %129 = icmp eq i8* %128, null
  br i1 %129, label %266, label %130

; <label>:130:                                    ; preds = %114
  %131 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 12
  %132 = load i32, i32* %131, align 8, !tbaa !8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 20
  %136 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %135, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %136, i64 0, i32 0
  %138 = load i32, i32* %137, align 4, !tbaa !10
  %139 = icmp slt i32 %138, %125
  br i1 %139, label %142, label %140

; <label>:140:                                    ; preds = %134, %130
  %141 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 13
  br label %170

; <label>:142:                                    ; preds = %134
  %143 = add nsw i32 %132, -1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %136, i64 %144, i32 0
  %146 = load i32, i32* %145, align 4, !tbaa !10
  %147 = icmp slt i32 %146, %125
  br i1 %147, label %164, label %148

; <label>:148:                                    ; preds = %142
  %149 = icmp eq i32 %132, 2
  br i1 %149, label %164, label %150

; <label>:150:                                    ; preds = %148
  br label %151

; <label>:151:                                    ; preds = %150, %151
  %152 = phi i32 [ %161, %151 ], [ %143, %150 ]
  %153 = phi i32 [ %160, %151 ], [ 0, %150 ]
  %154 = add i32 %153, %152
  %155 = lshr i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %136, i64 %156, i32 0
  %158 = load i32, i32* %157, align 4, !tbaa !10
  %159 = icmp sge i32 %158, %125
  %160 = select i1 %159, i32 %153, i32 %155
  %161 = select i1 %159, i32 %155, i32 %152
  %162 = add i32 %161, -1
  %163 = icmp ult i32 %160, %162
  br i1 %163, label %151, label %164

; <label>:164:                                    ; preds = %151, %148, %142
  %165 = phi i32 [ %143, %142 ], [ 0, %148 ], [ %160, %151 ]
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %136, i64 %166, i32 0
  %168 = load i32, i32* %167, align 4, !tbaa !10
  %169 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %136, i64 %166, i32 1
  br label %170

; <label>:170:                                    ; preds = %164, %140
  %171 = phi i32 [ -1, %140 ], [ %168, %164 ]
  %172 = phi i32* [ %141, %140 ], [ %169, %164 ]
  %173 = load i32, i32* %172, align 4, !tbaa !12
  %174 = icmp slt i32 %171, %126
  br i1 %174, label %175, label %266

; <label>:175:                                    ; preds = %170
  %176 = sext i32 %171 to i64
  %177 = sext i32 %126 to i64
  %178 = sub nsw i64 %177, %176
  %179 = icmp ult i64 %178, 8
  br i1 %179, label %254, label %180

; <label>:180:                                    ; preds = %175
  %181 = and i64 %178, -8
  %182 = add nsw i64 %181, %176
  %183 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %173, i32 0
  %184 = add nsw i64 %181, -8
  %185 = lshr exact i64 %184, 3
  %186 = add nuw nsw i64 %185, 1
  %187 = and i64 %186, 1
  %188 = icmp eq i64 %184, 0
  br i1 %188, label %224, label %189

; <label>:189:                                    ; preds = %180
  %190 = sub nsw i64 %186, %187
  br label %191

; <label>:191:                                    ; preds = %191, %189
  %192 = phi i64 [ 0, %189 ], [ %221, %191 ]
  %193 = phi <4 x i32> [ %183, %189 ], [ %219, %191 ]
  %194 = phi <4 x i32> [ zeroinitializer, %189 ], [ %220, %191 ]
  %195 = phi i64 [ %190, %189 ], [ %222, %191 ]
  %196 = add i64 %192, %176
  %197 = add nsw i64 %196, 1
  %198 = getelementptr inbounds i8, i8* %128, i64 %197
  %199 = bitcast i8* %198 to <4 x i8>*
  %200 = load <4 x i8>, <4 x i8>* %199, align 1, !tbaa !13
  %201 = getelementptr i8, i8* %198, i64 4
  %202 = bitcast i8* %201 to <4 x i8>*
  %203 = load <4 x i8>, <4 x i8>* %202, align 1, !tbaa !13
  %204 = sext <4 x i8> %200 to <4 x i32>
  %205 = sext <4 x i8> %203 to <4 x i32>
  %206 = add nsw <4 x i32> %193, %204
  %207 = add nsw <4 x i32> %194, %205
  %208 = or i64 %192, 8
  %209 = add i64 %208, %176
  %210 = add nsw i64 %209, 1
  %211 = getelementptr inbounds i8, i8* %128, i64 %210
  %212 = bitcast i8* %211 to <4 x i8>*
  %213 = load <4 x i8>, <4 x i8>* %212, align 1, !tbaa !13
  %214 = getelementptr i8, i8* %211, i64 4
  %215 = bitcast i8* %214 to <4 x i8>*
  %216 = load <4 x i8>, <4 x i8>* %215, align 1, !tbaa !13
  %217 = sext <4 x i8> %213 to <4 x i32>
  %218 = sext <4 x i8> %216 to <4 x i32>
  %219 = add nsw <4 x i32> %206, %217
  %220 = add nsw <4 x i32> %207, %218
  %221 = add i64 %192, 16
  %222 = add i64 %195, -2
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %191, !llvm.loop !51

; <label>:224:                                    ; preds = %191, %180
  %225 = phi <4 x i32> [ undef, %180 ], [ %219, %191 ]
  %226 = phi <4 x i32> [ undef, %180 ], [ %220, %191 ]
  %227 = phi i64 [ 0, %180 ], [ %221, %191 ]
  %228 = phi <4 x i32> [ %183, %180 ], [ %219, %191 ]
  %229 = phi <4 x i32> [ zeroinitializer, %180 ], [ %220, %191 ]
  %230 = icmp eq i64 %187, 0
  br i1 %230, label %244, label %231

; <label>:231:                                    ; preds = %224
  %232 = add i64 %227, %176
  %233 = add nsw i64 %232, 1
  %234 = getelementptr inbounds i8, i8* %128, i64 %233
  %235 = getelementptr i8, i8* %234, i64 4
  %236 = bitcast i8* %235 to <4 x i8>*
  %237 = load <4 x i8>, <4 x i8>* %236, align 1, !tbaa !13
  %238 = sext <4 x i8> %237 to <4 x i32>
  %239 = add nsw <4 x i32> %229, %238
  %240 = bitcast i8* %234 to <4 x i8>*
  %241 = load <4 x i8>, <4 x i8>* %240, align 1, !tbaa !13
  %242 = sext <4 x i8> %241 to <4 x i32>
  %243 = add nsw <4 x i32> %228, %242
  br label %244

; <label>:244:                                    ; preds = %224, %231
  %245 = phi <4 x i32> [ %225, %224 ], [ %243, %231 ]
  %246 = phi <4 x i32> [ %226, %224 ], [ %239, %231 ]
  %247 = add <4 x i32> %246, %245
  %248 = shufflevector <4 x i32> %247, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %249 = add <4 x i32> %247, %248
  %250 = shufflevector <4 x i32> %249, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %251 = add <4 x i32> %249, %250
  %252 = extractelement <4 x i32> %251, i32 0
  %253 = icmp eq i64 %178, %181
  br i1 %253, label %266, label %254

; <label>:254:                                    ; preds = %244, %175
  %255 = phi i64 [ %176, %175 ], [ %182, %244 ]
  %256 = phi i32 [ %173, %175 ], [ %252, %244 ]
  br label %257

; <label>:257:                                    ; preds = %254, %257
  %258 = phi i64 [ %260, %257 ], [ %255, %254 ]
  %259 = phi i32 [ %264, %257 ], [ %256, %254 ]
  %260 = add nsw i64 %258, 1
  %261 = getelementptr inbounds i8, i8* %128, i64 %260
  %262 = load i8, i8* %261, align 1, !tbaa !13
  %263 = sext i8 %262 to i32
  %264 = add nsw i32 %259, %263
  %265 = icmp eq i64 %260, %177
  br i1 %265, label %266, label %257, !llvm.loop !52

; <label>:266:                                    ; preds = %257, %244, %170, %114, %110, %109
  %267 = phi i32 [ -1, %110 ], [ -1, %109 ], [ -1, %114 ], [ %173, %170 ], [ %252, %244 ], [ %264, %257 ]
  store i32 %267, i32* %44, align 8, !tbaa !53
  br label %371

; <label>:268:                                    ; preds = %67
  br i1 %34, label %273, label %269

; <label>:269:                                    ; preds = %268
  %270 = load i8, i8* %49, align 2, !tbaa !13
  store i8 %270, i8* %46, align 4, !tbaa !54
  %271 = load i8, i8* %43, align 8, !tbaa !13
  %272 = icmp eq i8 %271, 54
  br i1 %272, label %274, label %275

; <label>:273:                                    ; preds = %268
  store i8 0, i8* %46, align 4, !tbaa !54
  br label %274

; <label>:274:                                    ; preds = %273, %269
  store i8 1, i8* %47, align 2, !tbaa !55
  store i8 0, i8* %48, align 1, !tbaa !56
  br label %371

; <label>:275:                                    ; preds = %269
  %276 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %277 = getelementptr inbounds %struct.Proto, %struct.Proto* %276, i64 0, i32 4
  %278 = load i8, i8* %277, align 1, !tbaa !34
  store i8 %278, i8* %47, align 2, !tbaa !55
  %279 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %280 = getelementptr inbounds %struct.Proto, %struct.Proto* %279, i64 0, i32 3
  %281 = load i8, i8* %280, align 2, !tbaa !57
  store i8 %281, i8* %48, align 1, !tbaa !56
  br label %371

; <label>:282:                                    ; preds = %67
  br i1 %35, label %287, label %283

; <label>:283:                                    ; preds = %282
  %284 = load i16, i16* %45, align 2, !tbaa !23
  %285 = trunc i16 %284 to i8
  %286 = and i8 %285, 16
  br label %287

; <label>:287:                                    ; preds = %283, %282
  %288 = phi i8 [ %286, %283 ], [ 0, %282 ]
  store i8 %288, i8* %50, align 1, !tbaa !58
  br label %371

; <label>:289:                                    ; preds = %67
  br i1 %35, label %354, label %290

; <label>:290:                                    ; preds = %289
  %291 = load i16, i16* %45, align 2, !tbaa !23
  %292 = zext i16 %291 to i32
  %293 = and i32 %292, 64
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %351

; <label>:295:                                    ; preds = %290
  %296 = and i32 %292, 16
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %354

; <label>:298:                                    ; preds = %295
  %299 = load %struct.CallInfo*, %struct.CallInfo** %64, align 8, !tbaa !29
  %300 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %299, i64 0, i32 7
  %301 = load i16, i16* %300, align 2, !tbaa !23
  %302 = and i16 %301, 2
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %304, label %354

; <label>:304:                                    ; preds = %298
  %305 = bitcast %struct.CallInfo* %299 to %struct.LClosure***
  %306 = load %struct.LClosure**, %struct.LClosure*** %305, align 8, !tbaa !33
  %307 = load %struct.LClosure*, %struct.LClosure** %306, align 8, !tbaa !13
  %308 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %307, i64 0, i32 5
  %309 = load %struct.Proto*, %struct.Proto** %308, align 8, !tbaa !13
  %310 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %299, i64 0, i32 4
  %311 = bitcast %union.anon* %310 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !13
  %313 = getelementptr inbounds %struct.Proto, %struct.Proto* %309, i64 0, i32 16
  %314 = bitcast i32** %313 to i64*
  %315 = load i64, i64* %314, align 8, !tbaa !35
  %316 = sub i64 %312, %315
  %317 = lshr exact i64 %316, 2
  %318 = trunc i64 %317 to i32
  %319 = add nsw i32 %318, -1
  %320 = inttoptr i64 %315 to i32*
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4, !tbaa !12
  %324 = and i16 %301, 4
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %326, label %351

; <label>:326:                                    ; preds = %304
  %327 = and i32 %323, 127
  %328 = trunc i32 %323 to i7
  switch i7 %328, label %354 [
    i7 -59, label %355
    i7 -58, label %355
    i7 -51, label %351
    i7 18, label %343
    i7 9, label %343
    i7 10, label %343
    i7 11, label %343
    i7 12, label %343
    i7 13, label %329
    i7 14, label %329
    i7 15, label %329
    i7 16, label %329
    i7 19, label %330
    i7 20, label %330
    i7 21, label %330
    i7 22, label %330
    i7 23, label %330
    i7 24, label %330
    i7 25, label %330
    i7 26, label %332
    i7 27, label %332
    i7 28, label %332
    i7 29, label %332
    i7 30, label %332
    i7 31, label %332
    i7 32, label %332
    i7 33, label %332
    i7 34, label %332
    i7 35, label %332
    i7 38, label %334
    i7 39, label %334
    i7 40, label %334
    i7 41, label %334
    i7 42, label %334
    i7 43, label %334
    i7 44, label %334
    i7 45, label %334
    i7 46, label %334
    i7 47, label %334
    i7 48, label %334
    i7 49, label %334
    i7 50, label %336
    i7 51, label %337
    i7 53, label %338
    i7 54, label %339
    i7 58, label %340
    i7 59, label %341
    i7 60, label %341
    i7 63, label %341
    i7 -64, label %341
    i7 36, label %342
    i7 37, label %342
  ]

; <label>:329:                                    ; preds = %326, %326, %326, %326
  br label %343

; <label>:330:                                    ; preds = %326, %326, %326, %326, %326, %326, %326
  %331 = add nsw i32 %327, -13
  br label %343

; <label>:332:                                    ; preds = %326, %326, %326, %326, %326, %326, %326, %326, %326, %326
  %333 = add nsw i32 %327, -20
  br label %343

; <label>:334:                                    ; preds = %326, %326, %326, %326, %326, %326, %326, %326, %326, %326, %326, %326
  %335 = add nsw i32 %327, -32
  br label %343

; <label>:336:                                    ; preds = %326
  br label %343

; <label>:337:                                    ; preds = %326
  br label %343

; <label>:338:                                    ; preds = %326
  br label %343

; <label>:339:                                    ; preds = %326
  br label %343

; <label>:340:                                    ; preds = %326
  br label %343

; <label>:341:                                    ; preds = %326, %326, %326, %326
  br label %351

; <label>:342:                                    ; preds = %326, %326
  br label %351

; <label>:343:                                    ; preds = %340, %339, %338, %337, %336, %334, %332, %330, %329, %326, %326, %326, %326, %326
  %344 = phi i32 [ 5, %340 ], [ 22, %339 ], [ 4, %338 ], [ 19, %337 ], [ 18, %336 ], [ %335, %334 ], [ %333, %332 ], [ %331, %330 ], [ 1, %329 ], [ 0, %326 ], [ 0, %326 ], [ 0, %326 ], [ 0, %326 ], [ 0, %326 ]
  %345 = load %struct.global_State*, %struct.global_State** %65, align 8, !tbaa !59
  %346 = zext i32 %344 to i64
  %347 = getelementptr inbounds %struct.global_State, %struct.global_State* %345, i64 0, i32 40, i64 %346
  %348 = bitcast %struct.TString** %347 to i8**
  %349 = load i8*, i8** %348, align 8, !tbaa !30
  %350 = getelementptr inbounds i8, i8* %349, i64 26
  br label %351

; <label>:351:                                    ; preds = %326, %304, %290, %343, %342, %341
  %352 = phi i8* [ %350, %343 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %342 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %341 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %290 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %304 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %326 ]
  %353 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %343 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %342 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %341 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %290 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %304 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %326 ]
  store i8* %352, i8** %36, align 8, !tbaa !30
  store i8* %353, i8** %51, align 8, !tbaa !60
  br label %371

; <label>:354:                                    ; preds = %326, %298, %295, %289
  store i8* null, i8** %51, align 8, !tbaa !60
  br label %360

; <label>:355:                                    ; preds = %326, %326
  %356 = lshr i32 %323, 7
  %357 = and i32 %356, 255
  %358 = tail call fastcc i8* @getobjname(%struct.Proto* %309, i32 %319, i32 %357, i8** nonnull %36) #9
  store i8* %358, i8** %51, align 8, !tbaa !60
  %359 = icmp eq i8* %358, null
  br i1 %359, label %360, label %371

; <label>:360:                                    ; preds = %355, %354
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)>, <2 x i8*>* %66, align 8, !tbaa !30
  br label %371

; <label>:361:                                    ; preds = %67
  br i1 %35, label %366, label %362

; <label>:362:                                    ; preds = %361
  %363 = load i16, i16* %45, align 2, !tbaa !23
  %364 = trunc i16 %363 to i8
  %365 = icmp slt i8 %364, 0
  br i1 %365, label %367, label %366

; <label>:366:                                    ; preds = %362, %361
  store i16 0, i16* %52, align 2, !tbaa !61
  store i16 0, i16* %53, align 8, !tbaa !62
  br label %371

; <label>:367:                                    ; preds = %362
  %368 = load i16, i16* %61, align 8, !tbaa !13
  store i16 %368, i16* %53, align 8, !tbaa !62
  %369 = load i16, i16* %62, align 2, !tbaa !13
  store i16 %369, i16* %52, align 2, !tbaa !61
  br label %371

; <label>:370:                                    ; preds = %67
  br label %371

; <label>:371:                                    ; preds = %370, %367, %366, %360, %355, %351, %287, %275, %274, %266, %105, %67, %67
  %372 = phi i32 [ 0, %370 ], [ %69, %67 ], [ %69, %67 ], [ %69, %366 ], [ %69, %367 ], [ %69, %360 ], [ %69, %355 ], [ %69, %287 ], [ %69, %274 ], [ %69, %275 ], [ %69, %266 ], [ %69, %105 ], [ %69, %351 ]
  %373 = getelementptr inbounds i8, i8* %70, i64 1
  %374 = load i8, i8* %373, align 1, !tbaa !13
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %67

; <label>:376:                                    ; preds = %371, %29
  %377 = phi i32 [ 1, %29 ], [ %372, %371 ]
  %378 = tail call i8* @strchr(i8* %21, i32 102) #10
  %379 = icmp eq i8* %378, null
  br i1 %379, label %391, label %380

; <label>:380:                                    ; preds = %376
  %381 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %382 = bitcast %union.StackValue** %381 to %struct.TValue**
  %383 = load %struct.TValue*, %struct.TValue** %382, align 8, !tbaa !37
  %384 = bitcast %struct.TValue* %19 to i64*
  %385 = bitcast %struct.TValue* %383 to i64*
  %386 = load i64, i64* %384, align 8
  store i64 %386, i64* %385, align 8
  %387 = load i8, i8* %22, align 8, !tbaa !38
  %388 = getelementptr inbounds %struct.TValue, %struct.TValue* %383, i64 0, i32 1
  store i8 %387, i8* %388, align 8, !tbaa !38
  %389 = load %union.StackValue*, %union.StackValue** %381, align 8, !tbaa !37
  %390 = getelementptr inbounds %union.StackValue, %union.StackValue* %389, i64 1
  store %union.StackValue* %390, %union.StackValue** %381, align 8, !tbaa !37
  br label %391

; <label>:391:                                    ; preds = %376, %380
  %392 = tail call i8* @strchr(i8* %21, i32 76) #10
  %393 = icmp eq i8* %392, null
  br i1 %393, label %585, label %394

; <label>:394:                                    ; preds = %391
  %395 = icmp eq %union.Closure* %30, null
  br i1 %395, label %400, label %396

; <label>:396:                                    ; preds = %394
  %397 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 1
  %398 = load i8, i8* %397, align 8, !tbaa !13
  %399 = icmp eq i8 %398, 54
  br i1 %399, label %400, label %407

; <label>:400:                                    ; preds = %396, %394
  %401 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %402 = bitcast %union.StackValue** %401 to %struct.TValue**
  %403 = load %struct.TValue*, %struct.TValue** %402, align 8, !tbaa !37
  %404 = getelementptr inbounds %struct.TValue, %struct.TValue* %403, i64 0, i32 1
  store i8 0, i8* %404, align 8, !tbaa !13
  %405 = load %union.StackValue*, %union.StackValue** %401, align 8, !tbaa !37
  %406 = getelementptr inbounds %union.StackValue, %union.StackValue* %405, i64 1
  store %union.StackValue* %406, %union.StackValue** %401, align 8, !tbaa !37
  br label %585

; <label>:407:                                    ; preds = %396
  %408 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %408) #9
  %409 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 5
  %410 = bitcast i32 (%struct.lua_State*)** %409 to %struct.Proto**
  %411 = load %struct.Proto*, %struct.Proto** %410, align 8, !tbaa !13
  %412 = getelementptr inbounds %struct.Proto, %struct.Proto* %411, i64 0, i32 13
  %413 = load i32, i32* %412, align 4, !tbaa !48
  %414 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #9
  %415 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %416 = bitcast %union.StackValue** %415 to %struct.TValue**
  %417 = load %struct.TValue*, %struct.TValue** %416, align 8, !tbaa !37
  %418 = bitcast %struct.TValue* %417 to %struct.Table**
  store %struct.Table* %414, %struct.Table** %418, align 8, !tbaa !13
  %419 = getelementptr inbounds %struct.TValue, %struct.TValue* %417, i64 0, i32 1
  store i8 69, i8* %419, align 8, !tbaa !38
  %420 = load %union.StackValue*, %union.StackValue** %415, align 8, !tbaa !37
  %421 = getelementptr inbounds %union.StackValue, %union.StackValue* %420, i64 1
  store %union.StackValue* %421, %union.StackValue** %415, align 8, !tbaa !37
  %422 = bitcast %struct.TValue* %4 to i32*
  store i32 1, i32* %422, align 8, !tbaa !13
  %423 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 1, i8* %423, align 8, !tbaa !38
  %424 = getelementptr inbounds %struct.Proto, %struct.Proto* %411, i64 0, i32 9
  %425 = load i32, i32* %424, align 4, !tbaa !63
  %426 = icmp sgt i32 %425, 0
  br i1 %426, label %427, label %584

; <label>:427:                                    ; preds = %407
  %428 = getelementptr inbounds %struct.Proto, %struct.Proto* %411, i64 0, i32 19
  %429 = getelementptr inbounds %struct.Proto, %struct.Proto* %411, i64 0, i32 12
  %430 = getelementptr inbounds %struct.Proto, %struct.Proto* %411, i64 0, i32 20
  br label %431

; <label>:431:                                    ; preds = %577, %427
  %432 = phi i64 [ 0, %427 ], [ %580, %577 ]
  %433 = phi i32 [ %413, %427 ], [ %578, %577 ]
  %434 = load i8*, i8** %428, align 8, !tbaa !2
  %435 = getelementptr inbounds i8, i8* %434, i64 %432
  %436 = load i8, i8* %435, align 1, !tbaa !13
  %437 = icmp eq i8 %436, -128
  br i1 %437, label %441, label %438

; <label>:438:                                    ; preds = %431
  %439 = sext i8 %436 to i32
  %440 = add nsw i32 %433, %439
  br label %577

; <label>:441:                                    ; preds = %431
  %442 = icmp eq i8* %434, null
  br i1 %442, label %577, label %443

; <label>:443:                                    ; preds = %441
  %444 = load i32, i32* %429, align 8, !tbaa !8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %482, label %446

; <label>:446:                                    ; preds = %443
  %447 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %430, align 8, !tbaa !9
  %448 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %447, i64 0, i32 0
  %449 = load i32, i32* %448, align 4, !tbaa !10
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %432, %450
  br i1 %451, label %482, label %452

; <label>:452:                                    ; preds = %446
  %453 = add nsw i32 %444, -1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %447, i64 %454, i32 0
  %456 = load i32, i32* %455, align 4, !tbaa !10
  %457 = sext i32 %456 to i64
  %458 = icmp slt i64 %432, %457
  br i1 %458, label %459, label %476

; <label>:459:                                    ; preds = %452
  %460 = icmp eq i32 %444, 2
  br i1 %460, label %476, label %461

; <label>:461:                                    ; preds = %459
  br label %462

; <label>:462:                                    ; preds = %461, %462
  %463 = phi i32 [ %473, %462 ], [ %453, %461 ]
  %464 = phi i32 [ %472, %462 ], [ 0, %461 ]
  %465 = add i32 %464, %463
  %466 = lshr i32 %465, 1
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %447, i64 %467, i32 0
  %469 = load i32, i32* %468, align 4, !tbaa !10
  %470 = sext i32 %469 to i64
  %471 = icmp slt i64 %432, %470
  %472 = select i1 %471, i32 %464, i32 %466
  %473 = select i1 %471, i32 %466, i32 %463
  %474 = add i32 %473, -1
  %475 = icmp ult i32 %472, %474
  br i1 %475, label %462, label %476

; <label>:476:                                    ; preds = %462, %459, %452
  %477 = phi i32 [ %453, %452 ], [ 0, %459 ], [ %472, %462 ]
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %447, i64 %478, i32 0
  %480 = load i32, i32* %479, align 4, !tbaa !10
  %481 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %447, i64 %478, i32 1
  br label %482

; <label>:482:                                    ; preds = %476, %446, %443
  %483 = phi i32 [ %480, %476 ], [ -1, %446 ], [ -1, %443 ]
  %484 = phi i32* [ %481, %476 ], [ %412, %446 ], [ %412, %443 ]
  %485 = load i32, i32* %484, align 4, !tbaa !12
  %486 = sext i32 %483 to i64
  %487 = icmp sgt i64 %432, %486
  br i1 %487, label %488, label %577

; <label>:488:                                    ; preds = %482
  %489 = sub i64 %432, %486
  %490 = icmp ult i64 %489, 8
  br i1 %490, label %565, label %491

; <label>:491:                                    ; preds = %488
  %492 = and i64 %489, -8
  %493 = add i64 %492, %486
  %494 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %485, i32 0
  %495 = add i64 %492, -8
  %496 = lshr exact i64 %495, 3
  %497 = add nuw nsw i64 %496, 1
  %498 = and i64 %497, 1
  %499 = icmp eq i64 %495, 0
  br i1 %499, label %535, label %500

; <label>:500:                                    ; preds = %491
  %501 = sub nsw i64 %497, %498
  br label %502

; <label>:502:                                    ; preds = %502, %500
  %503 = phi i64 [ 0, %500 ], [ %532, %502 ]
  %504 = phi <4 x i32> [ %494, %500 ], [ %530, %502 ]
  %505 = phi <4 x i32> [ zeroinitializer, %500 ], [ %531, %502 ]
  %506 = phi i64 [ %501, %500 ], [ %533, %502 ]
  %507 = add i64 %503, %486
  %508 = add nsw i64 %507, 1
  %509 = getelementptr inbounds i8, i8* %434, i64 %508
  %510 = bitcast i8* %509 to <4 x i8>*
  %511 = load <4 x i8>, <4 x i8>* %510, align 1, !tbaa !13
  %512 = getelementptr i8, i8* %509, i64 4
  %513 = bitcast i8* %512 to <4 x i8>*
  %514 = load <4 x i8>, <4 x i8>* %513, align 1, !tbaa !13
  %515 = sext <4 x i8> %511 to <4 x i32>
  %516 = sext <4 x i8> %514 to <4 x i32>
  %517 = add nsw <4 x i32> %504, %515
  %518 = add nsw <4 x i32> %505, %516
  %519 = or i64 %503, 8
  %520 = add i64 %519, %486
  %521 = add nsw i64 %520, 1
  %522 = getelementptr inbounds i8, i8* %434, i64 %521
  %523 = bitcast i8* %522 to <4 x i8>*
  %524 = load <4 x i8>, <4 x i8>* %523, align 1, !tbaa !13
  %525 = getelementptr i8, i8* %522, i64 4
  %526 = bitcast i8* %525 to <4 x i8>*
  %527 = load <4 x i8>, <4 x i8>* %526, align 1, !tbaa !13
  %528 = sext <4 x i8> %524 to <4 x i32>
  %529 = sext <4 x i8> %527 to <4 x i32>
  %530 = add nsw <4 x i32> %517, %528
  %531 = add nsw <4 x i32> %518, %529
  %532 = add i64 %503, 16
  %533 = add i64 %506, -2
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %502, !llvm.loop !64

; <label>:535:                                    ; preds = %502, %491
  %536 = phi <4 x i32> [ undef, %491 ], [ %530, %502 ]
  %537 = phi <4 x i32> [ undef, %491 ], [ %531, %502 ]
  %538 = phi i64 [ 0, %491 ], [ %532, %502 ]
  %539 = phi <4 x i32> [ %494, %491 ], [ %530, %502 ]
  %540 = phi <4 x i32> [ zeroinitializer, %491 ], [ %531, %502 ]
  %541 = icmp eq i64 %498, 0
  br i1 %541, label %555, label %542

; <label>:542:                                    ; preds = %535
  %543 = add i64 %538, %486
  %544 = add nsw i64 %543, 1
  %545 = getelementptr inbounds i8, i8* %434, i64 %544
  %546 = getelementptr i8, i8* %545, i64 4
  %547 = bitcast i8* %546 to <4 x i8>*
  %548 = load <4 x i8>, <4 x i8>* %547, align 1, !tbaa !13
  %549 = sext <4 x i8> %548 to <4 x i32>
  %550 = add nsw <4 x i32> %540, %549
  %551 = bitcast i8* %545 to <4 x i8>*
  %552 = load <4 x i8>, <4 x i8>* %551, align 1, !tbaa !13
  %553 = sext <4 x i8> %552 to <4 x i32>
  %554 = add nsw <4 x i32> %539, %553
  br label %555

; <label>:555:                                    ; preds = %535, %542
  %556 = phi <4 x i32> [ %536, %535 ], [ %554, %542 ]
  %557 = phi <4 x i32> [ %537, %535 ], [ %550, %542 ]
  %558 = add <4 x i32> %557, %556
  %559 = shufflevector <4 x i32> %558, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %560 = add <4 x i32> %558, %559
  %561 = shufflevector <4 x i32> %560, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %562 = add <4 x i32> %560, %561
  %563 = extractelement <4 x i32> %562, i32 0
  %564 = icmp eq i64 %489, %492
  br i1 %564, label %577, label %565

; <label>:565:                                    ; preds = %555, %488
  %566 = phi i64 [ %486, %488 ], [ %493, %555 ]
  %567 = phi i32 [ %485, %488 ], [ %563, %555 ]
  br label %568

; <label>:568:                                    ; preds = %565, %568
  %569 = phi i64 [ %571, %568 ], [ %566, %565 ]
  %570 = phi i32 [ %575, %568 ], [ %567, %565 ]
  %571 = add nsw i64 %569, 1
  %572 = getelementptr inbounds i8, i8* %434, i64 %571
  %573 = load i8, i8* %572, align 1, !tbaa !13
  %574 = sext i8 %573 to i32
  %575 = add nsw i32 %570, %574
  %576 = icmp eq i64 %571, %432
  br i1 %576, label %577, label %568, !llvm.loop !65

; <label>:577:                                    ; preds = %568, %555, %482, %441, %438
  %578 = phi i32 [ %440, %438 ], [ -1, %441 ], [ %485, %482 ], [ %563, %555 ], [ %575, %568 ]
  %579 = sext i32 %578 to i64
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %414, i64 %579, %struct.TValue* nonnull %4) #9
  %580 = add nuw nsw i64 %432, 1
  %581 = load i32, i32* %424, align 4, !tbaa !63
  %582 = sext i32 %581 to i64
  %583 = icmp slt i64 %580, %582
  br i1 %583, label %431, label %584

; <label>:584:                                    ; preds = %577, %407
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %408) #9
  br label %585

; <label>:585:                                    ; preds = %584, %400, %391
  ret i32 %377
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #9
  %5 = tail call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %1)
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %2, i8* %4, i8* %5) #11
  unreachable
}

declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #7 {
  %3 = alloca [60 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !18
  %7 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !66
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %14

; <label>:14:                                     ; preds = %13, %2
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %7)
  %16 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %15) #9
  call void @llvm.va_end(i8* nonnull %7)
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %18 = load i16, i16* %17, align 2, !tbaa !23
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %201

; <label>:21:                                     ; preds = %14
  %22 = bitcast %struct.CallInfo* %6 to %struct.LClosure***
  %23 = load %struct.LClosure**, %struct.LClosure*** %22, align 8, !tbaa !33
  %24 = load %struct.LClosure*, %struct.LClosure** %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i64 0, i32 5
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 22
  %28 = load %struct.TString*, %struct.TString** %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4
  %30 = bitcast %union.anon* %29 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 16
  %33 = bitcast i32** %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !35
  %35 = sub i64 %31, %34
  %36 = lshr exact i64 %35, 2
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %37, -1
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 19
  %40 = load i8*, i8** %39, align 8, !tbaa !2
  %41 = icmp eq i8* %40, null
  br i1 %41, label %178, label %42

; <label>:42:                                     ; preds = %21
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 12
  %44 = load i32, i32* %43, align 8, !tbaa !8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 20
  %48 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %48, i64 0, i32 0
  %50 = load i32, i32* %49, align 4, !tbaa !10
  %51 = icmp slt i32 %50, %37
  br i1 %51, label %54, label %52

; <label>:52:                                     ; preds = %46, %42
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 13
  br label %82

; <label>:54:                                     ; preds = %46
  %55 = add nsw i32 %44, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %48, i64 %56, i32 0
  %58 = load i32, i32* %57, align 4, !tbaa !10
  %59 = icmp slt i32 %58, %37
  br i1 %59, label %76, label %60

; <label>:60:                                     ; preds = %54
  %61 = icmp eq i32 %44, 2
  br i1 %61, label %76, label %62

; <label>:62:                                     ; preds = %60
  br label %63

; <label>:63:                                     ; preds = %62, %63
  %64 = phi i32 [ %73, %63 ], [ %55, %62 ]
  %65 = phi i32 [ %72, %63 ], [ 0, %62 ]
  %66 = add i32 %65, %64
  %67 = lshr i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %48, i64 %68, i32 0
  %70 = load i32, i32* %69, align 4, !tbaa !10
  %71 = icmp sge i32 %70, %37
  %72 = select i1 %71, i32 %65, i32 %67
  %73 = select i1 %71, i32 %67, i32 %64
  %74 = add i32 %73, -1
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %63, label %76

; <label>:76:                                     ; preds = %63, %60, %54
  %77 = phi i32 [ %55, %54 ], [ 0, %60 ], [ %72, %63 ]
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %48, i64 %78, i32 0
  %80 = load i32, i32* %79, align 4, !tbaa !10
  %81 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %48, i64 %78, i32 1
  br label %82

; <label>:82:                                     ; preds = %76, %52
  %83 = phi i32 [ -1, %52 ], [ %80, %76 ]
  %84 = phi i32* [ %53, %52 ], [ %81, %76 ]
  %85 = load i32, i32* %84, align 4, !tbaa !12
  %86 = icmp slt i32 %83, %38
  br i1 %86, label %87, label %178

; <label>:87:                                     ; preds = %82
  %88 = sext i32 %83 to i64
  %89 = sext i32 %38 to i64
  %90 = sub nsw i64 %89, %88
  %91 = icmp ult i64 %90, 8
  br i1 %91, label %166, label %92

; <label>:92:                                     ; preds = %87
  %93 = and i64 %90, -8
  %94 = add nsw i64 %93, %88
  %95 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %85, i32 0
  %96 = add nsw i64 %93, -8
  %97 = lshr exact i64 %96, 3
  %98 = add nuw nsw i64 %97, 1
  %99 = and i64 %98, 1
  %100 = icmp eq i64 %96, 0
  br i1 %100, label %136, label %101

; <label>:101:                                    ; preds = %92
  %102 = sub nsw i64 %98, %99
  br label %103

; <label>:103:                                    ; preds = %103, %101
  %104 = phi i64 [ 0, %101 ], [ %133, %103 ]
  %105 = phi <4 x i32> [ %95, %101 ], [ %131, %103 ]
  %106 = phi <4 x i32> [ zeroinitializer, %101 ], [ %132, %103 ]
  %107 = phi i64 [ %102, %101 ], [ %134, %103 ]
  %108 = add i64 %104, %88
  %109 = add nsw i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %40, i64 %109
  %111 = bitcast i8* %110 to <4 x i8>*
  %112 = load <4 x i8>, <4 x i8>* %111, align 1, !tbaa !13
  %113 = getelementptr i8, i8* %110, i64 4
  %114 = bitcast i8* %113 to <4 x i8>*
  %115 = load <4 x i8>, <4 x i8>* %114, align 1, !tbaa !13
  %116 = sext <4 x i8> %112 to <4 x i32>
  %117 = sext <4 x i8> %115 to <4 x i32>
  %118 = add nsw <4 x i32> %105, %116
  %119 = add nsw <4 x i32> %106, %117
  %120 = or i64 %104, 8
  %121 = add i64 %120, %88
  %122 = add nsw i64 %121, 1
  %123 = getelementptr inbounds i8, i8* %40, i64 %122
  %124 = bitcast i8* %123 to <4 x i8>*
  %125 = load <4 x i8>, <4 x i8>* %124, align 1, !tbaa !13
  %126 = getelementptr i8, i8* %123, i64 4
  %127 = bitcast i8* %126 to <4 x i8>*
  %128 = load <4 x i8>, <4 x i8>* %127, align 1, !tbaa !13
  %129 = sext <4 x i8> %125 to <4 x i32>
  %130 = sext <4 x i8> %128 to <4 x i32>
  %131 = add nsw <4 x i32> %118, %129
  %132 = add nsw <4 x i32> %119, %130
  %133 = add i64 %104, 16
  %134 = add i64 %107, -2
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %103, !llvm.loop !69

; <label>:136:                                    ; preds = %103, %92
  %137 = phi <4 x i32> [ undef, %92 ], [ %131, %103 ]
  %138 = phi <4 x i32> [ undef, %92 ], [ %132, %103 ]
  %139 = phi i64 [ 0, %92 ], [ %133, %103 ]
  %140 = phi <4 x i32> [ %95, %92 ], [ %131, %103 ]
  %141 = phi <4 x i32> [ zeroinitializer, %92 ], [ %132, %103 ]
  %142 = icmp eq i64 %99, 0
  br i1 %142, label %156, label %143

; <label>:143:                                    ; preds = %136
  %144 = add i64 %139, %88
  %145 = add nsw i64 %144, 1
  %146 = getelementptr inbounds i8, i8* %40, i64 %145
  %147 = getelementptr i8, i8* %146, i64 4
  %148 = bitcast i8* %147 to <4 x i8>*
  %149 = load <4 x i8>, <4 x i8>* %148, align 1, !tbaa !13
  %150 = sext <4 x i8> %149 to <4 x i32>
  %151 = add nsw <4 x i32> %141, %150
  %152 = bitcast i8* %146 to <4 x i8>*
  %153 = load <4 x i8>, <4 x i8>* %152, align 1, !tbaa !13
  %154 = sext <4 x i8> %153 to <4 x i32>
  %155 = add nsw <4 x i32> %140, %154
  br label %156

; <label>:156:                                    ; preds = %136, %143
  %157 = phi <4 x i32> [ %137, %136 ], [ %155, %143 ]
  %158 = phi <4 x i32> [ %138, %136 ], [ %151, %143 ]
  %159 = add <4 x i32> %158, %157
  %160 = shufflevector <4 x i32> %159, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %161 = add <4 x i32> %159, %160
  %162 = shufflevector <4 x i32> %161, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %163 = add <4 x i32> %161, %162
  %164 = extractelement <4 x i32> %163, i32 0
  %165 = icmp eq i64 %90, %93
  br i1 %165, label %178, label %166

; <label>:166:                                    ; preds = %156, %87
  %167 = phi i64 [ %88, %87 ], [ %94, %156 ]
  %168 = phi i32 [ %85, %87 ], [ %164, %156 ]
  br label %169

; <label>:169:                                    ; preds = %166, %169
  %170 = phi i64 [ %172, %169 ], [ %167, %166 ]
  %171 = phi i32 [ %176, %169 ], [ %168, %166 ]
  %172 = add nsw i64 %170, 1
  %173 = getelementptr inbounds i8, i8* %40, i64 %172
  %174 = load i8, i8* %173, align 1, !tbaa !13
  %175 = sext i8 %174 to i32
  %176 = add nsw i32 %171, %175
  %177 = icmp eq i64 %172, %89
  br i1 %177, label %178, label %169, !llvm.loop !70

; <label>:178:                                    ; preds = %169, %156, %21, %82
  %179 = phi i32 [ -1, %21 ], [ %85, %82 ], [ %164, %156 ], [ %176, %169 ]
  %180 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %180) #9
  %181 = icmp eq %struct.TString* %28, null
  br i1 %181, label %197, label %182

; <label>:182:                                    ; preds = %178
  %183 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 1
  %184 = bitcast %struct.TString* %183 to i8*
  %185 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 1
  %186 = load i8, i8* %185, align 8, !tbaa !45
  %187 = icmp eq i8 %186, 20
  br i1 %187, label %188, label %192

; <label>:188:                                    ; preds = %182
  %189 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 4
  %190 = load i8, i8* %189, align 1, !tbaa !47
  %191 = zext i8 %190 to i64
  br label %195

; <label>:192:                                    ; preds = %182
  %193 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 6, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !13
  br label %195

; <label>:195:                                    ; preds = %192, %188
  %196 = phi i64 [ %191, %188 ], [ %194, %192 ]
  call void @luaO_chunkid(i8* nonnull %180, i8* nonnull %184, i64 %196) #9
  br label %199

; <label>:197:                                    ; preds = %178
  store i8 63, i8* %180, align 16, !tbaa !13
  %198 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %198, align 1, !tbaa !13
  br label %199

; <label>:199:                                    ; preds = %195, %197
  %200 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %180, i32 %179, i8* %16) #9
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %180) #9
  br label %201

; <label>:201:                                    ; preds = %14, %199
  call void @luaG_errormsg(%struct.lua_State* %0) #11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @varinfo(%struct.lua_State*, %struct.TValue*) unnamed_addr #4 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i8* null, i8** %3, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %8 = load i16, i16* %7, align 2, !tbaa !23
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %77

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.CallInfo* %6 to %struct.LClosure***
  %13 = load %struct.LClosure**, %struct.LClosure*** %12, align 8, !tbaa !33
  %14 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 3
  %16 = load i8, i8* %15, align 2, !tbaa !71
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %42, label %18

; <label>:18:                                     ; preds = %11
  %19 = zext i8 %16 to i64
  br label %20

; <label>:20:                                     ; preds = %27, %18
  %21 = phi i64 [ 0, %18 ], [ %28, %27 ]
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 6, i64 %21
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i64 0, i32 3
  %25 = load %struct.TValue*, %struct.TValue** %24, align 8, !tbaa !73
  %26 = icmp eq %struct.TValue* %25, %1
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %20
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp ult i64 %28, %19
  br i1 %29, label %20, label %42

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %32 = load %struct.Proto*, %struct.Proto** %31, align 8, !tbaa !75
  %33 = getelementptr %struct.Proto, %struct.Proto* %32, i64 0, i32 18
  %34 = load %struct.Upvaldesc*, %struct.Upvaldesc** %33, align 8, !tbaa !76
  %35 = and i64 %21, 4294967295
  %36 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %34, i64 %35, i32 0
  %37 = load %struct.TString*, %struct.TString** %36, align 8, !tbaa !77
  %38 = icmp eq %struct.TString* %37, null
  %39 = getelementptr inbounds %struct.TString, %struct.TString* %37, i64 1
  %40 = bitcast %struct.TString* %39 to i8*
  %41 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %40
  store i8* %41, i8** %3, align 8, !tbaa !30
  br label %73

; <label>:42:                                     ; preds = %27, %11
  %43 = getelementptr inbounds %struct.LClosure*, %struct.LClosure** %13, i64 2
  %44 = ptrtoint %struct.TValue* %1 to i64
  %45 = ptrtoint %struct.LClosure** %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp sgt i64 %46, -16
  br i1 %47, label %48, label %77

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 1
  %50 = bitcast %union.StackValue** %49 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !79
  %52 = sub i64 %51, %45
  %53 = icmp slt i64 %46, %52
  br i1 %53, label %54, label %77

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %56 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4
  %58 = bitcast %union.anon* %57 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i64 0, i32 16
  %61 = bitcast i32** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !35
  %63 = sub i64 %59, %62
  %64 = lshr exact i64 %63, 2
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %65, -1
  %67 = lshr exact i64 %46, 4
  %68 = trunc i64 %67 to i32
  %69 = call fastcc i8* @getobjname(%struct.Proto* %56, i32 %66, i32 %68, i8** nonnull %3)
  %70 = icmp eq i8* %69, null
  br i1 %70, label %77, label %71

; <label>:71:                                     ; preds = %54
  %72 = load i8*, i8** %3, align 8, !tbaa !30
  br label %73

; <label>:73:                                     ; preds = %71, %30
  %74 = phi i8* [ %41, %30 ], [ %72, %71 ]
  %75 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %30 ], [ %69, %71 ]
  %76 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %75, i8* %74) #9
  br label %77

; <label>:77:                                     ; preds = %48, %42, %2, %54, %73
  %78 = phi i8* [ %76, %73 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %78
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %2, i8* %4) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !38
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -3
  %8 = icmp ult i8 %7, 2
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !38
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* %3) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !38
  %8 = icmp eq i8 %7, 35
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = bitcast %struct.TValue* %1 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !13
  store i64 %11, i64* %4, align 8, !tbaa !80
  br label %16

; <label>:12:                                     ; preds = %3
  %13 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #9
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, %struct.TValue* %1, %struct.TValue* %2
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi %struct.TValue* [ %2, %9 ], [ %15, %12 ]
  %18 = call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %17)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %18) #11
  unreachable
}

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #9
  %5 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %2) #9
  %6 = tail call i32 @strcmp(i8* %4, i8* %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %4) #11
  unreachable

; <label>:9:                                      ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %4, i8* %5) #11
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) local_unnamed_addr #4 {
  %5 = alloca [60 x i8], align 16
  %6 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %6) #9
  %7 = icmp eq %struct.TString* %2, null
  br i1 %7, label %23, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 1
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !45
  %13 = icmp eq i8 %12, 20
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 4
  %16 = load i8, i8* %15, align 1, !tbaa !47
  %17 = zext i8 %16 to i64
  br label %21

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 6, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !13
  br label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i64 [ %17, %14 ], [ %20, %18 ]
  call void @luaO_chunkid(i8* nonnull %6, i8* nonnull %10, i64 %22) #9
  br label %25

; <label>:23:                                     ; preds = %4
  store i8 63, i8* %6, align 16, !tbaa !13
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %24, align 1, !tbaa !13
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %6, i32 %3, i8* %1) #9
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %6) #9
  ret i8* %26
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #5

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %3 = load i64, i64* %2, align 8, !tbaa !82
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %30, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %7 = bitcast %union.StackValue** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !83
  %9 = getelementptr inbounds i8, i8* %8, i64 %3
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 -1, i32 0
  %13 = bitcast %struct.TValue* %12 to i64*
  %14 = bitcast %union.StackValue* %11 to i64*
  %15 = load i64, i64* %13, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 -1, i32 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !38
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !38
  %19 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !37
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0
  %21 = bitcast i8* %9 to i64*
  %22 = bitcast %struct.TValue* %20 to i64*
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %9, i64 8
  %25 = load i8, i8* %24, align 8, !tbaa !38
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  store i8 %25, i8* %26, align 8, !tbaa !38
  %27 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !37
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  store %union.StackValue* %28, %union.StackValue** %10, align 8, !tbaa !37
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %29, i32 1) #9
  br label %30

; <label>:30:                                     ; preds = %1, %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #12
  unreachable
}

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #5

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #8

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %6 = load i32, i32* %5, align 8, !tbaa !28
  %7 = and i32 %6, 12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 1
  %11 = bitcast i64* %10 to i32*
  store i32 0, i32* %11, align 8, !tbaa !13
  br label %529

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i32, i32* %1, i64 1
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4
  %15 = bitcast %union.anon* %14 to i32**
  store i32* %13, i32** %15, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  %17 = load i32, i32* %16, align 4, !tbaa !27
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4, !tbaa !27
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %6, 8
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %25 = load i32, i32* %24, align 8, !tbaa !26
  store i32 %25, i32* %16, align 4, !tbaa !27
  br label %29

; <label>:26:                                     ; preds = %12
  %27 = and i32 %6, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %529, label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %31 = load i16, i16* %30, align 2, !tbaa !23
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %29
  %35 = and i16 %31, -33
  store i16 %35, i16* %30, align 2, !tbaa !23
  br label %529

; <label>:36:                                     ; preds = %29
  %37 = load i32*, i32** %15, align 8, !tbaa !13
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  %39 = load i32, i32* %38, align 4, !tbaa !12
  %40 = and i32 %39, 127
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = and i8 %43, 32
  %45 = icmp ne i8 %44, 0
  %46 = and i32 %39, 16711680
  %47 = icmp eq i32 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1
  %51 = bitcast %union.StackValue** %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !79
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %54 = bitcast %union.StackValue** %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !37
  br label %55

; <label>:55:                                     ; preds = %36, %49
  br i1 %22, label %56, label %57

; <label>:56:                                     ; preds = %55
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 3, i32 -1, i32 0, i32 0) #9
  br label %57

; <label>:57:                                     ; preds = %56, %55
  %58 = and i32 %6, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %518, label %60

; <label>:60:                                     ; preds = %57
  %61 = bitcast %struct.CallInfo* %4 to %struct.LClosure***
  %62 = load %struct.LClosure**, %struct.LClosure*** %61, align 8, !tbaa !33
  %63 = load %struct.LClosure*, %struct.LClosure** %62, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i64 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 16
  %67 = bitcast i32** %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !35
  %69 = ptrtoint i32* %13 to i64
  %70 = sub i64 %69, %68
  %71 = lshr exact i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %373, label %75

; <label>:75:                                     ; preds = %60
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %77 = load i32*, i32** %76, align 8, !tbaa !24
  %78 = icmp ugt i32* %13, %77
  br i1 %78, label %79, label %373

; <label>:79:                                     ; preds = %75
  %80 = ptrtoint i32* %77 to i64
  %81 = sub i64 %80, %68
  %82 = lshr exact i64 %81, 2
  %83 = trunc i64 %82 to i32
  %84 = add nsw i32 %83, -1
  %85 = icmp sgt i32 %72, %83
  br i1 %85, label %86, label %516

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 19
  %88 = load i8*, i8** %87, align 8, !tbaa !2
  %89 = sext i32 %84 to i64
  %90 = sext i32 %73 to i64
  br label %94

; <label>:91:                                     ; preds = %94
  %92 = add nsw i32 %96, 1
  %93 = icmp slt i64 %97, %90
  br i1 %93, label %94, label %516

; <label>:94:                                     ; preds = %91, %86
  %95 = phi i64 [ %89, %86 ], [ %97, %91 ]
  %96 = phi i32 [ %84, %86 ], [ %92, %91 ]
  %97 = add nsw i64 %95, 1
  %98 = getelementptr inbounds i8, i8* %88, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %91, label %101

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 12
  %103 = load i32, i32* %102, align 8, !tbaa !8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 20
  %107 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %106, align 8, !tbaa !9
  %108 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %107, i64 0, i32 0
  %109 = load i32, i32* %108, align 4, !tbaa !10
  %110 = icmp sgt i32 %109, %96
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %105, %101
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 13
  br label %141

; <label>:113:                                    ; preds = %105
  %114 = add nsw i32 %103, -1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %107, i64 %115, i32 0
  %117 = load i32, i32* %116, align 4, !tbaa !10
  %118 = icmp sgt i32 %117, %96
  br i1 %118, label %119, label %135

; <label>:119:                                    ; preds = %113
  %120 = icmp eq i32 %103, 2
  br i1 %120, label %135, label %121

; <label>:121:                                    ; preds = %119
  br label %122

; <label>:122:                                    ; preds = %121, %122
  %123 = phi i32 [ %132, %122 ], [ %114, %121 ]
  %124 = phi i32 [ %131, %122 ], [ 0, %121 ]
  %125 = add i32 %124, %123
  %126 = lshr i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %107, i64 %127, i32 0
  %129 = load i32, i32* %128, align 4, !tbaa !10
  %130 = icmp sgt i32 %129, %96
  %131 = select i1 %130, i32 %124, i32 %126
  %132 = select i1 %130, i32 %126, i32 %123
  %133 = add i32 %132, -1
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %122, label %135

; <label>:135:                                    ; preds = %122, %119, %113
  %136 = phi i32 [ %114, %113 ], [ 0, %119 ], [ %131, %122 ]
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %107, i64 %137, i32 0
  %139 = load i32, i32* %138, align 4, !tbaa !10
  %140 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %107, i64 %137, i32 1
  br label %141

; <label>:141:                                    ; preds = %135, %111
  %142 = phi i32 [ -1, %111 ], [ %139, %135 ]
  %143 = phi i32* [ %112, %111 ], [ %140, %135 ]
  %144 = load i32, i32* %143, align 4, !tbaa !12
  %145 = icmp slt i32 %142, %96
  br i1 %145, label %146, label %237

; <label>:146:                                    ; preds = %141
  %147 = sext i32 %142 to i64
  %148 = sext i32 %96 to i64
  %149 = sub nsw i64 %148, %147
  %150 = icmp ult i64 %149, 8
  br i1 %150, label %225, label %151

; <label>:151:                                    ; preds = %146
  %152 = and i64 %149, -8
  %153 = add nsw i64 %152, %147
  %154 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %144, i32 0
  %155 = add nsw i64 %152, -8
  %156 = lshr exact i64 %155, 3
  %157 = add nuw nsw i64 %156, 1
  %158 = and i64 %157, 1
  %159 = icmp eq i64 %155, 0
  br i1 %159, label %195, label %160

; <label>:160:                                    ; preds = %151
  %161 = sub nsw i64 %157, %158
  br label %162

; <label>:162:                                    ; preds = %162, %160
  %163 = phi i64 [ 0, %160 ], [ %192, %162 ]
  %164 = phi <4 x i32> [ %154, %160 ], [ %190, %162 ]
  %165 = phi <4 x i32> [ zeroinitializer, %160 ], [ %191, %162 ]
  %166 = phi i64 [ %161, %160 ], [ %193, %162 ]
  %167 = add i64 %163, %147
  %168 = add nsw i64 %167, 1
  %169 = getelementptr inbounds i8, i8* %88, i64 %168
  %170 = bitcast i8* %169 to <4 x i8>*
  %171 = load <4 x i8>, <4 x i8>* %170, align 1, !tbaa !13
  %172 = getelementptr i8, i8* %169, i64 4
  %173 = bitcast i8* %172 to <4 x i8>*
  %174 = load <4 x i8>, <4 x i8>* %173, align 1, !tbaa !13
  %175 = sext <4 x i8> %171 to <4 x i32>
  %176 = sext <4 x i8> %174 to <4 x i32>
  %177 = add nsw <4 x i32> %164, %175
  %178 = add nsw <4 x i32> %165, %176
  %179 = or i64 %163, 8
  %180 = add i64 %179, %147
  %181 = add nsw i64 %180, 1
  %182 = getelementptr inbounds i8, i8* %88, i64 %181
  %183 = bitcast i8* %182 to <4 x i8>*
  %184 = load <4 x i8>, <4 x i8>* %183, align 1, !tbaa !13
  %185 = getelementptr i8, i8* %182, i64 4
  %186 = bitcast i8* %185 to <4 x i8>*
  %187 = load <4 x i8>, <4 x i8>* %186, align 1, !tbaa !13
  %188 = sext <4 x i8> %184 to <4 x i32>
  %189 = sext <4 x i8> %187 to <4 x i32>
  %190 = add nsw <4 x i32> %177, %188
  %191 = add nsw <4 x i32> %178, %189
  %192 = add i64 %163, 16
  %193 = add i64 %166, -2
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %162, !llvm.loop !84

; <label>:195:                                    ; preds = %162, %151
  %196 = phi <4 x i32> [ undef, %151 ], [ %190, %162 ]
  %197 = phi <4 x i32> [ undef, %151 ], [ %191, %162 ]
  %198 = phi i64 [ 0, %151 ], [ %192, %162 ]
  %199 = phi <4 x i32> [ %154, %151 ], [ %190, %162 ]
  %200 = phi <4 x i32> [ zeroinitializer, %151 ], [ %191, %162 ]
  %201 = icmp eq i64 %158, 0
  br i1 %201, label %215, label %202

; <label>:202:                                    ; preds = %195
  %203 = add i64 %198, %147
  %204 = add nsw i64 %203, 1
  %205 = getelementptr inbounds i8, i8* %88, i64 %204
  %206 = getelementptr i8, i8* %205, i64 4
  %207 = bitcast i8* %206 to <4 x i8>*
  %208 = load <4 x i8>, <4 x i8>* %207, align 1, !tbaa !13
  %209 = sext <4 x i8> %208 to <4 x i32>
  %210 = add nsw <4 x i32> %200, %209
  %211 = bitcast i8* %205 to <4 x i8>*
  %212 = load <4 x i8>, <4 x i8>* %211, align 1, !tbaa !13
  %213 = sext <4 x i8> %212 to <4 x i32>
  %214 = add nsw <4 x i32> %199, %213
  br label %215

; <label>:215:                                    ; preds = %195, %202
  %216 = phi <4 x i32> [ %196, %195 ], [ %214, %202 ]
  %217 = phi <4 x i32> [ %197, %195 ], [ %210, %202 ]
  %218 = add <4 x i32> %217, %216
  %219 = shufflevector <4 x i32> %218, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %220 = add <4 x i32> %218, %219
  %221 = shufflevector <4 x i32> %220, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %222 = add <4 x i32> %220, %221
  %223 = extractelement <4 x i32> %222, i32 0
  %224 = icmp eq i64 %149, %152
  br i1 %224, label %237, label %225

; <label>:225:                                    ; preds = %215, %146
  %226 = phi i64 [ %147, %146 ], [ %153, %215 ]
  %227 = phi i32 [ %144, %146 ], [ %223, %215 ]
  br label %228

; <label>:228:                                    ; preds = %225, %228
  %229 = phi i64 [ %231, %228 ], [ %226, %225 ]
  %230 = phi i32 [ %235, %228 ], [ %227, %225 ]
  %231 = add nsw i64 %229, 1
  %232 = getelementptr inbounds i8, i8* %88, i64 %231
  %233 = load i8, i8* %232, align 1, !tbaa !13
  %234 = sext i8 %233 to i32
  %235 = add nsw i32 %230, %234
  %236 = icmp eq i64 %231, %148
  br i1 %236, label %237, label %228, !llvm.loop !85

; <label>:237:                                    ; preds = %228, %215, %141
  %238 = phi i32 [ %144, %141 ], [ %223, %215 ], [ %235, %228 ]
  br i1 %104, label %245, label %239

; <label>:239:                                    ; preds = %237
  %240 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 20
  %241 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %240, align 8, !tbaa !9
  %242 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %241, i64 0, i32 0
  %243 = load i32, i32* %242, align 4, !tbaa !10
  %244 = icmp slt i32 %243, %72
  br i1 %244, label %247, label %245

; <label>:245:                                    ; preds = %239, %237
  %246 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 13
  br label %275

; <label>:247:                                    ; preds = %239
  %248 = add nsw i32 %103, -1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %241, i64 %249, i32 0
  %251 = load i32, i32* %250, align 4, !tbaa !10
  %252 = icmp slt i32 %251, %72
  br i1 %252, label %269, label %253

; <label>:253:                                    ; preds = %247
  %254 = icmp eq i32 %103, 2
  br i1 %254, label %269, label %255

; <label>:255:                                    ; preds = %253
  br label %256

; <label>:256:                                    ; preds = %255, %256
  %257 = phi i32 [ %266, %256 ], [ %248, %255 ]
  %258 = phi i32 [ %265, %256 ], [ 0, %255 ]
  %259 = add i32 %258, %257
  %260 = lshr i32 %259, 1
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %241, i64 %261, i32 0
  %263 = load i32, i32* %262, align 4, !tbaa !10
  %264 = icmp sge i32 %263, %72
  %265 = select i1 %264, i32 %258, i32 %260
  %266 = select i1 %264, i32 %260, i32 %257
  %267 = add i32 %266, -1
  %268 = icmp ult i32 %265, %267
  br i1 %268, label %256, label %269

; <label>:269:                                    ; preds = %256, %247, %253
  %270 = phi i32 [ %248, %247 ], [ 0, %253 ], [ %265, %256 ]
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %241, i64 %271, i32 0
  %273 = load i32, i32* %272, align 4, !tbaa !10
  %274 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %241, i64 %271, i32 1
  br label %275

; <label>:275:                                    ; preds = %269, %245
  %276 = phi i32 [ -1, %245 ], [ %273, %269 ]
  %277 = phi i32* [ %246, %245 ], [ %274, %269 ]
  %278 = load i32, i32* %277, align 4, !tbaa !12
  %279 = icmp slt i32 %276, %73
  br i1 %279, label %280, label %370

; <label>:280:                                    ; preds = %275
  %281 = sext i32 %276 to i64
  %282 = sub nsw i64 %90, %281
  %283 = icmp ult i64 %282, 8
  br i1 %283, label %358, label %284

; <label>:284:                                    ; preds = %280
  %285 = and i64 %282, -8
  %286 = add nsw i64 %285, %281
  %287 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %278, i32 0
  %288 = add nsw i64 %285, -8
  %289 = lshr exact i64 %288, 3
  %290 = add nuw nsw i64 %289, 1
  %291 = and i64 %290, 1
  %292 = icmp eq i64 %288, 0
  br i1 %292, label %328, label %293

; <label>:293:                                    ; preds = %284
  %294 = sub nsw i64 %290, %291
  br label %295

; <label>:295:                                    ; preds = %295, %293
  %296 = phi i64 [ 0, %293 ], [ %325, %295 ]
  %297 = phi <4 x i32> [ %287, %293 ], [ %323, %295 ]
  %298 = phi <4 x i32> [ zeroinitializer, %293 ], [ %324, %295 ]
  %299 = phi i64 [ %294, %293 ], [ %326, %295 ]
  %300 = add i64 %296, %281
  %301 = add nsw i64 %300, 1
  %302 = getelementptr inbounds i8, i8* %88, i64 %301
  %303 = bitcast i8* %302 to <4 x i8>*
  %304 = load <4 x i8>, <4 x i8>* %303, align 1, !tbaa !13
  %305 = getelementptr i8, i8* %302, i64 4
  %306 = bitcast i8* %305 to <4 x i8>*
  %307 = load <4 x i8>, <4 x i8>* %306, align 1, !tbaa !13
  %308 = sext <4 x i8> %304 to <4 x i32>
  %309 = sext <4 x i8> %307 to <4 x i32>
  %310 = add nsw <4 x i32> %297, %308
  %311 = add nsw <4 x i32> %298, %309
  %312 = or i64 %296, 8
  %313 = add i64 %312, %281
  %314 = add nsw i64 %313, 1
  %315 = getelementptr inbounds i8, i8* %88, i64 %314
  %316 = bitcast i8* %315 to <4 x i8>*
  %317 = load <4 x i8>, <4 x i8>* %316, align 1, !tbaa !13
  %318 = getelementptr i8, i8* %315, i64 4
  %319 = bitcast i8* %318 to <4 x i8>*
  %320 = load <4 x i8>, <4 x i8>* %319, align 1, !tbaa !13
  %321 = sext <4 x i8> %317 to <4 x i32>
  %322 = sext <4 x i8> %320 to <4 x i32>
  %323 = add nsw <4 x i32> %310, %321
  %324 = add nsw <4 x i32> %311, %322
  %325 = add i64 %296, 16
  %326 = add i64 %299, -2
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %295, !llvm.loop !86

; <label>:328:                                    ; preds = %295, %284
  %329 = phi <4 x i32> [ undef, %284 ], [ %323, %295 ]
  %330 = phi <4 x i32> [ undef, %284 ], [ %324, %295 ]
  %331 = phi i64 [ 0, %284 ], [ %325, %295 ]
  %332 = phi <4 x i32> [ %287, %284 ], [ %323, %295 ]
  %333 = phi <4 x i32> [ zeroinitializer, %284 ], [ %324, %295 ]
  %334 = icmp eq i64 %291, 0
  br i1 %334, label %348, label %335

; <label>:335:                                    ; preds = %328
  %336 = add i64 %331, %281
  %337 = add nsw i64 %336, 1
  %338 = getelementptr inbounds i8, i8* %88, i64 %337
  %339 = getelementptr i8, i8* %338, i64 4
  %340 = bitcast i8* %339 to <4 x i8>*
  %341 = load <4 x i8>, <4 x i8>* %340, align 1, !tbaa !13
  %342 = sext <4 x i8> %341 to <4 x i32>
  %343 = add nsw <4 x i32> %333, %342
  %344 = bitcast i8* %338 to <4 x i8>*
  %345 = load <4 x i8>, <4 x i8>* %344, align 1, !tbaa !13
  %346 = sext <4 x i8> %345 to <4 x i32>
  %347 = add nsw <4 x i32> %332, %346
  br label %348

; <label>:348:                                    ; preds = %328, %335
  %349 = phi <4 x i32> [ %329, %328 ], [ %347, %335 ]
  %350 = phi <4 x i32> [ %330, %328 ], [ %343, %335 ]
  %351 = add <4 x i32> %350, %349
  %352 = shufflevector <4 x i32> %351, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %353 = add <4 x i32> %351, %352
  %354 = shufflevector <4 x i32> %353, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %355 = add <4 x i32> %353, %354
  %356 = extractelement <4 x i32> %355, i32 0
  %357 = icmp eq i64 %282, %285
  br i1 %357, label %370, label %358

; <label>:358:                                    ; preds = %348, %280
  %359 = phi i64 [ %281, %280 ], [ %286, %348 ]
  %360 = phi i32 [ %278, %280 ], [ %356, %348 ]
  br label %361

; <label>:361:                                    ; preds = %358, %361
  %362 = phi i64 [ %364, %361 ], [ %359, %358 ]
  %363 = phi i32 [ %368, %361 ], [ %360, %358 ]
  %364 = add nsw i64 %362, 1
  %365 = getelementptr inbounds i8, i8* %88, i64 %364
  %366 = load i8, i8* %365, align 1, !tbaa !13
  %367 = sext i8 %366 to i32
  %368 = add nsw i32 %363, %367
  %369 = icmp eq i64 %364, %90
  br i1 %369, label %370, label %361, !llvm.loop !87

; <label>:370:                                    ; preds = %361, %348, %275
  %371 = phi i32 [ %278, %275 ], [ %356, %348 ], [ %368, %361 ]
  %372 = icmp eq i32 %238, %371
  br i1 %372, label %516, label %373

; <label>:373:                                    ; preds = %370, %75, %60
  %374 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 19
  %375 = load i8*, i8** %374, align 8, !tbaa !2
  %376 = icmp eq i8* %375, null
  br i1 %376, label %513, label %377

; <label>:377:                                    ; preds = %373
  %378 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 12
  %379 = load i32, i32* %378, align 8, !tbaa !8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %387, label %381

; <label>:381:                                    ; preds = %377
  %382 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 20
  %383 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %382, align 8, !tbaa !9
  %384 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %383, i64 0, i32 0
  %385 = load i32, i32* %384, align 4, !tbaa !10
  %386 = icmp slt i32 %385, %72
  br i1 %386, label %389, label %387

; <label>:387:                                    ; preds = %381, %377
  %388 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 13
  br label %417

; <label>:389:                                    ; preds = %381
  %390 = add nsw i32 %379, -1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %383, i64 %391, i32 0
  %393 = load i32, i32* %392, align 4, !tbaa !10
  %394 = icmp slt i32 %393, %72
  br i1 %394, label %411, label %395

; <label>:395:                                    ; preds = %389
  %396 = icmp eq i32 %379, 2
  br i1 %396, label %411, label %397

; <label>:397:                                    ; preds = %395
  br label %398

; <label>:398:                                    ; preds = %397, %398
  %399 = phi i32 [ %408, %398 ], [ %390, %397 ]
  %400 = phi i32 [ %407, %398 ], [ 0, %397 ]
  %401 = add i32 %400, %399
  %402 = lshr i32 %401, 1
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %383, i64 %403, i32 0
  %405 = load i32, i32* %404, align 4, !tbaa !10
  %406 = icmp sge i32 %405, %72
  %407 = select i1 %406, i32 %400, i32 %402
  %408 = select i1 %406, i32 %402, i32 %399
  %409 = add i32 %408, -1
  %410 = icmp ult i32 %407, %409
  br i1 %410, label %398, label %411

; <label>:411:                                    ; preds = %398, %389, %395
  %412 = phi i32 [ %390, %389 ], [ 0, %395 ], [ %407, %398 ]
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %383, i64 %413, i32 0
  %415 = load i32, i32* %414, align 4, !tbaa !10
  %416 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %383, i64 %413, i32 1
  br label %417

; <label>:417:                                    ; preds = %411, %387
  %418 = phi i32 [ -1, %387 ], [ %415, %411 ]
  %419 = phi i32* [ %388, %387 ], [ %416, %411 ]
  %420 = load i32, i32* %419, align 4, !tbaa !12
  %421 = icmp slt i32 %418, %73
  br i1 %421, label %422, label %513

; <label>:422:                                    ; preds = %417
  %423 = sext i32 %418 to i64
  %424 = sext i32 %73 to i64
  %425 = sub nsw i64 %424, %423
  %426 = icmp ult i64 %425, 8
  br i1 %426, label %501, label %427

; <label>:427:                                    ; preds = %422
  %428 = and i64 %425, -8
  %429 = add nsw i64 %428, %423
  %430 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %420, i32 0
  %431 = add nsw i64 %428, -8
  %432 = lshr exact i64 %431, 3
  %433 = add nuw nsw i64 %432, 1
  %434 = and i64 %433, 1
  %435 = icmp eq i64 %431, 0
  br i1 %435, label %471, label %436

; <label>:436:                                    ; preds = %427
  %437 = sub nsw i64 %433, %434
  br label %438

; <label>:438:                                    ; preds = %438, %436
  %439 = phi i64 [ 0, %436 ], [ %468, %438 ]
  %440 = phi <4 x i32> [ %430, %436 ], [ %466, %438 ]
  %441 = phi <4 x i32> [ zeroinitializer, %436 ], [ %467, %438 ]
  %442 = phi i64 [ %437, %436 ], [ %469, %438 ]
  %443 = add i64 %439, %423
  %444 = add nsw i64 %443, 1
  %445 = getelementptr inbounds i8, i8* %375, i64 %444
  %446 = bitcast i8* %445 to <4 x i8>*
  %447 = load <4 x i8>, <4 x i8>* %446, align 1, !tbaa !13
  %448 = getelementptr i8, i8* %445, i64 4
  %449 = bitcast i8* %448 to <4 x i8>*
  %450 = load <4 x i8>, <4 x i8>* %449, align 1, !tbaa !13
  %451 = sext <4 x i8> %447 to <4 x i32>
  %452 = sext <4 x i8> %450 to <4 x i32>
  %453 = add nsw <4 x i32> %440, %451
  %454 = add nsw <4 x i32> %441, %452
  %455 = or i64 %439, 8
  %456 = add i64 %455, %423
  %457 = add nsw i64 %456, 1
  %458 = getelementptr inbounds i8, i8* %375, i64 %457
  %459 = bitcast i8* %458 to <4 x i8>*
  %460 = load <4 x i8>, <4 x i8>* %459, align 1, !tbaa !13
  %461 = getelementptr i8, i8* %458, i64 4
  %462 = bitcast i8* %461 to <4 x i8>*
  %463 = load <4 x i8>, <4 x i8>* %462, align 1, !tbaa !13
  %464 = sext <4 x i8> %460 to <4 x i32>
  %465 = sext <4 x i8> %463 to <4 x i32>
  %466 = add nsw <4 x i32> %453, %464
  %467 = add nsw <4 x i32> %454, %465
  %468 = add i64 %439, 16
  %469 = add i64 %442, -2
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %471, label %438, !llvm.loop !88

; <label>:471:                                    ; preds = %438, %427
  %472 = phi <4 x i32> [ undef, %427 ], [ %466, %438 ]
  %473 = phi <4 x i32> [ undef, %427 ], [ %467, %438 ]
  %474 = phi i64 [ 0, %427 ], [ %468, %438 ]
  %475 = phi <4 x i32> [ %430, %427 ], [ %466, %438 ]
  %476 = phi <4 x i32> [ zeroinitializer, %427 ], [ %467, %438 ]
  %477 = icmp eq i64 %434, 0
  br i1 %477, label %491, label %478

; <label>:478:                                    ; preds = %471
  %479 = add i64 %474, %423
  %480 = add nsw i64 %479, 1
  %481 = getelementptr inbounds i8, i8* %375, i64 %480
  %482 = getelementptr i8, i8* %481, i64 4
  %483 = bitcast i8* %482 to <4 x i8>*
  %484 = load <4 x i8>, <4 x i8>* %483, align 1, !tbaa !13
  %485 = sext <4 x i8> %484 to <4 x i32>
  %486 = add nsw <4 x i32> %476, %485
  %487 = bitcast i8* %481 to <4 x i8>*
  %488 = load <4 x i8>, <4 x i8>* %487, align 1, !tbaa !13
  %489 = sext <4 x i8> %488 to <4 x i32>
  %490 = add nsw <4 x i32> %475, %489
  br label %491

; <label>:491:                                    ; preds = %471, %478
  %492 = phi <4 x i32> [ %472, %471 ], [ %490, %478 ]
  %493 = phi <4 x i32> [ %473, %471 ], [ %486, %478 ]
  %494 = add <4 x i32> %493, %492
  %495 = shufflevector <4 x i32> %494, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %496 = add <4 x i32> %494, %495
  %497 = shufflevector <4 x i32> %496, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %498 = add <4 x i32> %496, %497
  %499 = extractelement <4 x i32> %498, i32 0
  %500 = icmp eq i64 %425, %428
  br i1 %500, label %513, label %501

; <label>:501:                                    ; preds = %491, %422
  %502 = phi i64 [ %423, %422 ], [ %429, %491 ]
  %503 = phi i32 [ %420, %422 ], [ %499, %491 ]
  br label %504

; <label>:504:                                    ; preds = %501, %504
  %505 = phi i64 [ %507, %504 ], [ %502, %501 ]
  %506 = phi i32 [ %511, %504 ], [ %503, %501 ]
  %507 = add nsw i64 %505, 1
  %508 = getelementptr inbounds i8, i8* %375, i64 %507
  %509 = load i8, i8* %508, align 1, !tbaa !13
  %510 = sext i8 %509 to i32
  %511 = add nsw i32 %506, %510
  %512 = icmp eq i64 %507, %424
  br i1 %512, label %513, label %504, !llvm.loop !89

; <label>:513:                                    ; preds = %504, %491, %373, %417
  %514 = phi i32 [ -1, %373 ], [ %420, %417 ], [ %499, %491 ], [ %511, %504 ]
  tail call void @luaD_hook(%struct.lua_State* %0, i32 2, i32 %514, i32 0, i32 0) #9
  %515 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  br label %516

; <label>:516:                                    ; preds = %91, %79, %370, %513
  %517 = phi i32** [ %76, %79 ], [ %76, %370 ], [ %515, %513 ], [ %76, %91 ]
  store i32* %13, i32** %517, align 8, !tbaa !24
  br label %518

; <label>:518:                                    ; preds = %57, %516
  %519 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %520 = load i8, i8* %519, align 2, !tbaa !90
  %521 = icmp eq i8 %520, 1
  br i1 %521, label %522, label %529

; <label>:522:                                    ; preds = %518
  br i1 %22, label %523, label %524

; <label>:523:                                    ; preds = %522
  store i32 1, i32* %16, align 4, !tbaa !27
  br label %524

; <label>:524:                                    ; preds = %523, %522
  %525 = load i32*, i32** %15, align 8, !tbaa !13
  %526 = getelementptr inbounds i32, i32* %525, i64 -1
  store i32* %526, i32** %15, align 8, !tbaa !13
  %527 = load i16, i16* %30, align 2, !tbaa !23
  %528 = or i16 %527, 32
  store i16 %528, i16* %30, align 2, !tbaa !23
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 1) #12
  unreachable

; <label>:529:                                    ; preds = %518, %26, %34, %9
  %530 = phi i32 [ 1, %34 ], [ 0, %9 ], [ 1, %26 ], [ 1, %518 ]
  ret i32 %530
}

declare hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i8* @getobjname(%struct.Proto*, i32, i32, i8**) unnamed_addr #4 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = add nsw i32 %2, 1
  %8 = tail call i8* @luaF_getlocalname(%struct.Proto* %0, i32 %7, i32 %1) #9
  store i8* %8, i8** %3, align 8, !tbaa !30
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %222

; <label>:10:                                     ; preds = %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %222

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %14 = load i32*, i32** %13, align 8, !tbaa !35
  %15 = zext i32 %1 to i64
  br label %16

; <label>:16:                                     ; preds = %59, %12
  %17 = phi i64 [ 0, %12 ], [ %62, %59 ]
  %18 = phi i32 [ -1, %12 ], [ %61, %59 ]
  %19 = phi i32 [ 0, %12 ], [ %60, %59 ]
  %20 = getelementptr inbounds i32, i32* %14, i64 %17
  %21 = load i32, i32* %20, align 4, !tbaa !12
  %22 = lshr i32 %21, 7
  %23 = and i32 %22, 255
  %24 = trunc i32 %21 to i7
  switch i7 %24, label %40 [
    i7 6, label %25
    i7 -51, label %27
    i7 -59, label %30
    i7 -58, label %30
    i7 57, label %32
  ]

; <label>:25:                                     ; preds = %16
  %26 = icmp sgt i32 %23, %2
  br i1 %26, label %59, label %49

; <label>:27:                                     ; preds = %16
  %28 = add nuw nsw i32 %23, 2
  %29 = icmp sgt i32 %28, %2
  br i1 %29, label %59, label %54

; <label>:30:                                     ; preds = %16, %16
  %31 = icmp sgt i32 %23, %2
  br i1 %31, label %59, label %54

; <label>:32:                                     ; preds = %16
  %33 = trunc i64 %17 to i32
  %34 = add i32 %33, -16777214
  %35 = add i32 %34, %22
  %36 = icmp sle i32 %35, %1
  %37 = icmp sgt i32 %35, %19
  %38 = and i1 %36, %37
  %39 = select i1 %38, i32 %35, i32 %19
  br label %59

; <label>:40:                                     ; preds = %16
  %41 = and i32 %21, 127
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = and i8 %44, 8
  %46 = icmp ne i8 %45, 0
  %47 = icmp eq i32 %23, %2
  %48 = and i1 %47, %46
  br i1 %48, label %54, label %59

; <label>:49:                                     ; preds = %25
  %50 = lshr i32 %21, 16
  %51 = and i32 %50, 255
  %52 = add nuw nsw i32 %23, %51
  %53 = icmp slt i32 %52, %2
  br i1 %53, label %59, label %54

; <label>:54:                                     ; preds = %49, %40, %30, %27
  %55 = sext i32 %19 to i64
  %56 = icmp slt i64 %17, %55
  %57 = trunc i64 %17 to i32
  %58 = select i1 %56, i32 -1, i32 %57
  br label %59

; <label>:59:                                     ; preds = %54, %49, %40, %32, %30, %27, %25
  %60 = phi i32 [ %19, %54 ], [ %19, %49 ], [ %19, %40 ], [ %19, %30 ], [ %19, %27 ], [ %39, %32 ], [ %19, %25 ]
  %61 = phi i32 [ %58, %54 ], [ %18, %49 ], [ %18, %40 ], [ %18, %30 ], [ %18, %27 ], [ %18, %32 ], [ %18, %25 ]
  %62 = add nuw nsw i64 %17, 1
  %63 = icmp eq i64 %62, %15
  br i1 %63, label %64, label %16

; <label>:64:                                     ; preds = %59
  %65 = icmp eq i32 %61, -1
  br i1 %65, label %222, label %66

; <label>:66:                                     ; preds = %64
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds i32, i32* %14, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %70 = trunc i32 %69 to i7
  switch i7 %70, label %222 [
    i7 0, label %71
    i7 9, label %79
    i7 10, label %109
    i7 11, label %130
    i7 12, label %131
    i7 7, label %159
    i7 3, label %171
    i7 4, label %171
    i7 18, label %196
  ]

; <label>:71:                                     ; preds = %66
  %72 = lshr i32 %69, 16
  %73 = and i32 %72, 255
  %74 = lshr i32 %69, 7
  %75 = and i32 %74, 255
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %222

; <label>:77:                                     ; preds = %71
  %78 = tail call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %61, i32 %73, i8** %3)
  br label %222

; <label>:79:                                     ; preds = %66
  %80 = lshr i32 %69, 24
  %81 = getelementptr %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %82 = load %struct.TValue*, %struct.TValue** %81, align 8, !tbaa !91
  %83 = zext i32 %80 to i64
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 %83, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !38
  %86 = and i8 %85, 15
  %87 = icmp eq i8 %86, 4
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %79
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 %83, i32 0, i32 0
  %90 = bitcast %struct.GCObject** %89 to i8**
  %91 = load i8*, i8** %90, align 8, !tbaa !13
  %92 = getelementptr inbounds i8, i8* %91, i64 24
  br label %93

; <label>:93:                                     ; preds = %79, %88
  %94 = phi i8* [ %92, %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %79 ]
  store i8* %94, i8** %3, align 8, !tbaa !30
  %95 = lshr i32 %69, 16
  %96 = and i32 %95, 255
  %97 = getelementptr %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %98 = load %struct.Upvaldesc*, %struct.Upvaldesc** %97, align 8, !tbaa !76
  %99 = zext i32 %96 to i64
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %98, i64 %99, i32 0
  %101 = load %struct.TString*, %struct.TString** %100, align 8, !tbaa !77
  %102 = icmp eq %struct.TString* %101, null
  %103 = getelementptr inbounds %struct.TString, %struct.TString* %101, i64 1
  %104 = bitcast %struct.TString* %103 to i8*
  %105 = select i1 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %104
  %106 = tail call i32 @strcmp(i8* nonnull %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #10
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %222

; <label>:109:                                    ; preds = %66
  %110 = lshr i32 %69, 24
  %111 = tail call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %61, i32 %110, i8** %3) #9
  %112 = icmp eq i8* %111, null
  br i1 %112, label %116, label %113

; <label>:113:                                    ; preds = %109
  %114 = load i8, i8* %111, align 1, !tbaa !13
  %115 = icmp eq i8 %114, 99
  br i1 %115, label %117, label %116

; <label>:116:                                    ; preds = %113, %109
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !30
  br label %117

; <label>:117:                                    ; preds = %113, %116
  %118 = lshr i32 %69, 16
  %119 = and i32 %118, 255
  %120 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #9
  %121 = call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %61, i32 %119, i8** nonnull %6) #9
  %122 = load i8*, i8** %6, align 8, !tbaa !30
  %123 = icmp eq i8* %122, null
  br i1 %123, label %128, label %124

; <label>:124:                                    ; preds = %117
  %125 = call i32 @strcmp(i8* nonnull %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #10
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %128

; <label>:128:                                    ; preds = %117, %124
  %129 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %117 ], [ %127, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #9
  br label %222

; <label>:130:                                    ; preds = %66
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8, !tbaa !30
  br label %222

; <label>:131:                                    ; preds = %66
  %132 = lshr i32 %69, 24
  %133 = getelementptr %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %134 = load %struct.TValue*, %struct.TValue** %133, align 8, !tbaa !91
  %135 = zext i32 %132 to i64
  %136 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i64 %135, i32 1
  %137 = load i8, i8* %136, align 8, !tbaa !38
  %138 = and i8 %137, 15
  %139 = icmp eq i8 %138, 4
  br i1 %139, label %140, label %145

; <label>:140:                                    ; preds = %131
  %141 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i64 %135, i32 0, i32 0
  %142 = bitcast %struct.GCObject** %141 to i8**
  %143 = load i8*, i8** %142, align 8, !tbaa !13
  %144 = getelementptr inbounds i8, i8* %143, i64 24
  br label %145

; <label>:145:                                    ; preds = %131, %140
  %146 = phi i8* [ %144, %140 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %131 ]
  store i8* %146, i8** %3, align 8, !tbaa !30
  %147 = lshr i32 %69, 16
  %148 = and i32 %147, 255
  %149 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %149) #9
  %150 = call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %61, i32 %148, i8** nonnull %5) #9
  %151 = load i8*, i8** %5, align 8, !tbaa !30
  %152 = icmp eq i8* %151, null
  br i1 %152, label %157, label %153

; <label>:153:                                    ; preds = %145
  %154 = call i32 @strcmp(i8* nonnull %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #10
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %157

; <label>:157:                                    ; preds = %145, %153
  %158 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %145 ], [ %156, %153 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %149) #9
  br label %222

; <label>:159:                                    ; preds = %66
  %160 = lshr i32 %69, 16
  %161 = and i32 %160, 255
  %162 = getelementptr %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %163 = load %struct.Upvaldesc*, %struct.Upvaldesc** %162, align 8, !tbaa !76
  %164 = zext i32 %161 to i64
  %165 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %163, i64 %164, i32 0
  %166 = load %struct.TString*, %struct.TString** %165, align 8, !tbaa !77
  %167 = icmp eq %struct.TString* %166, null
  %168 = getelementptr inbounds %struct.TString, %struct.TString* %166, i64 1
  %169 = bitcast %struct.TString* %168 to i8*
  %170 = select i1 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %169
  store i8* %170, i8** %3, align 8, !tbaa !30
  br label %222

; <label>:171:                                    ; preds = %66, %66
  %172 = and i32 %69, 127
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %176

; <label>:174:                                    ; preds = %171
  %175 = lshr i32 %69, 15
  br label %182

; <label>:176:                                    ; preds = %171
  %177 = add nsw i32 %61, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %14, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !12
  %181 = lshr i32 %180, 7
  br label %182

; <label>:182:                                    ; preds = %176, %174
  %183 = phi i32 [ %175, %174 ], [ %181, %176 ]
  %184 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %185 = load %struct.TValue*, %struct.TValue** %184, align 8, !tbaa !91
  %186 = zext i32 %183 to i64
  %187 = getelementptr inbounds %struct.TValue, %struct.TValue* %185, i64 %186, i32 1
  %188 = load i8, i8* %187, align 8, !tbaa !38
  %189 = and i8 %188, 15
  %190 = icmp eq i8 %189, 4
  br i1 %190, label %191, label %222

; <label>:191:                                    ; preds = %182
  %192 = getelementptr inbounds %struct.TValue, %struct.TValue* %185, i64 %186, i32 0, i32 0
  %193 = bitcast %struct.GCObject** %192 to i8**
  %194 = load i8*, i8** %193, align 8, !tbaa !13
  %195 = getelementptr inbounds i8, i8* %194, i64 24
  store i8* %195, i8** %3, align 8, !tbaa !30
  br label %222

; <label>:196:                                    ; preds = %66
  %197 = lshr i32 %69, 24
  %198 = trunc i32 %69 to i16
  %199 = icmp slt i16 %198, 0
  br i1 %199, label %200, label %215

; <label>:200:                                    ; preds = %196
  %201 = getelementptr %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %202 = load %struct.TValue*, %struct.TValue** %201, align 8, !tbaa !91
  %203 = zext i32 %197 to i64
  %204 = getelementptr inbounds %struct.TValue, %struct.TValue* %202, i64 %203, i32 1
  %205 = load i8, i8* %204, align 8, !tbaa !38
  %206 = and i8 %205, 15
  %207 = icmp eq i8 %206, 4
  br i1 %207, label %208, label %213

; <label>:208:                                    ; preds = %200
  %209 = getelementptr inbounds %struct.TValue, %struct.TValue* %202, i64 %203, i32 0, i32 0
  %210 = bitcast %struct.GCObject** %209 to i8**
  %211 = load i8*, i8** %210, align 8, !tbaa !13
  %212 = getelementptr inbounds i8, i8* %211, i64 24
  br label %213

; <label>:213:                                    ; preds = %208, %200
  %214 = phi i8* [ %212, %208 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %200 ]
  store i8* %214, i8** %3, align 8, !tbaa !30
  br label %222

; <label>:215:                                    ; preds = %196
  %216 = tail call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %61, i32 %197, i8** %3) #9
  %217 = icmp eq i8* %216, null
  br i1 %217, label %221, label %218

; <label>:218:                                    ; preds = %215
  %219 = load i8, i8* %216, align 1, !tbaa !13
  %220 = icmp eq i8 %219, 99
  br i1 %220, label %222, label %221

; <label>:221:                                    ; preds = %218, %215
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !30
  br label %222

; <label>:222:                                    ; preds = %213, %218, %221, %191, %77, %93, %128, %130, %157, %159, %71, %10, %64, %66, %182, %4
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %4 ], [ null, %182 ], [ null, %66 ], [ null, %64 ], [ null, %10 ], [ null, %71 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %213 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %218 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %221 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %191 ], [ %78, %77 ], [ %108, %93 ], [ %129, %128 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %130 ], [ %158, %157 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %159 ]
  ret i8* %223
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #5

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #5

attributes #0 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 88}
!3 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 40}
!9 = !{!3, !4, i64 96}
!10 = !{!11, !7, i64 0}
!11 = !{!"AbsLineInfo", !7, i64 0, !7, i64 4}
!12 = !{!7, !7, i64 0}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !17, !15}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!19, !4, i64 32}
!19 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !20, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !21, i64 96, !4, i64 160, !22, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192}
!20 = !{!"short", !5, i64 0}
!21 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !20, i64 60, !20, i64 62}
!22 = !{!"long", !5, i64 0}
!23 = !{!21, !20, i64 62}
!24 = !{!19, !4, i64 40}
!25 = !{!19, !4, i64 160}
!26 = !{!19, !7, i64 184}
!27 = !{!19, !7, i64 188}
!28 = !{!19, !7, i64 192}
!29 = !{!21, !4, i64 16}
!30 = !{!4, !4, i64 0}
!31 = !{!32, !4, i64 128}
!32 = !{!"lua_Debug", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !22, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !20, i64 64, !20, i64 66, !5, i64 68, !4, i64 128}
!33 = !{!21, !4, i64 0}
!34 = !{!3, !5, i64 11}
!35 = !{!3, !4, i64 64}
!36 = !{!21, !4, i64 24}
!37 = !{!19, !4, i64 16}
!38 = !{!39, !5, i64 8}
!39 = !{!"TValue", !5, i64 0, !5, i64 8}
!40 = !{!32, !4, i64 32}
!41 = !{!32, !22, i64 40}
!42 = !{!32, !7, i64 52}
!43 = !{!32, !7, i64 56}
!44 = !{!3, !4, i64 112}
!45 = !{!46, !5, i64 8}
!46 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!47 = !{!46, !5, i64 11}
!48 = !{!3, !7, i64 44}
!49 = !{!3, !7, i64 48}
!50 = !{!32, !4, i64 24}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !17, !15}
!53 = !{!32, !7, i64 48}
!54 = !{!32, !5, i64 60}
!55 = !{!32, !5, i64 62}
!56 = !{!32, !5, i64 61}
!57 = !{!3, !5, i64 10}
!58 = !{!32, !5, i64 63}
!59 = !{!19, !4, i64 24}
!60 = !{!32, !4, i64 16}
!61 = !{!32, !20, i64 66}
!62 = !{!32, !20, i64 64}
!63 = !{!3, !7, i64 28}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !17, !15}
!66 = !{!67, !22, i64 24}
!67 = !{!"global_State", !4, i64 0, !4, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !68, i64 48, !39, i64 64, !39, i64 80, !7, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!68 = !{!"stringtable", !4, i64 0, !7, i64 8, !7, i64 12}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !17, !15}
!71 = !{!72, !5, i64 10}
!72 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!73 = !{!74, !4, i64 16}
!74 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!75 = !{!72, !4, i64 24}
!76 = !{!3, !4, i64 80}
!77 = !{!78, !4, i64 0}
!78 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!79 = !{!21, !4, i64 8}
!80 = !{!81, !81, i64 0}
!81 = !{!"long long", !5, i64 0}
!82 = !{!19, !22, i64 168}
!83 = !{!19, !4, i64 56}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !17, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !17, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !17, !15}
!90 = !{!19, !5, i64 10}
!91 = !{!3, !4, i64 56}
