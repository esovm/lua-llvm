; ModuleID = 'ltm.c'
source_filename = "ltm.c"
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
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.anon = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@udatatypename = internal constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@luaT_typenames_ = hidden local_unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal unnamed_addr constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"__band\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"__bor\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"__bxor\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"__shl\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"__shr\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"__bnot\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"perform bitwise operation on\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaT_init(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %3

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %14, %3 ]
  %5 = getelementptr inbounds [25 x i8*], [25 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8, !tbaa !2
  %7 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %6) #4
  %8 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 40, i64 %4
  store %struct.TString* %7, %struct.TString** %9, align 8, !tbaa !2
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 40, i64 %4
  %12 = bitcast %struct.TString** %11 to %struct.GCObject**
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8, !tbaa !2
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %13) #4
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 25
  br i1 %15, label %16, label %3

; <label>:16:                                     ; preds = %3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #0 {
  %4 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* %0, %struct.TString* %2) #4
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !12
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %3
  %10 = shl i32 1, %1
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 3
  %12 = load i8, i8* %11, align 2, !tbaa !14
  %13 = trunc i32 %10 to i8
  %14 = or i8 %12, %13
  store i8 %14, i8* %11, align 2, !tbaa !14
  br label %15

; <label>:15:                                     ; preds = %3, %9
  %16 = phi %struct.TValue* [ null, %9 ], [ %4, %3 ]
  ret %struct.TValue* %16
}

declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* nocapture readonly, %struct.TValue* nocapture readonly, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !12
  %6 = trunc i8 %5 to i4
  switch i4 %6, label %15 [
    i4 5, label %7
    i4 7, label %11
  ]

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.TValue* %1 to %struct.Table**
  %9 = load %struct.Table*, %struct.Table** %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i64 0, i32 9
  br label %21

; <label>:11:                                     ; preds = %3
  %12 = bitcast %struct.TValue* %1 to %struct.Udata**
  %13 = load %struct.Udata*, %struct.Udata** %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.Udata, %struct.Udata* %13, i64 0, i32 5
  br label %21

; <label>:15:                                     ; preds = %3
  %16 = and i8 %5, 15
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !tbaa !6
  %19 = zext i8 %16 to i64
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 41, i64 %19
  br label %21

; <label>:21:                                     ; preds = %15, %11, %7
  %22 = phi %struct.Table** [ %20, %15 ], [ %14, %11 ], [ %10, %7 ]
  %23 = load %struct.Table*, %struct.Table** %22, align 8, !tbaa !16
  %24 = icmp eq %struct.Table* %23, null
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !tbaa !6
  br i1 %24, label %32, label %27

; <label>:27:                                     ; preds = %21
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 40, i64 %28
  %30 = load %struct.TString*, %struct.TString** %29, align 8, !tbaa !2
  %31 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* nonnull %23, %struct.TString* %30) #4
  br label %34

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 8
  br label %34

; <label>:34:                                     ; preds = %32, %27
  %35 = phi %struct.TValue* [ %31, %27 ], [ %33, %32 ]
  ret %struct.TValue* %35
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue* nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !12
  %5 = icmp eq i8 %4, 69
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %1 to %struct.Table**
  %8 = load %struct.Table*, %struct.Table** %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 9
  %10 = load %struct.Table*, %struct.Table** %9, align 8, !tbaa !16
  %11 = icmp eq %struct.Table* %10, null
  br i1 %11, label %33, label %21

; <label>:12:                                     ; preds = %2
  %13 = and i8 %4, 15
  %14 = icmp eq i8 %13, 7
  br i1 %14, label %15, label %33

; <label>:15:                                     ; preds = %12
  %16 = bitcast %struct.TValue* %1 to %struct.Udata**
  %17 = load %struct.Udata*, %struct.Udata** %16, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.Udata, %struct.Udata* %17, i64 0, i32 5
  %19 = load %struct.Table*, %struct.Table** %18, align 8, !tbaa !16
  %20 = icmp eq %struct.Table* %19, null
  br i1 %20, label %33, label %21

; <label>:21:                                     ; preds = %6, %15
  %22 = phi %struct.Table* [ %10, %6 ], [ %19, %15 ]
  %23 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #4
  %24 = tail call %struct.TValue* @luaH_getshortstr(%struct.Table* nonnull %22, %struct.TString* %23) #4
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !12
  %27 = and i8 %26, 15
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %21
  %30 = bitcast %struct.TValue* %24 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, i8* %31, i64 24
  br label %40

; <label>:33:                                     ; preds = %21, %6, %15, %12
  %34 = load i8, i8* %3, align 8, !tbaa !12
  %35 = and i8 %34, 15
  %36 = add nuw nsw i8 %35, 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [12 x i8*], [12 x i8*]* @luaT_typenames_, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8, !tbaa !2
  br label %40

; <label>:40:                                     ; preds = %29, %33
  %41 = phi i8* [ %39, %33 ], [ %32, %29 ]
  ret i8* %41
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !17
  %8 = bitcast %struct.TValue* %1 to i64*
  %9 = bitcast %union.StackValue* %7 to i64*
  %10 = load i64, i64* %8, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 0, i32 0, i32 1
  store i8 %12, i8* %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 1, i32 0
  %15 = bitcast %struct.TValue* %2 to i64*
  %16 = bitcast %struct.TValue* %14 to i64*
  %17 = load i64, i64* %15, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !12
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 1, i32 0, i32 1
  store i8 %19, i8* %20, align 8, !tbaa !12
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 2, i32 0
  %22 = bitcast %struct.TValue* %3 to i64*
  %23 = bitcast %struct.TValue* %21 to i64*
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 2, i32 0, i32 1
  store i8 %26, i8* %27, align 8, !tbaa !12
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 3, i32 0
  %29 = bitcast %struct.TValue* %4 to i64*
  %30 = bitcast %struct.TValue* %28 to i64*
  %31 = load i64, i64* %29, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 3, i32 0, i32 1
  store i8 %33, i8* %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 4
  store %union.StackValue* %35, %union.StackValue** %6, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %37 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i64 0, i32 7
  %39 = load i16, i16* %38, align 2, !tbaa !19
  %40 = and i16 %39, 6
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %5
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %7, i32 0) #4
  br label %44

; <label>:43:                                     ; preds = %5
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* %7, i32 0) #4
  br label %44

; <label>:44:                                     ; preds = %43, %42
  ret void
}

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly, %union.StackValue*) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %7 = bitcast %union.StackValue** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !20
  %9 = ptrtoint %union.StackValue* %4 to i64
  %10 = sub i64 %9, %8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !17
  %13 = bitcast %struct.TValue* %1 to i64*
  %14 = bitcast %union.StackValue* %12 to i64*
  %15 = load i64, i64* %13, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 1, i32 0
  %20 = bitcast %struct.TValue* %2 to i64*
  %21 = bitcast %struct.TValue* %19 to i64*
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %24 = load i8, i8* %23, align 8, !tbaa !12
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 1, i32 0, i32 1
  store i8 %24, i8* %25, align 8, !tbaa !12
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 2, i32 0
  %27 = bitcast %struct.TValue* %3 to i64*
  %28 = bitcast %struct.TValue* %26 to i64*
  %29 = load i64, i64* %27, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 2, i32 0, i32 1
  store i8 %31, i8* %32, align 8, !tbaa !12
  %33 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !17
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %33, i64 3
  store %union.StackValue* %34, %union.StackValue** %11, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %36 = load %struct.CallInfo*, %struct.CallInfo** %35, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %36, i64 0, i32 7
  %38 = load i16, i16* %37, align 2, !tbaa !19
  %39 = and i16 %38, 6
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %5
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %12, i32 1) #4
  br label %43

; <label>:42:                                     ; preds = %5
  tail call void @luaD_callnoyield(%struct.lua_State* nonnull %0, %union.StackValue* %12, i32 1) #4
  br label %43

; <label>:43:                                     ; preds = %42, %41
  %44 = bitcast %union.StackValue** %6 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !20
  %46 = getelementptr inbounds i8, i8* %45, i64 %10
  %47 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !17
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 -1
  store %union.StackValue* %48, %union.StackValue** %11, align 8, !tbaa !17
  %49 = bitcast %union.StackValue* %48 to i64*
  %50 = bitcast i8* %46 to i64*
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 -1, i32 0, i32 1
  %53 = load i8, i8* %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8, i8* %46, i64 8
  store i8 %53, i8* %54, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @callbinTM(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %2, %union.StackValue* %3, i32 %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

; <label>:8:                                      ; preds = %5
  switch i32 %4, label %22 [
    i32 22, label %9
    i32 13, label %10
    i32 14, label %10
    i32 15, label %10
    i32 16, label %10
    i32 17, label %10
    i32 19, label %10
  ]

; <label>:9:                                      ; preds = %8
  tail call void @luaG_concaterror(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %2) #5
  unreachable

; <label>:10:                                     ; preds = %8, %8, %8, %8, %8, %8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !12
  %13 = and i8 %12, 15
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !12
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  tail call void @luaG_tointerror(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* nonnull %2) #5
  unreachable

; <label>:21:                                     ; preds = %15, %10
  tail call void @luaG_opinterror(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0)) #5
  unreachable

; <label>:22:                                     ; preds = %8
  tail call void @luaG_opinterror(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0)) #5
  unreachable

; <label>:23:                                     ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @callbinTM(%struct.lua_State*, %struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly, %union.StackValue*, i32) unnamed_addr #0 {
  %6 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %1, i32 %4)
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !12
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %2, i32 %4)
  br label %13

; <label>:13:                                     ; preds = %11, %5
  %14 = phi %struct.TValue* [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 0, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !12
  %17 = and i8 %16, 15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %13
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %14, %struct.TValue* %1, %struct.TValue* %2, %union.StackValue* %3)
  br label %20

; <label>:20:                                     ; preds = %13, %19
  %21 = phi i32 [ 1, %19 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: noreturn
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #3

; Function Attrs: noreturn
declare hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #3

; Function Attrs: noreturn
declare hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) local_unnamed_addr #0 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %6
  tail call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2, %struct.TValue* %1, %union.StackValue* %3, i32 %5)
  br label %10

; <label>:9:                                      ; preds = %6
  tail call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %2, %union.StackValue* %3, i32 %5)
  br label %10

; <label>:10:                                     ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) local_unnamed_addr #0 {
  %7 = alloca %struct.TValue, align 8
  %8 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #4
  %9 = bitcast %struct.TValue* %7 to i64*
  store i64 %2, i64* %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 35, i8* %10, align 8, !tbaa !12
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* nonnull %7, %union.StackValue* %4, i32 %3, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !17
  %7 = tail call fastcc i32 @callbinTM(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %2, %union.StackValue* %6, i32 %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

; <label>:9:                                      ; preds = %4
  %10 = bitcast %union.StackValue** %5 to %struct.TValue**
  %11 = load %struct.TValue*, %struct.TValue** %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !16
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

; <label>:16:                                     ; preds = %9
  %17 = icmp eq i8 %13, 1
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %16
  %19 = bitcast %struct.TValue* %11 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !16
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

; <label>:23:                                     ; preds = %16, %18, %9
  %24 = phi i32 [ 0, %9 ], [ 1, %16 ], [ %22, %18 ]
  ret i32 %24

; <label>:25:                                     ; preds = %4
  tail call void @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.TValue* %1, %struct.TValue* %2) #5
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) local_unnamed_addr #0 {
  %7 = alloca %struct.TValue, align 8
  %8 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #4
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %6
  %11 = sitofp i32 %2 to double
  %12 = bitcast %struct.TValue* %7 to double*
  store double %11, double* %12, align 8, !tbaa !16
  br label %16

; <label>:13:                                     ; preds = %6
  %14 = sext i32 %2 to i64
  %15 = bitcast %struct.TValue* %7 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !16
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i8 [ 35, %13 ], [ 19, %10 ]
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 %17, i8* %18, align 8, !tbaa !12
  %19 = icmp eq i32 %3, 0
  %20 = select i1 %19, %struct.TValue* %7, %struct.TValue* %1
  %21 = select i1 %19, %struct.TValue* %1, %struct.TValue* %7
  %22 = call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* %21, %struct.TValue* %20, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo* nocapture, %struct.Proto* nocapture readonly) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2, i64 0, i32 0
  %9 = bitcast %struct.CallInfo* %2 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !21
  %11 = sub i64 %7, %10
  %12 = lshr exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = xor i32 %1, -1
  %15 = add i32 %14, %13
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2, i64 0, i32 4
  %17 = bitcast %union.anon.0* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 0, i32 2
  store i32 %15, i32* %18, align 4, !tbaa !16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %20 = bitcast %union.StackValue** %19 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !22
  %22 = load i64, i64* %6, align 8, !tbaa !17
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 4
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 5
  %26 = load i8, i8* %25, align 4, !tbaa !23
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %39, label %31

; <label>:31:                                     ; preds = %4
  %32 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %28, i32 1) #4
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 3
  %36 = load i64, i64* %35, align 8, !tbaa !25
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %31
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #4
  br label %39

; <label>:39:                                     ; preds = %4, %31, %38
  %40 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !17
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 1
  store %union.StackValue* %41, %union.StackValue** %5, align 8, !tbaa !17
  %42 = bitcast %struct.CallInfo* %2 to %struct.TValue**
  %43 = load %struct.TValue*, %struct.TValue** %42, align 8, !tbaa !21
  %44 = bitcast %struct.TValue* %43 to i64*
  %45 = bitcast %union.StackValue* %40 to i64*
  %46 = load i64, i64* %44, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 0, i32 1
  %48 = load i8, i8* %47, align 8, !tbaa !12
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 0, i32 0, i32 1
  store i8 %48, i8* %49, align 8, !tbaa !12
  %50 = icmp slt i32 %1, 1
  br i1 %50, label %70, label %51

; <label>:51:                                     ; preds = %39
  %52 = add i32 %1, 1
  %53 = zext i32 %52 to i64
  br label %54

; <label>:54:                                     ; preds = %54, %51
  %55 = phi i64 [ %68, %54 ], [ 1, %51 ]
  %56 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !17
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 1
  store %union.StackValue* %57, %union.StackValue** %5, align 8, !tbaa !17
  %58 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 %55, i32 0
  %60 = bitcast %struct.TValue* %59 to i64*
  %61 = bitcast %union.StackValue* %56 to i64*
  %62 = load i64, i64* %60, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 %55, i32 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 0, i32 0, i32 1
  store i8 %64, i8* %65, align 8, !tbaa !12
  %66 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 %55, i32 0, i32 1
  store i8 0, i8* %67, align 8, !tbaa !16
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, %53
  br i1 %69, label %70, label %54

; <label>:70:                                     ; preds = %54, %39
  %71 = load %union.StackValue*, %union.StackValue** %8, align 8, !tbaa !21
  %72 = shl i64 %11, 28
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %71, i64 %73
  store %union.StackValue* %74, %union.StackValue** %8, align 8, !tbaa !21
  %75 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2, i64 0, i32 1
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8, !tbaa !28
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 %73
  store %union.StackValue* %77, %union.StackValue** %75, align 8, !tbaa !28
  ret void
}

declare hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo* nocapture readonly, %union.StackValue*, i32) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %6 = bitcast %union.anon.0* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !16
  %9 = icmp slt i32 %3, 0
  br i1 %9, label %10, label %42

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %12 = bitcast %union.StackValue** %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = bitcast %union.StackValue** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !17
  %17 = sub i64 %13, %16
  %18 = ashr exact i64 %17, 4
  %19 = sext i32 %8 to i64
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %39, label %21

; <label>:21:                                     ; preds = %10
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %23 = bitcast %union.StackValue** %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !20
  %25 = ptrtoint %union.StackValue* %2 to i64
  %26 = sub i64 %25, %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %28 = load %struct.global_State*, %struct.global_State** %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 3
  %30 = load i64, i64* %29, align 8, !tbaa !25
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #4
  br label %33

; <label>:33:                                     ; preds = %32, %21
  %34 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %8, i32 1) #4
  %35 = bitcast %union.StackValue** %22 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !20
  %37 = getelementptr inbounds i8, i8* %36, i64 %26
  %38 = bitcast i8* %37 to %union.StackValue*
  br label %39

; <label>:39:                                     ; preds = %10, %33
  %40 = phi %union.StackValue* [ %38, %33 ], [ %2, %10 ]
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 %19
  store %union.StackValue* %41, %union.StackValue** %14, align 8, !tbaa !17
  br label %42

; <label>:42:                                     ; preds = %39, %4
  %43 = phi i32 [ %8, %39 ], [ %3, %4 ]
  %44 = phi %union.StackValue* [ %40, %39 ], [ %2, %4 ]
  %45 = icmp sgt i32 %43, 0
  %46 = icmp sgt i32 %8, 0
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %50 = sext i32 %8 to i64
  %51 = sub nsw i64 0, %50
  %52 = sext i32 %8 to i64
  %53 = sext i32 %43 to i64
  br label %54

; <label>:54:                                     ; preds = %48, %54
  %55 = phi i64 [ 0, %48 ], [ %66, %54 ]
  %56 = getelementptr inbounds %union.StackValue, %union.StackValue* %44, i64 %55, i32 0
  %57 = load %union.StackValue*, %union.StackValue** %49, align 8, !tbaa !21
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 %51
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 %55
  %60 = bitcast %union.StackValue* %59 to i64*
  %61 = bitcast %struct.TValue* %56 to i64*
  %62 = load i64, i64* %60, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 0, i32 0, i32 1
  %64 = load i8, i8* %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %44, i64 %55, i32 0, i32 1
  store i8 %64, i8* %65, align 8, !tbaa !12
  %66 = add nuw nsw i64 %55, 1
  %67 = icmp slt i64 %66, %53
  %68 = icmp slt i64 %66, %52
  %69 = and i1 %67, %68
  br i1 %69, label %54, label %70

; <label>:70:                                     ; preds = %54
  %71 = trunc i64 %66 to i32
  br label %72

; <label>:72:                                     ; preds = %70, %42
  %73 = phi i32 [ 0, %42 ], [ %71, %70 ]
  %74 = icmp slt i32 %73, %43
  br i1 %74, label %75, label %83

; <label>:75:                                     ; preds = %72
  %76 = zext i32 %73 to i64
  br label %77

; <label>:77:                                     ; preds = %77, %75
  %78 = phi i64 [ %76, %75 ], [ %80, %77 ]
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %44, i64 %78, i32 0, i32 1
  store i8 0, i8* %79, align 8, !tbaa !16
  %80 = add nuw nsw i64 %78, 1
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %43, %81
  br i1 %82, label %83, label %77

; <label>:83:                                     ; preds = %77, %72
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 24}
!7 = !{!"lua_State", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !8, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !9, i64 96, !3, i64 160, !10, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192}
!8 = !{!"short", !4, i64 0}
!9 = !{!"CallInfo", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !4, i64 56, !8, i64 60, !8, i64 62}
!10 = !{!"long", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!13, !4, i64 8}
!13 = !{!"TValue", !4, i64 0, !4, i64 8}
!14 = !{!15, !4, i64 10}
!15 = !{!"Table", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !11, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48}
!16 = !{!4, !4, i64 0}
!17 = !{!7, !3, i64 16}
!18 = !{!7, !3, i64 32}
!19 = !{!9, !8, i64 62}
!20 = !{!7, !3, i64 56}
!21 = !{!9, !3, i64 0}
!22 = !{!7, !3, i64 48}
!23 = !{!24, !4, i64 12}
!24 = !{!"Proto", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120}
!25 = !{!26, !10, i64 24}
!26 = !{!"global_State", !3, i64 0, !3, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !27, i64 48, !13, i64 64, !13, i64 80, !11, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !3, i64 1392, !3, i64 1400}
!27 = !{!"stringtable", !3, i64 0, !11, i64 8, !11, i64 12}
!28 = !{!9, !3, i64 8}
