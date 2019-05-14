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

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_getfuncline(%struct.Proto* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %5 = load i8*, i8** %4, align 8, !tbaa !2
  %6 = icmp eq i8* %5, null
  br i1 %6, label %30, label %7

; <label>:7:                                      ; preds = %2
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  %9 = call fastcc i32 @getbaseline(%struct.Proto* nonnull %0, i32 %1, i32* nonnull %3)
  %10 = load i32, i32* %3, align 4, !tbaa !8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4, !tbaa !8
  %12 = icmp slt i32 %10, %1
  br i1 %12, label %13, label %28

; <label>:13:                                     ; preds = %7
  %14 = load i8*, i8** %4, align 8, !tbaa !2
  %15 = load i32, i32* %3, align 4, !tbaa !8
  br label %16

; <label>:16:                                     ; preds = %13, %16
  %17 = phi i32 [ %15, %13 ], [ %25, %16 ]
  %18 = phi i32 [ %11, %13 ], [ %25, %16 ]
  %19 = phi i32 [ %9, %13 ], [ %24, %16 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %14, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %19, %23
  %25 = add nsw i32 %17, 1
  %26 = icmp slt i32 %17, %1
  br i1 %26, label %16, label %27

; <label>:27:                                     ; preds = %16
  store i32 %25, i32* %3, align 4, !tbaa !8
  br label %28

; <label>:28:                                     ; preds = %27, %7
  %29 = phi i32 [ %24, %27 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  br label %30

; <label>:30:                                     ; preds = %2, %28
  %31 = phi i32 [ %29, %28 ], [ -1, %2 ]
  ret i32 %31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @getbaseline(%struct.Proto* nocapture readonly, i32, i32* nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %9 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %9, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !12
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %7, %3
  store i32 -1, i32* %2, align 4, !tbaa !8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  br label %43

; <label>:15:                                     ; preds = %7
  %16 = add nsw i32 %5, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %9, i64 %17, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !12
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %15
  %22 = icmp eq i32 %5, 2
  br i1 %22, label %37, label %23

; <label>:23:                                     ; preds = %21
  br label %24

; <label>:24:                                     ; preds = %23, %24
  %25 = phi i32 [ %34, %24 ], [ %16, %23 ]
  %26 = phi i32 [ %33, %24 ], [ 0, %23 ]
  %27 = add i32 %25, %26
  %28 = lshr i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %9, i64 %29, i32 0
  %31 = load i32, i32* %30, align 4, !tbaa !12
  %32 = icmp sgt i32 %31, %1
  %33 = select i1 %32, i32 %26, i32 %28
  %34 = select i1 %32, i32 %28, i32 %25
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %24, label %37

; <label>:37:                                     ; preds = %24, %21, %15
  %38 = phi i32 [ %16, %15 ], [ 0, %21 ], [ %33, %24 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %9, i64 %39, i32 0
  %41 = load i32, i32* %40, align 4, !tbaa !12
  store i32 %41, i32* %2, align 4, !tbaa !8
  %42 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %9, i64 %39, i32 1
  br label %43

; <label>:43:                                     ; preds = %37, %13
  %44 = phi i32* [ %14, %13 ], [ %42, %37 ]
  %45 = load i32, i32* %44, align 4, !tbaa !8
  ret i32 %45
}

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
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 7
  %13 = load i16, i16* %12, align 2, !tbaa !19
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 4
  %18 = bitcast %union.anon* %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %21 = bitcast i32** %20 to i64*
  store i64 %19, i64* %21, align 8, !tbaa !20
  br label %22

; <label>:22:                                     ; preds = %4, %16
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %9, void (%struct.lua_State*, %struct.lua_Debug*)** %23, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  store i32 %3, i32* %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  store i32 %3, i32* %25, align 4, !tbaa !23
  %26 = and i32 %8, 255
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  store i32 %26, i32* %27, align 8, !tbaa !24
  %28 = icmp eq i32 %8, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %22
  tail call fastcc void @settraps(%struct.CallInfo* %11)
  br label %30

; <label>:30:                                     ; preds = %22, %29
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @settraps(%struct.CallInfo*) unnamed_addr #2 {
  %2 = icmp eq %struct.CallInfo* %0, null
  br i1 %2, label %17, label %3

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %13
  %5 = phi %struct.CallInfo* [ %15, %13 ], [ %0, %3 ]
  %6 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 7
  %7 = load i16, i16* %6, align 2, !tbaa !19
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 4, i32 0, i32 1
  %12 = bitcast i64* %11 to i32*
  store i32 1, i32* %12, align 8, !tbaa !9
  br label %13

; <label>:13:                                     ; preds = %4, %10
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 2
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !tbaa !25
  %16 = icmp eq %struct.CallInfo* %15, null
  br i1 %16, label %17, label %4

; <label>:17:                                     ; preds = %13, %1
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %3 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !tbaa !21
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3 = load i32, i32* %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %3 = load i32, i32* %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: norecurse nounwind uwtable
define i32 @lua_getstack(%struct.lua_State* readonly, i32, %struct.lua_Debug* nocapture) local_unnamed_addr #2 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %30, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !26
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
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !tbaa !26
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
  store %struct.CallInfo* %24, %struct.CallInfo** %29, align 8, !tbaa !27
  br label %30

; <label>:30:                                     ; preds = %28, %22, %3
  %31 = phi i32 [ 0, %3 ], [ 1, %28 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaG_findlocal(%struct.lua_State* nocapture readonly, %struct.CallInfo* readonly, i32, %union.StackValue**) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !19
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %4
  %13 = icmp slt i32 %2, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %12
  %15 = sub nsw i32 0, %2
  %16 = tail call fastcc i8* @findvararg(%struct.CallInfo* nonnull %1, i32 %15, %union.StackValue** %3)
  br label %58

; <label>:17:                                     ; preds = %12
  %18 = bitcast %union.StackValue* %6 to %struct.LClosure**
  %19 = load %struct.LClosure*, %struct.LClosure** %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %19, i64 0, i32 5
  %21 = load %struct.Proto*, %struct.Proto** %20, align 8, !tbaa !9
  %22 = tail call fastcc i32 @currentpc(%struct.CallInfo* nonnull %1)
  %23 = tail call i8* @luaF_getlocalname(%struct.Proto* %21, i32 %2, i32 %22) #8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %51

; <label>:25:                                     ; preds = %4, %17
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8, !tbaa !14
  %28 = icmp eq %struct.CallInfo* %27, %1
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %35

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %33 = load %struct.CallInfo*, %struct.CallInfo** %32, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i64 0, i32 0
  br label %35

; <label>:35:                                     ; preds = %31, %29
  %36 = phi %union.StackValue** [ %30, %29 ], [ %34, %31 ]
  %37 = bitcast %union.StackValue** %36 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !26
  %39 = ptrtoint %union.StackValue* %7 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 4
  %42 = sext i32 %2 to i64
  %43 = icmp sge i64 %41, %42
  %44 = icmp sgt i32 %2, 0
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %58

; <label>:46:                                     ; preds = %35
  %47 = load i16, i16* %8, align 2, !tbaa !19
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  br label %51

; <label>:51:                                     ; preds = %46, %17
  %52 = phi i8* [ %23, %17 ], [ %50, %46 ]
  %53 = icmp eq %union.StackValue** %3, null
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %51
  %55 = add nsw i32 %2, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %56
  store %union.StackValue* %57, %union.StackValue** %3, align 8, !tbaa !26
  br label %58

; <label>:58:                                     ; preds = %35, %54, %51, %14
  %59 = phi i8* [ %16, %14 ], [ %52, %51 ], [ %52, %54 ], [ null, %35 ]
  ret i8* %59
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i8* @findvararg(%struct.CallInfo* nocapture readonly, i32, %union.StackValue** nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 0
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !29
  %6 = bitcast %union.StackValue* %5 to %struct.LClosure**
  %7 = load %struct.LClosure*, %struct.LClosure** %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i64 0, i32 5
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !31
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 4
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 2
  %17 = load i32, i32* %16, align 4, !tbaa !9
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %26, label %19

; <label>:19:                                     ; preds = %13
  %20 = sext i32 %17 to i64
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 %21
  %23 = add nsw i32 %1, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 %24
  store %union.StackValue* %25, %union.StackValue** %2, align 8, !tbaa !26
  br label %26

; <label>:26:                                     ; preds = %3, %13, %19
  %27 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %19 ], [ null, %13 ], [ null, %3 ]
  ret i8* %27
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @currentpc(%struct.CallInfo* nocapture readonly) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 4
  %3 = bitcast %union.anon* %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = bitcast %struct.CallInfo* %0 to %struct.LClosure***
  %6 = load %struct.LClosure**, %struct.LClosure*** %5, align 8, !tbaa !29
  %7 = load %struct.LClosure*, %struct.LClosure** %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i64 0, i32 5
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = bitcast i32** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !32
  %13 = sub i64 %4, %12
  %14 = lshr exact i64 %13, 2
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %15, -1
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i8* @lua_getlocal(%struct.lua_State* nocapture, %struct.lua_Debug* readonly, i32) local_unnamed_addr #0 {
  %4 = alloca %union.StackValue*, align 8
  %5 = icmp eq %struct.lua_Debug* %1, null
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !9
  %11 = icmp eq i8 %10, 86
  br i1 %11, label %12, label %40

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 0, i32 0
  %14 = bitcast %struct.GCObject** %13 to %struct.LClosure**
  %15 = load %struct.LClosure*, %struct.LClosure** %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i64 0, i32 5
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !9
  %18 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 0) #8
  br label %40

; <label>:19:                                     ; preds = %3
  %20 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #8
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %22 = load %struct.CallInfo*, %struct.CallInfo** %21, align 8, !tbaa !27
  %23 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %22, i32 %2, %union.StackValue** nonnull %4)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %39, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = bitcast %union.StackValue** %26 to %struct.TValue**
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8, !tbaa !33
  %29 = bitcast %union.StackValue** %4 to %struct.TValue**
  %30 = load %struct.TValue*, %struct.TValue** %29, align 8, !tbaa !26
  %31 = bitcast %struct.TValue* %30 to i64*
  %32 = bitcast %struct.TValue* %28 to i64*
  %33 = load i64, i64* %31, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i64 0, i32 1
  %35 = load i8, i8* %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 0, i32 1
  store i8 %35, i8* %36, align 8, !tbaa !34
  %37 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !33
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 1
  store %union.StackValue* %38, %union.StackValue** %26, align 8, !tbaa !33
  br label %39

; <label>:39:                                     ; preds = %19, %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #8
  br label %40

; <label>:40:                                     ; preds = %6, %12, %39
  %41 = phi i8* [ %18, %12 ], [ %23, %39 ], [ null, %6 ]
  ret i8* %41
}

; Function Attrs: nounwind uwtable
define i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 {
  %4 = alloca %union.StackValue*, align 8
  %5 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !27
  %8 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %7, i32 %2, %union.StackValue** nonnull %4)
  %9 = icmp eq i8* %8, null
  br i1 %9, label %24, label %10

; <label>:10:                                     ; preds = %3
  %11 = bitcast %union.StackValue** %4 to %struct.TValue**
  %12 = load %struct.TValue*, %struct.TValue** %11, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !33
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1, i32 0
  %16 = bitcast %struct.TValue* %15 to i64*
  %17 = bitcast %struct.TValue* %12 to i64*
  %18 = load i64, i64* %16, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1, i32 0, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  store i8 %20, i8* %21, align 8, !tbaa !34
  %22 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !33
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 -1
  store %union.StackValue* %23, %union.StackValue** %13, align 8, !tbaa !33
  br label %24

; <label>:24:                                     ; preds = %3, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i32 @lua_getinfo(%struct.lua_State*, i8* readonly, %struct.lua_Debug*) local_unnamed_addr #0 {
  %4 = load i8, i8* %1, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 62
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0
  %10 = getelementptr inbounds i8, i8* %1, i64 1
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1
  store %union.StackValue* %11, %union.StackValue** %7, align 8, !tbaa !33
  br label %17

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 16
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !tbaa !27
  %15 = bitcast %struct.CallInfo* %14 to %struct.TValue**
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !29
  br label %17

; <label>:17:                                     ; preds = %12, %6
  %18 = phi %struct.TValue* [ %9, %6 ], [ %16, %12 ]
  %19 = phi %struct.CallInfo* [ null, %6 ], [ %14, %12 ]
  %20 = phi i8* [ %10, %6 ], [ %1, %12 ]
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !34
  %23 = and i8 %22, 31
  %24 = icmp eq i8 %23, 22
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %17
  %26 = bitcast %struct.TValue* %18 to %union.Closure**
  %27 = load %union.Closure*, %union.Closure** %26, align 8, !tbaa !9
  br label %28

; <label>:28:                                     ; preds = %17, %25
  %29 = phi %union.Closure* [ %27, %25 ], [ null, %17 ]
  %30 = tail call fastcc i32 @auxgetinfo(%struct.lua_State* %0, i8* nonnull %20, %struct.lua_Debug* %2, %union.Closure* %29, %struct.CallInfo* %19)
  %31 = tail call i8* @strchr(i8* nonnull %20, i32 102) #10
  %32 = icmp eq i8* %31, null
  br i1 %32, label %44, label %33

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %35 = bitcast %union.StackValue** %34 to %struct.TValue**
  %36 = load %struct.TValue*, %struct.TValue** %35, align 8, !tbaa !33
  %37 = bitcast %struct.TValue* %18 to i64*
  %38 = bitcast %struct.TValue* %36 to i64*
  %39 = load i64, i64* %37, align 8
  store i64 %39, i64* %38, align 8
  %40 = load i8, i8* %21, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 0, i32 1
  store i8 %40, i8* %41, align 8, !tbaa !34
  %42 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !33
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 1
  store %union.StackValue* %43, %union.StackValue** %34, align 8, !tbaa !33
  br label %44

; <label>:44:                                     ; preds = %28, %33
  %45 = tail call i8* @strchr(i8* nonnull %20, i32 76) #10
  %46 = icmp eq i8* %45, null
  br i1 %46, label %48, label %47

; <label>:47:                                     ; preds = %44
  tail call fastcc void @collectvalidlines(%struct.lua_State* %0, %union.Closure* %29)
  br label %48

; <label>:48:                                     ; preds = %44, %47
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @auxgetinfo(%struct.lua_State* nocapture readonly, i8* nocapture readonly, %struct.lua_Debug*, %union.Closure* readonly, %struct.CallInfo*) unnamed_addr #0 {
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %93, label %8

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.CallInfo* %4, null
  %10 = icmp eq %union.Closure* %3, null
  %11 = icmp eq %struct.CallInfo* %4, null
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %14 = icmp eq %struct.CallInfo* %4, null
  %15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %18 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %19 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %20 = getelementptr inbounds %union.Closure, %union.Closure* %3, i64 0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %22 = getelementptr inbounds %union.Closure, %union.Closure* %3, i64 0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 12
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  %26 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %28 = getelementptr inbounds %union.Closure, %union.Closure* %3, i64 0, i32 0, i32 5
  %29 = bitcast i32 (%struct.lua_State*)** %28 to %struct.Proto**
  %30 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 5
  %33 = bitcast %union.anon.1* %32 to %struct.anon.2*
  %34 = bitcast %union.anon.1* %32 to i16*
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %33, i64 0, i32 1
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  br label %38

; <label>:38:                                     ; preds = %8, %88
  %39 = phi i8 [ %6, %8 ], [ %91, %88 ]
  %40 = phi i32 [ 1, %8 ], [ %89, %88 ]
  %41 = phi i8* [ %1, %8 ], [ %90, %88 ]
  %42 = sext i8 %39 to i32
  switch i32 %42, label %87 [
    i32 83, label %43
    i32 108, label %44
    i32 117, label %53
    i32 116, label %67
    i32 110, label %74
    i32 114, label %78
    i32 76, label %88
    i32 102, label %88
  ]

; <label>:43:                                     ; preds = %38
  tail call fastcc void @funcinfo(%struct.lua_Debug* %2, %union.Closure* %3)
  br label %88

; <label>:44:                                     ; preds = %38
  br i1 %9, label %51, label %45

; <label>:45:                                     ; preds = %44
  %46 = load i16, i16* %16, align 2, !tbaa !19
  %47 = and i16 %46, 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = tail call fastcc i32 @currentline(%struct.CallInfo* nonnull %4)
  br label %51

; <label>:51:                                     ; preds = %45, %44, %49
  %52 = phi i32 [ %50, %49 ], [ -1, %45 ], [ -1, %44 ]
  store i32 %52, i32* %15, align 8, !tbaa !36
  br label %88

; <label>:53:                                     ; preds = %38
  br i1 %10, label %58, label %54

; <label>:54:                                     ; preds = %53
  %55 = load i8, i8* %20, align 2, !tbaa !9
  store i8 %55, i8* %21, align 4, !tbaa !37
  %56 = load i8, i8* %22, align 8, !tbaa !9
  %57 = icmp eq i8 %56, 54
  br i1 %57, label %59, label %60

; <label>:58:                                     ; preds = %53
  store i8 0, i8* %17, align 4, !tbaa !37
  br label %59

; <label>:59:                                     ; preds = %58, %54
  store i8 1, i8* %18, align 2, !tbaa !38
  store i8 0, i8* %19, align 1, !tbaa !39
  br label %88

; <label>:60:                                     ; preds = %54
  %61 = load %struct.Proto*, %struct.Proto** %29, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i64 0, i32 4
  %63 = load i8, i8* %62, align 1, !tbaa !31
  store i8 %63, i8* %30, align 2, !tbaa !38
  %64 = load %struct.Proto*, %struct.Proto** %29, align 8, !tbaa !9
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i64 0, i32 3
  %66 = load i8, i8* %65, align 2, !tbaa !40
  store i8 %66, i8* %31, align 1, !tbaa !39
  br label %88

; <label>:67:                                     ; preds = %38
  br i1 %11, label %72, label %68

; <label>:68:                                     ; preds = %67
  %69 = load i16, i16* %24, align 2, !tbaa !19
  %70 = trunc i16 %69 to i8
  %71 = and i8 %70, 16
  br label %72

; <label>:72:                                     ; preds = %67, %68
  %73 = phi i8 [ %71, %68 ], [ 0, %67 ]
  store i8 %73, i8* %23, align 1, !tbaa !41
  br label %88

; <label>:74:                                     ; preds = %38
  %75 = tail call fastcc i8* @getfuncname(%struct.lua_State* %0, %struct.CallInfo* %4, i8** nonnull %12)
  store i8* %75, i8** %13, align 8, !tbaa !42
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %88

; <label>:77:                                     ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8, !tbaa !42
  store i8* null, i8** %12, align 8, !tbaa !43
  br label %88

; <label>:78:                                     ; preds = %38
  br i1 %14, label %83, label %79

; <label>:79:                                     ; preds = %78
  %80 = load i16, i16* %27, align 2, !tbaa !19
  %81 = trunc i16 %80 to i8
  %82 = icmp slt i8 %81, 0
  br i1 %82, label %84, label %83

; <label>:83:                                     ; preds = %79, %78
  store i16 0, i16* %25, align 2, !tbaa !44
  store i16 0, i16* %26, align 8, !tbaa !45
  br label %88

; <label>:84:                                     ; preds = %79
  %85 = load i16, i16* %34, align 8, !tbaa !9
  store i16 %85, i16* %35, align 8, !tbaa !45
  %86 = load i16, i16* %36, align 2, !tbaa !9
  store i16 %86, i16* %37, align 2, !tbaa !44
  br label %88

; <label>:87:                                     ; preds = %38
  br label %88

; <label>:88:                                     ; preds = %43, %51, %72, %87, %60, %59, %77, %74, %83, %84, %38, %38
  %89 = phi i32 [ 0, %87 ], [ %40, %38 ], [ %40, %38 ], [ %40, %83 ], [ %40, %84 ], [ %40, %77 ], [ %40, %74 ], [ %40, %72 ], [ %40, %59 ], [ %40, %60 ], [ %40, %51 ], [ %40, %43 ]
  %90 = getelementptr inbounds i8, i8* %41, i64 1
  %91 = load i8, i8* %90, align 1, !tbaa !9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %38

; <label>:93:                                     ; preds = %88, %5
  %94 = phi i32 [ 1, %5 ], [ %89, %88 ]
  ret i32 %94
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @collectvalidlines(%struct.lua_State*, %union.Closure* readonly) unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = icmp eq %union.Closure* %1, null
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !9
  %8 = icmp eq i8 %7, 54
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %5, %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %11 = bitcast %union.StackValue** %10 to %struct.TValue**
  %12 = load %struct.TValue*, %struct.TValue** %11, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  store i8 0, i8* %13, align 8, !tbaa !9
  %14 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !33
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 1
  store %union.StackValue* %15, %union.StackValue** %10, align 8, !tbaa !33
  br label %46

; <label>:16:                                     ; preds = %5
  %17 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #8
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 5
  %19 = bitcast i32 (%struct.lua_State*)** %18 to %struct.Proto**
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 13
  %22 = load i32, i32* %21, align 4, !tbaa !46
  %23 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = bitcast %union.StackValue** %24 to %struct.TValue**
  %26 = load %struct.TValue*, %struct.TValue** %25, align 8, !tbaa !33
  %27 = bitcast %struct.TValue* %26 to %struct.Table**
  store %struct.Table* %23, %struct.Table** %27, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i64 0, i32 1
  store i8 69, i8* %28, align 8, !tbaa !34
  %29 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !33
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 1
  store %union.StackValue* %30, %union.StackValue** %24, align 8, !tbaa !33
  %31 = bitcast %struct.TValue* %3 to i32*
  store i32 1, i32* %31, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 1, i8* %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 9
  %34 = load i32, i32* %33, align 4, !tbaa !47
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %16
  br label %37

; <label>:37:                                     ; preds = %36, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %36 ]
  %39 = phi i32 [ %40, %37 ], [ %22, %36 ]
  %40 = call fastcc i32 @nextline(%struct.Proto* nonnull %20, i32 %39, i32 %38)
  %41 = sext i32 %40 to i64
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %23, i64 %41, %struct.TValue* nonnull %3) #8
  %42 = add nuw nsw i32 %38, 1
  %43 = load i32, i32* %33, align 4, !tbaa !47
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %37, label %45

; <label>:45:                                     ; preds = %37, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #8
  br label %46

; <label>:46:                                     ; preds = %45, %9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #6 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #8
  %5 = tail call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %1)
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %2, i8* %4, i8* %5) #11
  unreachable
}

declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !14
  %6 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 3
  %10 = load i64, i64* %9, align 8, !tbaa !49
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #8
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #8
  call void @llvm.va_end(i8* nonnull %6)
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 7
  %17 = load i16, i16* %16, align 2, !tbaa !19
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %13
  %21 = bitcast %struct.CallInfo* %5 to %struct.LClosure***
  %22 = load %struct.LClosure**, %struct.LClosure*** %21, align 8, !tbaa !29
  %23 = load %struct.LClosure*, %struct.LClosure** %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %23, i64 0, i32 5
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i64 0, i32 22
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !52
  %28 = call fastcc i32 @currentline(%struct.CallInfo* nonnull %5)
  %29 = call i8* @luaG_addinfo(%struct.lua_State* nonnull %0, i8* %15, %struct.TString* %27, i32 %28)
  br label %30

; <label>:30:                                     ; preds = %13, %20
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @varinfo(%struct.lua_State*, %struct.TValue*) unnamed_addr #0 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store i8* null, i8** %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %8 = load i16, i16* %7, align 2, !tbaa !19
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %36

; <label>:11:                                     ; preds = %2
  %12 = call fastcc i8* @getupvalname(%struct.CallInfo* %6, %struct.TValue* %1, i8** nonnull %3)
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %11
  %15 = tail call fastcc i32 @isinstack(%struct.CallInfo* %6, %struct.TValue* %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

; <label>:17:                                     ; preds = %14
  %18 = bitcast %struct.CallInfo* %6 to %struct.LClosure***
  %19 = load %struct.LClosure**, %struct.LClosure*** %18, align 8, !tbaa !29
  %20 = load %struct.LClosure*, %struct.LClosure** %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %20, i64 0, i32 5
  %22 = load %struct.Proto*, %struct.Proto** %21, align 8, !tbaa !9
  %23 = tail call fastcc i32 @currentpc(%struct.CallInfo* %6)
  %24 = getelementptr inbounds %struct.LClosure*, %struct.LClosure** %19, i64 2
  %25 = ptrtoint %struct.TValue* %1 to i64
  %26 = ptrtoint %struct.LClosure** %24 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call fastcc i8* @getobjname(%struct.Proto* %22, i32 %23, i32 %29, i8** nonnull %3)
  %31 = icmp eq i8* %30, null
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %11, %17
  %33 = phi i8* [ %30, %17 ], [ %12, %11 ]
  %34 = load i8*, i8** %3, align 8, !tbaa !26
  %35 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %33, i8* %34) #8
  br label %36

; <label>:36:                                     ; preds = %14, %2, %17, %32
  %37 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  ret i8* %37
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #6 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %2, i8* %4) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !34
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -3
  %8 = icmp ult i8 %7, 2
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !34
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* %3) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 35
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = bitcast %struct.TValue* %1 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !9
  store i64 %11, i64* %4, align 8, !tbaa !53
  br label %16

; <label>:12:                                     ; preds = %3
  %13 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, %struct.TValue* %1, %struct.TValue* %2
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi %struct.TValue* [ %2, %9 ], [ %15, %12 ]
  %18 = call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %17)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %18) #11
  unreachable
}

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #8
  %5 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %2) #8
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
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) local_unnamed_addr #0 {
  %5 = alloca [60 x i8], align 16
  %6 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %6) #8
  %7 = icmp eq %struct.TString* %2, null
  br i1 %7, label %23, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 1
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !55
  %13 = icmp eq i8 %12, 20
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 4
  %16 = load i8, i8* %15, align 1, !tbaa !57
  %17 = zext i8 %16 to i64
  br label %21

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 6, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !9
  br label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i64 [ %17, %14 ], [ %20, %18 ]
  call void @luaO_chunkid(i8* nonnull %6, i8* nonnull %10, i64 %22) #8
  br label %25

; <label>:23:                                     ; preds = %4
  store i8 63, i8* %6, align 16, !tbaa !9
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %24, align 1, !tbaa !9
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %6, i32 %3, i8* %1) #8
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %6) #8
  ret i8* %26
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #4

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %3 = load i64, i64* %2, align 8, !tbaa !58
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %30, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %7 = bitcast %union.StackValue** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !59
  %9 = getelementptr inbounds i8, i8* %8, i64 %3
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !33
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 -1, i32 0
  %13 = bitcast %struct.TValue* %12 to i64*
  %14 = bitcast %union.StackValue* %11 to i64*
  %15 = load i64, i64* %13, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 -1, i32 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !34
  %19 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !33
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0
  %21 = bitcast i8* %9 to i64*
  %22 = bitcast %struct.TValue* %20 to i64*
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %9, i64 8
  %25 = load i8, i8* %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  store i8 %25, i8* %26, align 8, !tbaa !34
  %27 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !33
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  store %union.StackValue* %28, %union.StackValue** %10, align 8, !tbaa !33
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %29, i32 1) #8
  br label %30

; <label>:30:                                     ; preds = %1, %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #12
  unreachable
}

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #7

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @currentline(%struct.CallInfo* nocapture readonly) unnamed_addr #0 {
  %2 = bitcast %struct.CallInfo* %0 to %struct.LClosure***
  %3 = load %struct.LClosure**, %struct.LClosure*** %2, align 8, !tbaa !29
  %4 = load %struct.LClosure*, %struct.LClosure** %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4, i64 0, i32 5
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !9
  %7 = tail call fastcc i32 @currentpc(%struct.CallInfo* %0)
  %8 = tail call i32 @luaG_getfuncline(%struct.Proto* %6, i32 %7)
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %6 = load i32, i32* %5, align 8, !tbaa !24
  %7 = and i32 %6, 12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 1
  %11 = bitcast i64* %10 to i32*
  store i32 0, i32* %11, align 8, !tbaa !9
  br label %102

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i32, i32* %1, i64 1
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4
  %15 = bitcast %union.anon* %14 to i32**
  store i32* %13, i32** %15, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4, !tbaa !23
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %6, 8
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %25 = load i32, i32* %24, align 8, !tbaa !22
  store i32 %25, i32* %16, align 4, !tbaa !23
  br label %29

; <label>:26:                                     ; preds = %12
  %27 = and i32 %6, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %102, label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %31 = load i16, i16* %30, align 2, !tbaa !19
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %29
  %35 = and i16 %31, -33
  store i16 %35, i16* %30, align 2, !tbaa !19
  br label %102

; <label>:36:                                     ; preds = %29
  %37 = load i32*, i32** %15, align 8, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = and i32 %39, 127
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !9
  %44 = and i8 %43, 32
  %45 = icmp ne i8 %44, 0
  %46 = and i32 %39, 16711680
  %47 = icmp eq i32 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1
  %51 = bitcast %union.StackValue** %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !60
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %54 = bitcast %union.StackValue** %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !33
  br label %55

; <label>:55:                                     ; preds = %36, %49
  br i1 %22, label %56, label %57

; <label>:56:                                     ; preds = %55
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 3, i32 -1, i32 0, i32 0) #8
  br label %57

; <label>:57:                                     ; preds = %56, %55
  %58 = and i32 %6, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %91, label %60

; <label>:60:                                     ; preds = %57
  %61 = bitcast %struct.CallInfo* %4 to %struct.LClosure***
  %62 = load %struct.LClosure**, %struct.LClosure*** %61, align 8, !tbaa !29
  %63 = load %struct.LClosure*, %struct.LClosure** %62, align 8, !tbaa !9
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i64 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 16
  %67 = bitcast i32** %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !32
  %69 = ptrtoint i32* %13 to i64
  %70 = sub i64 %69, %68
  %71 = lshr exact i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

; <label>:75:                                     ; preds = %60
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %77 = load i32*, i32** %76, align 8, !tbaa !20
  %78 = icmp ugt i32* %13, %77
  br i1 %78, label %79, label %87

; <label>:79:                                     ; preds = %75
  %80 = ptrtoint i32* %77 to i64
  %81 = sub i64 %80, %68
  %82 = lshr exact i64 %81, 2
  %83 = trunc i64 %82 to i32
  %84 = add nsw i32 %83, -1
  %85 = tail call fastcc i32 @changedline(%struct.Proto* %65, i32 %84, i32 %73)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

; <label>:87:                                     ; preds = %79, %75, %60
  %88 = tail call i32 @luaG_getfuncline(%struct.Proto* %65, i32 %73)
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 2, i32 %88, i32 0, i32 0) #8
  br label %89

; <label>:89:                                     ; preds = %79, %87
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  store i32* %13, i32** %90, align 8, !tbaa !20
  br label %91

; <label>:91:                                     ; preds = %57, %89
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %93 = load i8, i8* %92, align 2, !tbaa !61
  %94 = icmp eq i8 %93, 1
  br i1 %94, label %95, label %102

; <label>:95:                                     ; preds = %91
  br i1 %22, label %96, label %97

; <label>:96:                                     ; preds = %95
  store i32 1, i32* %16, align 4, !tbaa !23
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i32*, i32** %15, align 8, !tbaa !9
  %99 = getelementptr inbounds i32, i32* %98, i64 -1
  store i32* %99, i32** %15, align 8, !tbaa !9
  %100 = load i16, i16* %30, align 2, !tbaa !19
  %101 = or i16 %100, 32
  store i16 %101, i16* %30, align 2, !tbaa !19
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 1) #12
  unreachable

; <label>:102:                                    ; preds = %91, %26, %34, %9
  %103 = phi i32 [ 1, %34 ], [ 0, %9 ], [ 1, %26 ], [ 1, %91 ]
  ret i32 %103
}

declare hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @changedline(%struct.Proto* nocapture readonly, i32, i32) unnamed_addr #0 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %7 = load i8*, i8** %6, align 8, !tbaa !2
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  br label %13

; <label>:10:                                     ; preds = %13
  %11 = add nsw i32 %15, 1
  %12 = icmp slt i64 %16, %9
  br i1 %12, label %13, label %25

; <label>:13:                                     ; preds = %5, %10
  %14 = phi i64 [ %8, %5 ], [ %16, %10 ]
  %15 = phi i32 [ %1, %5 ], [ %11, %10 ]
  %16 = add nsw i64 %14, 1
  %17 = getelementptr inbounds i8, i8* %7, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %10, label %20

; <label>:20:                                     ; preds = %13
  %21 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %0, i32 %15)
  %22 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %0, i32 %2)
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  br label %25

; <label>:25:                                     ; preds = %10, %3, %20
  %26 = phi i32 [ %24, %20 ], [ 0, %3 ], [ 0, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal fastcc void @funcinfo(%struct.lua_Debug*, %union.Closure* readonly) unnamed_addr #0 {
  %3 = icmp eq %union.Closure* %1, null
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 54
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %4, %2
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 5
  store i64 4, i64* %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 7
  store i32 -1, i32* %11, align 4, !tbaa !64
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 8
  store i32 -1, i32* %12, align 8, !tbaa !65
  br label %47

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 5
  %15 = bitcast i32 (%struct.lua_State*)** %14 to %struct.Proto**
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 22
  %18 = load %struct.TString*, %struct.TString** %17, align 8, !tbaa !52
  %19 = icmp eq %struct.TString* %18, null
  br i1 %19, label %34, label %20

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 1
  %22 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 4
  %23 = bitcast i8** %22 to %struct.TString**
  store %struct.TString* %21, %struct.TString** %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !55
  %26 = icmp eq i8 %25, 20
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 0, i32 4
  %29 = load i8, i8* %28, align 1, !tbaa !57
  %30 = zext i8 %29 to i64
  br label %36

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 0, i32 6, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !9
  br label %36

; <label>:34:                                     ; preds = %13
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %35, align 8, !tbaa !62
  br label %36

; <label>:36:                                     ; preds = %27, %31, %34
  %37 = phi i64 [ 2, %34 ], [ %30, %27 ], [ %33, %31 ]
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 5
  store i64 %37, i64* %38, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 13
  %40 = load i32, i32* %39, align 4, !tbaa !46
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 7
  store i32 %40, i32* %41, align 4, !tbaa !64
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 14
  %43 = load i32, i32* %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 8
  store i32 %43, i32* %44, align 8, !tbaa !65
  %45 = icmp eq i32 %40, 0
  %46 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  br label %47

; <label>:47:                                     ; preds = %36, %8
  %48 = phi i8* [ %46, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %8 ]
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 3
  store i8* %48, i8** %49, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 15, i64 0
  %51 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i64 0, i32 5
  %54 = load i64, i64* %53, align 8, !tbaa !63
  tail call void @luaO_chunkid(i8* nonnull %50, i8* %52, i64 %54) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @getfuncname(%struct.lua_State* nocapture readonly, %struct.CallInfo* readonly, i8** nocapture) unnamed_addr #0 {
  %4 = icmp eq %struct.CallInfo* %1, null
  br i1 %4, label %24, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %7 = load i16, i16* %6, align 2, !tbaa !19
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8, !tbaa !26
  br label %24

; <label>:12:                                     ; preds = %5
  %13 = and i32 %8, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i64 0, i32 7
  %19 = load i16, i16* %18, align 2, !tbaa !19
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %15
  %23 = tail call fastcc i8* @funcnamefromcode(%struct.lua_State* %0, %struct.CallInfo* %17, i8** %2)
  br label %24

; <label>:24:                                     ; preds = %12, %15, %3, %22, %11
  %25 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %11 ], [ %23, %22 ], [ null, %3 ], [ null, %15 ], [ null, %12 ]
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @funcnamefromcode(%struct.lua_State* nocapture readonly, %struct.CallInfo* nocapture readonly, i8** nocapture) unnamed_addr #0 {
  %4 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %5 = load %struct.LClosure**, %struct.LClosure*** %4, align 8, !tbaa !29
  %6 = load %struct.LClosure*, %struct.LClosure** %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 5
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !9
  %9 = tail call fastcc i32 @currentpc(%struct.CallInfo* %1)
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16
  %11 = load i32*, i32** %10, align 8, !tbaa !32
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %16 = load i16, i16* %15, align 2, !tbaa !19
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8, !tbaa !26
  br label %51

; <label>:20:                                     ; preds = %3
  %21 = and i32 %14, 127
  %22 = trunc i32 %14 to i7
  switch i7 %22, label %51 [
    i7 -59, label %23
    i7 -58, label %23
    i7 -51, label %27
    i7 18, label %42
    i7 9, label %42
    i7 10, label %42
    i7 11, label %42
    i7 12, label %42
    i7 13, label %28
    i7 14, label %28
    i7 15, label %28
    i7 16, label %28
    i7 19, label %29
    i7 20, label %29
    i7 21, label %29
    i7 22, label %29
    i7 23, label %29
    i7 24, label %29
    i7 25, label %29
    i7 26, label %31
    i7 27, label %31
    i7 28, label %31
    i7 29, label %31
    i7 30, label %31
    i7 31, label %31
    i7 32, label %31
    i7 33, label %31
    i7 34, label %31
    i7 35, label %31
    i7 38, label %33
    i7 39, label %33
    i7 40, label %33
    i7 41, label %33
    i7 42, label %33
    i7 43, label %33
    i7 44, label %33
    i7 45, label %33
    i7 46, label %33
    i7 47, label %33
    i7 48, label %33
    i7 49, label %33
    i7 50, label %35
    i7 51, label %36
    i7 53, label %37
    i7 54, label %38
    i7 58, label %39
    i7 59, label %40
    i7 60, label %40
    i7 63, label %40
    i7 -64, label %40
    i7 36, label %41
    i7 37, label %41
  ]

; <label>:23:                                     ; preds = %20, %20
  %24 = lshr i32 %14, 7
  %25 = and i32 %24, 255
  %26 = tail call fastcc i8* @getobjname(%struct.Proto* %8, i32 %9, i32 %25, i8** %2)
  br label %51

; <label>:27:                                     ; preds = %20
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8, !tbaa !26
  br label %51

; <label>:28:                                     ; preds = %20, %20, %20, %20
  br label %42

; <label>:29:                                     ; preds = %20, %20, %20, %20, %20, %20, %20
  %30 = add nsw i32 %21, -13
  br label %42

; <label>:31:                                     ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %32 = add nsw i32 %21, -20
  br label %42

; <label>:33:                                     ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %34 = add nsw i32 %21, -32
  br label %42

; <label>:35:                                     ; preds = %20
  br label %42

; <label>:36:                                     ; preds = %20
  br label %42

; <label>:37:                                     ; preds = %20
  br label %42

; <label>:38:                                     ; preds = %20
  br label %42

; <label>:39:                                     ; preds = %20
  br label %42

; <label>:40:                                     ; preds = %20, %20, %20, %20
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8, !tbaa !26
  br label %51

; <label>:41:                                     ; preds = %20, %20
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8, !tbaa !26
  br label %51

; <label>:42:                                     ; preds = %20, %20, %20, %20, %20, %39, %38, %37, %36, %35, %33, %31, %29, %28
  %43 = phi i32 [ 5, %39 ], [ 22, %38 ], [ 4, %37 ], [ 19, %36 ], [ 18, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ 1, %28 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ]
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !48
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 40, i64 %46
  %48 = bitcast %struct.TString** %47 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !26
  %50 = getelementptr inbounds i8, i8* %49, i64 26
  store i8* %50, i8** %2, align 8, !tbaa !26
  br label %51

; <label>:51:                                     ; preds = %20, %42, %41, %40, %27, %23, %19
  %52 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %19 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %41 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %40 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %42 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %27 ], [ %26, %23 ], [ null, %20 ]
  ret i8* %52
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @getobjname(%struct.Proto*, i32, i32, i8** nocapture) unnamed_addr #0 {
  %5 = add nsw i32 %2, 1
  %6 = tail call i8* @luaF_getlocalname(%struct.Proto* %0, i32 %5, i32 %1) #8
  store i8* %6, i8** %3, align 8, !tbaa !26
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %71

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  br label %14

; <label>:10:                                     ; preds = %25
  %11 = add nuw nsw i32 %27, 1
  %12 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %0, i32 %11, i32 %17) #8
  store i8* %12, i8** %3, align 8, !tbaa !26
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %71

; <label>:14:                                     ; preds = %8, %10
  %15 = phi i32 [ %2, %8 ], [ %27, %10 ]
  %16 = phi i32 [ %1, %8 ], [ %17, %10 ]
  %17 = tail call fastcc i32 @findsetreg(%struct.Proto* %0, i32 %16, i32 %15)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %71, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i32*, i32** %9, align 8, !tbaa !32
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !8
  %24 = trunc i32 %23 to i7
  switch i7 %24, label %71 [
    i7 0, label %25
    i7 9, label %31
    i7 10, label %34
    i7 11, label %37
    i7 12, label %38
    i7 7, label %41
    i7 3, label %45
    i7 4, label %45
    i7 18, label %70
  ]

; <label>:25:                                     ; preds = %19
  %26 = lshr i32 %23, 16
  %27 = and i32 %26, 255
  %28 = lshr i32 %23, 7
  %29 = and i32 %28, 255
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %10, label %71

; <label>:31:                                     ; preds = %19
  %32 = lshr i32 %23, 24
  tail call fastcc void @kname(%struct.Proto* nonnull %0, i32 %32, i8** nonnull %3)
  %33 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %23, i32 1)
  br label %71

; <label>:34:                                     ; preds = %19
  %35 = lshr i32 %23, 24
  tail call fastcc void @rname(%struct.Proto* nonnull %0, i32 %17, i32 %35, i8** nonnull %3)
  %36 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %23, i32 0)
  br label %71

; <label>:37:                                     ; preds = %19
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %71

; <label>:38:                                     ; preds = %19
  %39 = lshr i32 %23, 24
  tail call fastcc void @kname(%struct.Proto* nonnull %0, i32 %39, i8** nonnull %3)
  %40 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %23, i32 0)
  br label %71

; <label>:41:                                     ; preds = %19
  %42 = lshr i32 %23, 16
  %43 = and i32 %42, 255
  %44 = tail call fastcc i8* @upvalname(%struct.Proto* nonnull %0, i32 %43)
  store i8* %44, i8** %3, align 8, !tbaa !26
  br label %71

; <label>:45:                                     ; preds = %19, %19
  %46 = and i32 %23, 127
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %45
  %49 = lshr i32 %23, 15
  br label %56

; <label>:50:                                     ; preds = %45
  %51 = add nsw i32 %17, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %20, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !8
  %55 = lshr i32 %54, 7
  br label %56

; <label>:56:                                     ; preds = %50, %48
  %57 = phi i32 [ %49, %48 ], [ %55, %50 ]
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %59 = load %struct.TValue*, %struct.TValue** %58, align 8, !tbaa !68
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i64 %60, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !34
  %63 = and i8 %62, 15
  %64 = icmp eq i8 %63, 4
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %56
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i64 %60, i32 0, i32 0
  %67 = bitcast %struct.GCObject** %66 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  %69 = getelementptr inbounds i8, i8* %68, i64 24
  store i8* %69, i8** %3, align 8, !tbaa !26
  br label %71

; <label>:70:                                     ; preds = %19
  tail call fastcc void @rkname(%struct.Proto* nonnull %0, i32 %17, i32 %23, i8** nonnull %3)
  br label %71

; <label>:71:                                     ; preds = %10, %19, %14, %25, %4, %65, %31, %34, %37, %38, %41, %70, %56
  %72 = phi i8* [ null, %56 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %65 ], [ %33, %31 ], [ %36, %34 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %37 ], [ %40, %38 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %41 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %70 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %4 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %10 ], [ null, %19 ], [ null, %14 ], [ null, %25 ]
  ret i8* %72
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @findsetreg(%struct.Proto* nocapture readonly, i32, i32) unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %55

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !32
  %8 = zext i32 %1 to i64
  br label %9

; <label>:9:                                      ; preds = %50, %5
  %10 = phi i64 [ 0, %5 ], [ %53, %50 ]
  %11 = phi i32 [ -1, %5 ], [ %52, %50 ]
  %12 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %13 = getelementptr inbounds i32, i32* %7, i64 %10
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = lshr i32 %14, 7
  %16 = and i32 %15, 255
  %17 = trunc i32 %14 to i7
  switch i7 %17, label %33 [
    i7 6, label %18
    i7 -51, label %20
    i7 -59, label %23
    i7 -58, label %23
    i7 57, label %25
  ]

; <label>:18:                                     ; preds = %9
  %19 = icmp sgt i32 %16, %2
  br i1 %19, label %50, label %42

; <label>:20:                                     ; preds = %9
  %21 = add nuw nsw i32 %16, 2
  %22 = icmp sgt i32 %21, %2
  br i1 %22, label %50, label %47

; <label>:23:                                     ; preds = %9, %9
  %24 = icmp sgt i32 %16, %2
  br i1 %24, label %50, label %47

; <label>:25:                                     ; preds = %9
  %26 = trunc i64 %10 to i32
  %27 = add i32 %26, -16777214
  %28 = add i32 %27, %15
  %29 = icmp sle i32 %28, %1
  %30 = icmp sgt i32 %28, %12
  %31 = and i1 %29, %30
  %32 = select i1 %31, i32 %28, i32 %12
  br label %50

; <label>:33:                                     ; preds = %9
  %34 = and i32 %14, 127
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = and i8 %37, 8
  %39 = icmp ne i8 %38, 0
  %40 = icmp eq i32 %16, %2
  %41 = and i1 %40, %39
  br i1 %41, label %47, label %50

; <label>:42:                                     ; preds = %18
  %43 = lshr i32 %14, 16
  %44 = and i32 %43, 255
  %45 = add nuw nsw i32 %16, %44
  %46 = icmp slt i32 %45, %2
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %42, %20, %23, %33
  %48 = trunc i64 %10 to i32
  %49 = tail call fastcc i32 @filterpc(i32 %48, i32 %12)
  br label %50

; <label>:50:                                     ; preds = %42, %20, %23, %25, %18, %33, %47
  %51 = phi i32 [ %12, %47 ], [ %12, %42 ], [ %12, %33 ], [ %12, %23 ], [ %12, %20 ], [ %32, %25 ], [ %12, %18 ]
  %52 = phi i32 [ %49, %47 ], [ %11, %42 ], [ %11, %33 ], [ %11, %23 ], [ %11, %20 ], [ %11, %25 ], [ %11, %18 ]
  %53 = add nuw nsw i64 %10, 1
  %54 = icmp eq i64 %53, %8
  br i1 %54, label %55, label %9

; <label>:55:                                     ; preds = %50, %3
  %56 = phi i32 [ -1, %3 ], [ %52, %50 ]
  ret i32 %56
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @kname(%struct.Proto* nocapture readonly, i32, i8** nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !68
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 %6, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !34
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 %6, i32 0, i32 0
  %13 = bitcast %struct.GCObject** %12 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = getelementptr inbounds i8, i8* %14, i64 24
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i8* [ %15, %11 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %3 ]
  store i8* %17, i8** %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @gxf(%struct.Proto*, i32, i32, i32) unnamed_addr #0 {
  %5 = alloca i8*, align 8
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %4
  %11 = tail call fastcc i8* @upvalname(%struct.Proto* %0, i32 %7)
  store i8* %11, i8** %5, align 8, !tbaa !26
  br label %15

; <label>:12:                                     ; preds = %4
  %13 = call fastcc i8* @getobjname(%struct.Proto* %0, i32 %1, i32 %7, i8** nonnull %5)
  %14 = load i8*, i8** %5, align 8, !tbaa !26
  br label %15

; <label>:15:                                     ; preds = %12, %10
  %16 = phi i8* [ %14, %12 ], [ %11, %10 ]
  %17 = icmp eq i8* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #10
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %22

; <label>:22:                                     ; preds = %15, %18
  %23 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %15 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rname(%struct.Proto*, i32, i32, i8** nocapture) unnamed_addr #0 {
  %5 = tail call fastcc i8* @getobjname(%struct.Proto* %0, i32 %1, i32 %2, i8** %3)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 99
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %4, %7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %11

; <label>:11:                                     ; preds = %10, %7
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i8* @upvalname(%struct.Proto* nocapture readonly, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %4 = load %struct.Upvaldesc*, %struct.Upvaldesc** %3, align 8, !tbaa !69
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %4, i64 %5, i32 0
  %7 = load %struct.TString*, %struct.TString** %6, align 8, !tbaa !70
  %8 = icmp eq %struct.TString* %7, null
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 1
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = select i1 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %10
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rkname(%struct.Proto*, i32, i32, i8** nocapture) unnamed_addr #0 {
  %5 = lshr i32 %2, 24
  %6 = trunc i32 %2 to i16
  %7 = icmp slt i16 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %4
  tail call fastcc void @kname(%struct.Proto* %0, i32 %5, i8** %3)
  br label %10

; <label>:9:                                      ; preds = %4
  tail call fastcc void @rname(%struct.Proto* %0, i32 %1, i32 %5, i8** %3)
  br label %10

; <label>:10:                                     ; preds = %9, %8
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @filterpc(i32, i32) unnamed_addr #9 {
  %3 = icmp slt i32 %0, %1
  %4 = select i1 %3, i32 -1, i32 %0
  ret i32 %4
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nextline(%struct.Proto* nocapture readonly, i32, i32) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %5 = load i8*, i8** %4, align 8, !tbaa !2
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = load i8, i8* %7, align 1, !tbaa !9
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %3
  %11 = sext i8 %8 to i32
  %12 = add nsw i32 %11, %1
  br label %15

; <label>:13:                                     ; preds = %3
  %14 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %0, i32 %2)
  br label %15

; <label>:15:                                     ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  ret i32 %16
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i8* @getupvalname(%struct.CallInfo* nocapture readonly, %struct.TValue* readnone, i8** nocapture) unnamed_addr #2 {
  %4 = bitcast %struct.CallInfo* %0 to %struct.LClosure***
  %5 = load %struct.LClosure**, %struct.LClosure*** %4, align 8, !tbaa !29
  %6 = load %struct.LClosure*, %struct.LClosure** %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 3
  %8 = load i8, i8* %7, align 2, !tbaa !72
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

; <label>:10:                                     ; preds = %3
  br label %11

; <label>:11:                                     ; preds = %10, %23
  %12 = phi i64 [ %24, %23 ], [ 0, %10 ]
  %13 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 6, i64 %12
  %14 = load %struct.UpVal*, %struct.UpVal** %13, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 3
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !74
  %17 = icmp eq %struct.TValue* %16, %1
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %11
  %19 = trunc i64 %12 to i32
  %20 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 5
  %21 = load %struct.Proto*, %struct.Proto** %20, align 8, !tbaa !76
  %22 = tail call fastcc i8* @upvalname(%struct.Proto* %21, i32 %19)
  store i8* %22, i8** %2, align 8, !tbaa !26
  br label %28

; <label>:23:                                     ; preds = %11
  %24 = add nuw nsw i64 %12, 1
  %25 = load i8, i8* %7, align 2, !tbaa !72
  %26 = zext i8 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %28

; <label>:28:                                     ; preds = %23, %3, %18
  %29 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %18 ], [ null, %3 ], [ null, %23 ]
  ret i8* %29
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @isinstack(%struct.CallInfo* nocapture readonly, %struct.TValue*) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 0
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !29
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 1
  %6 = ptrtoint %struct.TValue* %1 to i64
  %7 = ptrtoint %union.StackValue* %5 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, -16
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 1
  %12 = bitcast %union.StackValue** %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !60
  %14 = sub i64 %13, %7
  %15 = icmp slt i64 %8, %14
  %16 = zext i1 %15 to i32
  ret i32 %16

; <label>:17:                                     ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!8 = !{!7, !7, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!3, !7, i64 40}
!11 = !{!3, !4, i64 96}
!12 = !{!13, !7, i64 0}
!13 = !{!"AbsLineInfo", !7, i64 0, !7, i64 4}
!14 = !{!15, !4, i64 32}
!15 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !16, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !17, i64 96, !4, i64 160, !18, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192}
!16 = !{!"short", !5, i64 0}
!17 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !16, i64 60, !16, i64 62}
!18 = !{!"long", !5, i64 0}
!19 = !{!17, !16, i64 62}
!20 = !{!15, !4, i64 40}
!21 = !{!15, !4, i64 160}
!22 = !{!15, !7, i64 184}
!23 = !{!15, !7, i64 188}
!24 = !{!15, !7, i64 192}
!25 = !{!17, !4, i64 16}
!26 = !{!4, !4, i64 0}
!27 = !{!28, !4, i64 128}
!28 = !{!"lua_Debug", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !18, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !16, i64 64, !16, i64 66, !5, i64 68, !4, i64 128}
!29 = !{!17, !4, i64 0}
!30 = !{!17, !4, i64 24}
!31 = !{!3, !5, i64 11}
!32 = !{!3, !4, i64 64}
!33 = !{!15, !4, i64 16}
!34 = !{!35, !5, i64 8}
!35 = !{!"TValue", !5, i64 0, !5, i64 8}
!36 = !{!28, !7, i64 48}
!37 = !{!28, !5, i64 60}
!38 = !{!28, !5, i64 62}
!39 = !{!28, !5, i64 61}
!40 = !{!3, !5, i64 10}
!41 = !{!28, !5, i64 63}
!42 = !{!28, !4, i64 16}
!43 = !{!28, !4, i64 8}
!44 = !{!28, !16, i64 66}
!45 = !{!28, !16, i64 64}
!46 = !{!3, !7, i64 44}
!47 = !{!3, !7, i64 28}
!48 = !{!15, !4, i64 24}
!49 = !{!50, !18, i64 24}
!50 = !{!"global_State", !4, i64 0, !4, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !51, i64 48, !35, i64 64, !35, i64 80, !7, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!51 = !{!"stringtable", !4, i64 0, !7, i64 8, !7, i64 12}
!52 = !{!3, !4, i64 112}
!53 = !{!54, !54, i64 0}
!54 = !{!"long long", !5, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!57 = !{!56, !5, i64 11}
!58 = !{!15, !18, i64 168}
!59 = !{!15, !4, i64 56}
!60 = !{!17, !4, i64 8}
!61 = !{!15, !5, i64 10}
!62 = !{!28, !4, i64 32}
!63 = !{!28, !18, i64 40}
!64 = !{!28, !7, i64 52}
!65 = !{!28, !7, i64 56}
!66 = !{!3, !7, i64 48}
!67 = !{!28, !4, i64 24}
!68 = !{!3, !4, i64 56}
!69 = !{!3, !4, i64 80}
!70 = !{!71, !4, i64 0}
!71 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!72 = !{!73, !5, i64 10}
!73 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!74 = !{!75, !4, i64 16}
!75 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!76 = !{!73, !4, i64 24}
