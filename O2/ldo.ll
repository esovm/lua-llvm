; ModuleID = 'ldo.c'
source_filename = "ldo.c"
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
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type { %struct.lua_longjmp*, [1 x %struct.__jmp_buf_tag], i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.StackValue = type { %struct.TValue }
%struct.anon.3 = type { i16, i16 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.anon = type { i32*, i32, i32 }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, %struct.Dyndata, i8*, i8* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.6, %struct.Labellist, %struct.Labellist }
%struct.anon.6 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }

@.str = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"attempt to yield across a C-call boundary\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"attempt to yield from outside a coroutine\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"attempt to load a %s chunk (mode is '%s')\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) local_unnamed_addr #0 {
  switch i32 %1, label %19 [
    i32 4, label %4
    i32 5, label %13
    i32 -2, label %28
  ]

; <label>:4:                                      ; preds = %3
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 39
  %8 = load %struct.TString*, %struct.TString** %7, align 8, !tbaa !11
  %9 = bitcast %union.StackValue* %2 to %struct.TString**
  store %struct.TString* %8, %struct.TString** %9, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %8, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !16
  %12 = or i8 %11, 64
  br label %28

; <label>:13:                                     ; preds = %3
  %14 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 23) #9
  %15 = bitcast %union.StackValue* %2 to %struct.TString**
  store %struct.TString* %14, %struct.TString** %15, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %14, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !16
  %18 = or i8 %17, 64
  br label %28

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8, !tbaa !18
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0
  %23 = bitcast %struct.TValue* %22 to i64*
  %24 = bitcast %union.StackValue* %2 to i64*
  %25 = load i64, i64* %23, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1, i32 0, i32 1
  %27 = load i8, i8* %26, align 8, !tbaa !19
  br label %28

; <label>:28:                                     ; preds = %3, %19, %13, %4
  %29 = phi i8 [ %27, %19 ], [ %18, %13 ], [ %12, %4 ], [ 0, %3 ]
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0, i32 1
  store i8 %29, i8* %30, align 8, !tbaa !15
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 1
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %31, %union.StackValue** %32, align 8, !tbaa !18
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15
  %4 = load %struct.lua_longjmp*, %struct.lua_longjmp** %3, align 8, !tbaa !20
  %5 = icmp eq %struct.lua_longjmp* %4, null
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2
  store volatile i32 %1, i32* %7, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0
  tail call void @longjmp(%struct.__jmp_buf_tag* nonnull %8, i32 1) #10
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !23
  %14 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %13, i32 %1) #9
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  store i8 %15, i8* %16, align 2, !tbaa !24
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 38
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 15
  %20 = load %struct.lua_longjmp*, %struct.lua_longjmp** %19, align 8, !tbaa !20
  %21 = icmp eq %struct.lua_longjmp* %20, null
  br i1 %21, label %36, label %22

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  store %union.StackValue* %25, %union.StackValue** %23, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !18
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1, i32 0
  %29 = bitcast %struct.TValue* %28 to i64*
  %30 = bitcast %union.StackValue* %24 to i64*
  %31 = load i64, i64* %29, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1, i32 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 0, i32 0, i32 1
  store i8 %33, i8* %34, align 8, !tbaa !19
  %35 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !25
  tail call void @luaD_throw(%struct.lua_State* %35, i32 %14) #11
  unreachable

; <label>:36:                                     ; preds = %9
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 37
  %38 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %37, align 8, !tbaa !26
  %39 = icmp eq i32 (%struct.lua_State*)* %38, null
  br i1 %39, label %77, label %40

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8, !tbaa !18
  switch i32 %14, label %57 [
    i32 4, label %43
    i32 5, label %51
    i32 -2, label %64
  ]

; <label>:43:                                     ; preds = %40
  %44 = load %struct.global_State*, %struct.global_State** %10, align 8, !tbaa !2
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 39
  %46 = load %struct.TString*, %struct.TString** %45, align 8, !tbaa !11
  %47 = bitcast %union.StackValue* %42 to %struct.TString**
  store %struct.TString* %46, %struct.TString** %47, align 8, !tbaa !15
  %48 = getelementptr inbounds %struct.TString, %struct.TString* %46, i64 0, i32 1
  %49 = load i8, i8* %48, align 8, !tbaa !16
  %50 = or i8 %49, 64
  br label %64

; <label>:51:                                     ; preds = %40
  %52 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 23) #9
  %53 = bitcast %union.StackValue* %42 to %struct.TString**
  store %struct.TString* %52, %struct.TString** %53, align 8, !tbaa !15
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %52, i64 0, i32 1
  %55 = load i8, i8* %54, align 8, !tbaa !16
  %56 = or i8 %55, 64
  br label %64

; <label>:57:                                     ; preds = %40
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1, i32 0
  %59 = bitcast %struct.TValue* %58 to i64*
  %60 = bitcast %union.StackValue* %42 to i64*
  %61 = load i64, i64* %59, align 8
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1, i32 0, i32 1
  %63 = load i8, i8* %62, align 8, !tbaa !19
  br label %64

; <label>:64:                                     ; preds = %40, %43, %51, %57
  %65 = phi i8 [ %50, %43 ], [ %56, %51 ], [ %63, %57 ], [ 0, %40 ]
  %66 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 0, i32 0, i32 1
  store i8 %65, i8* %66, align 8, !tbaa !15
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 1
  store %union.StackValue* %67, %union.StackValue** %41, align 8, !tbaa !18
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %68, align 8, !tbaa !27
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i64 0, i32 1
  %71 = load %union.StackValue*, %union.StackValue** %70, align 8, !tbaa !28
  %72 = icmp ult %union.StackValue* %71, %67
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %64
  store %union.StackValue* %67, %union.StackValue** %70, align 8, !tbaa !28
  br label %74

; <label>:74:                                     ; preds = %73, %64
  %75 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %37, align 8, !tbaa !26
  %76 = tail call i32 %75(%struct.lua_State* nonnull %0) #9
  br label %77

; <label>:77:                                     ; preds = %36, %74
  tail call void @abort() #10
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) local_unnamed_addr #4

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.lua_longjmp, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %6 = load i32, i32* %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %8 = load i16, i16* %7, align 4, !tbaa !30
  %9 = zext i16 %8 to i32
  %10 = sub i32 %6, %9
  %11 = bitcast %struct.lua_longjmp* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %11) #9
  %12 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2
  store volatile i32 0, i32* %12, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15
  %14 = bitcast %struct.lua_longjmp** %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !20
  %16 = bitcast %struct.lua_longjmp* %4 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !31
  store %struct.lua_longjmp* %4, %struct.lua_longjmp** %13, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0
  %18 = call i32 @_setjmp(%struct.__jmp_buf_tag* nonnull %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #9
  br label %21

; <label>:21:                                     ; preds = %20, %3
  %22 = load i64, i64* %16, align 8, !tbaa !31
  store i64 %22, i64* %14, align 8, !tbaa !20
  %23 = load i16, i16* %7, align 4, !tbaa !30
  %24 = zext i16 %23 to i32
  %25 = add i32 %10, %24
  store i32 %25, i32* %5, align 8, !tbaa !29
  %26 = load volatile i32, i32* %12, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %11) #9
  ret i32 %26
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_reallocstack(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %5 = load i32, i32* %4, align 4, !tbaa !32
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %7 = bitcast %union.StackValue** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !23
  %9 = sext i32 %5 to i64
  %10 = shl nsw i64 %9, 4
  %11 = sext i32 %1 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %8, i64 %10, i64 %12) #9
  %14 = bitcast i8* %13 to %union.StackValue*
  %15 = icmp eq i8* %13, null
  br i1 %15, label %16, label %19, !prof !33

; <label>:16:                                     ; preds = %3
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %110, label %18

; <label>:18:                                     ; preds = %16
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #11
  unreachable

; <label>:19:                                     ; preds = %3
  %20 = icmp slt i32 %5, %1
  br i1 %20, label %21, label %50

; <label>:21:                                     ; preds = %19
  %22 = sub nsw i64 %11, %9
  %23 = add nsw i64 %11, -1
  %24 = sub nsw i64 %23, %9
  %25 = and i64 %22, 3
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %27

; <label>:27:                                     ; preds = %21
  br label %28

; <label>:28:                                     ; preds = %28, %27
  %29 = phi i64 [ %32, %28 ], [ %9, %27 ]
  %30 = phi i64 [ %33, %28 ], [ %25, %27 ]
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %29, i32 0, i32 1
  store i8 0, i8* %31, align 8, !tbaa !15
  %32 = add nsw i64 %29, 1
  %33 = add i64 %30, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %28, !llvm.loop !34

; <label>:35:                                     ; preds = %28, %21
  %36 = phi i64 [ %9, %21 ], [ %32, %28 ]
  %37 = icmp ult i64 %24, 3
  br i1 %37, label %50, label %38

; <label>:38:                                     ; preds = %35
  br label %39

; <label>:39:                                     ; preds = %39, %38
  %40 = phi i64 [ %36, %38 ], [ %48, %39 ]
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %40, i32 0, i32 1
  store i8 0, i8* %41, align 8, !tbaa !15
  %42 = add nsw i64 %40, 1
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %42, i32 0, i32 1
  store i8 0, i8* %43, align 8, !tbaa !15
  %44 = add nsw i64 %40, 2
  %45 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %44, i32 0, i32 1
  store i8 0, i8* %45, align 8, !tbaa !15
  %46 = add nsw i64 %40, 3
  %47 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %46, i32 0, i32 1
  store i8 0, i8* %47, align 8, !tbaa !15
  %48 = add nsw i64 %40, 4
  %49 = icmp eq i64 %48, %11
  br i1 %49, label %50, label %39

; <label>:50:                                     ; preds = %35, %39, %19
  %51 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !23
  %52 = icmp eq %union.StackValue* %51, %14
  br i1 %52, label %106, label %53

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %55 = bitcast %union.StackValue** %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !18
  %57 = ptrtoint %union.StackValue* %51 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 4
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %59
  store %union.StackValue* %60, %union.StackValue** %54, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %62 = load %struct.UpVal*, %struct.UpVal** %61, align 8, !tbaa !15
  %63 = icmp eq %struct.UpVal* %62, null
  br i1 %63, label %76, label %64

; <label>:64:                                     ; preds = %53
  br label %65

; <label>:65:                                     ; preds = %64, %65
  %66 = phi %struct.UpVal* [ %74, %65 ], [ %62, %64 ]
  %67 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %66, i64 0, i32 3
  %68 = bitcast %struct.TValue** %67 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !36
  %70 = sub i64 %69, %57
  %71 = ashr exact i64 %70, 4
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %71, i32 0
  store %struct.TValue* %72, %struct.TValue** %67, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %66, i64 0, i32 4, i32 0, i32 0
  %74 = load %struct.UpVal*, %struct.UpVal** %73, align 8, !tbaa !15
  %75 = icmp eq %struct.UpVal* %74, null
  br i1 %75, label %76, label %65

; <label>:76:                                     ; preds = %65, %53
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %78 = load %struct.CallInfo*, %struct.CallInfo** %77, align 8, !tbaa !38
  %79 = icmp eq %struct.CallInfo* %78, null
  br i1 %79, label %106, label %80

; <label>:80:                                     ; preds = %76
  br label %81

; <label>:81:                                     ; preds = %80, %102
  %82 = phi %struct.CallInfo* [ %104, %102 ], [ %78, %80 ]
  %83 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 1
  %84 = bitcast %union.StackValue** %83 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !28
  %86 = sub i64 %85, %57
  %87 = ashr exact i64 %86, 4
  %88 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %87
  store %union.StackValue* %88, %union.StackValue** %83, align 8, !tbaa !28
  %89 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 0
  %90 = bitcast %struct.CallInfo* %82 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !39
  %92 = sub i64 %91, %57
  %93 = ashr exact i64 %92, 4
  %94 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %93
  store %union.StackValue* %94, %union.StackValue** %89, align 8, !tbaa !39
  %95 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 7
  %96 = load i16, i16* %95, align 2, !tbaa !40
  %97 = and i16 %96, 2
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %81
  %100 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 4, i32 0, i32 1
  %101 = bitcast i64* %100 to i32*
  store i32 1, i32* %101, align 8, !tbaa !15
  br label %102

; <label>:102:                                    ; preds = %99, %81
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 2
  %104 = load %struct.CallInfo*, %struct.CallInfo** %103, align 8, !tbaa !38
  %105 = icmp eq %struct.CallInfo* %104, null
  br i1 %105, label %106, label %81

; <label>:106:                                    ; preds = %102, %50, %76
  store i8* %13, i8** %7, align 8, !tbaa !23
  store i32 %1, i32* %4, align 4, !tbaa !32
  %107 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %11
  %108 = getelementptr inbounds %union.StackValue, %union.StackValue* %107, i64 -5
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  store %union.StackValue* %108, %union.StackValue** %109, align 8, !tbaa !41
  br label %110

; <label>:110:                                    ; preds = %16, %106
  %111 = phi i32 [ 1, %106 ], [ 0, %16 ]
  ret i32 %111
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %5 = load i32, i32* %4, align 4, !tbaa !32
  %6 = icmp sgt i32 %5, 1000000
  br i1 %6, label %7, label %10, !prof !33

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %34, label %9

; <label>:9:                                      ; preds = %7
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #11
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = shl nsw i32 %5, 1
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = bitcast %union.StackValue** %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %16 = bitcast %union.StackValue** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !23
  %18 = sub i64 %14, %17
  %19 = lshr exact i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = add i32 %1, 5
  %22 = add i32 %21, %20
  %23 = icmp sgt i32 %5, 500000
  %24 = select i1 %23, i32 1000000, i32 %11
  %25 = icmp slt i32 %24, %22
  %26 = select i1 %25, i32 %22, i32 %24
  %27 = icmp sgt i32 %26, 1000000
  br i1 %27, label %28, label %32, !prof !33

; <label>:28:                                     ; preds = %10
  %29 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 %2)
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:32:                                     ; preds = %10
  %33 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %26, i32 %2)
  br label %34

; <label>:34:                                     ; preds = %28, %7, %32
  %35 = phi i32 [ %33, %32 ], [ 0, %7 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = load %union.StackValue*, %union.StackValue** %2, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !tbaa !38
  %6 = icmp eq %struct.CallInfo* %5, null
  br i1 %6, label %18, label %7

; <label>:7:                                      ; preds = %1
  br label %8

; <label>:8:                                      ; preds = %7, %8
  %9 = phi %struct.CallInfo* [ %16, %8 ], [ %5, %7 ]
  %10 = phi %union.StackValue* [ %14, %8 ], [ %3, %7 ]
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 1
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !28
  %13 = icmp ult %union.StackValue* %10, %12
  %14 = select i1 %13, %union.StackValue* %12, %union.StackValue* %10
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 2
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !tbaa !38
  %17 = icmp eq %struct.CallInfo* %16, null
  br i1 %17, label %18, label %8

; <label>:18:                                     ; preds = %8, %1
  %19 = phi %union.StackValue* [ %3, %1 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %21 = bitcast %union.StackValue** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !23
  %23 = ptrtoint %union.StackValue* %19 to i64
  %24 = sub i64 %23, %22
  %25 = lshr exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %27, 8
  %29 = add i32 %26, 11
  %30 = add i32 %29, %28
  %31 = icmp slt i32 %30, 1000000
  %32 = select i1 %31, i32 %30, i32 1000000
  %33 = icmp slt i32 %26, 999995
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %18
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %36 = load i32, i32* %35, align 4, !tbaa !32
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %34
  %39 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %32, i32 0)
  br label %40

; <label>:40:                                     ; preds = %18, %34, %38
  tail call void @luaE_shrinkCI(%struct.lua_State* nonnull %0) #9
  ret void
}

declare hidden void @luaE_shrinkCI(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %3 = bitcast %union.StackValue** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !18
  %8 = sub i64 %4, %7
  %9 = icmp slt i64 %8, 32
  %10 = inttoptr i64 %7 to %union.StackValue*
  br i1 %9, label %11, label %35

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %13 = load i32, i32* %12, align 4, !tbaa !32
  %14 = icmp sgt i32 %13, 1000000
  br i1 %14, label %15, label %16, !prof !33

; <label>:15:                                     ; preds = %11
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #10
  unreachable

; <label>:16:                                     ; preds = %11
  %17 = shl nsw i32 %13, 1
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %19 = bitcast %union.StackValue** %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !23
  %21 = sub i64 %7, %20
  %22 = lshr exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = add i32 %23, 6
  %25 = icmp sgt i32 %13, 500000
  %26 = select i1 %25, i32 1000000, i32 %17
  %27 = icmp slt i32 %26, %24
  %28 = select i1 %27, i32 %24, i32 %26
  %29 = icmp sgt i32 %28, 1000000
  br i1 %29, label %30, label %32, !prof !33

; <label>:30:                                     ; preds = %16
  %31 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:32:                                     ; preds = %16
  %33 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %28, i32 1) #9
  %34 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !18
  br label %35

; <label>:35:                                     ; preds = %1, %32
  %36 = phi %union.StackValue* [ %10, %1 ], [ %34, %32 ]
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 1
  store %union.StackValue* %37, %union.StackValue** %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #0 {
  %6 = alloca %struct.lua_Debug, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %8 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8, !tbaa !42
  %9 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %8, null
  br i1 %9, label %93, label %10

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !43
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %93, label %14

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %18 = bitcast %union.StackValue** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %21 = bitcast %union.StackValue** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !23
  %23 = sub i64 %19, %22
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 1
  %25 = bitcast %union.StackValue** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !28
  %27 = sub i64 %26, %22
  %28 = bitcast %struct.lua_Debug* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %28) #9
  %29 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 0
  store i32 %1, i32* %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 6
  store i32 %2, i32* %30, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 16
  store %struct.CallInfo* %16, %struct.CallInfo** %31, align 8, !tbaa !47
  %32 = icmp eq i32 %4, 0
  %33 = inttoptr i64 %26 to %union.StackValue*
  br i1 %32, label %42, label %34

; <label>:34:                                     ; preds = %14
  %35 = trunc i32 %3 to i16
  %36 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 5
  %37 = bitcast %union.anon.2* %36 to %struct.anon.3*
  %38 = bitcast %union.anon.2* %36 to i16*
  store i16 %35, i16* %38, align 8, !tbaa !15
  %39 = trunc i32 %4 to i16
  %40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %37, i64 0, i32 1
  store i16 %39, i16* %40, align 2, !tbaa !15
  %41 = load i64, i64* %18, align 8, !tbaa !18
  br label %42

; <label>:42:                                     ; preds = %14, %34
  %43 = phi i64 [ %41, %34 ], [ %19, %14 ]
  %44 = phi i16 [ 132, %34 ], [ 4, %14 ]
  %45 = inttoptr i64 %43 to %union.StackValue*
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %47 = bitcast %union.StackValue** %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !41
  %49 = sub i64 %48, %43
  %50 = icmp slt i64 %49, 336
  br i1 %50, label %51, label %74

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %53 = load i32, i32* %52, align 4, !tbaa !32
  %54 = icmp sgt i32 %53, 1000000
  br i1 %54, label %55, label %56, !prof !33

; <label>:55:                                     ; preds = %51
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #10
  unreachable

; <label>:56:                                     ; preds = %51
  %57 = shl nsw i32 %53, 1
  %58 = load i64, i64* %21, align 8, !tbaa !23
  %59 = sub i64 %43, %58
  %60 = lshr exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = add i32 %61, 25
  %63 = icmp sgt i32 %53, 500000
  %64 = select i1 %63, i32 1000000, i32 %57
  %65 = icmp slt i32 %64, %62
  %66 = select i1 %65, i32 %62, i32 %64
  %67 = icmp sgt i32 %66, 1000000
  br i1 %67, label %68, label %70, !prof !33

; <label>:68:                                     ; preds = %56
  %69 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:70:                                     ; preds = %56
  %71 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %66, i32 1) #9
  %72 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !18
  %73 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !28
  br label %74

; <label>:74:                                     ; preds = %42, %70
  %75 = phi %union.StackValue* [ %33, %42 ], [ %73, %70 ]
  %76 = phi %union.StackValue* [ %45, %42 ], [ %72, %70 ]
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 20
  %78 = icmp ugt %union.StackValue* %77, %75
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %74
  store %union.StackValue* %77, %union.StackValue** %24, align 8, !tbaa !28
  br label %80

; <label>:80:                                     ; preds = %79, %74
  store i8 0, i8* %11, align 1, !tbaa !43
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 7
  %82 = load i16, i16* %81, align 2, !tbaa !40
  %83 = or i16 %82, %44
  store i16 %83, i16* %81, align 2, !tbaa !40
  call void %8(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %6) #9
  store i8 1, i8* %11, align 1, !tbaa !43
  %84 = bitcast %union.StackValue** %20 to i8**
  %85 = load i8*, i8** %84, align 8, !tbaa !23
  %86 = getelementptr inbounds i8, i8* %85, i64 %27
  %87 = bitcast %union.StackValue** %24 to i8**
  store i8* %86, i8** %87, align 8, !tbaa !28
  %88 = getelementptr inbounds i8, i8* %85, i64 %23
  %89 = bitcast %union.StackValue** %17 to i8**
  store i8* %88, i8** %89, align 8, !tbaa !18
  %90 = load i16, i16* %81, align 2, !tbaa !40
  %91 = xor i16 %44, -1
  %92 = and i16 %90, %91
  store i16 %92, i16* %81, align 2, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %28) #9
  br label %93

; <label>:93:                                     ; preds = %10, %5, %80
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo* nocapture) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %4 = load i32, i32* %3, align 8, !tbaa !48
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !40
  %10 = lshr i16 %9, 2
  %11 = and i16 %10, 4
  %12 = zext i16 %11 to i32
  %13 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %14 = load %struct.LClosure**, %struct.LClosure*** %13, align 8, !tbaa !39
  %15 = load %struct.LClosure*, %struct.LClosure** %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i64 0, i32 5
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %19 = bitcast %union.StackValue** %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %22 = bitcast %union.StackValue** %21 to i64*
  store i64 %20, i64* %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %24 = bitcast %union.anon.0* %23 to i32**
  %25 = load i32*, i32** %24, align 8, !tbaa !15
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32* %26, i32** %24, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 3
  %28 = load i8, i8* %27, align 2, !tbaa !49
  %29 = zext i8 %28 to i32
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 %12, i32 -1, i32 1, i32 %29)
  %30 = load i32*, i32** %24, align 8, !tbaa !15
  %31 = getelementptr inbounds i32, i32* %30, i64 -1
  store i32* %31, i32** %24, align 8, !tbaa !15
  br label %32

; <label>:32:                                     ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0
  %4 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %3, i32 23) #9
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !19
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %10, label %9, !prof !51

; <label>:9:                                      ; preds = %2
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !18
  %13 = icmp ugt %union.StackValue* %12, %1
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %10
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi %union.StackValue* [ %24, %15 ], [ %12, %14 ]
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -1, i32 0
  %18 = bitcast %struct.TValue* %17 to i64*
  %19 = bitcast %union.StackValue* %16 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -1, i32 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 0, i32 0, i32 1
  store i8 %22, i8* %23, align 8, !tbaa !19
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -1
  %25 = icmp ugt %union.StackValue* %24, %1
  br i1 %25, label %15, label %26

; <label>:26:                                     ; preds = %15
  %27 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !18
  br label %28

; <label>:28:                                     ; preds = %26, %10
  %29 = phi %union.StackValue* [ %27, %26 ], [ %12, %10 ]
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 1
  store %union.StackValue* %30, %union.StackValue** %11, align 8, !tbaa !18
  %31 = bitcast %struct.TValue* %4 to i64*
  %32 = bitcast %union.StackValue* %1 to i64*
  %33 = load i64, i64* %31, align 8
  store i64 %33, i64* %32, align 8
  %34 = load i8, i8* %5, align 8, !tbaa !19
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  store i8 %34, i8* %35, align 8, !tbaa !19
  ret void
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo* nocapture, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %5 = load i32, i32* %4, align 8, !tbaa !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %9 = bitcast %struct.CallInfo** %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !52
  br label %88

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !18
  %14 = sext i32 %2 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 %15
  %17 = ptrtoint %union.StackValue* %13 to i64
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %19 = bitcast %union.StackValue** %18 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !23
  %21 = sub i64 %17, %20
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %23 = load i16, i16* %22, align 2, !tbaa !40
  %24 = and i16 %23, 6
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %51

; <label>:26:                                     ; preds = %11
  %27 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %28 = load %struct.LClosure**, %struct.LClosure*** %27, align 8, !tbaa !39
  %29 = load %struct.LClosure*, %struct.LClosure** %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 5
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 4
  %33 = load i8, i8* %32, align 1, !tbaa !53
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %37 = bitcast %union.anon.0* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i64 0, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !15
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 3
  %41 = load i8, i8* %40, align 2, !tbaa !49
  %42 = zext i8 %41 to i32
  %43 = add i32 %39, 1
  %44 = add i32 %43, %42
  br label %45

; <label>:45:                                     ; preds = %35, %26
  %46 = phi i32 [ %44, %35 ], [ 0, %26 ]
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %48 = load %union.StackValue*, %union.StackValue** %47, align 8, !tbaa !28
  %49 = icmp ugt %union.StackValue* %48, %13
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  store %union.StackValue* %48, %union.StackValue** %12, align 8, !tbaa !18
  br label %51

; <label>:51:                                     ; preds = %50, %45, %11
  %52 = phi i32 [ 0, %11 ], [ %46, %50 ], [ %46, %45 ]
  %53 = and i32 %5, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %57 = load %union.StackValue*, %union.StackValue** %56, align 8, !tbaa !39
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 %58
  store %union.StackValue* %59, %union.StackValue** %56, align 8, !tbaa !39
  %60 = ptrtoint %union.StackValue* %16 to i64
  %61 = ptrtoint %union.StackValue* %59 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 65535
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 1, i32 -1, i32 %65, i32 %2) #9
  %66 = load %union.StackValue*, %union.StackValue** %56, align 8, !tbaa !39
  %67 = sub nsw i64 0, %58
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 %67
  store %union.StackValue* %68, %union.StackValue** %56, align 8, !tbaa !39
  br label %69

; <label>:69:                                     ; preds = %55, %51
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %71 = load %struct.CallInfo*, %struct.CallInfo** %70, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 7
  %73 = load i16, i16* %72, align 2, !tbaa !40
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  %76 = ptrtoint %struct.CallInfo* %71 to i64
  br i1 %75, label %77, label %83

; <label>:77:                                     ; preds = %69
  %78 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 4
  %79 = bitcast %union.anon.0* %78 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !15
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %82 = bitcast i32** %81 to i64*
  store i64 %80, i64* %82, align 8, !tbaa !54
  br label %83

; <label>:83:                                     ; preds = %69, %77
  %84 = bitcast %union.StackValue** %18 to i8**
  %85 = load i8*, i8** %84, align 8, !tbaa !23
  %86 = getelementptr inbounds i8, i8* %85, i64 %21
  %87 = bitcast %union.StackValue** %12 to i8**
  store i8* %86, i8** %87, align 8, !tbaa !18
  br label %88

; <label>:88:                                     ; preds = %7, %83
  %89 = phi i64 [ %10, %7 ], [ %76, %83 ]
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %91 = bitcast %struct.CallInfo** %90 to i64*
  store i64 %89, i64* %91, align 8, !tbaa !27
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %93 = load %union.StackValue*, %union.StackValue** %92, align 8, !tbaa !39
  %94 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %95 = load i16, i16* %94, align 4, !tbaa !55
  %96 = sext i16 %95 to i32
  switch i32 %96, label %116 [
    i32 0, label %97
    i32 1, label %99
    i32 -1, label %132
  ]

; <label>:97:                                     ; preds = %88
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %93, %union.StackValue** %98, align 8, !tbaa !18
  br label %198

; <label>:99:                                     ; preds = %88
  %100 = icmp eq i32 %2, 0
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br i1 %100, label %112, label %102

; <label>:102:                                    ; preds = %99
  %103 = load %union.StackValue*, %union.StackValue** %101, align 8, !tbaa !18
  %104 = sext i32 %2 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds %union.StackValue, %union.StackValue* %103, i64 %105, i32 0
  %107 = bitcast %struct.TValue* %106 to i64*
  %108 = bitcast %union.StackValue* %93 to i64*
  %109 = load i64, i64* %107, align 8
  store i64 %109, i64* %108, align 8
  %110 = getelementptr inbounds %union.StackValue, %union.StackValue* %103, i64 %105, i32 0, i32 1
  %111 = load i8, i8* %110, align 8, !tbaa !19
  br label %112

; <label>:112:                                    ; preds = %102, %99
  %113 = phi i8 [ %111, %102 ], [ 0, %99 ]
  %114 = getelementptr inbounds %union.StackValue, %union.StackValue* %93, i64 0, i32 0, i32 1
  store i8 %113, i8* %114, align 8
  %115 = getelementptr inbounds %union.StackValue, %union.StackValue* %93, i64 1
  store %union.StackValue* %115, %union.StackValue** %101, align 8, !tbaa !18
  br label %198

; <label>:116:                                    ; preds = %88
  %117 = icmp slt i16 %95, -1
  br i1 %117, label %118, label %132

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %120 = bitcast %union.StackValue** %119 to i64*
  %121 = load i64, i64* %120, align 8, !tbaa !23
  %122 = ptrtoint %union.StackValue* %93 to i64
  %123 = sub i64 %122, %121
  %124 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %93, i32 0) #9
  %125 = bitcast %union.StackValue** %119 to i8**
  %126 = load i8*, i8** %125, align 8, !tbaa !23
  %127 = getelementptr inbounds i8, i8* %126, i64 %123
  %128 = bitcast i8* %127 to %union.StackValue*
  %129 = sub nsw i32 -3, %96
  %130 = icmp eq i32 %129, -1
  %131 = select i1 %130, i32 %2, i32 %129
  br label %132

; <label>:132:                                    ; preds = %118, %116, %88
  %133 = phi i32 [ %131, %118 ], [ %96, %116 ], [ %2, %88 ]
  %134 = phi %union.StackValue* [ %128, %118 ], [ %93, %116 ], [ %93, %88 ]
  %135 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %136 = load %union.StackValue*, %union.StackValue** %135, align 8, !tbaa !18
  %137 = sext i32 %2 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds %union.StackValue, %union.StackValue* %136, i64 %138
  %140 = icmp sgt i32 %2, 0
  %141 = icmp sgt i32 %133, 0
  %142 = and i1 %140, %141
  br i1 %142, label %143, label %161

; <label>:143:                                    ; preds = %132
  %144 = sext i32 %133 to i64
  br label %145

; <label>:145:                                    ; preds = %145, %143
  %146 = phi i64 [ 0, %143 ], [ %155, %145 ]
  %147 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %146, i32 0
  %148 = getelementptr inbounds %union.StackValue, %union.StackValue* %139, i64 %146
  %149 = bitcast %union.StackValue* %148 to i64*
  %150 = bitcast %struct.TValue* %147 to i64*
  %151 = load i64, i64* %149, align 8
  store i64 %151, i64* %150, align 8
  %152 = getelementptr inbounds %union.StackValue, %union.StackValue* %148, i64 0, i32 0, i32 1
  %153 = load i8, i8* %152, align 8, !tbaa !19
  %154 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %146, i32 0, i32 1
  store i8 %153, i8* %154, align 8, !tbaa !19
  %155 = add nuw nsw i64 %146, 1
  %156 = icmp slt i64 %155, %137
  %157 = icmp slt i64 %155, %144
  %158 = and i1 %156, %157
  br i1 %158, label %145, label %159

; <label>:159:                                    ; preds = %145
  %160 = trunc i64 %155 to i32
  br label %161

; <label>:161:                                    ; preds = %159, %132
  %162 = phi i32 [ 0, %132 ], [ %160, %159 ]
  %163 = icmp sgt i32 %133, %162
  br i1 %163, label %164, label %195

; <label>:164:                                    ; preds = %161
  %165 = zext i32 %162 to i64
  %166 = sub i32 %133, %162
  %167 = add i32 %133, -1
  %168 = sub i32 %167, %162
  %169 = and i32 %166, 3
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171

; <label>:171:                                    ; preds = %164
  br label %172

; <label>:172:                                    ; preds = %172, %171
  %173 = phi i64 [ %165, %171 ], [ %176, %172 ]
  %174 = phi i32 [ %169, %171 ], [ %177, %172 ]
  %175 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %173, i32 0, i32 1
  store i8 0, i8* %175, align 8, !tbaa !15
  %176 = add nuw nsw i64 %173, 1
  %177 = add i32 %174, -1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %172, !llvm.loop !56

; <label>:179:                                    ; preds = %172, %164
  %180 = phi i64 [ %165, %164 ], [ %176, %172 ]
  %181 = icmp ult i32 %168, 3
  br i1 %181, label %195, label %182

; <label>:182:                                    ; preds = %179
  br label %183

; <label>:183:                                    ; preds = %183, %182
  %184 = phi i64 [ %180, %182 ], [ %192, %183 ]
  %185 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %184, i32 0, i32 1
  store i8 0, i8* %185, align 8, !tbaa !15
  %186 = add nuw nsw i64 %184, 1
  %187 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %186, i32 0, i32 1
  store i8 0, i8* %187, align 8, !tbaa !15
  %188 = add nsw i64 %184, 2
  %189 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %188, i32 0, i32 1
  store i8 0, i8* %189, align 8, !tbaa !15
  %190 = add nsw i64 %184, 3
  %191 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %190, i32 0, i32 1
  store i8 0, i8* %191, align 8, !tbaa !15
  %192 = add nsw i64 %184, 4
  %193 = trunc i64 %192 to i32
  %194 = icmp eq i32 %133, %193
  br i1 %194, label %195, label %183

; <label>:195:                                    ; preds = %179, %183, %161
  %196 = sext i32 %133 to i64
  %197 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %196
  store %union.StackValue* %197, %union.StackValue** %135, align 8, !tbaa !18
  br label %198

; <label>:198:                                    ; preds = %97, %112, %195
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo* nocapture, %union.StackValue* nocapture readonly, i32) local_unnamed_addr #0 {
  %5 = bitcast %union.StackValue* %2 to %struct.LClosure**
  %6 = load %struct.LClosure*, %struct.LClosure** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 5
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 5
  %10 = load i8, i8* %9, align 4, !tbaa !57
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 3
  %13 = load i8, i8* %12, align 2, !tbaa !49
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %61

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %18 = zext i32 %3 to i64
  %19 = and i64 %18, 1
  %20 = icmp eq i32 %3, 1
  br i1 %20, label %48, label %21

; <label>:21:                                     ; preds = %16
  %22 = sub nsw i64 %18, %19
  br label %23

; <label>:23:                                     ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %45, %23 ]
  %25 = phi i64 [ %22, %21 ], [ %46, %23 ]
  %26 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !39
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %24, i32 0
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %24, i32 0
  %29 = bitcast %struct.TValue* %28 to i64*
  %30 = bitcast %struct.TValue* %27 to i64*
  %31 = load i64, i64* %29, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %24, i32 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %24, i32 0, i32 1
  store i8 %33, i8* %34, align 8, !tbaa !19
  %35 = or i64 %24, 1
  %36 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !39
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 %35, i32 0
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %35, i32 0
  %39 = bitcast %struct.TValue* %38 to i64*
  %40 = bitcast %struct.TValue* %37 to i64*
  %41 = load i64, i64* %39, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %35, i32 0, i32 1
  %43 = load i8, i8* %42, align 8, !tbaa !19
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 %35, i32 0, i32 1
  store i8 %43, i8* %44, align 8, !tbaa !19
  %45 = add nuw nsw i64 %24, 2
  %46 = add i64 %25, -2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %23

; <label>:48:                                     ; preds = %23, %16
  %49 = phi i64 [ 0, %16 ], [ %45, %23 ]
  %50 = icmp eq i64 %19, 0
  br i1 %50, label %61, label %51

; <label>:51:                                     ; preds = %48
  %52 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !39
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 %49, i32 0
  %54 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %49, i32 0
  %55 = bitcast %struct.TValue* %54 to i64*
  %56 = bitcast %struct.TValue* %53 to i64*
  %57 = load i64, i64* %55, align 8
  store i64 %57, i64* %56, align 8
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %49, i32 0, i32 1
  %59 = load i8, i8* %58, align 8, !tbaa !19
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 %49, i32 0, i32 1
  store i8 %59, i8* %60, align 8, !tbaa !19
  br label %61

; <label>:61:                                     ; preds = %51, %48, %4
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %63 = bitcast %union.StackValue** %62 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !41
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %66 = bitcast %union.StackValue** %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !18
  %68 = sub i64 %64, %67
  %69 = ashr exact i64 %68, 4
  %70 = zext i8 %10 to i64
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %102, label %72

; <label>:72:                                     ; preds = %61
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %74 = load i32, i32* %73, align 4, !tbaa !32
  %75 = icmp sgt i32 %74, 1000000
  br i1 %75, label %76, label %77, !prof !33

; <label>:76:                                     ; preds = %72
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #10
  unreachable

; <label>:77:                                     ; preds = %72
  %78 = shl nsw i32 %74, 1
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %80 = bitcast %union.StackValue** %79 to i64*
  %81 = load i64, i64* %80, align 8, !tbaa !23
  %82 = sub i64 %67, %81
  %83 = lshr exact i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = add nuw nsw i32 %11, 5
  %86 = add i32 %85, %84
  %87 = icmp sgt i32 %74, 500000
  %88 = select i1 %87, i32 1000000, i32 %78
  %89 = icmp slt i32 %88, %86
  %90 = select i1 %89, i32 %86, i32 %88
  %91 = icmp sgt i32 %90, 1000000
  br i1 %91, label %92, label %94, !prof !33

; <label>:92:                                     ; preds = %77
  %93 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:94:                                     ; preds = %77
  %95 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %90, i32 1) #9
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %97 = load %struct.global_State*, %struct.global_State** %96, align 8, !tbaa !2
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %97, i64 0, i32 3
  %99 = load i64, i64* %98, align 8, !tbaa !58
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %94
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %102

; <label>:102:                                    ; preds = %61, %94, %101
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %104 = load %union.StackValue*, %union.StackValue** %103, align 8, !tbaa !39
  %105 = icmp slt i32 %14, %3
  br i1 %105, label %141, label %106

; <label>:106:                                    ; preds = %102
  %107 = sext i32 %3 to i64
  %108 = zext i8 %13 to i64
  %109 = add nuw nsw i64 %108, 1
  %110 = sub nsw i64 %109, %107
  %111 = sub nsw i64 %108, %107
  %112 = and i64 %110, 3
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

; <label>:114:                                    ; preds = %106
  br label %115

; <label>:115:                                    ; preds = %115, %114
  %116 = phi i64 [ %119, %115 ], [ %107, %114 ]
  %117 = phi i64 [ %120, %115 ], [ %112, %114 ]
  %118 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %116, i32 0, i32 1
  store i8 0, i8* %118, align 8, !tbaa !15
  %119 = add nsw i64 %116, 1
  %120 = add i64 %117, -1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %115, !llvm.loop !59

; <label>:122:                                    ; preds = %115, %106
  %123 = phi i64 [ %107, %106 ], [ %119, %115 ]
  %124 = phi i64 [ undef, %106 ], [ %119, %115 ]
  %125 = icmp ult i64 %111, 3
  br i1 %125, label %138, label %126

; <label>:126:                                    ; preds = %122
  br label %127

; <label>:127:                                    ; preds = %127, %126
  %128 = phi i64 [ %123, %126 ], [ %136, %127 ]
  %129 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %128, i32 0, i32 1
  store i8 0, i8* %129, align 8, !tbaa !15
  %130 = add nsw i64 %128, 1
  %131 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %130, i32 0, i32 1
  store i8 0, i8* %131, align 8, !tbaa !15
  %132 = add nsw i64 %128, 2
  %133 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %132, i32 0, i32 1
  store i8 0, i8* %133, align 8, !tbaa !15
  %134 = add nsw i64 %128, 3
  %135 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %134, i32 0, i32 1
  store i8 0, i8* %135, align 8, !tbaa !15
  %136 = add nsw i64 %128, 4
  %137 = icmp slt i64 %134, %108
  br i1 %137, label %127, label %138

; <label>:138:                                    ; preds = %127, %122
  %139 = phi i64 [ %124, %122 ], [ %136, %127 ]
  %140 = trunc i64 %139 to i32
  br label %141

; <label>:141:                                    ; preds = %138, %102
  %142 = phi i32 [ %3, %102 ], [ %140, %138 ]
  %143 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 1
  %144 = getelementptr inbounds %union.StackValue, %union.StackValue* %143, i64 %70
  %145 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  store %union.StackValue* %144, %union.StackValue** %145, align 8, !tbaa !28
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16
  %147 = bitcast i32** %146 to i64*
  %148 = load i64, i64* %147, align 8, !tbaa !60
  %149 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %150 = bitcast %union.anon.0* %149 to i64*
  store i64 %148, i64* %150, align 8, !tbaa !15
  %151 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %152 = load i16, i16* %151, align 2, !tbaa !40
  %153 = or i16 %152, 16
  store i16 %153, i16* %151, align 2, !tbaa !40
  %154 = sext i32 %142 to i64
  %155 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 %154
  store %union.StackValue* %155, %union.StackValue** %65, align 8, !tbaa !18
  ret void
}

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = bitcast %union.StackValue* %1 to i64*
  %8 = load i8, i8* %4, align 8, !tbaa !19
  br label %9

; <label>:9:                                      ; preds = %217, %3
  %10 = phi i8 [ %222, %217 ], [ %8, %3 ]
  %11 = trunc i8 %10 to i6
  switch i6 %11, label %193 [
    i6 -10, label %12
    i6 -26, label %16
    i6 22, label %97
  ]

; <label>:12:                                     ; preds = %9
  %13 = bitcast %union.StackValue* %1 to %struct.CClosure**
  %14 = load %struct.CClosure*, %struct.CClosure** %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i64 0, i32 5
  br label %18

; <label>:16:                                     ; preds = %9
  %17 = bitcast %union.StackValue* %1 to i32 (%struct.lua_State*)**
  br label %18

; <label>:18:                                     ; preds = %16, %12
  %19 = phi i32 (%struct.lua_State*)** [ %17, %16 ], [ %15, %12 ]
  %20 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %19, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %22 = bitcast %union.StackValue** %21 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !41
  %24 = bitcast %union.StackValue** %6 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !18
  %26 = sub i64 %23, %25
  %27 = icmp slt i64 %26, 336
  br i1 %27, label %28, label %66

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %30 = bitcast %union.StackValue** %29 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !23
  %32 = ptrtoint %union.StackValue* %1 to i64
  %33 = sub i64 %32, %31
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %35 = load %struct.global_State*, %struct.global_State** %34, align 8, !tbaa !2
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i64 0, i32 3
  %37 = load i64, i64* %36, align 8, !tbaa !58
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %28
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %40

; <label>:40:                                     ; preds = %39, %28
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %42 = load i32, i32* %41, align 4, !tbaa !32
  %43 = icmp sgt i32 %42, 1000000
  br i1 %43, label %44, label %45, !prof !33

; <label>:44:                                     ; preds = %40
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #10
  unreachable

; <label>:45:                                     ; preds = %40
  %46 = shl nsw i32 %42, 1
  %47 = load i64, i64* %24, align 8, !tbaa !18
  %48 = load i64, i64* %30, align 8, !tbaa !23
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = add i32 %51, 25
  %53 = icmp sgt i32 %42, 500000
  %54 = select i1 %53, i32 1000000, i32 %46
  %55 = icmp slt i32 %54, %52
  %56 = select i1 %55, i32 %52, i32 %54
  %57 = icmp sgt i32 %56, 1000000
  br i1 %57, label %58, label %60, !prof !33

; <label>:58:                                     ; preds = %45
  %59 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:60:                                     ; preds = %45
  %61 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %56, i32 1) #9
  %62 = bitcast %union.StackValue** %29 to i8**
  %63 = load i8*, i8** %62, align 8, !tbaa !23
  %64 = getelementptr inbounds i8, i8* %63, i64 %33
  %65 = bitcast i8* %64 to %union.StackValue*
  br label %66

; <label>:66:                                     ; preds = %18, %60
  %67 = phi %union.StackValue* [ %65, %60 ], [ %1, %18 ]
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %68, align 8, !tbaa !27
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i64 0, i32 3
  %71 = load %struct.CallInfo*, %struct.CallInfo** %70, align 8, !tbaa !61
  %72 = icmp eq %struct.CallInfo* %71, null
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %66
  %74 = tail call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* nonnull %0) #9
  br label %75

; <label>:75:                                     ; preds = %66, %73
  %76 = phi %struct.CallInfo* [ %74, %73 ], [ %71, %66 ]
  store %struct.CallInfo* %76, %struct.CallInfo** %68, align 8, !tbaa !27
  %77 = trunc i32 %2 to i16
  %78 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i64 0, i32 6
  store i16 %77, i16* %78, align 4, !tbaa !55
  %79 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i64 0, i32 7
  store i16 2, i16* %79, align 2, !tbaa !40
  %80 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !18
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 20
  %82 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i64 0, i32 1
  store %union.StackValue* %81, %union.StackValue** %82, align 8, !tbaa !28
  %83 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i64 0, i32 0
  store %union.StackValue* %67, %union.StackValue** %83, align 8, !tbaa !39
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %85 = load i32, i32* %84, align 8, !tbaa !48
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

; <label>:88:                                     ; preds = %75
  %89 = ptrtoint %union.StackValue* %80 to i64
  %90 = ptrtoint %union.StackValue* %67 to i64
  %91 = sub i64 %89, %90
  %92 = lshr exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %93, -1
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 0, i32 -1, i32 1, i32 %94)
  br label %95

; <label>:95:                                     ; preds = %75, %88
  %96 = tail call i32 %20(%struct.lua_State* nonnull %0) #9
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %76, i32 %96)
  br label %223

; <label>:97:                                     ; preds = %9
  %98 = bitcast %union.StackValue* %1 to %struct.LClosure**
  %99 = load %struct.LClosure*, %struct.LClosure** %98, align 8, !tbaa !15
  %100 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %99, i64 0, i32 5
  %101 = load %struct.Proto*, %struct.Proto** %100, align 8, !tbaa !15
  %102 = bitcast %union.StackValue** %6 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !18
  %104 = ptrtoint %union.StackValue* %1 to i64
  %105 = sub i64 %103, %104
  %106 = lshr exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = add nsw i32 %107, -1
  %109 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i64 0, i32 3
  %110 = load i8, i8* %109, align 2, !tbaa !49
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i64 0, i32 5
  %113 = load i8, i8* %112, align 4, !tbaa !57
  %114 = zext i8 %113 to i32
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %116 = bitcast %union.StackValue** %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !41
  %118 = sub i64 %117, %103
  %119 = ashr exact i64 %118, 4
  %120 = zext i8 %113 to i64
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %160, label %122

; <label>:122:                                    ; preds = %97
  %123 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %124 = bitcast %union.StackValue** %123 to i64*
  %125 = load i64, i64* %124, align 8, !tbaa !23
  %126 = sub i64 %104, %125
  %127 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %128 = load %struct.global_State*, %struct.global_State** %127, align 8, !tbaa !2
  %129 = getelementptr inbounds %struct.global_State, %struct.global_State* %128, i64 0, i32 3
  %130 = load i64, i64* %129, align 8, !tbaa !58
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %122
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %133

; <label>:133:                                    ; preds = %132, %122
  %134 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %135 = load i32, i32* %134, align 4, !tbaa !32
  %136 = icmp sgt i32 %135, 1000000
  br i1 %136, label %137, label %138, !prof !33

; <label>:137:                                    ; preds = %133
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #10
  unreachable

; <label>:138:                                    ; preds = %133
  %139 = shl nsw i32 %135, 1
  %140 = load i64, i64* %102, align 8, !tbaa !18
  %141 = load i64, i64* %124, align 8, !tbaa !23
  %142 = sub i64 %140, %141
  %143 = lshr exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = add nuw nsw i32 %114, 5
  %146 = add i32 %145, %144
  %147 = icmp sgt i32 %135, 500000
  %148 = select i1 %147, i32 1000000, i32 %139
  %149 = icmp slt i32 %148, %146
  %150 = select i1 %149, i32 %146, i32 %148
  %151 = icmp sgt i32 %150, 1000000
  br i1 %151, label %152, label %154, !prof !33

; <label>:152:                                    ; preds = %138
  %153 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 1) #9
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:154:                                    ; preds = %138
  %155 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %150, i32 1) #9
  %156 = bitcast %union.StackValue** %123 to i8**
  %157 = load i8*, i8** %156, align 8, !tbaa !23
  %158 = getelementptr inbounds i8, i8* %157, i64 %126
  %159 = bitcast i8* %158 to %union.StackValue*
  br label %160

; <label>:160:                                    ; preds = %97, %154
  %161 = phi %union.StackValue* [ %159, %154 ], [ %1, %97 ]
  %162 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %163 = load %struct.CallInfo*, %struct.CallInfo** %162, align 8, !tbaa !27
  %164 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %163, i64 0, i32 3
  %165 = load %struct.CallInfo*, %struct.CallInfo** %164, align 8, !tbaa !61
  %166 = icmp eq %struct.CallInfo* %165, null
  br i1 %166, label %167, label %169

; <label>:167:                                    ; preds = %160
  %168 = tail call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* nonnull %0) #9
  br label %169

; <label>:169:                                    ; preds = %160, %167
  %170 = phi %struct.CallInfo* [ %168, %167 ], [ %165, %160 ]
  store %struct.CallInfo* %170, %struct.CallInfo** %162, align 8, !tbaa !27
  %171 = trunc i32 %2 to i16
  %172 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %170, i64 0, i32 6
  store i16 %171, i16* %172, align 4, !tbaa !55
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i64 0, i32 16
  %174 = bitcast i32** %173 to i64*
  %175 = load i64, i64* %174, align 8, !tbaa !60
  %176 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %170, i64 0, i32 4
  %177 = bitcast %union.anon.0* %176 to i64*
  store i64 %175, i64* %177, align 8, !tbaa !15
  %178 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %170, i64 0, i32 7
  store i16 0, i16* %178, align 2, !tbaa !40
  %179 = getelementptr inbounds %union.StackValue, %union.StackValue* %161, i64 1
  %180 = getelementptr inbounds %union.StackValue, %union.StackValue* %179, i64 %120
  %181 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %170, i64 0, i32 1
  store %union.StackValue* %180, %union.StackValue** %181, align 8, !tbaa !28
  %182 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %170, i64 0, i32 0
  store %union.StackValue* %161, %union.StackValue** %182, align 8, !tbaa !39
  %183 = icmp sgt i32 %107, %111
  br i1 %183, label %192, label %184

; <label>:184:                                    ; preds = %169
  br label %185

; <label>:185:                                    ; preds = %184, %185
  %186 = phi i32 [ %190, %185 ], [ %108, %184 ]
  %187 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !18
  %188 = getelementptr inbounds %union.StackValue, %union.StackValue* %187, i64 1
  store %union.StackValue* %188, %union.StackValue** %6, align 8, !tbaa !18
  %189 = getelementptr inbounds %union.StackValue, %union.StackValue* %187, i64 0, i32 0, i32 1
  store i8 0, i8* %189, align 8, !tbaa !15
  %190 = add nsw i32 %186, 1
  %191 = icmp slt i32 %190, %111
  br i1 %191, label %185, label %192

; <label>:192:                                    ; preds = %185, %169
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* %170) #9
  br label %223

; <label>:193:                                    ; preds = %9
  %194 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %5, i32 23) #9
  %195 = getelementptr inbounds %struct.TValue, %struct.TValue* %194, i64 0, i32 1
  %196 = load i8, i8* %195, align 8, !tbaa !19
  %197 = and i8 %196, 15
  %198 = icmp eq i8 %197, 6
  br i1 %198, label %200, label %199, !prof !51

; <label>:199:                                    ; preds = %193
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  unreachable

; <label>:200:                                    ; preds = %193
  %201 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !18
  %202 = icmp ugt %union.StackValue* %201, %1
  br i1 %202, label %203, label %217

; <label>:203:                                    ; preds = %200
  br label %204

; <label>:204:                                    ; preds = %203, %204
  %205 = phi %union.StackValue* [ %213, %204 ], [ %201, %203 ]
  %206 = getelementptr inbounds %union.StackValue, %union.StackValue* %205, i64 -1, i32 0
  %207 = bitcast %struct.TValue* %206 to i64*
  %208 = bitcast %union.StackValue* %205 to i64*
  %209 = load i64, i64* %207, align 8
  store i64 %209, i64* %208, align 8
  %210 = getelementptr inbounds %union.StackValue, %union.StackValue* %205, i64 -1, i32 0, i32 1
  %211 = load i8, i8* %210, align 8, !tbaa !19
  %212 = getelementptr inbounds %union.StackValue, %union.StackValue* %205, i64 0, i32 0, i32 1
  store i8 %211, i8* %212, align 8, !tbaa !19
  %213 = getelementptr inbounds %union.StackValue, %union.StackValue* %205, i64 -1
  %214 = icmp ugt %union.StackValue* %213, %1
  br i1 %214, label %204, label %215

; <label>:215:                                    ; preds = %204
  %216 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !18
  br label %217

; <label>:217:                                    ; preds = %200, %215
  %218 = phi %union.StackValue* [ %216, %215 ], [ %201, %200 ]
  %219 = getelementptr inbounds %union.StackValue, %union.StackValue* %218, i64 1
  store %union.StackValue* %219, %union.StackValue** %6, align 8, !tbaa !18
  %220 = bitcast %struct.TValue* %194 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %7, align 8
  %222 = load i8, i8* %195, align 8, !tbaa !19
  store i8 %222, i8* %4, align 8, !tbaa !19
  br label %9

; <label>:223:                                    ; preds = %192, %95
  ret void
}

declare hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) local_unnamed_addr #2

declare hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %5 = load i32, i32* %4, align 8, !tbaa !29
  %6 = add i32 %5, 65546
  store i32 %6, i32* %4, align 8, !tbaa !29
  %7 = and i32 %6, 65528
  %8 = icmp ugt i32 %7, 2199
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @luaE_freeCI(%struct.lua_State* nonnull %0) #9
  br label %10

; <label>:10:                                     ; preds = %9, %3
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %1, i32 %2)
  %11 = load i32, i32* %4, align 8, !tbaa !29
  %12 = add i32 %11, -65546
  store i32 %12, i32* %4, align 8, !tbaa !29
  ret void
}

declare hidden void @luaE_freeCI(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lua_resume(%struct.lua_State*, %struct.lua_State* readonly, i32, i32* nocapture) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %2, i32* %5, align 4, !tbaa !62
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %9 = load i8, i8* %8, align 2, !tbaa !24
  switch i8 %9, label %29 [
    i8 0, label %10
    i8 1, label %43
  ]

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %14 = icmp eq %struct.CallInfo* %12, %13
  br i1 %14, label %43, label %15

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !18
  %18 = sext i32 %2 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 %19
  store %union.StackValue* %20, %union.StackValue** %16, align 8, !tbaa !18
  %21 = tail call %struct.TString* @luaS_new(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #9
  %22 = bitcast %union.StackValue* %20 to %struct.TString**
  store %struct.TString* %21, %struct.TString** %22, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 1
  %24 = load i8, i8* %23, align 8, !tbaa !16
  %25 = or i8 %24, 64
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 %19, i32 0, i32 1
  store i8 %25, i8* %26, align 8, !tbaa !19
  %27 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !18
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 1
  store %union.StackValue* %28, %union.StackValue** %16, align 8, !tbaa !18
  br label %242

; <label>:29:                                     ; preds = %4
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8, !tbaa !18
  %32 = sext i32 %2 to i64
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 %33
  store %union.StackValue* %34, %union.StackValue** %30, align 8, !tbaa !18
  %35 = tail call %struct.TString* @luaS_new(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #9
  %36 = bitcast %union.StackValue* %34 to %struct.TString**
  store %struct.TString* %35, %struct.TString** %36, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.TString, %struct.TString* %35, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !16
  %39 = or i8 %38, 64
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %31, i64 %33, i32 0, i32 1
  store i8 %39, i8* %40, align 8, !tbaa !19
  %41 = load %union.StackValue*, %union.StackValue** %30, align 8, !tbaa !18
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 1
  store %union.StackValue* %42, %union.StackValue** %30, align 8, !tbaa !18
  br label %242

; <label>:43:                                     ; preds = %4, %10
  %44 = icmp eq %struct.lua_State* %1, null
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 1, i32* %46, align 8
  br label %76

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 19
  %49 = load i32, i32* %48, align 8, !tbaa !29
  %50 = and i32 %49, 65535
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 5
  %52 = load i16, i16* %51, align 4, !tbaa !30
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %55 = load i16, i16* %54, align 4, !tbaa !30
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %50, 10
  %58 = sub nsw i32 %57, %53
  %59 = add nsw i32 %58, %56
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 %59, i32* %60, align 8
  %61 = icmp ugt i32 %59, 2199
  br i1 %61, label %62, label %76

; <label>:62:                                     ; preds = %47
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !18
  %65 = sext i32 %2 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 %66
  store %union.StackValue* %67, %union.StackValue** %63, align 8, !tbaa !18
  %68 = tail call %struct.TString* @luaS_new(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #9
  %69 = bitcast %union.StackValue* %67 to %struct.TString**
  store %struct.TString* %68, %struct.TString** %69, align 8, !tbaa !15
  %70 = getelementptr inbounds %struct.TString, %struct.TString* %68, i64 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !16
  %72 = or i8 %71, 64
  %73 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 %66, i32 0, i32 1
  store i8 %72, i8* %73, align 8, !tbaa !19
  %74 = load %union.StackValue*, %union.StackValue** %63, align 8, !tbaa !18
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %74, i64 1
  store %union.StackValue* %75, %union.StackValue** %63, align 8, !tbaa !18
  br label %242

; <label>:76:                                     ; preds = %45, %47
  %77 = bitcast i32* %5 to i8*
  %78 = call i32 @luaD_rawrunprotected(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @resume, i8* nonnull %77)
  store i32 %78, i32* %6, align 4, !tbaa !62
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %219

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %83 = bitcast %union.StackValue** %82 to i8**
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %85 = bitcast %union.StackValue** %84 to i8**
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %88 = bitcast %union.StackValue** %82 to i64*
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  br label %91

; <label>:91:                                     ; preds = %80, %177
  %92 = phi i32 [ %78, %80 ], [ %180, %177 ]
  %93 = load %struct.CallInfo*, %struct.CallInfo** %81, align 8, !tbaa !38
  %94 = icmp eq %struct.CallInfo* %93, null
  br i1 %94, label %184, label %95

; <label>:95:                                     ; preds = %91
  br label %96

; <label>:96:                                     ; preds = %95, %102
  %97 = phi %struct.CallInfo* [ %104, %102 ], [ %93, %95 ]
  %98 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %97, i64 0, i32 7
  %99 = load i16, i16* %98, align 2, !tbaa !40
  %100 = and i16 %99, 8
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %97, i64 0, i32 2
  %104 = load %struct.CallInfo*, %struct.CallInfo** %103, align 8, !tbaa !38
  %105 = icmp eq %struct.CallInfo* %104, null
  br i1 %105, label %182, label %96

; <label>:106:                                    ; preds = %96
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %97, i64 0, i32 7
  %108 = load i8*, i8** %83, align 8, !tbaa !23
  %109 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %97, i64 0, i32 5, i32 0
  %110 = load i32, i32* %109, align 8, !tbaa !15
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = bitcast i8* %112 to %union.StackValue*
  %114 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %113, i32 %92) #9
  %115 = load i8*, i8** %83, align 8, !tbaa !23
  %116 = load i32, i32* %109, align 8, !tbaa !15
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  switch i32 %92, label %133 [
    i32 4, label %119
    i32 5, label %127
    i32 -2, label %141
  ]

; <label>:119:                                    ; preds = %106
  %120 = load %struct.global_State*, %struct.global_State** %87, align 8, !tbaa !2
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %120, i64 0, i32 39
  %122 = load %struct.TString*, %struct.TString** %121, align 8, !tbaa !11
  %123 = bitcast i8* %118 to %struct.TString**
  store %struct.TString* %122, %struct.TString** %123, align 8, !tbaa !15
  %124 = getelementptr inbounds %struct.TString, %struct.TString* %122, i64 0, i32 1
  %125 = load i8, i8* %124, align 8, !tbaa !16
  %126 = or i8 %125, 64
  br label %141

; <label>:127:                                    ; preds = %106
  %128 = call %struct.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 23) #9
  %129 = bitcast i8* %118 to %struct.TString**
  store %struct.TString* %128, %struct.TString** %129, align 8, !tbaa !15
  %130 = getelementptr inbounds %struct.TString, %struct.TString* %128, i64 0, i32 1
  %131 = load i8, i8* %130, align 8, !tbaa !16
  %132 = or i8 %131, 64
  br label %141

; <label>:133:                                    ; preds = %106
  %134 = load %union.StackValue*, %union.StackValue** %84, align 8, !tbaa !18
  %135 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 -1, i32 0
  %136 = bitcast %struct.TValue* %135 to i64*
  %137 = bitcast i8* %118 to i64*
  %138 = load i64, i64* %136, align 8
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 -1, i32 0, i32 1
  %140 = load i8, i8* %139, align 8, !tbaa !19
  br label %141

; <label>:141:                                    ; preds = %106, %133, %127, %119
  %142 = phi i8 [ %140, %133 ], [ %132, %127 ], [ %126, %119 ], [ 0, %106 ]
  %143 = getelementptr inbounds i8, i8* %118, i64 8
  store i8 %142, i8* %143, align 8, !tbaa !15
  %144 = getelementptr inbounds i8, i8* %118, i64 16
  %145 = bitcast i8* %144 to %union.StackValue*
  store i8* %144, i8** %85, align 8, !tbaa !18
  store %struct.CallInfo* %97, %struct.CallInfo** %81, align 8, !tbaa !27
  %146 = load i16, i16* %107, align 2, !tbaa !40
  %147 = trunc i16 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %86, align 1, !tbaa !43
  br label %149

; <label>:149:                                    ; preds = %149, %141
  %150 = phi %struct.CallInfo* [ %97, %141 ], [ %157, %149 ]
  %151 = phi %union.StackValue* [ %145, %141 ], [ %155, %149 ]
  %152 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %150, i64 0, i32 1
  %153 = load %union.StackValue*, %union.StackValue** %152, align 8, !tbaa !28
  %154 = icmp ult %union.StackValue* %151, %153
  %155 = select i1 %154, %union.StackValue* %153, %union.StackValue* %151
  %156 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %150, i64 0, i32 2
  %157 = load %struct.CallInfo*, %struct.CallInfo** %156, align 8, !tbaa !38
  %158 = icmp eq %struct.CallInfo* %157, null
  br i1 %158, label %159, label %149

; <label>:159:                                    ; preds = %149
  %160 = load i64, i64* %88, align 8, !tbaa !23
  %161 = ptrtoint %union.StackValue* %155 to i64
  %162 = sub i64 %161, %160
  %163 = lshr exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = add nsw i32 %164, 1
  %166 = sdiv i32 %165, 8
  %167 = add i32 %164, 11
  %168 = add i32 %167, %166
  %169 = icmp slt i32 %168, 1000000
  %170 = select i1 %169, i32 %168, i32 1000000
  %171 = icmp slt i32 %164, 999995
  br i1 %171, label %172, label %177

; <label>:172:                                    ; preds = %159
  %173 = load i32, i32* %89, align 4, !tbaa !32
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %177

; <label>:175:                                    ; preds = %172
  %176 = call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %170, i32 0) #9
  br label %177

; <label>:177:                                    ; preds = %175, %172, %159
  call void @luaE_shrinkCI(%struct.lua_State* nonnull %0) #9
  %178 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %97, i64 0, i32 4, i32 0, i32 1
  %179 = load i64, i64* %178, align 8, !tbaa !15
  store i64 %179, i64* %90, align 8, !tbaa !63
  %180 = call i32 @luaD_rawrunprotected(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @unroll, i8* nonnull %7)
  store i32 %180, i32* %6, align 4, !tbaa !62
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %91, label %219

; <label>:182:                                    ; preds = %102
  %183 = icmp slt i32 %92, 2
  br i1 %183, label %219, label %184, !prof !51

; <label>:184:                                    ; preds = %91, %182
  %185 = trunc i32 %92 to i8
  store i8 %185, i8* %8, align 2, !tbaa !24
  %186 = load %union.StackValue*, %union.StackValue** %84, align 8, !tbaa !18
  switch i32 %92, label %204 [
    i32 4, label %187
    i32 5, label %196
  ]

; <label>:187:                                    ; preds = %184
  %188 = load %struct.global_State*, %struct.global_State** %87, align 8, !tbaa !2
  %189 = getelementptr inbounds %struct.global_State, %struct.global_State* %188, i64 0, i32 39
  %190 = load %struct.TString*, %struct.TString** %189, align 8, !tbaa !11
  %191 = bitcast %union.StackValue* %186 to %struct.TString**
  store %struct.TString* %190, %struct.TString** %191, align 8, !tbaa !15
  %192 = getelementptr inbounds %struct.TString, %struct.TString* %190, i64 0, i32 1
  %193 = load i8, i8* %192, align 8, !tbaa !16
  %194 = or i8 %193, 64
  %195 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 0, i32 0, i32 1
  store i8 %194, i8* %195, align 8, !tbaa !19
  br label %212

; <label>:196:                                    ; preds = %184
  %197 = call %struct.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 23) #9
  %198 = bitcast %union.StackValue* %186 to %struct.TString**
  store %struct.TString* %197, %struct.TString** %198, align 8, !tbaa !15
  %199 = getelementptr inbounds %struct.TString, %struct.TString* %197, i64 0, i32 1
  %200 = load i8, i8* %199, align 8, !tbaa !16
  %201 = or i8 %200, 64
  %202 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 0, i32 0, i32 1
  store i8 %201, i8* %202, align 8, !tbaa !19
  %203 = load i32, i32* %6, align 4, !tbaa !62
  br label %212

; <label>:204:                                    ; preds = %184
  %205 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 -1, i32 0
  %206 = bitcast %struct.TValue* %205 to i64*
  %207 = bitcast %union.StackValue* %186 to i64*
  %208 = load i64, i64* %206, align 8
  store i64 %208, i64* %207, align 8
  %209 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 -1, i32 0, i32 1
  %210 = load i8, i8* %209, align 8, !tbaa !19
  %211 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 0, i32 0, i32 1
  store i8 %210, i8* %211, align 8, !tbaa !19
  br label %212

; <label>:212:                                    ; preds = %187, %196, %204
  %213 = phi i32 [ 4, %187 ], [ %203, %196 ], [ %92, %204 ]
  %214 = getelementptr inbounds %union.StackValue, %union.StackValue* %186, i64 1
  store %union.StackValue* %214, %union.StackValue** %84, align 8, !tbaa !18
  %215 = ptrtoint %union.StackValue* %214 to i64
  %216 = load %struct.CallInfo*, %struct.CallInfo** %81, align 8, !tbaa !27
  %217 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %216, i64 0, i32 1
  %218 = bitcast %union.StackValue** %217 to i64*
  store i64 %215, i64* %218, align 8, !tbaa !28
  br label %219

; <label>:219:                                    ; preds = %177, %76, %182, %212
  %220 = phi i32 [ %92, %182 ], [ %213, %212 ], [ %78, %76 ], [ %180, %177 ]
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %227

; <label>:222:                                    ; preds = %219
  %223 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %224 = load %struct.CallInfo*, %struct.CallInfo** %223, align 8, !tbaa !27
  %225 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %224, i64 0, i32 5, i32 0
  %226 = load i32, i32* %225, align 8, !tbaa !15
  br label %240

; <label>:227:                                    ; preds = %219
  %228 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %229 = bitcast %union.StackValue** %228 to i64*
  %230 = load i64, i64* %229, align 8, !tbaa !18
  %231 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %232 = load %struct.CallInfo*, %struct.CallInfo** %231, align 8, !tbaa !27
  %233 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %232, i64 0, i32 0
  %234 = load %union.StackValue*, %union.StackValue** %233, align 8, !tbaa !39
  %235 = getelementptr inbounds %union.StackValue, %union.StackValue* %234, i64 1
  %236 = ptrtoint %union.StackValue* %235 to i64
  %237 = sub i64 %230, %236
  %238 = lshr exact i64 %237, 4
  %239 = trunc i64 %238 to i32
  br label %240

; <label>:240:                                    ; preds = %227, %222
  %241 = phi i32 [ %226, %222 ], [ %239, %227 ]
  store i32 %241, i32* %3, align 4, !tbaa !62
  br label %242

; <label>:242:                                    ; preds = %240, %62, %29, %15
  %243 = phi i32 [ 2, %15 ], [ 2, %62 ], [ %220, %240 ], [ 2, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define internal void @resume(%struct.lua_State*, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %8 = load i8, i8* %7, align 2, !tbaa !24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !18
  %13 = sext i32 %4 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 %14
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 -1
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %16, i32 -1)
  br label %73

; <label>:17:                                     ; preds = %2
  store i8 0, i8* %7, align 2, !tbaa !24
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %19 = load i16, i16* %18, align 2, !tbaa !40
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %17
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %6) #9
  br label %33

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4, i32 0, i32 0
  %25 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %24, align 8, !tbaa !15
  %26 = icmp eq i32 (%struct.lua_State*, i32, i64)* %25, null
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4, i32 0, i32 2
  %29 = load i64, i64* %28, align 8, !tbaa !15
  %30 = tail call i32 %25(%struct.lua_State* nonnull %0, i32 1, i64 %29) #9
  br label %31

; <label>:31:                                     ; preds = %23, %27
  %32 = phi i32 [ %30, %27 ], [ %4, %23 ]
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %6, i32 %32)
  br label %33

; <label>:33:                                     ; preds = %31, %22
  %34 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %36 = icmp eq %struct.CallInfo* %34, %35
  br i1 %36, label %73, label %37

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %40

; <label>:40:                                     ; preds = %70, %37
  %41 = phi %struct.CallInfo* [ %34, %37 ], [ %71, %70 ]
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 7
  %43 = load i16, i16* %42, align 2, !tbaa !40
  %44 = and i16 %43, 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %69, label %46

; <label>:46:                                     ; preds = %40
  %47 = and i16 %43, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

; <label>:49:                                     ; preds = %46
  %50 = and i16 %43, -9
  store i16 %50, i16* %42, align 2, !tbaa !40
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 4, i32 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !15
  store i64 %52, i64* %38, align 8, !tbaa !63
  br label %53

; <label>:53:                                     ; preds = %49, %46
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 6
  %55 = load i16, i16* %54, align 4, !tbaa !55
  %56 = icmp slt i16 %55, 0
  br i1 %56, label %57, label %63

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 1
  %59 = load %union.StackValue*, %union.StackValue** %58, align 8, !tbaa !28
  %60 = load %union.StackValue*, %union.StackValue** %39, align 8, !tbaa !18
  %61 = icmp ult %union.StackValue* %59, %60
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %57
  store %union.StackValue* %60, %union.StackValue** %58, align 8, !tbaa !28
  br label %63

; <label>:63:                                     ; preds = %53, %57, %62
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 4, i32 0, i32 0
  %65 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %64, align 8, !tbaa !15
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 4, i32 0, i32 2
  %67 = load i64, i64* %66, align 8, !tbaa !15
  %68 = tail call i32 %65(%struct.lua_State* nonnull %0, i32 1, i64 %67) #9
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %41, i32 %68) #9
  br label %70

; <label>:69:                                     ; preds = %40
  tail call void @luaV_finishOp(%struct.lua_State* nonnull %0) #9
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %41) #9
  br label %70

; <label>:70:                                     ; preds = %69, %63
  %71 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !27
  %72 = icmp eq %struct.CallInfo* %71, %35
  br i1 %72, label %73, label %40

; <label>:73:                                     ; preds = %70, %33, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unroll(%struct.lua_State*, i8* readonly) #0 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !62
  tail call fastcc void @finishCcall(%struct.lua_State* %0, i32 %6)
  br label %7

; <label>:7:                                      ; preds = %2, %4
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %11 = icmp eq %struct.CallInfo* %9, %10
  br i1 %11, label %24, label %12

; <label>:12:                                     ; preds = %7
  br label %13

; <label>:13:                                     ; preds = %12, %21
  %14 = phi %struct.CallInfo* [ %22, %21 ], [ %9, %12 ]
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 7
  %16 = load i16, i16* %15, align 2, !tbaa !40
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %13
  tail call fastcc void @finishCcall(%struct.lua_State* nonnull %0, i32 1)
  br label %21

; <label>:20:                                     ; preds = %13
  tail call void @luaV_finishOp(%struct.lua_State* nonnull %0) #9
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %14) #9
  br label %21

; <label>:21:                                     ; preds = %20, %19
  %22 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !tbaa !27
  %23 = icmp eq %struct.CallInfo* %22, %10
  br i1 %23, label %24, label %13

; <label>:24:                                     ; preds = %21, %7
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @lua_isyieldable(%struct.lua_State* nocapture readonly) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %3 = load i32, i32* %2, align 8, !tbaa !29
  %4 = icmp ult i32 %3, 65536
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @lua_yieldk(%struct.lua_State*, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 8, !tbaa !29
  %9 = icmp ugt i32 %8, 65535
  br i1 %9, label %10, label %18, !prof !33

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 38
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !25
  %15 = icmp eq %struct.lua_State* %14, %0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %10
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0)) #10
  unreachable

; <label>:17:                                     ; preds = %10
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0)) #10
  unreachable

; <label>:18:                                     ; preds = %4
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  store i8 1, i8* %19, align 2, !tbaa !24
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %21 = load i16, i16* %20, align 2, !tbaa !40
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 5, i32 0
  store i32 0, i32* %25, align 8, !tbaa !15
  ret i32 0

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %3, i32 (%struct.lua_State*, i32, i64)** %27, align 8, !tbaa !15
  %28 = icmp eq i32 (%struct.lua_State*, i32, i64)* %3, null
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 4, i32 0, i32 2
  store i64 %2, i64* %30, align 8, !tbaa !15
  br label %31

; <label>:31:                                     ; preds = %26, %29
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 5, i32 0
  store i32 %1, i32* %32, align 8, !tbaa !15
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 1) #11
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*, i64, i64) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = bitcast %struct.CallInfo** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %10 = load i8, i8* %9, align 1, !tbaa !43
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %12 = load i64, i64* %11, align 8, !tbaa !63
  store i64 %4, i64* %11, align 8, !tbaa !63
  %13 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* %1, i8* %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %90, label %15, !prof !51

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %17 = bitcast %union.StackValue** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !23
  %19 = getelementptr inbounds i8, i8* %18, i64 %3
  %20 = bitcast i8* %19 to %union.StackValue*
  store i64 %8, i64* %7, align 8, !tbaa !27
  store i8 %10, i8* %9, align 1, !tbaa !43
  %21 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %20, i32 %13) #9
  %22 = load i8*, i8** %17, align 8, !tbaa !23
  %23 = getelementptr inbounds i8, i8* %22, i64 %3
  switch i32 %21, label %39 [
    i32 4, label %24
    i32 5, label %33
    i32 -2, label %48
  ]

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 39
  %28 = load %struct.TString*, %struct.TString** %27, align 8, !tbaa !11
  %29 = bitcast i8* %23 to %struct.TString**
  store %struct.TString* %28, %struct.TString** %29, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !16
  %32 = or i8 %31, 64
  br label %48

; <label>:33:                                     ; preds = %15
  %34 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 23) #9
  %35 = bitcast i8* %23 to %struct.TString**
  store %struct.TString* %34, %struct.TString** %35, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.TString, %struct.TString* %34, i64 0, i32 1
  %37 = load i8, i8* %36, align 8, !tbaa !16
  %38 = or i8 %37, 64
  br label %48

; <label>:39:                                     ; preds = %15
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8, !tbaa !18
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 -1, i32 0
  %43 = bitcast %struct.TValue* %42 to i64*
  %44 = bitcast i8* %23 to i64*
  %45 = load i64, i64* %43, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 -1, i32 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !19
  br label %48

; <label>:48:                                     ; preds = %15, %24, %33, %39
  %49 = phi i8 [ %32, %24 ], [ %38, %33 ], [ %47, %39 ], [ 0, %15 ]
  %50 = getelementptr inbounds i8, i8* %23, i64 8
  store i8 %49, i8* %50, align 8, !tbaa !15
  %51 = getelementptr inbounds i8, i8* %23, i64 16
  %52 = bitcast i8* %51 to %union.StackValue*
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %54 = bitcast %union.StackValue** %53 to i8**
  store i8* %51, i8** %54, align 8, !tbaa !18
  %55 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !38
  %56 = icmp eq %struct.CallInfo* %55, null
  br i1 %56, label %68, label %57

; <label>:57:                                     ; preds = %48
  br label %58

; <label>:58:                                     ; preds = %57, %58
  %59 = phi %struct.CallInfo* [ %66, %58 ], [ %55, %57 ]
  %60 = phi %union.StackValue* [ %64, %58 ], [ %52, %57 ]
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %59, i64 0, i32 1
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8, !tbaa !28
  %63 = icmp ult %union.StackValue* %60, %62
  %64 = select i1 %63, %union.StackValue* %62, %union.StackValue* %60
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %59, i64 0, i32 2
  %66 = load %struct.CallInfo*, %struct.CallInfo** %65, align 8, !tbaa !38
  %67 = icmp eq %struct.CallInfo* %66, null
  br i1 %67, label %68, label %58

; <label>:68:                                     ; preds = %58, %48
  %69 = phi %union.StackValue* [ %52, %48 ], [ %64, %58 ]
  %70 = bitcast %union.StackValue** %16 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !23
  %72 = ptrtoint %union.StackValue* %69 to i64
  %73 = sub i64 %72, %71
  %74 = lshr exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = add nsw i32 %75, 1
  %77 = sdiv i32 %76, 8
  %78 = add i32 %75, 11
  %79 = add i32 %78, %77
  %80 = icmp slt i32 %79, 1000000
  %81 = select i1 %80, i32 %79, i32 1000000
  %82 = icmp slt i32 %75, 999995
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %68
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %85 = load i32, i32* %84, align 4, !tbaa !32
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %83
  %88 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %81, i32 0) #9
  br label %89

; <label>:89:                                     ; preds = %68, %83, %87
  tail call void @luaE_shrinkCI(%struct.lua_State* nonnull %0) #9
  br label %90

; <label>:90:                                     ; preds = %5, %89
  %91 = phi i32 [ %21, %89 ], [ 0, %5 ]
  store i64 %12, i64* %11, align 8, !tbaa !63
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) local_unnamed_addr #0 {
  %5 = alloca %struct.SParser, align 8
  %6 = bitcast %struct.SParser* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 8, !tbaa !29
  %9 = add i32 %8, 65536
  store i32 %9, i32* %7, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 0
  store %struct.Zio* %1, %struct.Zio** %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 4
  store i8* %2, i8** %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 3
  store i8* %3, i8** %12, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 0, i32 2
  store i32 0, i32* %14, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 1, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %15, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 1, i32 2
  store i32 0, i32* %16, align 4, !tbaa !74
  %17 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 2, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %17, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 2, i32 2
  store i32 0, i32* %18, align 4, !tbaa !76
  %19 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 1, i32 0
  store i8* null, i8** %19, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 1, i32 2
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %22 = bitcast %union.StackValue** %21 to i64*
  %23 = bitcast i64* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %23, i8 0, i64 16, i32 8, i1 false)
  %24 = load i64, i64* %22, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %26 = bitcast %union.StackValue** %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !23
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %30 = load i64, i64* %29, align 8, !tbaa !63
  %31 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_parser, i8* nonnull %6, i64 %28, i64 %30)
  %32 = load i8*, i8** %19, align 8, !tbaa !77
  %33 = load i64, i64* %20, align 8, !tbaa !78
  %34 = call i8* @luaM_saferealloc_(%struct.lua_State* %0, i8* %32, i64 %33, i64 0) #9
  store i8* %34, i8** %19, align 8, !tbaa !77
  store i64 0, i64* %20, align 8, !tbaa !78
  %35 = bitcast %struct.Vardesc** %13 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !79
  %37 = load i32, i32* %14, align 4, !tbaa !72
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 1
  call void @luaM_free_(%struct.lua_State* %0, i8* %36, i64 %39) #9
  %40 = bitcast %struct.Labeldesc** %15 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !73
  %42 = load i32, i32* %16, align 4, !tbaa !74
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 24
  call void @luaM_free_(%struct.lua_State* %0, i8* %41, i64 %44) #9
  %45 = bitcast %struct.Labeldesc** %17 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !75
  %47 = load i32, i32* %18, align 4, !tbaa !76
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 24
  call void @luaM_free_(%struct.lua_State* %0, i8* %46, i64 %49) #9
  %50 = load i32, i32* %7, align 8, !tbaa !29
  %51 = add i32 %50, -65536
  store i32 %51, i32* %7, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #9
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @f_parser(%struct.lua_State*, i8*) #0 {
  %3 = bitcast i8* %1 to %struct.Zio**
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !80
  %7 = add i64 %6, -1
  store i64 %7, i64* %5, align 8, !tbaa !80
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !82
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %10, align 8, !tbaa !82
  %13 = load i8, i8* %11, align 1, !tbaa !15
  %14 = zext i8 %13 to i32
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @luaZ_fill(%struct.Zio* %4) #9
  br label %17

; <label>:17:                                     ; preds = %15, %9
  %18 = phi i32 [ %14, %9 ], [ %16, %15 ]
  %19 = icmp eq i32 %18, 27
  %20 = getelementptr inbounds i8, i8* %1, i64 80
  %21 = bitcast i8* %20 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !71
  %23 = icmp eq i8* %22, null
  br i1 %19, label %24, label %36

; <label>:24:                                     ; preds = %17
  br i1 %23, label %30, label %25

; <label>:25:                                     ; preds = %24
  %26 = tail call i8* @strchr(i8* nonnull %22, i32 98) #13
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %22) #9
  tail call void @luaD_throw(%struct.lua_State* %0, i32 3) #10
  unreachable

; <label>:30:                                     ; preds = %24, %25
  %31 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !64
  %32 = getelementptr inbounds i8, i8* %1, i64 88
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !70
  %35 = tail call %struct.LClosure* @luaU_undump(%struct.lua_State* %0, %struct.Zio* %31, i8* %34) #9
  br label %52

; <label>:36:                                     ; preds = %17
  br i1 %23, label %42, label %37

; <label>:37:                                     ; preds = %36
  %38 = tail call i8* @strchr(i8* nonnull %22, i32 116) #13
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %22) #9
  tail call void @luaD_throw(%struct.lua_State* %0, i32 3) #10
  unreachable

; <label>:42:                                     ; preds = %36, %37
  %43 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !64
  %44 = getelementptr inbounds i8, i8* %1, i64 8
  %45 = bitcast i8* %44 to %struct.Mbuffer*
  %46 = getelementptr inbounds i8, i8* %1, i64 32
  %47 = bitcast i8* %46 to %struct.Dyndata*
  %48 = getelementptr inbounds i8, i8* %1, i64 88
  %49 = bitcast i8* %48 to i8**
  %50 = load i8*, i8** %49, align 8, !tbaa !70
  %51 = tail call %struct.LClosure* @luaY_parser(%struct.lua_State* %0, %struct.Zio* %43, %struct.Mbuffer* nonnull %45, %struct.Dyndata* nonnull %47, i8* %50, i32 %18) #9
  br label %52

; <label>:52:                                     ; preds = %42, %30
  %53 = phi %struct.LClosure* [ %35, %30 ], [ %51, %42 ]
  tail call void @luaF_initupvals(%struct.lua_State* %0, %struct.LClosure* %53) #9
  ret void
}

declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @finishCcall(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %6 = load i16, i16* %5, align 2, !tbaa !40
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %2
  %10 = and i16 %6, -9
  store i16 %10, i16* %5, align 2, !tbaa !40
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  store i64 %12, i64* %13, align 8, !tbaa !63
  br label %14

; <label>:14:                                     ; preds = %2, %9
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 6
  %16 = load i16, i16* %15, align 4, !tbaa !55
  %17 = icmp slt i16 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8, !tbaa !18
  %23 = icmp ult %union.StackValue* %20, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store %union.StackValue* %22, %union.StackValue** %19, align 8, !tbaa !28
  br label %25

; <label>:25:                                     ; preds = %24, %18, %14
  %26 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 0
  %27 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %26, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 2
  %29 = load i64, i64* %28, align 8, !tbaa !15
  %30 = tail call i32 %27(%struct.lua_State* nonnull %0, i32 %1, i64 %29) #9
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %4, i32 %30)
  ret void
}

declare hidden void @luaV_finishOp(%struct.lua_State*) local_unnamed_addr #2

declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

declare hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #2

declare hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) local_unnamed_addr #2

declare hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind returns_twice }
attributes #13 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 24}
!3 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !4, i64 160, !9, i64 168, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !7, i64 60, !7, i64 62}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !4, i64 264}
!12 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !13, i64 48, !14, i64 64, !14, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!13 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!14 = !{!"TValue", !5, i64 0, !5, i64 8}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !5, i64 8}
!17 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!18 = !{!3, !4, i64 16}
!19 = !{!14, !5, i64 8}
!20 = !{!3, !4, i64 88}
!21 = !{!22, !10, i64 208}
!22 = !{!"lua_longjmp", !4, i64 0, !5, i64 8, !10, i64 208}
!23 = !{!3, !4, i64 56}
!24 = !{!3, !5, i64 10}
!25 = !{!12, !4, i64 256}
!26 = !{!12, !4, i64 248}
!27 = !{!3, !4, i64 32}
!28 = !{!8, !4, i64 8}
!29 = !{!3, !10, i64 176}
!30 = !{!3, !7, i64 12}
!31 = !{!22, !4, i64 0}
!32 = !{!3, !10, i64 180}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!37, !4, i64 16}
!37 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!38 = !{!4, !4, i64 0}
!39 = !{!8, !4, i64 0}
!40 = !{!8, !7, i64 62}
!41 = !{!3, !4, i64 48}
!42 = !{!3, !4, i64 160}
!43 = !{!3, !5, i64 11}
!44 = !{!45, !10, i64 0}
!45 = !{!"lua_Debug", !10, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !7, i64 64, !7, i64 66, !5, i64 68, !4, i64 128}
!46 = !{!45, !10, i64 48}
!47 = !{!45, !4, i64 128}
!48 = !{!3, !10, i64 192}
!49 = !{!50, !5, i64 10}
!50 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!8, !4, i64 16}
!53 = !{!50, !5, i64 11}
!54 = !{!3, !4, i64 40}
!55 = !{!8, !7, i64 60}
!56 = distinct !{!56, !35}
!57 = !{!50, !5, i64 12}
!58 = !{!12, !9, i64 24}
!59 = distinct !{!59, !35}
!60 = !{!50, !4, i64 64}
!61 = !{!8, !4, i64 24}
!62 = !{!10, !10, i64 0}
!63 = !{!3, !9, i64 168}
!64 = !{!65, !4, i64 0}
!65 = !{!"SParser", !4, i64 0, !66, i64 8, !67, i64 32, !4, i64 80, !4, i64 88}
!66 = !{!"Mbuffer", !4, i64 0, !9, i64 8, !9, i64 16}
!67 = !{!"Dyndata", !68, i64 0, !69, i64 16, !69, i64 32}
!68 = !{!"", !4, i64 0, !10, i64 8, !10, i64 12}
!69 = !{!"Labellist", !4, i64 0, !10, i64 8, !10, i64 12}
!70 = !{!65, !4, i64 88}
!71 = !{!65, !4, i64 80}
!72 = !{!65, !10, i64 44}
!73 = !{!65, !4, i64 48}
!74 = !{!65, !10, i64 60}
!75 = !{!65, !4, i64 64}
!76 = !{!65, !10, i64 76}
!77 = !{!65, !4, i64 8}
!78 = !{!65, !9, i64 24}
!79 = !{!65, !4, i64 32}
!80 = !{!81, !9, i64 0}
!81 = !{!"Zio", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32}
!82 = !{!81, !4, i64 8}
