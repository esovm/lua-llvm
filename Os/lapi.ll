; ModuleID = 'lapi.c'
source_filename = "lapi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.GCUnion = type { %struct.lua_State }
%struct.CallS = type { %union.StackValue*, i32 }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }

@lua_ident = local_unnamed_addr constant [129 x i8] c"$LuaVersion: Lua 5.4.0  Copyright (C) 1994-2019 Lua.org, PUC-Rio $$LuaAuthors: R. Ierusalimschy, L. H. de Figueiredo, W. Celes $\00", align 16
@luaT_typenames_ = external hidden local_unnamed_addr constant [12 x i8*], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(no name)\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %6 = bitcast %union.StackValue** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %9 = bitcast %union.StackValue** %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !12
  %11 = sub i64 %7, %10
  %12 = ashr exact i64 %11, 4
  %13 = sext i32 %1 to i64
  %14 = icmp sgt i64 %12, %13
  %15 = inttoptr i64 %10 to %union.StackValue*
  br i1 %14, label %31, label %16

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %18 = bitcast %union.StackValue** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !13
  %20 = sub i64 %10, %19
  %21 = lshr exact i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %22, 5
  %24 = sub nsw i32 1000000, %1
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %39, label %26

; <label>:26:                                     ; preds = %16
  %27 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1, i32 0) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

; <label>:29:                                     ; preds = %26
  %30 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !12
  br label %31

; <label>:31:                                     ; preds = %29, %2
  %32 = phi %union.StackValue* [ %30, %29 ], [ %15, %2 ]
  %33 = phi i32 [ %27, %29 ], [ 1, %2 ]
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1
  %35 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 %13
  %37 = icmp ult %union.StackValue* %35, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %31
  store %union.StackValue* %36, %union.StackValue** %34, align 8, !tbaa !14
  br label %39

; <label>:39:                                     ; preds = %16, %26, %38, %31
  %40 = phi i32 [ 0, %26 ], [ %33, %38 ], [ %33, %31 ], [ 0, %16 ]
  ret i32 %40
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: optsize
declare hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #3 {
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %43, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = sext i32 %2 to i64
  %9 = sub nsw i64 0, %8
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %9
  store %union.StackValue* %10, %union.StackValue** %6, align 8, !tbaa !12
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %43

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 6
  %14 = bitcast %union.StackValue** %13 to %struct.TValue**
  %15 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !12
  %16 = zext i32 %2 to i64
  %17 = bitcast %union.StackValue* %10 to i64*
  %18 = bitcast %struct.TValue* %15 to i64*
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %9, i32 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 1
  store i8 %21, i8* %22, align 8, !tbaa !15
  %23 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %23, i64 1
  store %union.StackValue* %24, %union.StackValue** %13, align 8, !tbaa !12
  %25 = icmp eq i32 %2, 1
  br i1 %25, label %43, label %26

; <label>:26:                                     ; preds = %12
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %41, %27 ], [ 1, %26 ]
  %29 = phi %union.StackValue* [ %39, %27 ], [ %23, %26 ]
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 1, i32 0
  %31 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 %28, i32 0
  %33 = bitcast %struct.TValue* %32 to i64*
  %34 = bitcast %struct.TValue* %30 to i64*
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 %28, i32 0, i32 1
  %37 = load i8, i8* %36, align 8, !tbaa !15
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 1, i32 0, i32 1
  store i8 %37, i8* %38, align 8, !tbaa !15
  %39 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i64 1
  store %union.StackValue* %40, %union.StackValue** %13, align 8, !tbaa !12
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %43, label %27

; <label>:43:                                     ; preds = %27, %12, %5, %3
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nocapture readonly, i32 (%struct.lua_State*)*) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 37
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !18
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8, !tbaa !18
  ret i32 (%struct.lua_State*)* %6
}

; Function Attrs: norecurse nounwind optsize readnone uwtable
define double @lua_version(%struct.lua_State* nocapture readnone) local_unnamed_addr #4 {
  ret double 5.040000e+02
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_absindex(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = add i32 %1, 1000999
  %4 = icmp ugt i32 %3, 1000999
  br i1 %4, label %17, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = bitcast %union.StackValue** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %10 = bitcast %struct.CallInfo** %9 to i64**
  %11 = load i64*, i64** %10, align 8, !tbaa !2
  %12 = load i64, i64* %11, align 8, !tbaa !21
  %13 = sub i64 %8, %12
  %14 = lshr exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %15, %1
  br label %17

; <label>:17:                                     ; preds = %2, %5
  %18 = phi i32 [ %16, %5 ], [ %1, %2 ]
  ret i32 %18
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_gettop(%struct.lua_State* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = bitcast %union.StackValue** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  %10 = ptrtoint %union.StackValue* %9 to i64
  %11 = sub i64 %4, %10
  %12 = lshr exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind optsize uwtable
define void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %23

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %13, %11
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %4
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi %union.StackValue* [ %20, %16 ], [ %13, %15 ]
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 1
  store %union.StackValue* %18, %union.StackValue** %12, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 0, i32 0, i32 1
  store i8 0, i8* %19, align 8, !tbaa !22
  %20 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %21 = icmp ult %union.StackValue* %20, %11
  br i1 %21, label %16, label %22

; <label>:22:                                     ; preds = %16, %4
  store %union.StackValue* %11, %union.StackValue** %12, align 8, !tbaa !12
  br label %29

; <label>:23:                                     ; preds = %2
  %24 = add nsw i32 %1, 1
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %26 = load %union.StackValue*, %union.StackValue** %25, align 8, !tbaa !12
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %27
  store %union.StackValue* %28, %union.StackValue** %25, align 8, !tbaa !12
  br label %29

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %union.StackValue* [ %28, %23 ], [ %11, %22 ]
  %31 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %30, i32 0) #9
  ret void
}

; Function Attrs: optsize
declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_rotate(%struct.lua_State* nocapture readonly, i32, i32) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 -1
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i64 0, i32 0
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !21
  br label %13

; <label>:13:                                     ; preds = %3, %8
  %14 = phi %union.StackValue* [ %12, %8 ], [ %5, %3 ]
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %15
  %17 = icmp sgt i32 %2, -1
  %18 = sext i32 %2 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 %19
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 %19
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1
  %23 = select i1 %17, %union.StackValue* %20, %union.StackValue* %22
  %24 = icmp ult %union.StackValue* %16, %23
  br i1 %24, label %25, label %40

; <label>:25:                                     ; preds = %13
  br label %26

; <label>:26:                                     ; preds = %25, %26
  %27 = phi %union.StackValue* [ %37, %26 ], [ %16, %25 ]
  %28 = phi %union.StackValue* [ %38, %26 ], [ %23, %25 ]
  %29 = bitcast %union.StackValue* %27 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 0, i32 0, i32 1
  %32 = load i8, i8* %31, align 8, !tbaa !15
  %33 = bitcast %union.StackValue* %28 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %29, align 8
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 0, i32 0, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !15
  store i8 %36, i8* %31, align 8, !tbaa !15
  store i64 %30, i64* %33, align 8
  store i8 %32, i8* %35, align 8, !tbaa !15
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 -1
  %39 = icmp ult %union.StackValue* %37, %38
  br i1 %39, label %26, label %40

; <label>:40:                                     ; preds = %26, %13
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %23, i64 1
  %42 = icmp ult %union.StackValue* %41, %6
  br i1 %42, label %43, label %58

; <label>:43:                                     ; preds = %40
  br label %44

; <label>:44:                                     ; preds = %43, %44
  %45 = phi %union.StackValue* [ %55, %44 ], [ %41, %43 ]
  %46 = phi %union.StackValue* [ %56, %44 ], [ %6, %43 ]
  %47 = bitcast %union.StackValue* %45 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 0, i32 0, i32 1
  %50 = load i8, i8* %49, align 8, !tbaa !15
  %51 = bitcast %union.StackValue* %46 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %47, align 8
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %46, i64 0, i32 0, i32 1
  %54 = load i8, i8* %53, align 8, !tbaa !15
  store i8 %54, i8* %49, align 8, !tbaa !15
  store i64 %48, i64* %51, align 8
  store i8 %50, i8* %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 1
  %56 = getelementptr inbounds %union.StackValue, %union.StackValue* %46, i64 -1
  %57 = icmp ult %union.StackValue* %55, %56
  br i1 %57, label %44, label %58

; <label>:58:                                     ; preds = %44, %40
  %59 = icmp ult %union.StackValue* %16, %6
  br i1 %59, label %60, label %75

; <label>:60:                                     ; preds = %58
  br label %61

; <label>:61:                                     ; preds = %60, %61
  %62 = phi %union.StackValue* [ %72, %61 ], [ %16, %60 ]
  %63 = phi %union.StackValue* [ %73, %61 ], [ %6, %60 ]
  %64 = bitcast %union.StackValue* %62 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 0, i32 0, i32 1
  %67 = load i8, i8* %66, align 8, !tbaa !15
  %68 = bitcast %union.StackValue* %63 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %64, align 8
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i64 0, i32 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !15
  store i8 %71, i8* %66, align 8, !tbaa !15
  store i64 %65, i64* %68, align 8
  store i8 %67, i8* %70, align 8, !tbaa !15
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 1
  %73 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i64 -1
  %74 = icmp ult %union.StackValue* %72, %73
  br i1 %74, label %61, label %75

; <label>:75:                                     ; preds = %61, %58
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %2) #10
  %6 = bitcast %struct.TValue* %4 to i64*
  %7 = bitcast %struct.TValue* %5 to i64*
  %8 = load i64, i64* %6, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 %10, i8* %11, align 8, !tbaa !15
  %12 = icmp slt i32 %2, -1001000
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* %9, align 8, !tbaa !15
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %19 = bitcast %struct.CallInfo** %18 to %struct.CClosure****
  %20 = load %struct.CClosure***, %struct.CClosure**** %19, align 8, !tbaa !2
  %21 = load %struct.CClosure**, %struct.CClosure*** %20, align 8, !tbaa !21
  %22 = load %struct.CClosure*, %struct.CClosure** %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %22, i64 0, i32 2
  %24 = load i8, i8* %23, align 1, !tbaa !22
  %25 = and i8 %24, 32
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 0, i32 0
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %29, i64 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = and i8 %31, 24
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %27
  %35 = bitcast %struct.CClosure* %22 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %35, %struct.GCObject* %29) #9
  br label %36

; <label>:36:                                     ; preds = %27, %17, %13, %34, %3
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define internal fastcc %struct.TValue* @index2value(%struct.lua_State* nocapture readonly, i32) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %20

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 0
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !21
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %9
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !12
  %13 = icmp ult %union.StackValue* %10, %12
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i64 0, i32 8
  br label %59

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 0, i32 0
  br label %59

; <label>:20:                                     ; preds = %2
  %21 = icmp slt i32 %1, -1000999
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8, !tbaa !12
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 %25, i32 0
  br label %59

; <label>:27:                                     ; preds = %20
  %28 = icmp eq i32 %1, -1001000
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %31 = load %struct.global_State*, %struct.global_State** %30, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 7
  br label %59

; <label>:33:                                     ; preds = %27
  %34 = sub nsw i32 -1001000, %1
  %35 = bitcast %struct.CallInfo* %4 to %struct.TValue**
  %36 = load %struct.TValue*, %struct.TValue** %35, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !22
  %39 = icmp eq i8 %38, 38
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %42 = load %struct.global_State*, %struct.global_State** %41, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i64 0, i32 8
  br label %59

; <label>:44:                                     ; preds = %33
  %45 = bitcast %struct.TValue* %36 to %struct.CClosure**
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 3
  %48 = load i8, i8* %47, align 2, !tbaa !25
  %49 = zext i8 %48 to i32
  %50 = icmp sgt i32 %34, %49
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %44
  %52 = add nsw i32 %34, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 6, i64 %53
  br label %59

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %57 = load %struct.global_State*, %struct.global_State** %56, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %57, i64 0, i32 8
  br label %59

; <label>:59:                                     ; preds = %51, %55, %14, %18, %40, %29, %22
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  ret %struct.TValue* %60
}

; Function Attrs: optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushvalue(%struct.lua_State* nocapture, i32) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %7 = bitcast %struct.TValue* %6 to i64*
  %8 = bitcast %struct.TValue* %5 to i64*
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 %11, i8* %12, align 8, !tbaa !15
  %13 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 1
  store %union.StackValue* %14, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_type(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 8
  %12 = icmp eq %struct.TValue* %3, %11
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8, %2
  %14 = zext i8 %6 to i32
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ -1, %8 ]
  ret i32 %16
}

; Function Attrs: norecurse nounwind optsize readnone uwtable
define i8* @lua_typename(%struct.lua_State* nocapture readnone, i32) local_unnamed_addr #4 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [12 x i8*], [12 x i8*]* @luaT_typenames_, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8, !tbaa !27
  ret i8* %6
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_iscfunction(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = icmp eq i8 %5, 38
  %7 = icmp eq i8 %5, 118
  %8 = or i1 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_isinteger(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = icmp eq i8 %5, 35
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_isnumber(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !15
  %8 = icmp eq i8 %7, 19
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.TValue* %5 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = bitcast double* %3 to i64*
  store i64 %11, i64* %12, align 8, !tbaa !28
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = call i32 @luaV_tonumber_(%struct.TValue* %5, double* nonnull %3) #9
  br label %15

; <label>:15:                                     ; preds = %13, %9
  %16 = phi i32 [ 1, %9 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  ret i32 %16
}

; Function Attrs: optsize
declare hidden i32 @luaV_tonumber_(%struct.TValue*, double*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_isstring(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -3
  %8 = icmp ult i8 %7, 2
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_isuserdata(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 7
  %8 = icmp eq i8 %5, 2
  %9 = or i1 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_rawequal(%struct.lua_State* nocapture readonly, i32, i32) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %2) #10
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !15
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 8
  %14 = icmp eq %struct.TValue* %4, %13
  br i1 %14, label %27, label %15

; <label>:15:                                     ; preds = %10, %3
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !15
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 8
  %24 = icmp eq %struct.TValue* %5, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %20, %15
  %26 = tail call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %4, %struct.TValue* nonnull %5) #9
  br label %27

; <label>:27:                                     ; preds = %10, %20, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %20 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: optsize
declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_arith(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = or i32 %1, 1
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  br i1 %4, label %7, label %17

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 -1, i32 0
  %9 = bitcast %struct.TValue* %8 to i64*
  %10 = bitcast %union.StackValue* %6 to i64*
  %11 = load i64, i64* %9, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 -1, i32 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 0, i32 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !15
  %15 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %5, align 8, !tbaa !12
  br label %17

; <label>:17:                                     ; preds = %2, %7
  %18 = phi %union.StackValue* [ %16, %7 ], [ %6, %2 ]
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i64 -2
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 0, i32 0
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i64 -1, i32 0
  tail call void @luaO_arith(%struct.lua_State* nonnull %0, i32 %1, %struct.TValue* nonnull %20, %struct.TValue* nonnull %21, %union.StackValue* nonnull %19) #9
  %22 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 -1
  store %union.StackValue* %23, %union.StackValue** %5, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #0 {
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %2) #10
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !15
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 8
  %15 = icmp eq %struct.TValue* %5, %14
  br i1 %15, label %33, label %16

; <label>:16:                                     ; preds = %11, %4
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !15
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 8
  %25 = icmp eq %struct.TValue* %6, %24
  br i1 %25, label %33, label %26

; <label>:26:                                     ; preds = %21, %16
  switch i32 %3, label %33 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %31
  ]

; <label>:27:                                     ; preds = %26
  %28 = tail call i32 @luaV_equalobj(%struct.lua_State* %0, %struct.TValue* %5, %struct.TValue* nonnull %6) #9
  br label %33

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @luaV_lessthan(%struct.lua_State* %0, %struct.TValue* %5, %struct.TValue* nonnull %6) #9
  br label %33

; <label>:31:                                     ; preds = %26
  %32 = tail call i32 @luaV_lessequal(%struct.lua_State* %0, %struct.TValue* %5, %struct.TValue* nonnull %6) #9
  br label %33

; <label>:33:                                     ; preds = %11, %21, %27, %29, %31, %26
  %34 = phi i32 [ 0, %26 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ 0, %21 ], [ 0, %11 ]
  ret i32 %34
}

; Function Attrs: optsize
declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i64 @lua_stringtonumber(%struct.lua_State* nocapture, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = tail call i64 @luaO_str2num(i8* %1, %struct.TValue* %5) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %2
  %9 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 1
  store %union.StackValue* %10, %union.StackValue** %3, align 8, !tbaa !12
  br label %11

; <label>:11:                                     ; preds = %2, %8
  ret i64 %6
}

; Function Attrs: optsize
declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define double @lua_tonumberx(%struct.lua_State* nocapture readonly, i32, i32*) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !15
  %9 = icmp eq i8 %8, 19
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.TValue* %6 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = bitcast double* %4 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !28
  br label %18

; <label>:14:                                     ; preds = %3
  %15 = call i32 @luaV_tonumber_(%struct.TValue* %6, double* nonnull %4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  store double 0.000000e+00, double* %4, align 8, !tbaa !28
  br label %18

; <label>:18:                                     ; preds = %10, %14, %17
  %19 = phi i32 [ 1, %10 ], [ %15, %14 ], [ 0, %17 ]
  %20 = icmp eq i32* %2, null
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %18
  store i32 %19, i32* %2, align 4, !tbaa !30
  br label %22

; <label>:22:                                     ; preds = %18, %21
  %23 = load double, double* %4, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  ret double %23
}

; Function Attrs: nounwind optsize uwtable
define i64 @lua_tointegerx(%struct.lua_State* nocapture readonly, i32, i32*) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !15
  %9 = icmp eq i8 %8, 35
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.TValue* %6 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !22
  store i64 %12, i64* %4, align 8, !tbaa !31
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = call i32 @luaV_tointeger(%struct.TValue* %6, i64* nonnull %4, i32 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i64 0, i64* %4, align 8, !tbaa !31
  br label %17

; <label>:17:                                     ; preds = %10, %13, %16
  %18 = phi i32 [ 1, %10 ], [ %14, %13 ], [ 0, %16 ]
  %19 = icmp eq i32* %2, null
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %17
  store i32 %18, i32* %2, align 4, !tbaa !30
  br label %21

; <label>:21:                                     ; preds = %17, %20
  %22 = load i64, i64* %4, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  ret i64 %22
}

; Function Attrs: optsize
declare hidden i32 @luaV_tointeger(%struct.TValue*, i64*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_toboolean(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %2
  %9 = icmp eq i8 %5, 1
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %8
  %11 = bitcast %struct.TValue* %3 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !22
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

; <label>:15:                                     ; preds = %8, %10, %2
  %16 = phi i32 [ 0, %2 ], [ 1, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind optsize uwtable
define i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = trunc i8 %6 to i4
  switch i4 %7, label %8 [
    i4 4, label %20
    i4 3, label %11
  ]

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i64* %2, null
  br i1 %9, label %42, label %10

; <label>:10:                                     ; preds = %8
  store i64 0, i64* %2, align 8, !tbaa !33
  br label %42

; <label>:11:                                     ; preds = %3
  tail call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* %4) #9
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !34
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %11
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %18

; <label>:18:                                     ; preds = %17, %11
  %19 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* nonnull %0, i32 %1) #10
  br label %20

; <label>:20:                                     ; preds = %3, %18
  %21 = phi %struct.TValue* [ %4, %3 ], [ %19, %18 ]
  %22 = icmp eq i64* %2, null
  br i1 %22, label %38, label %23

; <label>:23:                                     ; preds = %20
  %24 = bitcast %struct.TValue* %21 to %struct.TString**
  %25 = load %struct.TString*, %struct.TString** %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.TString, %struct.TString* %25, i64 0, i32 1
  %27 = load i8, i8* %26, align 8, !tbaa !22
  %28 = icmp eq i8 %27, 20
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %25, i64 0, i32 4
  %31 = load i8, i8* %30, align 1, !tbaa !22
  %32 = zext i8 %31 to i64
  br label %36

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.TString, %struct.TString* %25, i64 0, i32 6, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !22
  br label %36

; <label>:36:                                     ; preds = %33, %29
  %37 = phi i64 [ %32, %29 ], [ %35, %33 ]
  store i64 %37, i64* %2, align 8, !tbaa !33
  br label %38

; <label>:38:                                     ; preds = %20, %36
  %39 = bitcast %struct.TValue* %21 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i8, i8* %40, i64 24
  br label %42

; <label>:42:                                     ; preds = %10, %8, %38
  %43 = phi i8* [ %41, %38 ], [ null, %8 ], [ null, %10 ]
  ret i8* %43
}

; Function Attrs: optsize
declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i64 @lua_rawlen(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %27 [
    i6 20, label %7
    i6 -28, label %13
    i6 7, label %18
    i6 5, label %23
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %3 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !22
  %12 = zext i8 %11 to i64
  br label %27

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.TValue* %3 to %struct.TString**
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i64 0, i32 6, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !22
  br label %27

; <label>:18:                                     ; preds = %2
  %19 = bitcast %struct.TValue* %3 to %struct.Udata**
  %20 = load %struct.Udata*, %struct.Udata** %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.Udata, %struct.Udata* %20, i64 0, i32 4
  %22 = load i64, i64* %21, align 8, !tbaa !22
  br label %27

; <label>:23:                                     ; preds = %2
  %24 = bitcast %struct.TValue* %3 to %struct.Table**
  %25 = load %struct.Table*, %struct.Table** %24, align 8, !tbaa !22
  %26 = tail call i64 @luaH_getn(%struct.Table* %25) #9
  br label %27

; <label>:27:                                     ; preds = %2, %23, %18, %13, %7
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %7 ], [ 0, %2 ]
  ret i64 %28
}

; Function Attrs: optsize
declare hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  switch i8 %5, label %15 [
    i8 38, label %6
    i8 118, label %8
  ]

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %3 to i32 (%struct.lua_State*)**
  br label %12

; <label>:8:                                      ; preds = %2
  %9 = bitcast %struct.TValue* %3 to %struct.CClosure**
  %10 = load %struct.CClosure*, %struct.CClosure** %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %10, i64 0, i32 5
  br label %12

; <label>:12:                                     ; preds = %6, %8
  %13 = phi i32 (%struct.lua_State*)** [ %11, %8 ], [ %7, %6 ]
  %14 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %13, align 8, !tbaa !22
  br label %15

; <label>:15:                                     ; preds = %12, %2
  %16 = phi i32 (%struct.lua_State*)* [ null, %2 ], [ %14, %12 ]
  ret i32 (%struct.lua_State*)* %16
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i8* @lua_touserdata(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = trunc i8 %5 to i4
  switch i4 %6, label %22 [
    i4 7, label %7
    i4 2, label %19
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %3 to %struct.Udata**
  %9 = load %struct.Udata*, %struct.Udata** %8, align 8, !tbaa !22
  %10 = bitcast %struct.Udata* %9 to i8*
  %11 = getelementptr inbounds %struct.Udata, %struct.Udata* %9, i64 0, i32 3
  %12 = load i16, i16* %11, align 2, !tbaa !22
  %13 = icmp eq i16 %12, 0
  %14 = zext i16 %12 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = add nuw nsw i64 %15, 40
  %17 = select i1 %13, i64 32, i64 %16
  %18 = getelementptr inbounds i8, i8* %10, i64 %17
  br label %22

; <label>:19:                                     ; preds = %2
  %20 = bitcast %struct.TValue* %3 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !22
  br label %22

; <label>:22:                                     ; preds = %2, %7, %19
  %23 = phi i8* [ %21, %19 ], [ %18, %7 ], [ null, %2 ]
  ret i8* %23
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define %struct.lua_State* @lua_tothread(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = icmp eq i8 %5, 72
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %3 to %struct.lua_State**
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !22
  br label %10

; <label>:10:                                     ; preds = %2, %7
  %11 = phi %struct.lua_State* [ %9, %7 ], [ null, %2 ]
  ret %struct.lua_State* %11
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i8* @lua_topointer(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %27 [
    i6 -26, label %7
    i6 7, label %10
    i6 2, label %10
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %3 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !22
  br label %33

; <label>:10:                                     ; preds = %2, %2
  %11 = trunc i8 %5 to i4
  switch i4 %11, label %33 [
    i4 7, label %12
    i4 2, label %24
  ]

; <label>:12:                                     ; preds = %10
  %13 = bitcast %struct.TValue* %3 to %struct.Udata**
  %14 = load %struct.Udata*, %struct.Udata** %13, align 8, !tbaa !22
  %15 = bitcast %struct.Udata* %14 to i8*
  %16 = getelementptr inbounds %struct.Udata, %struct.Udata* %14, i64 0, i32 3
  %17 = load i16, i16* %16, align 2, !tbaa !22
  %18 = icmp eq i16 %17, 0
  %19 = zext i16 %17 to i64
  %20 = shl nuw nsw i64 %19, 4
  %21 = add nuw nsw i64 %20, 40
  %22 = select i1 %18, i64 32, i64 %21
  %23 = getelementptr inbounds i8, i8* %15, i64 %22
  br label %33

; <label>:24:                                     ; preds = %10
  %25 = bitcast %struct.TValue* %3 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !22
  br label %33

; <label>:27:                                     ; preds = %2
  %28 = and i8 %5, 64
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %27
  %31 = bitcast %struct.TValue* %3 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !22
  br label %33

; <label>:33:                                     ; preds = %24, %12, %10, %27, %30, %7
  %34 = phi i8* [ %32, %30 ], [ %9, %7 ], [ null, %27 ], [ %26, %24 ], [ %23, %12 ], [ null, %10 ]
  ret i8* %34
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushnil(%struct.lua_State* nocapture) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = bitcast %union.StackValue** %2 to %struct.TValue**
  %4 = load %struct.TValue*, %struct.TValue** %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 0, i8* %5, align 8, !tbaa !22
  %6 = load %union.StackValue*, %union.StackValue** %2, align 8, !tbaa !12
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  store %union.StackValue* %7, %union.StackValue** %2, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushnumber(%struct.lua_State* nocapture, double) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = bitcast %struct.TValue* %5 to double*
  store double %1, double* %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 19, i8* %7, align 8, !tbaa !15
  %8 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushinteger(%struct.lua_State* nocapture, i64) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = bitcast %struct.TValue* %5 to i64*
  store i64 %1, i64* %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %7, align 8, !tbaa !15
  %8 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define nonnull i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #9
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %1, i64 %2) #9
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct.TString* [ %6, %5 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = bitcast %union.StackValue** %11 to %struct.TValue**
  %13 = load %struct.TValue*, %struct.TValue** %12, align 8, !tbaa !12
  %14 = bitcast %struct.TValue* %13 to %struct.TString**
  store %struct.TString* %10, %struct.TString** %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 0, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !35
  %17 = or i8 %16, 64
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !15
  %19 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !12
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 1
  store %union.StackValue* %20, %union.StackValue** %11, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !34
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %9
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %27

; <label>:27:                                     ; preds = %26, %9
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 1
  %29 = bitcast %struct.TString* %28 to i8*
  ret i8* %29
}

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to %struct.TValue**
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 0, i8* %8, align 8, !tbaa !22
  br label %21

; <label>:9:                                      ; preds = %2
  %10 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* nonnull %1) #9
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = bitcast %union.StackValue** %11 to %struct.TValue**
  %13 = load %struct.TValue*, %struct.TValue** %12, align 8, !tbaa !12
  %14 = bitcast %struct.TValue* %13 to %struct.TString**
  store %struct.TString* %10, %struct.TString** %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 0, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !35
  %17 = or i8 %16, 64
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 1
  %20 = bitcast %struct.TString* %19 to i8*
  br label %21

; <label>:21:                                     ; preds = %9, %4
  %22 = phi %union.StackValue** [ %11, %9 ], [ %5, %4 ]
  %23 = phi i8* [ %20, %9 ], [ null, %4 ]
  %24 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !12
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  store %union.StackValue* %25, %union.StackValue** %22, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !34
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %21
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %32

; <label>:32:                                     ; preds = %31, %21
  ret i8* %23
}

; Function Attrs: nounwind optsize uwtable
define i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 {
  %4 = tail call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* %2) #9
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !34
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %11

; <label>:11:                                     ; preds = %10, %3
  ret i8* %4
}

; Function Attrs: optsize
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #9
  call void @llvm.va_end(i8* nonnull %4)
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 3
  %10 = load i64, i64* %9, align 8, !tbaa !34
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %13

; <label>:13:                                     ; preds = %12, %2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6
  ret i8* %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind optsize uwtable
define void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %13

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = bitcast %union.StackValue** %6 to %struct.TValue**
  %8 = load %struct.TValue*, %struct.TValue** %7, align 8, !tbaa !12
  %9 = bitcast %struct.TValue* %8 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 38, i8* %10, align 8, !tbaa !15
  %11 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 1
  store %union.StackValue* %12, %union.StackValue** %6, align 8, !tbaa !12
  br label %60

; <label>:13:                                     ; preds = %3
  %14 = tail call %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %0, i32 %2) #9
  %15 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 5
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %15, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %18 = sext i32 %2 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 %19
  store %union.StackValue* %20, %union.StackValue** %16, align 8, !tbaa !12
  %21 = add nsw i64 %18, -1
  %22 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %21
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 -1, i32 0
  %24 = bitcast %struct.TValue* %23 to i64*
  %25 = bitcast %struct.TValue* %22 to i64*
  %26 = load i64, i64* %24, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 -1, i32 0, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %21, i32 1
  store i8 %28, i8* %29, align 8, !tbaa !15
  %30 = trunc i64 %21 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

; <label>:32:                                     ; preds = %13
  br label %33

; <label>:33:                                     ; preds = %32, %33
  %34 = phi i64 [ %36, %33 ], [ %21, %32 ]
  %35 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %36 = add nsw i64 %34, -1
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %36
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %35, i64 %36, i32 0
  %39 = bitcast %struct.TValue* %38 to i64*
  %40 = bitcast %struct.TValue* %37 to i64*
  %41 = load i64, i64* %39, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %35, i64 %36, i32 0, i32 1
  %43 = load i8, i8* %42, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %36, i32 1
  store i8 %43, i8* %44, align 8, !tbaa !15
  %45 = trunc i64 %36 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %33

; <label>:47:                                     ; preds = %33, %13
  %48 = bitcast %union.StackValue** %16 to %struct.TValue**
  %49 = load %struct.TValue*, %struct.TValue** %48, align 8, !tbaa !12
  %50 = bitcast %struct.TValue* %49 to %struct.CClosure**
  store %struct.CClosure* %14, %struct.CClosure** %50, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 0, i32 1
  store i8 118, i8* %51, align 8, !tbaa !15
  %52 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 1
  store %union.StackValue* %53, %union.StackValue** %16, align 8, !tbaa !12
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %55 = load %struct.global_State*, %struct.global_State** %54, align 8, !tbaa !17
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %55, i64 0, i32 3
  %57 = load i64, i64* %56, align 8, !tbaa !34
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %47
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %60

; <label>:60:                                     ; preds = %47, %59, %5
  ret void
}

; Function Attrs: optsize
declare hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = icmp ne i32 %1, 0
  %7 = zext i1 %6 to i32
  %8 = bitcast %struct.TValue* %5 to i32*
  store i32 %7, i32* %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 1, i8* %9, align 8, !tbaa !15
  %10 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 1
  store %union.StackValue* %11, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_pushlightuserdata(%struct.lua_State* nocapture, i8*) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = bitcast %struct.TValue* %5 to i8**
  store i8* %1, i8** %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 2, i8* %7, align 8, !tbaa !15
  %8 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = bitcast %union.StackValue** %2 to %struct.TValue**
  %4 = load %struct.TValue*, %struct.TValue** %3, align 8, !tbaa !12
  %5 = bitcast %struct.TValue* %4 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 72, i8* %6, align 8, !tbaa !15
  %7 = load %union.StackValue*, %union.StackValue** %2, align 8, !tbaa !12
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 1
  store %union.StackValue* %8, %union.StackValue** %2, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 38
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !38
  %13 = icmp eq %struct.lua_State* %12, %0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 7, i32 0, i32 0
  %6 = bitcast %struct.GCObject** %5 to %struct.Table**
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !tbaa !22
  %8 = tail call %struct.TValue* @luaH_getint(%struct.Table* %7, i64 2) #9
  %9 = tail call fastcc i32 @auxgetstr(%struct.lua_State* %0, %struct.TValue* %8, i8* %1) #10
  ret i32 %9
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @auxgetstr(%struct.lua_State*, %struct.TValue*, i8*) unnamed_addr #0 {
  %4 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %2) #9
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = icmp eq i8 %6, 69
  br i1 %7, label %8, label %27

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct.TValue* %1 to %struct.Table**
  %10 = load %struct.Table*, %struct.Table** %9, align 8, !tbaa !22
  %11 = tail call %struct.TValue* @luaH_getstr(%struct.Table* %10, %struct.TString* %4) #9
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !15
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %18 = bitcast %union.StackValue** %17 to %struct.TValue**
  %19 = load %struct.TValue*, %struct.TValue** %18, align 8, !tbaa !12
  %20 = bitcast %struct.TValue* %11 to i64*
  %21 = bitcast %struct.TValue* %19 to i64*
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %21, align 8
  %23 = load i8, i8* %12, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  store i8 %23, i8* %24, align 8, !tbaa !15
  %25 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !12
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 1
  store %union.StackValue* %26, %union.StackValue** %17, align 8, !tbaa !12
  br label %41

; <label>:27:                                     ; preds = %3, %8
  %28 = phi %struct.TValue* [ %11, %8 ], [ null, %3 ]
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %30 = bitcast %union.StackValue** %29 to %struct.TValue**
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8, !tbaa !12
  %32 = bitcast %struct.TValue* %31 to %struct.TString**
  store %struct.TString* %4, %struct.TString** %32, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.TString, %struct.TString* %4, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !35
  %35 = or i8 %34, 64
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 1
  store i8 %35, i8* %36, align 8, !tbaa !15
  %37 = load %union.StackValue*, %union.StackValue** %29, align 8, !tbaa !12
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 1
  store %union.StackValue* %38, %union.StackValue** %29, align 8, !tbaa !12
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 0, i32 0
  tail call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %39, %union.StackValue* %37, %struct.TValue* %28) #9
  %40 = load %union.StackValue*, %union.StackValue** %29, align 8, !tbaa !12
  br label %41

; <label>:41:                                     ; preds = %27, %16
  %42 = phi %union.StackValue* [ %40, %27 ], [ %26, %16 ]
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1, i32 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !22
  %45 = and i8 %44, 15
  %46 = zext i8 %45 to i32
  ret i32 %46
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = icmp eq i8 %5, 69
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %28

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.TValue* %3 to %struct.Table**
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1, i32 0
  %15 = tail call %struct.TValue* @luaH_get(%struct.Table* %11, %struct.TValue* nonnull %14) #9
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !15
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

; <label>:20:                                     ; preds = %9
  %21 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0
  %23 = bitcast %struct.TValue* %15 to i64*
  %24 = bitcast %struct.TValue* %22 to i64*
  %25 = load i64, i64* %23, align 8
  store i64 %25, i64* %24, align 8
  %26 = load i8, i8* %16, align 8, !tbaa !15
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0, i32 1
  store i8 %26, i8* %27, align 8, !tbaa !15
  br label %34

; <label>:28:                                     ; preds = %7, %9
  %29 = phi %union.StackValue** [ %8, %7 ], [ %12, %9 ]
  %30 = phi %struct.TValue* [ null, %7 ], [ %15, %9 ]
  %31 = load %union.StackValue*, %union.StackValue** %29, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 -1
  %33 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 0, i32 0
  tail call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %3, %struct.TValue* nonnull %33, %union.StackValue* nonnull %32, %struct.TValue* %30) #9
  br label %34

; <label>:34:                                     ; preds = %28, %20
  %35 = phi %union.StackValue** [ %29, %28 ], [ %12, %20 ]
  %36 = load %union.StackValue*, %union.StackValue** %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 -1, i32 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !22
  %39 = and i8 %38, 15
  %40 = zext i8 %39 to i32
  ret i32 %40
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = tail call fastcc i32 @auxgetstr(%struct.lua_State* %0, %struct.TValue* %4, i8* %2) #10
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !15
  %8 = icmp eq i8 %7, 69
  br i1 %8, label %9, label %38

; <label>:9:                                      ; preds = %3
  %10 = add i64 %2, -1
  %11 = bitcast %struct.TValue* %5 to %struct.Table**
  %12 = load %struct.Table*, %struct.Table** %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i64 0, i32 5
  %14 = load i32, i32* %13, align 4, !tbaa !22
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %12, i64 0, i32 6
  %19 = load %struct.TValue*, %struct.TValue** %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 %10
  br label %23

; <label>:21:                                     ; preds = %9
  %22 = tail call %struct.TValue* @luaH_getint(%struct.Table* %12, i64 %2) #9
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = phi %struct.TValue* [ %20, %17 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !15
  %27 = and i8 %26, 15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %31 = bitcast %union.StackValue** %30 to %struct.TValue**
  %32 = load %struct.TValue*, %struct.TValue** %31, align 8, !tbaa !12
  %33 = bitcast %struct.TValue* %24 to i64*
  %34 = bitcast %struct.TValue* %32 to i64*
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %34, align 8
  %36 = load i8, i8* %25, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i64 0, i32 1
  store i8 %36, i8* %37, align 8, !tbaa !15
  br label %45

; <label>:38:                                     ; preds = %3, %23
  %39 = phi %struct.TValue* [ %24, %23 ], [ null, %3 ]
  %40 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #6
  %41 = bitcast %struct.TValue* %4 to i64*
  store i64 %2, i64* %41, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %42, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !12
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %5, %struct.TValue* nonnull %4, %union.StackValue* %44, %struct.TValue* %39) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #6
  br label %45

; <label>:45:                                     ; preds = %38, %29
  %46 = phi %union.StackValue** [ %43, %38 ], [ %30, %29 ]
  %47 = load %union.StackValue*, %union.StackValue** %46, align 8, !tbaa !12
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 1
  store %union.StackValue* %48, %union.StackValue** %46, align 8, !tbaa !12
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 0, i32 0, i32 1
  %50 = load i8, i8* %49, align 8, !tbaa !22
  %51 = and i8 %50, 15
  %52 = zext i8 %51 to i32
  ret i32 %52
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_rawget(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %4 = bitcast %struct.TValue* %3 to %struct.Table**
  %5 = load %struct.Table*, %struct.Table** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 -1, i32 0
  %9 = tail call %struct.TValue* @luaH_get(%struct.Table* %5, %struct.TValue* nonnull %8) #9
  %10 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1
  store %union.StackValue* %11, %union.StackValue** %6, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !15
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

; <label>:16:                                     ; preds = %2
  %17 = bitcast %struct.TValue* %9 to i64*
  %18 = bitcast %union.StackValue* %11 to i64*
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %18, align 8
  %20 = load i8, i8* %12, align 8, !tbaa !15
  br label %21

; <label>:21:                                     ; preds = %2, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %2 ]
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1, i32 0, i32 1
  store i8 %22, i8* %23, align 8
  %24 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  store %union.StackValue* %25, %union.StackValue** %6, align 8, !tbaa !12
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 0, i32 0, i32 1
  %27 = load i8, i8* %26, align 8, !tbaa !22
  %28 = and i8 %27, 15
  %29 = zext i8 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_rawgeti(%struct.lua_State* nocapture, i32, i64) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %5 = bitcast %struct.TValue* %4 to %struct.Table**
  %6 = load %struct.Table*, %struct.Table** %5, align 8, !tbaa !22
  %7 = tail call %struct.TValue* @luaH_getint(%struct.Table* %6, i64 %2) #9
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !15
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = bitcast %union.StackValue** %12 to %struct.TValue**
  %14 = load %struct.TValue*, %struct.TValue** %13, align 8, !tbaa !12
  br i1 %11, label %20, label %15

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.TValue* %7 to i64*
  %17 = bitcast %struct.TValue* %14 to i64*
  %18 = load i64, i64* %16, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i8, i8* %8, align 8, !tbaa !15
  br label %20

; <label>:20:                                     ; preds = %3, %15
  %21 = phi i8 [ %19, %15 ], [ 0, %3 ]
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 0, i32 1
  store i8 %21, i8* %22, align 8
  %23 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %23, i64 1
  store %union.StackValue* %24, %union.StackValue** %12, align 8, !tbaa !12
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %23, i64 0, i32 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !22
  %27 = and i8 %26, 15
  %28 = zext i8 %27 to i32
  ret i32 %28
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_rawgetp(%struct.lua_State* nocapture, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %7 = bitcast %struct.TValue* %6 to %struct.Table**
  %8 = load %struct.Table*, %struct.Table** %7, align 8, !tbaa !22
  %9 = bitcast %struct.TValue* %4 to i8**
  store i8* %2, i8** %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %10, align 8, !tbaa !15
  %11 = call %struct.TValue* @luaH_get(%struct.Table* %8, %struct.TValue* nonnull %4) #9
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !15
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %17 = bitcast %union.StackValue** %16 to %struct.TValue**
  %18 = load %struct.TValue*, %struct.TValue** %17, align 8, !tbaa !12
  br i1 %15, label %24, label %19

; <label>:19:                                     ; preds = %3
  %20 = bitcast %struct.TValue* %11 to i64*
  %21 = bitcast %struct.TValue* %18 to i64*
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %21, align 8
  %23 = load i8, i8* %12, align 8, !tbaa !15
  br label %24

; <label>:24:                                     ; preds = %3, %19
  %25 = phi i8 [ %23, %19 ], [ 0, %3 ]
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 0, i32 1
  store i8 %25, i8* %26, align 8
  %27 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  store %union.StackValue* %28, %union.StackValue** %16, align 8, !tbaa !12
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 0, i32 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !22
  %31 = and i8 %30, 15
  %32 = zext i8 %31 to i32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #9
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to %struct.TValue**
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !12
  %8 = bitcast %struct.TValue* %7 to %struct.Table**
  store %struct.Table* %4, %struct.Table** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 69, i8* %9, align 8, !tbaa !15
  %10 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 1
  store %union.StackValue* %11, %union.StackValue** %5, align 8, !tbaa !12
  %12 = icmp sgt i32 %1, 0
  %13 = icmp sgt i32 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  tail call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %4, i32 %1, i32 %2) #9
  br label %16

; <label>:16:                                     ; preds = %3, %15
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 3
  %20 = load i64, i64* %19, align 8, !tbaa !34
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %23

; <label>:23:                                     ; preds = %22, %16
  ret void
}

; Function Attrs: optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define i32 @lua_getmetatable(%struct.lua_State* nocapture, i32) local_unnamed_addr #3 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = trunc i8 %5 to i4
  switch i4 %6, label %15 [
    i4 5, label %7
    i4 7, label %11
  ]

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.TValue* %3 to %struct.Table**
  %9 = load %struct.Table*, %struct.Table** %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i64 0, i32 9
  br label %21

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.TValue* %3 to %struct.Udata**
  %13 = load %struct.Udata*, %struct.Udata** %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.Udata, %struct.Udata* %13, i64 0, i32 5
  br label %21

; <label>:15:                                     ; preds = %2
  %16 = and i8 %5, 15
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = zext i8 %16 to i64
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 41, i64 %19
  br label %21

; <label>:21:                                     ; preds = %15, %11, %7
  %22 = phi %struct.Table** [ %20, %15 ], [ %14, %11 ], [ %10, %7 ]
  %23 = load %struct.Table*, %struct.Table** %22, align 8, !tbaa !22
  %24 = icmp eq %struct.Table* %23, null
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = bitcast %union.StackValue** %26 to %struct.TValue**
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8, !tbaa !12
  %29 = bitcast %struct.TValue* %28 to %struct.Table**
  store %struct.Table* %23, %struct.Table** %29, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 0, i32 1
  store i8 69, i8* %30, align 8, !tbaa !15
  %31 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 1
  store %union.StackValue* %32, %union.StackValue** %26, align 8, !tbaa !12
  br label %33

; <label>:33:                                     ; preds = %21, %25
  %34 = phi i32 [ 1, %25 ], [ 0, %21 ]
  ret i32 %34
}

; Function Attrs: norecurse nounwind optsize uwtable
define i32 @lua_getiuservalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #3 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %7 = bitcast %struct.TValue* %6 to %struct.Udata**
  %8 = load %struct.Udata*, %struct.Udata** %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 3
  %10 = load i16, i16* %9, align 2, !tbaa !22
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %5, %3
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = bitcast %union.StackValue** %14 to %struct.TValue**
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  store i8 0, i8* %17, align 8, !tbaa !22
  %18 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  br label %38

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %21 = bitcast %union.StackValue** %20 to %struct.TValue**
  %22 = load %struct.TValue*, %struct.TValue** %21, align 8, !tbaa !12
  %23 = add nsw i32 %2, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 7, i64 %24, i32 0
  %26 = bitcast %struct.TValue* %25 to i64*
  %27 = bitcast %struct.TValue* %22 to i64*
  %28 = load i64, i64* %26, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 7, i64 %24, i32 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i64 0, i32 1
  store i8 %30, i8* %31, align 8, !tbaa !15
  %32 = load %struct.TValue*, %struct.TValue** %21, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !22
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i32
  %37 = bitcast %struct.TValue* %32 to %union.StackValue*
  br label %38

; <label>:38:                                     ; preds = %19, %13
  %39 = phi %union.StackValue** [ %20, %19 ], [ %14, %13 ]
  %40 = phi %union.StackValue* [ %37, %19 ], [ %18, %13 ]
  %41 = phi i32 [ %36, %19 ], [ -1, %13 ]
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 1
  store %union.StackValue* %42, %union.StackValue** %39, align 8, !tbaa !12
  ret i32 %41
}

; Function Attrs: nounwind optsize uwtable
define void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 7, i32 0, i32 0
  %6 = bitcast %struct.GCObject** %5 to %struct.Table**
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !tbaa !22
  %8 = tail call %struct.TValue* @luaH_getint(%struct.Table* %7, i64 2) #9
  tail call fastcc void @auxsetstr(%struct.lua_State* %0, %struct.TValue* %8, i8* %1) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @auxsetstr(%struct.lua_State*, %struct.TValue*, i8*) unnamed_addr #0 {
  %4 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %2) #9
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = icmp eq i8 %6, 69
  br i1 %7, label %8, label %49

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %10 = bitcast %struct.TValue* %1 to %struct.Table**
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !22
  %12 = tail call %struct.TValue* @luaH_getstr(%struct.Table* %11, %struct.TString* %4) #9
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !15
  %15 = and i8 %14, 15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %49, label %17

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !12
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0
  %21 = bitcast %struct.TValue* %20 to i64*
  %22 = bitcast %struct.TValue* %12 to i64*
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !15
  store i8 %25, i8* %13, align 8, !tbaa !15
  %26 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !12
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 -1, i32 0, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !22
  %29 = and i8 %28, 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

; <label>:31:                                     ; preds = %17
  %32 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i64 0, i32 2
  %34 = load i8, i8* %33, align 1, !tbaa !23
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 -1, i32 0, i32 0, i32 0
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %39, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !23
  %42 = and i8 %41, 24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %37
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %32) #9
  %45 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !12
  br label %46

; <label>:46:                                     ; preds = %37, %31, %17, %44
  %47 = phi %union.StackValue* [ %26, %37 ], [ %26, %31 ], [ %26, %17 ], [ %45, %44 ]
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 -1
  br label %65

; <label>:49:                                     ; preds = %3, %8
  %50 = phi %struct.TValue* [ %12, %8 ], [ null, %3 ]
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %52 = bitcast %union.StackValue** %51 to %struct.TValue**
  %53 = load %struct.TValue*, %struct.TValue** %52, align 8, !tbaa !12
  %54 = bitcast %struct.TValue* %53 to %struct.TString**
  store %struct.TString* %4, %struct.TString** %54, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %4, i64 0, i32 1
  %56 = load i8, i8* %55, align 8, !tbaa !35
  %57 = or i8 %56, 64
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i64 0, i32 1
  store i8 %57, i8* %58, align 8, !tbaa !15
  %59 = load %union.StackValue*, %union.StackValue** %51, align 8, !tbaa !12
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 1
  store %union.StackValue* %60, %union.StackValue** %51, align 8, !tbaa !12
  %61 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 0, i32 0
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 -1, i32 0
  tail call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %61, %struct.TValue* nonnull %62, %struct.TValue* %50) #9
  %63 = load %union.StackValue*, %union.StackValue** %51, align 8, !tbaa !12
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i64 -2
  br label %65

; <label>:65:                                     ; preds = %49, %46
  %66 = phi %union.StackValue** [ %51, %49 ], [ %18, %46 ]
  %67 = phi %union.StackValue* [ %64, %49 ], [ %48, %46 ]
  store %union.StackValue* %67, %union.StackValue** %66, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !15
  %6 = icmp eq i8 %5, 69
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %48

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %11 = bitcast %struct.TValue* %3 to %struct.Table**
  %12 = load %struct.Table*, %struct.Table** %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -2, i32 0
  %16 = tail call %struct.TValue* @luaH_get(%struct.Table* %12, %struct.TValue* nonnull %15) #9
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !15
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %48, label %21

; <label>:21:                                     ; preds = %9
  %22 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 -1, i32 0
  %24 = bitcast %struct.TValue* %23 to i64*
  %25 = bitcast %struct.TValue* %16 to i64*
  %26 = load i64, i64* %24, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 -1, i32 0, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !15
  store i8 %28, i8* %17, align 8, !tbaa !15
  %29 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 -1, i32 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !22
  %32 = and i8 %31, 64
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34

; <label>:34:                                     ; preds = %21
  %35 = load %struct.GCObject*, %struct.GCObject** %10, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %35, i64 0, i32 2
  %37 = load i8, i8* %36, align 1, !tbaa !23
  %38 = and i8 %37, 32
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 -1, i32 0, i32 0, i32 0
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %42, i64 0, i32 2
  %44 = load i8, i8* %43, align 1, !tbaa !23
  %45 = and i8 %44, 24
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

; <label>:47:                                     ; preds = %40
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %35) #9
  br label %54

; <label>:48:                                     ; preds = %7, %9
  %49 = phi %union.StackValue** [ %8, %7 ], [ %13, %9 ]
  %50 = phi %struct.TValue* [ null, %7 ], [ %16, %9 ]
  %51 = load %union.StackValue*, %union.StackValue** %49, align 8, !tbaa !12
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 -2, i32 0
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 -1, i32 0
  tail call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %3, %struct.TValue* nonnull %52, %struct.TValue* nonnull %53, %struct.TValue* %50) #9
  br label %54

; <label>:54:                                     ; preds = %40, %34, %21, %47, %48
  %55 = phi %union.StackValue** [ %13, %40 ], [ %13, %34 ], [ %13, %21 ], [ %13, %47 ], [ %49, %48 ]
  %56 = load %union.StackValue*, %union.StackValue** %55, align 8, !tbaa !12
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 -2
  store %union.StackValue* %57, %union.StackValue** %55, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  tail call fastcc void @auxsetstr(%struct.lua_State* %0, %struct.TValue* %4, i8* %2) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lua_seti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !15
  %8 = icmp eq i8 %7, 69
  br i1 %8, label %9, label %58

; <label>:9:                                      ; preds = %3
  %10 = add i64 %2, -1
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 0, i32 0
  %12 = bitcast %struct.TValue* %5 to %struct.Table**
  %13 = load %struct.Table*, %struct.Table** %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i64 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !22
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %10, %16
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %13, i64 0, i32 6
  %20 = load %struct.TValue*, %struct.TValue** %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i64 %10
  br label %24

; <label>:22:                                     ; preds = %9
  %23 = tail call %struct.TValue* @luaH_getint(%struct.Table* %13, i64 %2) #9
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = phi %struct.TValue* [ %21, %18 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i64 0, i32 1
  %27 = load i8, i8* %26, align 8, !tbaa !15
  %28 = and i8 %27, 15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %58, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %32 = load %union.StackValue*, %union.StackValue** %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 -1, i32 0
  %34 = bitcast %struct.TValue* %33 to i64*
  %35 = bitcast %struct.TValue* %25 to i64*
  %36 = load i64, i64* %34, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 -1, i32 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !15
  store i8 %38, i8* %26, align 8, !tbaa !15
  %39 = load %union.StackValue*, %union.StackValue** %31, align 8, !tbaa !12
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i64 -1, i32 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = and i8 %41, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %66, label %44

; <label>:44:                                     ; preds = %30
  %45 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i64 0, i32 2
  %47 = load i8, i8* %46, align 1, !tbaa !23
  %48 = and i8 %47, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %66, label %50

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i64 -1, i32 0, i32 0, i32 0
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i64 0, i32 2
  %54 = load i8, i8* %53, align 1, !tbaa !23
  %55 = and i8 %54, 24
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %66, label %57

; <label>:57:                                     ; preds = %50
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %45) #9
  br label %66

; <label>:58:                                     ; preds = %3, %24
  %59 = phi %struct.TValue* [ %25, %24 ], [ null, %3 ]
  %60 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #6
  %61 = bitcast %struct.TValue* %4 to i64*
  store i64 %2, i64* %61, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %62, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -1, i32 0
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %5, %struct.TValue* nonnull %4, %struct.TValue* nonnull %65, %struct.TValue* %59) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #6
  br label %66

; <label>:66:                                     ; preds = %50, %44, %30, %57, %58
  %67 = phi %union.StackValue** [ %31, %50 ], [ %31, %44 ], [ %31, %30 ], [ %31, %57 ], [ %63, %58 ]
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8, !tbaa !12
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 -1
  store %union.StackValue* %69, %union.StackValue** %67, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %4 = bitcast %struct.TValue* %3 to %struct.Table**
  %5 = load %struct.Table*, %struct.Table** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 -2, i32 0
  %9 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %5, %struct.TValue* nonnull %8) #9
  %10 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1, i32 0
  %12 = bitcast %struct.TValue* %11 to i64*
  %13 = bitcast %struct.TValue* %9 to i64*
  %14 = load i64, i64* %12, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1, i32 0, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  store i8 %16, i8* %17, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %5, i64 0, i32 3
  store i8 0, i8* %18, align 2, !tbaa !39
  %19 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !22
  %22 = and i8 %21, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %39, label %24

; <label>:24:                                     ; preds = %2
  %25 = bitcast %struct.Table* %5 to %struct.GCObject*
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %5, i64 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !22
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 0, i32 0
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i64 0, i32 2
  %34 = load i8, i8* %33, align 1, !tbaa !23
  %35 = and i8 %34, 24
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %30
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %25) #9
  %38 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  br label %39

; <label>:39:                                     ; preds = %30, %24, %2, %37
  %40 = phi %union.StackValue* [ %19, %30 ], [ %19, %24 ], [ %19, %2 ], [ %38, %37 ]
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 -2
  store %union.StackValue* %41, %union.StackValue** %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %5 = bitcast %struct.TValue* %4 to %struct.Table**
  %6 = load %struct.Table*, %struct.Table** %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0
  tail call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %6, i64 %2, %struct.TValue* nonnull %9) #9
  %10 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !22
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.Table* %6 to %struct.GCObject*
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %6, i64 0, i32 2
  %18 = load i8, i8* %17, align 1, !tbaa !22
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 -1, i32 0, i32 0, i32 0
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %23, i64 0, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !23
  %26 = and i8 %25, 24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %16) #9
  %29 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !12
  br label %30

; <label>:30:                                     ; preds = %21, %15, %3, %28
  %31 = phi %union.StackValue* [ %10, %21 ], [ %10, %15 ], [ %10, %3 ], [ %29, %28 ]
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 -1
  store %union.StackValue* %32, %union.StackValue** %7, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %7 = bitcast %struct.TValue* %6 to %struct.Table**
  %8 = load %struct.Table*, %struct.Table** %7, align 8, !tbaa !22
  %9 = bitcast %struct.TValue* %4 to i8**
  store i8* %2, i8** %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %10, align 8, !tbaa !15
  %11 = call %struct.TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %8, %struct.TValue* nonnull %4) #9
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1, i32 0
  %15 = bitcast %struct.TValue* %14 to i64*
  %16 = bitcast %struct.TValue* %11 to i64*
  %17 = load i64, i64* %15, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 0, i32 1
  store i8 %19, i8* %20, align 8, !tbaa !15
  %21 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !22
  %24 = and i8 %23, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %26

; <label>:26:                                     ; preds = %3
  %27 = bitcast %struct.Table* %8 to %struct.GCObject*
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 2
  %29 = load i8, i8* %28, align 1, !tbaa !22
  %30 = and i8 %29, 32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0, i32 0, i32 0
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %34, i64 0, i32 2
  %36 = load i8, i8* %35, align 1, !tbaa !23
  %37 = and i8 %36, 24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %32
  call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %27) #9
  %40 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  br label %41

; <label>:41:                                     ; preds = %32, %26, %3, %39
  %42 = phi %union.StackValue* [ %21, %32 ], [ %21, %26 ], [ %21, %3 ], [ %40, %39 ]
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1
  store %union.StackValue* %43, %union.StackValue** %12, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 -1, i32 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !22
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 -1, i32 0, i32 0, i32 0
  %12 = bitcast %struct.GCObject** %11 to %struct.Table**
  %13 = load %struct.Table*, %struct.Table** %12, align 8, !tbaa !22
  %14 = bitcast %struct.Table* %13 to %union.GCUnion*
  br label %15

; <label>:15:                                     ; preds = %2, %10
  %16 = phi %union.GCUnion* [ %14, %10 ], [ null, %2 ]
  %17 = phi %struct.Table* [ %13, %10 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !15
  %20 = trunc i8 %19 to i4
  switch i4 %20, label %66 [
    i4 5, label %21
    i4 7, label %44
  ]

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %23 = bitcast %struct.TValue* %3 to %struct.Table**
  %24 = load %struct.Table*, %struct.Table** %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i64 0, i32 9
  %26 = bitcast %struct.Table** %25 to %union.GCUnion**
  store %union.GCUnion* %16, %union.GCUnion** %26, align 8, !tbaa !22
  %27 = icmp eq %struct.Table* %17, null
  br i1 %27, label %72, label %28

; <label>:28:                                     ; preds = %21
  %29 = load %struct.GCObject*, %struct.GCObject** %22, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %29, i64 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2
  %36 = load i8, i8* %35, align 1, !tbaa !41
  %37 = and i8 %36, 24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %34
  %40 = bitcast %struct.Table* %17 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %29, %struct.GCObject* %40) #9
  %41 = load %struct.GCObject*, %struct.GCObject** %22, align 8, !tbaa !22
  br label %42

; <label>:42:                                     ; preds = %34, %28, %39
  %43 = phi %struct.GCObject* [ %29, %34 ], [ %29, %28 ], [ %41, %39 ]
  tail call void @luaC_checkfinalizer(%struct.lua_State* nonnull %0, %struct.GCObject* %43, %struct.Table* nonnull %17) #9
  br label %72

; <label>:44:                                     ; preds = %15
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %46 = bitcast %struct.TValue* %3 to %struct.Udata**
  %47 = load %struct.Udata*, %struct.Udata** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.Udata, %struct.Udata* %47, i64 0, i32 5
  store %struct.Table* %17, %struct.Table** %48, align 8, !tbaa !22
  %49 = icmp eq %struct.Table* %17, null
  br i1 %49, label %72, label %50

; <label>:50:                                     ; preds = %44
  %51 = load %struct.GCObject*, %struct.GCObject** %45, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %51, i64 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !22
  %54 = and i8 %53, 32
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2
  %58 = load i8, i8* %57, align 1, !tbaa !41
  %59 = and i8 %58, 24
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

; <label>:61:                                     ; preds = %56
  %62 = bitcast %union.GCUnion* %16 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %51, %struct.GCObject* %62) #9
  %63 = load %struct.GCObject*, %struct.GCObject** %45, align 8, !tbaa !22
  br label %64

; <label>:64:                                     ; preds = %56, %50, %61
  %65 = phi %struct.GCObject* [ %51, %56 ], [ %51, %50 ], [ %63, %61 ]
  tail call void @luaC_checkfinalizer(%struct.lua_State* nonnull %0, %struct.GCObject* %65, %struct.Table* nonnull %17) #9
  br label %72

; <label>:66:                                     ; preds = %15
  %67 = and i8 %19, 15
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %69 = load %struct.global_State*, %struct.global_State** %68, align 8, !tbaa !17
  %70 = zext i8 %67 to i64
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i64 0, i32 41, i64 %70
  store %struct.Table* %17, %struct.Table** %71, align 8, !tbaa !27
  br label %72

; <label>:72:                                     ; preds = %21, %44, %64, %42, %66
  %73 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !12
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %73, i64 -1
  store %union.StackValue* %74, %union.StackValue** %4, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: optsize
declare hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_setiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = add i32 %2, -1
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 0, i32 0
  %7 = bitcast %struct.TValue* %4 to %struct.Udata**
  %8 = load %struct.Udata*, %struct.Udata** %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 3
  %10 = load i16, i16* %9, align 2, !tbaa !22
  %11 = zext i16 %10 to i32
  %12 = icmp ult i32 %5, %11
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %46

; <label>:15:                                     ; preds = %3
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 7, i64 %16, i32 0
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !12
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0
  %21 = bitcast %struct.TValue* %20 to i64*
  %22 = bitcast %struct.TValue* %17 to i64*
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.Udata, %struct.Udata* %8, i64 0, i32 7, i64 %16, i32 0, i32 1
  store i8 %25, i8* %26, align 8, !tbaa !15
  %27 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !12
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1, i32 0, i32 1
  %29 = load i8, i8* %28, align 8, !tbaa !22
  %30 = and i8 %29, 64
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %46, label %32

; <label>:32:                                     ; preds = %15
  %33 = load %struct.GCObject*, %struct.GCObject** %6, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !23
  %36 = and i8 %35, 32
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1, i32 0, i32 0, i32 0
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i64 0, i32 2
  %42 = load i8, i8* %41, align 1, !tbaa !23
  %43 = and i8 %42, 24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %38
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %33) #9
  br label %46

; <label>:46:                                     ; preds = %13, %45, %15, %32, %38
  %47 = phi %union.StackValue** [ %14, %13 ], [ %18, %45 ], [ %18, %15 ], [ %18, %32 ], [ %18, %38 ]
  %48 = phi i32 [ 0, %13 ], [ 1, %45 ], [ 1, %15 ], [ 1, %32 ], [ 1, %38 ]
  %49 = load %union.StackValue*, %union.StackValue** %47, align 8, !tbaa !12
  %50 = getelementptr inbounds %union.StackValue, %union.StackValue* %49, i64 -1
  store %union.StackValue* %50, %union.StackValue** %47, align 8, !tbaa !12
  ret i32 %48
}

; Function Attrs: nounwind optsize uwtable
define void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %10
  %12 = icmp eq i32 (%struct.lua_State*, i32, i64)* %4, null
  br i1 %12, label %23, label %13

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %15 = load i32, i32* %14, align 8, !tbaa !42
  %16 = icmp ult i32 %15, 65536
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8, !tbaa !2
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 0, i32 4, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %4, i32 (%struct.lua_State*, i32, i64)** %20, align 8, !tbaa !22
  %21 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8, !tbaa !2
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 0, i32 4, i32 0, i32 2
  store i64 %3, i64* %22, align 8, !tbaa !22
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %11, i32 %2) #9
  br label %24

; <label>:23:                                     ; preds = %5, %13
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* %11, i32 %2) #9
  br label %24

; <label>:24:                                     ; preds = %23, %17
  %25 = icmp slt i32 %2, 0
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !tbaa !2
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1
  %30 = load %union.StackValue*, %union.StackValue** %29, align 8, !tbaa !14
  %31 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %32 = icmp ult %union.StackValue* %30, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %26
  store %union.StackValue* %31, %union.StackValue** %29, align 8, !tbaa !14
  br label %34

; <label>:34:                                     ; preds = %33, %26, %24
  ret void
}

; Function Attrs: optsize
declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #0 {
  %7 = alloca %struct.CallS, align 8
  %8 = bitcast %struct.CallS* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #6
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %28, label %10

; <label>:10:                                     ; preds = %6
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 0
  br label %18

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %18

; <label>:18:                                     ; preds = %12, %16
  %19 = phi %union.StackValue** [ %15, %12 ], [ %17, %16 ]
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8, !tbaa !27
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %24 = bitcast %union.StackValue** %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !13
  %26 = ptrtoint %union.StackValue* %22 to i64
  %27 = sub i64 %26, %25
  br label %28

; <label>:28:                                     ; preds = %6, %18
  %29 = phi i64 [ %27, %18 ], [ 0, %6 ]
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8, !tbaa !12
  %32 = add nsw i32 %1, 1
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 %34
  %36 = getelementptr inbounds %struct.CallS, %struct.CallS* %7, i64 0, i32 0
  store %union.StackValue* %35, %union.StackValue** %36, align 8, !tbaa !43
  %37 = icmp eq i32 (%struct.lua_State*, i32, i64)* %5, null
  %38 = ptrtoint %union.StackValue* %35 to i64
  br i1 %37, label %43, label %39

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %41 = load i32, i32* %40, align 8, !tbaa !42
  %42 = icmp ult i32 %41, 65536
  br i1 %42, label %50, label %43

; <label>:43:                                     ; preds = %39, %28
  %44 = getelementptr inbounds %struct.CallS, %struct.CallS* %7, i64 0, i32 1
  store i32 %2, i32* %44, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %46 = bitcast %union.StackValue** %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !13
  %48 = sub i64 %38, %47
  %49 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @f_call, i8* nonnull %8, i64 %48, i64 %29) #9
  br label %75

; <label>:50:                                     ; preds = %39
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %52 = load %struct.CallInfo*, %struct.CallInfo** %51, align 8, !tbaa !2
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i64 0, i32 4, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %5, i32 (%struct.lua_State*, i32, i64)** %53, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i64 0, i32 4, i32 0, i32 2
  store i64 %4, i64* %54, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %56 = bitcast %union.StackValue** %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !13
  %58 = sub i64 %38, %57
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i64 0, i32 5, i32 0
  store i32 %59, i32* %60, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %62 = load i64, i64* %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i64 0, i32 4, i32 0, i32 1
  store i64 %62, i64* %63, align 8, !tbaa !22
  store i64 %29, i64* %61, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i64 0, i32 7
  %65 = load i16, i16* %64, align 2, !tbaa !47
  %66 = and i16 %65, -10
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %68 = load i8, i8* %67, align 1, !tbaa !48
  %69 = zext i8 %68 to i16
  %70 = or i16 %66, %69
  %71 = or i16 %70, 8
  store i16 %71, i16* %64, align 2, !tbaa !47
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %35, i32 %2) #9
  %72 = load i16, i16* %64, align 2, !tbaa !47
  %73 = and i16 %72, -9
  store i16 %73, i16* %64, align 2, !tbaa !47
  %74 = load i64, i64* %63, align 8, !tbaa !22
  store i64 %74, i64* %61, align 8, !tbaa !46
  br label %75

; <label>:75:                                     ; preds = %50, %43
  %76 = phi i32 [ %49, %43 ], [ 0, %50 ]
  %77 = icmp slt i32 %2, 0
  br i1 %77, label %78, label %86

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %80 = load %struct.CallInfo*, %struct.CallInfo** %79, align 8, !tbaa !2
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %80, i64 0, i32 1
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8, !tbaa !14
  %83 = load %union.StackValue*, %union.StackValue** %30, align 8, !tbaa !12
  %84 = icmp ult %union.StackValue* %82, %83
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %78
  store %union.StackValue* %83, %union.StackValue** %81, align 8, !tbaa !14
  br label %86

; <label>:86:                                     ; preds = %85, %78, %75
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #6
  ret i32 %76
}

; Function Attrs: optsize
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @f_call(%struct.lua_State*, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to %union.StackValue**
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, i8* %1, i64 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !45
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* %4, i32 %7) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) local_unnamed_addr #0 {
  %6 = alloca %struct.Zio, align 8
  %7 = bitcast %struct.Zio* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  %8 = icmp eq i8* %3, null
  %9 = select i1 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %3
  call void @luaZ_init(%struct.lua_State* %0, %struct.Zio* nonnull %6, i8* (%struct.lua_State*, i8*, i64*)* %1, i8* %2) #9
  %10 = call i32 @luaD_protectedparser(%struct.lua_State* %0, %struct.Zio* nonnull %6, i8* %9, i8* %4) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %56

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1, i32 0, i32 0, i32 0
  %16 = bitcast %struct.GCObject** %15 to %struct.LClosure**
  %17 = load %struct.LClosure*, %struct.LClosure** %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i64 0, i32 3
  %19 = load i8, i8* %18, align 2, !tbaa !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %56, label %21

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 7, i32 0, i32 0
  %25 = bitcast %struct.GCObject** %24 to %struct.Table**
  %26 = load %struct.Table*, %struct.Table** %25, align 8, !tbaa !22
  %27 = call %struct.TValue* @luaH_getint(%struct.Table* %26, i64 2) #9
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i64 0, i32 6, i64 0
  %29 = load %struct.UpVal*, %struct.UpVal** %28, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %29, i64 0, i32 3
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8, !tbaa !51
  %32 = bitcast %struct.TValue* %27 to i64*
  %33 = bitcast %struct.TValue* %31 to i64*
  %34 = load i64, i64* %32, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i64 0, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 1
  store i8 %36, i8* %37, align 8, !tbaa !15
  %38 = load i8, i8* %35, align 8, !tbaa !15
  %39 = and i8 %38, 64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

; <label>:41:                                     ; preds = %21
  %42 = load %struct.UpVal*, %struct.UpVal** %28, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %42, i64 0, i32 2
  %44 = load i8, i8* %43, align 1, !tbaa !53
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i64 0, i32 0, i32 0
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %49, i64 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !23
  %52 = and i8 %51, 24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %47
  %55 = bitcast %struct.UpVal* %42 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %55, %struct.GCObject* %49) #9
  br label %56

; <label>:56:                                     ; preds = %12, %47, %41, %21, %54, %5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  ret i32 %10
}

; Function Attrs: optsize
declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 -1, i32 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !15
  %9 = icmp eq i8 %8, 86
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 -1, i32 0, i32 0, i32 0
  %12 = bitcast %struct.GCObject** %11 to %struct.LClosure**
  %13 = load %struct.LClosure*, %struct.LClosure** %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %13, i64 0, i32 5
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8, !tbaa !22
  %16 = tail call i32 @luaU_dump(%struct.lua_State* nonnull %0, %struct.Proto* %15, i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i8* %2, i32 %3) #9
  br label %17

; <label>:17:                                     ; preds = %4, %10
  %18 = phi i32 [ %16, %10 ], [ 1, %4 ]
  ret i32 %18
}

; Function Attrs: optsize
declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i32 @lua_status(%struct.lua_State* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 2, !tbaa !54
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !17
  call void @llvm.va_start(i8* nonnull %4)
  switch i32 %1, label %256 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %12
    i32 4, label %20
    i32 5, label %28
    i32 6, label %68
    i32 7, label %92
    i32 9, label %116
    i32 10, label %120
    i32 11, label %176
  ]

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 15
  store i8 0, i8* %8, align 1, !tbaa !55
  br label %256

; <label>:9:                                      ; preds = %2
  call void @luaE_setdebt(%struct.global_State* %6, i64 0) #9
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 15
  store i8 1, i8* %10, align 1, !tbaa !55
  br label %256

; <label>:11:                                     ; preds = %2
  call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 0) #9
  br label %256

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2
  %14 = load i64, i64* %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %16 = load i64, i64* %15, align 8, !tbaa !34
  %17 = add nsw i64 %16, %14
  %18 = lshr i64 %17, 10
  %19 = trunc i64 %18 to i32
  br label %256

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2
  %22 = load i64, i64* %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !34
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 1023
  br label %256

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ult i32 %30, 41
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = sext i32 %30 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %42

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr i8, i8* %40, i64 8
  store i8* %41, i8** %39, align 8
  br label %42

; <label>:42:                                     ; preds = %38, %32
  %43 = phi i8* [ %36, %32 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 15
  %47 = load i8, i8* %46, align 1, !tbaa !55
  store i8 1, i8* %46, align 1, !tbaa !55
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %42
  call void @luaE_setdebt(%struct.global_State* nonnull %6, i64 0) #9
  call void @luaC_step(%struct.lua_State* nonnull %0) #9
  store i8 %47, i8* %46, align 1, !tbaa !55
  br label %63

; <label>:50:                                     ; preds = %42
  %51 = sext i32 %45 to i64
  %52 = shl nsw i64 %51, 10
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %54 = load i64, i64* %53, align 8, !tbaa !34
  %55 = add nsw i64 %54, %52
  call void @luaE_setdebt(%struct.global_State* nonnull %6, i64 %55) #9
  %56 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 3
  %58 = load i64, i64* %57, align 8, !tbaa !34
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %50
  call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %61

; <label>:61:                                     ; preds = %50, %60
  store i8 %47, i8* %46, align 1, !tbaa !55
  %62 = icmp sgt i64 %55, 0
  br i1 %62, label %63, label %256

; <label>:63:                                     ; preds = %49, %61
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 11
  %65 = load i8, i8* %64, align 1, !tbaa !57
  %66 = icmp eq i8 %65, 8
  %67 = zext i1 %66 to i32
  br label %256

; <label>:68:                                     ; preds = %2
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp ult i32 %70, 41
  br i1 %71, label %72, label %78

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %74 = load i8*, i8** %73, align 16
  %75 = sext i32 %70 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = add i32 %70, 8
  store i32 %77, i32* %69, align 16
  br label %82

; <label>:78:                                     ; preds = %68
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr i8, i8* %80, i64 8
  store i8* %81, i8** %79, align 8
  br label %82

; <label>:82:                                     ; preds = %78, %72
  %83 = phi i8* [ %76, %72 ], [ %80, %78 ]
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 17
  %87 = load i8, i8* %86, align 1, !tbaa !58
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 2
  %90 = sdiv i32 %85, 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %86, align 1, !tbaa !58
  br label %256

; <label>:92:                                     ; preds = %2
  %93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = icmp ult i32 %94, 41
  br i1 %95, label %96, label %102

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %98 = load i8*, i8** %97, align 16
  %99 = sext i32 %94 to i64
  %100 = getelementptr i8, i8* %98, i64 %99
  %101 = add i32 %94, 8
  store i32 %101, i32* %93, align 16
  br label %106

; <label>:102:                                    ; preds = %92
  %103 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr i8, i8* %104, i64 8
  store i8* %105, i8** %103, align 8
  br label %106

; <label>:106:                                    ; preds = %102, %96
  %107 = phi i8* [ %100, %96 ], [ %104, %102 ]
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 18
  %111 = load i8, i8* %110, align 4, !tbaa !59
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 2
  %114 = sdiv i32 %109, 4
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %110, align 4, !tbaa !59
  br label %256

; <label>:116:                                    ; preds = %2
  %117 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 15
  %118 = load i8, i8* %117, align 1, !tbaa !55
  %119 = zext i8 %118 to i32
  br label %256

; <label>:120:                                    ; preds = %2
  %121 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %122 = load i32, i32* %121, align 16
  %123 = icmp ult i32 %122, 41
  br i1 %123, label %130, label %124

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr i8, i8* %126, i64 8
  store i8* %127, i8** %125, align 8
  %128 = bitcast i8* %126 to i32*
  %129 = load i32, i32* %128, align 4
  br label %145

; <label>:130:                                    ; preds = %120
  %131 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %132 = load i8*, i8** %131, align 16
  %133 = sext i32 %122 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  %135 = add i32 %122, 8
  store i32 %135, i32* %121, align 16
  %136 = bitcast i8* %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = icmp ult i32 %135, 41
  br i1 %138, label %139, label %145

; <label>:139:                                    ; preds = %130
  %140 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %141 = load i8*, i8** %140, align 16
  %142 = sext i32 %135 to i64
  %143 = getelementptr i8, i8* %141, i64 %142
  %144 = add i32 %122, 16
  store i32 %144, i32* %121, align 16
  br label %150

; <label>:145:                                    ; preds = %124, %130
  %146 = phi i32 [ %129, %124 ], [ %137, %130 ]
  %147 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr i8, i8* %148, i64 8
  store i8* %149, i8** %147, align 8
  br label %150

; <label>:150:                                    ; preds = %145, %139
  %151 = phi i32 [ %137, %139 ], [ %146, %145 ]
  %152 = phi i8* [ %143, %139 ], [ %148, %145 ]
  %153 = bitcast i8* %152 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 12
  %156 = load i8, i8* %155, align 2, !tbaa !60
  %157 = icmp eq i8 %156, 1
  br i1 %157, label %163, label %158

; <label>:158:                                    ; preds = %150
  %159 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 5
  %160 = load i64, i64* %159, align 8, !tbaa !61
  %161 = icmp eq i64 %160, 0
  %162 = select i1 %161, i32 11, i32 10
  br label %163

; <label>:163:                                    ; preds = %158, %150
  %164 = phi i32 [ 10, %150 ], [ %162, %158 ]
  %165 = icmp eq i32 %151, 0
  br i1 %165, label %169, label %166

; <label>:166:                                    ; preds = %163
  %167 = trunc i32 %151 to i8
  %168 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13
  store i8 %167, i8* %168, align 1, !tbaa !62
  br label %169

; <label>:169:                                    ; preds = %163, %166
  %170 = icmp eq i32 %154, 0
  br i1 %170, label %175, label %171

; <label>:171:                                    ; preds = %169
  %172 = sdiv i32 %154, 4
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14
  store i8 %173, i8* %174, align 8, !tbaa !63
  br label %175

; <label>:175:                                    ; preds = %169, %171
  call void @luaC_changemode(%struct.lua_State* nonnull %0, i32 1) #9
  br label %256

; <label>:176:                                    ; preds = %2
  %177 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %178 = load i32, i32* %177, align 16
  %179 = icmp ult i32 %178, 41
  br i1 %179, label %186, label %180

; <label>:180:                                    ; preds = %176
  %181 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr i8, i8* %182, i64 8
  store i8* %183, i8** %181, align 8
  %184 = bitcast i8* %182 to i32*
  %185 = load i32, i32* %184, align 4
  br label %195

; <label>:186:                                    ; preds = %176
  %187 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %188 = load i8*, i8** %187, align 16
  %189 = sext i32 %178 to i64
  %190 = getelementptr i8, i8* %188, i64 %189
  %191 = add i32 %178, 8
  store i32 %191, i32* %177, align 16
  %192 = bitcast i8* %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = icmp ult i32 %191, 41
  br i1 %194, label %202, label %195

; <label>:195:                                    ; preds = %186, %180
  %196 = phi i32 [ %185, %180 ], [ %193, %186 ]
  %197 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr i8, i8* %198, i64 8
  store i8* %199, i8** %197, align 8
  %200 = bitcast i8* %198 to i32*
  %201 = load i32, i32* %200, align 4
  br label %217

; <label>:202:                                    ; preds = %186
  %203 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %204 = load i8*, i8** %203, align 16
  %205 = sext i32 %191 to i64
  %206 = getelementptr i8, i8* %204, i64 %205
  %207 = add i32 %178, 16
  store i32 %207, i32* %177, align 16
  %208 = bitcast i8* %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = icmp ult i32 %207, 41
  br i1 %210, label %211, label %217

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %213 = load i8*, i8** %212, align 16
  %214 = sext i32 %207 to i64
  %215 = getelementptr i8, i8* %213, i64 %214
  %216 = add i32 %178, 24
  store i32 %216, i32* %177, align 16
  br label %223

; <label>:217:                                    ; preds = %195, %202
  %218 = phi i32 [ %201, %195 ], [ %209, %202 ]
  %219 = phi i32 [ %196, %195 ], [ %193, %202 ]
  %220 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr i8, i8* %221, i64 8
  store i8* %222, i8** %220, align 8
  br label %223

; <label>:223:                                    ; preds = %217, %211
  %224 = phi i32 [ %209, %211 ], [ %218, %217 ]
  %225 = phi i32 [ %193, %211 ], [ %219, %217 ]
  %226 = phi i8* [ %215, %211 ], [ %221, %217 ]
  %227 = bitcast i8* %226 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 12
  %230 = load i8, i8* %229, align 2, !tbaa !60
  %231 = icmp eq i8 %230, 1
  br i1 %231, label %237, label %232

; <label>:232:                                    ; preds = %223
  %233 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 5
  %234 = load i64, i64* %233, align 8, !tbaa !61
  %235 = icmp eq i64 %234, 0
  %236 = select i1 %235, i32 11, i32 10
  br label %237

; <label>:237:                                    ; preds = %232, %223
  %238 = phi i32 [ 10, %223 ], [ %236, %232 ]
  %239 = icmp eq i32 %225, 0
  br i1 %239, label %244, label %240

; <label>:240:                                    ; preds = %237
  %241 = sdiv i32 %225, 4
  %242 = trunc i32 %241 to i8
  %243 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 17
  store i8 %242, i8* %243, align 1, !tbaa !58
  br label %244

; <label>:244:                                    ; preds = %237, %240
  %245 = icmp eq i32 %224, 0
  br i1 %245, label %250, label %246

; <label>:246:                                    ; preds = %244
  %247 = sdiv i32 %224, 4
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 18
  store i8 %248, i8* %249, align 4, !tbaa !59
  br label %250

; <label>:250:                                    ; preds = %244, %246
  %251 = icmp eq i32 %228, 0
  br i1 %251, label %255, label %252

; <label>:252:                                    ; preds = %250
  %253 = trunc i32 %228 to i8
  %254 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 19
  store i8 %253, i8* %254, align 1, !tbaa !64
  br label %255

; <label>:255:                                    ; preds = %250, %252
  call void @luaC_changemode(%struct.lua_State* nonnull %0, i32 0) #9
  br label %256

; <label>:256:                                    ; preds = %63, %2, %61, %255, %175, %116, %106, %82, %20, %12, %11, %9, %7
  %257 = phi i32 [ %238, %255 ], [ %164, %175 ], [ %119, %116 ], [ %113, %106 ], [ %89, %82 ], [ %27, %20 ], [ %19, %12 ], [ 0, %11 ], [ 0, %9 ], [ 0, %7 ], [ 0, %61 ], [ %67, %63 ], [ -1, %2 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6
  ret i32 %257
}

; Function Attrs: optsize
declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_changemode(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @lua_error(%struct.lua_State*) local_unnamed_addr #7 {
  tail call void @luaG_errormsg(%struct.lua_State* %0) #11
  unreachable
}

; Function Attrs: noreturn optsize
declare hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %4 = bitcast %struct.TValue* %3 to %struct.Table**
  %5 = load %struct.Table*, %struct.Table** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 -1
  %9 = tail call i32 @luaH_next(%struct.lua_State* %0, %struct.Table* %5, %union.StackValue* nonnull %8) #9
  %10 = icmp eq i32 %9, 0
  %11 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 -1
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 1
  %14 = select i1 %10, %union.StackValue* %12, %union.StackValue* %13
  store %union.StackValue* %14, %union.StackValue** %6, align 8, !tbaa !12
  ret i32 %9
}

; Function Attrs: optsize
declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_toclose(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !21
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %9
  br label %18

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 %14
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8, !tbaa !2
  br label %18

; <label>:18:                                     ; preds = %4, %11
  %19 = phi %struct.CallInfo** [ %5, %4 ], [ %16, %11 ]
  %20 = phi %struct.CallInfo* [ %6, %4 ], [ %17, %11 ]
  %21 = phi %union.StackValue* [ %10, %4 ], [ %15, %11 ]
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 0, i32 6
  %23 = load i16, i16* %22, align 4, !tbaa !65
  tail call void @luaF_newtbcupval(%struct.lua_State* nonnull %0, %union.StackValue* %21) #9
  %24 = icmp slt i16 %23, -1
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %18
  %26 = sub i16 -3, %23
  %27 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8, !tbaa !2
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i64 0, i32 6
  store i16 %26, i16* %28, align 4, !tbaa !65
  br label %29

; <label>:29:                                     ; preds = %25, %18
  ret void
}

; Function Attrs: optsize
declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call void @luaV_concat(%struct.lua_State* %0, i32 %1) #9
  br label %19

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %19

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %9 = bitcast %union.StackValue** %8 to %struct.TValue**
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !12
  %11 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 0) #9
  %12 = bitcast %struct.TValue* %10 to %struct.TString**
  store %struct.TString* %11, %struct.TString** %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !35
  %15 = or i8 %14, 64
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 0, i32 1
  store i8 %15, i8* %16, align 8, !tbaa !15
  %17 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 1
  store %union.StackValue* %18, %union.StackValue** %8, align 8, !tbaa !12
  br label %19

; <label>:19:                                     ; preds = %5, %7, %4
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %21 = load %struct.global_State*, %struct.global_State** %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !34
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %26

; <label>:26:                                     ; preds = %25, %19
  ret void
}

; Function Attrs: optsize
declare hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define void @lua_len(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !12
  tail call void @luaV_objlen(%struct.lua_State* %0, %union.StackValue* %5, %struct.TValue* %3) #9
  %6 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !12
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 1
  store %union.StackValue* %7, %union.StackValue** %4, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare hidden void @luaV_objlen(%struct.lua_State*, %union.StackValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* nocapture readonly, i8**) local_unnamed_addr #3 {
  %3 = icmp eq i8** %1, null
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br i1 %3, label %11, label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %8 = bitcast i8** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !66
  %10 = bitcast i8** %1 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !27
  br label %11

; <label>:11:                                     ; preds = %2, %5
  %12 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 0
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !tbaa !67
  ret i8* (i8*, i8*, i64, i64)* %14
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_setallocf(%struct.lua_State* nocapture readonly, i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1
  store i8* %2, i8** %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %7, align 8, !tbaa !67
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define void @lua_setwarnf(%struct.lua_State* nocapture readonly, void (i8*, i8*, i32)*, i8*) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 44
  store i8* %2, i8** %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 43
  store void (i8*, i8*, i32)* %1, void (i8*, i8*, i32)** %7, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lua_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #0 {
  tail call void @luaE_warning(%struct.lua_State* %0, i8* %1, i32 %2) #9
  ret void
}

; Function Attrs: optsize
declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define nonnull i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #0 {
  %4 = tail call %struct.Udata* @luaS_newudata(%struct.lua_State* %0, i64 %1, i32 %2) #9
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to %struct.TValue**
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !12
  %8 = bitcast %struct.TValue* %7 to %struct.Udata**
  store %struct.Udata* %4, %struct.Udata** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 71, i8* %9, align 8, !tbaa !15
  %10 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 1
  store %union.StackValue* %11, %union.StackValue** %5, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !34
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = bitcast %struct.Udata* %4 to i8*
  %20 = getelementptr inbounds %struct.Udata, %struct.Udata* %4, i64 0, i32 3
  %21 = load i16, i16* %20, align 2, !tbaa !70
  %22 = icmp eq i16 %21, 0
  %23 = zext i16 %21 to i64
  %24 = shl nuw nsw i64 %23, 4
  %25 = add nuw nsw i64 %24, 40
  %26 = select i1 %22, i64 32, i64 %25
  %27 = getelementptr inbounds i8, i8* %19, i64 %26
  ret i8* %27
}

; Function Attrs: optsize
declare hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define i8* @lua_getupvalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = bitcast %struct.TValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  store %struct.TValue* null, %struct.TValue** %4, align 8, !tbaa !27
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %7 = call fastcc i8* @aux_upvalue(%struct.TValue* %6, i32 %2, %struct.TValue** nonnull %4, %struct.GCObject** null) #10
  %8 = icmp eq i8* %7, null
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %11 = bitcast %union.StackValue** %10 to %struct.TValue**
  %12 = load %struct.TValue*, %struct.TValue** %11, align 8, !tbaa !12
  %13 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !27
  %14 = bitcast %struct.TValue* %13 to i64*
  %15 = bitcast %struct.TValue* %12 to i64*
  %16 = load i64, i64* %14, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  store i8 %18, i8* %19, align 8, !tbaa !15
  %20 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !12
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 1
  store %union.StackValue* %21, %union.StackValue** %10, align 8, !tbaa !12
  br label %22

; <label>:22:                                     ; preds = %3, %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  ret i8* %7
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc i8* @aux_upvalue(%struct.TValue* nocapture readonly, i32, %struct.TValue** nocapture, %struct.GCObject**) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = trunc i8 %6 to i6
  switch i6 %7, label %53 [
    i6 -10, label %8
    i6 22, label %22
  ]

; <label>:8:                                      ; preds = %4
  %9 = bitcast %struct.TValue* %0 to %struct.CClosure**
  %10 = load %struct.CClosure*, %struct.CClosure** %9, align 8, !tbaa !22
  %11 = add i32 %1, -1
  %12 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %10, i64 0, i32 3
  %13 = load i8, i8* %12, align 2, !tbaa !25
  %14 = zext i8 %13 to i32
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %53

; <label>:16:                                     ; preds = %8
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %10, i64 0, i32 6, i64 %17
  store %struct.TValue* %18, %struct.TValue** %2, align 8, !tbaa !27
  %19 = icmp eq %struct.GCObject** %3, null
  br i1 %19, label %53, label %20

; <label>:20:                                     ; preds = %16
  %21 = bitcast %struct.GCObject** %3 to %struct.CClosure**
  store %struct.CClosure* %10, %struct.CClosure** %21, align 8, !tbaa !27
  br label %53

; <label>:22:                                     ; preds = %4
  %23 = bitcast %struct.TValue* %0 to %struct.LClosure**
  %24 = load %struct.LClosure*, %struct.LClosure** %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i64 0, i32 5
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8, !tbaa !72
  %27 = add i32 %1, -1
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 6
  %29 = load i32, i32* %28, align 8, !tbaa !73
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %53

; <label>:31:                                     ; preds = %22
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i64 0, i32 6, i64 %32
  %34 = load %struct.UpVal*, %struct.UpVal** %33, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %34, i64 0, i32 3
  %36 = bitcast %struct.TValue** %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !51
  %38 = bitcast %struct.TValue** %2 to i64*
  store i64 %37, i64* %38, align 8, !tbaa !27
  %39 = icmp eq %struct.GCObject** %3, null
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %31
  %41 = bitcast %struct.UpVal** %33 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !27
  %43 = bitcast %struct.GCObject** %3 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !27
  br label %44

; <label>:44:                                     ; preds = %31, %40
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 18
  %46 = load %struct.Upvaldesc*, %struct.Upvaldesc** %45, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %46, i64 %32, i32 0
  %48 = load %struct.TString*, %struct.TString** %47, align 8, !tbaa !76
  %49 = icmp eq %struct.TString* %48, null
  %50 = getelementptr inbounds %struct.TString, %struct.TString* %48, i64 1
  %51 = bitcast %struct.TString* %50 to i8*
  %52 = select i1 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %51
  br label %53

; <label>:53:                                     ; preds = %4, %44, %22, %8, %16, %20
  %54 = phi i8* [ null, %8 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %20 ], [ %52, %44 ], [ null, %22 ], [ null, %4 ]
  ret i8* %54
}

; Function Attrs: nounwind optsize uwtable
define i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = bitcast %struct.TValue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  store %struct.TValue* null, %struct.TValue** %4, align 8, !tbaa !27
  %7 = bitcast %struct.GCObject** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  store %struct.GCObject* null, %struct.GCObject** %5, align 8, !tbaa !27
  %8 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %9 = call fastcc i8* @aux_upvalue(%struct.TValue* %8, i32 %2, %struct.TValue** nonnull %4, %struct.GCObject** nonnull %5) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %37, label %11

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1
  store %union.StackValue* %14, %union.StackValue** %12, align 8, !tbaa !12
  %15 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !27
  %16 = bitcast %union.StackValue* %14 to i64*
  %17 = bitcast %struct.TValue* %15 to i64*
  %18 = load i64, i64* %16, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1, i32 0, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 1
  store i8 %20, i8* %21, align 8, !tbaa !15
  %22 = and i8 %20, 64
  %23 = icmp eq i8 %22, 0
  %24 = inttoptr i64 %18 to %struct.GCObject*
  br i1 %23, label %37, label %25

; <label>:25:                                     ; preds = %11
  %26 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !27
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i64 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !23
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i64 0, i32 2
  %33 = load i8, i8* %32, align 1, !tbaa !23
  %34 = and i8 %33, 24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %31
  call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %26, %struct.GCObject* nonnull %24) #9
  br label %37

; <label>:37:                                     ; preds = %31, %25, %11, %3, %36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  ret i8* %9
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define i8* @lua_upvalueid(%struct.lua_State* nocapture readonly, i32, i32) local_unnamed_addr #5 {
  %4 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #10
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = trunc i8 %6 to i6
  switch i6 %7, label %24 [
    i6 22, label %8
    i6 -10, label %17
  ]

; <label>:8:                                      ; preds = %3
  %9 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %10 = bitcast %struct.TValue* %9 to %struct.LClosure**
  %11 = load %struct.LClosure*, %struct.LClosure** %10, align 8, !tbaa !22
  %12 = add nsw i32 %2, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %11, i64 0, i32 6, i64 %13
  %15 = bitcast %struct.UpVal** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !27
  br label %24

; <label>:17:                                     ; preds = %3
  %18 = bitcast %struct.TValue* %4 to %struct.CClosure**
  %19 = load %struct.CClosure*, %struct.CClosure** %18, align 8, !tbaa !22
  %20 = add nsw i32 %2, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %19, i64 0, i32 6, i64 %21
  %23 = bitcast %struct.TValue* %22 to i8*
  br label %24

; <label>:24:                                     ; preds = %3, %17, %8
  %25 = phi i8* [ %23, %17 ], [ %16, %8 ], [ null, %3 ]
  ret i8* %25
}

; Function Attrs: nounwind optsize uwtable
define void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #0 {
  %6 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %1) #9
  %7 = bitcast %struct.TValue* %6 to %struct.LClosure**
  %8 = load %struct.LClosure*, %struct.LClosure** %7, align 8, !tbaa !22
  %9 = add nsw i32 %2, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8, i64 0, i32 6, i64 %10
  %12 = tail call fastcc %struct.TValue* @index2value(%struct.lua_State* %0, i32 %3) #9
  %13 = bitcast %struct.TValue* %12 to %struct.LClosure**
  %14 = load %struct.LClosure*, %struct.LClosure** %13, align 8, !tbaa !22
  %15 = add nsw i32 %4, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %14, i64 0, i32 6, i64 %16
  %18 = load %struct.UpVal*, %struct.UpVal** %17, align 8, !tbaa !27
  store %struct.UpVal* %18, %struct.UpVal** %11, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8, i64 0, i32 2
  %20 = load i8, i8* %19, align 1, !tbaa !78
  %21 = and i8 %20, 32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

; <label>:23:                                     ; preds = %5
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %18, i64 0, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !53
  %26 = and i8 %25, 24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %23
  %29 = bitcast %struct.LClosure* %8 to %struct.GCObject*
  %30 = bitcast %struct.UpVal* %18 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* %29, %struct.GCObject* %30) #9
  br label %31

; <label>:31:                                     ; preds = %23, %5, %28
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 32}
!3 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !4, i64 160, !9, i64 168, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !7, i64 60, !7, i64 62}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!3, !4, i64 48}
!12 = !{!3, !4, i64 16}
!13 = !{!3, !4, i64 56}
!14 = !{!8, !4, i64 8}
!15 = !{!16, !5, i64 8}
!16 = !{!"TValue", !5, i64 0, !5, i64 8}
!17 = !{!3, !4, i64 24}
!18 = !{!19, !4, i64 248}
!19 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !20, i64 48, !16, i64 64, !16, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!20 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!21 = !{!8, !4, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !5, i64 9}
!24 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!25 = !{!26, !5, i64 10}
!26 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!27 = !{!4, !4, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !5, i64 0}
!30 = !{!10, !10, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"long long", !5, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{!19, !9, i64 24}
!35 = !{!36, !5, i64 8}
!36 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!37 = !{!26, !4, i64 24}
!38 = !{!19, !4, i64 256}
!39 = !{!40, !5, i64 10}
!40 = !{!"Table", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48}
!41 = !{!40, !5, i64 9}
!42 = !{!3, !10, i64 176}
!43 = !{!44, !4, i64 0}
!44 = !{!"CallS", !4, i64 0, !10, i64 8}
!45 = !{!44, !10, i64 8}
!46 = !{!3, !9, i64 168}
!47 = !{!8, !7, i64 62}
!48 = !{!3, !5, i64 11}
!49 = !{!50, !5, i64 10}
!50 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!51 = !{!52, !4, i64 16}
!52 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!53 = !{!52, !5, i64 9}
!54 = !{!3, !5, i64 10}
!55 = !{!19, !5, i64 105}
!56 = !{!19, !9, i64 16}
!57 = !{!19, !5, i64 101}
!58 = !{!19, !5, i64 107}
!59 = !{!19, !5, i64 108}
!60 = !{!19, !5, i64 102}
!61 = !{!19, !9, i64 40}
!62 = !{!19, !5, i64 103}
!63 = !{!19, !5, i64 104}
!64 = !{!19, !5, i64 109}
!65 = !{!8, !7, i64 60}
!66 = !{!19, !4, i64 8}
!67 = !{!19, !4, i64 0}
!68 = !{!19, !4, i64 1400}
!69 = !{!19, !4, i64 1392}
!70 = !{!71, !7, i64 10}
!71 = !{!"Udata", !4, i64 0, !5, i64 8, !5, i64 9, !7, i64 10, !9, i64 16, !4, i64 24, !4, i64 32, !5, i64 40}
!72 = !{!50, !4, i64 24}
!73 = !{!74, !10, i64 16}
!74 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!75 = !{!74, !4, i64 80}
!76 = !{!77, !4, i64 0}
!77 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!78 = !{!50, !5, i64 9}
