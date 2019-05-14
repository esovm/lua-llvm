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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize noreturn nounwind optsize uwtable
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
  br i1 %39, label %53, label %40

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8, !tbaa !18
  tail call void @luaD_seterrorobj(%struct.lua_State* nonnull %0, i32 %14, %union.StackValue* %42) #12
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1
  %46 = load %union.StackValue*, %union.StackValue** %45, align 8, !tbaa !28
  %47 = load %union.StackValue*, %union.StackValue** %41, align 8, !tbaa !18
  %48 = icmp ult %union.StackValue* %46, %47
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %40
  store %union.StackValue* %47, %union.StackValue** %45, align 8, !tbaa !28
  br label %50

; <label>:50:                                     ; preds = %49, %40
  %51 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %37, align 8, !tbaa !26
  %52 = tail call i32 %51(%struct.lua_State* nonnull %0) #9
  br label %53

; <label>:53:                                     ; preds = %36, %50
  tail call void @abort() #10
  unreachable
}

; Function Attrs: minsize noreturn nounwind optsize
declare void @longjmp(%struct.__jmp_buf_tag*, i32) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize noreturn nounwind optsize
declare void @abort() local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.lua_longjmp, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %6 = load i32, i32* %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %8 = load i16, i16* %7, align 4, !tbaa !30
  %9 = zext i16 %8 to i32
  %10 = sub i32 %6, %9
  %11 = bitcast %struct.lua_longjmp* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %11) #13
  %12 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2
  store volatile i32 0, i32* %12, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15
  %14 = bitcast %struct.lua_longjmp** %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !20
  %16 = bitcast %struct.lua_longjmp* %4 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !31
  store %struct.lua_longjmp* %4, %struct.lua_longjmp** %13, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0
  %18 = call i32 @_setjmp(%struct.__jmp_buf_tag* nonnull %17) #14
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
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %11) #13
  ret i32 %26
}

; Function Attrs: minsize nounwind optsize returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %15, label %17, label %16, !prof !33

; <label>:16:                                     ; preds = %3
  br label %20

; <label>:17:                                     ; preds = %3
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %82, label %19

; <label>:19:                                     ; preds = %17
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #11
  unreachable

; <label>:20:                                     ; preds = %16, %23
  %21 = phi i64 [ %25, %23 ], [ %9, %16 ]
  %22 = icmp slt i64 %21, %11
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %21, i32 0, i32 1
  store i8 0, i8* %24, align 8, !tbaa !15
  %25 = add nsw i64 %21, 1
  br label %20

; <label>:26:                                     ; preds = %20
  %27 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !23
  %28 = icmp eq %union.StackValue* %27, %14
  br i1 %28, label %78, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %31 = bitcast %union.StackValue** %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !18
  %33 = ptrtoint %union.StackValue* %27 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %35
  store %union.StackValue* %36, %union.StackValue** %30, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  br label %38

; <label>:38:                                     ; preds = %42, %29
  %39 = phi %struct.UpVal** [ %37, %29 ], [ %49, %42 ]
  %40 = load %struct.UpVal*, %struct.UpVal** %39, align 8, !tbaa !15
  %41 = icmp eq %struct.UpVal* %40, null
  br i1 %41, label %50, label %42

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %40, i64 0, i32 3
  %44 = bitcast %struct.TValue** %43 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !34
  %46 = sub i64 %45, %33
  %47 = ashr exact i64 %46, 4
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %47, i32 0
  store %struct.TValue* %48, %struct.TValue** %43, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %40, i64 0, i32 4, i32 0, i32 0
  br label %38

; <label>:50:                                     ; preds = %38
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  br label %52

; <label>:52:                                     ; preds = %76, %50
  %53 = phi %struct.CallInfo** [ %51, %50 ], [ %77, %76 ]
  %54 = load %struct.CallInfo*, %struct.CallInfo** %53, align 8, !tbaa !36
  %55 = icmp eq %struct.CallInfo* %54, null
  br i1 %55, label %78, label %56

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i64 0, i32 1
  %58 = bitcast %union.StackValue** %57 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !28
  %60 = sub i64 %59, %33
  %61 = ashr exact i64 %60, 4
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %61
  store %union.StackValue* %62, %union.StackValue** %57, align 8, !tbaa !28
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i64 0, i32 0
  %64 = bitcast %struct.CallInfo* %54 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !37
  %66 = sub i64 %65, %33
  %67 = ashr exact i64 %66, 4
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %67
  store %union.StackValue* %68, %union.StackValue** %63, align 8, !tbaa !37
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i64 0, i32 7
  %70 = load i16, i16* %69, align 2, !tbaa !38
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %56
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i64 0, i32 4, i32 0, i32 1
  %75 = bitcast i64* %74 to i32*
  store i32 1, i32* %75, align 8, !tbaa !15
  br label %76

; <label>:76:                                     ; preds = %73, %56
  %77 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i64 0, i32 2
  br label %52

; <label>:78:                                     ; preds = %52, %26
  store i8* %13, i8** %7, align 8, !tbaa !23
  store i32 %1, i32* %4, align 4, !tbaa !32
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %11
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %79, i64 -5
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  store %union.StackValue* %80, %union.StackValue** %81, align 8, !tbaa !39
  br label %82

; <label>:82:                                     ; preds = %17, %78
  %83 = phi i32 [ 1, %78 ], [ 0, %17 ]
  ret i32 %83
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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
  %29 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 1000200, i32 %2) #12
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10
  unreachable

; <label>:32:                                     ; preds = %10
  %33 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %26, i32 %2) #12
  br label %34

; <label>:34:                                     ; preds = %28, %7, %32
  %35 = phi i32 [ %33, %32 ], [ 0, %7 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = load %union.StackValue*, %union.StackValue** %2, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  br label %5

; <label>:5:                                      ; preds = %10, %1
  %6 = phi %struct.CallInfo** [ %4, %1 ], [ %15, %10 ]
  %7 = phi %union.StackValue* [ %3, %1 ], [ %14, %10 ]
  %8 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !tbaa !36
  %9 = icmp eq %struct.CallInfo* %8, null
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i64 0, i32 1
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !28
  %13 = icmp ult %union.StackValue* %7, %12
  %14 = select i1 %13, %union.StackValue* %12, %union.StackValue* %7
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i64 0, i32 2
  br label %5

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %18 = bitcast %union.StackValue** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !23
  %20 = ptrtoint %union.StackValue* %7 to i64
  %21 = sub i64 %20, %19
  %22 = lshr exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %23, 1
  %25 = sdiv i32 %24, 8
  %26 = add i32 %23, 11
  %27 = add i32 %26, %25
  %28 = icmp slt i32 %27, 1000000
  %29 = select i1 %28, i32 %27, i32 1000000
  %30 = icmp slt i32 %23, 999995
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %16
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %33 = load i32, i32* %32, align 4, !tbaa !32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %29, i32 0) #12
  br label %37

; <label>:37:                                     ; preds = %16, %31, %35
  tail call void @luaE_shrinkCI(%struct.lua_State* nonnull %0) #9
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaE_shrinkCI(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %3 = bitcast %union.StackValue** %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = bitcast %union.StackValue** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !18
  %8 = sub i64 %4, %7
  %9 = icmp slt i64 %8, 32
  %10 = inttoptr i64 %7 to %union.StackValue*
  br i1 %9, label %11, label %14

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 1, i32 1) #12
  %13 = load %union.StackValue*, %union.StackValue** %5, align 8, !tbaa !18
  br label %14

; <label>:14:                                     ; preds = %1, %11
  %15 = phi %union.StackValue* [ %10, %1 ], [ %13, %11 ]
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) local_unnamed_addr #0 {
  %6 = alloca %struct.lua_Debug, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %8 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8, !tbaa !40
  %9 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %8, null
  br i1 %9, label %74, label %10

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !41
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %74, label %14

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
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %28) #13
  %29 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 0
  store i32 %1, i32* %29, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 6
  store i32 %2, i32* %30, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i64 0, i32 16
  store %struct.CallInfo* %16, %struct.CallInfo** %31, align 8, !tbaa !45
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
  %48 = load i64, i64* %47, align 8, !tbaa !39
  %49 = sub i64 %48, %43
  %50 = icmp slt i64 %49, 336
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %42
  %52 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 20, i32 1) #12
  %53 = load %union.StackValue*, %union.StackValue** %17, align 8, !tbaa !18
  %54 = load %union.StackValue*, %union.StackValue** %24, align 8, !tbaa !28
  br label %55

; <label>:55:                                     ; preds = %42, %51
  %56 = phi %union.StackValue* [ %33, %42 ], [ %54, %51 ]
  %57 = phi %union.StackValue* [ %45, %42 ], [ %53, %51 ]
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 20
  %59 = icmp ugt %union.StackValue* %58, %56
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %55
  store %union.StackValue* %58, %union.StackValue** %24, align 8, !tbaa !28
  br label %61

; <label>:61:                                     ; preds = %60, %55
  store i8 0, i8* %11, align 1, !tbaa !41
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 7
  %63 = load i16, i16* %62, align 2, !tbaa !38
  %64 = or i16 %63, %44
  store i16 %64, i16* %62, align 2, !tbaa !38
  call void %8(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %6) #9
  store i8 1, i8* %11, align 1, !tbaa !41
  %65 = bitcast %union.StackValue** %20 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !23
  %67 = getelementptr inbounds i8, i8* %66, i64 %27
  %68 = bitcast %union.StackValue** %24 to i8**
  store i8* %67, i8** %68, align 8, !tbaa !28
  %69 = getelementptr inbounds i8, i8* %66, i64 %23
  %70 = bitcast %union.StackValue** %17 to i8**
  store i8* %69, i8** %70, align 8, !tbaa !18
  %71 = load i16, i16* %62, align 2, !tbaa !38
  %72 = xor i16 %44, -1
  %73 = and i16 %71, %72
  store i16 %73, i16* %62, align 2, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %28) #13
  br label %74

; <label>:74:                                     ; preds = %10, %5, %61
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo* nocapture) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %4 = load i32, i32* %3, align 8, !tbaa !46
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %9 = load i16, i16* %8, align 2, !tbaa !38
  %10 = lshr i16 %9, 2
  %11 = and i16 %10, 4
  %12 = zext i16 %11 to i32
  %13 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %14 = load %struct.LClosure**, %struct.LClosure*** %13, align 8, !tbaa !37
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
  %28 = load i8, i8* %27, align 2, !tbaa !47
  %29 = zext i8 %28 to i32
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 %12, i32 -1, i32 1, i32 %29) #12
  %30 = load i32*, i32** %24, align 8, !tbaa !15
  %31 = getelementptr inbounds i32, i32* %30, i64 -1
  store i32* %31, i32** %24, align 8, !tbaa !15
  br label %32

; <label>:32:                                     ; preds = %2, %7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0
  %4 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %3, i32 23) #9
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !19
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %10, label %9, !prof !49

; <label>:9:                                      ; preds = %2
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !18
  br label %13

; <label>:13:                                     ; preds = %16, %10
  %14 = phi %union.StackValue* [ %12, %10 ], [ %24, %16 ]
  %15 = icmp ugt %union.StackValue* %14, %1
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1, i32 0
  %18 = bitcast %struct.TValue* %17 to i64*
  %19 = bitcast %union.StackValue* %14 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1, i32 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 0, i32 0, i32 1
  store i8 %22, i8* %23, align 8, !tbaa !19
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1
  br label %13

; <label>:25:                                     ; preds = %13
  %26 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !18
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 1
  store %union.StackValue* %27, %union.StackValue** %11, align 8, !tbaa !18
  %28 = bitcast %struct.TValue* %4 to i64*
  %29 = bitcast %union.StackValue* %1 to i64*
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %29, align 8
  %31 = load i8, i8* %5, align 8, !tbaa !19
  %32 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  store i8 %31, i8* %32, align 8, !tbaa !19
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo* nocapture, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %5 = load i32, i32* %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %9 = bitcast %struct.CallInfo** %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !50
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
  %23 = load i16, i16* %22, align 2, !tbaa !38
  %24 = and i16 %23, 6
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %51

; <label>:26:                                     ; preds = %11
  %27 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %28 = load %struct.LClosure**, %struct.LClosure*** %27, align 8, !tbaa !37
  %29 = load %struct.LClosure*, %struct.LClosure** %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 5
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 4
  %33 = load i8, i8* %32, align 1, !tbaa !51
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %37 = bitcast %union.anon.0* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i64 0, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !15
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 3
  %41 = load i8, i8* %40, align 2, !tbaa !47
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
  %57 = load %union.StackValue*, %union.StackValue** %56, align 8, !tbaa !37
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 %58
  store %union.StackValue* %59, %union.StackValue** %56, align 8, !tbaa !37
  %60 = ptrtoint %union.StackValue* %16 to i64
  %61 = ptrtoint %union.StackValue* %59 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 65535
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 1, i32 -1, i32 %65, i32 %2) #9
  %66 = load %union.StackValue*, %union.StackValue** %56, align 8, !tbaa !37
  %67 = sub nsw i64 0, %58
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i64 %67
  store %union.StackValue* %68, %union.StackValue** %56, align 8, !tbaa !37
  br label %69

; <label>:69:                                     ; preds = %55, %51
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %71 = load %struct.CallInfo*, %struct.CallInfo** %70, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 7
  %73 = load i16, i16* %72, align 2, !tbaa !38
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
  store i64 %80, i64* %82, align 8, !tbaa !52
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
  %93 = load %union.StackValue*, %union.StackValue** %92, align 8, !tbaa !37
  %94 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %95 = load i16, i16* %94, align 4, !tbaa !53
  %96 = sext i16 %95 to i32
  switch i32 %96, label %116 [
    i32 0, label %97
    i32 1, label %99
    i32 -1, label %132
  ]

; <label>:97:                                     ; preds = %88
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %93, %union.StackValue** %98, align 8, !tbaa !18
  br label %167

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
  br label %167

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
  %140 = sext i32 %133 to i64
  br label %141

; <label>:141:                                    ; preds = %146, %132
  %142 = phi i64 [ %155, %146 ], [ 0, %132 ]
  %143 = icmp slt i64 %142, %137
  %144 = icmp slt i64 %142, %140
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %156

; <label>:146:                                    ; preds = %141
  %147 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %142, i32 0
  %148 = getelementptr inbounds %union.StackValue, %union.StackValue* %139, i64 %142
  %149 = bitcast %union.StackValue* %148 to i64*
  %150 = bitcast %struct.TValue* %147 to i64*
  %151 = load i64, i64* %149, align 8
  store i64 %151, i64* %150, align 8
  %152 = getelementptr inbounds %union.StackValue, %union.StackValue* %148, i64 0, i32 0, i32 1
  %153 = load i8, i8* %152, align 8, !tbaa !19
  %154 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %142, i32 0, i32 1
  store i8 %153, i8* %154, align 8, !tbaa !19
  %155 = add nuw nsw i64 %142, 1
  br label %141

; <label>:156:                                    ; preds = %141
  %157 = and i64 %142, 4294967295
  br label %158

; <label>:158:                                    ; preds = %162, %156
  %159 = phi i64 [ %164, %162 ], [ %157, %156 ]
  %160 = trunc i64 %159 to i32
  %161 = icmp sgt i32 %133, %160
  br i1 %161, label %162, label %165

; <label>:162:                                    ; preds = %158
  %163 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %159, i32 0, i32 1
  store i8 0, i8* %163, align 8, !tbaa !15
  %164 = add nuw nsw i64 %159, 1
  br label %158

; <label>:165:                                    ; preds = %158
  %166 = getelementptr inbounds %union.StackValue, %union.StackValue* %134, i64 %140
  store %union.StackValue* %166, %union.StackValue** %135, align 8, !tbaa !18
  br label %167

; <label>:167:                                    ; preds = %97, %112, %165
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo* nocapture, %union.StackValue* nocapture readonly, i32) local_unnamed_addr #0 {
  %5 = bitcast %union.StackValue* %2 to %struct.LClosure**
  %6 = load %struct.LClosure*, %struct.LClosure** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %6, i64 0, i32 5
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 5
  %10 = load i8, i8* %9, align 4, !tbaa !54
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 3
  %12 = load i8, i8* %11, align 2, !tbaa !47
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %14 = sext i32 %3 to i64
  br label %15

; <label>:15:                                     ; preds = %18, %4
  %16 = phi i64 [ %28, %18 ], [ 0, %4 ]
  %17 = icmp slt i64 %16, %14
  br i1 %17, label %18, label %29

; <label>:18:                                     ; preds = %15
  %19 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !37
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 %16, i32 0
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %16, i32 0
  %22 = bitcast %struct.TValue* %21 to i64*
  %23 = bitcast %struct.TValue* %20 to i64*
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 %16, i32 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 %16, i32 0, i32 1
  store i8 %26, i8* %27, align 8, !tbaa !19
  %28 = add nuw nsw i64 %16, 1
  br label %15

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %31 = bitcast %union.StackValue** %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %34 = bitcast %union.StackValue** %33 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !18
  %36 = sub i64 %32, %35
  %37 = ashr exact i64 %36, 4
  %38 = zext i8 %10 to i64
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %49, label %40

; <label>:40:                                     ; preds = %29
  %41 = zext i8 %10 to i32
  %42 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %41, i32 1) #12
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8, !tbaa !2
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i64 0, i32 3
  %46 = load i64, i64* %45, align 8, !tbaa !55
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %40
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %49

; <label>:49:                                     ; preds = %29, %40, %48
  %50 = load %union.StackValue*, %union.StackValue** %13, align 8, !tbaa !37
  %51 = zext i8 %12 to i64
  br label %52

; <label>:52:                                     ; preds = %55, %49
  %53 = phi i64 [ %57, %55 ], [ %14, %49 ]
  %54 = icmp sgt i64 %53, %51
  br i1 %54, label %58, label %55

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %union.StackValue, %union.StackValue* %50, i64 %53, i32 0, i32 1
  store i8 0, i8* %56, align 8, !tbaa !15
  %57 = add nsw i64 %53, 1
  br label %52

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %50, i64 1
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 %38
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  store %union.StackValue* %60, %union.StackValue** %61, align 8, !tbaa !28
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16
  %63 = bitcast i32** %62 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !56
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %66 = bitcast %union.anon.0* %65 to i64*
  store i64 %64, i64* %66, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 7
  %68 = load i16, i16* %67, align 2, !tbaa !38
  %69 = or i16 %68, 16
  store i16 %69, i16* %67, align 2, !tbaa !38
  %70 = shl i64 %53, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %50, i64 %71
  store %union.StackValue* %72, %union.StackValue** %33, align 8, !tbaa !18
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  br label %5

; <label>:5:                                      ; preds = %149, %3
  %6 = load i8, i8* %4, align 8, !tbaa !19
  %7 = trunc i8 %6 to i6
  switch i6 %7, label %149 [
    i6 -10, label %8
    i6 -26, label %12
    i6 22, label %74
  ]

; <label>:8:                                      ; preds = %5
  %9 = bitcast %union.StackValue* %1 to %struct.CClosure**
  %10 = load %struct.CClosure*, %struct.CClosure** %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %10, i64 0, i32 5
  br label %14

; <label>:12:                                     ; preds = %5
  %13 = bitcast %union.StackValue* %1 to i32 (%struct.lua_State*)**
  br label %14

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 (%struct.lua_State*)** [ %13, %12 ], [ %11, %8 ]
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %18 = bitcast %union.StackValue** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %21 = bitcast %union.StackValue** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !18
  %23 = sub i64 %19, %22
  %24 = icmp slt i64 %23, 336
  br i1 %24, label %25, label %43

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %27 = bitcast %union.StackValue** %26 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !23
  %29 = ptrtoint %union.StackValue* %1 to i64
  %30 = sub i64 %29, %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8, !tbaa !2
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 3
  %34 = load i64, i64* %33, align 8, !tbaa !55
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %25
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %37

; <label>:37:                                     ; preds = %36, %25
  %38 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 20, i32 1) #12
  %39 = bitcast %union.StackValue** %26 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !23
  %41 = getelementptr inbounds i8, i8* %40, i64 %30
  %42 = bitcast i8* %41 to %union.StackValue*
  br label %43

; <label>:43:                                     ; preds = %14, %37
  %44 = phi %union.StackValue* [ %42, %37 ], [ %1, %14 ]
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 3
  %48 = load %struct.CallInfo*, %struct.CallInfo** %47, align 8, !tbaa !57
  %49 = icmp eq %struct.CallInfo* %48, null
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %43
  %51 = tail call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* nonnull %0) #9
  br label %52

; <label>:52:                                     ; preds = %43, %50
  %53 = phi %struct.CallInfo* [ %51, %50 ], [ %48, %43 ]
  store %struct.CallInfo* %53, %struct.CallInfo** %45, align 8, !tbaa !27
  %54 = trunc i32 %2 to i16
  %55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 6
  store i16 %54, i16* %55, align 4, !tbaa !53
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 7
  store i16 2, i16* %56, align 2, !tbaa !38
  %57 = load %union.StackValue*, %union.StackValue** %20, align 8, !tbaa !18
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 20
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 1
  store %union.StackValue* %58, %union.StackValue** %59, align 8, !tbaa !28
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 0
  store %union.StackValue* %44, %union.StackValue** %60, align 8, !tbaa !37
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %62 = load i32, i32* %61, align 8, !tbaa !46
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

; <label>:65:                                     ; preds = %52
  %66 = ptrtoint %union.StackValue* %57 to i64
  %67 = ptrtoint %union.StackValue* %44 to i64
  %68 = sub i64 %66, %67
  %69 = lshr exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = add nsw i32 %70, -1
  tail call void @luaD_hook(%struct.lua_State* nonnull %0, i32 0, i32 -1, i32 1, i32 %71) #12
  br label %72

; <label>:72:                                     ; preds = %52, %65
  %73 = tail call i32 %16(%struct.lua_State* nonnull %0) #9
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %53, i32 %73) #12
  br label %150

; <label>:74:                                     ; preds = %5
  %75 = bitcast %union.StackValue* %1 to %struct.LClosure**
  %76 = load %struct.LClosure*, %struct.LClosure** %75, align 8, !tbaa !15
  %77 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %76, i64 0, i32 5
  %78 = load %struct.Proto*, %struct.Proto** %77, align 8, !tbaa !15
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %80 = bitcast %union.StackValue** %79 to i64*
  %81 = load i64, i64* %80, align 8, !tbaa !18
  %82 = ptrtoint %union.StackValue* %1 to i64
  %83 = sub i64 %81, %82
  %84 = lshr exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %85, -1
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 3
  %88 = load i8, i8* %87, align 2, !tbaa !47
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 5
  %91 = load i8, i8* %90, align 4, !tbaa !54
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %94 = bitcast %union.StackValue** %93 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !39
  %96 = sub i64 %95, %81
  %97 = ashr exact i64 %96, 4
  %98 = zext i8 %91 to i64
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %117, label %100

; <label>:100:                                    ; preds = %74
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %102 = bitcast %union.StackValue** %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !23
  %104 = sub i64 %82, %103
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %106 = load %struct.global_State*, %struct.global_State** %105, align 8, !tbaa !2
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i64 0, i32 3
  %108 = load i64, i64* %107, align 8, !tbaa !55
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %100
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #9
  br label %111

; <label>:111:                                    ; preds = %110, %100
  %112 = tail call i32 @luaD_growstack(%struct.lua_State* nonnull %0, i32 %92, i32 1) #12
  %113 = bitcast %union.StackValue** %101 to i8**
  %114 = load i8*, i8** %113, align 8, !tbaa !23
  %115 = getelementptr inbounds i8, i8* %114, i64 %104
  %116 = bitcast i8* %115 to %union.StackValue*
  br label %117

; <label>:117:                                    ; preds = %74, %111
  %118 = phi %union.StackValue* [ %116, %111 ], [ %1, %74 ]
  %119 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %120 = load %struct.CallInfo*, %struct.CallInfo** %119, align 8, !tbaa !27
  %121 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %120, i64 0, i32 3
  %122 = load %struct.CallInfo*, %struct.CallInfo** %121, align 8, !tbaa !57
  %123 = icmp eq %struct.CallInfo* %122, null
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %117
  %125 = tail call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* nonnull %0) #9
  br label %126

; <label>:126:                                    ; preds = %117, %124
  %127 = phi %struct.CallInfo* [ %125, %124 ], [ %122, %117 ]
  store %struct.CallInfo* %127, %struct.CallInfo** %119, align 8, !tbaa !27
  %128 = trunc i32 %2 to i16
  %129 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %127, i64 0, i32 6
  store i16 %128, i16* %129, align 4, !tbaa !53
  %130 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 16
  %131 = bitcast i32** %130 to i64*
  %132 = load i64, i64* %131, align 8, !tbaa !56
  %133 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %127, i64 0, i32 4
  %134 = bitcast %union.anon.0* %133 to i64*
  store i64 %132, i64* %134, align 8, !tbaa !15
  %135 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %127, i64 0, i32 7
  store i16 0, i16* %135, align 2, !tbaa !38
  %136 = getelementptr inbounds %union.StackValue, %union.StackValue* %118, i64 1
  %137 = getelementptr inbounds %union.StackValue, %union.StackValue* %136, i64 %98
  %138 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %127, i64 0, i32 1
  store %union.StackValue* %137, %union.StackValue** %138, align 8, !tbaa !28
  %139 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %127, i64 0, i32 0
  store %union.StackValue* %118, %union.StackValue** %139, align 8, !tbaa !37
  br label %140

; <label>:140:                                    ; preds = %143, %126
  %141 = phi i32 [ %86, %126 ], [ %147, %143 ]
  %142 = icmp slt i32 %141, %89
  br i1 %142, label %143, label %148

; <label>:143:                                    ; preds = %140
  %144 = load %union.StackValue*, %union.StackValue** %79, align 8, !tbaa !18
  %145 = getelementptr inbounds %union.StackValue, %union.StackValue* %144, i64 1
  store %union.StackValue* %145, %union.StackValue** %79, align 8, !tbaa !18
  %146 = getelementptr inbounds %union.StackValue, %union.StackValue* %144, i64 0, i32 0, i32 1
  store i8 0, i8* %146, align 8, !tbaa !15
  %147 = add nsw i32 %141, 1
  br label %140

; <label>:148:                                    ; preds = %140
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* %127) #9
  br label %150

; <label>:149:                                    ; preds = %5
  tail call void @luaD_tryfuncTM(%struct.lua_State* %0, %union.StackValue* nonnull %1) #12
  br label %5

; <label>:150:                                    ; preds = %148, %72
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* %1, i32 %2) #12
  %11 = load i32, i32* %4, align 8, !tbaa !29
  %12 = add i32 %11, -65546
  store i32 %12, i32* %4, align 8, !tbaa !29
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaE_freeCI(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define i32 @lua_resume(%struct.lua_State*, %struct.lua_State* readonly, i32, i32* nocapture) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %2, i32* %5, align 4, !tbaa !58
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %9 = load i8, i8* %8, align 2, !tbaa !24
  switch i8 %9, label %16 [
    i8 0, label %10
    i8 1, label %17
  ]

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  %14 = icmp eq %struct.CallInfo* %12, %13
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %10
  tail call fastcc void @resume_error(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %2) #12
  br label %113

; <label>:16:                                     ; preds = %4
  tail call fastcc void @resume_error(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %2) #12
  br label %113

; <label>:17:                                     ; preds = %4, %10
  %18 = icmp eq %struct.lua_State* %1, null
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 1, i32* %20, align 8
  br label %37

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 19
  %23 = load i32, i32* %22, align 8, !tbaa !29
  %24 = and i32 %23, 65535
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 5
  %26 = load i16, i16* %25, align 4, !tbaa !30
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %29 = load i16, i16* %28, align 4, !tbaa !30
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %24, 10
  %32 = sub nsw i32 %31, %27
  %33 = add nsw i32 %32, %30
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 %33, i32* %34, align 8
  %35 = icmp ugt i32 %33, 2199
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %21
  tail call fastcc void @resume_error(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %2) #12
  br label %113

; <label>:37:                                     ; preds = %19, %21
  %38 = bitcast i32* %5 to i8*
  %39 = call i32 @luaD_rawrunprotected(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @resume, i8* nonnull %38) #12
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %42 = bitcast %union.StackValue** %41 to i8**
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  br label %45

; <label>:45:                                     ; preds = %60, %37
  %46 = phi i32 [ %39, %37 ], [ %79, %60 ]
  store i32 %46, i32* %6, align 4, !tbaa !58
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %92

; <label>:48:                                     ; preds = %45
  br label %49

; <label>:49:                                     ; preds = %48, %58
  %50 = phi %struct.CallInfo** [ %59, %58 ], [ %40, %48 ]
  %51 = load %struct.CallInfo*, %struct.CallInfo** %50, align 8, !tbaa !36
  %52 = icmp eq %struct.CallInfo* %51, null
  br i1 %52, label %80, label %53

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 7
  %55 = load i16, i16* %54, align 2, !tbaa !38
  %56 = and i16 %55, 8
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 2
  br label %49

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 7
  %62 = load i8*, i8** %42, align 8, !tbaa !23
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 5, i32 0
  %64 = load i32, i32* %63, align 8, !tbaa !15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = bitcast i8* %66 to %union.StackValue*
  %68 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %67, i32 %46) #9
  %69 = load i8*, i8** %42, align 8, !tbaa !23
  %70 = load i32, i32* %63, align 8, !tbaa !15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %union.StackValue*
  call void @luaD_seterrorobj(%struct.lua_State* %0, i32 %46, %union.StackValue* %73) #9
  store %struct.CallInfo* %51, %struct.CallInfo** %40, align 8, !tbaa !27
  %74 = load i16, i16* %61, align 2, !tbaa !38
  %75 = trunc i16 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %43, align 1, !tbaa !41
  call void @luaD_shrinkstack(%struct.lua_State* %0) #9
  %77 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 4, i32 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !15
  store i64 %78, i64* %44, align 8, !tbaa !59
  %79 = call i32 @luaD_rawrunprotected(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @unroll, i8* nonnull %7) #12
  br label %45

; <label>:80:                                     ; preds = %49
  %81 = icmp slt i32 %46, 2
  br i1 %81, label %92, label %82, !prof !49

; <label>:82:                                     ; preds = %80
  %83 = trunc i32 %46 to i8
  store i8 %83, i8* %8, align 2, !tbaa !24
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %85 = load %union.StackValue*, %union.StackValue** %84, align 8, !tbaa !18
  call void @luaD_seterrorobj(%struct.lua_State* %0, i32 %46, %union.StackValue* %85) #12
  %86 = bitcast %union.StackValue** %84 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !18
  %88 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8, !tbaa !27
  %89 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %88, i64 0, i32 1
  %90 = bitcast %union.StackValue** %89 to i64*
  store i64 %87, i64* %90, align 8, !tbaa !28
  %91 = load i32, i32* %6, align 4, !tbaa !58
  br label %92

; <label>:92:                                     ; preds = %45, %80, %82
  %93 = phi i32 [ %46, %80 ], [ %91, %82 ], [ %46, %45 ]
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %99

; <label>:95:                                     ; preds = %92
  %96 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8, !tbaa !27
  %97 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %96, i64 0, i32 5, i32 0
  %98 = load i32, i32* %97, align 8, !tbaa !15
  br label %111

; <label>:99:                                     ; preds = %92
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %101 = bitcast %union.StackValue** %100 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !18
  %103 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8, !tbaa !27
  %104 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %103, i64 0, i32 0
  %105 = load %union.StackValue*, %union.StackValue** %104, align 8, !tbaa !37
  %106 = getelementptr inbounds %union.StackValue, %union.StackValue* %105, i64 1
  %107 = ptrtoint %union.StackValue* %106 to i64
  %108 = sub i64 %102, %107
  %109 = lshr exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  br label %111

; <label>:111:                                    ; preds = %99, %95
  %112 = phi i32 [ %98, %95 ], [ %110, %99 ]
  store i32 %112, i32* %3, align 4, !tbaa !58
  br label %113

; <label>:113:                                    ; preds = %111, %36, %16, %15
  %114 = phi i32 [ 2, %15 ], [ 2, %36 ], [ %93, %111 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13
  ret i32 %114
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @resume_error(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !18
  %6 = sext i32 %2 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 %7
  store %union.StackValue* %8, %union.StackValue** %4, align 8, !tbaa !18
  %9 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %1) #9
  %10 = bitcast %union.StackValue* %8 to %struct.TString**
  store %struct.TString* %9, %struct.TString** %10, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !16
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 %7, i32 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !19
  %15 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !18
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %4, align 8, !tbaa !18
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal void @resume(%struct.lua_State*, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !58
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
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %16, i32 -1) #12
  br label %34

; <label>:17:                                     ; preds = %2
  store i8 0, i8* %7, align 2, !tbaa !24
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i64 0, i32 7
  %19 = load i16, i16* %18, align 2, !tbaa !38
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
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %6, i32 %32) #12
  br label %33

; <label>:33:                                     ; preds = %31, %22
  tail call void @unroll(%struct.lua_State* nonnull %0, i8* null) #12
  br label %34

; <label>:34:                                     ; preds = %33, %10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal void @unroll(%struct.lua_State*, i8* readonly) #0 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !58
  tail call fastcc void @finishCcall(%struct.lua_State* %0, i32 %6) #12
  br label %7

; <label>:7:                                      ; preds = %2, %4
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  br label %10

; <label>:10:                                     ; preds = %20, %7
  %11 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !tbaa !27
  %12 = icmp eq %struct.CallInfo* %11, %9
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 7
  %15 = load i16, i16* %14, align 2, !tbaa !38
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %13
  tail call fastcc void @finishCcall(%struct.lua_State* nonnull %0, i32 1) #12
  br label %20

; <label>:19:                                     ; preds = %13
  tail call void @luaV_finishOp(%struct.lua_State* nonnull %0) #9
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %11) #9
  br label %20

; <label>:20:                                     ; preds = %19, %18
  br label %10

; <label>:21:                                     ; preds = %10
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define i32 @lua_isyieldable(%struct.lua_State* nocapture readonly) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %3 = load i32, i32* %2, align 8, !tbaa !29
  %4 = icmp ult i32 %3, 65536
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %21 = load i16, i16* %20, align 2, !tbaa !38
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*, i64, i64) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %7 = bitcast %struct.CallInfo** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %10 = load i8, i8* %9, align 1, !tbaa !41
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %12 = load i64, i64* %11, align 8, !tbaa !59
  store i64 %4, i64* %11, align 8, !tbaa !59
  %13 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* %1, i8* %2) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15, !prof !49

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %17 = bitcast %union.StackValue** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !23
  %19 = getelementptr inbounds i8, i8* %18, i64 %3
  %20 = bitcast i8* %19 to %union.StackValue*
  store i64 %8, i64* %7, align 8, !tbaa !27
  store i8 %10, i8* %9, align 1, !tbaa !41
  %21 = tail call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %20, i32 %13) #9
  %22 = load i8*, i8** %17, align 8, !tbaa !23
  %23 = getelementptr inbounds i8, i8* %22, i64 %3
  %24 = bitcast i8* %23 to %union.StackValue*
  tail call void @luaD_seterrorobj(%struct.lua_State* nonnull %0, i32 %21, %union.StackValue* %24) #12
  tail call void @luaD_shrinkstack(%struct.lua_State* nonnull %0) #12
  br label %25

; <label>:25:                                     ; preds = %5, %15
  %26 = phi i32 [ %21, %15 ], [ 0, %5 ]
  store i64 %12, i64* %11, align 8, !tbaa !59
  ret i32 %26
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) local_unnamed_addr #0 {
  %5 = alloca %struct.SParser, align 8
  %6 = bitcast %struct.SParser* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 8, !tbaa !29
  %9 = add i32 %8, 65536
  store i32 %9, i32* %7, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 0
  store %struct.Zio* %1, %struct.Zio** %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 4
  store i8* %2, i8** %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 3
  store i8* %3, i8** %12, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 0, i32 2
  store i32 0, i32* %14, align 4, !tbaa !68
  %15 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 1, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 1, i32 2
  store i32 0, i32* %16, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 2, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %17, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 2, i32 2, i32 2
  store i32 0, i32* %18, align 4, !tbaa !72
  %19 = getelementptr inbounds %struct.SParser, %struct.SParser* %5, i64 0, i32 1, i32 0
  store i8* null, i8** %19, align 8, !tbaa !73
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
  %30 = load i64, i64* %29, align 8, !tbaa !59
  %31 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_parser, i8* nonnull %6, i64 %28, i64 %30) #12
  %32 = load i8*, i8** %19, align 8, !tbaa !73
  %33 = load i64, i64* %20, align 8, !tbaa !74
  %34 = call i8* @luaM_saferealloc_(%struct.lua_State* %0, i8* %32, i64 %33, i64 0) #9
  store i8* %34, i8** %19, align 8, !tbaa !73
  store i64 0, i64* %20, align 8, !tbaa !74
  %35 = bitcast %struct.Vardesc** %13 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !75
  %37 = load i32, i32* %14, align 4, !tbaa !68
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 1
  call void @luaM_free_(%struct.lua_State* %0, i8* %36, i64 %39) #9
  %40 = bitcast %struct.Labeldesc** %15 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !69
  %42 = load i32, i32* %16, align 4, !tbaa !70
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 24
  call void @luaM_free_(%struct.lua_State* %0, i8* %41, i64 %44) #9
  %45 = bitcast %struct.Labeldesc** %17 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !71
  %47 = load i32, i32* %18, align 4, !tbaa !72
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 24
  call void @luaM_free_(%struct.lua_State* %0, i8* %46, i64 %49) #9
  %50 = load i32, i32* %7, align 8, !tbaa !29
  %51 = add i32 %50, -65536
  store i32 %51, i32* %7, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #13
  ret i32 %31
}

; Function Attrs: minsize nounwind optsize uwtable
define internal void @f_parser(%struct.lua_State*, i8*) #0 {
  %3 = bitcast i8* %1 to %struct.Zio**
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !76
  %7 = add i64 %6, -1
  store i64 %7, i64* %5, align 8, !tbaa !76
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !78
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %10, align 8, !tbaa !78
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
  %22 = load i8*, i8** %21, align 8, !tbaa !67
  br i1 %19, label %23, label %29

; <label>:23:                                     ; preds = %17
  tail call fastcc void @checkmode(%struct.lua_State* %0, i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #12
  %24 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !60
  %25 = getelementptr inbounds i8, i8* %1, i64 88
  %26 = bitcast i8* %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !66
  %28 = tail call %struct.LClosure* @luaU_undump(%struct.lua_State* %0, %struct.Zio* %24, i8* %27) #9
  br label %39

; <label>:29:                                     ; preds = %17
  tail call fastcc void @checkmode(%struct.lua_State* %0, i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #12
  %30 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !60
  %31 = getelementptr inbounds i8, i8* %1, i64 8
  %32 = bitcast i8* %31 to %struct.Mbuffer*
  %33 = getelementptr inbounds i8, i8* %1, i64 32
  %34 = bitcast i8* %33 to %struct.Dyndata*
  %35 = getelementptr inbounds i8, i8* %1, i64 88
  %36 = bitcast i8* %35 to i8**
  %37 = load i8*, i8** %36, align 8, !tbaa !66
  %38 = tail call %struct.LClosure* @luaY_parser(%struct.lua_State* %0, %struct.Zio* %30, %struct.Mbuffer* nonnull %32, %struct.Dyndata* nonnull %34, i8* %37, i32 %18) #9
  br label %39

; <label>:39:                                     ; preds = %29, %23
  %40 = phi %struct.LClosure* [ %28, %23 ], [ %38, %29 ]
  tail call void @luaF_initupvals(%struct.lua_State* %0, %struct.LClosure* %40) #9
  ret void
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @finishCcall(%struct.lua_State*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 7
  %6 = load i16, i16* %5, align 2, !tbaa !38
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %2
  %10 = and i16 %6, -9
  store i16 %10, i16* %5, align 2, !tbaa !38
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 4, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  store i64 %12, i64* %13, align 8, !tbaa !59
  br label %14

; <label>:14:                                     ; preds = %2, %9
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 6
  %16 = load i16, i16* %15, align 4, !tbaa !53
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
  tail call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %4, i32 %30) #12
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaV_finishOp(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checkmode(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %2, align 1, !tbaa !15
  %7 = sext i8 %6 to i32
  %8 = tail call i8* @strchr(i8* nonnull %1, i32 %7) #15
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %2, i8* nonnull %1) #9
  tail call void @luaD_throw(%struct.lua_State* %0, i32 3) #11
  unreachable

; <label>:12:                                     ; preds = %3, %5
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: minsize optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize noreturn nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { minsize nounwind optsize }
attributes #10 = { minsize noreturn nounwind optsize }
attributes #11 = { minsize noreturn optsize }
attributes #12 = { minsize optsize }
attributes #13 = { nounwind }
attributes #14 = { minsize nounwind optsize returns_twice }
attributes #15 = { minsize nounwind optsize readonly }

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
!34 = !{!35, !4, i64 16}
!35 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!36 = !{!4, !4, i64 0}
!37 = !{!8, !4, i64 0}
!38 = !{!8, !7, i64 62}
!39 = !{!3, !4, i64 48}
!40 = !{!3, !4, i64 160}
!41 = !{!3, !5, i64 11}
!42 = !{!43, !10, i64 0}
!43 = !{!"lua_Debug", !10, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !7, i64 64, !7, i64 66, !5, i64 68, !4, i64 128}
!44 = !{!43, !10, i64 48}
!45 = !{!43, !4, i64 128}
!46 = !{!3, !10, i64 192}
!47 = !{!48, !5, i64 10}
!48 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!8, !4, i64 16}
!51 = !{!48, !5, i64 11}
!52 = !{!3, !4, i64 40}
!53 = !{!8, !7, i64 60}
!54 = !{!48, !5, i64 12}
!55 = !{!12, !9, i64 24}
!56 = !{!48, !4, i64 64}
!57 = !{!8, !4, i64 24}
!58 = !{!10, !10, i64 0}
!59 = !{!3, !9, i64 168}
!60 = !{!61, !4, i64 0}
!61 = !{!"SParser", !4, i64 0, !62, i64 8, !63, i64 32, !4, i64 80, !4, i64 88}
!62 = !{!"Mbuffer", !4, i64 0, !9, i64 8, !9, i64 16}
!63 = !{!"Dyndata", !64, i64 0, !65, i64 16, !65, i64 32}
!64 = !{!"", !4, i64 0, !10, i64 8, !10, i64 12}
!65 = !{!"Labellist", !4, i64 0, !10, i64 8, !10, i64 12}
!66 = !{!61, !4, i64 88}
!67 = !{!61, !4, i64 80}
!68 = !{!61, !10, i64 44}
!69 = !{!61, !4, i64 48}
!70 = !{!61, !10, i64 60}
!71 = !{!61, !4, i64 64}
!72 = !{!61, !10, i64 76}
!73 = !{!61, !4, i64 8}
!74 = !{!61, !9, i64 24}
!75 = !{!61, !4, i64 32}
!76 = !{!77, !9, i64 0}
!77 = !{!"Zio", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32}
!78 = !{!77, !4, i64 8}
