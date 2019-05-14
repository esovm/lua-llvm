; ModuleID = 'ldump.c'
source_filename = "ldump.c"
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
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto* nocapture readonly, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 {
  %6 = alloca %struct.DumpState, align 8
  %7 = bitcast %struct.DumpState* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #2
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !tbaa !2
  %9 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %9, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 2
  store i8* %3, i8** %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 3
  store i32 %4, i32* %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 4
  store i32 0, i32* %12, align 4, !tbaa !11
  call fastcc void @DumpHeader(%struct.DumpState* nonnull %6)
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %14 = load i32, i32* %13, align 8, !tbaa !12
  call fastcc void @DumpByte(i32 %14, %struct.DumpState* nonnull %6)
  call fastcc void @DumpFunction(%struct.Proto* %1, %struct.TString* null, %struct.DumpState* nonnull %6)
  %15 = load i32, i32* %12, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #2
  ret i32 %15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpHeader(%struct.DumpState* nocapture) unnamed_addr #0 {
  tail call fastcc void @DumpBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4, %struct.DumpState* %0)
  tail call fastcc void @DumpInt(i32 504, %struct.DumpState* %0)
  tail call fastcc void @DumpByte(i32 0, %struct.DumpState* %0)
  tail call fastcc void @DumpBlock(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6, %struct.DumpState* %0)
  tail call fastcc void @DumpByte(i32 4, %struct.DumpState* %0)
  tail call fastcc void @DumpByte(i32 8, %struct.DumpState* %0)
  tail call fastcc void @DumpByte(i32 8, %struct.DumpState* %0)
  tail call fastcc void @DumpInteger(i64 22136, %struct.DumpState* %0)
  tail call fastcc void @DumpNumber(double 3.705000e+02, %struct.DumpState* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpByte(i32, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #2
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* %3, align 1, !tbaa !14
  call fastcc void @DumpBlock(i8* nonnull %3, i64 1, %struct.DumpState* %1)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpFunction(%struct.Proto* nocapture readonly, %struct.TString* readnone, %struct.DumpState* nocapture) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !15
  %10 = icmp eq %struct.TString* %9, %1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3, %7
  tail call fastcc void @DumpString(%struct.TString* null, %struct.DumpState* nonnull %2)
  br label %13

; <label>:12:                                     ; preds = %7
  tail call fastcc void @DumpString(%struct.TString* %9, %struct.DumpState* nonnull %2)
  br label %13

; <label>:13:                                     ; preds = %12, %11
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  %15 = load i32, i32* %14, align 4, !tbaa !16
  tail call fastcc void @DumpInt(i32 %15, %struct.DumpState* nonnull %2)
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %17 = load i32, i32* %16, align 8, !tbaa !17
  tail call fastcc void @DumpInt(i32 %17, %struct.DumpState* nonnull %2)
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %19 = load i8, i8* %18, align 2, !tbaa !18
  %20 = zext i8 %19 to i32
  tail call fastcc void @DumpByte(i32 %20, %struct.DumpState* nonnull %2)
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4
  %22 = load i8, i8* %21, align 1, !tbaa !19
  %23 = zext i8 %22 to i32
  tail call fastcc void @DumpByte(i32 %23, %struct.DumpState* nonnull %2)
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %25 = load i8, i8* %24, align 4, !tbaa !20
  %26 = zext i8 %25 to i32
  tail call fastcc void @DumpByte(i32 %26, %struct.DumpState* nonnull %2)
  tail call fastcc void @DumpCode(%struct.Proto* %0, %struct.DumpState* nonnull %2)
  tail call fastcc void @DumpConstants(%struct.Proto* %0, %struct.DumpState* nonnull %2)
  tail call fastcc void @DumpUpvalues(%struct.Proto* %0, %struct.DumpState* nonnull %2)
  tail call fastcc void @DumpProtos(%struct.Proto* %0, %struct.DumpState* nonnull %2)
  tail call fastcc void @DumpDebug(%struct.Proto* %0, %struct.DumpState* nonnull %2)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpBlock(i8*, i64, %struct.DumpState* nocapture) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  %5 = load i32, i32* %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i64 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %11 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !2
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8, !tbaa !9
  %16 = tail call i32 %11(%struct.lua_State* %13, i8* %0, i64 %1, i8* %15) #2
  store i32 %16, i32* %4, align 4, !tbaa !11
  br label %17

; <label>:17:                                     ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpInt(i32, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  tail call fastcc void @DumpSize(i64 %3, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpInteger(i64, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8, !tbaa !21
  %4 = bitcast i64* %3 to i8*
  call fastcc void @DumpBlock(i8* nonnull %4, i64 8, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpNumber(double, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca double, align 8
  store double %0, double* %3, align 8, !tbaa !23
  %4 = bitcast double* %3 to i8*
  call fastcc void @DumpBlock(i8* nonnull %4, i64 8, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpSize(i64, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #2
  br label %5

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %7 = phi i64 [ %13, %5 ], [ %0, %2 ]
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 127
  %10 = add nuw nsw i64 %6, 1
  %11 = sub nsw i64 9, %6
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %11
  store i8 %9, i8* %12, align 1, !tbaa !14
  %13 = lshr i64 %7, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %5

; <label>:15:                                     ; preds = %5
  %16 = and i64 %10, 4294967295
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  %18 = load i8, i8* %17, align 1, !tbaa !14
  %19 = or i8 %18, -128
  store i8 %19, i8* %17, align 1, !tbaa !14
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 10
  %21 = sub nsw i64 0, %16
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  call fastcc void @DumpBlock(i8* nonnull %22, i64 %16, %struct.DumpState* %1)
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpString(%struct.TString*, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = icmp eq %struct.TString* %0, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call fastcc void @DumpSize(i64 0, %struct.DumpState* %1)
  br label %21

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !25
  %8 = icmp eq i8 %7, 20
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !27
  %12 = zext i8 %11 to i64
  br label %16

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !14
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i64 [ %12, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %19 = bitcast %struct.TString* %18 to i8*
  %20 = add i64 %17, 1
  tail call fastcc void @DumpSize(i64 %20, %struct.DumpState* %1)
  tail call fastcc void @DumpBlock(i8* nonnull %19, i64 %17, %struct.DumpState* %1)
  br label %21

; <label>:21:                                     ; preds = %16, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpCode(%struct.Proto* nocapture readonly, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %4 = load i32, i32* %3, align 8, !tbaa !28
  tail call fastcc void @DumpInt(i32 %4, %struct.DumpState* %1)
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %6 = bitcast i32** %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !29
  %8 = load i32, i32* %3, align 8, !tbaa !28
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call fastcc void @DumpBlock(i8* %7, i64 %10, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpConstants(%struct.Proto* nocapture readonly, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %4 = load i32, i32* %3, align 4, !tbaa !30
  tail call fastcc void @DumpInt(i32 %4, %struct.DumpState* %1)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %34

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %8 = zext i32 %4 to i64
  br label %9

; <label>:9:                                      ; preds = %31, %6
  %10 = phi i64 [ 0, %6 ], [ %32, %31 ]
  %11 = load %struct.TValue*, %struct.TValue** %7, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 %10
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i64 %10, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !32
  %15 = and i8 %14, 63
  %16 = zext i8 %15 to i32
  tail call fastcc void @DumpByte(i32 %16, %struct.DumpState* %1)
  %17 = load i8, i8* %13, align 8, !tbaa !32
  %18 = trunc i8 %17 to i6
  switch i6 %18, label %31 [
    i6 -28, label %28
    i6 1, label %19
    i6 19, label %22
    i6 -29, label %25
    i6 20, label %28
  ]

; <label>:19:                                     ; preds = %9
  %20 = bitcast %struct.TValue* %12 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !14
  tail call fastcc void @DumpByte(i32 %21, %struct.DumpState* %1)
  br label %31

; <label>:22:                                     ; preds = %9
  %23 = bitcast %struct.TValue* %12 to double*
  %24 = load double, double* %23, align 8, !tbaa !14
  tail call fastcc void @DumpNumber(double %24, %struct.DumpState* %1)
  br label %31

; <label>:25:                                     ; preds = %9
  %26 = bitcast %struct.TValue* %12 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !14
  tail call fastcc void @DumpInteger(i64 %27, %struct.DumpState* %1)
  br label %31

; <label>:28:                                     ; preds = %9, %9
  %29 = bitcast %struct.TValue* %12 to %struct.TString**
  %30 = load %struct.TString*, %struct.TString** %29, align 8, !tbaa !14
  tail call fastcc void @DumpString(%struct.TString* %30, %struct.DumpState* %1)
  br label %31

; <label>:31:                                     ; preds = %9, %28, %25, %22, %19
  %32 = add nuw nsw i64 %10, 1
  %33 = icmp eq i64 %32, %8
  br i1 %33, label %34, label %9

; <label>:34:                                     ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpUpvalues(%struct.Proto* nocapture readonly, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %4 = load i32, i32* %3, align 8, !tbaa !12
  tail call fastcc void @DumpInt(i32 %4, %struct.DumpState* %1)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %8 = zext i32 %4 to i64
  br label %9

; <label>:9:                                      ; preds = %9, %6
  %10 = phi i64 [ 0, %6 ], [ %19, %9 ]
  %11 = load %struct.Upvaldesc*, %struct.Upvaldesc** %7, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %11, i64 %10, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !35
  %14 = zext i8 %13 to i32
  tail call fastcc void @DumpByte(i32 %14, %struct.DumpState* %1)
  %15 = load %struct.Upvaldesc*, %struct.Upvaldesc** %7, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %15, i64 %10, i32 2
  %17 = load i8, i8* %16, align 1, !tbaa !37
  %18 = zext i8 %17 to i32
  tail call fastcc void @DumpByte(i32 %18, %struct.DumpState* %1)
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9

; <label>:21:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpProtos(%struct.Proto* nocapture readonly, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8, !tbaa !38
  tail call fastcc void @DumpInt(i32 %4, %struct.DumpState* %1)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %9 = zext i32 %4 to i64
  br label %10

; <label>:10:                                     ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %16, %10 ]
  %12 = load %struct.Proto**, %struct.Proto*** %7, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.Proto*, %struct.Proto** %12, i64 %11
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !40
  %15 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !15
  tail call fastcc void @DumpFunction(%struct.Proto* %14, %struct.TString* %15, %struct.DumpState* %1)
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10

; <label>:18:                                     ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpDebug(%struct.Proto* nocapture readonly, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 3
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %8 = load i32, i32* %7, align 4, !tbaa !41
  br label %9

; <label>:9:                                      ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call fastcc void @DumpInt(i32 %10, %struct.DumpState* nonnull %1)
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %12 = load i8*, i8** %11, align 8, !tbaa !42
  %13 = sext i32 %10 to i64
  tail call fastcc void @DumpBlock(i8* %12, i64 %13, %struct.DumpState* nonnull %1)
  %14 = load i32, i32* %3, align 8, !tbaa !10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %9
  tail call fastcc void @DumpInt(i32 0, %struct.DumpState* nonnull %1)
  br label %34

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %19 = load i32, i32* %18, align 8, !tbaa !43
  tail call fastcc void @DumpInt(i32 %19, %struct.DumpState* nonnull %1)
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %23 = zext i32 %19 to i64
  br label %24

; <label>:24:                                     ; preds = %24, %21
  %25 = phi i64 [ 0, %21 ], [ %32, %24 ]
  %26 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %22, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %26, i64 %25, i32 0
  %28 = load i32, i32* %27, align 4, !tbaa !45
  tail call fastcc void @DumpInt(i32 %28, %struct.DumpState* %1)
  %29 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %22, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %29, i64 %25, i32 1
  %31 = load i32, i32* %30, align 4, !tbaa !47
  tail call fastcc void @DumpInt(i32 %31, %struct.DumpState* %1)
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, %23
  br i1 %33, label %34, label %24

; <label>:34:                                     ; preds = %24, %16, %17
  %35 = load i32, i32* %3, align 8, !tbaa !10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %34
  tail call fastcc void @DumpInt(i32 0, %struct.DumpState* nonnull %1)
  br label %58

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %40 = load i32, i32* %39, align 4, !tbaa !48
  tail call fastcc void @DumpInt(i32 %40, %struct.DumpState* nonnull %1)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %58

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %44 = zext i32 %40 to i64
  br label %45

; <label>:45:                                     ; preds = %45, %42
  %46 = phi i64 [ 0, %42 ], [ %56, %45 ]
  %47 = load %struct.LocVar*, %struct.LocVar** %43, align 8, !tbaa !49
  %48 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %47, i64 %46, i32 0
  %49 = load %struct.TString*, %struct.TString** %48, align 8, !tbaa !50
  tail call fastcc void @DumpString(%struct.TString* %49, %struct.DumpState* %1)
  %50 = load %struct.LocVar*, %struct.LocVar** %43, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %50, i64 %46, i32 1
  %52 = load i32, i32* %51, align 8, !tbaa !52
  tail call fastcc void @DumpInt(i32 %52, %struct.DumpState* %1)
  %53 = load %struct.LocVar*, %struct.LocVar** %43, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %53, i64 %46, i32 2
  %55 = load i32, i32* %54, align 4, !tbaa !53
  tail call fastcc void @DumpInt(i32 %55, %struct.DumpState* %1)
  %56 = add nuw nsw i64 %46, 1
  %57 = icmp eq i64 %56, %44
  br i1 %57, label %58, label %45

; <label>:58:                                     ; preds = %45, %37, %38
  %59 = load i32, i32* %3, align 8, !tbaa !10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

; <label>:61:                                     ; preds = %58
  tail call fastcc void @DumpInt(i32 0, %struct.DumpState* nonnull %1)
  br label %76

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %64 = load i32, i32* %63, align 8, !tbaa !12
  tail call fastcc void @DumpInt(i32 %64, %struct.DumpState* nonnull %1)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %76

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %68 = zext i32 %64 to i64
  br label %69

; <label>:69:                                     ; preds = %69, %66
  %70 = phi i64 [ 0, %66 ], [ %74, %69 ]
  %71 = load %struct.Upvaldesc*, %struct.Upvaldesc** %67, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %71, i64 %70, i32 0
  %73 = load %struct.TString*, %struct.TString** %72, align 8, !tbaa !54
  tail call fastcc void @DumpString(%struct.TString* %73, %struct.DumpState* %1)
  %74 = add nuw nsw i64 %70, 1
  %75 = icmp eq i64 %74, %68
  br i1 %75, label %76, label %69

; <label>:76:                                     ; preds = %69, %61, %62
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !7, i64 24, !7, i64 28}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 8}
!9 = !{!3, !4, i64 16}
!10 = !{!3, !7, i64 24}
!11 = !{!3, !7, i64 28}
!12 = !{!13, !7, i64 16}
!13 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!14 = !{!5, !5, i64 0}
!15 = !{!13, !4, i64 112}
!16 = !{!13, !7, i64 44}
!17 = !{!13, !7, i64 48}
!18 = !{!13, !5, i64 10}
!19 = !{!13, !5, i64 11}
!20 = !{!13, !5, i64 12}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !5, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = !{!26, !5, i64 8}
!26 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!27 = !{!26, !5, i64 11}
!28 = !{!13, !7, i64 24}
!29 = !{!13, !4, i64 64}
!30 = !{!13, !7, i64 20}
!31 = !{!13, !4, i64 56}
!32 = !{!33, !5, i64 8}
!33 = !{!"TValue", !5, i64 0, !5, i64 8}
!34 = !{!13, !4, i64 80}
!35 = !{!36, !5, i64 8}
!36 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!37 = !{!36, !5, i64 9}
!38 = !{!13, !7, i64 32}
!39 = !{!13, !4, i64 72}
!40 = !{!4, !4, i64 0}
!41 = !{!13, !7, i64 28}
!42 = !{!13, !4, i64 88}
!43 = !{!13, !7, i64 40}
!44 = !{!13, !4, i64 96}
!45 = !{!46, !7, i64 0}
!46 = !{!"AbsLineInfo", !7, i64 0, !7, i64 4}
!47 = !{!46, !7, i64 4}
!48 = !{!13, !7, i64 36}
!49 = !{!13, !4, i64 104}
!50 = !{!51, !4, i64 0}
!51 = !{!"LocVar", !4, i64 0, !7, i64 8, !7, i64 12}
!52 = !{!51, !7, i64 8}
!53 = !{!51, !7, i64 12}
!54 = !{!36, !4, i64 0}
