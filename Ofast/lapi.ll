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

; Function Attrs: nounwind uwtable
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
  %27 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1, i32 0) #6
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

declare hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #3 {
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %80, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %8 = sext i32 %2 to i64
  %9 = sub nsw i64 0, %8
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 %9
  store %union.StackValue* %10, %union.StackValue** %6, align 8, !tbaa !12
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %80

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
  br i1 %25, label %80, label %26

; <label>:26:                                     ; preds = %12
  %27 = and i32 %2, 1
  %28 = xor i32 %27, 1
  %29 = icmp eq i32 %2, 2
  br i1 %29, label %64, label %30

; <label>:30:                                     ; preds = %26
  %31 = zext i32 %28 to i64
  %32 = add nsw i64 %16, -1
  %33 = sub nsw i64 %32, %31
  br label %34

; <label>:34:                                     ; preds = %34, %30
  %35 = phi i64 [ 1, %30 ], [ %61, %34 ]
  %36 = phi %union.StackValue* [ %23, %30 ], [ %59, %34 ]
  %37 = phi i64 [ %33, %30 ], [ %62, %34 ]
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 1, i32 0
  %39 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i64 %35, i32 0
  %41 = bitcast %struct.TValue* %40 to i64*
  %42 = bitcast %struct.TValue* %38 to i64*
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i64 %35, i32 0, i32 1
  %45 = load i8, i8* %44, align 8, !tbaa !15
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 1, i32 0, i32 1
  store i8 %45, i8* %46, align 8, !tbaa !15
  %47 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 1
  store %union.StackValue* %48, %union.StackValue** %13, align 8, !tbaa !12
  %49 = add nuw nsw i64 %35, 1
  %50 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 1, i32 0
  %51 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 %49, i32 0
  %53 = bitcast %struct.TValue* %52 to i64*
  %54 = bitcast %struct.TValue* %50 to i64*
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 %49, i32 0, i32 1
  %57 = load i8, i8* %56, align 8, !tbaa !15
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 1, i32 0, i32 1
  store i8 %57, i8* %58, align 8, !tbaa !15
  %59 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 1
  store %union.StackValue* %60, %union.StackValue** %13, align 8, !tbaa !12
  %61 = add nuw nsw i64 %35, 2
  %62 = add i64 %37, -2
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %34

; <label>:64:                                     ; preds = %34, %26
  %65 = phi i64 [ 1, %26 ], [ %61, %34 ]
  %66 = phi %union.StackValue* [ %23, %26 ], [ %59, %34 ]
  %67 = icmp eq i32 %28, 0
  br i1 %67, label %80, label %68

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 1, i32 0
  %70 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !12
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 %65, i32 0
  %72 = bitcast %struct.TValue* %71 to i64*
  %73 = bitcast %struct.TValue* %69 to i64*
  %74 = load i64, i64* %72, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 %65, i32 0, i32 1
  %76 = load i8, i8* %75, align 8, !tbaa !15
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 1, i32 0, i32 1
  store i8 %76, i8* %77, align 8, !tbaa !15
  %78 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 1
  store %union.StackValue* %79, %union.StackValue** %13, align 8, !tbaa !12
  br label %80

; <label>:80:                                     ; preds = %68, %64, %12, %5, %3
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nocapture readonly, i32 (%struct.lua_State*)*) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 37
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !tbaa !18
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8, !tbaa !18
  ret i32 (%struct.lua_State*)* %6
}

; Function Attrs: norecurse nounwind readnone uwtable
define double @lua_version(%struct.lua_State* nocapture readnone) local_unnamed_addr #4 {
  ret double 5.040000e+02
}

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: nounwind uwtable
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
  %31 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %30, i32 0) #6
  ret void
}

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = icmp sgt i32 %2, 0
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8, !tbaa !21
  %66 = sext i32 %2 to i64
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %65, i64 %66
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %69 = load %union.StackValue*, %union.StackValue** %68, align 8, !tbaa !12
  %70 = icmp ult %union.StackValue* %67, %69
  br i1 %70, label %75, label %71

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %73 = load %struct.global_State*, %struct.global_State** %72, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i64 0, i32 8
  br label %116

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 0, i32 0
  br label %116

; <label>:77:                                     ; preds = %60
  %78 = icmp slt i32 %2, -1000999
  br i1 %78, label %84, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %81 = load %union.StackValue*, %union.StackValue** %80, align 8, !tbaa !12
  %82 = sext i32 %2 to i64
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 %82, i32 0
  br label %116

; <label>:84:                                     ; preds = %77
  %85 = icmp eq i32 %2, -1001000
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %88 = load %struct.global_State*, %struct.global_State** %87, align 8, !tbaa !17
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i64 0, i32 7
  br label %116

; <label>:90:                                     ; preds = %84
  %91 = sub nsw i32 -1001000, %2
  %92 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %93 = load %struct.TValue*, %struct.TValue** %92, align 8, !tbaa !21
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i64 0, i32 1
  %95 = load i8, i8* %94, align 8, !tbaa !22
  %96 = icmp eq i8 %95, 38
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %99 = load %struct.global_State*, %struct.global_State** %98, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.global_State, %struct.global_State* %99, i64 0, i32 8
  br label %116

; <label>:101:                                    ; preds = %90
  %102 = bitcast %struct.TValue* %93 to %struct.CClosure**
  %103 = load %struct.CClosure*, %struct.CClosure** %102, align 8, !tbaa !22
  %104 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %103, i64 0, i32 3
  %105 = load i8, i8* %104, align 2, !tbaa !23
  %106 = zext i8 %105 to i32
  %107 = icmp sgt i32 %91, %106
  br i1 %107, label %112, label %108

; <label>:108:                                    ; preds = %101
  %109 = add nsw i32 %91, -1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %103, i64 0, i32 6, i64 %110
  br label %116

; <label>:112:                                    ; preds = %101
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 8
  br label %116

; <label>:116:                                    ; preds = %71, %75, %79, %86, %97, %108, %112
  %117 = phi %struct.TValue* [ %89, %86 ], [ %100, %97 ], [ %83, %79 ], [ %74, %71 ], [ %76, %75 ], [ %111, %108 ], [ %115, %112 ]
  %118 = bitcast %struct.TValue* %61 to i64*
  %119 = bitcast %struct.TValue* %117 to i64*
  %120 = load i64, i64* %118, align 8
  store i64 %120, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %122 = load i8, i8* %121, align 8, !tbaa !15
  %123 = getelementptr inbounds %struct.TValue, %struct.TValue* %117, i64 0, i32 1
  store i8 %122, i8* %123, align 8, !tbaa !15
  %124 = icmp slt i32 %2, -1001000
  br i1 %124, label %125, label %147

; <label>:125:                                    ; preds = %116
  %126 = load i8, i8* %121, align 8, !tbaa !15
  %127 = and i8 %126, 64
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %147, label %129

; <label>:129:                                    ; preds = %125
  %130 = bitcast %struct.CallInfo** %4 to %struct.CClosure****
  %131 = load %struct.CClosure***, %struct.CClosure**** %130, align 8, !tbaa !2
  %132 = load %struct.CClosure**, %struct.CClosure*** %131, align 8, !tbaa !21
  %133 = load %struct.CClosure*, %struct.CClosure** %132, align 8, !tbaa !22
  %134 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %133, i64 0, i32 2
  %135 = load i8, i8* %134, align 1, !tbaa !22
  %136 = and i8 %135, 32
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %147, label %138

; <label>:138:                                    ; preds = %129
  %139 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 0, i32 0
  %140 = load %struct.GCObject*, %struct.GCObject** %139, align 8, !tbaa !22
  %141 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %140, i64 0, i32 2
  %142 = load i8, i8* %141, align 1, !tbaa !25
  %143 = and i8 %142, 24
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %147, label %145

; <label>:145:                                    ; preds = %138
  %146 = bitcast %struct.CClosure* %133 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %146, %struct.GCObject* %140) #6
  br label %147

; <label>:147:                                    ; preds = %138, %129, %125, %145, %116
  ret void
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define void @lua_pushvalue(%struct.lua_State* nocapture, i32) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  %9 = bitcast %struct.TValue* %5 to %union.StackValue*
  br i1 %8, label %10, label %22

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !21
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 %13
  %15 = icmp ult %union.StackValue* %14, %9
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8
  br label %59

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 0, i32 0
  br label %59

; <label>:22:                                     ; preds = %2
  %23 = icmp slt i32 %1, -1000999
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %22
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %25, i32 0
  br label %59

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i32 %1, -1001000
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %31 = load %struct.global_State*, %struct.global_State** %30, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 7
  br label %59

; <label>:33:                                     ; preds = %27
  %34 = sub nsw i32 -1001000, %1
  %35 = bitcast %struct.CallInfo* %7 to %struct.TValue**
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %16, %20, %24, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %24 ], [ %19, %16 ], [ %21, %20 ], [ %54, %51 ], [ %58, %55 ]
  %61 = bitcast %struct.TValue* %60 to i64*
  %62 = bitcast %struct.TValue* %5 to i64*
  %63 = load i64, i64* %61, align 8
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %65 = load i8, i8* %64, align 8, !tbaa !15
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 %65, i8* %66, align 8, !tbaa !15
  %67 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !12
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 1
  store %union.StackValue* %68, %union.StackValue** %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_type(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = and i8 %62, 15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %67 = load %struct.global_State*, %struct.global_State** %66, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %67, i64 0, i32 8
  %69 = icmp eq %struct.TValue* %60, %68
  br i1 %69, label %72, label %70

; <label>:70:                                     ; preds = %65, %59
  %71 = zext i8 %63 to i32
  br label %72

; <label>:72:                                     ; preds = %65, %70
  %73 = phi i32 [ %71, %70 ], [ -1, %65 ]
  ret i32 %73
}

; Function Attrs: norecurse nounwind readnone uwtable
define i8* @lua_typename(%struct.lua_State* nocapture readnone, i32) local_unnamed_addr #4 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [12 x i8*], [12 x i8*]* @luaT_typenames_, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8, !tbaa !27
  ret i8* %6
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_iscfunction(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = icmp eq i8 %62, 38
  %64 = icmp eq i8 %62, 118
  %65 = or i1 %63, %64
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_isinteger(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = icmp eq i8 %62, 35
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32 @lua_isnumber(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8, !tbaa !21
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = icmp ult %union.StackValue* %12, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8
  br label %61

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0
  br label %61

; <label>:22:                                     ; preds = %2
  %23 = icmp slt i32 %1, -1000999
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %26 = load %union.StackValue*, %union.StackValue** %25, align 8, !tbaa !12
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %27, i32 0
  br label %61

; <label>:29:                                     ; preds = %22
  %30 = icmp eq i32 %1, -1001000
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 7
  br label %61

; <label>:35:                                     ; preds = %29
  %36 = sub nsw i32 -1001000, %1
  %37 = bitcast %struct.CallInfo* %6 to %struct.TValue**
  %38 = load %struct.TValue*, %struct.TValue** %37, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !22
  %41 = icmp eq i8 %40, 38
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 8
  br label %61

; <label>:46:                                     ; preds = %35
  %47 = bitcast %struct.TValue* %38 to %struct.CClosure**
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 3
  %50 = load i8, i8* %49, align 2, !tbaa !23
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %36, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %46
  %54 = add nsw i32 %36, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 6, i64 %55
  br label %61

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %59 = load %struct.global_State*, %struct.global_State** %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i64 0, i32 8
  br label %61

; <label>:61:                                     ; preds = %16, %20, %24, %31, %42, %53, %57
  %62 = phi %struct.TValue* [ %34, %31 ], [ %45, %42 ], [ %28, %24 ], [ %19, %16 ], [ %21, %20 ], [ %56, %53 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !15
  %65 = icmp eq i8 %64, 19
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %61
  %67 = bitcast %struct.TValue* %62 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !22
  %69 = bitcast double* %3 to i64*
  store i64 %68, i64* %69, align 8, !tbaa !28
  br label %72

; <label>:70:                                     ; preds = %61
  %71 = call i32 @luaV_tonumber_(%struct.TValue* %62, double* nonnull %3) #6
  br label %72

; <label>:72:                                     ; preds = %70, %66
  %73 = phi i32 [ 1, %66 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  ret i32 %73
}

declare hidden i32 @luaV_tonumber_(%struct.TValue*, double*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_isstring(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = and i8 %62, 15
  %64 = add nsw i8 %63, -3
  %65 = icmp ult i8 %64, 2
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_isuserdata(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = and i8 %62, 15
  %64 = icmp eq i8 %63, 7
  %65 = icmp eq i8 %62, 2
  %66 = or i1 %65, %64
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @lua_rawequal(%struct.lua_State* nocapture readonly, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = icmp sgt i32 %2, 0
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8, !tbaa !21
  %66 = sext i32 %2 to i64
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %65, i64 %66
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %69 = load %union.StackValue*, %union.StackValue** %68, align 8, !tbaa !12
  %70 = icmp ult %union.StackValue* %67, %69
  br i1 %70, label %75, label %71

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %73 = load %struct.global_State*, %struct.global_State** %72, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i64 0, i32 8
  br label %116

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 0, i32 0
  br label %116

; <label>:77:                                     ; preds = %60
  %78 = icmp slt i32 %2, -1000999
  br i1 %78, label %84, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %81 = load %union.StackValue*, %union.StackValue** %80, align 8, !tbaa !12
  %82 = sext i32 %2 to i64
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 %82, i32 0
  br label %116

; <label>:84:                                     ; preds = %77
  %85 = icmp eq i32 %2, -1001000
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %88 = load %struct.global_State*, %struct.global_State** %87, align 8, !tbaa !17
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i64 0, i32 7
  br label %116

; <label>:90:                                     ; preds = %84
  %91 = sub nsw i32 -1001000, %2
  %92 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %93 = load %struct.TValue*, %struct.TValue** %92, align 8, !tbaa !21
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i64 0, i32 1
  %95 = load i8, i8* %94, align 8, !tbaa !22
  %96 = icmp eq i8 %95, 38
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %99 = load %struct.global_State*, %struct.global_State** %98, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.global_State, %struct.global_State* %99, i64 0, i32 8
  br label %116

; <label>:101:                                    ; preds = %90
  %102 = bitcast %struct.TValue* %93 to %struct.CClosure**
  %103 = load %struct.CClosure*, %struct.CClosure** %102, align 8, !tbaa !22
  %104 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %103, i64 0, i32 3
  %105 = load i8, i8* %104, align 2, !tbaa !23
  %106 = zext i8 %105 to i32
  %107 = icmp sgt i32 %91, %106
  br i1 %107, label %112, label %108

; <label>:108:                                    ; preds = %101
  %109 = add nsw i32 %91, -1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %103, i64 0, i32 6, i64 %110
  br label %116

; <label>:112:                                    ; preds = %101
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 8
  br label %116

; <label>:116:                                    ; preds = %71, %75, %79, %86, %97, %108, %112
  %117 = phi %struct.TValue* [ %89, %86 ], [ %100, %97 ], [ %83, %79 ], [ %74, %71 ], [ %76, %75 ], [ %111, %108 ], [ %115, %112 ]
  %118 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %119 = load i8, i8* %118, align 8, !tbaa !15
  %120 = and i8 %119, 15
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %127

; <label>:122:                                    ; preds = %116
  %123 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %124 = load %struct.global_State*, %struct.global_State** %123, align 8, !tbaa !17
  %125 = getelementptr inbounds %struct.global_State, %struct.global_State* %124, i64 0, i32 8
  %126 = icmp eq %struct.TValue* %61, %125
  br i1 %126, label %139, label %127

; <label>:127:                                    ; preds = %122, %116
  %128 = getelementptr inbounds %struct.TValue, %struct.TValue* %117, i64 0, i32 1
  %129 = load i8, i8* %128, align 8, !tbaa !15
  %130 = and i8 %129, 15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %137

; <label>:132:                                    ; preds = %127
  %133 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %134 = load %struct.global_State*, %struct.global_State** %133, align 8, !tbaa !17
  %135 = getelementptr inbounds %struct.global_State, %struct.global_State* %134, i64 0, i32 8
  %136 = icmp eq %struct.TValue* %117, %135
  br i1 %136, label %139, label %137

; <label>:137:                                    ; preds = %132, %127
  %138 = tail call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* nonnull %61, %struct.TValue* nonnull %117) #6
  br label %139

; <label>:139:                                    ; preds = %122, %132, %137
  %140 = phi i32 [ %138, %137 ], [ 0, %132 ], [ 0, %122 ]
  ret i32 %140
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  tail call void @luaO_arith(%struct.lua_State* nonnull %0, i32 %1, %struct.TValue* nonnull %20, %struct.TValue* nonnull %21, %union.StackValue* nonnull %19) #6
  %22 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !12
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 -1
  store %union.StackValue* %23, %union.StackValue** %5, align 8, !tbaa !12
  ret void
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8, !tbaa !21
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = icmp ult %union.StackValue* %12, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8
  br label %61

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0
  br label %61

; <label>:22:                                     ; preds = %4
  %23 = icmp slt i32 %1, -1000999
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %26 = load %union.StackValue*, %union.StackValue** %25, align 8, !tbaa !12
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %27, i32 0
  br label %61

; <label>:29:                                     ; preds = %22
  %30 = icmp eq i32 %1, -1001000
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 7
  br label %61

; <label>:35:                                     ; preds = %29
  %36 = sub nsw i32 -1001000, %1
  %37 = bitcast %struct.CallInfo* %6 to %struct.TValue**
  %38 = load %struct.TValue*, %struct.TValue** %37, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !22
  %41 = icmp eq i8 %40, 38
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 8
  br label %61

; <label>:46:                                     ; preds = %35
  %47 = bitcast %struct.TValue* %38 to %struct.CClosure**
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 3
  %50 = load i8, i8* %49, align 2, !tbaa !23
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %36, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %46
  %54 = add nsw i32 %36, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 6, i64 %55
  br label %61

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %59 = load %struct.global_State*, %struct.global_State** %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i64 0, i32 8
  br label %61

; <label>:61:                                     ; preds = %16, %20, %24, %31, %42, %53, %57
  %62 = phi %struct.TValue* [ %34, %31 ], [ %45, %42 ], [ %28, %24 ], [ %19, %16 ], [ %21, %20 ], [ %56, %53 ], [ %60, %57 ]
  %63 = icmp sgt i32 %2, 0
  br i1 %63, label %64, label %78

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %66 = load %union.StackValue*, %union.StackValue** %65, align 8, !tbaa !21
  %67 = sext i32 %2 to i64
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 %67
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %70 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %71 = icmp ult %union.StackValue* %68, %70
  br i1 %71, label %76, label %72

; <label>:72:                                     ; preds = %64
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %74 = load %struct.global_State*, %struct.global_State** %73, align 8, !tbaa !17
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %74, i64 0, i32 8
  br label %117

; <label>:76:                                     ; preds = %64
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 0, i32 0
  br label %117

; <label>:78:                                     ; preds = %61
  %79 = icmp slt i32 %2, -1000999
  br i1 %79, label %85, label %80

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8, !tbaa !12
  %83 = sext i32 %2 to i64
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i64 %83, i32 0
  br label %117

; <label>:85:                                     ; preds = %78
  %86 = icmp eq i32 %2, -1001000
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %85
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %89 = load %struct.global_State*, %struct.global_State** %88, align 8, !tbaa !17
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i64 0, i32 7
  br label %117

; <label>:91:                                     ; preds = %85
  %92 = sub nsw i32 -1001000, %2
  %93 = bitcast %struct.CallInfo* %6 to %struct.TValue**
  %94 = load %struct.TValue*, %struct.TValue** %93, align 8, !tbaa !21
  %95 = getelementptr inbounds %struct.TValue, %struct.TValue* %94, i64 0, i32 1
  %96 = load i8, i8* %95, align 8, !tbaa !22
  %97 = icmp eq i8 %96, 38
  br i1 %97, label %98, label %102

; <label>:98:                                     ; preds = %91
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %100 = load %struct.global_State*, %struct.global_State** %99, align 8, !tbaa !17
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i64 0, i32 8
  br label %117

; <label>:102:                                    ; preds = %91
  %103 = bitcast %struct.TValue* %94 to %struct.CClosure**
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !tbaa !22
  %105 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 3
  %106 = load i8, i8* %105, align 2, !tbaa !23
  %107 = zext i8 %106 to i32
  %108 = icmp sgt i32 %92, %107
  br i1 %108, label %113, label %109

; <label>:109:                                    ; preds = %102
  %110 = add nsw i32 %92, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 6, i64 %111
  br label %117

; <label>:113:                                    ; preds = %102
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %115 = load %struct.global_State*, %struct.global_State** %114, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct.global_State, %struct.global_State* %115, i64 0, i32 8
  br label %117

; <label>:117:                                    ; preds = %72, %76, %80, %87, %98, %109, %113
  %118 = phi %struct.TValue* [ %90, %87 ], [ %101, %98 ], [ %84, %80 ], [ %75, %72 ], [ %77, %76 ], [ %112, %109 ], [ %116, %113 ]
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 1
  %120 = load i8, i8* %119, align 8, !tbaa !15
  %121 = and i8 %120, 15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %128

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %125 = load %struct.global_State*, %struct.global_State** %124, align 8, !tbaa !17
  %126 = getelementptr inbounds %struct.global_State, %struct.global_State* %125, i64 0, i32 8
  %127 = icmp eq %struct.TValue* %62, %126
  br i1 %127, label %145, label %128

; <label>:128:                                    ; preds = %123, %117
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %118, i64 0, i32 1
  %130 = load i8, i8* %129, align 8, !tbaa !15
  %131 = and i8 %130, 15
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %138

; <label>:133:                                    ; preds = %128
  %134 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %135 = load %struct.global_State*, %struct.global_State** %134, align 8, !tbaa !17
  %136 = getelementptr inbounds %struct.global_State, %struct.global_State* %135, i64 0, i32 8
  %137 = icmp eq %struct.TValue* %118, %136
  br i1 %137, label %145, label %138

; <label>:138:                                    ; preds = %133, %128
  switch i32 %3, label %145 [
    i32 0, label %139
    i32 1, label %141
    i32 2, label %143
  ]

; <label>:139:                                    ; preds = %138
  %140 = tail call i32 @luaV_equalobj(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %62, %struct.TValue* nonnull %118) #6
  br label %145

; <label>:141:                                    ; preds = %138
  %142 = tail call i32 @luaV_lessthan(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %62, %struct.TValue* nonnull %118) #6
  br label %145

; <label>:143:                                    ; preds = %138
  %144 = tail call i32 @luaV_lessequal(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %62, %struct.TValue* nonnull %118) #6
  br label %145

; <label>:145:                                    ; preds = %123, %133, %139, %141, %143, %138
  %146 = phi i32 [ 0, %138 ], [ %144, %143 ], [ %142, %141 ], [ %140, %139 ], [ 0, %133 ], [ 0, %123 ]
  ret i32 %146
}

declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

declare hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @lua_stringtonumber(%struct.lua_State* nocapture, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = bitcast %union.StackValue** %3 to %struct.TValue**
  %5 = load %struct.TValue*, %struct.TValue** %4, align 8, !tbaa !12
  %6 = tail call i64 @luaO_str2num(i8* %1, %struct.TValue* %5) #6
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

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define double @lua_tonumberx(%struct.lua_State* nocapture readonly, i32, i32*) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !21
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  %16 = icmp ult %union.StackValue* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 8
  br label %62

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 0, i32 0
  br label %62

; <label>:23:                                     ; preds = %3
  %24 = icmp slt i32 %1, -1000999
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 %28, i32 0
  br label %62

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i32 %1, -1001000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 7
  br label %62

; <label>:36:                                     ; preds = %30
  %37 = sub nsw i32 -1001000, %1
  %38 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = icmp eq i8 %41, 38
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 8
  br label %62

; <label>:47:                                     ; preds = %36
  %48 = bitcast %struct.TValue* %39 to %struct.CClosure**
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 3
  %51 = load i8, i8* %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %37, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = add nsw i32 %37, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 6, i64 %56
  br label %62

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 8
  br label %62

; <label>:62:                                     ; preds = %17, %21, %25, %32, %43, %54, %58
  %63 = phi %struct.TValue* [ %35, %32 ], [ %46, %43 ], [ %29, %25 ], [ %20, %17 ], [ %22, %21 ], [ %57, %54 ], [ %61, %58 ]
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i64 0, i32 1
  %65 = load i8, i8* %64, align 8, !tbaa !15
  %66 = icmp eq i8 %65, 19
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %62
  %68 = bitcast %struct.TValue* %63 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !22
  %70 = bitcast double* %4 to i64*
  store i64 %69, i64* %70, align 8, !tbaa !28
  br label %75

; <label>:71:                                     ; preds = %62
  %72 = call i32 @luaV_tonumber_(%struct.TValue* %63, double* nonnull %4) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  store double 0.000000e+00, double* %4, align 8, !tbaa !28
  br label %75

; <label>:75:                                     ; preds = %67, %71, %74
  %76 = phi i32 [ 1, %67 ], [ %72, %71 ], [ 0, %74 ]
  %77 = icmp eq i32* %2, null
  br i1 %77, label %79, label %78

; <label>:78:                                     ; preds = %75
  store i32 %76, i32* %2, align 4, !tbaa !30
  br label %79

; <label>:79:                                     ; preds = %75, %78
  %80 = load double, double* %4, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  ret double %80
}

; Function Attrs: nounwind uwtable
define i64 @lua_tointegerx(%struct.lua_State* nocapture readonly, i32, i32*) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !21
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  %16 = icmp ult %union.StackValue* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 8
  br label %62

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 0, i32 0
  br label %62

; <label>:23:                                     ; preds = %3
  %24 = icmp slt i32 %1, -1000999
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 %28, i32 0
  br label %62

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i32 %1, -1001000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 7
  br label %62

; <label>:36:                                     ; preds = %30
  %37 = sub nsw i32 -1001000, %1
  %38 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = icmp eq i8 %41, 38
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 8
  br label %62

; <label>:47:                                     ; preds = %36
  %48 = bitcast %struct.TValue* %39 to %struct.CClosure**
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 3
  %51 = load i8, i8* %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %37, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = add nsw i32 %37, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 6, i64 %56
  br label %62

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 8
  br label %62

; <label>:62:                                     ; preds = %17, %21, %25, %32, %43, %54, %58
  %63 = phi %struct.TValue* [ %35, %32 ], [ %46, %43 ], [ %29, %25 ], [ %20, %17 ], [ %22, %21 ], [ %57, %54 ], [ %61, %58 ]
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i64 0, i32 1
  %65 = load i8, i8* %64, align 8, !tbaa !15
  %66 = icmp eq i8 %65, 35
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %62
  %68 = bitcast %struct.TValue* %63 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !22
  store i64 %69, i64* %4, align 8, !tbaa !31
  br label %74

; <label>:70:                                     ; preds = %62
  %71 = call i32 @luaV_tointeger(%struct.TValue* %63, i64* nonnull %4, i32 0) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  store i64 0, i64* %4, align 8, !tbaa !31
  br label %74

; <label>:74:                                     ; preds = %67, %70, %73
  %75 = phi i32 [ 1, %67 ], [ %71, %70 ], [ 0, %73 ]
  %76 = icmp eq i32* %2, null
  br i1 %76, label %78, label %77

; <label>:77:                                     ; preds = %74
  store i32 %75, i32* %2, align 4, !tbaa !30
  br label %78

; <label>:78:                                     ; preds = %74, %77
  %79 = load i64, i64* %4, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  ret i64 %79
}

declare hidden i32 @luaV_tointeger(%struct.TValue*, i64*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_toboolean(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = and i8 %62, 15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %72, label %65

; <label>:65:                                     ; preds = %59
  %66 = icmp eq i8 %62, 1
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %65
  %68 = bitcast %struct.TValue* %60 to i32*
  %69 = load i32, i32* %68, align 8, !tbaa !22
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  br label %72

; <label>:72:                                     ; preds = %65, %67, %59
  %73 = phi i32 [ 0, %59 ], [ 1, %65 ], [ %71, %67 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %63 = load i8, i8* %62, align 8, !tbaa !15
  %64 = trunc i8 %63 to i4
  switch i4 %64, label %65 [
    i4 4, label %126
    i4 3, label %68
  ]

; <label>:65:                                     ; preds = %60
  %66 = icmp eq i64* %2, null
  br i1 %66, label %148, label %67

; <label>:67:                                     ; preds = %65
  store i64 0, i64* %2, align 8, !tbaa !33
  br label %148

; <label>:68:                                     ; preds = %60
  tail call void @luaO_tostring(%struct.lua_State* nonnull %0, %struct.TValue* %61) #6
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %70 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !17
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i64 0, i32 3
  %72 = load i64, i64* %71, align 8, !tbaa !34
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %68
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %75

; <label>:75:                                     ; preds = %74, %68
  %76 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  br i1 %6, label %77, label %90

; <label>:77:                                     ; preds = %75
  %78 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i64 0, i32 0
  %79 = load %union.StackValue*, %union.StackValue** %78, align 8, !tbaa !21
  %80 = sext i32 %1 to i64
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %79, i64 %80
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %83 = load %union.StackValue*, %union.StackValue** %82, align 8, !tbaa !12
  %84 = icmp ult %union.StackValue* %81, %83
  br i1 %84, label %88, label %85

; <label>:85:                                     ; preds = %77
  %86 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !17
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i64 0, i32 8
  br label %126

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 0, i32 0
  br label %126

; <label>:90:                                     ; preds = %75
  %91 = icmp slt i32 %1, -1000999
  br i1 %91, label %97, label %92

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %94 = load %union.StackValue*, %union.StackValue** %93, align 8, !tbaa !12
  %95 = sext i32 %1 to i64
  %96 = getelementptr inbounds %union.StackValue, %union.StackValue* %94, i64 %95, i32 0
  br label %126

; <label>:97:                                     ; preds = %90
  %98 = icmp eq i32 %1, -1001000
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %97
  %100 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !17
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i64 0, i32 7
  br label %126

; <label>:102:                                    ; preds = %97
  %103 = sub nsw i32 -1001000, %1
  %104 = bitcast %struct.CallInfo* %76 to %struct.TValue**
  %105 = load %struct.TValue*, %struct.TValue** %104, align 8, !tbaa !21
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %105, i64 0, i32 1
  %107 = load i8, i8* %106, align 8, !tbaa !22
  %108 = icmp eq i8 %107, 38
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %102
  %110 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !17
  %111 = getelementptr inbounds %struct.global_State, %struct.global_State* %110, i64 0, i32 8
  br label %126

; <label>:112:                                    ; preds = %102
  %113 = bitcast %struct.TValue* %105 to %struct.CClosure**
  %114 = load %struct.CClosure*, %struct.CClosure** %113, align 8, !tbaa !22
  %115 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 3
  %116 = load i8, i8* %115, align 2, !tbaa !23
  %117 = zext i8 %116 to i32
  %118 = icmp sgt i32 %103, %117
  br i1 %118, label %123, label %119

; <label>:119:                                    ; preds = %112
  %120 = add nsw i32 %103, -1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 6, i64 %121
  br label %126

; <label>:123:                                    ; preds = %112
  %124 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !17
  %125 = getelementptr inbounds %struct.global_State, %struct.global_State* %124, i64 0, i32 8
  br label %126

; <label>:126:                                    ; preds = %123, %119, %109, %99, %92, %88, %85, %60
  %127 = phi %struct.TValue* [ %61, %60 ], [ %101, %99 ], [ %111, %109 ], [ %96, %92 ], [ %87, %85 ], [ %89, %88 ], [ %122, %119 ], [ %125, %123 ]
  %128 = icmp eq i64* %2, null
  br i1 %128, label %144, label %129

; <label>:129:                                    ; preds = %126
  %130 = bitcast %struct.TValue* %127 to %struct.TString**
  %131 = load %struct.TString*, %struct.TString** %130, align 8, !tbaa !22
  %132 = getelementptr inbounds %struct.TString, %struct.TString* %131, i64 0, i32 1
  %133 = load i8, i8* %132, align 8, !tbaa !22
  %134 = icmp eq i8 %133, 20
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds %struct.TString, %struct.TString* %131, i64 0, i32 4
  %137 = load i8, i8* %136, align 1, !tbaa !22
  %138 = zext i8 %137 to i64
  br label %142

; <label>:139:                                    ; preds = %129
  %140 = getelementptr inbounds %struct.TString, %struct.TString* %131, i64 0, i32 6, i32 0
  %141 = load i64, i64* %140, align 8, !tbaa !22
  br label %142

; <label>:142:                                    ; preds = %139, %135
  %143 = phi i64 [ %138, %135 ], [ %141, %139 ]
  store i64 %143, i64* %2, align 8, !tbaa !33
  br label %144

; <label>:144:                                    ; preds = %126, %142
  %145 = bitcast %struct.TValue* %127 to i8**
  %146 = load i8*, i8** %145, align 8, !tbaa !22
  %147 = getelementptr inbounds i8, i8* %146, i64 24
  br label %148

; <label>:148:                                    ; preds = %67, %65, %144
  %149 = phi i8* [ %147, %144 ], [ null, %65 ], [ null, %67 ]
  ret i8* %149
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @lua_rawlen(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = trunc i8 %62 to i6
  switch i6 %63, label %84 [
    i6 20, label %64
    i6 -28, label %70
    i6 7, label %75
    i6 5, label %80
  ]

; <label>:64:                                     ; preds = %59
  %65 = bitcast %struct.TValue* %60 to %struct.TString**
  %66 = load %struct.TString*, %struct.TString** %65, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.TString, %struct.TString* %66, i64 0, i32 4
  %68 = load i8, i8* %67, align 1, !tbaa !22
  %69 = zext i8 %68 to i64
  br label %84

; <label>:70:                                     ; preds = %59
  %71 = bitcast %struct.TValue* %60 to %struct.TString**
  %72 = load %struct.TString*, %struct.TString** %71, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.TString, %struct.TString* %72, i64 0, i32 6, i32 0
  %74 = load i64, i64* %73, align 8, !tbaa !22
  br label %84

; <label>:75:                                     ; preds = %59
  %76 = bitcast %struct.TValue* %60 to %struct.Udata**
  %77 = load %struct.Udata*, %struct.Udata** %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.Udata, %struct.Udata* %77, i64 0, i32 4
  %79 = load i64, i64* %78, align 8, !tbaa !22
  br label %84

; <label>:80:                                     ; preds = %59
  %81 = bitcast %struct.TValue* %60 to %struct.Table**
  %82 = load %struct.Table*, %struct.Table** %81, align 8, !tbaa !22
  %83 = tail call i64 @luaH_getn(%struct.Table* %82) #6
  br label %84

; <label>:84:                                     ; preds = %59, %80, %75, %70, %64
  %85 = phi i64 [ %83, %80 ], [ %79, %75 ], [ %74, %70 ], [ %69, %64 ], [ 0, %59 ]
  ret i64 %85
}

declare hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  switch i8 %62, label %72 [
    i8 38, label %63
    i8 118, label %65
  ]

; <label>:63:                                     ; preds = %59
  %64 = bitcast %struct.TValue* %60 to i32 (%struct.lua_State*)**
  br label %69

; <label>:65:                                     ; preds = %59
  %66 = bitcast %struct.TValue* %60 to %struct.CClosure**
  %67 = load %struct.CClosure*, %struct.CClosure** %66, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %67, i64 0, i32 5
  br label %69

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i32 (%struct.lua_State*)** [ %68, %65 ], [ %64, %63 ]
  %71 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %70, align 8, !tbaa !22
  br label %72

; <label>:72:                                     ; preds = %69, %59
  %73 = phi i32 (%struct.lua_State*)* [ null, %59 ], [ %71, %69 ]
  ret i32 (%struct.lua_State*)* %73
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @lua_touserdata(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = trunc i8 %62 to i4
  switch i4 %63, label %79 [
    i4 7, label %64
    i4 2, label %76
  ]

; <label>:64:                                     ; preds = %59
  %65 = bitcast %struct.TValue* %60 to %struct.Udata**
  %66 = load %struct.Udata*, %struct.Udata** %65, align 8, !tbaa !22
  %67 = bitcast %struct.Udata* %66 to i8*
  %68 = getelementptr inbounds %struct.Udata, %struct.Udata* %66, i64 0, i32 3
  %69 = load i16, i16* %68, align 2, !tbaa !22
  %70 = icmp eq i16 %69, 0
  %71 = zext i16 %69 to i64
  %72 = shl nuw nsw i64 %71, 4
  %73 = add nuw nsw i64 %72, 40
  %74 = select i1 %70, i64 32, i64 %73
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  br label %79

; <label>:76:                                     ; preds = %59
  %77 = bitcast %struct.TValue* %60 to i8**
  %78 = load i8*, i8** %77, align 8, !tbaa !22
  br label %79

; <label>:79:                                     ; preds = %59, %64, %76
  %80 = phi i8* [ %78, %76 ], [ %75, %64 ], [ null, %59 ]
  ret i8* %80
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.lua_State* @lua_tothread(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = icmp eq i8 %62, 72
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %59
  %65 = bitcast %struct.TValue* %60 to %struct.lua_State**
  %66 = load %struct.lua_State*, %struct.lua_State** %65, align 8, !tbaa !22
  br label %67

; <label>:67:                                     ; preds = %59, %64
  %68 = phi %struct.lua_State* [ %66, %64 ], [ null, %59 ]
  ret %struct.lua_State* %68
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @lua_topointer(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #5 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = trunc i8 %62 to i6
  switch i6 %63, label %84 [
    i6 -26, label %64
    i6 7, label %67
    i6 2, label %67
  ]

; <label>:64:                                     ; preds = %59
  %65 = bitcast %struct.TValue* %60 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !22
  br label %90

; <label>:67:                                     ; preds = %59, %59
  %68 = trunc i8 %62 to i4
  switch i4 %68, label %90 [
    i4 7, label %69
    i4 2, label %81
  ]

; <label>:69:                                     ; preds = %67
  %70 = bitcast %struct.TValue* %60 to %struct.Udata**
  %71 = load %struct.Udata*, %struct.Udata** %70, align 8, !tbaa !22
  %72 = bitcast %struct.Udata* %71 to i8*
  %73 = getelementptr inbounds %struct.Udata, %struct.Udata* %71, i64 0, i32 3
  %74 = load i16, i16* %73, align 2, !tbaa !22
  %75 = icmp eq i16 %74, 0
  %76 = zext i16 %74 to i64
  %77 = shl nuw nsw i64 %76, 4
  %78 = add nuw nsw i64 %77, 40
  %79 = select i1 %75, i64 32, i64 %78
  %80 = getelementptr inbounds i8, i8* %72, i64 %79
  br label %90

; <label>:81:                                     ; preds = %67
  %82 = bitcast %struct.TValue* %60 to i8**
  %83 = load i8*, i8** %82, align 8, !tbaa !22
  br label %90

; <label>:84:                                     ; preds = %59
  %85 = and i8 %62, 64
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

; <label>:87:                                     ; preds = %84
  %88 = bitcast %struct.TValue* %60 to i8**
  %89 = load i8*, i8** %88, align 8, !tbaa !22
  br label %90

; <label>:90:                                     ; preds = %81, %69, %67, %84, %87, %64
  %91 = phi i8* [ %89, %87 ], [ %66, %64 ], [ null, %84 ], [ %83, %81 ], [ %80, %69 ], [ null, %67 ]
  ret i8* %91
}

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define nonnull i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %1, i64 %2) #6
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %27

; <label>:27:                                     ; preds = %26, %9
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 1
  %29 = bitcast %struct.TString* %28 to i8*
  ret i8* %29
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %10 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* nonnull %1) #6
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %32

; <label>:32:                                     ; preds = %31, %21
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 {
  %4 = tail call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* %2) #6
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !34
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %11

; <label>:11:                                     ; preds = %10, %3
  ret i8* %4
}

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6
  call void @llvm.va_end(i8* nonnull %4)
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 3
  %10 = load i64, i64* %9, align 8, !tbaa !34
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %13

; <label>:13:                                     ; preds = %12, %2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6
  ret i8* %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
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
  br label %87

; <label>:13:                                     ; preds = %3
  %14 = tail call %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %0, i32 %2) #6
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
  br i1 %31, label %74, label %32

; <label>:32:                                     ; preds = %13
  %33 = and i32 %30, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

; <label>:35:                                     ; preds = %32
  %36 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %37 = add nsw i64 %18, -2
  %38 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %37
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 %37, i32 0
  %40 = bitcast %struct.TValue* %39 to i64*
  %41 = bitcast %struct.TValue* %38 to i64*
  %42 = load i64, i64* %40, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 %37, i32 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %37, i32 1
  store i8 %44, i8* %45, align 8, !tbaa !15
  br label %46

; <label>:46:                                     ; preds = %32, %35
  %47 = phi i64 [ %21, %32 ], [ %37, %35 ]
  %48 = icmp eq i32 %2, 2
  br i1 %48, label %74, label %49

; <label>:49:                                     ; preds = %46
  br label %50

; <label>:50:                                     ; preds = %50, %49
  %51 = phi i64 [ %47, %49 ], [ %63, %50 ]
  %52 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %53 = add nsw i64 %51, -1
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %53
  %55 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 %53, i32 0
  %56 = bitcast %struct.TValue* %55 to i64*
  %57 = bitcast %struct.TValue* %54 to i64*
  %58 = load i64, i64* %56, align 8
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 %53, i32 0, i32 1
  %60 = load i8, i8* %59, align 8, !tbaa !15
  %61 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %53, i32 1
  store i8 %60, i8* %61, align 8, !tbaa !15
  %62 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %63 = add nsw i64 %51, -2
  %64 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %63
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 %63, i32 0
  %66 = bitcast %struct.TValue* %65 to i64*
  %67 = bitcast %struct.TValue* %64 to i64*
  %68 = load i64, i64* %66, align 8
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 %63, i32 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !15
  %71 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 6, i64 %63, i32 1
  store i8 %70, i8* %71, align 8, !tbaa !15
  %72 = trunc i64 %63 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %50

; <label>:74:                                     ; preds = %46, %50, %13
  %75 = bitcast %union.StackValue** %16 to %struct.TValue**
  %76 = load %struct.TValue*, %struct.TValue** %75, align 8, !tbaa !12
  %77 = bitcast %struct.TValue* %76 to %struct.CClosure**
  store %struct.CClosure* %14, %struct.CClosure** %77, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i64 0, i32 1
  store i8 118, i8* %78, align 8, !tbaa !15
  %79 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !12
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %79, i64 1
  store %union.StackValue* %80, %union.StackValue** %16, align 8, !tbaa !12
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %82 = load %struct.global_State*, %struct.global_State** %81, align 8, !tbaa !17
  %83 = getelementptr inbounds %struct.global_State, %struct.global_State* %82, i64 0, i32 3
  %84 = load i64, i64* %83, align 8, !tbaa !34
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %74
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %87

; <label>:87:                                     ; preds = %74, %86, %5
  ret void
}

declare hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define i32 @lua_getglobal(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 7, i32 0, i32 0
  %6 = bitcast %struct.GCObject** %5 to %struct.Table**
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !tbaa !22
  %8 = tail call %struct.TValue* @luaH_getint(%struct.Table* %7, i64 2) #6
  %9 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %1) #6
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !15
  %12 = icmp eq i8 %11, 69
  br i1 %12, label %13, label %32

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.TValue* %8 to %struct.Table**
  %15 = load %struct.Table*, %struct.Table** %14, align 8, !tbaa !22
  %16 = tail call %struct.TValue* @luaH_getstr(%struct.Table* %15, %struct.TString* %9) #6
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !15
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %23 = bitcast %union.StackValue** %22 to %struct.TValue**
  %24 = load %struct.TValue*, %struct.TValue** %23, align 8, !tbaa !12
  %25 = bitcast %struct.TValue* %16 to i64*
  %26 = bitcast %struct.TValue* %24 to i64*
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %26, align 8
  %28 = load i8, i8* %17, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  store i8 %28, i8* %29, align 8, !tbaa !15
  %30 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !12
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %30, i64 1
  store %union.StackValue* %31, %union.StackValue** %22, align 8, !tbaa !12
  br label %46

; <label>:32:                                     ; preds = %13, %2
  %33 = phi %struct.TValue* [ %16, %13 ], [ null, %2 ]
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %35 = bitcast %union.StackValue** %34 to %struct.TValue**
  %36 = load %struct.TValue*, %struct.TValue** %35, align 8, !tbaa !12
  %37 = bitcast %struct.TValue* %36 to %struct.TString**
  store %struct.TString* %9, %struct.TString** %37, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !35
  %40 = or i8 %39, 64
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 0, i32 1
  store i8 %40, i8* %41, align 8, !tbaa !15
  %42 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !12
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 1
  store %union.StackValue* %43, %union.StackValue** %34, align 8, !tbaa !12
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 0, i32 0
  tail call void @luaV_finishget(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %8, %struct.TValue* %44, %union.StackValue* %42, %struct.TValue* %33) #6
  %45 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !12
  br label %46

; <label>:46:                                     ; preds = %21, %32
  %47 = phi %union.StackValue* [ %45, %32 ], [ %31, %21 ]
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 -1, i32 0, i32 1
  %49 = load i8, i8* %48, align 8, !tbaa !22
  %50 = and i8 %49, 15
  %51 = zext i8 %50 to i32
  ret i32 %51
}

declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = icmp eq i8 %62, 69
  br i1 %63, label %66, label %64

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %85

; <label>:66:                                     ; preds = %59
  %67 = bitcast %struct.TValue* %60 to %struct.Table**
  %68 = load %struct.Table*, %struct.Table** %67, align 8, !tbaa !22
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %70 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 -1, i32 0
  %72 = tail call %struct.TValue* @luaH_get(%struct.Table* %68, %struct.TValue* nonnull %71) #6
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %72, i64 0, i32 1
  %74 = load i8, i8* %73, align 8, !tbaa !15
  %75 = and i8 %74, 15
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %85, label %77

; <label>:77:                                     ; preds = %66
  %78 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 -1, i32 0
  %80 = bitcast %struct.TValue* %72 to i64*
  %81 = bitcast %struct.TValue* %79 to i64*
  %82 = load i64, i64* %80, align 8
  store i64 %82, i64* %81, align 8
  %83 = load i8, i8* %73, align 8, !tbaa !15
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 -1, i32 0, i32 1
  store i8 %83, i8* %84, align 8, !tbaa !15
  br label %91

; <label>:85:                                     ; preds = %64, %66
  %86 = phi %union.StackValue** [ %65, %64 ], [ %69, %66 ]
  %87 = phi %struct.TValue* [ null, %64 ], [ %72, %66 ]
  %88 = load %union.StackValue*, %union.StackValue** %86, align 8, !tbaa !12
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %88, i64 -1
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %89, i64 0, i32 0
  tail call void @luaV_finishget(%struct.lua_State* nonnull %0, %struct.TValue* %60, %struct.TValue* nonnull %90, %union.StackValue* nonnull %89, %struct.TValue* %87) #6
  br label %91

; <label>:91:                                     ; preds = %85, %77
  %92 = phi %union.StackValue** [ %86, %85 ], [ %69, %77 ]
  %93 = load %union.StackValue*, %union.StackValue** %92, align 8, !tbaa !12
  %94 = getelementptr inbounds %union.StackValue, %union.StackValue* %93, i64 -1, i32 0, i32 1
  %95 = load i8, i8* %94, align 8, !tbaa !22
  %96 = and i8 %95, 15
  %97 = zext i8 %96 to i32
  ret i32 %97
}

declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = tail call %struct.TString* @luaS_new(%struct.lua_State* nonnull %0, i8* %2) #6
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !15
  %65 = icmp eq i8 %64, 69
  br i1 %65, label %66, label %85

; <label>:66:                                     ; preds = %60
  %67 = bitcast %struct.TValue* %61 to %struct.Table**
  %68 = load %struct.Table*, %struct.Table** %67, align 8, !tbaa !22
  %69 = tail call %struct.TValue* @luaH_getstr(%struct.Table* %68, %struct.TString* %62) #6
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i64 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !15
  %72 = and i8 %71, 15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %76 = bitcast %union.StackValue** %75 to %struct.TValue**
  %77 = load %struct.TValue*, %struct.TValue** %76, align 8, !tbaa !12
  %78 = bitcast %struct.TValue* %69 to i64*
  %79 = bitcast %struct.TValue* %77 to i64*
  %80 = load i64, i64* %78, align 8
  store i64 %80, i64* %79, align 8
  %81 = load i8, i8* %70, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i64 0, i32 1
  store i8 %81, i8* %82, align 8, !tbaa !15
  %83 = load %union.StackValue*, %union.StackValue** %75, align 8, !tbaa !12
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %83, i64 1
  store %union.StackValue* %84, %union.StackValue** %75, align 8, !tbaa !12
  br label %99

; <label>:85:                                     ; preds = %66, %60
  %86 = phi %struct.TValue* [ %69, %66 ], [ null, %60 ]
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %88 = bitcast %union.StackValue** %87 to %struct.TValue**
  %89 = load %struct.TValue*, %struct.TValue** %88, align 8, !tbaa !12
  %90 = bitcast %struct.TValue* %89 to %struct.TString**
  store %struct.TString* %62, %struct.TString** %90, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.TString, %struct.TString* %62, i64 0, i32 1
  %92 = load i8, i8* %91, align 8, !tbaa !35
  %93 = or i8 %92, 64
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %89, i64 0, i32 1
  store i8 %93, i8* %94, align 8, !tbaa !15
  %95 = load %union.StackValue*, %union.StackValue** %87, align 8, !tbaa !12
  %96 = getelementptr inbounds %union.StackValue, %union.StackValue* %95, i64 1
  store %union.StackValue* %96, %union.StackValue** %87, align 8, !tbaa !12
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %95, i64 0, i32 0
  tail call void @luaV_finishget(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %61, %struct.TValue* %97, %union.StackValue* %95, %struct.TValue* %86) #6
  %98 = load %union.StackValue*, %union.StackValue** %87, align 8, !tbaa !12
  br label %99

; <label>:99:                                     ; preds = %74, %85
  %100 = phi %union.StackValue* [ %98, %85 ], [ %84, %74 ]
  %101 = getelementptr inbounds %union.StackValue, %union.StackValue* %100, i64 -1, i32 0, i32 1
  %102 = load i8, i8* %101, align 8, !tbaa !22
  %103 = and i8 %102, 15
  %104 = zext i8 %103 to i32
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8, !tbaa !21
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = icmp ult %union.StackValue* %12, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8
  br label %61

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0
  br label %61

; <label>:22:                                     ; preds = %3
  %23 = icmp slt i32 %1, -1000999
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %26 = load %union.StackValue*, %union.StackValue** %25, align 8, !tbaa !12
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %27, i32 0
  br label %61

; <label>:29:                                     ; preds = %22
  %30 = icmp eq i32 %1, -1001000
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 7
  br label %61

; <label>:35:                                     ; preds = %29
  %36 = sub nsw i32 -1001000, %1
  %37 = bitcast %struct.CallInfo* %6 to %struct.TValue**
  %38 = load %struct.TValue*, %struct.TValue** %37, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !22
  %41 = icmp eq i8 %40, 38
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 8
  br label %61

; <label>:46:                                     ; preds = %35
  %47 = bitcast %struct.TValue* %38 to %struct.CClosure**
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 3
  %50 = load i8, i8* %49, align 2, !tbaa !23
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %36, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %46
  %54 = add nsw i32 %36, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 6, i64 %55
  br label %61

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %59 = load %struct.global_State*, %struct.global_State** %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i64 0, i32 8
  br label %61

; <label>:61:                                     ; preds = %16, %20, %24, %31, %42, %53, %57
  %62 = phi %struct.TValue* [ %34, %31 ], [ %45, %42 ], [ %28, %24 ], [ %19, %16 ], [ %21, %20 ], [ %56, %53 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !15
  %65 = icmp eq i8 %64, 69
  br i1 %65, label %66, label %95

; <label>:66:                                     ; preds = %61
  %67 = add i64 %2, -1
  %68 = bitcast %struct.TValue* %62 to %struct.Table**
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 5
  %71 = load i32, i32* %70, align 4, !tbaa !22
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %74, label %78

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 6
  %76 = load %struct.TValue*, %struct.TValue** %75, align 8, !tbaa !22
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i64 %67
  br label %80

; <label>:78:                                     ; preds = %66
  %79 = tail call %struct.TValue* @luaH_getint(%struct.Table* %69, i64 %2) #6
  br label %80

; <label>:80:                                     ; preds = %78, %74
  %81 = phi %struct.TValue* [ %77, %74 ], [ %79, %78 ]
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i64 0, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !15
  %84 = and i8 %83, 15
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %88 = bitcast %union.StackValue** %87 to %struct.TValue**
  %89 = load %struct.TValue*, %struct.TValue** %88, align 8, !tbaa !12
  %90 = bitcast %struct.TValue* %81 to i64*
  %91 = bitcast %struct.TValue* %89 to i64*
  %92 = load i64, i64* %90, align 8
  store i64 %92, i64* %91, align 8
  %93 = load i8, i8* %82, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %89, i64 0, i32 1
  store i8 %93, i8* %94, align 8, !tbaa !15
  br label %102

; <label>:95:                                     ; preds = %61, %80
  %96 = phi %struct.TValue* [ %81, %80 ], [ null, %61 ]
  %97 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %97) #6
  %98 = bitcast %struct.TValue* %4 to i64*
  store i64 %2, i64* %98, align 8, !tbaa !22
  %99 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %99, align 8, !tbaa !15
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %101 = load %union.StackValue*, %union.StackValue** %100, align 8, !tbaa !12
  call void @luaV_finishget(%struct.lua_State* nonnull %0, %struct.TValue* %62, %struct.TValue* nonnull %4, %union.StackValue* %101, %struct.TValue* %96) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %97) #6
  br label %102

; <label>:102:                                    ; preds = %95, %86
  %103 = phi %union.StackValue** [ %100, %95 ], [ %87, %86 ]
  %104 = load %union.StackValue*, %union.StackValue** %103, align 8, !tbaa !12
  %105 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 1
  store %union.StackValue* %105, %union.StackValue** %103, align 8, !tbaa !12
  %106 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 0, i32 0, i32 1
  %107 = load i8, i8* %106, align 8, !tbaa !22
  %108 = and i8 %107, 15
  %109 = zext i8 %108 to i32
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define i32 @lua_rawget(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = bitcast %struct.TValue* %60 to %struct.Table**
  %62 = load %struct.Table*, %struct.Table** %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -1, i32 0
  %66 = tail call %struct.TValue* @luaH_get(%struct.Table* %62, %struct.TValue* nonnull %65) #6
  %67 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1
  store %union.StackValue* %68, %union.StackValue** %63, align 8, !tbaa !12
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %66, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !15
  %71 = and i8 %70, 15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

; <label>:73:                                     ; preds = %59
  %74 = bitcast %struct.TValue* %66 to i64*
  %75 = bitcast %union.StackValue* %68 to i64*
  %76 = load i64, i64* %74, align 8
  store i64 %76, i64* %75, align 8
  %77 = load i8, i8* %69, align 8, !tbaa !15
  br label %78

; <label>:78:                                     ; preds = %59, %73
  %79 = phi i8 [ %77, %73 ], [ 0, %59 ]
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1, i32 0, i32 1
  store i8 %79, i8* %80, align 8
  %81 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %82 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 1
  store %union.StackValue* %82, %union.StackValue** %63, align 8, !tbaa !12
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 0, i32 0, i32 1
  %84 = load i8, i8* %83, align 8, !tbaa !22
  %85 = and i8 %84, 15
  %86 = zext i8 %85 to i32
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @lua_rawgeti(%struct.lua_State* nocapture, i32, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = bitcast %struct.TValue* %61 to %struct.Table**
  %63 = load %struct.Table*, %struct.Table** %62, align 8, !tbaa !22
  %64 = tail call %struct.TValue* @luaH_getint(%struct.Table* %63, i64 %2) #6
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i64 0, i32 1
  %66 = load i8, i8* %65, align 8, !tbaa !15
  %67 = and i8 %66, 15
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %70 = bitcast %union.StackValue** %69 to %struct.TValue**
  %71 = load %struct.TValue*, %struct.TValue** %70, align 8, !tbaa !12
  br i1 %68, label %77, label %72

; <label>:72:                                     ; preds = %60
  %73 = bitcast %struct.TValue* %64 to i64*
  %74 = bitcast %struct.TValue* %71 to i64*
  %75 = load i64, i64* %73, align 8
  store i64 %75, i64* %74, align 8
  %76 = load i8, i8* %65, align 8, !tbaa !15
  br label %77

; <label>:77:                                     ; preds = %60, %72
  %78 = phi i8 [ %76, %72 ], [ 0, %60 ]
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i64 0, i32 1
  store i8 %78, i8* %79, align 8
  %80 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 1
  store %union.StackValue* %81, %union.StackValue** %69, align 8, !tbaa !12
  %82 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 0, i32 0, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !22
  %84 = and i8 %83, 15
  %85 = zext i8 %84 to i32
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define i32 @lua_rawgetp(%struct.lua_State* nocapture, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !21
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  %16 = icmp ult %union.StackValue* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 8
  br label %62

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 0, i32 0
  br label %62

; <label>:23:                                     ; preds = %3
  %24 = icmp slt i32 %1, -1000999
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 %28, i32 0
  br label %62

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i32 %1, -1001000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 7
  br label %62

; <label>:36:                                     ; preds = %30
  %37 = sub nsw i32 -1001000, %1
  %38 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = icmp eq i8 %41, 38
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 8
  br label %62

; <label>:47:                                     ; preds = %36
  %48 = bitcast %struct.TValue* %39 to %struct.CClosure**
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 3
  %51 = load i8, i8* %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %37, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = add nsw i32 %37, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 6, i64 %56
  br label %62

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 8
  br label %62

; <label>:62:                                     ; preds = %17, %21, %25, %32, %43, %54, %58
  %63 = phi %struct.TValue* [ %35, %32 ], [ %46, %43 ], [ %29, %25 ], [ %20, %17 ], [ %22, %21 ], [ %57, %54 ], [ %61, %58 ]
  %64 = bitcast %struct.TValue* %63 to %struct.Table**
  %65 = load %struct.Table*, %struct.Table** %64, align 8, !tbaa !22
  %66 = bitcast %struct.TValue* %4 to i8**
  store i8* %2, i8** %66, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %67, align 8, !tbaa !15
  %68 = call %struct.TValue* @luaH_get(%struct.Table* %65, %struct.TValue* nonnull %4) #6
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !15
  %71 = and i8 %70, 15
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %74 = bitcast %union.StackValue** %73 to %struct.TValue**
  %75 = load %struct.TValue*, %struct.TValue** %74, align 8, !tbaa !12
  br i1 %72, label %81, label %76

; <label>:76:                                     ; preds = %62
  %77 = bitcast %struct.TValue* %68 to i64*
  %78 = bitcast %struct.TValue* %75 to i64*
  %79 = load i64, i64* %77, align 8
  store i64 %79, i64* %78, align 8
  %80 = load i8, i8* %69, align 8, !tbaa !15
  br label %81

; <label>:81:                                     ; preds = %62, %76
  %82 = phi i8 [ %80, %76 ], [ 0, %62 ]
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i64 0, i32 1
  store i8 %82, i8* %83, align 8
  %84 = load %union.StackValue*, %union.StackValue** %73, align 8, !tbaa !12
  %85 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 1
  store %union.StackValue* %85, %union.StackValue** %73, align 8, !tbaa !12
  %86 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 0, i32 0, i32 1
  %87 = load i8, i8* %86, align 8, !tbaa !22
  %88 = and i8 %87, 15
  %89 = zext i8 %88 to i32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #6
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
  tail call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %4, i32 %1, i32 %2) #6
  br label %16

; <label>:16:                                     ; preds = %3, %15
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 3
  %20 = load i64, i64* %19, align 8, !tbaa !34
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %23

; <label>:23:                                     ; preds = %22, %16
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define i32 @lua_getmetatable(%struct.lua_State* nocapture, i32) local_unnamed_addr #3 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = trunc i8 %62 to i4
  switch i4 %63, label %72 [
    i4 5, label %64
    i4 7, label %68
  ]

; <label>:64:                                     ; preds = %59
  %65 = bitcast %struct.TValue* %60 to %struct.Table**
  %66 = load %struct.Table*, %struct.Table** %65, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %66, i64 0, i32 9
  br label %78

; <label>:68:                                     ; preds = %59
  %69 = bitcast %struct.TValue* %60 to %struct.Udata**
  %70 = load %struct.Udata*, %struct.Udata** %69, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.Udata, %struct.Udata* %70, i64 0, i32 5
  br label %78

; <label>:72:                                     ; preds = %59
  %73 = and i8 %62, 15
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %75 = load %struct.global_State*, %struct.global_State** %74, align 8, !tbaa !17
  %76 = zext i8 %73 to i64
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %75, i64 0, i32 41, i64 %76
  br label %78

; <label>:78:                                     ; preds = %72, %68, %64
  %79 = phi %struct.Table** [ %77, %72 ], [ %71, %68 ], [ %67, %64 ]
  %80 = load %struct.Table*, %struct.Table** %79, align 8, !tbaa !22
  %81 = icmp eq %struct.Table* %80, null
  br i1 %81, label %90, label %82

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %84 = bitcast %union.StackValue** %83 to %struct.TValue**
  %85 = load %struct.TValue*, %struct.TValue** %84, align 8, !tbaa !12
  %86 = bitcast %struct.TValue* %85 to %struct.Table**
  store %struct.Table* %80, %struct.Table** %86, align 8, !tbaa !22
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i64 0, i32 1
  store i8 69, i8* %87, align 8, !tbaa !15
  %88 = load %union.StackValue*, %union.StackValue** %83, align 8, !tbaa !12
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %88, i64 1
  store %union.StackValue* %89, %union.StackValue** %83, align 8, !tbaa !12
  br label %90

; <label>:90:                                     ; preds = %78, %82
  %91 = phi i32 [ 1, %82 ], [ 0, %78 ]
  ret i32 %91
}

; Function Attrs: norecurse nounwind uwtable
define i32 @lua_getiuservalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = icmp slt i32 %2, 1
  br i1 %62, label %70, label %63

; <label>:63:                                     ; preds = %60
  %64 = bitcast %struct.TValue* %61 to %struct.Udata**
  %65 = load %struct.Udata*, %struct.Udata** %64, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 3
  %67 = load i16, i16* %66, align 2, !tbaa !22
  %68 = zext i16 %67 to i32
  %69 = icmp slt i32 %68, %2
  br i1 %69, label %70, label %76

; <label>:70:                                     ; preds = %63, %60
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %72 = bitcast %union.StackValue** %71 to %struct.TValue**
  %73 = load %struct.TValue*, %struct.TValue** %72, align 8, !tbaa !12
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i64 0, i32 1
  store i8 0, i8* %74, align 8, !tbaa !22
  %75 = load %union.StackValue*, %union.StackValue** %71, align 8, !tbaa !12
  br label %95

; <label>:76:                                     ; preds = %63
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %78 = bitcast %union.StackValue** %77 to %struct.TValue**
  %79 = load %struct.TValue*, %struct.TValue** %78, align 8, !tbaa !12
  %80 = add nsw i32 %2, -1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 7, i64 %81, i32 0
  %83 = bitcast %struct.TValue* %82 to i64*
  %84 = bitcast %struct.TValue* %79 to i64*
  %85 = load i64, i64* %83, align 8
  store i64 %85, i64* %84, align 8
  %86 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 7, i64 %81, i32 0, i32 1
  %87 = load i8, i8* %86, align 8, !tbaa !15
  %88 = getelementptr inbounds %struct.TValue, %struct.TValue* %79, i64 0, i32 1
  store i8 %87, i8* %88, align 8, !tbaa !15
  %89 = load %struct.TValue*, %struct.TValue** %78, align 8, !tbaa !12
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %89, i64 0, i32 1
  %91 = load i8, i8* %90, align 8, !tbaa !22
  %92 = and i8 %91, 15
  %93 = zext i8 %92 to i32
  %94 = bitcast %struct.TValue* %89 to %union.StackValue*
  br label %95

; <label>:95:                                     ; preds = %76, %70
  %96 = phi %union.StackValue** [ %77, %76 ], [ %71, %70 ]
  %97 = phi %union.StackValue* [ %94, %76 ], [ %75, %70 ]
  %98 = phi i32 [ %93, %76 ], [ -1, %70 ]
  %99 = getelementptr inbounds %union.StackValue, %union.StackValue* %97, i64 1
  store %union.StackValue* %99, %union.StackValue** %96, align 8, !tbaa !12
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define void @lua_setglobal(%struct.lua_State*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 7, i32 0, i32 0
  %6 = bitcast %struct.GCObject** %5 to %struct.Table**
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !tbaa !22
  %8 = tail call %struct.TValue* @luaH_getint(%struct.Table* %7, i64 2) #6
  tail call fastcc void @auxsetstr(%struct.lua_State* %0, %struct.TValue* %8, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @auxsetstr(%struct.lua_State*, %struct.TValue*, i8*) unnamed_addr #0 {
  %4 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %2) #6
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !15
  %7 = icmp eq i8 %6, 69
  br i1 %7, label %8, label %49

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %10 = bitcast %struct.TValue* %1 to %struct.Table**
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !22
  %12 = tail call %struct.TValue* @luaH_getstr(%struct.Table* %11, %struct.TString* %4) #6
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
  %34 = load i8, i8* %33, align 1, !tbaa !25
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 -1, i32 0, i32 0, i32 0
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %39, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !25
  %42 = and i8 %41, 24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %37
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %32) #6
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
  tail call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %61, %struct.TValue* nonnull %62, %struct.TValue* %50) #6
  %63 = load %union.StackValue*, %union.StackValue** %51, align 8, !tbaa !12
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i64 -2
  br label %65

; <label>:65:                                     ; preds = %49, %46
  %66 = phi %union.StackValue** [ %51, %49 ], [ %18, %46 ]
  %67 = phi %union.StackValue* [ %64, %49 ], [ %48, %46 ]
  store %union.StackValue* %67, %union.StackValue** %66, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 8, !tbaa !15
  %63 = icmp eq i8 %62, 69
  br i1 %63, label %66, label %64

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %105

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 0, i32 0
  %68 = bitcast %struct.TValue* %60 to %struct.Table**
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %71 = load %union.StackValue*, %union.StackValue** %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %71, i64 -2, i32 0
  %73 = tail call %struct.TValue* @luaH_get(%struct.Table* %69, %struct.TValue* nonnull %72) #6
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i64 0, i32 1
  %75 = load i8, i8* %74, align 8, !tbaa !15
  %76 = and i8 %75, 15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %105, label %78

; <label>:78:                                     ; preds = %66
  %79 = load %union.StackValue*, %union.StackValue** %70, align 8, !tbaa !12
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %79, i64 -1, i32 0
  %81 = bitcast %struct.TValue* %80 to i64*
  %82 = bitcast %struct.TValue* %73 to i64*
  %83 = load i64, i64* %81, align 8
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %79, i64 -1, i32 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !15
  store i8 %85, i8* %74, align 8, !tbaa !15
  %86 = load %union.StackValue*, %union.StackValue** %70, align 8, !tbaa !12
  %87 = getelementptr inbounds %union.StackValue, %union.StackValue* %86, i64 -1, i32 0, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !22
  %89 = and i8 %88, 64
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %111, label %91

; <label>:91:                                     ; preds = %78
  %92 = load %struct.GCObject*, %struct.GCObject** %67, align 8, !tbaa !22
  %93 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %92, i64 0, i32 2
  %94 = load i8, i8* %93, align 1, !tbaa !25
  %95 = and i8 %94, 32
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %111, label %97

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds %union.StackValue, %union.StackValue* %86, i64 -1, i32 0, i32 0, i32 0
  %99 = load %struct.GCObject*, %struct.GCObject** %98, align 8, !tbaa !22
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %99, i64 0, i32 2
  %101 = load i8, i8* %100, align 1, !tbaa !25
  %102 = and i8 %101, 24
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %111, label %104

; <label>:104:                                    ; preds = %97
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %92) #6
  br label %111

; <label>:105:                                    ; preds = %64, %66
  %106 = phi %union.StackValue** [ %65, %64 ], [ %70, %66 ]
  %107 = phi %struct.TValue* [ null, %64 ], [ %73, %66 ]
  %108 = load %union.StackValue*, %union.StackValue** %106, align 8, !tbaa !12
  %109 = getelementptr inbounds %union.StackValue, %union.StackValue* %108, i64 -2, i32 0
  %110 = getelementptr inbounds %union.StackValue, %union.StackValue* %108, i64 -1, i32 0
  tail call void @luaV_finishset(%struct.lua_State* nonnull %0, %struct.TValue* %60, %struct.TValue* nonnull %109, %struct.TValue* nonnull %110, %struct.TValue* %107) #6
  br label %111

; <label>:111:                                    ; preds = %97, %91, %78, %104, %105
  %112 = phi %union.StackValue** [ %70, %97 ], [ %70, %91 ], [ %70, %78 ], [ %70, %104 ], [ %106, %105 ]
  %113 = load %union.StackValue*, %union.StackValue** %112, align 8, !tbaa !12
  %114 = getelementptr inbounds %union.StackValue, %union.StackValue* %113, i64 -2
  store %union.StackValue* %114, %union.StackValue** %112, align 8, !tbaa !12
  ret void
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

declare hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  tail call fastcc void @auxsetstr(%struct.lua_State* nonnull %0, %struct.TValue* %61, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_seti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8, !tbaa !21
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !12
  %15 = icmp ult %union.StackValue* %12, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 8
  br label %61

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0
  br label %61

; <label>:22:                                     ; preds = %3
  %23 = icmp slt i32 %1, -1000999
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %26 = load %union.StackValue*, %union.StackValue** %25, align 8, !tbaa !12
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %27, i32 0
  br label %61

; <label>:29:                                     ; preds = %22
  %30 = icmp eq i32 %1, -1001000
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 7
  br label %61

; <label>:35:                                     ; preds = %29
  %36 = sub nsw i32 -1001000, %1
  %37 = bitcast %struct.CallInfo* %6 to %struct.TValue**
  %38 = load %struct.TValue*, %struct.TValue** %37, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !22
  %41 = icmp eq i8 %40, 38
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 8
  br label %61

; <label>:46:                                     ; preds = %35
  %47 = bitcast %struct.TValue* %38 to %struct.CClosure**
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 3
  %50 = load i8, i8* %49, align 2, !tbaa !23
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %36, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %46
  %54 = add nsw i32 %36, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 6, i64 %55
  br label %61

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %59 = load %struct.global_State*, %struct.global_State** %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i64 0, i32 8
  br label %61

; <label>:61:                                     ; preds = %16, %20, %24, %31, %42, %53, %57
  %62 = phi %struct.TValue* [ %34, %31 ], [ %45, %42 ], [ %28, %24 ], [ %19, %16 ], [ %21, %20 ], [ %56, %53 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !15
  %65 = icmp eq i8 %64, 69
  br i1 %65, label %66, label %115

; <label>:66:                                     ; preds = %61
  %67 = add i64 %2, -1
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 0, i32 0
  %69 = bitcast %struct.TValue* %62 to %struct.Table**
  %70 = load %struct.Table*, %struct.Table** %69, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.Table, %struct.Table* %70, i64 0, i32 5
  %72 = load i32, i32* %71, align 4, !tbaa !22
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %67, %73
  br i1 %74, label %75, label %79

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %70, i64 0, i32 6
  %77 = load %struct.TValue*, %struct.TValue** %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i64 %67
  br label %81

; <label>:79:                                     ; preds = %66
  %80 = tail call %struct.TValue* @luaH_getint(%struct.Table* %70, i64 %2) #6
  br label %81

; <label>:81:                                     ; preds = %79, %75
  %82 = phi %struct.TValue* [ %78, %75 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i64 0, i32 1
  %84 = load i8, i8* %83, align 8, !tbaa !15
  %85 = and i8 %84, 15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %115, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %89 = load %union.StackValue*, %union.StackValue** %88, align 8, !tbaa !12
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %89, i64 -1, i32 0
  %91 = bitcast %struct.TValue* %90 to i64*
  %92 = bitcast %struct.TValue* %82 to i64*
  %93 = load i64, i64* %91, align 8
  store i64 %93, i64* %92, align 8
  %94 = getelementptr inbounds %union.StackValue, %union.StackValue* %89, i64 -1, i32 0, i32 1
  %95 = load i8, i8* %94, align 8, !tbaa !15
  store i8 %95, i8* %83, align 8, !tbaa !15
  %96 = load %union.StackValue*, %union.StackValue** %88, align 8, !tbaa !12
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %96, i64 -1, i32 0, i32 1
  %98 = load i8, i8* %97, align 8, !tbaa !22
  %99 = and i8 %98, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %123, label %101

; <label>:101:                                    ; preds = %87
  %102 = load %struct.GCObject*, %struct.GCObject** %68, align 8, !tbaa !22
  %103 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %102, i64 0, i32 2
  %104 = load i8, i8* %103, align 1, !tbaa !25
  %105 = and i8 %104, 32
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %123, label %107

; <label>:107:                                    ; preds = %101
  %108 = getelementptr inbounds %union.StackValue, %union.StackValue* %96, i64 -1, i32 0, i32 0, i32 0
  %109 = load %struct.GCObject*, %struct.GCObject** %108, align 8, !tbaa !22
  %110 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %109, i64 0, i32 2
  %111 = load i8, i8* %110, align 1, !tbaa !25
  %112 = and i8 %111, 24
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %123, label %114

; <label>:114:                                    ; preds = %107
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %102) #6
  br label %123

; <label>:115:                                    ; preds = %61, %81
  %116 = phi %struct.TValue* [ %82, %81 ], [ null, %61 ]
  %117 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %117) #6
  %118 = bitcast %struct.TValue* %4 to i64*
  store i64 %2, i64* %118, align 8, !tbaa !22
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %119, align 8, !tbaa !15
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %121 = load %union.StackValue*, %union.StackValue** %120, align 8, !tbaa !12
  %122 = getelementptr inbounds %union.StackValue, %union.StackValue* %121, i64 -1, i32 0
  call void @luaV_finishset(%struct.lua_State* nonnull %0, %struct.TValue* %62, %struct.TValue* nonnull %4, %struct.TValue* nonnull %122, %struct.TValue* %116) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %117) #6
  br label %123

; <label>:123:                                    ; preds = %107, %101, %87, %114, %115
  %124 = phi %union.StackValue** [ %88, %107 ], [ %88, %101 ], [ %88, %87 ], [ %88, %114 ], [ %120, %115 ]
  %125 = load %union.StackValue*, %union.StackValue** %124, align 8, !tbaa !12
  %126 = getelementptr inbounds %union.StackValue, %union.StackValue* %125, i64 -1
  store %union.StackValue* %126, %union.StackValue** %124, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = bitcast %struct.TValue* %60 to %struct.Table**
  %62 = load %struct.Table*, %struct.Table** %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -2, i32 0
  %66 = tail call %struct.TValue* @luaH_set(%struct.lua_State* nonnull %0, %struct.Table* %62, %struct.TValue* nonnull %65) #6
  %67 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1, i32 0
  %69 = bitcast %struct.TValue* %68 to i64*
  %70 = bitcast %struct.TValue* %66 to i64*
  %71 = load i64, i64* %69, align 8
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1, i32 0, i32 1
  %73 = load i8, i8* %72, align 8, !tbaa !15
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %66, i64 0, i32 1
  store i8 %73, i8* %74, align 8, !tbaa !15
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %62, i64 0, i32 3
  store i8 0, i8* %75, align 2, !tbaa !39
  %76 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 -1, i32 0, i32 1
  %78 = load i8, i8* %77, align 8, !tbaa !22
  %79 = and i8 %78, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %96, label %81

; <label>:81:                                     ; preds = %59
  %82 = bitcast %struct.Table* %62 to %struct.GCObject*
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %62, i64 0, i32 2
  %84 = load i8, i8* %83, align 1, !tbaa !22
  %85 = and i8 %84, 32
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %96, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 -1, i32 0, i32 0, i32 0
  %89 = load %struct.GCObject*, %struct.GCObject** %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %89, i64 0, i32 2
  %91 = load i8, i8* %90, align 1, !tbaa !25
  %92 = and i8 %91, 24
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

; <label>:94:                                     ; preds = %87
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %82) #6
  %95 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  br label %96

; <label>:96:                                     ; preds = %87, %81, %59, %94
  %97 = phi %union.StackValue* [ %76, %87 ], [ %76, %81 ], [ %76, %59 ], [ %95, %94 ]
  %98 = getelementptr inbounds %union.StackValue, %union.StackValue* %97, i64 -2
  store %union.StackValue* %98, %union.StackValue** %63, align 8, !tbaa !12
  ret void
}

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = bitcast %struct.TValue* %61 to %struct.Table**
  %63 = load %struct.Table*, %struct.Table** %62, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8, !tbaa !12
  %66 = getelementptr inbounds %union.StackValue, %union.StackValue* %65, i64 -1, i32 0
  tail call void @luaH_setint(%struct.lua_State* nonnull %0, %struct.Table* %63, i64 %2, %struct.TValue* nonnull %66) #6
  %67 = load %union.StackValue*, %union.StackValue** %64, align 8, !tbaa !12
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1, i32 0, i32 1
  %69 = load i8, i8* %68, align 8, !tbaa !22
  %70 = and i8 %69, 64
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %87, label %72

; <label>:72:                                     ; preds = %60
  %73 = bitcast %struct.Table* %63 to %struct.GCObject*
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %63, i64 0, i32 2
  %75 = load i8, i8* %74, align 1, !tbaa !22
  %76 = and i8 %75, 32
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %87, label %78

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1, i32 0, i32 0, i32 0
  %80 = load %struct.GCObject*, %struct.GCObject** %79, align 8, !tbaa !22
  %81 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %80, i64 0, i32 2
  %82 = load i8, i8* %81, align 1, !tbaa !25
  %83 = and i8 %82, 24
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

; <label>:85:                                     ; preds = %78
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %73) #6
  %86 = load %union.StackValue*, %union.StackValue** %64, align 8, !tbaa !12
  br label %87

; <label>:87:                                     ; preds = %78, %72, %60, %85
  %88 = phi %union.StackValue* [ %67, %78 ], [ %67, %72 ], [ %67, %60 ], [ %86, %85 ]
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %88, i64 -1
  store %union.StackValue* %89, %union.StackValue** %64, align 8, !tbaa !12
  ret void
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !21
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  %16 = icmp ult %union.StackValue* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 8
  br label %62

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 0, i32 0
  br label %62

; <label>:23:                                     ; preds = %3
  %24 = icmp slt i32 %1, -1000999
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 %28, i32 0
  br label %62

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i32 %1, -1001000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 7
  br label %62

; <label>:36:                                     ; preds = %30
  %37 = sub nsw i32 -1001000, %1
  %38 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = icmp eq i8 %41, 38
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 8
  br label %62

; <label>:47:                                     ; preds = %36
  %48 = bitcast %struct.TValue* %39 to %struct.CClosure**
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 3
  %51 = load i8, i8* %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %37, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = add nsw i32 %37, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 6, i64 %56
  br label %62

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 8
  br label %62

; <label>:62:                                     ; preds = %17, %21, %25, %32, %43, %54, %58
  %63 = phi %struct.TValue* [ %35, %32 ], [ %46, %43 ], [ %29, %25 ], [ %20, %17 ], [ %22, %21 ], [ %57, %54 ], [ %61, %58 ]
  %64 = bitcast %struct.TValue* %63 to %struct.Table**
  %65 = load %struct.Table*, %struct.Table** %64, align 8, !tbaa !22
  %66 = bitcast %struct.TValue* %4 to i8**
  store i8* %2, i8** %66, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %67, align 8, !tbaa !15
  %68 = call %struct.TValue* @luaH_set(%struct.lua_State* nonnull %0, %struct.Table* %65, %struct.TValue* nonnull %4) #6
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %70 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 -1, i32 0
  %72 = bitcast %struct.TValue* %71 to i64*
  %73 = bitcast %struct.TValue* %68 to i64*
  %74 = load i64, i64* %72, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 -1, i32 0, i32 1
  %76 = load i8, i8* %75, align 8, !tbaa !15
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i64 0, i32 1
  store i8 %76, i8* %77, align 8, !tbaa !15
  %78 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 -1, i32 0, i32 1
  %80 = load i8, i8* %79, align 8, !tbaa !22
  %81 = and i8 %80, 64
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %98, label %83

; <label>:83:                                     ; preds = %62
  %84 = bitcast %struct.Table* %65 to %struct.GCObject*
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %65, i64 0, i32 2
  %86 = load i8, i8* %85, align 1, !tbaa !22
  %87 = and i8 %86, 32
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %98, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 -1, i32 0, i32 0, i32 0
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8, !tbaa !22
  %92 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %91, i64 0, i32 2
  %93 = load i8, i8* %92, align 1, !tbaa !25
  %94 = and i8 %93, 24
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

; <label>:96:                                     ; preds = %89
  call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %84) #6
  %97 = load %union.StackValue*, %union.StackValue** %69, align 8, !tbaa !12
  br label %98

; <label>:98:                                     ; preds = %89, %83, %62, %96
  %99 = phi %union.StackValue* [ %78, %89 ], [ %78, %83 ], [ %78, %62 ], [ %97, %96 ]
  %100 = getelementptr inbounds %union.StackValue, %union.StackValue* %99, i64 -1
  store %union.StackValue* %100, %union.StackValue** %69, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8, !tbaa !12
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 -1, i32 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !22
  %65 = and i8 %64, 15
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

; <label>:67:                                     ; preds = %59
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 -1, i32 0, i32 0, i32 0
  %69 = bitcast %struct.GCObject** %68 to %struct.Table**
  %70 = load %struct.Table*, %struct.Table** %69, align 8, !tbaa !22
  %71 = bitcast %struct.Table* %70 to %union.GCUnion*
  br label %72

; <label>:72:                                     ; preds = %59, %67
  %73 = phi %union.GCUnion* [ %71, %67 ], [ null, %59 ]
  %74 = phi %struct.Table* [ %70, %67 ], [ null, %59 ]
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 1
  %76 = load i8, i8* %75, align 8, !tbaa !15
  %77 = trunc i8 %76 to i4
  switch i4 %77, label %123 [
    i4 5, label %78
    i4 7, label %101
  ]

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 0, i32 0
  %80 = bitcast %struct.TValue* %60 to %struct.Table**
  %81 = load %struct.Table*, %struct.Table** %80, align 8, !tbaa !22
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %81, i64 0, i32 9
  %83 = bitcast %struct.Table** %82 to %union.GCUnion**
  store %union.GCUnion* %73, %union.GCUnion** %83, align 8, !tbaa !22
  %84 = icmp eq %struct.Table* %74, null
  br i1 %84, label %129, label %85

; <label>:85:                                     ; preds = %78
  %86 = load %struct.GCObject*, %struct.GCObject** %79, align 8, !tbaa !22
  %87 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %86, i64 0, i32 2
  %88 = load i8, i8* %87, align 1, !tbaa !25
  %89 = and i8 %88, 32
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %99, label %91

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %struct.Table, %struct.Table* %74, i64 0, i32 2
  %93 = load i8, i8* %92, align 1, !tbaa !41
  %94 = and i8 %93, 24
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

; <label>:96:                                     ; preds = %91
  %97 = bitcast %struct.Table* %74 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %86, %struct.GCObject* %97) #6
  %98 = load %struct.GCObject*, %struct.GCObject** %79, align 8, !tbaa !22
  br label %99

; <label>:99:                                     ; preds = %91, %85, %96
  %100 = phi %struct.GCObject* [ %86, %91 ], [ %86, %85 ], [ %98, %96 ]
  tail call void @luaC_checkfinalizer(%struct.lua_State* nonnull %0, %struct.GCObject* %100, %struct.Table* nonnull %74) #6
  br label %129

; <label>:101:                                    ; preds = %72
  %102 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 0, i32 0, i32 0
  %103 = bitcast %struct.TValue* %60 to %struct.Udata**
  %104 = load %struct.Udata*, %struct.Udata** %103, align 8, !tbaa !22
  %105 = getelementptr inbounds %struct.Udata, %struct.Udata* %104, i64 0, i32 5
  store %struct.Table* %74, %struct.Table** %105, align 8, !tbaa !22
  %106 = icmp eq %struct.Table* %74, null
  br i1 %106, label %129, label %107

; <label>:107:                                    ; preds = %101
  %108 = load %struct.GCObject*, %struct.GCObject** %102, align 8, !tbaa !22
  %109 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %108, i64 0, i32 2
  %110 = load i8, i8* %109, align 1, !tbaa !22
  %111 = and i8 %110, 32
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %121, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.Table, %struct.Table* %74, i64 0, i32 2
  %115 = load i8, i8* %114, align 1, !tbaa !41
  %116 = and i8 %115, 24
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

; <label>:118:                                    ; preds = %113
  %119 = bitcast %union.GCUnion* %73 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %108, %struct.GCObject* %119) #6
  %120 = load %struct.GCObject*, %struct.GCObject** %102, align 8, !tbaa !22
  br label %121

; <label>:121:                                    ; preds = %113, %107, %118
  %122 = phi %struct.GCObject* [ %108, %113 ], [ %108, %107 ], [ %120, %118 ]
  tail call void @luaC_checkfinalizer(%struct.lua_State* nonnull %0, %struct.GCObject* %122, %struct.Table* nonnull %74) #6
  br label %129

; <label>:123:                                    ; preds = %72
  %124 = and i8 %76, 15
  %125 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %126 = load %struct.global_State*, %struct.global_State** %125, align 8, !tbaa !17
  %127 = zext i8 %124 to i64
  %128 = getelementptr inbounds %struct.global_State, %struct.global_State* %126, i64 0, i32 41, i64 %127
  store %struct.Table* %74, %struct.Table** %128, align 8, !tbaa !27
  br label %129

; <label>:129:                                    ; preds = %78, %101, %121, %99, %123
  %130 = load %union.StackValue*, %union.StackValue** %61, align 8, !tbaa !12
  %131 = getelementptr inbounds %union.StackValue, %union.StackValue* %130, i64 -1
  store %union.StackValue* %131, %union.StackValue** %61, align 8, !tbaa !12
  ret i32 1
}

declare hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lua_setiuservalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = add i32 %2, -1
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 0, i32 0
  %64 = bitcast %struct.TValue* %61 to %struct.Udata**
  %65 = load %struct.Udata*, %struct.Udata** %64, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 3
  %67 = load i16, i16* %66, align 2, !tbaa !22
  %68 = zext i16 %67 to i32
  %69 = icmp ult i32 %62, %68
  br i1 %69, label %72, label %70

; <label>:70:                                     ; preds = %60
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %103

; <label>:72:                                     ; preds = %60
  %73 = sext i32 %62 to i64
  %74 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 7, i64 %73, i32 0
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8, !tbaa !12
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 -1, i32 0
  %78 = bitcast %struct.TValue* %77 to i64*
  %79 = bitcast %struct.TValue* %74 to i64*
  %80 = load i64, i64* %78, align 8
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 -1, i32 0, i32 1
  %82 = load i8, i8* %81, align 8, !tbaa !15
  %83 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i64 0, i32 7, i64 %73, i32 0, i32 1
  store i8 %82, i8* %83, align 8, !tbaa !15
  %84 = load %union.StackValue*, %union.StackValue** %75, align 8, !tbaa !12
  %85 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 -1, i32 0, i32 1
  %86 = load i8, i8* %85, align 8, !tbaa !22
  %87 = and i8 %86, 64
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %103, label %89

; <label>:89:                                     ; preds = %72
  %90 = load %struct.GCObject*, %struct.GCObject** %63, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %90, i64 0, i32 2
  %92 = load i8, i8* %91, align 1, !tbaa !25
  %93 = and i8 %92, 32
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %103, label %95

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 -1, i32 0, i32 0, i32 0
  %97 = load %struct.GCObject*, %struct.GCObject** %96, align 8, !tbaa !22
  %98 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %97, i64 0, i32 2
  %99 = load i8, i8* %98, align 1, !tbaa !25
  %100 = and i8 %99, 24
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %95
  tail call void @luaC_barrierback_(%struct.lua_State* nonnull %0, %struct.GCObject* %90) #6
  br label %103

; <label>:103:                                    ; preds = %70, %102, %72, %89, %95
  %104 = phi %union.StackValue** [ %71, %70 ], [ %75, %102 ], [ %75, %72 ], [ %75, %89 ], [ %75, %95 ]
  %105 = phi i32 [ 0, %70 ], [ 1, %102 ], [ 1, %72 ], [ 1, %89 ], [ 1, %95 ]
  %106 = load %union.StackValue*, %union.StackValue** %104, align 8, !tbaa !12
  %107 = getelementptr inbounds %union.StackValue, %union.StackValue* %106, i64 -1
  store %union.StackValue* %107, %union.StackValue** %104, align 8, !tbaa !12
  ret i32 %105
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %11, i32 %2) #6
  br label %24

; <label>:23:                                     ; preds = %5, %13
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* %11, i32 %2) #6
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

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %49 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @f_call, i8* nonnull %8, i64 %48, i64 %29) #6
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
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %35, i32 %2) #6
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

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @f_call(%struct.lua_State*, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to %union.StackValue**
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, i8* %1, i64 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !45
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* %4, i32 %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) local_unnamed_addr #0 {
  %6 = alloca %struct.Zio, align 8
  %7 = bitcast %struct.Zio* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  %8 = icmp eq i8* %3, null
  %9 = select i1 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %3
  call void @luaZ_init(%struct.lua_State* %0, %struct.Zio* nonnull %6, i8* (%struct.lua_State*, i8*, i64*)* %1, i8* %2) #6
  %10 = call i32 @luaD_protectedparser(%struct.lua_State* %0, %struct.Zio* nonnull %6, i8* %9, i8* %4) #6
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
  %27 = call %struct.TValue* @luaH_getint(%struct.Table* %26, i64 2) #6
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
  %51 = load i8, i8* %50, align 1, !tbaa !25
  %52 = and i8 %51, 24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %47
  %55 = bitcast %struct.UpVal* %42 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %55, %struct.GCObject* %49) #6
  br label %56

; <label>:56:                                     ; preds = %12, %47, %41, %21, %54, %5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  ret i32 %10
}

declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #2

declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %16 = tail call i32 @luaU_dump(%struct.lua_State* nonnull %0, %struct.Proto* %15, i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i8* %2, i32 %3) #6
  br label %17

; <label>:17:                                     ; preds = %4, %10
  %18 = phi i32 [ %16, %10 ], [ 1, %4 ]
  ret i32 %18
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_status(%struct.lua_State* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 2, !tbaa !54
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
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
  call void @luaE_setdebt(%struct.global_State* %6, i64 0) #6
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 15
  store i8 1, i8* %10, align 1, !tbaa !55
  br label %256

; <label>:11:                                     ; preds = %2
  call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 0) #6
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
  call void @luaE_setdebt(%struct.global_State* nonnull %6, i64 0) #6
  call void @luaC_step(%struct.lua_State* nonnull %0) #6
  store i8 %47, i8* %46, align 1, !tbaa !55
  br label %63

; <label>:50:                                     ; preds = %42
  %51 = sext i32 %45 to i64
  %52 = shl nsw i64 %51, 10
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %54 = load i64, i64* %53, align 8, !tbaa !34
  %55 = add nsw i64 %54, %52
  call void @luaE_setdebt(%struct.global_State* nonnull %6, i64 %55) #6
  %56 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 3
  %58 = load i64, i64* %57, align 8, !tbaa !34
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %50
  call void @luaC_step(%struct.lua_State* nonnull %0) #6
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
  call void @luaC_changemode(%struct.lua_State* nonnull %0, i32 1) #6
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
  call void @luaC_changemode(%struct.lua_State* nonnull %0, i32 0) #6
  br label %256

; <label>:256:                                    ; preds = %63, %2, %61, %255, %175, %116, %106, %82, %20, %12, %11, %9, %7
  %257 = phi i32 [ %238, %255 ], [ %164, %175 ], [ %119, %116 ], [ %113, %106 ], [ %89, %82 ], [ %27, %20 ], [ %19, %12 ], [ 0, %11 ], [ 0, %9 ], [ 0, %7 ], [ 0, %61 ], [ %67, %63 ], [ -1, %2 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6
  ret i32 %257
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #2

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #2

declare hidden void @luaC_changemode(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define i32 @lua_error(%struct.lua_State*) local_unnamed_addr #7 {
  tail call void @luaG_errormsg(%struct.lua_State* %0) #9
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = bitcast %struct.TValue* %60 to %struct.Table**
  %62 = load %struct.Table*, %struct.Table** %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -1
  %66 = tail call i32 @luaH_next(%struct.lua_State* nonnull %0, %struct.Table* %62, %union.StackValue* nonnull %65) #6
  %67 = icmp eq i32 %66, 0
  %68 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !12
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 -1
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 1
  %71 = select i1 %67, %union.StackValue* %69, %union.StackValue* %70
  store %union.StackValue* %71, %union.StackValue** %63, align 8, !tbaa !12
  ret i32 %66
}

declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  tail call void @luaF_newtbcupval(%struct.lua_State* nonnull %0, %union.StackValue* %21) #6
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

declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call void @luaV_concat(%struct.lua_State* %0, i32 %1) #6
  br label %19

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %19

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %9 = bitcast %union.StackValue** %8 to %struct.TValue**
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !12
  %11 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 0) #6
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
  br label %26

; <label>:26:                                     ; preds = %25, %19
  ret void
}

declare hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lua_len(%struct.lua_State*, i32) local_unnamed_addr #0 {
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
  %48 = load i8, i8* %47, align 2, !tbaa !23
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

; <label>:59:                                     ; preds = %14, %18, %22, %29, %40, %51, %55
  %60 = phi %struct.TValue* [ %32, %29 ], [ %43, %40 ], [ %26, %22 ], [ %17, %14 ], [ %19, %18 ], [ %54, %51 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8, !tbaa !12
  tail call void @luaV_objlen(%struct.lua_State* nonnull %0, %union.StackValue* %62, %struct.TValue* %60) #6
  %63 = load %union.StackValue*, %union.StackValue** %61, align 8, !tbaa !12
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i64 1
  store %union.StackValue* %64, %union.StackValue** %61, align 8, !tbaa !12
  ret void
}

declare hidden void @luaV_objlen(%struct.lua_State*, %union.StackValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: norecurse nounwind uwtable
define void @lua_setallocf(%struct.lua_State* nocapture readonly, i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1
  store i8* %2, i8** %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %7, align 8, !tbaa !67
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @lua_setwarnf(%struct.lua_State* nocapture readonly, void (i8*, i8*, i32)*, i8*) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 44
  store i8* %2, i8** %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 43
  store void (i8*, i8*, i32)* %1, void (i8*, i8*, i32)** %7, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #0 {
  tail call void @luaE_warning(%struct.lua_State* %0, i8* %1, i32 %2) #6
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define nonnull i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #0 {
  %4 = tail call %struct.Udata* @luaS_newudata(%struct.lua_State* %0, i64 %1, i32 %2) #6
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6
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

declare hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i8* @lua_getupvalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %63 = load i8, i8* %62, align 8, !tbaa !15
  %64 = trunc i8 %63 to i6
  switch i6 %64, label %113 [
    i6 -10, label %65
    i6 22, label %76
  ]

; <label>:65:                                     ; preds = %60
  %66 = bitcast %struct.TValue* %61 to %struct.CClosure**
  %67 = load %struct.CClosure*, %struct.CClosure** %66, align 8, !tbaa !22
  %68 = add i32 %2, -1
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %67, i64 0, i32 3
  %70 = load i8, i8* %69, align 2, !tbaa !23
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %113

; <label>:73:                                     ; preds = %65
  %74 = sext i32 %68 to i64
  %75 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %67, i64 0, i32 6, i64 %74
  br label %99

; <label>:76:                                     ; preds = %60
  %77 = bitcast %struct.TValue* %61 to %struct.LClosure**
  %78 = load %struct.LClosure*, %struct.LClosure** %77, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %78, i64 0, i32 5
  %80 = load %struct.Proto*, %struct.Proto** %79, align 8, !tbaa !72
  %81 = add i32 %2, -1
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i64 0, i32 6
  %83 = load i32, i32* %82, align 8, !tbaa !73
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %113

; <label>:85:                                     ; preds = %76
  %86 = sext i32 %81 to i64
  %87 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %78, i64 0, i32 6, i64 %86
  %88 = load %struct.UpVal*, %struct.UpVal** %87, align 8, !tbaa !27
  %89 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %88, i64 0, i32 3
  %90 = load %struct.TValue*, %struct.TValue** %89, align 8, !tbaa !51
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i64 0, i32 18
  %92 = load %struct.Upvaldesc*, %struct.Upvaldesc** %91, align 8, !tbaa !75
  %93 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %92, i64 %86, i32 0
  %94 = load %struct.TString*, %struct.TString** %93, align 8, !tbaa !76
  %95 = icmp eq %struct.TString* %94, null
  %96 = getelementptr inbounds %struct.TString, %struct.TString* %94, i64 1
  %97 = bitcast %struct.TString* %96 to i8*
  %98 = select i1 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %97
  br label %99

; <label>:99:                                     ; preds = %85, %73
  %100 = phi %struct.TValue* [ %75, %73 ], [ %90, %85 ]
  %101 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %73 ], [ %98, %85 ]
  %102 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %103 = bitcast %union.StackValue** %102 to %struct.TValue**
  %104 = load %struct.TValue*, %struct.TValue** %103, align 8, !tbaa !12
  %105 = bitcast %struct.TValue* %100 to i64*
  %106 = bitcast %struct.TValue* %104 to i64*
  %107 = load i64, i64* %105, align 8
  store i64 %107, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %100, i64 0, i32 1
  %109 = load i8, i8* %108, align 8, !tbaa !15
  %110 = getelementptr inbounds %struct.TValue, %struct.TValue* %104, i64 0, i32 1
  store i8 %109, i8* %110, align 8, !tbaa !15
  %111 = load %union.StackValue*, %union.StackValue** %102, align 8, !tbaa !12
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %111, i64 1
  store %union.StackValue* %112, %union.StackValue** %102, align 8, !tbaa !12
  br label %113

; <label>:113:                                    ; preds = %60, %76, %65, %99
  %114 = phi i8* [ %101, %99 ], [ null, %65 ], [ null, %76 ], [ null, %60 ]
  ret i8* %114
}

; Function Attrs: nounwind uwtable
define i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %63 = load i8, i8* %62, align 8, !tbaa !15
  %64 = trunc i8 %63 to i6
  switch i6 %64, label %129 [
    i6 -10, label %65
    i6 22, label %77
  ]

; <label>:65:                                     ; preds = %60
  %66 = bitcast %struct.TValue* %61 to %struct.CClosure**
  %67 = load %struct.CClosure*, %struct.CClosure** %66, align 8, !tbaa !22
  %68 = add i32 %2, -1
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %67, i64 0, i32 3
  %70 = load i8, i8* %69, align 2, !tbaa !23
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %129

; <label>:73:                                     ; preds = %65
  %74 = sext i32 %68 to i64
  %75 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %67, i64 0, i32 6, i64 %74
  %76 = ptrtoint %struct.CClosure* %67 to i64
  br label %101

; <label>:77:                                     ; preds = %60
  %78 = bitcast %struct.TValue* %61 to %struct.LClosure**
  %79 = load %struct.LClosure*, %struct.LClosure** %78, align 8, !tbaa !22
  %80 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %79, i64 0, i32 5
  %81 = load %struct.Proto*, %struct.Proto** %80, align 8, !tbaa !72
  %82 = add i32 %2, -1
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %81, i64 0, i32 6
  %84 = load i32, i32* %83, align 8, !tbaa !73
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %129

; <label>:86:                                     ; preds = %77
  %87 = sext i32 %82 to i64
  %88 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %79, i64 0, i32 6, i64 %87
  %89 = load %struct.UpVal*, %struct.UpVal** %88, align 8, !tbaa !27
  %90 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %89, i64 0, i32 3
  %91 = load %struct.TValue*, %struct.TValue** %90, align 8, !tbaa !51
  %92 = ptrtoint %struct.UpVal* %89 to i64
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %81, i64 0, i32 18
  %94 = load %struct.Upvaldesc*, %struct.Upvaldesc** %93, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %94, i64 %87, i32 0
  %96 = load %struct.TString*, %struct.TString** %95, align 8, !tbaa !76
  %97 = icmp eq %struct.TString* %96, null
  %98 = getelementptr inbounds %struct.TString, %struct.TString* %96, i64 1
  %99 = bitcast %struct.TString* %98 to i8*
  %100 = select i1 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %99
  br label %101

; <label>:101:                                    ; preds = %86, %73
  %102 = phi %struct.TValue* [ %75, %73 ], [ %91, %86 ]
  %103 = phi i64 [ %76, %73 ], [ %92, %86 ]
  %104 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %73 ], [ %100, %86 ]
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %106 = load %union.StackValue*, %union.StackValue** %105, align 8, !tbaa !12
  %107 = getelementptr inbounds %union.StackValue, %union.StackValue* %106, i64 -1
  store %union.StackValue* %107, %union.StackValue** %105, align 8, !tbaa !12
  %108 = bitcast %union.StackValue* %107 to i64*
  %109 = bitcast %struct.TValue* %102 to i64*
  %110 = load i64, i64* %108, align 8
  store i64 %110, i64* %109, align 8
  %111 = getelementptr inbounds %union.StackValue, %union.StackValue* %106, i64 -1, i32 0, i32 1
  %112 = load i8, i8* %111, align 8, !tbaa !15
  %113 = getelementptr inbounds %struct.TValue, %struct.TValue* %102, i64 0, i32 1
  store i8 %112, i8* %113, align 8, !tbaa !15
  %114 = and i8 %112, 64
  %115 = icmp eq i8 %114, 0
  %116 = inttoptr i64 %110 to %struct.GCObject*
  br i1 %115, label %129, label %117

; <label>:117:                                    ; preds = %101
  %118 = inttoptr i64 %103 to %struct.GCObject*
  %119 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %118, i64 0, i32 2
  %120 = load i8, i8* %119, align 1, !tbaa !25
  %121 = and i8 %120, 32
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %129, label %123

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %116, i64 0, i32 2
  %125 = load i8, i8* %124, align 1, !tbaa !25
  %126 = and i8 %125, 24
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128

; <label>:128:                                    ; preds = %123
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %118, %struct.GCObject* nonnull %116) #6
  br label %129

; <label>:129:                                    ; preds = %60, %77, %65, %123, %117, %101, %128
  %130 = phi i8* [ %104, %123 ], [ %104, %117 ], [ %104, %101 ], [ %104, %128 ], [ null, %65 ], [ null, %77 ], [ null, %60 ]
  ret i8* %130
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @lua_upvalueid(%struct.lua_State* nocapture readonly, i32, i32) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !12
  %14 = icmp ult %union.StackValue* %11, %13
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 8
  br label %60

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 0, i32 0
  br label %60

; <label>:21:                                     ; preds = %3
  %22 = icmp slt i32 %1, -1000999
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !12
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %25, i64 %26, i32 0
  br label %60

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %1, -1001000
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 7
  br label %60

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i32 -1001000, %1
  %36 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 38
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 8
  br label %60

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %37 to %struct.CClosure**
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 3
  %49 = load i8, i8* %48, align 2, !tbaa !23
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %35, %50
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = add nsw i32 %35, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 6, i64 %54
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 8
  br label %60

; <label>:60:                                     ; preds = %15, %19, %23, %30, %41, %52, %56
  %61 = phi %struct.TValue* [ %33, %30 ], [ %44, %41 ], [ %27, %23 ], [ %18, %15 ], [ %20, %19 ], [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i64 0, i32 1
  %63 = load i8, i8* %62, align 8, !tbaa !15
  %64 = trunc i8 %63 to i6
  switch i6 %64, label %135 [
    i6 22, label %65
    i6 -10, label %128
  ]

; <label>:65:                                     ; preds = %60
  br i1 %6, label %66, label %80

; <label>:66:                                     ; preds = %65
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 0
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8, !tbaa !21
  %69 = sext i32 %1 to i64
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 %69
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8, !tbaa !12
  %73 = icmp ult %union.StackValue* %70, %72
  br i1 %73, label %78, label %74

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %76 = load %struct.global_State*, %struct.global_State** %75, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i64 0, i32 8
  br label %119

; <label>:78:                                     ; preds = %66
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 0, i32 0
  br label %119

; <label>:80:                                     ; preds = %65
  %81 = icmp slt i32 %1, -1000999
  br i1 %81, label %87, label %82

; <label>:82:                                     ; preds = %80
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %84 = load %union.StackValue*, %union.StackValue** %83, align 8, !tbaa !12
  %85 = sext i32 %1 to i64
  %86 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 %85, i32 0
  br label %119

; <label>:87:                                     ; preds = %80
  %88 = icmp eq i32 %1, -1001000
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %91 = load %struct.global_State*, %struct.global_State** %90, align 8, !tbaa !17
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %91, i64 0, i32 7
  br label %119

; <label>:93:                                     ; preds = %87
  %94 = sub nsw i32 -1001000, %1
  %95 = bitcast %struct.CallInfo* %5 to %struct.TValue**
  %96 = load %struct.TValue*, %struct.TValue** %95, align 8, !tbaa !21
  %97 = getelementptr inbounds %struct.TValue, %struct.TValue* %96, i64 0, i32 1
  %98 = load i8, i8* %97, align 8, !tbaa !22
  %99 = icmp eq i8 %98, 38
  br i1 %99, label %100, label %104

; <label>:100:                                    ; preds = %93
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %102 = load %struct.global_State*, %struct.global_State** %101, align 8, !tbaa !17
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i64 0, i32 8
  br label %119

; <label>:104:                                    ; preds = %93
  %105 = bitcast %struct.TValue* %96 to %struct.CClosure**
  %106 = load %struct.CClosure*, %struct.CClosure** %105, align 8, !tbaa !22
  %107 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %106, i64 0, i32 3
  %108 = load i8, i8* %107, align 2, !tbaa !23
  %109 = zext i8 %108 to i32
  %110 = icmp sgt i32 %94, %109
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %104
  %112 = add nsw i32 %94, -1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %106, i64 0, i32 6, i64 %113
  br label %119

; <label>:115:                                    ; preds = %104
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %117 = load %struct.global_State*, %struct.global_State** %116, align 8, !tbaa !17
  %118 = getelementptr inbounds %struct.global_State, %struct.global_State* %117, i64 0, i32 8
  br label %119

; <label>:119:                                    ; preds = %74, %78, %82, %89, %100, %111, %115
  %120 = phi %struct.TValue* [ %92, %89 ], [ %103, %100 ], [ %86, %82 ], [ %77, %74 ], [ %79, %78 ], [ %114, %111 ], [ %118, %115 ]
  %121 = bitcast %struct.TValue* %120 to %struct.LClosure**
  %122 = load %struct.LClosure*, %struct.LClosure** %121, align 8, !tbaa !22
  %123 = add nsw i32 %2, -1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %122, i64 0, i32 6, i64 %124
  %126 = bitcast %struct.UpVal** %125 to i8**
  %127 = load i8*, i8** %126, align 8, !tbaa !27
  br label %135

; <label>:128:                                    ; preds = %60
  %129 = bitcast %struct.TValue* %61 to %struct.CClosure**
  %130 = load %struct.CClosure*, %struct.CClosure** %129, align 8, !tbaa !22
  %131 = add nsw i32 %2, -1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %130, i64 0, i32 6, i64 %132
  %134 = bitcast %struct.TValue* %133 to i8*
  br label %135

; <label>:135:                                    ; preds = %60, %128, %119
  %136 = phi i8* [ %134, %128 ], [ %127, %119 ], [ null, %60 ]
  ret i8* %136
}

; Function Attrs: nounwind uwtable
define void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8, !tbaa !21
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %11, i64 %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !12
  %16 = icmp ult %union.StackValue* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 8
  br label %62

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 0, i32 0
  br label %62

; <label>:23:                                     ; preds = %5
  %24 = icmp slt i32 %1, -1000999
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !12
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 %28, i32 0
  br label %62

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i32 %1, -1001000
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 7
  br label %62

; <label>:36:                                     ; preds = %30
  %37 = sub nsw i32 -1001000, %1
  %38 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = icmp eq i8 %41, 38
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 8
  br label %62

; <label>:47:                                     ; preds = %36
  %48 = bitcast %struct.TValue* %39 to %struct.CClosure**
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 3
  %51 = load i8, i8* %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %37, %52
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = add nsw i32 %37, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 6, i64 %56
  br label %62

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 8
  br label %62

; <label>:62:                                     ; preds = %17, %21, %25, %32, %43, %54, %58
  %63 = phi %struct.TValue* [ %35, %32 ], [ %46, %43 ], [ %29, %25 ], [ %20, %17 ], [ %22, %21 ], [ %57, %54 ], [ %61, %58 ]
  %64 = bitcast %struct.TValue* %63 to %struct.LClosure**
  %65 = load %struct.LClosure*, %struct.LClosure** %64, align 8, !tbaa !22
  %66 = add nsw i32 %2, -1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %65, i64 0, i32 6, i64 %67
  %69 = icmp sgt i32 %3, 0
  br i1 %69, label %70, label %84

; <label>:70:                                     ; preds = %62
  %71 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i64 0, i32 0
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8, !tbaa !21
  %73 = sext i32 %3 to i64
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %72, i64 %73
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8, !tbaa !12
  %77 = icmp ult %union.StackValue* %74, %76
  br i1 %77, label %82, label %78

; <label>:78:                                     ; preds = %70
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %80 = load %struct.global_State*, %struct.global_State** %79, align 8, !tbaa !17
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %80, i64 0, i32 8
  br label %123

; <label>:82:                                     ; preds = %70
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %74, i64 0, i32 0
  br label %123

; <label>:84:                                     ; preds = %62
  %85 = icmp slt i32 %3, -1000999
  br i1 %85, label %91, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %88 = load %union.StackValue*, %union.StackValue** %87, align 8, !tbaa !12
  %89 = sext i32 %3 to i64
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %88, i64 %89, i32 0
  br label %123

; <label>:91:                                     ; preds = %84
  %92 = icmp eq i32 %3, -1001000
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %95 = load %struct.global_State*, %struct.global_State** %94, align 8, !tbaa !17
  %96 = getelementptr inbounds %struct.global_State, %struct.global_State* %95, i64 0, i32 7
  br label %123

; <label>:97:                                     ; preds = %91
  %98 = sub nsw i32 -1001000, %3
  %99 = bitcast %struct.CallInfo* %7 to %struct.TValue**
  %100 = load %struct.TValue*, %struct.TValue** %99, align 8, !tbaa !21
  %101 = getelementptr inbounds %struct.TValue, %struct.TValue* %100, i64 0, i32 1
  %102 = load i8, i8* %101, align 8, !tbaa !22
  %103 = icmp eq i8 %102, 38
  br i1 %103, label %104, label %108

; <label>:104:                                    ; preds = %97
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %106 = load %struct.global_State*, %struct.global_State** %105, align 8, !tbaa !17
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i64 0, i32 8
  br label %123

; <label>:108:                                    ; preds = %97
  %109 = bitcast %struct.TValue* %100 to %struct.CClosure**
  %110 = load %struct.CClosure*, %struct.CClosure** %109, align 8, !tbaa !22
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 3
  %112 = load i8, i8* %111, align 2, !tbaa !23
  %113 = zext i8 %112 to i32
  %114 = icmp sgt i32 %98, %113
  br i1 %114, label %119, label %115

; <label>:115:                                    ; preds = %108
  %116 = add nsw i32 %98, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 6, i64 %117
  br label %123

; <label>:119:                                    ; preds = %108
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %121 = load %struct.global_State*, %struct.global_State** %120, align 8, !tbaa !17
  %122 = getelementptr inbounds %struct.global_State, %struct.global_State* %121, i64 0, i32 8
  br label %123

; <label>:123:                                    ; preds = %78, %82, %86, %93, %104, %115, %119
  %124 = phi %struct.TValue* [ %96, %93 ], [ %107, %104 ], [ %90, %86 ], [ %81, %78 ], [ %83, %82 ], [ %118, %115 ], [ %122, %119 ]
  %125 = bitcast %struct.TValue* %124 to %struct.LClosure**
  %126 = load %struct.LClosure*, %struct.LClosure** %125, align 8, !tbaa !22
  %127 = add nsw i32 %4, -1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %126, i64 0, i32 6, i64 %128
  %130 = load %struct.UpVal*, %struct.UpVal** %129, align 8, !tbaa !27
  store %struct.UpVal* %130, %struct.UpVal** %68, align 8, !tbaa !27
  %131 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %65, i64 0, i32 2
  %132 = load i8, i8* %131, align 1, !tbaa !78
  %133 = and i8 %132, 32
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %130, i64 0, i32 2
  %137 = load i8, i8* %136, align 1, !tbaa !53
  %138 = and i8 %137, 24
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

; <label>:140:                                    ; preds = %135
  %141 = bitcast %struct.LClosure* %65 to %struct.GCObject*
  %142 = bitcast %struct.UpVal* %130 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %141, %struct.GCObject* %142) #6
  br label %143

; <label>:143:                                    ; preds = %135, %123, %140
  ret void
}

declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }

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
!23 = !{!24, !5, i64 10}
!24 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!25 = !{!26, !5, i64 9}
!26 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
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
!37 = !{!24, !4, i64 24}
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
