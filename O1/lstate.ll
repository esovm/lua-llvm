; ModuleID = 'lstate.c'
source_filename = "lstate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }

@.str = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaE_setdebt(%struct.global_State* nocapture, i64) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 2
  %4 = load i64, i64* %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 3
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = add nsw i64 %6, %4
  %8 = add nsw i64 %7, -9223372036854775807
  %9 = icmp sgt i64 %8, %1
  %10 = select i1 %9, i64 %8, i64 %1
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %3, align 8, !tbaa !2
  store i64 %10, i64* %5, align 8, !tbaa !11
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %4 = and i32 %3, 65528
  %5 = add i32 %3, 1
  store i32 %5, i32* %2, align 8, !tbaa !12
  %6 = icmp ugt i32 %4, 2199
  br i1 %6, label %7, label %18

; <label>:7:                                      ; preds = %1
  tail call void @luaE_freeCI(%struct.lua_State* nonnull %0)
  %8 = load i32, i32* %2, align 8, !tbaa !12
  %9 = and i32 %8, 65535
  %10 = icmp ugt i32 %9, 2199
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = icmp ult i32 %9, 2213
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %11
  %14 = add i32 %8, 14
  store i32 %14, i32* %2, align 8, !tbaa !12
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #6
  unreachable

; <label>:15:                                     ; preds = %11
  %16 = icmp ugt i32 %9, 2474
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %15
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6
  unreachable

; <label>:18:                                     ; preds = %7, %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaE_freeCI(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 3
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !17
  store %struct.CallInfo* null, %struct.CallInfo** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %7 = load i16, i16* %6, align 4, !tbaa !18
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %10 = load i32, i32* %9, align 8, !tbaa !12
  %11 = sub i32 %10, %8
  store i32 %11, i32* %9, align 8, !tbaa !12
  %12 = icmp eq %struct.CallInfo* %5, null
  br i1 %12, label %22, label %13

; <label>:13:                                     ; preds = %1
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi %struct.CallInfo* [ %18, %14 ], [ %5, %13 ]
  %16 = bitcast %struct.CallInfo* %15 to i8*
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i64 0, i32 3
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !tbaa !17
  tail call void @luaM_free_(%struct.lua_State* nonnull %0, i8* %16, i64 64) #7
  %19 = load i16, i16* %6, align 4, !tbaa !18
  %20 = add i16 %19, -1
  store i16 %20, i16* %6, align 4, !tbaa !18
  %21 = icmp eq %struct.CallInfo* %18, null
  br i1 %21, label %22, label %14

; <label>:22:                                     ; preds = %14, %1
  %23 = load i16, i16* %6, align 4, !tbaa !18
  %24 = zext i16 %23 to i32
  %25 = load i32, i32* %9, align 8, !tbaa !12
  %26 = add i32 %25, %24
  store i32 %26, i32* %9, align 8, !tbaa !12
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) local_unnamed_addr #2 {
  tail call void @luaE_enterCcall(%struct.lua_State* %0)
  %2 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 64, i32 0) #7
  %3 = bitcast i8* %2 to %struct.CallInfo*
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 0, i32 3
  %7 = bitcast %struct.CallInfo** %6 to i8**
  store i8* %2, i8** %7, align 8, !tbaa !17
  %8 = bitcast %struct.CallInfo** %4 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !16
  %10 = getelementptr inbounds i8, i8* %2, i64 16
  %11 = bitcast i8* %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !19
  %12 = getelementptr inbounds i8, i8* %2, i64 24
  %13 = bitcast i8* %12 to %struct.CallInfo**
  store %struct.CallInfo* null, %struct.CallInfo** %13, align 8, !tbaa !17
  %14 = getelementptr inbounds i8, i8* %2, i64 40
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %17 = load i16, i16* %16, align 4, !tbaa !18
  %18 = add i16 %17, 1
  store i16 %18, i16* %16, align 4, !tbaa !18
  ret %struct.CallInfo* %3
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaE_shrinkCI(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %5 = load i16, i16* %4, align 4, !tbaa !18
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 8, !tbaa !12
  %9 = sub i32 %8, %6
  store i32 %9, i32* %7, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 3
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !tbaa !17
  %12 = icmp eq %struct.CallInfo* %11, null
  br i1 %12, label %30, label %13

; <label>:13:                                     ; preds = %1
  br label %14

; <label>:14:                                     ; preds = %13, %21
  %15 = phi %struct.CallInfo* [ %28, %21 ], [ %11, %13 ]
  %16 = phi %struct.CallInfo** [ %27, %21 ], [ %10, %13 ]
  %17 = phi %struct.CallInfo* [ %19, %21 ], [ %3, %13 ]
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i64 0, i32 3
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8, !tbaa !17
  %20 = icmp eq %struct.CallInfo* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %14
  %22 = bitcast %struct.CallInfo** %16 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !17
  tail call void @luaM_free_(%struct.lua_State* nonnull %0, i8* %23, i64 64) #7
  %24 = load i16, i16* %4, align 4, !tbaa !18
  %25 = add i16 %24, -1
  store i16 %25, i16* %4, align 4, !tbaa !18
  store %struct.CallInfo* %19, %struct.CallInfo** %16, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 0, i32 2
  store %struct.CallInfo* %17, %struct.CallInfo** %26, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 0, i32 3
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !tbaa !17
  %29 = icmp eq %struct.CallInfo* %28, null
  br i1 %29, label %30, label %14

; <label>:30:                                     ; preds = %21, %14, %1
  %31 = load i16, i16* %4, align 4, !tbaa !18
  %32 = zext i16 %31 to i32
  %33 = load i32, i32* %7, align 8, !tbaa !12
  %34 = add i32 %33, %32
  store i32 %34, i32* %7, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %5 = load i64, i64* %4, align 8, !tbaa !11
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = tail call i8* @luaM_malloc_(%struct.lua_State* nonnull %0, i64 208, i32 8) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to %struct.lua_State*
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %13 = load i8, i8* %12, align 4, !tbaa !22
  %14 = and i8 %13, 24
  %15 = getelementptr inbounds i8, i8* %9, i64 17
  store i8 %14, i8* %15, align 1, !tbaa !23
  %16 = getelementptr inbounds i8, i8* %9, i64 16
  store i8 8, i8* %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %18 = bitcast %struct.GCObject** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !25
  %20 = bitcast i8* %10 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !26
  %21 = bitcast %struct.GCObject** %17 to i8**
  store i8* %10, i8** %21, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %23 = bitcast %union.StackValue** %22 to %struct.TValue**
  %24 = load %struct.TValue*, %struct.TValue** %23, align 8, !tbaa !27
  %25 = bitcast %struct.TValue* %24 to i8**
  store i8* %10, i8** %25, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  store i8 72, i8* %26, align 8, !tbaa !28
  %27 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !27
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  store %union.StackValue* %28, %union.StackValue** %22, align 8, !tbaa !27
  tail call fastcc void @preinit_thread(%struct.lua_State* nonnull %11, %struct.global_State* %3)
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %30 = load i32, i32* %29, align 8, !tbaa !29
  %31 = getelementptr inbounds i8, i8* %9, i64 200
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %34 = load i32, i32* %33, align 8, !tbaa !30
  %35 = getelementptr inbounds i8, i8* %9, i64 192
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %38 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %37, align 8, !tbaa !31
  %39 = getelementptr inbounds i8, i8* %9, i64 168
  %40 = bitcast i8* %39 to void (%struct.lua_State*, %struct.lua_Debug*)**
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %38, void (%struct.lua_State*, %struct.lua_Debug*)** %40, align 8, !tbaa !31
  %41 = getelementptr inbounds i8, i8* %9, i64 196
  %42 = bitcast i8* %41 to i32*
  store i32 %34, i32* %42, align 4, !tbaa !32
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %44 = bitcast %struct.lua_State** %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !33
  %46 = getelementptr inbounds i8, i8* %45, i64 -8
  %47 = bitcast i8* %46 to i64*
  %48 = bitcast i8* %9 to i64*
  %49 = load i64, i64* %47, align 1
  store i64 %49, i64* %48, align 1
  tail call fastcc void @stack_init(%struct.lua_State* nonnull %11, %struct.lua_State* nonnull %0)
  ret %struct.lua_State* %11
}

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @preinit_thread(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  store %struct.global_State* %1, %struct.global_State** %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  store %union.StackValue* null, %union.StackValue** %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  store %struct.CallInfo* null, %struct.CallInfo** %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  store i16 0, i16* %6, align 4, !tbaa !18
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  store i32 0, i32* %7, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 0, i32* %10, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %11, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  store i32 0, i32* %12, align 8, !tbaa !29
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  store i32 0, i32* %13, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  store i8 1, i8* %14, align 1, !tbaa !38
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  store i32 0, i32* %15, align 4, !tbaa !32
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  store %struct.UpVal* null, %struct.UpVal** %16, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  store i8 0, i8* %17, align 2, !tbaa !40
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  store i64 0, i64* %18, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stack_init(%struct.lua_State*, %struct.lua_State*) unnamed_addr #2 {
  %3 = tail call i8* @luaM_malloc_(%struct.lua_State* %1, i64 640, i32 0) #7
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %5 = bitcast %union.StackValue** %4 to i8**
  store i8* %3, i8** %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  store i32 40, i32* %6, align 4, !tbaa !35
  %7 = bitcast i8* %3 to %union.StackValue*
  br label %8

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %12, %8 ]
  %10 = phi %union.StackValue* [ %7, %2 ], [ %13, %8 ]
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 %9, i32 0, i32 1
  store i8 0, i8* %11, align 8, !tbaa !20
  %12 = add nuw nsw i64 %9, 1
  %13 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !34
  %14 = icmp eq i64 %12, 40
  br i1 %14, label %15, label %8

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %13, %union.StackValue** %16, align 8, !tbaa !27
  %17 = load i32, i32* %6, align 4, !tbaa !35
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 %18
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -5
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  store %union.StackValue* %20, %union.StackValue** %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 2
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 7
  %25 = bitcast %struct.CallInfo** %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %25, i8 0, i64 16, i32 8, i1 false)
  store i16 2, i16* %24, align 2, !tbaa !43
  %26 = bitcast %union.StackValue** %16 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !27
  %28 = bitcast %struct.CallInfo* %22 to i64*
  store i64 %27, i64* %28, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 4, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* null, i32 (%struct.lua_State*, i32, i64)** %29, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 6
  store i16 0, i16* %30, align 4, !tbaa !45
  %31 = bitcast %union.StackValue** %16 to %struct.TValue**
  %32 = load %struct.TValue*, %struct.TValue** %31, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i64 0, i32 1
  store i8 0, i8* %33, align 8, !tbaa !20
  %34 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !27
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %34, i64 1
  store %union.StackValue* %35, %union.StackValue** %16, align 8, !tbaa !27
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %34, i64 21
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 1
  store %union.StackValue* %36, %union.StackValue** %37, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  store %struct.CallInfo* %22, %struct.CallInfo** %38, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 -1, i32 23
  %4 = bitcast i32* %3 to i8*
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 11
  %6 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !34
  %7 = tail call i32 @luaF_close(%struct.lua_State* %1, %union.StackValue* %6, i32 -1) #7
  tail call fastcc void @freestack(%struct.lua_State* %1)
  tail call void @luaM_free_(%struct.lua_State* %0, i8* nonnull %4, i64 208) #7
  ret void
}

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @freestack(%struct.lua_State*) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %3 = load %union.StackValue*, %union.StackValue** %2, align 8, !tbaa !34
  %4 = icmp eq %union.StackValue* %3, null
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  store %struct.CallInfo* %6, %struct.CallInfo** %7, align 8, !tbaa !16
  tail call void @luaE_freeCI(%struct.lua_State* nonnull %0)
  %8 = bitcast %union.StackValue** %2 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %11 = load i32, i32* %10, align 4, !tbaa !35
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 4
  tail call void @luaM_free_(%struct.lua_State* nonnull %0, i8* %9, i64 %13) #7
  br label %14

; <label>:14:                                     ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_resetthread(%struct.lua_State*) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !34
  %5 = tail call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %4, i32 -2) #7
  %6 = bitcast %union.StackValue** %3 to %struct.TValue**
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 0, i8* %8, align 8, !tbaa !20
  %9 = icmp eq i32 %5, -2
  %10 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !34
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 1
  br i1 %9, label %13, label %12

; <label>:12:                                     ; preds = %1
  tail call void @luaD_seterrorobj(%struct.lua_State* nonnull %0, i32 %5, %union.StackValue* nonnull %11) #7
  br label %15

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %11, %union.StackValue** %14, align 8, !tbaa !27
  br label %15

; <label>:15:                                     ; preds = %13, %12
  %16 = phi i32 [ %5, %12 ], [ 0, %13 ]
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 7
  store i16 2, i16* %17, align 2, !tbaa !43
  %18 = bitcast %union.StackValue** %3 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !34
  %20 = bitcast %struct.CallInfo* %2 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 20
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, i32 1
  store %union.StackValue* %23, %union.StackValue** %24, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  store %struct.CallInfo* %2, %struct.CallInfo** %25, align 8, !tbaa !16
  %26 = trunc i32 %16 to i8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  store i8 %26, i8* %27, align 2, !tbaa !40
  ret i32 %16
}

declare hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) #2 {
  %3 = tail call i8* %0(i8* %1, i8* null, i64 8, i64 1616) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %52, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct.lua_State*
  %8 = getelementptr inbounds i8, i8* %3, i64 208
  %9 = bitcast i8* %8 to %struct.global_State*
  %10 = getelementptr inbounds i8, i8* %3, i64 16
  store i8 8, i8* %10, align 8, !tbaa !24
  %11 = getelementptr inbounds i8, i8* %3, i64 308
  store i8 8, i8* %11, align 4, !tbaa !22
  %12 = getelementptr inbounds i8, i8* %3, i64 17
  store i8 8, i8* %12, align 1, !tbaa !23
  tail call fastcc void @preinit_thread(%struct.lua_State* nonnull %7, %struct.global_State* nonnull %9)
  %13 = getelementptr inbounds i8, i8* %3, i64 320
  %14 = bitcast i8* %13 to i8**
  store i8* %6, i8** %14, align 8, !tbaa !25
  %15 = bitcast i8* %6 to %struct.GCObject**
  store %struct.GCObject* null, %struct.GCObject** %15, align 8, !tbaa !26
  %16 = bitcast i8* %8 to i8* (i8*, i8*, i64, i64)**
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %16, align 8, !tbaa !47
  %17 = getelementptr inbounds i8, i8* %3, i64 216
  %18 = bitcast i8* %17 to i8**
  store i8* %1, i8** %18, align 8, !tbaa !48
  %19 = getelementptr inbounds i8, i8* %3, i64 1600
  %20 = getelementptr inbounds i8, i8* %3, i64 464
  %21 = bitcast i8* %20 to i8**
  call void @llvm.memset.p0i8.i64(i8* nonnull %19, i8 0, i64 16, i32 8, i1 false)
  store i8* %6, i8** %21, align 8, !tbaa !33
  %22 = tail call fastcc i32 @luai_makeseed(%struct.lua_State* nonnull %7)
  %23 = getelementptr inbounds i8, i8* %3, i64 304
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 8, !tbaa !49
  %25 = getelementptr inbounds i8, i8* %3, i64 313
  store i8 0, i8* %25, align 1, !tbaa !50
  %26 = getelementptr inbounds i8, i8* %3, i64 256
  %27 = getelementptr inbounds i8, i8* %3, i64 280
  store i8 0, i8* %27, align 8, !tbaa !51
  %28 = getelementptr inbounds i8, i8* %3, i64 456
  %29 = bitcast i8* %28 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %29, align 8, !tbaa !52
  %30 = getelementptr inbounds i8, i8* %3, i64 309
  call void @llvm.memset.p0i8.i64(i8* nonnull %26, i8 0, i64 16, i32 8, i1 false)
  store i8 8, i8* %30, align 1, !tbaa !53
  %31 = getelementptr inbounds i8, i8* %3, i64 310
  store i8 0, i8* %31, align 2, !tbaa !54
  %32 = getelementptr inbounds i8, i8* %3, i64 314
  store i8 0, i8* %32, align 2, !tbaa !55
  %33 = getelementptr inbounds i8, i8* %3, i64 328
  %34 = getelementptr inbounds i8, i8* %3, i64 224
  %35 = bitcast i8* %34 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull %33, i8 0, i64 128, i32 8, i1 false)
  store i64 1616, i64* %35, align 8, !tbaa !2
  %36 = getelementptr inbounds i8, i8* %3, i64 232
  %37 = bitcast i8* %36 to i64*
  store i64 0, i64* %37, align 8, !tbaa !11
  %38 = getelementptr inbounds i8, i8* %3, i64 248
  %39 = bitcast i8* %38 to i64*
  store i64 0, i64* %39, align 8, !tbaa !56
  %40 = getelementptr inbounds i8, i8* %3, i64 288
  %41 = bitcast i8* %40 to i64*
  store i64 0, i64* %41, align 8, !tbaa !20
  %42 = getelementptr inbounds i8, i8* %3, i64 296
  store i8 35, i8* %42, align 8, !tbaa !28
  %43 = getelementptr inbounds i8, i8* %3, i64 315
  store i8 50, i8* %43, align 1, !tbaa !57
  %44 = getelementptr inbounds i8, i8* %3, i64 316
  store i8 25, i8* %44, align 4, !tbaa !58
  %45 = getelementptr inbounds i8, i8* %3, i64 317
  store i8 13, i8* %45, align 1, !tbaa !59
  %46 = getelementptr inbounds i8, i8* %3, i64 312
  store i8 25, i8* %46, align 8, !tbaa !60
  %47 = getelementptr inbounds i8, i8* %3, i64 311
  store i8 20, i8* %47, align 1, !tbaa !61
  %48 = getelementptr inbounds i8, i8* %3, i64 680
  call void @llvm.memset.p0i8.i64(i8* nonnull %48, i8 0, i64 72, i32 8, i1 false)
  %49 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* nonnull %7, void (%struct.lua_State*, i8*)* nonnull @f_luaopen, i8* null) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %5
  tail call fastcc void @close_state(%struct.lua_State* nonnull %7)
  br label %52

; <label>:52:                                     ; preds = %51, %5, %2
  %53 = phi %struct.lua_State* [ null, %2 ], [ null, %51 ], [ %7, %5 ]
  ret %struct.lua_State* %53
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luai_makeseed(%struct.lua_State*) unnamed_addr #2 {
  %2 = alloca [24 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  %6 = tail call i64 @time(i64* null) #7
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4, !tbaa !62
  %8 = ptrtoint %struct.lua_State* %0 to i64
  %9 = bitcast [24 x i8]* %2 to i64*
  store i64 %8, i64* %9, align 16
  %10 = ptrtoint i32* %3 to i64
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 8
  %12 = bitcast i8* %11 to i64*
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 16
  %14 = bitcast i8* %13 to i64*
  store i64 ptrtoint (%struct.lua_State* (i8* (i8*, i8*, i64, i64)*, i8*)* @lua_newstate to i64), i64* %14, align 16
  %15 = call i32 @luaS_hash(i8* nonnull %4, i64 24, i32 %7) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7
  ret i32 %15
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @f_luaopen(%struct.lua_State*, i8* nocapture readnone) #2 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !21
  tail call fastcc void @stack_init(%struct.lua_State* %0, %struct.lua_State* %0)
  tail call fastcc void @init_registry(%struct.lua_State* %0, %struct.global_State* %4)
  tail call void @luaS_init(%struct.lua_State* %0) #7
  tail call void @luaT_init(%struct.lua_State* %0) #7
  tail call void @luaX_init(%struct.lua_State* %0) #7
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 15
  store i8 1, i8* %5, align 1, !tbaa !50
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 8, i32 1
  store i8 0, i8* %6, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_state(%struct.lua_State*) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !34
  %6 = tail call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %5, i32 -2) #7
  tail call void @luaC_freeallobjects(%struct.lua_State* %0) #7
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6
  %9 = bitcast %struct.stringtable* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 6, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !65
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %10, i64 %14) #7
  tail call fastcc void @freestack(%struct.lua_State* %0)
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0
  %16 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 -1, i32 23
  %20 = bitcast i32* %19 to i8*
  %21 = tail call i8* %16(i8* %18, i8* nonnull %20, i64 1616, i64 0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_close(%struct.lua_State* nocapture readonly) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !33
  tail call fastcc void @close_state(%struct.lua_State* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaE_warning(%struct.lua_State* nocapture readonly, i8*, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 43
  %7 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %6, align 8, !tbaa !66
  %8 = icmp eq void (i8*, i8*, i32)* %7, null
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 44
  %11 = load i8*, i8** %10, align 8, !tbaa !67
  tail call void %7(i8* %11, i8* %1, i32 %2) #7
  br label %12

; <label>:12:                                     ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #5

declare hidden i32 @luaS_hash(i8*, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @init_registry(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7
  %5 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #7
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 7
  %7 = bitcast %struct.TValue* %6 to %struct.Table**
  store %struct.Table* %5, %struct.Table** %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 7, i32 1
  store i8 69, i8* %8, align 8, !tbaa !28
  tail call void @luaH_resize(%struct.lua_State* %0, %struct.Table* %5, i32 2, i32 0) #7
  %9 = bitcast %struct.TValue* %3 to %struct.lua_State**
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 72, i8* %10, align 8, !tbaa !28
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %5, i64 1, %struct.TValue* nonnull %3) #7
  %11 = call %struct.Table* @luaH_new(%struct.lua_State* %0) #7
  %12 = bitcast %struct.TValue* %3 to %struct.Table**
  store %struct.Table* %11, %struct.Table** %12, align 8, !tbaa !20
  store i8 69, i8* %10, align 8, !tbaa !28
  call void @luaH_setint(%struct.lua_State* %0, %struct.Table* %5, i64 2, %struct.TValue* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7
  ret void
}

declare hidden void @luaS_init(%struct.lua_State*) local_unnamed_addr #4

declare hidden void @luaT_init(%struct.lua_State*) local_unnamed_addr #4

declare hidden void @luaX_init(%struct.lua_State*) local_unnamed_addr #4

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #4

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #4

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) local_unnamed_addr #4

declare hidden void @luaC_freeallobjects(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !7, i64 16}
!3 = !{!"global_State", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48, !10, i64 64, !10, i64 80, !9, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"long", !5, i64 0}
!8 = !{!"stringtable", !4, i64 0, !9, i64 8, !9, i64 12}
!9 = !{!"int", !5, i64 0}
!10 = !{!"TValue", !5, i64 0, !5, i64 8}
!11 = !{!3, !7, i64 24}
!12 = !{!13, !9, i64 176}
!13 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !14, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !15, i64 96, !4, i64 160, !7, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192}
!14 = !{!"short", !5, i64 0}
!15 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !14, i64 60, !14, i64 62}
!16 = !{!13, !4, i64 32}
!17 = !{!15, !4, i64 24}
!18 = !{!13, !14, i64 12}
!19 = !{!15, !4, i64 16}
!20 = !{!5, !5, i64 0}
!21 = !{!13, !4, i64 24}
!22 = !{!3, !5, i64 100}
!23 = !{!13, !5, i64 9}
!24 = !{!13, !5, i64 8}
!25 = !{!3, !4, i64 112}
!26 = !{!13, !4, i64 0}
!27 = !{!13, !4, i64 16}
!28 = !{!10, !5, i64 8}
!29 = !{!13, !9, i64 192}
!30 = !{!13, !9, i64 184}
!31 = !{!13, !4, i64 160}
!32 = !{!13, !9, i64 188}
!33 = !{!3, !4, i64 256}
!34 = !{!13, !4, i64 56}
!35 = !{!13, !9, i64 180}
!36 = !{!13, !4, i64 80}
!37 = !{!13, !4, i64 88}
!38 = !{!13, !5, i64 11}
!39 = !{!13, !4, i64 64}
!40 = !{!13, !5, i64 10}
!41 = !{!13, !7, i64 168}
!42 = !{!13, !4, i64 48}
!43 = !{!15, !14, i64 62}
!44 = !{!15, !4, i64 0}
!45 = !{!15, !14, i64 60}
!46 = !{!15, !4, i64 8}
!47 = !{!3, !4, i64 0}
!48 = !{!3, !4, i64 8}
!49 = !{!3, !9, i64 96}
!50 = !{!3, !5, i64 105}
!51 = !{!3, !5, i64 72}
!52 = !{!3, !4, i64 248}
!53 = !{!3, !5, i64 101}
!54 = !{!3, !5, i64 102}
!55 = !{!3, !5, i64 106}
!56 = !{!3, !7, i64 40}
!57 = !{!3, !5, i64 107}
!58 = !{!3, !5, i64 108}
!59 = !{!3, !5, i64 109}
!60 = !{!3, !5, i64 104}
!61 = !{!3, !5, i64 103}
!62 = !{!9, !9, i64 0}
!63 = !{!3, !5, i64 88}
!64 = !{!3, !4, i64 48}
!65 = !{!3, !9, i64 60}
!66 = !{!3, !4, i64 1392}
!67 = !{!3, !4, i64 1400}
