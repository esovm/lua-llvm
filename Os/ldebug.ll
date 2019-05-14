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

; Function Attrs: nounwind optsize readonly uwtable
define hidden i32 @luaG_getfuncline(%struct.Proto* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %5 = icmp eq i8* %4, null
  br i1 %5, label %63, label %6

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
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %46
  %52 = sext i32 %47 to i64
  %53 = sext i32 %1 to i64
  br label %54

; <label>:54:                                     ; preds = %54, %51
  %55 = phi i64 [ %52, %51 ], [ %57, %54 ]
  %56 = phi i32 [ %49, %51 ], [ %61, %54 ]
  %57 = add nsw i64 %55, 1
  %58 = getelementptr inbounds i8, i8* %4, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !13
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %56, %60
  %62 = icmp eq i64 %57, %53
  br i1 %62, label %63, label %54

; <label>:63:                                     ; preds = %54, %46, %2
  %64 = phi i32 [ -1, %2 ], [ %49, %46 ], [ %61, %54 ]
  ret i32 %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind optsize uwtable
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
  %19 = load i64, i64* %18, align 8, !tbaa !13
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
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !tbaa !25
  %43 = icmp eq %struct.CallInfo* %42, null
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 7
  %46 = load i16, i16* %45, align 2, !tbaa !19
  br label %32

; <label>:47:                                     ; preds = %40, %22
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %3 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !tbaa !21
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3 = load i32, i32* %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %3 = load i32, i32* %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: norecurse nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaG_findlocal(%struct.lua_State* nocapture readonly, %struct.CallInfo* readonly, i32, %union.StackValue**) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !19
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
  %20 = load i8, i8* %19, align 1, !tbaa !30
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
  store %union.StackValue* %35, %union.StackValue** %3, align 8, !tbaa !26
  br label %82

; <label>:36:                                     ; preds = %12
  %37 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %38 = bitcast %union.anon* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 16
  %41 = bitcast i32** %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !31
  %43 = sub i64 %39, %42
  %44 = lshr exact i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %45, -1
  %47 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 %46) #10
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %75

; <label>:49:                                     ; preds = %4, %36
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %51 = load %struct.CallInfo*, %struct.CallInfo** %50, align 8, !tbaa !14
  %52 = icmp eq %struct.CallInfo* %51, %1
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %59

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8, !tbaa !32
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 0
  br label %59

; <label>:59:                                     ; preds = %55, %53
  %60 = phi %union.StackValue** [ %54, %53 ], [ %58, %55 ]
  %61 = bitcast %union.StackValue** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !26
  %63 = ptrtoint %union.StackValue* %7 to i64
  %64 = sub i64 %62, %63
  %65 = ashr exact i64 %64, 4
  %66 = sext i32 %2 to i64
  %67 = icmp sge i64 %65, %66
  %68 = icmp sgt i32 %2, 0
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %59
  %71 = load i16, i16* %8, align 2, !tbaa !19
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
  store %union.StackValue* %81, %union.StackValue** %3, align 8, !tbaa !26
  br label %82

; <label>:82:                                     ; preds = %59, %29, %22, %18, %78, %75
  %83 = phi i8* [ %76, %75 ], [ %76, %78 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %29 ], [ null, %22 ], [ null, %18 ], [ null, %59 ]
  ret i8* %83
}

; Function Attrs: optsize
declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define i8* @lua_getlocal(%struct.lua_State* nocapture, %struct.lua_Debug* readonly, i32) local_unnamed_addr #4 {
  %4 = alloca %union.StackValue*, align 8
  %5 = icmp eq %struct.lua_Debug* %1, null
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !13
  %11 = icmp eq i8 %10, 86
  br i1 %11, label %12, label %40

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 0, i32 0
  %14 = bitcast %struct.GCObject** %13 to %struct.LClosure**
  %15 = load %struct.LClosure*, %struct.LClosure** %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i64 0, i32 5
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !13
  %18 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 0) #10
  br label %40

; <label>:19:                                     ; preds = %3
  %20 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #9
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %22 = load %struct.CallInfo*, %struct.CallInfo** %21, align 8, !tbaa !27
  %23 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %22, i32 %2, %union.StackValue** nonnull %4) #11
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  br label %40

; <label>:40:                                     ; preds = %6, %12, %39
  %41 = phi i8* [ %18, %12 ], [ %23, %39 ], [ null, %6 ]
  ret i8* %41
}

; Function Attrs: nounwind optsize uwtable
define i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #4 {
  %4 = alloca %union.StackValue*, align 8
  %5 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !27
  %8 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %7, i32 %2, %union.StackValue** nonnull %4) #11
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret i8* %8
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_getinfo(%struct.lua_State*, i8* readonly, %struct.lua_Debug*) local_unnamed_addr #4 {
  %4 = alloca %struct.TValue, align 8
  %5 = load i8, i8* %1, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 62
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !33
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -1, i32 0
  %11 = getelementptr inbounds i8, i8* %1, i64 1
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -1
  store %union.StackValue* %12, %union.StackValue** %8, align 8, !tbaa !33
  br label %18

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 16
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !tbaa !27
  %16 = bitcast %struct.CallInfo* %15 to %struct.TValue**
  %17 = load %struct.TValue*, %struct.TValue** %16, align 8, !tbaa !29
  br label %18

; <label>:18:                                     ; preds = %13, %7
  %19 = phi %struct.TValue* [ %10, %7 ], [ %17, %13 ]
  %20 = phi %struct.CallInfo* [ null, %7 ], [ %15, %13 ]
  %21 = phi i8* [ %11, %7 ], [ %1, %13 ]
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !34
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
  br i1 %32, label %238, label %33

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

; <label>:67:                                     ; preds = %233, %33
  %68 = phi i8 [ %31, %33 ], [ %236, %233 ]
  %69 = phi i32 [ 1, %33 ], [ %234, %233 ]
  %70 = phi i8* [ %21, %33 ], [ %235, %233 ]
  %71 = sext i8 %68 to i32
  switch i32 %71, label %232 [
    i32 83, label %72
    i32 108, label %109
    i32 117, label %130
    i32 116, label %144
    i32 110, label %151
    i32 114, label %223
    i32 76, label %233
    i32 102, label %233
  ]

; <label>:72:                                     ; preds = %67
  br i1 %34, label %76, label %73

; <label>:73:                                     ; preds = %72
  %74 = load i8, i8* %43, align 8, !tbaa !13
  %75 = icmp eq i8 %74, 54
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73, %72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %37, align 8, !tbaa !36
  store i64 4, i64* %38, align 8, !tbaa !37
  store i32 -1, i32* %39, align 4, !tbaa !38
  store i32 -1, i32* %40, align 8, !tbaa !39
  br label %105

; <label>:77:                                     ; preds = %73
  %78 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 22
  %80 = load %struct.TString*, %struct.TString** %79, align 8, !tbaa !40
  %81 = icmp eq %struct.TString* %80, null
  br i1 %81, label %95, label %82

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 1
  store %struct.TString* %83, %struct.TString** %63, align 8, !tbaa !36
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !41
  %86 = icmp eq i8 %85, 20
  %87 = bitcast %struct.TString* %83 to i8*
  br i1 %86, label %88, label %92

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 4
  %90 = load i8, i8* %89, align 1, !tbaa !43
  %91 = zext i8 %90 to i64
  br label %96

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds %struct.TString, %struct.TString* %80, i64 0, i32 6, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !13
  br label %96

; <label>:95:                                     ; preds = %77
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %37, align 8, !tbaa !36
  br label %96

; <label>:96:                                     ; preds = %95, %92, %88
  %97 = phi i64 [ 2, %95 ], [ %91, %88 ], [ %94, %92 ]
  %98 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %95 ], [ %87, %88 ], [ %87, %92 ]
  store i64 %97, i64* %38, align 8, !tbaa !37
  %99 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 13
  %100 = load i32, i32* %99, align 4, !tbaa !44
  store i32 %100, i32* %39, align 4, !tbaa !38
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 14
  %102 = load i32, i32* %101, align 8, !tbaa !45
  store i32 %102, i32* %40, align 8, !tbaa !39
  %103 = icmp eq i32 %100, 0
  %104 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  br label %105

; <label>:105:                                    ; preds = %96, %76
  %106 = phi i8* [ %104, %96 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %76 ]
  %107 = phi i64 [ %97, %96 ], [ 4, %76 ]
  %108 = phi i8* [ %98, %96 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %76 ]
  store i8* %106, i8** %41, align 8, !tbaa !46
  tail call void @luaO_chunkid(i8* nonnull %42, i8* %108, i64 %107) #10
  br label %233

; <label>:109:                                    ; preds = %67
  br i1 %35, label %128, label %110

; <label>:110:                                    ; preds = %109
  %111 = load i16, i16* %45, align 2, !tbaa !19
  %112 = and i16 %111, 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %128

; <label>:114:                                    ; preds = %110
  %115 = load %struct.LClosure**, %struct.LClosure*** %56, align 8, !tbaa !29
  %116 = load %struct.LClosure*, %struct.LClosure** %115, align 8, !tbaa !13
  %117 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %116, i64 0, i32 5
  %118 = load %struct.Proto*, %struct.Proto** %117, align 8, !tbaa !13
  %119 = load i64, i64* %58, align 8, !tbaa !13
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i64 0, i32 16
  %121 = bitcast i32** %120 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !31
  %123 = sub i64 %119, %122
  %124 = lshr exact i64 %123, 2
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %125, -1
  %127 = tail call i32 @luaG_getfuncline(%struct.Proto* %118, i32 %126) #10
  br label %128

; <label>:128:                                    ; preds = %114, %110, %109
  %129 = phi i32 [ %127, %114 ], [ -1, %110 ], [ -1, %109 ]
  store i32 %129, i32* %44, align 8, !tbaa !47
  br label %233

; <label>:130:                                    ; preds = %67
  br i1 %34, label %135, label %131

; <label>:131:                                    ; preds = %130
  %132 = load i8, i8* %49, align 2, !tbaa !13
  store i8 %132, i8* %46, align 4, !tbaa !48
  %133 = load i8, i8* %43, align 8, !tbaa !13
  %134 = icmp eq i8 %133, 54
  br i1 %134, label %136, label %137

; <label>:135:                                    ; preds = %130
  store i8 0, i8* %46, align 4, !tbaa !48
  br label %136

; <label>:136:                                    ; preds = %135, %131
  store i8 1, i8* %47, align 2, !tbaa !49
  store i8 0, i8* %48, align 1, !tbaa !50
  br label %233

; <label>:137:                                    ; preds = %131
  %138 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i64 0, i32 4
  %140 = load i8, i8* %139, align 1, !tbaa !30
  store i8 %140, i8* %47, align 2, !tbaa !49
  %141 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !13
  %142 = getelementptr inbounds %struct.Proto, %struct.Proto* %141, i64 0, i32 3
  %143 = load i8, i8* %142, align 2, !tbaa !51
  store i8 %143, i8* %48, align 1, !tbaa !50
  br label %233

; <label>:144:                                    ; preds = %67
  br i1 %35, label %149, label %145

; <label>:145:                                    ; preds = %144
  %146 = load i16, i16* %45, align 2, !tbaa !19
  %147 = trunc i16 %146 to i8
  %148 = and i8 %147, 16
  br label %149

; <label>:149:                                    ; preds = %145, %144
  %150 = phi i8 [ %148, %145 ], [ 0, %144 ]
  store i8 %150, i8* %50, align 1, !tbaa !52
  br label %233

; <label>:151:                                    ; preds = %67
  br i1 %35, label %216, label %152

; <label>:152:                                    ; preds = %151
  %153 = load i16, i16* %45, align 2, !tbaa !19
  %154 = zext i16 %153 to i32
  %155 = and i32 %154, 64
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %213

; <label>:157:                                    ; preds = %152
  %158 = and i32 %154, 16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %216

; <label>:160:                                    ; preds = %157
  %161 = load %struct.CallInfo*, %struct.CallInfo** %64, align 8, !tbaa !25
  %162 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %161, i64 0, i32 7
  %163 = load i16, i16* %162, align 2, !tbaa !19
  %164 = and i16 %163, 2
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %216

; <label>:166:                                    ; preds = %160
  %167 = bitcast %struct.CallInfo* %161 to %struct.LClosure***
  %168 = load %struct.LClosure**, %struct.LClosure*** %167, align 8, !tbaa !29
  %169 = load %struct.LClosure*, %struct.LClosure** %168, align 8, !tbaa !13
  %170 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %169, i64 0, i32 5
  %171 = load %struct.Proto*, %struct.Proto** %170, align 8, !tbaa !13
  %172 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %161, i64 0, i32 4
  %173 = bitcast %union.anon* %172 to i64*
  %174 = load i64, i64* %173, align 8, !tbaa !13
  %175 = getelementptr inbounds %struct.Proto, %struct.Proto* %171, i64 0, i32 16
  %176 = bitcast i32** %175 to i64*
  %177 = load i64, i64* %176, align 8, !tbaa !31
  %178 = sub i64 %174, %177
  %179 = lshr exact i64 %178, 2
  %180 = trunc i64 %179 to i32
  %181 = add nsw i32 %180, -1
  %182 = inttoptr i64 %177 to i32*
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4, !tbaa !12
  %186 = and i16 %163, 4
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %213

; <label>:188:                                    ; preds = %166
  %189 = and i32 %185, 127
  %190 = trunc i32 %185 to i7
  switch i7 %190, label %216 [
    i7 -59, label %217
    i7 -58, label %217
    i7 -51, label %213
    i7 18, label %205
    i7 9, label %205
    i7 10, label %205
    i7 11, label %205
    i7 12, label %205
    i7 13, label %191
    i7 14, label %191
    i7 15, label %191
    i7 16, label %191
    i7 19, label %192
    i7 20, label %192
    i7 21, label %192
    i7 22, label %192
    i7 23, label %192
    i7 24, label %192
    i7 25, label %192
    i7 26, label %194
    i7 27, label %194
    i7 28, label %194
    i7 29, label %194
    i7 30, label %194
    i7 31, label %194
    i7 32, label %194
    i7 33, label %194
    i7 34, label %194
    i7 35, label %194
    i7 38, label %196
    i7 39, label %196
    i7 40, label %196
    i7 41, label %196
    i7 42, label %196
    i7 43, label %196
    i7 44, label %196
    i7 45, label %196
    i7 46, label %196
    i7 47, label %196
    i7 48, label %196
    i7 49, label %196
    i7 50, label %198
    i7 51, label %199
    i7 53, label %200
    i7 54, label %201
    i7 58, label %202
    i7 59, label %203
    i7 60, label %203
    i7 63, label %203
    i7 -64, label %203
    i7 36, label %204
    i7 37, label %204
  ]

; <label>:191:                                    ; preds = %188, %188, %188, %188
  br label %205

; <label>:192:                                    ; preds = %188, %188, %188, %188, %188, %188, %188
  %193 = add nsw i32 %189, -13
  br label %205

; <label>:194:                                    ; preds = %188, %188, %188, %188, %188, %188, %188, %188, %188, %188
  %195 = add nsw i32 %189, -20
  br label %205

; <label>:196:                                    ; preds = %188, %188, %188, %188, %188, %188, %188, %188, %188, %188, %188, %188
  %197 = add nsw i32 %189, -32
  br label %205

; <label>:198:                                    ; preds = %188
  br label %205

; <label>:199:                                    ; preds = %188
  br label %205

; <label>:200:                                    ; preds = %188
  br label %205

; <label>:201:                                    ; preds = %188
  br label %205

; <label>:202:                                    ; preds = %188
  br label %205

; <label>:203:                                    ; preds = %188, %188, %188, %188
  br label %213

; <label>:204:                                    ; preds = %188, %188
  br label %213

; <label>:205:                                    ; preds = %202, %201, %200, %199, %198, %196, %194, %192, %191, %188, %188, %188, %188, %188
  %206 = phi i32 [ 5, %202 ], [ 22, %201 ], [ 4, %200 ], [ 19, %199 ], [ 18, %198 ], [ %197, %196 ], [ %195, %194 ], [ %193, %192 ], [ 1, %191 ], [ 0, %188 ], [ 0, %188 ], [ 0, %188 ], [ 0, %188 ], [ 0, %188 ]
  %207 = load %struct.global_State*, %struct.global_State** %65, align 8, !tbaa !53
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds %struct.global_State, %struct.global_State* %207, i64 0, i32 40, i64 %208
  %210 = bitcast %struct.TString** %209 to i8**
  %211 = load i8*, i8** %210, align 8, !tbaa !26
  %212 = getelementptr inbounds i8, i8* %211, i64 26
  br label %213

; <label>:213:                                    ; preds = %188, %166, %152, %205, %204, %203
  %214 = phi i8* [ %212, %205 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %204 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %203 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %152 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %166 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %188 ]
  %215 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %205 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %204 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %203 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %152 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %166 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %188 ]
  store i8* %214, i8** %36, align 8, !tbaa !26
  store i8* %215, i8** %51, align 8, !tbaa !54
  br label %233

; <label>:216:                                    ; preds = %188, %160, %157, %151
  store i8* null, i8** %51, align 8, !tbaa !54
  br label %222

; <label>:217:                                    ; preds = %188, %188
  %218 = lshr i32 %185, 7
  %219 = and i32 %218, 255
  %220 = tail call fastcc i8* @getobjname(%struct.Proto* %171, i32 %181, i32 %219, i8** nonnull %36) #10
  store i8* %220, i8** %51, align 8, !tbaa !54
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %233

; <label>:222:                                    ; preds = %217, %216
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)>, <2 x i8*>* %66, align 8, !tbaa !26
  br label %233

; <label>:223:                                    ; preds = %67
  br i1 %35, label %228, label %224

; <label>:224:                                    ; preds = %223
  %225 = load i16, i16* %45, align 2, !tbaa !19
  %226 = trunc i16 %225 to i8
  %227 = icmp slt i8 %226, 0
  br i1 %227, label %229, label %228

; <label>:228:                                    ; preds = %224, %223
  store i16 0, i16* %52, align 2, !tbaa !55
  store i16 0, i16* %53, align 8, !tbaa !56
  br label %233

; <label>:229:                                    ; preds = %224
  %230 = load i16, i16* %61, align 8, !tbaa !13
  store i16 %230, i16* %53, align 8, !tbaa !56
  %231 = load i16, i16* %62, align 2, !tbaa !13
  store i16 %231, i16* %52, align 2, !tbaa !55
  br label %233

; <label>:232:                                    ; preds = %67
  br label %233

; <label>:233:                                    ; preds = %232, %229, %228, %222, %217, %213, %149, %137, %136, %128, %105, %67, %67
  %234 = phi i32 [ 0, %232 ], [ %69, %67 ], [ %69, %67 ], [ %69, %228 ], [ %69, %229 ], [ %69, %222 ], [ %69, %217 ], [ %69, %149 ], [ %69, %136 ], [ %69, %137 ], [ %69, %128 ], [ %69, %105 ], [ %69, %213 ]
  %235 = getelementptr inbounds i8, i8* %70, i64 1
  %236 = load i8, i8* %235, align 1, !tbaa !13
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %67

; <label>:238:                                    ; preds = %233, %29
  %239 = phi i32 [ 1, %29 ], [ %234, %233 ]
  %240 = tail call i8* @strchr(i8* %21, i32 102) #12
  %241 = icmp eq i8* %240, null
  br i1 %241, label %253, label %242

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %244 = bitcast %union.StackValue** %243 to %struct.TValue**
  %245 = load %struct.TValue*, %struct.TValue** %244, align 8, !tbaa !33
  %246 = bitcast %struct.TValue* %19 to i64*
  %247 = bitcast %struct.TValue* %245 to i64*
  %248 = load i64, i64* %246, align 8
  store i64 %248, i64* %247, align 8
  %249 = load i8, i8* %22, align 8, !tbaa !34
  %250 = getelementptr inbounds %struct.TValue, %struct.TValue* %245, i64 0, i32 1
  store i8 %249, i8* %250, align 8, !tbaa !34
  %251 = load %union.StackValue*, %union.StackValue** %243, align 8, !tbaa !33
  %252 = getelementptr inbounds %union.StackValue, %union.StackValue* %251, i64 1
  store %union.StackValue* %252, %union.StackValue** %243, align 8, !tbaa !33
  br label %253

; <label>:253:                                    ; preds = %238, %242
  %254 = tail call i8* @strchr(i8* %21, i32 76) #12
  %255 = icmp eq i8* %254, null
  br i1 %255, label %312, label %256

; <label>:256:                                    ; preds = %253
  %257 = icmp eq %union.Closure* %30, null
  br i1 %257, label %262, label %258

; <label>:258:                                    ; preds = %256
  %259 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 1
  %260 = load i8, i8* %259, align 8, !tbaa !13
  %261 = icmp eq i8 %260, 54
  br i1 %261, label %262, label %269

; <label>:262:                                    ; preds = %258, %256
  %263 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %264 = bitcast %union.StackValue** %263 to %struct.TValue**
  %265 = load %struct.TValue*, %struct.TValue** %264, align 8, !tbaa !33
  %266 = getelementptr inbounds %struct.TValue, %struct.TValue* %265, i64 0, i32 1
  store i8 0, i8* %266, align 8, !tbaa !13
  %267 = load %union.StackValue*, %union.StackValue** %263, align 8, !tbaa !33
  %268 = getelementptr inbounds %union.StackValue, %union.StackValue* %267, i64 1
  store %union.StackValue* %268, %union.StackValue** %263, align 8, !tbaa !33
  br label %312

; <label>:269:                                    ; preds = %258
  %270 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %270) #9
  %271 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 5
  %272 = bitcast i32 (%struct.lua_State*)** %271 to %struct.Proto**
  %273 = load %struct.Proto*, %struct.Proto** %272, align 8, !tbaa !13
  %274 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 13
  %275 = load i32, i32* %274, align 4, !tbaa !44
  %276 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #10
  %277 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %278 = bitcast %union.StackValue** %277 to %struct.TValue**
  %279 = load %struct.TValue*, %struct.TValue** %278, align 8, !tbaa !33
  %280 = bitcast %struct.TValue* %279 to %struct.Table**
  store %struct.Table* %276, %struct.Table** %280, align 8, !tbaa !13
  %281 = getelementptr inbounds %struct.TValue, %struct.TValue* %279, i64 0, i32 1
  store i8 69, i8* %281, align 8, !tbaa !34
  %282 = load %union.StackValue*, %union.StackValue** %277, align 8, !tbaa !33
  %283 = getelementptr inbounds %union.StackValue, %union.StackValue* %282, i64 1
  store %union.StackValue* %283, %union.StackValue** %277, align 8, !tbaa !33
  %284 = bitcast %struct.TValue* %4 to i32*
  store i32 1, i32* %284, align 8, !tbaa !13
  %285 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 1, i8* %285, align 8, !tbaa !34
  %286 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 9
  %287 = load i32, i32* %286, align 4, !tbaa !57
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %311

; <label>:289:                                    ; preds = %269
  %290 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 19
  br label %291

; <label>:291:                                    ; preds = %304, %289
  %292 = phi i64 [ 0, %289 ], [ %307, %304 ]
  %293 = phi i32 [ %275, %289 ], [ %305, %304 ]
  %294 = load i8*, i8** %290, align 8, !tbaa !2
  %295 = getelementptr inbounds i8, i8* %294, i64 %292
  %296 = load i8, i8* %295, align 1, !tbaa !13
  %297 = icmp eq i8 %296, -128
  br i1 %297, label %301, label %298

; <label>:298:                                    ; preds = %291
  %299 = sext i8 %296 to i32
  %300 = add nsw i32 %293, %299
  br label %304

; <label>:301:                                    ; preds = %291
  %302 = trunc i64 %292 to i32
  %303 = call i32 @luaG_getfuncline(%struct.Proto* nonnull %273, i32 %302) #10
  br label %304

; <label>:304:                                    ; preds = %301, %298
  %305 = phi i32 [ %300, %298 ], [ %303, %301 ]
  %306 = sext i32 %305 to i64
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %276, i64 %306, %struct.TValue* nonnull %4) #10
  %307 = add nuw nsw i64 %292, 1
  %308 = load i32, i32* %286, align 4, !tbaa !57
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %307, %309
  br i1 %310, label %291, label %311

; <label>:311:                                    ; preds = %304, %269
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %270) #9
  br label %312

; <label>:312:                                    ; preds = %311, %262, %253
  ret i32 %239
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #10
  %5 = tail call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %1) #11
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %2, i8* %4, i8* %5) #13
  unreachable
}

; Function Attrs: optsize
declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #7 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !14
  %6 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 3
  %10 = load i64, i64* %9, align 8, !tbaa !58
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #10
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #10
  call void @llvm.va_end(i8* nonnull %6)
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 7
  %17 = load i16, i16* %16, align 2, !tbaa !19
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %40

; <label>:20:                                     ; preds = %13
  %21 = bitcast %struct.CallInfo* %5 to %struct.LClosure***
  %22 = load %struct.LClosure**, %struct.LClosure*** %21, align 8, !tbaa !29
  %23 = load %struct.LClosure*, %struct.LClosure** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %23, i64 0, i32 5
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i64 0, i32 22
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 4
  %29 = bitcast %union.anon* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i64 0, i32 16
  %32 = bitcast i32** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !31
  %34 = sub i64 %30, %33
  %35 = lshr exact i64 %34, 2
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %36, -1
  %38 = call i32 @luaG_getfuncline(%struct.Proto* %25, i32 %37) #10
  %39 = call i8* @luaG_addinfo(%struct.lua_State* nonnull %0, i8* %15, %struct.TString* %27, i32 %38) #11
  br label %40

; <label>:40:                                     ; preds = %13, %20
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #13
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @varinfo(%struct.lua_State*, %struct.TValue*) unnamed_addr #4 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i8* null, i8** %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %8 = load i16, i16* %7, align 2, !tbaa !19
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %77

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.CallInfo* %6 to %struct.LClosure***
  %13 = load %struct.LClosure**, %struct.LClosure*** %12, align 8, !tbaa !29
  %14 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 3
  %16 = load i8, i8* %15, align 2, !tbaa !61
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %42, label %18

; <label>:18:                                     ; preds = %11
  %19 = zext i8 %16 to i64
  br label %20

; <label>:20:                                     ; preds = %27, %18
  %21 = phi i64 [ 0, %18 ], [ %28, %27 ]
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 6, i64 %21
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8, !tbaa !26
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i64 0, i32 3
  %25 = load %struct.TValue*, %struct.TValue** %24, align 8, !tbaa !63
  %26 = icmp eq %struct.TValue* %25, %1
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %20
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp ult i64 %28, %19
  br i1 %29, label %20, label %42

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %32 = load %struct.Proto*, %struct.Proto** %31, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i64 0, i32 18
  %34 = load %struct.Upvaldesc*, %struct.Upvaldesc** %33, align 8, !tbaa !66
  %35 = and i64 %21, 4294967295
  %36 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %34, i64 %35, i32 0
  %37 = load %struct.TString*, %struct.TString** %36, align 8, !tbaa !67
  %38 = icmp eq %struct.TString* %37, null
  %39 = getelementptr inbounds %struct.TString, %struct.TString* %37, i64 1
  %40 = bitcast %struct.TString* %39 to i8*
  %41 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %40
  store i8* %41, i8** %3, align 8, !tbaa !26
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
  %51 = load i64, i64* %50, align 8, !tbaa !69
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
  %62 = load i64, i64* %61, align 8, !tbaa !31
  %63 = sub i64 %59, %62
  %64 = lshr exact i64 %63, 2
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %65, -1
  %67 = lshr exact i64 %46, 4
  %68 = trunc i64 %67 to i32
  %69 = call fastcc i8* @getobjname(%struct.Proto* %56, i32 %66, i32 %68, i8** nonnull %3) #11
  %70 = icmp eq i8* %69, null
  br i1 %70, label %77, label %71

; <label>:71:                                     ; preds = %54
  %72 = load i8*, i8** %3, align 8, !tbaa !26
  br label %73

; <label>:73:                                     ; preds = %71, %30
  %74 = phi i8* [ %41, %30 ], [ %72, %71 ]
  %75 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %30 ], [ %69, %71 ]
  %76 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %75, i8* %74) #10
  br label %77

; <label>:77:                                     ; preds = %48, %42, %2, %54, %73
  %78 = phi i8* [ %76, %73 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %78
}

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #10
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %2, i8* %4) #13
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !34
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -3
  %8 = icmp ult i8 %7, 2
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #13
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !34
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* %3) #13
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 35
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %3
  %10 = bitcast %struct.TValue* %1 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !13
  store i64 %11, i64* %4, align 8, !tbaa !70
  br label %16

; <label>:12:                                     ; preds = %3
  %13 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #10
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, %struct.TValue* %1, %struct.TValue* %2
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi %struct.TValue* [ %2, %9 ], [ %15, %12 ]
  %18 = call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %17) #11
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %18) #13
  unreachable
}

; Function Attrs: optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #10
  %5 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %2) #10
  %6 = tail call i32 @strcmp(i8* %4, i8* %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %4) #13
  unreachable

; <label>:9:                                      ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %4, i8* %5) #13
  unreachable
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
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
  %12 = load i8, i8* %11, align 8, !tbaa !41
  %13 = icmp eq i8 %12, 20
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 4
  %16 = load i8, i8* %15, align 1, !tbaa !43
  %17 = zext i8 %16 to i64
  br label %21

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %2, i64 0, i32 6, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !13
  br label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i64 [ %17, %14 ], [ %20, %18 ]
  call void @luaO_chunkid(i8* nonnull %6, i8* nonnull %10, i64 %22) #10
  br label %25

; <label>:23:                                     ; preds = %4
  store i8 63, i8* %6, align 16, !tbaa !13
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %24, align 1, !tbaa !13
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %6, i32 %3, i8* %1) #10
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %6) #9
  ret i8* %26
}

; Function Attrs: optsize
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %3 = load i64, i64* %2, align 8, !tbaa !72
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %30, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %7 = bitcast %union.StackValue** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !73
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
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %29, i32 1) #10
  br label %30

; <label>:30:                                     ; preds = %1, %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #14
  unreachable
}

; Function Attrs: optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #5

; Function Attrs: noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #8

; Function Attrs: optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #4 {
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
  store i32 0, i32* %11, align 8, !tbaa !13
  br label %119

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i32, i32* %1, i64 1
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4
  %15 = bitcast %union.anon* %14 to i32**
  store i32* %13, i32** %15, align 8, !tbaa !13
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
  br i1 %28, label %119, label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %31 = load i16, i16* %30, align 2, !tbaa !19
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %29
  %35 = and i16 %31, -33
  store i16 %35, i16* %30, align 2, !tbaa !19
  br label %119

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
  %52 = load i64, i64* %51, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %54 = bitcast %union.StackValue** %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !33
  br label %55

; <label>:55:                                     ; preds = %36, %49
  br i1 %22, label %56, label %57

; <label>:56:                                     ; preds = %55
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 3, i32 -1, i32 0, i32 0) #10
  br label %57

; <label>:57:                                     ; preds = %56, %55
  %58 = and i32 %6, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %108, label %60

; <label>:60:                                     ; preds = %57
  %61 = bitcast %struct.CallInfo* %4 to %struct.LClosure***
  %62 = load %struct.LClosure**, %struct.LClosure*** %61, align 8, !tbaa !29
  %63 = load %struct.LClosure*, %struct.LClosure** %62, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i64 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 16
  %67 = bitcast i32** %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !31
  %69 = ptrtoint i32* %13 to i64
  %70 = sub i64 %69, %68
  %71 = lshr exact i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  br i1 %74, label %105, label %76

; <label>:76:                                     ; preds = %60
  %77 = load i32*, i32** %75, align 8, !tbaa !20
  %78 = icmp ugt i32* %13, %77
  br i1 %78, label %79, label %105

; <label>:79:                                     ; preds = %76
  %80 = ptrtoint i32* %77 to i64
  %81 = sub i64 %80, %68
  %82 = lshr exact i64 %81, 2
  %83 = trunc i64 %82 to i32
  %84 = add nsw i32 %83, -1
  %85 = icmp sgt i32 %72, %83
  br i1 %85, label %86, label %107

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 19
  %88 = load i8*, i8** %87, align 8, !tbaa !2
  %89 = sext i32 %84 to i64
  %90 = sext i32 %73 to i64
  br label %94

; <label>:91:                                     ; preds = %94
  %92 = add nsw i32 %96, 1
  %93 = icmp slt i64 %97, %90
  br i1 %93, label %94, label %107

; <label>:94:                                     ; preds = %91, %86
  %95 = phi i64 [ %89, %86 ], [ %97, %91 ]
  %96 = phi i32 [ %84, %86 ], [ %92, %91 ]
  %97 = add nsw i64 %95, 1
  %98 = getelementptr inbounds i8, i8* %88, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %91, label %101

; <label>:101:                                    ; preds = %94
  %102 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %65, i32 %96) #10
  %103 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %65, i32 %73) #10
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %107, label %105

; <label>:105:                                    ; preds = %60, %101, %76
  %106 = tail call i32 @luaG_getfuncline(%struct.Proto* %65, i32 %73) #11
  tail call void @luaD_hook(%struct.lua_State* %0, i32 2, i32 %106, i32 0, i32 0) #10
  br label %107

; <label>:107:                                    ; preds = %91, %79, %101, %105
  store i32* %13, i32** %75, align 8, !tbaa !20
  br label %108

; <label>:108:                                    ; preds = %57, %107
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %110 = load i8, i8* %109, align 2, !tbaa !74
  %111 = icmp eq i8 %110, 1
  br i1 %111, label %112, label %119

; <label>:112:                                    ; preds = %108
  br i1 %22, label %113, label %114

; <label>:113:                                    ; preds = %112
  store i32 1, i32* %16, align 4, !tbaa !23
  br label %114

; <label>:114:                                    ; preds = %113, %112
  %115 = load i32*, i32** %15, align 8, !tbaa !13
  %116 = getelementptr inbounds i32, i32* %115, i64 -1
  store i32* %116, i32** %15, align 8, !tbaa !13
  %117 = load i16, i16* %30, align 2, !tbaa !19
  %118 = or i16 %117, 32
  store i16 %118, i16* %30, align 2, !tbaa !19
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 1) #14
  unreachable

; <label>:119:                                    ; preds = %108, %26, %34, %9
  %120 = phi i32 [ 1, %34 ], [ 0, %9 ], [ 1, %26 ], [ 1, %108 ]
  ret i32 %120
}

; Function Attrs: optsize
declare hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @getobjname(%struct.Proto*, i32, i32, i8**) unnamed_addr #4 {
  %5 = add nsw i32 %2, 1
  %6 = tail call i8* @luaF_getlocalname(%struct.Proto* %0, i32 %5, i32 %1) #10
  store i8* %6, i8** %3, align 8, !tbaa !26
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %190

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  br label %14

; <label>:10:                                     ; preds = %76
  %11 = add nuw nsw i32 %78, 1
  %12 = tail call i8* @luaF_getlocalname(%struct.Proto* %0, i32 %11, i32 %66) #10
  store i8* %12, i8** %3, align 8, !tbaa !26
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %190

; <label>:14:                                     ; preds = %8, %10
  %15 = phi i32 [ %2, %8 ], [ %78, %10 ]
  %16 = phi i32 [ %1, %8 ], [ %66, %10 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %190

; <label>:18:                                     ; preds = %14
  %19 = load i32*, i32** %9, align 8, !tbaa !31
  %20 = zext i32 %16 to i64
  br label %21

; <label>:21:                                     ; preds = %64, %18
  %22 = phi i64 [ 0, %18 ], [ %67, %64 ]
  %23 = phi i32 [ -1, %18 ], [ %66, %64 ]
  %24 = phi i32 [ 0, %18 ], [ %65, %64 ]
  %25 = getelementptr inbounds i32, i32* %19, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !12
  %27 = lshr i32 %26, 7
  %28 = and i32 %27, 255
  %29 = trunc i32 %26 to i7
  switch i7 %29, label %45 [
    i7 6, label %30
    i7 -51, label %32
    i7 -59, label %35
    i7 -58, label %35
    i7 57, label %37
  ]

; <label>:30:                                     ; preds = %21
  %31 = icmp sgt i32 %28, %15
  br i1 %31, label %64, label %54

; <label>:32:                                     ; preds = %21
  %33 = add nuw nsw i32 %28, 2
  %34 = icmp sgt i32 %33, %15
  br i1 %34, label %64, label %59

; <label>:35:                                     ; preds = %21, %21
  %36 = icmp sgt i32 %28, %15
  br i1 %36, label %64, label %59

; <label>:37:                                     ; preds = %21
  %38 = trunc i64 %22 to i32
  %39 = add i32 %38, -16777214
  %40 = add i32 %39, %27
  %41 = icmp sle i32 %40, %16
  %42 = icmp sgt i32 %40, %24
  %43 = and i1 %41, %42
  %44 = select i1 %43, i32 %40, i32 %24
  br label %64

; <label>:45:                                     ; preds = %21
  %46 = and i32 %26, 127
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !13
  %50 = and i8 %49, 8
  %51 = icmp ne i8 %50, 0
  %52 = icmp eq i32 %28, %15
  %53 = and i1 %52, %51
  br i1 %53, label %59, label %64

; <label>:54:                                     ; preds = %30
  %55 = lshr i32 %26, 16
  %56 = and i32 %55, 255
  %57 = add nuw nsw i32 %28, %56
  %58 = icmp slt i32 %57, %15
  br i1 %58, label %64, label %59

; <label>:59:                                     ; preds = %54, %45, %35, %32
  %60 = sext i32 %24 to i64
  %61 = icmp slt i64 %22, %60
  %62 = trunc i64 %22 to i32
  %63 = select i1 %61, i32 -1, i32 %62
  br label %64

; <label>:64:                                     ; preds = %59, %54, %45, %37, %35, %32, %30
  %65 = phi i32 [ %24, %59 ], [ %24, %54 ], [ %24, %45 ], [ %24, %35 ], [ %24, %32 ], [ %44, %37 ], [ %24, %30 ]
  %66 = phi i32 [ %63, %59 ], [ %23, %54 ], [ %23, %45 ], [ %23, %35 ], [ %23, %32 ], [ %23, %37 ], [ %23, %30 ]
  %67 = add nuw nsw i64 %22, 1
  %68 = icmp eq i64 %67, %20
  br i1 %68, label %69, label %21

; <label>:69:                                     ; preds = %64
  %70 = icmp eq i32 %66, -1
  br i1 %70, label %190, label %71

; <label>:71:                                     ; preds = %69
  %72 = sext i32 %66 to i64
  %73 = getelementptr inbounds i32, i32* %19, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %75 = trunc i32 %74 to i7
  switch i7 %75, label %190 [
    i7 0, label %76
    i7 9, label %82
    i7 10, label %99
    i7 11, label %109
    i7 12, label %110
    i7 7, label %127
    i7 3, label %139
    i7 4, label %139
    i7 18, label %164
  ]

; <label>:76:                                     ; preds = %71
  %77 = lshr i32 %74, 16
  %78 = and i32 %77, 255
  %79 = lshr i32 %74, 7
  %80 = and i32 %79, 255
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %10, label %190

; <label>:82:                                     ; preds = %71
  %83 = lshr i32 %74, 24
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %85 = load %struct.TValue*, %struct.TValue** %84, align 8, !tbaa !75
  %86 = zext i32 %83 to i64
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i64 %86, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !34
  %89 = and i8 %88, 15
  %90 = icmp eq i8 %89, 4
  br i1 %90, label %91, label %96

; <label>:91:                                     ; preds = %82
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i64 %86, i32 0, i32 0
  %93 = bitcast %struct.GCObject** %92 to i8**
  %94 = load i8*, i8** %93, align 8, !tbaa !13
  %95 = getelementptr inbounds i8, i8* %94, i64 24
  br label %96

; <label>:96:                                     ; preds = %82, %91
  %97 = phi i8* [ %95, %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %82 ]
  store i8* %97, i8** %3, align 8, !tbaa !26
  %98 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %66, i32 %74, i32 1) #11
  br label %190

; <label>:99:                                     ; preds = %71
  %100 = lshr i32 %74, 24
  %101 = tail call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %66, i32 %100, i8** %3) #10
  %102 = icmp eq i8* %101, null
  br i1 %102, label %106, label %103

; <label>:103:                                    ; preds = %99
  %104 = load i8, i8* %101, align 1, !tbaa !13
  %105 = icmp eq i8 %104, 99
  br i1 %105, label %107, label %106

; <label>:106:                                    ; preds = %103, %99
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %107

; <label>:107:                                    ; preds = %103, %106
  %108 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %66, i32 %74, i32 0) #11
  br label %190

; <label>:109:                                    ; preds = %71
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %190

; <label>:110:                                    ; preds = %71
  %111 = lshr i32 %74, 24
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %113 = load %struct.TValue*, %struct.TValue** %112, align 8, !tbaa !75
  %114 = zext i32 %111 to i64
  %115 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i64 %114, i32 1
  %116 = load i8, i8* %115, align 8, !tbaa !34
  %117 = and i8 %116, 15
  %118 = icmp eq i8 %117, 4
  br i1 %118, label %119, label %124

; <label>:119:                                    ; preds = %110
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i64 %114, i32 0, i32 0
  %121 = bitcast %struct.GCObject** %120 to i8**
  %122 = load i8*, i8** %121, align 8, !tbaa !13
  %123 = getelementptr inbounds i8, i8* %122, i64 24
  br label %124

; <label>:124:                                    ; preds = %110, %119
  %125 = phi i8* [ %123, %119 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %110 ]
  store i8* %125, i8** %3, align 8, !tbaa !26
  %126 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %66, i32 %74, i32 0) #11
  br label %190

; <label>:127:                                    ; preds = %71
  %128 = lshr i32 %74, 16
  %129 = and i32 %128, 255
  %130 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %131 = load %struct.Upvaldesc*, %struct.Upvaldesc** %130, align 8, !tbaa !66
  %132 = zext i32 %129 to i64
  %133 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %131, i64 %132, i32 0
  %134 = load %struct.TString*, %struct.TString** %133, align 8, !tbaa !67
  %135 = icmp eq %struct.TString* %134, null
  %136 = getelementptr inbounds %struct.TString, %struct.TString* %134, i64 1
  %137 = bitcast %struct.TString* %136 to i8*
  %138 = select i1 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %137
  store i8* %138, i8** %3, align 8, !tbaa !26
  br label %190

; <label>:139:                                    ; preds = %71, %71
  %140 = and i32 %74, 127
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %144

; <label>:142:                                    ; preds = %139
  %143 = lshr i32 %74, 15
  br label %150

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %66, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %19, i64 %146
  %148 = load i32, i32* %147, align 4, !tbaa !12
  %149 = lshr i32 %148, 7
  br label %150

; <label>:150:                                    ; preds = %144, %142
  %151 = phi i32 [ %143, %142 ], [ %149, %144 ]
  %152 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %153 = load %struct.TValue*, %struct.TValue** %152, align 8, !tbaa !75
  %154 = zext i32 %151 to i64
  %155 = getelementptr inbounds %struct.TValue, %struct.TValue* %153, i64 %154, i32 1
  %156 = load i8, i8* %155, align 8, !tbaa !34
  %157 = and i8 %156, 15
  %158 = icmp eq i8 %157, 4
  br i1 %158, label %159, label %190

; <label>:159:                                    ; preds = %150
  %160 = getelementptr inbounds %struct.TValue, %struct.TValue* %153, i64 %154, i32 0, i32 0
  %161 = bitcast %struct.GCObject** %160 to i8**
  %162 = load i8*, i8** %161, align 8, !tbaa !13
  %163 = getelementptr inbounds i8, i8* %162, i64 24
  store i8* %163, i8** %3, align 8, !tbaa !26
  br label %190

; <label>:164:                                    ; preds = %71
  %165 = lshr i32 %74, 24
  %166 = trunc i32 %74 to i16
  %167 = icmp slt i16 %166, 0
  br i1 %167, label %168, label %183

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %170 = load %struct.TValue*, %struct.TValue** %169, align 8, !tbaa !75
  %171 = zext i32 %165 to i64
  %172 = getelementptr inbounds %struct.TValue, %struct.TValue* %170, i64 %171, i32 1
  %173 = load i8, i8* %172, align 8, !tbaa !34
  %174 = and i8 %173, 15
  %175 = icmp eq i8 %174, 4
  br i1 %175, label %176, label %181

; <label>:176:                                    ; preds = %168
  %177 = getelementptr inbounds %struct.TValue, %struct.TValue* %170, i64 %171, i32 0, i32 0
  %178 = bitcast %struct.GCObject** %177 to i8**
  %179 = load i8*, i8** %178, align 8, !tbaa !13
  %180 = getelementptr inbounds i8, i8* %179, i64 24
  br label %181

; <label>:181:                                    ; preds = %176, %168
  %182 = phi i8* [ %180, %176 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %168 ]
  store i8* %182, i8** %3, align 8, !tbaa !26
  br label %190

; <label>:183:                                    ; preds = %164
  %184 = tail call fastcc i8* @getobjname(%struct.Proto* nonnull %0, i32 %66, i32 %165, i8** %3) #10
  %185 = icmp eq i8* %184, null
  br i1 %185, label %189, label %186

; <label>:186:                                    ; preds = %183
  %187 = load i8, i8* %184, align 1, !tbaa !13
  %188 = icmp eq i8 %187, 99
  br i1 %188, label %190, label %189

; <label>:189:                                    ; preds = %186, %183
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %190

; <label>:190:                                    ; preds = %10, %71, %69, %14, %76, %4, %181, %186, %189, %159, %96, %107, %109, %124, %127, %150
  %191 = phi i8* [ null, %150 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %181 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %186 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %189 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %159 ], [ %98, %96 ], [ %108, %107 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %109 ], [ %126, %124 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %127 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %4 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %10 ], [ null, %71 ], [ null, %69 ], [ null, %14 ], [ null, %76 ]
  ret i8* %191
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @gxf(%struct.Proto*, i32, i32, i32) unnamed_addr #4 {
  %5 = alloca i8*, align 8
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %20, label %10

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %12 = load %struct.Upvaldesc*, %struct.Upvaldesc** %11, align 8, !tbaa !66
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %12, i64 %13, i32 0
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !67
  %16 = icmp eq %struct.TString* %15, null
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %15, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  %19 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %18
  store i8* %19, i8** %5, align 8, !tbaa !26
  br label %24

; <label>:20:                                     ; preds = %4
  %21 = call fastcc i8* @getobjname(%struct.Proto* %0, i32 %1, i32 %7, i8** nonnull %5) #11
  %22 = load i8*, i8** %5, align 8, !tbaa !26
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %10, %20
  %25 = phi i8* [ %19, %10 ], [ %22, %20 ]
  %26 = call i32 @strcmp(i8* nonnull %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #12
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %29

; <label>:29:                                     ; preds = %20, %24
  %30 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %20 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  ret i8* %30
}

; Function Attrs: optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #5

; Function Attrs: optsize
declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #5

attributes #0 = { nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { noreturn optsize }
attributes #14 = { noreturn nounwind optsize }

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
!30 = !{!3, !5, i64 11}
!31 = !{!3, !4, i64 64}
!32 = !{!17, !4, i64 24}
!33 = !{!15, !4, i64 16}
!34 = !{!35, !5, i64 8}
!35 = !{!"TValue", !5, i64 0, !5, i64 8}
!36 = !{!28, !4, i64 32}
!37 = !{!28, !18, i64 40}
!38 = !{!28, !7, i64 52}
!39 = !{!28, !7, i64 56}
!40 = !{!3, !4, i64 112}
!41 = !{!42, !5, i64 8}
!42 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!43 = !{!42, !5, i64 11}
!44 = !{!3, !7, i64 44}
!45 = !{!3, !7, i64 48}
!46 = !{!28, !4, i64 24}
!47 = !{!28, !7, i64 48}
!48 = !{!28, !5, i64 60}
!49 = !{!28, !5, i64 62}
!50 = !{!28, !5, i64 61}
!51 = !{!3, !5, i64 10}
!52 = !{!28, !5, i64 63}
!53 = !{!15, !4, i64 24}
!54 = !{!28, !4, i64 16}
!55 = !{!28, !16, i64 66}
!56 = !{!28, !16, i64 64}
!57 = !{!3, !7, i64 28}
!58 = !{!59, !18, i64 24}
!59 = !{!"global_State", !4, i64 0, !4, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !60, i64 48, !35, i64 64, !35, i64 80, !7, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!60 = !{!"stringtable", !4, i64 0, !7, i64 8, !7, i64 12}
!61 = !{!62, !5, i64 10}
!62 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!63 = !{!64, !4, i64 16}
!64 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!65 = !{!62, !4, i64 24}
!66 = !{!3, !4, i64 80}
!67 = !{!68, !4, i64 0}
!68 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!69 = !{!17, !4, i64 8}
!70 = !{!71, !71, i64 0}
!71 = !{!"long long", !5, i64 0}
!72 = !{!15, !18, i64 168}
!73 = !{!15, !4, i64 56}
!74 = !{!15, !5, i64 10}
!75 = !{!3, !4, i64 56}
