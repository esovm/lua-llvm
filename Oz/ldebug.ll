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

; Function Attrs: minsize nounwind optsize readonly uwtable
define hidden i32 @luaG_getfuncline(%struct.Proto* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %5 = icmp eq i8* %4, null
  br i1 %5, label %61, label %6

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
  br i1 %23, label %24, label %39

; <label>:24:                                     ; preds = %18
  br label %25

; <label>:25:                                     ; preds = %24, %30
  %26 = phi i32 [ %37, %30 ], [ 0, %24 ]
  %27 = phi i32 [ %38, %30 ], [ %19, %24 ]
  %28 = add i32 %27, -1
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = add i32 %27, %26
  %32 = lshr i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %33, i32 0
  %35 = load i32, i32* %34, align 4, !tbaa !10
  %36 = icmp sgt i32 %35, %1
  %37 = select i1 %36, i32 %26, i32 %32
  %38 = select i1 %36, i32 %32, i32 %27
  br label %25

; <label>:39:                                     ; preds = %25, %18
  %40 = phi i32 [ %19, %18 ], [ %26, %25 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %41, i32 0
  %43 = load i32, i32* %42, align 4, !tbaa !10
  %44 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %12, i64 %41, i32 1
  %45 = sext i32 %43 to i64
  br label %46

; <label>:46:                                     ; preds = %16, %39
  %47 = phi i64 [ -1, %16 ], [ %45, %39 ]
  %48 = phi i32* [ %17, %16 ], [ %44, %39 ]
  %49 = load i32, i32* %48, align 4, !tbaa !12
  %50 = sext i32 %1 to i64
  br label %51

; <label>:51:                                     ; preds = %56, %46
  %52 = phi i64 [ %54, %56 ], [ %47, %46 ]
  %53 = phi i32 [ %60, %56 ], [ %49, %46 ]
  %54 = add nsw i64 %52, 1
  %55 = icmp slt i64 %52, %50
  br i1 %55, label %56, label %61

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds i8, i8* %4, i64 %54
  %58 = load i8, i8* %57, align 1, !tbaa !13
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %53, %59
  br label %51

; <label>:61:                                     ; preds = %51, %2
  %62 = phi i32 [ -1, %2 ], [ %53, %51 ]
  ret i32 %62
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize norecurse nounwind optsize uwtable
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
  br i1 %28, label %44, label %29

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %41
  %31 = phi %struct.CallInfo* [ %43, %41 ], [ %11, %29 ]
  %32 = icmp eq %struct.CallInfo* %31, null
  br i1 %32, label %44, label %33

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 7
  %35 = load i16, i16* %34, align 2, !tbaa !19
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 4, i32 0, i32 1
  %40 = bitcast i64* %39 to i32*
  store i32 1, i32* %40, align 8, !tbaa !13
  br label %41

; <label>:41:                                     ; preds = %38, %33
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 2
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !tbaa !25
  br label %30

; <label>:44:                                     ; preds = %30, %22
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %3 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !tbaa !21
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3 = load i32, i32* %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %3 = load i32, i32* %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define i32 @lua_getstack(%struct.lua_State* readonly, i32, %struct.lua_Debug* nocapture) local_unnamed_addr #2 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %24, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  br label %8

; <label>:8:                                      ; preds = %15, %5
  %9 = phi i32 [ %1, %5 ], [ %16, %15 ]
  %10 = phi %struct.CallInfo** [ %6, %5 ], [ %17, %15 ]
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !tbaa !26
  %12 = icmp sgt i32 %9, 0
  %13 = icmp ne %struct.CallInfo* %11, %7
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %8
  %16 = add nsw i32 %9, -1
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 2
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = icmp ne i32 %9, 0
  %20 = icmp eq %struct.CallInfo* %11, %7
  %21 = or i1 %19, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 16
  store %struct.CallInfo* %11, %struct.CallInfo** %23, align 8, !tbaa !27
  br label %24

; <label>:24:                                     ; preds = %22, %18, %3
  %25 = phi i32 [ 0, %3 ], [ 1, %22 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i8* @luaG_findlocal(%struct.lua_State* nocapture readonly, %struct.CallInfo* readonly, i32, %union.StackValue**) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !19
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %40

; <label>:12:                                     ; preds = %4
  %13 = icmp slt i32 %2, 0
  %14 = bitcast %union.StackValue* %6 to %struct.LClosure**
  %15 = load %struct.LClosure*, %struct.LClosure** %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i64 0, i32 5
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !13
  br i1 %13, label %18, label %36

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 4
  %20 = load i8, i8* %19, align 1, !tbaa !30
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %73, label %22

; <label>:22:                                     ; preds = %18
  %23 = sub nsw i32 0, %2
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %25 = bitcast %union.anon* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i64 0, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !13
  %28 = icmp slt i32 %27, %23
  br i1 %28, label %73, label %29

; <label>:29:                                     ; preds = %22
  %30 = sext i32 %27 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 %31
  %33 = xor i32 %2, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 %34
  store %union.StackValue* %35, %union.StackValue** %3, align 8, !tbaa !26
  br label %73

; <label>:36:                                     ; preds = %12
  %37 = tail call fastcc i32 @currentpc(%struct.CallInfo* nonnull %1) #10
  %38 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 %37) #11
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %66

; <label>:40:                                     ; preds = %4, %36
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !tbaa !14
  %43 = icmp eq %struct.CallInfo* %42, %1
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %50

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %48 = load %struct.CallInfo*, %struct.CallInfo** %47, align 8, !tbaa !31
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %48, i64 0, i32 0
  br label %50

; <label>:50:                                     ; preds = %46, %44
  %51 = phi %union.StackValue** [ %45, %44 ], [ %49, %46 ]
  %52 = bitcast %union.StackValue** %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !26
  %54 = ptrtoint %union.StackValue* %7 to i64
  %55 = sub i64 %53, %54
  %56 = ashr exact i64 %55, 4
  %57 = sext i32 %2 to i64
  %58 = icmp sge i64 %56, %57
  %59 = icmp sgt i32 %2, 0
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %73

; <label>:61:                                     ; preds = %50
  %62 = load i16, i16* %8, align 2, !tbaa !19
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  br label %66

; <label>:66:                                     ; preds = %61, %36
  %67 = phi i8* [ %38, %36 ], [ %65, %61 ]
  %68 = icmp eq %union.StackValue** %3, null
  br i1 %68, label %73, label %69

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %2, -1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %71
  store %union.StackValue* %72, %union.StackValue** %3, align 8, !tbaa !26
  br label %73

; <label>:73:                                     ; preds = %50, %29, %22, %18, %69, %66
  %74 = phi i8* [ %67, %66 ], [ %67, %69 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %29 ], [ null, %22 ], [ null, %18 ], [ null, %50 ]
  ret i8* %74
}

; Function Attrs: minsize optsize
declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #5

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @currentpc(%struct.CallInfo* nocapture readonly) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i64 0, i32 4
  %3 = bitcast %union.anon* %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !13
  %5 = bitcast %struct.CallInfo* %0 to %struct.LClosure***
  %6 = load %struct.LClosure**, %struct.LClosure*** %5, align 8, !tbaa !29
  %7 = load %struct.LClosure*, %struct.LClosure** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i64 0, i32 5
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = bitcast i32** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !32
  %13 = sub i64 %4, %12
  %14 = lshr exact i64 %13, 2
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %15, -1
  ret i32 %16
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %18 = tail call i8* @luaF_getlocalname(%struct.Proto* %17, i32 %2, i32 0) #11
  br label %40

; <label>:19:                                     ; preds = %3
  %20 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #9
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %22 = load %struct.CallInfo*, %struct.CallInfo** %21, align 8, !tbaa !27
  %23 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %22, i32 %2, %union.StackValue** nonnull %4) #10
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

; Function Attrs: minsize nounwind optsize uwtable
define i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #4 {
  %4 = alloca %union.StackValue*, align 8
  %5 = bitcast %union.StackValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 16
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !27
  %8 = call i8* @luaG_findlocal(%struct.lua_State* %0, %struct.CallInfo* %7, i32 %2, %union.StackValue** nonnull %4) #10
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %31 = icmp eq %union.Closure* %30, null
  %32 = icmp eq %struct.CallInfo* %20, null
  %33 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 15, i64 0
  %40 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 7
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 11
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10
  %46 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 3
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 12
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 14
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 13
  %51 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 5
  %52 = bitcast i32 (%struct.lua_State*)** %51 to %struct.Proto**
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 5
  %54 = bitcast %union.anon.1* %53 to %struct.anon.2*
  %55 = bitcast %union.anon.1* %53 to i16*
  %56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i64 0, i32 1
  %57 = bitcast i8** %34 to %struct.TString**
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 2
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = bitcast i8** %33 to <2 x i8*>*
  br label %61

; <label>:61:                                     ; preds = %209, %29
  %62 = phi i8* [ %21, %29 ], [ %211, %209 ]
  %63 = phi i32 [ 1, %29 ], [ %210, %209 ]
  %64 = load i8, i8* %62, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %212, label %66

; <label>:66:                                     ; preds = %61
  %67 = sext i8 %64 to i32
  switch i32 %67, label %208 [
    i32 83, label %68
    i32 108, label %105
    i32 117, label %114
    i32 116, label %128
    i32 110, label %135
    i32 114, label %199
    i32 76, label %209
    i32 102, label %209
  ]

; <label>:68:                                     ; preds = %66
  br i1 %31, label %72, label %69

; <label>:69:                                     ; preds = %68
  %70 = load i8, i8* %40, align 8, !tbaa !13
  %71 = icmp eq i8 %70, 54
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %69, %68
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %34, align 8, !tbaa !36
  store i64 4, i64* %35, align 8, !tbaa !37
  store i32 -1, i32* %36, align 4, !tbaa !38
  store i32 -1, i32* %37, align 8, !tbaa !39
  br label %101

; <label>:73:                                     ; preds = %69
  %74 = load %struct.Proto*, %struct.Proto** %52, align 8, !tbaa !13
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i64 0, i32 22
  %76 = load %struct.TString*, %struct.TString** %75, align 8, !tbaa !40
  %77 = icmp eq %struct.TString* %76, null
  br i1 %77, label %91, label %78

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.TString, %struct.TString* %76, i64 1
  store %struct.TString* %79, %struct.TString** %57, align 8, !tbaa !36
  %80 = getelementptr inbounds %struct.TString, %struct.TString* %76, i64 0, i32 1
  %81 = load i8, i8* %80, align 8, !tbaa !41
  %82 = icmp eq i8 %81, 20
  %83 = bitcast %struct.TString* %79 to i8*
  br i1 %82, label %84, label %88

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.TString, %struct.TString* %76, i64 0, i32 4
  %86 = load i8, i8* %85, align 1, !tbaa !43
  %87 = zext i8 %86 to i64
  br label %92

; <label>:88:                                     ; preds = %78
  %89 = getelementptr inbounds %struct.TString, %struct.TString* %76, i64 0, i32 6, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !13
  br label %92

; <label>:91:                                     ; preds = %73
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %34, align 8, !tbaa !36
  br label %92

; <label>:92:                                     ; preds = %91, %88, %84
  %93 = phi i64 [ 2, %91 ], [ %87, %84 ], [ %90, %88 ]
  %94 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %91 ], [ %83, %84 ], [ %83, %88 ]
  store i64 %93, i64* %35, align 8, !tbaa !37
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i64 0, i32 13
  %96 = load i32, i32* %95, align 4, !tbaa !44
  store i32 %96, i32* %36, align 4, !tbaa !38
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i64 0, i32 14
  %98 = load i32, i32* %97, align 8, !tbaa !45
  store i32 %98, i32* %37, align 8, !tbaa !39
  %99 = icmp eq i32 %96, 0
  %100 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  br label %101

; <label>:101:                                    ; preds = %92, %72
  %102 = phi i8* [ %100, %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %72 ]
  %103 = phi i64 [ %93, %92 ], [ 4, %72 ]
  %104 = phi i8* [ %94, %92 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %72 ]
  store i8* %102, i8** %38, align 8, !tbaa !46
  tail call void @luaO_chunkid(i8* nonnull %39, i8* %104, i64 %103) #11
  br label %209

; <label>:105:                                    ; preds = %66
  br i1 %32, label %112, label %106

; <label>:106:                                    ; preds = %105
  %107 = load i16, i16* %42, align 2, !tbaa !19
  %108 = and i16 %107, 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %106
  %111 = tail call fastcc i32 @currentline(%struct.CallInfo* nonnull %20) #11
  br label %112

; <label>:112:                                    ; preds = %110, %106, %105
  %113 = phi i32 [ %111, %110 ], [ -1, %106 ], [ -1, %105 ]
  store i32 %113, i32* %41, align 8, !tbaa !47
  br label %209

; <label>:114:                                    ; preds = %66
  br i1 %31, label %119, label %115

; <label>:115:                                    ; preds = %114
  %116 = load i8, i8* %46, align 2, !tbaa !13
  store i8 %116, i8* %43, align 4, !tbaa !48
  %117 = load i8, i8* %40, align 8, !tbaa !13
  %118 = icmp eq i8 %117, 54
  br i1 %118, label %120, label %121

; <label>:119:                                    ; preds = %114
  store i8 0, i8* %43, align 4, !tbaa !48
  br label %120

; <label>:120:                                    ; preds = %119, %115
  store i8 1, i8* %44, align 2, !tbaa !49
  store i8 0, i8* %45, align 1, !tbaa !50
  br label %209

; <label>:121:                                    ; preds = %115
  %122 = load %struct.Proto*, %struct.Proto** %52, align 8, !tbaa !13
  %123 = getelementptr inbounds %struct.Proto, %struct.Proto* %122, i64 0, i32 4
  %124 = load i8, i8* %123, align 1, !tbaa !30
  store i8 %124, i8* %44, align 2, !tbaa !49
  %125 = load %struct.Proto*, %struct.Proto** %52, align 8, !tbaa !13
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %125, i64 0, i32 3
  %127 = load i8, i8* %126, align 2, !tbaa !51
  store i8 %127, i8* %45, align 1, !tbaa !50
  br label %209

; <label>:128:                                    ; preds = %66
  br i1 %32, label %133, label %129

; <label>:129:                                    ; preds = %128
  %130 = load i16, i16* %42, align 2, !tbaa !19
  %131 = trunc i16 %130 to i8
  %132 = and i8 %131, 16
  br label %133

; <label>:133:                                    ; preds = %129, %128
  %134 = phi i8 [ %132, %129 ], [ 0, %128 ]
  store i8 %134, i8* %47, align 1, !tbaa !52
  br label %209

; <label>:135:                                    ; preds = %66
  br i1 %32, label %192, label %136

; <label>:136:                                    ; preds = %135
  %137 = load i16, i16* %42, align 2, !tbaa !19
  %138 = zext i16 %137 to i32
  %139 = and i32 %138, 64
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %189

; <label>:141:                                    ; preds = %136
  %142 = and i32 %138, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %192

; <label>:144:                                    ; preds = %141
  %145 = load %struct.CallInfo*, %struct.CallInfo** %58, align 8, !tbaa !25
  %146 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %145, i64 0, i32 7
  %147 = load i16, i16* %146, align 2, !tbaa !19
  %148 = and i16 %147, 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %192

; <label>:150:                                    ; preds = %144
  %151 = bitcast %struct.CallInfo* %145 to %struct.LClosure***
  %152 = load %struct.LClosure**, %struct.LClosure*** %151, align 8, !tbaa !29
  %153 = load %struct.LClosure*, %struct.LClosure** %152, align 8, !tbaa !13
  %154 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %153, i64 0, i32 5
  %155 = load %struct.Proto*, %struct.Proto** %154, align 8, !tbaa !13
  %156 = tail call fastcc i32 @currentpc(%struct.CallInfo* %145) #11
  %157 = getelementptr inbounds %struct.Proto, %struct.Proto* %155, i64 0, i32 16
  %158 = load i32*, i32** %157, align 8, !tbaa !32
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !12
  %162 = and i16 %147, 4
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %189

; <label>:164:                                    ; preds = %150
  %165 = and i32 %161, 127
  %166 = trunc i32 %161 to i7
  switch i7 %166, label %192 [
    i7 -59, label %193
    i7 -58, label %193
    i7 -51, label %189
    i7 18, label %181
    i7 9, label %181
    i7 10, label %181
    i7 11, label %181
    i7 12, label %181
    i7 13, label %167
    i7 14, label %167
    i7 15, label %167
    i7 16, label %167
    i7 19, label %168
    i7 20, label %168
    i7 21, label %168
    i7 22, label %168
    i7 23, label %168
    i7 24, label %168
    i7 25, label %168
    i7 26, label %170
    i7 27, label %170
    i7 28, label %170
    i7 29, label %170
    i7 30, label %170
    i7 31, label %170
    i7 32, label %170
    i7 33, label %170
    i7 34, label %170
    i7 35, label %170
    i7 38, label %172
    i7 39, label %172
    i7 40, label %172
    i7 41, label %172
    i7 42, label %172
    i7 43, label %172
    i7 44, label %172
    i7 45, label %172
    i7 46, label %172
    i7 47, label %172
    i7 48, label %172
    i7 49, label %172
    i7 50, label %174
    i7 51, label %175
    i7 53, label %176
    i7 54, label %177
    i7 58, label %178
    i7 59, label %179
    i7 60, label %179
    i7 63, label %179
    i7 -64, label %179
    i7 36, label %180
    i7 37, label %180
  ]

; <label>:167:                                    ; preds = %164, %164, %164, %164
  br label %181

; <label>:168:                                    ; preds = %164, %164, %164, %164, %164, %164, %164
  %169 = add nsw i32 %165, -13
  br label %181

; <label>:170:                                    ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164
  %171 = add nsw i32 %165, -20
  br label %181

; <label>:172:                                    ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164
  %173 = add nsw i32 %165, -32
  br label %181

; <label>:174:                                    ; preds = %164
  br label %181

; <label>:175:                                    ; preds = %164
  br label %181

; <label>:176:                                    ; preds = %164
  br label %181

; <label>:177:                                    ; preds = %164
  br label %181

; <label>:178:                                    ; preds = %164
  br label %181

; <label>:179:                                    ; preds = %164, %164, %164, %164
  br label %189

; <label>:180:                                    ; preds = %164, %164
  br label %189

; <label>:181:                                    ; preds = %178, %177, %176, %175, %174, %172, %170, %168, %167, %164, %164, %164, %164, %164
  %182 = phi i32 [ 5, %178 ], [ 22, %177 ], [ 4, %176 ], [ 19, %175 ], [ 18, %174 ], [ %173, %172 ], [ %171, %170 ], [ %169, %168 ], [ 1, %167 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ]
  %183 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !53
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds %struct.global_State, %struct.global_State* %183, i64 0, i32 40, i64 %184
  %186 = bitcast %struct.TString** %185 to i8**
  %187 = load i8*, i8** %186, align 8, !tbaa !26
  %188 = getelementptr inbounds i8, i8* %187, i64 26
  br label %189

; <label>:189:                                    ; preds = %164, %150, %136, %181, %180, %179
  %190 = phi i8* [ %188, %181 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %180 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %179 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %136 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %150 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %164 ]
  %191 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %181 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %180 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %179 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %136 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %150 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %164 ]
  store i8* %190, i8** %33, align 8, !tbaa !26
  store i8* %191, i8** %48, align 8, !tbaa !54
  br label %209

; <label>:192:                                    ; preds = %164, %144, %141, %135
  store i8* null, i8** %48, align 8, !tbaa !54
  br label %198

; <label>:193:                                    ; preds = %164, %164
  %194 = lshr i32 %161, 7
  %195 = and i32 %194, 255
  %196 = tail call fastcc i8* @getobjname(%struct.Proto* %155, i32 %156, i32 %195, i8** nonnull %33) #11
  store i8* %196, i8** %48, align 8, !tbaa !54
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %209

; <label>:198:                                    ; preds = %193, %192
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)>, <2 x i8*>* %60, align 8, !tbaa !26
  br label %209

; <label>:199:                                    ; preds = %66
  br i1 %32, label %204, label %200

; <label>:200:                                    ; preds = %199
  %201 = load i16, i16* %42, align 2, !tbaa !19
  %202 = trunc i16 %201 to i8
  %203 = icmp slt i8 %202, 0
  br i1 %203, label %205, label %204

; <label>:204:                                    ; preds = %200, %199
  store i16 0, i16* %49, align 2, !tbaa !55
  store i16 0, i16* %50, align 8, !tbaa !56
  br label %209

; <label>:205:                                    ; preds = %200
  %206 = load i16, i16* %55, align 8, !tbaa !13
  store i16 %206, i16* %50, align 8, !tbaa !56
  %207 = load i16, i16* %56, align 2, !tbaa !13
  store i16 %207, i16* %49, align 2, !tbaa !55
  br label %209

; <label>:208:                                    ; preds = %66
  br label %209

; <label>:209:                                    ; preds = %208, %205, %204, %198, %193, %189, %133, %121, %120, %112, %101, %66, %66
  %210 = phi i32 [ 0, %208 ], [ %63, %66 ], [ %63, %66 ], [ %63, %204 ], [ %63, %205 ], [ %63, %198 ], [ %63, %193 ], [ %63, %133 ], [ %63, %120 ], [ %63, %121 ], [ %63, %112 ], [ %63, %101 ], [ %63, %189 ]
  %211 = getelementptr inbounds i8, i8* %62, i64 1
  br label %61

; <label>:212:                                    ; preds = %61
  %213 = tail call i8* @strchr(i8* %21, i32 102) #12
  %214 = icmp eq i8* %213, null
  br i1 %214, label %226, label %215

; <label>:215:                                    ; preds = %212
  %216 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %217 = bitcast %union.StackValue** %216 to %struct.TValue**
  %218 = load %struct.TValue*, %struct.TValue** %217, align 8, !tbaa !33
  %219 = bitcast %struct.TValue* %19 to i64*
  %220 = bitcast %struct.TValue* %218 to i64*
  %221 = load i64, i64* %219, align 8
  store i64 %221, i64* %220, align 8
  %222 = load i8, i8* %22, align 8, !tbaa !34
  %223 = getelementptr inbounds %struct.TValue, %struct.TValue* %218, i64 0, i32 1
  store i8 %222, i8* %223, align 8, !tbaa !34
  %224 = load %union.StackValue*, %union.StackValue** %216, align 8, !tbaa !33
  %225 = getelementptr inbounds %union.StackValue, %union.StackValue* %224, i64 1
  store %union.StackValue* %225, %union.StackValue** %216, align 8, !tbaa !33
  br label %226

; <label>:226:                                    ; preds = %212, %215
  %227 = tail call i8* @strchr(i8* %21, i32 76) #12
  %228 = icmp eq i8* %227, null
  br i1 %228, label %279, label %229

; <label>:229:                                    ; preds = %226
  br i1 %31, label %233, label %230

; <label>:230:                                    ; preds = %229
  %231 = load i8, i8* %40, align 8, !tbaa !13
  %232 = icmp eq i8 %231, 54
  br i1 %232, label %233, label %240

; <label>:233:                                    ; preds = %230, %229
  %234 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %235 = bitcast %union.StackValue** %234 to %struct.TValue**
  %236 = load %struct.TValue*, %struct.TValue** %235, align 8, !tbaa !33
  %237 = getelementptr inbounds %struct.TValue, %struct.TValue* %236, i64 0, i32 1
  store i8 0, i8* %237, align 8, !tbaa !13
  %238 = load %union.StackValue*, %union.StackValue** %234, align 8, !tbaa !33
  %239 = getelementptr inbounds %union.StackValue, %union.StackValue* %238, i64 1
  store %union.StackValue* %239, %union.StackValue** %234, align 8, !tbaa !33
  br label %279

; <label>:240:                                    ; preds = %230
  %241 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %241) #9
  %242 = load %struct.Proto*, %struct.Proto** %52, align 8, !tbaa !13
  %243 = getelementptr inbounds %struct.Proto, %struct.Proto* %242, i64 0, i32 13
  %244 = load i32, i32* %243, align 4, !tbaa !44
  %245 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #11
  %246 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %247 = bitcast %union.StackValue** %246 to %struct.TValue**
  %248 = load %struct.TValue*, %struct.TValue** %247, align 8, !tbaa !33
  %249 = bitcast %struct.TValue* %248 to %struct.Table**
  store %struct.Table* %245, %struct.Table** %249, align 8, !tbaa !13
  %250 = getelementptr inbounds %struct.TValue, %struct.TValue* %248, i64 0, i32 1
  store i8 69, i8* %250, align 8, !tbaa !34
  %251 = load %union.StackValue*, %union.StackValue** %246, align 8, !tbaa !33
  %252 = getelementptr inbounds %union.StackValue, %union.StackValue* %251, i64 1
  store %union.StackValue* %252, %union.StackValue** %246, align 8, !tbaa !33
  %253 = bitcast %struct.TValue* %4 to i32*
  store i32 1, i32* %253, align 8, !tbaa !13
  %254 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 1, i8* %254, align 8, !tbaa !34
  %255 = getelementptr inbounds %struct.Proto, %struct.Proto* %242, i64 0, i32 9
  %256 = getelementptr inbounds %struct.Proto, %struct.Proto* %242, i64 0, i32 19
  br label %257

; <label>:257:                                    ; preds = %274, %240
  %258 = phi i64 [ %277, %274 ], [ 0, %240 ]
  %259 = phi i32 [ %275, %274 ], [ %244, %240 ]
  %260 = load i32, i32* %255, align 4, !tbaa !57
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %263, label %278

; <label>:263:                                    ; preds = %257
  %264 = load i8*, i8** %256, align 8, !tbaa !2
  %265 = getelementptr inbounds i8, i8* %264, i64 %258
  %266 = load i8, i8* %265, align 1, !tbaa !13
  %267 = icmp eq i8 %266, -128
  br i1 %267, label %271, label %268

; <label>:268:                                    ; preds = %263
  %269 = sext i8 %266 to i32
  %270 = add nsw i32 %259, %269
  br label %274

; <label>:271:                                    ; preds = %263
  %272 = trunc i64 %258 to i32
  %273 = call i32 @luaG_getfuncline(%struct.Proto* nonnull %242, i32 %272) #11
  br label %274

; <label>:274:                                    ; preds = %271, %268
  %275 = phi i32 [ %270, %268 ], [ %273, %271 ]
  %276 = sext i32 %275 to i64
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %245, i64 %276, %struct.TValue* nonnull %4) #11
  %277 = add nuw nsw i64 %258, 1
  br label %257

; <label>:278:                                    ; preds = %257
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %241) #9
  br label %279

; <label>:279:                                    ; preds = %278, %233, %226
  ret i32 %63
}

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: minsize noreturn nounwind optsize uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #11
  %5 = tail call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %1) #10
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %2, i8* %4, i8* %5) #13
  unreachable
}

; Function Attrs: minsize optsize
declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #5

; Function Attrs: minsize noreturn nounwind optsize uwtable
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #11
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #11
  call void @llvm.va_end(i8* nonnull %6)
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 7
  %17 = load i16, i16* %16, align 2, !tbaa !19
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %13
  %21 = bitcast %struct.CallInfo* %5 to %struct.LClosure***
  %22 = load %struct.LClosure**, %struct.LClosure*** %21, align 8, !tbaa !29
  %23 = load %struct.LClosure*, %struct.LClosure** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %23, i64 0, i32 5
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i64 0, i32 22
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !40
  %28 = call fastcc i32 @currentline(%struct.CallInfo* nonnull %5) #10
  %29 = call i8* @luaG_addinfo(%struct.lua_State* nonnull %0, i8* %15, %struct.TString* %27, i32 %28) #10
  br label %30

; <label>:30:                                     ; preds = %13, %20
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #13
  unreachable
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %10, label %11, label %67

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.CallInfo* %6 to %struct.LClosure***
  %13 = load %struct.LClosure**, %struct.LClosure*** %12, align 8, !tbaa !29
  %14 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 3
  %16 = load i8, i8* %15, align 2, !tbaa !61
  %17 = zext i8 %16 to i64
  br label %18

; <label>:18:                                     ; preds = %27, %11
  %19 = phi i64 [ %28, %27 ], [ 0, %11 ]
  %20 = icmp ult i64 %19, %17
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 6, i64 %19
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8, !tbaa !26
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i64 0, i32 3
  %25 = load %struct.TValue*, %struct.TValue** %24, align 8, !tbaa !63
  %26 = icmp eq %struct.TValue* %25, %1
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %21
  %28 = add nuw nsw i64 %19, 1
  br label %18

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 18
  %33 = load %struct.Upvaldesc*, %struct.Upvaldesc** %32, align 8, !tbaa !66
  %34 = and i64 %19, 4294967295
  %35 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %33, i64 %34, i32 0
  %36 = load %struct.TString*, %struct.TString** %35, align 8, !tbaa !67
  %37 = icmp eq %struct.TString* %36, null
  %38 = getelementptr inbounds %struct.TString, %struct.TString* %36, i64 1
  %39 = bitcast %struct.TString* %38 to i8*
  %40 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %39
  store i8* %40, i8** %3, align 8, !tbaa !26
  br label %63

; <label>:41:                                     ; preds = %18
  %42 = getelementptr inbounds %struct.LClosure*, %struct.LClosure** %13, i64 2
  %43 = ptrtoint %struct.TValue* %1 to i64
  %44 = ptrtoint %struct.LClosure** %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp sgt i64 %45, -16
  br i1 %46, label %47, label %67

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 1
  %49 = bitcast %union.StackValue** %48 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !69
  %51 = sub i64 %50, %44
  %52 = icmp slt i64 %45, %51
  br i1 %52, label %53, label %67

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 5
  %55 = load %struct.Proto*, %struct.Proto** %54, align 8, !tbaa !13
  %56 = tail call fastcc i32 @currentpc(%struct.CallInfo* nonnull %6) #10
  %57 = lshr exact i64 %45, 4
  %58 = trunc i64 %57 to i32
  %59 = call fastcc i8* @getobjname(%struct.Proto* %55, i32 %56, i32 %58, i8** nonnull %3) #10
  %60 = icmp eq i8* %59, null
  br i1 %60, label %67, label %61

; <label>:61:                                     ; preds = %53
  %62 = load i8*, i8** %3, align 8, !tbaa !26
  br label %63

; <label>:63:                                     ; preds = %61, %29
  %64 = phi i8* [ %40, %29 ], [ %62, %61 ]
  %65 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %29 ], [ %59, %61 ]
  %66 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %65, i8* %64) #11
  br label %67

; <label>:67:                                     ; preds = %47, %41, %2, %53, %63
  %68 = phi i8* [ %66, %63 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %68
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
define hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #11
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %2, i8* %4) #13
  unreachable
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
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

; Function Attrs: minsize noreturn nounwind optsize uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !34
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  %9 = select i1 %8, %struct.TValue* %2, %struct.TValue* %1
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %9, i8* %3) #13
  unreachable
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
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
  %13 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #11
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, %struct.TValue* %1, %struct.TValue* %2
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi %struct.TValue* [ %2, %9 ], [ %15, %12 ]
  %18 = call fastcc i8* @varinfo(%struct.lua_State* %0, %struct.TValue* %17) #10
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %18) #13
  unreachable
}

; Function Attrs: minsize optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #5

; Function Attrs: minsize noreturn nounwind optsize uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7 {
  %4 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %1) #11
  %5 = tail call i8* @luaT_objtypename(%struct.lua_State* %0, %struct.TValue* %2) #11
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

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
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
  call void @luaO_chunkid(i8* nonnull %6, i8* nonnull %10, i64 %22) #11
  br label %25

; <label>:23:                                     ; preds = %4
  store i8 63, i8* %6, align 16, !tbaa !13
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %24, align 1, !tbaa !13
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %6, i32 %3, i8* %1) #11
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %6) #9
  ret i8* %26
}

; Function Attrs: minsize optsize
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #5

; Function Attrs: minsize noreturn nounwind optsize uwtable
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
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %29, i32 1) #11
  br label %30

; <label>:30:                                     ; preds = %1, %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #14
  unreachable
}

; Function Attrs: minsize optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #5

; Function Attrs: minsize noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #8

; Function Attrs: minsize optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: minsize optsize
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @currentline(%struct.CallInfo* nocapture readonly) unnamed_addr #0 {
  %2 = bitcast %struct.CallInfo* %0 to %struct.LClosure***
  %3 = load %struct.LClosure**, %struct.LClosure*** %2, align 8, !tbaa !29
  %4 = load %struct.LClosure*, %struct.LClosure** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4, i64 0, i32 5
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !13
  %7 = tail call fastcc i32 @currentpc(%struct.CallInfo* %0) #10
  %8 = tail call i32 @luaG_getfuncline(%struct.Proto* %6, i32 %7) #10
  ret i32 %8
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br label %115

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
  br i1 %28, label %115, label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %31 = load i16, i16* %30, align 2, !tbaa !19
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %29
  %35 = and i16 %31, -33
  store i16 %35, i16* %30, align 2, !tbaa !19
  br label %115

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
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 3, i32 -1, i32 0, i32 0) #11
  br label %57

; <label>:57:                                     ; preds = %56, %55
  %58 = and i32 %6, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %104, label %60

; <label>:60:                                     ; preds = %57
  %61 = bitcast %struct.CallInfo* %4 to %struct.LClosure***
  %62 = load %struct.LClosure**, %struct.LClosure*** %61, align 8, !tbaa !29
  %63 = load %struct.LClosure*, %struct.LClosure** %62, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i64 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 16
  %67 = bitcast i32** %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !32
  %69 = ptrtoint i32* %13 to i64
  %70 = sub i64 %69, %68
  %71 = lshr exact i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  br i1 %74, label %101, label %76

; <label>:76:                                     ; preds = %60
  %77 = load i32*, i32** %75, align 8, !tbaa !20
  %78 = icmp ugt i32* %13, %77
  br i1 %78, label %79, label %101

; <label>:79:                                     ; preds = %76
  %80 = ptrtoint i32* %77 to i64
  %81 = sub i64 %80, %68
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 19
  %83 = shl i64 %81, 30
  %84 = add i64 %83, -4294967296
  %85 = ashr exact i64 %84, 32
  %86 = sext i32 %73 to i64
  br label %87

; <label>:87:                                     ; preds = %91, %79
  %88 = phi i64 [ %89, %91 ], [ %85, %79 ]
  %89 = add nsw i64 %88, 1
  %90 = icmp slt i64 %88, %86
  br i1 %90, label %91, label %103

; <label>:91:                                     ; preds = %87
  %92 = load i8*, i8** %82, align 8, !tbaa !2
  %93 = getelementptr inbounds i8, i8* %92, i64 %89
  %94 = load i8, i8* %93, align 1, !tbaa !13
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %87, label %96

; <label>:96:                                     ; preds = %91
  %97 = trunc i64 %88 to i32
  %98 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %65, i32 %97) #11
  %99 = tail call i32 @luaG_getfuncline(%struct.Proto* nonnull %65, i32 %73) #11
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %60, %96, %76
  %102 = tail call i32 @luaG_getfuncline(%struct.Proto* %65, i32 %73) #10
  tail call void @luaD_hook(%struct.lua_State* %0, i32 2, i32 %102, i32 0, i32 0) #11
  br label %103

; <label>:103:                                    ; preds = %87, %96, %101
  store i32* %13, i32** %75, align 8, !tbaa !20
  br label %104

; <label>:104:                                    ; preds = %57, %103
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %106 = load i8, i8* %105, align 2, !tbaa !74
  %107 = icmp eq i8 %106, 1
  br i1 %107, label %108, label %115

; <label>:108:                                    ; preds = %104
  br i1 %22, label %109, label %110

; <label>:109:                                    ; preds = %108
  store i32 1, i32* %16, align 4, !tbaa !23
  br label %110

; <label>:110:                                    ; preds = %109, %108
  %111 = load i32*, i32** %15, align 8, !tbaa !13
  %112 = getelementptr inbounds i32, i32* %111, i64 -1
  store i32* %112, i32** %15, align 8, !tbaa !13
  %113 = load i16, i16* %30, align 2, !tbaa !19
  %114 = or i16 %113, 32
  store i16 %114, i16* %30, align 2, !tbaa !19
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 1) #14
  unreachable

; <label>:115:                                    ; preds = %104, %26, %34, %9
  %116 = phi i32 [ 1, %34 ], [ 0, %9 ], [ 1, %26 ], [ 1, %104 ]
  ret i32 %116
}

; Function Attrs: minsize optsize
declare hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @getobjname(%struct.Proto*, i32, i32, i8** nocapture) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  br label %6

; <label>:6:                                      ; preds = %72, %4
  %7 = phi i32 [ %1, %4 ], [ %17, %72 ]
  %8 = phi i32 [ %2, %4 ], [ %74, %72 ]
  %9 = add nsw i32 %8, 1
  %10 = tail call i8* @luaF_getlocalname(%struct.Proto* %0, i32 %9, i32 %7) #11
  store i8* %10, i8** %3, align 8, !tbaa !26
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %131

; <label>:12:                                     ; preds = %6
  %13 = sext i32 %7 to i64
  br label %14

; <label>:14:                                     ; preds = %60, %12
  %15 = phi i64 [ %63, %60 ], [ 0, %12 ]
  %16 = phi i32 [ %61, %60 ], [ 0, %12 ]
  %17 = phi i32 [ %62, %60 ], [ -1, %12 ]
  %18 = icmp slt i64 %15, %13
  br i1 %18, label %19, label %64

; <label>:19:                                     ; preds = %14
  %20 = load i32*, i32** %5, align 8, !tbaa !32
  %21 = getelementptr inbounds i32, i32* %20, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !12
  %23 = lshr i32 %22, 7
  %24 = and i32 %23, 255
  %25 = trunc i32 %22 to i7
  switch i7 %25, label %41 [
    i7 6, label %26
    i7 -51, label %28
    i7 -59, label %31
    i7 -58, label %31
    i7 57, label %33
  ]

; <label>:26:                                     ; preds = %19
  %27 = icmp sgt i32 %24, %8
  br i1 %27, label %60, label %50

; <label>:28:                                     ; preds = %19
  %29 = add nuw nsw i32 %24, 2
  %30 = icmp sgt i32 %29, %8
  br i1 %30, label %60, label %55

; <label>:31:                                     ; preds = %19, %19
  %32 = icmp sgt i32 %24, %8
  br i1 %32, label %60, label %55

; <label>:33:                                     ; preds = %19
  %34 = trunc i64 %15 to i32
  %35 = add i32 %34, -16777214
  %36 = add i32 %35, %23
  %37 = icmp sle i32 %36, %7
  %38 = icmp sgt i32 %36, %16
  %39 = and i1 %37, %38
  %40 = select i1 %39, i32 %36, i32 %16
  br label %60

; <label>:41:                                     ; preds = %19
  %42 = and i32 %22, 127
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !13
  %46 = and i8 %45, 8
  %47 = icmp ne i8 %46, 0
  %48 = icmp eq i32 %24, %8
  %49 = and i1 %48, %47
  br i1 %49, label %55, label %60

; <label>:50:                                     ; preds = %26
  %51 = lshr i32 %22, 16
  %52 = and i32 %51, 255
  %53 = add nuw nsw i32 %24, %52
  %54 = icmp slt i32 %53, %8
  br i1 %54, label %60, label %55

; <label>:55:                                     ; preds = %50, %41, %31, %28
  %56 = sext i32 %16 to i64
  %57 = icmp slt i64 %15, %56
  %58 = trunc i64 %15 to i32
  %59 = select i1 %57, i32 -1, i32 %58
  br label %60

; <label>:60:                                     ; preds = %55, %50, %41, %33, %31, %28, %26
  %61 = phi i32 [ %16, %55 ], [ %16, %50 ], [ %16, %41 ], [ %16, %31 ], [ %16, %28 ], [ %40, %33 ], [ %16, %26 ]
  %62 = phi i32 [ %59, %55 ], [ %17, %50 ], [ %17, %41 ], [ %17, %31 ], [ %17, %28 ], [ %17, %33 ], [ %17, %26 ]
  %63 = add nuw nsw i64 %15, 1
  br label %14

; <label>:64:                                     ; preds = %14
  %65 = icmp eq i32 %17, -1
  br i1 %65, label %131, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i32*, i32** %5, align 8, !tbaa !32
  %68 = sext i32 %17 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !12
  %71 = trunc i32 %70 to i7
  switch i7 %71, label %131 [
    i7 0, label %72
    i7 9, label %78
    i7 10, label %81
    i7 11, label %84
    i7 12, label %85
    i7 7, label %88
    i7 3, label %100
    i7 4, label %100
    i7 18, label %125
  ]

; <label>:72:                                     ; preds = %66
  %73 = lshr i32 %70, 16
  %74 = and i32 %73, 255
  %75 = lshr i32 %70, 7
  %76 = and i32 %75, 255
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %6, label %131

; <label>:78:                                     ; preds = %66
  %79 = lshr i32 %70, 24
  tail call fastcc void @kname(%struct.Proto* nonnull %0, i32 %79, i8** %3) #10
  %80 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %70, i32 1) #10
  br label %131

; <label>:81:                                     ; preds = %66
  %82 = lshr i32 %70, 24
  tail call fastcc void @rname(%struct.Proto* nonnull %0, i32 %17, i32 %82, i8** %3) #10
  %83 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %70, i32 0) #10
  br label %131

; <label>:84:                                     ; preds = %66
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %131

; <label>:85:                                     ; preds = %66
  %86 = lshr i32 %70, 24
  tail call fastcc void @kname(%struct.Proto* nonnull %0, i32 %86, i8** %3) #10
  %87 = tail call fastcc i8* @gxf(%struct.Proto* nonnull %0, i32 %17, i32 %70, i32 0) #10
  br label %131

; <label>:88:                                     ; preds = %66
  %89 = lshr i32 %70, 16
  %90 = and i32 %89, 255
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %92 = load %struct.Upvaldesc*, %struct.Upvaldesc** %91, align 8, !tbaa !66
  %93 = zext i32 %90 to i64
  %94 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %92, i64 %93, i32 0
  %95 = load %struct.TString*, %struct.TString** %94, align 8, !tbaa !67
  %96 = icmp eq %struct.TString* %95, null
  %97 = getelementptr inbounds %struct.TString, %struct.TString* %95, i64 1
  %98 = bitcast %struct.TString* %97 to i8*
  %99 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %98
  store i8* %99, i8** %3, align 8, !tbaa !26
  br label %131

; <label>:100:                                    ; preds = %66, %66
  %101 = and i32 %70, 127
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %100
  %104 = lshr i32 %70, 15
  br label %111

; <label>:105:                                    ; preds = %100
  %106 = add nsw i32 %17, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %67, i64 %107
  %109 = load i32, i32* %108, align 4, !tbaa !12
  %110 = lshr i32 %109, 7
  br label %111

; <label>:111:                                    ; preds = %105, %103
  %112 = phi i32 [ %104, %103 ], [ %110, %105 ]
  %113 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %114 = load %struct.TValue*, %struct.TValue** %113, align 8, !tbaa !75
  %115 = zext i32 %112 to i64
  %116 = getelementptr inbounds %struct.TValue, %struct.TValue* %114, i64 %115, i32 1
  %117 = load i8, i8* %116, align 8, !tbaa !34
  %118 = and i8 %117, 15
  %119 = icmp eq i8 %118, 4
  br i1 %119, label %120, label %131

; <label>:120:                                    ; preds = %111
  %121 = getelementptr inbounds %struct.TValue, %struct.TValue* %114, i64 %115, i32 0, i32 0
  %122 = bitcast %struct.GCObject** %121 to i8**
  %123 = load i8*, i8** %122, align 8, !tbaa !13
  %124 = getelementptr inbounds i8, i8* %123, i64 24
  store i8* %124, i8** %3, align 8, !tbaa !26
  br label %131

; <label>:125:                                    ; preds = %66
  %126 = lshr i32 %70, 24
  %127 = trunc i32 %70 to i16
  %128 = icmp slt i16 %127, 0
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %125
  tail call fastcc void @kname(%struct.Proto* nonnull %0, i32 %126, i8** %3) #11
  br label %131

; <label>:130:                                    ; preds = %125
  tail call fastcc void @rname(%struct.Proto* nonnull %0, i32 %17, i32 %126, i8** %3) #11
  br label %131

; <label>:131:                                    ; preds = %72, %64, %66, %6, %130, %129, %120, %78, %81, %84, %85, %88, %111
  %132 = phi i8* [ null, %111 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %130 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %129 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %120 ], [ %80, %78 ], [ %83, %81 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %84 ], [ %87, %85 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %88 ], [ null, %72 ], [ null, %64 ], [ null, %66 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %6 ]
  ret i8* %132
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @kname(%struct.Proto* nocapture readonly, i32, i8** nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !75
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 %6, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !34
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 %6, i32 0, i32 0
  %13 = bitcast %struct.GCObject** %12 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds i8, i8* %14, i64 24
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i8* [ %15, %11 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %3 ]
  store i8* %17, i8** %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %21 = call fastcc i8* @getobjname(%struct.Proto* %0, i32 %1, i32 %7, i8** nonnull %5) #10
  %22 = load i8*, i8** %5, align 8, !tbaa !26
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %10, %20
  %25 = phi i8* [ %19, %10 ], [ %22, %20 ]
  %26 = tail call i32 @strcmp(i8* nonnull %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #12
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)
  br label %29

; <label>:29:                                     ; preds = %20, %24
  %30 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %20 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  ret i8* %30
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @rname(%struct.Proto*, i32, i32, i8** nocapture) unnamed_addr #4 {
  %5 = tail call fastcc i8* @getobjname(%struct.Proto* %0, i32 %1, i32 %2, i8** %3) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !13
  %9 = icmp eq i8 %8, 99
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %4, %7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8, !tbaa !26
  br label %11

; <label>:11:                                     ; preds = %10, %7
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #5

attributes #0 = { minsize nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { minsize optsize }
attributes #11 = { minsize nounwind optsize }
attributes #12 = { minsize nounwind optsize readonly }
attributes #13 = { minsize noreturn optsize }
attributes #14 = { minsize noreturn nounwind optsize }

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
!31 = !{!17, !4, i64 24}
!32 = !{!3, !4, i64 64}
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
