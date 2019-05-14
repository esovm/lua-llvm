; ModuleID = 'lundump.c'
source_filename = "lundump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"not a binary chunk\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"version mismatch\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"format mismatch\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"corrupted chunk\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lua_Integer\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"lua_Number\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"integer format mismatch\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"float format mismatch\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"truncated chunk\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: bad binary format (%s)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s size mismatch\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"bad format for constant string\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.LoadState, align 8
  %5 = bitcast %struct.LoadState* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7
  %6 = load i8, i8* %2, align 1, !tbaa !2
  switch i8 %6, label %9 [
    i8 64, label %7
    i8 61, label %7
    i8 27, label %10
  ]

; <label>:7:                                      ; preds = %3, %3
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  br label %10

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %3, %9, %7
  %11 = phi i8* [ %2, %9 ], [ %8, %7 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 2
  store i8* %11, i8** %12, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %13, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 1
  store %struct.Zio* %1, %struct.Zio** %14, align 8, !tbaa !9
  call fastcc void @checkHeader(%struct.LoadState* nonnull %4)
  %15 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* nonnull %4)
  %16 = zext i8 %15 to i32
  %17 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %16) #7
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %19 = bitcast %union.StackValue** %18 to %struct.TValue**
  %20 = load %struct.TValue*, %struct.TValue** %19, align 8, !tbaa !10
  %21 = bitcast %struct.TValue* %20 to %struct.LClosure**
  store %struct.LClosure* %17, %struct.LClosure** %21, align 8, !tbaa !2
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i64 0, i32 1
  store i8 86, i8* %22, align 8, !tbaa !16
  tail call void @luaD_inctop(%struct.lua_State* %0) #7
  %23 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #7
  %24 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i64 0, i32 5
  store %struct.Proto* %23, %struct.Proto** %24, align 8, !tbaa !18
  call fastcc void @LoadFunction(%struct.LoadState* nonnull %4, %struct.Proto* %23, %struct.TString* null)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7
  ret %struct.LClosure* %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @checkHeader(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  tail call fastcc void @checkliteral(%struct.LoadState* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 1), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %2 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %3 = icmp eq i32 %2, 504
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #8
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8
  unreachable

; <label>:9:                                      ; preds = %5
  tail call fastcc void @checkliteral(%struct.LoadState* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  tail call fastcc void @fchecksize(%struct.LoadState* %0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  tail call fastcc void @fchecksize(%struct.LoadState* %0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  tail call fastcc void @fchecksize(%struct.LoadState* %0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %10 = tail call fastcc i64 @LoadInteger(%struct.LoadState* %0)
  %11 = icmp eq i64 %10, 22136
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #8
  unreachable

; <label>:13:                                     ; preds = %9
  %14 = tail call fastcc double @LoadNumber(%struct.LoadState* %0)
  %15 = fcmp une double %14, 3.705000e+02
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #8
  unreachable

; <label>:17:                                     ; preds = %13
  ret void
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @LoadByte(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %3 = load %struct.Zio*, %struct.Zio** %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !20
  %6 = add i64 %5, -1
  store i64 %6, i64* %4, align 8, !tbaa !20
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %9, align 8, !tbaa !22
  %12 = load i8, i8* %10, align 1, !tbaa !2
  %13 = zext i8 %12 to i32
  br label %18

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @luaZ_fill(%struct.Zio* %3) #7
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #8
  unreachable

; <label>:18:                                     ; preds = %8, %14
  %19 = phi i32 [ %13, %8 ], [ %15, %14 ]
  %20 = trunc i32 %19 to i8
  ret i8 %20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadFunction(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture, %struct.TString*) unnamed_addr #0 {
  %4 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0)
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %6 = icmp eq %struct.TString* %4, null
  %7 = select i1 %6, %struct.TString* %2, %struct.TString* %4
  store %struct.TString* %7, %struct.TString** %5, align 8, !tbaa !23
  %8 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  store i32 %8, i32* %9, align 4, !tbaa !25
  %10 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  store i32 %10, i32* %11, align 8, !tbaa !26
  %12 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  store i8 %12, i8* %13, align 2, !tbaa !27
  %14 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  store i8 %14, i8* %15, align 1, !tbaa !28
  %16 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  store i8 %16, i8* %17, align 4, !tbaa !29
  tail call fastcc void @LoadCode(%struct.LoadState* %0, %struct.Proto* %1)
  tail call fastcc void @LoadConstants(%struct.LoadState* %0, %struct.Proto* %1)
  tail call fastcc void @LoadUpvalues(%struct.LoadState* %0, %struct.Proto* %1)
  tail call fastcc void @LoadProtos(%struct.LoadState* %0, %struct.Proto* %1)
  tail call fastcc void @LoadDebug(%struct.LoadState* %0, %struct.Proto* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkliteral(%struct.LoadState* nocapture readonly, i8* nocapture readonly, i8*) unnamed_addr #0 {
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #7
  %6 = tail call i64 @strlen(i8* %1) #9
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %5, i64 %6)
  %7 = call i32 @memcmp(i8* %1, i8* nonnull %5, i64 %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %3
  call fastcc void @error(%struct.LoadState* %0, i8* %2) #8
  unreachable

; <label>:10:                                     ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadInt(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error(%struct.LoadState* nocapture readonly, i8*) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %6, i8* %1) #7
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  tail call void @luaD_throw(%struct.lua_State* %8, i32 3) #10
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fchecksize(%struct.LoadState* nocapture readonly, i64, i8*) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %5 = zext i8 %4 to i64
  %6 = icmp eq i64 %5, %1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !8
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %2) #7
  tail call fastcc void @error(%struct.LoadState* %0, i8* %10) #8
  unreachable

; <label>:11:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @LoadInteger(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %3, i64 8)
  %4 = load i64, i64* %2, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc double @LoadNumber(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %3, i64 8)
  %4 = load double, double* %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  ret double %4
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadBlock(%struct.LoadState* nocapture readonly, i8*, i64) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !9
  %6 = tail call i64 @luaZ_read(%struct.Zio* %5, i8* %1, i64 %2) #7
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %3
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #8
  unreachable

; <label>:9:                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @LoadUnsigned(%struct.LoadState* nocapture readonly, i64) unnamed_addr #0 {
  %3 = lshr i64 %1, 7
  br label %4

; <label>:4:                                      ; preds = %9, %2
  %5 = phi i64 [ 0, %2 ], [ %13, %9 ]
  %6 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %7 = icmp ult i64 %5, %3
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %4
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #8
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = shl i64 %5, 7
  %11 = and i8 %6, 127
  %12 = zext i8 %11 to i64
  %13 = or i64 %10, %12
  %14 = icmp sgt i8 %6, -1
  br i1 %14, label %4, label %15

; <label>:15:                                     ; preds = %9
  ret i64 %13
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #6

declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @LoadStringN(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca [40 x i8], align 16
  %3 = tail call fastcc i64 @LoadSize(%struct.LoadState* %0)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %1
  %6 = add i64 %3, -1
  %7 = icmp ult i64 %6, 41
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %9, i64 %6)
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !8
  %12 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* nonnull %9, i64 %6) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  br label %19

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !8
  %16 = tail call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %15, i64 %6) #7
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %18, i64 %6)
  br label %19

; <label>:19:                                     ; preds = %1, %13, %8
  %20 = phi %struct.TString* [ %12, %8 ], [ %16, %13 ], [ null, %1 ]
  ret %struct.TString* %20
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadCode(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %6 = sext i32 %3 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call i8* @luaM_malloc_(%struct.lua_State* %5, i64 %7, i32 0) #7
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 16
  %10 = bitcast i32** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  store i32 %3, i32* %11, align 8, !tbaa !35
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %8, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadConstants(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %6 = sext i32 %3 to i64
  %7 = shl nsw i64 %6, 4
  %8 = tail call i8* @luaM_malloc_(%struct.lua_State* %5, i64 %7, i32 0) #7
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %10 = bitcast %struct.TValue** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  store i32 %3, i32* %11, align 4, !tbaa !37
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %52

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !36
  %15 = zext i32 %3 to i64
  br label %16

; <label>:16:                                     ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 %17, i32 1
  store i8 0, i8* %18, align 8, !tbaa !16
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %21, label %16

; <label>:21:                                     ; preds = %16
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %52

; <label>:23:                                     ; preds = %21
  %24 = zext i32 %3 to i64
  br label %25

; <label>:25:                                     ; preds = %49, %23
  %26 = phi i64 [ 0, %23 ], [ %50, %49 ]
  %27 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i64 %26
  %29 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  switch i8 %29, label %49 [
    i8 0, label %46
    i8 1, label %30
    i8 19, label %34
    i8 35, label %37
    i8 20, label %40
    i8 36, label %40
  ]

; <label>:30:                                     ; preds = %25
  %31 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %32 = zext i8 %31 to i32
  %33 = bitcast %struct.TValue* %28 to i32*
  store i32 %32, i32* %33, align 8, !tbaa !2
  br label %46

; <label>:34:                                     ; preds = %25
  %35 = tail call fastcc double @LoadNumber(%struct.LoadState* %0)
  %36 = bitcast %struct.TValue* %28 to double*
  store double %35, double* %36, align 8, !tbaa !2
  br label %46

; <label>:37:                                     ; preds = %25
  %38 = tail call fastcc i64 @LoadInteger(%struct.LoadState* %0)
  %39 = bitcast %struct.TValue* %28 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !2
  br label %46

; <label>:40:                                     ; preds = %25, %25
  %41 = tail call fastcc %struct.TString* @LoadString(%struct.LoadState* %0)
  %42 = bitcast %struct.TValue* %28 to %struct.TString**
  store %struct.TString* %41, %struct.TString** %42, align 8, !tbaa !2
  %43 = getelementptr inbounds %struct.TString, %struct.TString* %41, i64 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !38
  %45 = or i8 %44, 64
  br label %46

; <label>:46:                                     ; preds = %25, %30, %34, %37, %40
  %47 = phi i8 [ %45, %40 ], [ 35, %37 ], [ 19, %34 ], [ 1, %30 ], [ %29, %25 ]
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i64 %26, i32 1
  store i8 %47, i8* %48, align 8, !tbaa !16
  br label %49

; <label>:49:                                     ; preds = %46, %25
  %50 = add nuw nsw i64 %26, 1
  %51 = icmp eq i64 %50, %24
  br i1 %51, label %52, label %25

; <label>:52:                                     ; preds = %49, %2, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadUpvalues(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %6 = sext i32 %3 to i64
  %7 = shl nsw i64 %6, 4
  %8 = tail call i8* @luaM_malloc_(%struct.lua_State* %5, i64 %7, i32 0) #7
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %10 = bitcast %struct.Upvaldesc** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  store i32 %3, i32* %11, align 8, !tbaa !41
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %35

; <label>:13:                                     ; preds = %2
  %14 = load %struct.Upvaldesc*, %struct.Upvaldesc** %9, align 8, !tbaa !40
  %15 = zext i32 %3 to i64
  br label %16

; <label>:16:                                     ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %14, i64 %17, i32 0
  store %struct.TString* null, %struct.TString** %18, align 8, !tbaa !42
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %21, label %16

; <label>:21:                                     ; preds = %16
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %21
  %24 = zext i32 %3 to i64
  br label %25

; <label>:25:                                     ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %33, %25 ]
  %27 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %28 = load %struct.Upvaldesc*, %struct.Upvaldesc** %9, align 8, !tbaa !40
  %29 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %28, i64 %26, i32 1
  store i8 %27, i8* %29, align 8, !tbaa !44
  %30 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0)
  %31 = load %struct.Upvaldesc*, %struct.Upvaldesc** %9, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %31, i64 %26, i32 2
  store i8 %30, i8* %32, align 1, !tbaa !45
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, %24
  br i1 %34, label %35, label %25

; <label>:35:                                     ; preds = %25, %2, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadProtos(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %6 = sext i32 %3 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call i8* @luaM_malloc_(%struct.lua_State* %5, i64 %7, i32 0) #7
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  %10 = bitcast %struct.Proto*** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  store i32 %3, i32* %11, align 8, !tbaa !47
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  %14 = zext i32 %3 to i64
  br label %15

; <label>:15:                                     ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = load %struct.Proto**, %struct.Proto*** %9, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.Proto*, %struct.Proto** %17, i64 %16
  store %struct.Proto* null, %struct.Proto** %18, align 8, !tbaa !48
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, %14
  br i1 %20, label %21, label %15

; <label>:21:                                     ; preds = %15
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %38

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %25 = zext i32 %3 to i64
  br label %26

; <label>:26:                                     ; preds = %26, %23
  %27 = phi i64 [ 0, %23 ], [ %36, %26 ]
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %29 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %28) #7
  %30 = load %struct.Proto**, %struct.Proto*** %9, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.Proto*, %struct.Proto** %30, i64 %27
  store %struct.Proto* %29, %struct.Proto** %31, align 8, !tbaa !48
  %32 = load %struct.Proto**, %struct.Proto*** %9, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.Proto*, %struct.Proto** %32, i64 %27
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8, !tbaa !48
  %35 = load %struct.TString*, %struct.TString** %24, align 8, !tbaa !23
  tail call fastcc void @LoadFunction(%struct.LoadState* %0, %struct.Proto* %34, %struct.TString* %35)
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, %25
  br i1 %37, label %38, label %26

; <label>:38:                                     ; preds = %26, %2, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadDebug(%struct.LoadState* nocapture readonly, %struct.Proto* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %6 = sext i32 %3 to i64
  %7 = tail call i8* @luaM_malloc_(%struct.lua_State* %5, i64 %6, i32 0) #7
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  store i8* %7, i8** %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  store i32 %3, i32* %9, align 4, !tbaa !50
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %7, i64 %6)
  %10 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %12 = sext i32 %10 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call i8* @luaM_malloc_(%struct.lua_State* %11, i64 %13, i32 0) #7
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %16 = bitcast %struct.AbsLineInfo** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  store i32 %10, i32* %17, align 8, !tbaa !52
  %18 = icmp sgt i32 %10, 0
  %19 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  br i1 %18, label %20, label %33

; <label>:20:                                     ; preds = %2
  %21 = zext i32 %10 to i64
  br label %22

; <label>:22:                                     ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = phi i32 [ %19, %20 ], [ %31, %22 ]
  %25 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %15, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %25, i64 %23, i32 0
  store i32 %24, i32* %26, align 4, !tbaa !53
  %27 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %28 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %15, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %28, i64 %23, i32 1
  store i32 %27, i32* %29, align 4, !tbaa !55
  %30 = add nuw nsw i64 %23, 1
  %31 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %32 = icmp eq i64 %30, %21
  br i1 %32, label %33, label %22

; <label>:33:                                     ; preds = %22, %2
  %34 = phi i32 [ %19, %2 ], [ %31, %22 ]
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !8
  %36 = sext i32 %34 to i64
  %37 = shl nsw i64 %36, 4
  %38 = tail call i8* @luaM_malloc_(%struct.lua_State* %35, i64 %37, i32 0) #7
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  %40 = bitcast %struct.LocVar** %39 to i8**
  store i8* %38, i8** %40, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  store i32 %34, i32* %41, align 4, !tbaa !57
  %42 = icmp sgt i32 %34, 0
  br i1 %42, label %43, label %68

; <label>:43:                                     ; preds = %33
  %44 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !tbaa !56
  %45 = zext i32 %34 to i64
  br label %46

; <label>:46:                                     ; preds = %46, %43
  %47 = phi i64 [ 0, %43 ], [ %49, %46 ]
  %48 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %44, i64 %47, i32 0
  store %struct.TString* null, %struct.TString** %48, align 8, !tbaa !58
  %49 = add nuw nsw i64 %47, 1
  %50 = icmp eq i64 %49, %45
  br i1 %50, label %51, label %46

; <label>:51:                                     ; preds = %46
  %52 = icmp sgt i32 %34, 0
  br i1 %52, label %53, label %68

; <label>:53:                                     ; preds = %51
  %54 = zext i32 %34 to i64
  br label %55

; <label>:55:                                     ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %66, %55 ]
  %57 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0)
  %58 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %58, i64 %56, i32 0
  store %struct.TString* %57, %struct.TString** %59, align 8, !tbaa !58
  %60 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %61 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %61, i64 %56, i32 1
  store i32 %60, i32* %62, align 8, !tbaa !60
  %63 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %64 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !tbaa !56
  %65 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %64, i64 %56, i32 2
  store i32 %63, i32* %65, align 4, !tbaa !61
  %66 = add nuw nsw i64 %56, 1
  %67 = icmp eq i64 %66, %54
  br i1 %67, label %68, label %55

; <label>:68:                                     ; preds = %55, %33, %51
  %69 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0)
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %73 = zext i32 %69 to i64
  br label %74

; <label>:74:                                     ; preds = %74, %71
  %75 = phi i64 [ 0, %71 ], [ %79, %74 ]
  %76 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0)
  %77 = load %struct.Upvaldesc*, %struct.Upvaldesc** %72, align 8, !tbaa !40
  %78 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %77, i64 %75, i32 0
  store %struct.TString* %76, %struct.TString** %78, align 8, !tbaa !42
  %79 = add nuw nsw i64 %75, 1
  %80 = icmp eq i64 %79, %73
  br i1 %80, label %81, label %74

; <label>:81:                                     ; preds = %74, %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @LoadSize(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 -1)
  ret i64 %2
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @LoadString(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0)
  %3 = icmp eq %struct.TString* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #8
  unreachable

; <label>:5:                                      ; preds = %1
  ret %struct.TString* %2
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 16}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!6, !7, i64 0}
!9 = !{!6, !7, i64 8}
!10 = !{!11, !7, i64 16}
!11 = !{!"lua_State", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !13, i64 96, !7, i64 160, !14, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192}
!12 = !{!"short", !3, i64 0}
!13 = !{!"CallInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 56, !12, i64 60, !12, i64 62}
!14 = !{!"long", !3, i64 0}
!15 = !{!"int", !3, i64 0}
!16 = !{!17, !3, i64 8}
!17 = !{!"TValue", !3, i64 0, !3, i64 8}
!18 = !{!19, !7, i64 24}
!19 = !{!"LClosure", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !7, i64 16, !7, i64 24, !3, i64 32}
!20 = !{!21, !14, i64 0}
!21 = !{!"Zio", !14, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!22 = !{!21, !7, i64 8}
!23 = !{!24, !7, i64 112}
!24 = !{!"Proto", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !3, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!25 = !{!24, !15, i64 44}
!26 = !{!24, !15, i64 48}
!27 = !{!24, !3, i64 10}
!28 = !{!24, !3, i64 11}
!29 = !{!24, !3, i64 12}
!30 = !{!31, !31, i64 0}
!31 = !{!"long long", !3, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !3, i64 0}
!34 = !{!24, !7, i64 64}
!35 = !{!24, !15, i64 24}
!36 = !{!24, !7, i64 56}
!37 = !{!24, !15, i64 20}
!38 = !{!39, !3, i64 8}
!39 = !{!"TString", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !15, i64 12, !3, i64 16}
!40 = !{!24, !7, i64 80}
!41 = !{!24, !15, i64 16}
!42 = !{!43, !7, i64 0}
!43 = !{!"Upvaldesc", !7, i64 0, !3, i64 8, !3, i64 9}
!44 = !{!43, !3, i64 8}
!45 = !{!43, !3, i64 9}
!46 = !{!24, !7, i64 72}
!47 = !{!24, !15, i64 32}
!48 = !{!7, !7, i64 0}
!49 = !{!24, !7, i64 88}
!50 = !{!24, !15, i64 28}
!51 = !{!24, !7, i64 96}
!52 = !{!24, !15, i64 40}
!53 = !{!54, !15, i64 0}
!54 = !{!"AbsLineInfo", !15, i64 0, !15, i64 4}
!55 = !{!54, !15, i64 4}
!56 = !{!24, !7, i64 104}
!57 = !{!24, !15, i64 36}
!58 = !{!59, !7, i64 0}
!59 = !{!"LocVar", !7, i64 0, !15, i64 8, !15, i64 12}
!60 = !{!59, !15, i64 8}
!61 = !{!59, !15, i64 12}
