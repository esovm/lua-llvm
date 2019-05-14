; ModuleID = 'llex.c'
source_filename = "llex.c"
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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.BlockCnt = type opaque
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.6, %struct.Labellist, %struct.Labellist }
%struct.anon.6 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@luaX_tokens = internal unnamed_addr constant [37 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)], align 16
@luai_ctype_ = external hidden local_unnamed_addr constant [257 x i8], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"'<\5C%d>'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"<integer>\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%s near %s\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"lexical element too long\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"chunk has too many lines\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"unfinished long %s (starting at line %d)\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"hexadecimal digit expected\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"missing '{'\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"UTF-8 value too large\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"missing '}'\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"decimal escape too large\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaX_init(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5
  %3 = bitcast %struct.TString* %2 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %3) #5
  br label %4

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %10, %4 ]
  %6 = getelementptr inbounds [37 x i8*], [37 x i8*]* @luaX_tokens, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8, !tbaa !2
  %8 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %7) #5
  %9 = bitcast %struct.TString* %8 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %9) #5
  %10 = add nuw nsw i64 %5, 1
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %8, i64 0, i32 3
  %12 = trunc i64 %10 to i8
  store i8 %12, i8* %11, align 2, !tbaa !6
  %13 = icmp eq i64 %10, 22
  br i1 %13, label %14, label %4

; <label>:14:                                     ; preds = %4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i8* @luaX_token2str(%struct.LexState* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 257
  br i1 %3, label %4, label %17

; <label>:4:                                      ; preds = %2
  %5 = add nsw i32 %1, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1, !tbaa !9
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !10
  br i1 %10, label %15, label %13

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %1) #5
  br label %27

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %1) #5
  br label %27

; <label>:17:                                     ; preds = %2
  %18 = add nsw i32 %1, -257
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [37 x i8*], [37 x i8*]* @luaX_tokens, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8, !tbaa !2
  %22 = icmp slt i32 %1, 289
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !10
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %21) #5
  br label %27

; <label>:27:                                     ; preds = %23, %17, %15, %13
  %28 = phi i8* [ %14, %13 ], [ %16, %15 ], [ %26, %23 ], [ %21, %17 ]
  ret i8* %28
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaX_syntaxerror(%struct.LexState* nocapture readonly, i8*) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !13
  tail call fastcc void @lexerror(%struct.LexState* %0, i8* %1, i32 %4) #6
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @lexerror(%struct.LexState* nocapture readonly, i8*, i32) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %7 = load %struct.TString*, %struct.TString** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !15
  %10 = tail call i8* @luaG_addinfo(%struct.lua_State* %5, i8* %1, %struct.TString* %7, i32 %9) #5
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %72, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %14 = add i32 %2, -290
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %48

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %18 = load %struct.Mbuffer*, %struct.Mbuffer** %17, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !17
  %21 = add i64 %20, 1
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !20
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !21
  br label %38

; <label>:28:                                     ; preds = %16
  %29 = icmp ugt i64 %23, 4611686018427387902
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %28
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:31:                                     ; preds = %28
  %32 = shl i64 %23, 1
  %33 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !21
  %35 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %13, i8* %34, i64 %23, i64 %32) #5
  store i8* %35, i8** %33, align 8, !tbaa !21
  store i64 %32, i64* %22, align 8, !tbaa !20
  %36 = load i64, i64* %19, align 8, !tbaa !17
  %37 = add i64 %36, 1
  br label %38

; <label>:38:                                     ; preds = %25, %31
  %39 = phi i64 [ %21, %25 ], [ %37, %31 ]
  %40 = phi i64 [ %20, %25 ], [ %36, %31 ]
  %41 = phi i8* [ %27, %25 ], [ %35, %31 ]
  store i64 %39, i64* %19, align 8, !tbaa !17
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8 0, i8* %42, align 1, !tbaa !9
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %44 = load %struct.Mbuffer*, %struct.Mbuffer** %17, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %44, i64 0, i32 0
  %46 = load i8*, i8** %45, align 8, !tbaa !21
  %47 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %46) #5
  br label %69

; <label>:48:                                     ; preds = %12
  %49 = icmp slt i32 %2, 257
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %48
  %51 = add nsw i32 %2, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !9
  %55 = and i8 %54, 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

; <label>:57:                                     ; preds = %50
  %58 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %2) #5
  br label %69

; <label>:59:                                     ; preds = %50
  %60 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %2) #5
  br label %69

; <label>:61:                                     ; preds = %48
  %62 = add nsw i32 %2, -257
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [37 x i8*], [37 x i8*]* @luaX_tokens, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8, !tbaa !2
  %66 = icmp slt i32 %2, 289
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %61
  %68 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %65) #5
  br label %69

; <label>:69:                                     ; preds = %57, %59, %61, %67, %38
  %70 = phi i8* [ %47, %38 ], [ %58, %57 ], [ %60, %59 ], [ %68, %67 ], [ %65, %61 ]
  %71 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %10, i8* %70) #5
  br label %72

; <label>:72:                                     ; preds = %3, %69
  %73 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  tail call void @luaD_throw(%struct.lua_State* %73, i32 3) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %6 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #5
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %7, align 8, !tbaa !22
  %10 = bitcast %union.StackValue* %8 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %6, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !26
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 0, i32 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %16 = load %struct.Table*, %struct.Table** %15, align 8, !tbaa !29
  %17 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !22
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 -1, i32 0
  %19 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %16, %struct.TValue* nonnull %18) #5
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !27
  %22 = and i8 %21, 15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.TValue* %19 to i32*
  store i32 1, i32* %25, align 8, !tbaa !9
  store i8 1, i8* %20, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !31
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %24
  tail call void @luaC_step(%struct.lua_State* nonnull %5) #5
  br label %36

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 1, i32 0, i32 0
  %34 = bitcast %struct.GCObject** %33 to %struct.TString**
  %35 = load %struct.TString*, %struct.TString** %34, align 8, !tbaa !9
  br label %36

; <label>:36:                                     ; preds = %24, %31, %32
  %37 = phi %struct.TString* [ %6, %31 ], [ %6, %24 ], [ %35, %32 ]
  %38 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !22
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i64 -1
  store %union.StackValue* %39, %union.StackValue** %7, align 8, !tbaa !22
  ret %struct.TString* %37
}

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState* nocapture, %struct.Zio*, %struct.TString*, i32) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 3, i32 0
  store i32 0, i32* %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 6
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 0
  store i32 %4, i32* %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 4, i32 0
  store i32 289, i32* %9, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 7
  store %struct.Zio* %2, %struct.Zio** %10, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 5
  store %struct.FuncState* null, %struct.FuncState** %11, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 1
  store i32 1, i32* %12, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 2
  store i32 1, i32* %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 11
  store %struct.TString* %3, %struct.TString** %14, align 8, !tbaa !14
  %15 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 12
  store %struct.TString* %15, %struct.TString** %16, align 8, !tbaa !39
  %17 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 8
  %19 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !20
  %24 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %17, i8* %21, i64 %23, i64 32) #5
  %25 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 0
  store i8* %24, i8** %26, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 2
  store i64 32, i64* %27, align 8, !tbaa !20
  ret void
}

declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !15
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2
  store i32 %3, i32* %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !35
  %8 = icmp eq i32 %7, 289
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3
  %11 = bitcast %struct.Token* %10 to i8*
  %12 = bitcast %struct.Token* %5 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %11, i8* nonnull %12, i64 16, i32 8, i1 false), !tbaa.struct !40
  store i32 289, i32* %6, align 8, !tbaa !35
  br label %17

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %15 = tail call fastcc i32 @llex(%struct.LexState* nonnull %0, %union.SemInfo* nonnull %14)
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 %15, i32* %16, align 8, !tbaa !13
  br label %17

; <label>:17:                                     ; preds = %13, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @llex(%struct.LexState*, %union.SemInfo*) unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %5 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 1
  store i64 0, i64* %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %9

; <label>:9:                                      ; preds = %74, %2
  %10 = load i32, i32* %7, align 8, !tbaa !34
  switch i32 %10, label %1511 [
    i32 10, label %11
    i32 13, label %11
    i32 32, label %12
    i32 12, label %12
    i32 9, label %12
    i32 11, label %12
    i32 45, label %28
    i32 91, label %93
    i32 61, label %100
    i32 60, label %133
    i32 62, label %181
    i32 47, label %229
    i32 126, label %262
    i32 58, label %295
    i32 34, label %328
    i32 39, label %328
    i32 46, label %1423
    i32 48, label %1509
    i32 49, label %1509
    i32 50, label %1509
    i32 51, label %1509
    i32 52, label %1509
    i32 53, label %1509
    i32 54, label %1509
    i32 55, label %1509
    i32 56, label %1509
    i32 57, label %1509
    i32 -1, label %1639
  ]

; <label>:11:                                     ; preds = %9, %9
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br label %74

; <label>:12:                                     ; preds = %9, %9, %9, %9
  %13 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i64 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !46
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8, !tbaa !46
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %24, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8, !tbaa !48
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %19, align 8, !tbaa !48
  %22 = load i8, i8* %20, align 1, !tbaa !9
  %23 = zext i8 %22 to i32
  br label %26

; <label>:24:                                     ; preds = %12
  %25 = tail call i32 @luaZ_fill(%struct.Zio* %13) #5
  br label %26

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 8, !tbaa !34
  br label %74

; <label>:28:                                     ; preds = %9
  %29 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i64 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !46
  %32 = add i64 %31, -1
  store i64 %32, i64* %30, align 8, !tbaa !46
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i64 0, i32 1
  %36 = load i8*, i8** %35, align 8, !tbaa !48
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %35, align 8, !tbaa !48
  %38 = load i8, i8* %36, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  br label %42

; <label>:40:                                     ; preds = %28
  %41 = tail call i32 @luaZ_fill(%struct.Zio* %29) #5
  br label %42

; <label>:42:                                     ; preds = %40, %34
  %43 = phi i32 [ %39, %34 ], [ %41, %40 ]
  store i32 %43, i32* %7, align 8, !tbaa !34
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %1639

; <label>:45:                                     ; preds = %42
  %46 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.Zio, %struct.Zio* %46, i64 0, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !46
  %49 = add i64 %48, -1
  store i64 %49, i64* %47, align 8, !tbaa !46
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %57, label %51

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.Zio, %struct.Zio* %46, i64 0, i32 1
  %53 = load i8*, i8** %52, align 8, !tbaa !48
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %52, align 8, !tbaa !48
  %55 = load i8, i8* %53, align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  br label %59

; <label>:57:                                     ; preds = %45
  %58 = tail call i32 @luaZ_fill(%struct.Zio* %46) #5
  br label %59

; <label>:59:                                     ; preds = %57, %51
  %60 = phi i32 [ %56, %51 ], [ %58, %57 ]
  store i32 %60, i32* %7, align 8, !tbaa !34
  %61 = icmp eq i32 %60, 91
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %69, %59
  %63 = phi i32 [ %60, %59 ], [ %70, %69 ]
  br label %75

; <label>:64:                                     ; preds = %59
  %65 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %66 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %66, i64 0, i32 1
  store i64 0, i64* %67, align 8, !tbaa !17
  %68 = icmp ugt i64 %65, 1
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %7, align 8, !tbaa !34
  br label %62

; <label>:71:                                     ; preds = %64
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i64 %65)
  %72 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %72, i64 0, i32 1
  store i64 0, i64* %73, align 8, !tbaa !17
  br label %74

; <label>:74:                                     ; preds = %75, %75, %75, %71, %26, %11
  br label %9

; <label>:75:                                     ; preds = %62, %91
  %76 = phi i32 [ %92, %91 ], [ %63, %62 ]
  switch i32 %76, label %77 [
    i32 10, label %74
    i32 13, label %74
    i32 -1, label %74
  ]

; <label>:77:                                     ; preds = %75
  %78 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %79 = getelementptr inbounds %struct.Zio, %struct.Zio* %78, i64 0, i32 0
  %80 = load i64, i64* %79, align 8, !tbaa !46
  %81 = add i64 %80, -1
  store i64 %81, i64* %79, align 8, !tbaa !46
  %82 = icmp eq i64 %80, 0
  br i1 %82, label %89, label %83

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.Zio, %struct.Zio* %78, i64 0, i32 1
  %85 = load i8*, i8** %84, align 8, !tbaa !48
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %84, align 8, !tbaa !48
  %87 = load i8, i8* %85, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  br label %91

; <label>:89:                                     ; preds = %77
  %90 = tail call i32 @luaZ_fill(%struct.Zio* %78) #5
  br label %91

; <label>:91:                                     ; preds = %89, %83
  %92 = phi i32 [ %88, %83 ], [ %90, %89 ]
  store i32 %92, i32* %7, align 8, !tbaa !34
  br label %75

; <label>:93:                                     ; preds = %9
  %94 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %95 = icmp ugt i64 %94, 1
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %93
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i64 %94)
  br label %1639

; <label>:97:                                     ; preds = %93
  %98 = icmp eq i64 %94, 0
  br i1 %98, label %99, label %1639

; <label>:99:                                     ; preds = %97
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 293) #6
  unreachable

; <label>:100:                                    ; preds = %9
  %101 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %102 = getelementptr inbounds %struct.Zio, %struct.Zio* %101, i64 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !46
  %104 = add i64 %103, -1
  store i64 %104, i64* %102, align 8, !tbaa !46
  %105 = icmp eq i64 %103, 0
  br i1 %105, label %112, label %106

; <label>:106:                                    ; preds = %100
  %107 = getelementptr inbounds %struct.Zio, %struct.Zio* %101, i64 0, i32 1
  %108 = load i8*, i8** %107, align 8, !tbaa !48
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %107, align 8, !tbaa !48
  %110 = load i8, i8* %108, align 1, !tbaa !9
  %111 = zext i8 %110 to i32
  br label %114

; <label>:112:                                    ; preds = %100
  %113 = tail call i32 @luaZ_fill(%struct.Zio* %101) #5
  br label %114

; <label>:114:                                    ; preds = %112, %106
  %115 = phi i32 [ %111, %106 ], [ %113, %112 ]
  store i32 %115, i32* %7, align 8, !tbaa !34
  %116 = icmp eq i32 %115, 61
  br i1 %116, label %117, label %1639

; <label>:117:                                    ; preds = %114
  %118 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %119 = getelementptr inbounds %struct.Zio, %struct.Zio* %118, i64 0, i32 0
  %120 = load i64, i64* %119, align 8, !tbaa !46
  %121 = add i64 %120, -1
  store i64 %121, i64* %119, align 8, !tbaa !46
  %122 = icmp eq i64 %120, 0
  br i1 %122, label %129, label %123

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds %struct.Zio, %struct.Zio* %118, i64 0, i32 1
  %125 = load i8*, i8** %124, align 8, !tbaa !48
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %124, align 8, !tbaa !48
  %127 = load i8, i8* %125, align 1, !tbaa !9
  %128 = zext i8 %127 to i32
  br label %131

; <label>:129:                                    ; preds = %117
  %130 = tail call i32 @luaZ_fill(%struct.Zio* %118) #5
  br label %131

; <label>:131:                                    ; preds = %123, %129
  %132 = phi i32 [ %128, %123 ], [ %130, %129 ]
  store i32 %132, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:133:                                    ; preds = %9
  %134 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %135 = getelementptr inbounds %struct.Zio, %struct.Zio* %134, i64 0, i32 0
  %136 = load i64, i64* %135, align 8, !tbaa !46
  %137 = add i64 %136, -1
  store i64 %137, i64* %135, align 8, !tbaa !46
  %138 = icmp eq i64 %136, 0
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %133
  %140 = getelementptr inbounds %struct.Zio, %struct.Zio* %134, i64 0, i32 1
  %141 = load i8*, i8** %140, align 8, !tbaa !48
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %142, i8** %140, align 8, !tbaa !48
  %143 = load i8, i8* %141, align 1, !tbaa !9
  %144 = zext i8 %143 to i32
  br label %147

; <label>:145:                                    ; preds = %133
  %146 = tail call i32 @luaZ_fill(%struct.Zio* %134) #5
  br label %147

; <label>:147:                                    ; preds = %145, %139
  %148 = phi i32 [ %144, %139 ], [ %146, %145 ]
  store i32 %148, i32* %7, align 8, !tbaa !34
  switch i32 %148, label %1639 [
    i32 61, label %149
    i32 60, label %165
  ]

; <label>:149:                                    ; preds = %147
  %150 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %151 = getelementptr inbounds %struct.Zio, %struct.Zio* %150, i64 0, i32 0
  %152 = load i64, i64* %151, align 8, !tbaa !46
  %153 = add i64 %152, -1
  store i64 %153, i64* %151, align 8, !tbaa !46
  %154 = icmp eq i64 %152, 0
  br i1 %154, label %161, label %155

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds %struct.Zio, %struct.Zio* %150, i64 0, i32 1
  %157 = load i8*, i8** %156, align 8, !tbaa !48
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %158, i8** %156, align 8, !tbaa !48
  %159 = load i8, i8* %157, align 1, !tbaa !9
  %160 = zext i8 %159 to i32
  br label %163

; <label>:161:                                    ; preds = %149
  %162 = tail call i32 @luaZ_fill(%struct.Zio* %150) #5
  br label %163

; <label>:163:                                    ; preds = %155, %161
  %164 = phi i32 [ %160, %155 ], [ %162, %161 ]
  store i32 %164, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:165:                                    ; preds = %147
  %166 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %167 = getelementptr inbounds %struct.Zio, %struct.Zio* %166, i64 0, i32 0
  %168 = load i64, i64* %167, align 8, !tbaa !46
  %169 = add i64 %168, -1
  store i64 %169, i64* %167, align 8, !tbaa !46
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %177, label %171

; <label>:171:                                    ; preds = %165
  %172 = getelementptr inbounds %struct.Zio, %struct.Zio* %166, i64 0, i32 1
  %173 = load i8*, i8** %172, align 8, !tbaa !48
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  store i8* %174, i8** %172, align 8, !tbaa !48
  %175 = load i8, i8* %173, align 1, !tbaa !9
  %176 = zext i8 %175 to i32
  br label %179

; <label>:177:                                    ; preds = %165
  %178 = tail call i32 @luaZ_fill(%struct.Zio* %166) #5
  br label %179

; <label>:179:                                    ; preds = %171, %177
  %180 = phi i32 [ %176, %171 ], [ %178, %177 ]
  store i32 %180, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:181:                                    ; preds = %9
  %182 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %183 = getelementptr inbounds %struct.Zio, %struct.Zio* %182, i64 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !46
  %185 = add i64 %184, -1
  store i64 %185, i64* %183, align 8, !tbaa !46
  %186 = icmp eq i64 %184, 0
  br i1 %186, label %193, label %187

; <label>:187:                                    ; preds = %181
  %188 = getelementptr inbounds %struct.Zio, %struct.Zio* %182, i64 0, i32 1
  %189 = load i8*, i8** %188, align 8, !tbaa !48
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  store i8* %190, i8** %188, align 8, !tbaa !48
  %191 = load i8, i8* %189, align 1, !tbaa !9
  %192 = zext i8 %191 to i32
  br label %195

; <label>:193:                                    ; preds = %181
  %194 = tail call i32 @luaZ_fill(%struct.Zio* %182) #5
  br label %195

; <label>:195:                                    ; preds = %193, %187
  %196 = phi i32 [ %192, %187 ], [ %194, %193 ]
  store i32 %196, i32* %7, align 8, !tbaa !34
  switch i32 %196, label %1639 [
    i32 61, label %197
    i32 62, label %213
  ]

; <label>:197:                                    ; preds = %195
  %198 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %199 = getelementptr inbounds %struct.Zio, %struct.Zio* %198, i64 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !46
  %201 = add i64 %200, -1
  store i64 %201, i64* %199, align 8, !tbaa !46
  %202 = icmp eq i64 %200, 0
  br i1 %202, label %209, label %203

; <label>:203:                                    ; preds = %197
  %204 = getelementptr inbounds %struct.Zio, %struct.Zio* %198, i64 0, i32 1
  %205 = load i8*, i8** %204, align 8, !tbaa !48
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  store i8* %206, i8** %204, align 8, !tbaa !48
  %207 = load i8, i8* %205, align 1, !tbaa !9
  %208 = zext i8 %207 to i32
  br label %211

; <label>:209:                                    ; preds = %197
  %210 = tail call i32 @luaZ_fill(%struct.Zio* %198) #5
  br label %211

; <label>:211:                                    ; preds = %203, %209
  %212 = phi i32 [ %208, %203 ], [ %210, %209 ]
  store i32 %212, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:213:                                    ; preds = %195
  %214 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %215 = getelementptr inbounds %struct.Zio, %struct.Zio* %214, i64 0, i32 0
  %216 = load i64, i64* %215, align 8, !tbaa !46
  %217 = add i64 %216, -1
  store i64 %217, i64* %215, align 8, !tbaa !46
  %218 = icmp eq i64 %216, 0
  br i1 %218, label %225, label %219

; <label>:219:                                    ; preds = %213
  %220 = getelementptr inbounds %struct.Zio, %struct.Zio* %214, i64 0, i32 1
  %221 = load i8*, i8** %220, align 8, !tbaa !48
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8* %222, i8** %220, align 8, !tbaa !48
  %223 = load i8, i8* %221, align 1, !tbaa !9
  %224 = zext i8 %223 to i32
  br label %227

; <label>:225:                                    ; preds = %213
  %226 = tail call i32 @luaZ_fill(%struct.Zio* %214) #5
  br label %227

; <label>:227:                                    ; preds = %219, %225
  %228 = phi i32 [ %224, %219 ], [ %226, %225 ]
  store i32 %228, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:229:                                    ; preds = %9
  %230 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %231 = getelementptr inbounds %struct.Zio, %struct.Zio* %230, i64 0, i32 0
  %232 = load i64, i64* %231, align 8, !tbaa !46
  %233 = add i64 %232, -1
  store i64 %233, i64* %231, align 8, !tbaa !46
  %234 = icmp eq i64 %232, 0
  br i1 %234, label %241, label %235

; <label>:235:                                    ; preds = %229
  %236 = getelementptr inbounds %struct.Zio, %struct.Zio* %230, i64 0, i32 1
  %237 = load i8*, i8** %236, align 8, !tbaa !48
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  store i8* %238, i8** %236, align 8, !tbaa !48
  %239 = load i8, i8* %237, align 1, !tbaa !9
  %240 = zext i8 %239 to i32
  br label %243

; <label>:241:                                    ; preds = %229
  %242 = tail call i32 @luaZ_fill(%struct.Zio* %230) #5
  br label %243

; <label>:243:                                    ; preds = %241, %235
  %244 = phi i32 [ %240, %235 ], [ %242, %241 ]
  store i32 %244, i32* %7, align 8, !tbaa !34
  %245 = icmp eq i32 %244, 47
  br i1 %245, label %246, label %1639

; <label>:246:                                    ; preds = %243
  %247 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %248 = getelementptr inbounds %struct.Zio, %struct.Zio* %247, i64 0, i32 0
  %249 = load i64, i64* %248, align 8, !tbaa !46
  %250 = add i64 %249, -1
  store i64 %250, i64* %248, align 8, !tbaa !46
  %251 = icmp eq i64 %249, 0
  br i1 %251, label %258, label %252

; <label>:252:                                    ; preds = %246
  %253 = getelementptr inbounds %struct.Zio, %struct.Zio* %247, i64 0, i32 1
  %254 = load i8*, i8** %253, align 8, !tbaa !48
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  store i8* %255, i8** %253, align 8, !tbaa !48
  %256 = load i8, i8* %254, align 1, !tbaa !9
  %257 = zext i8 %256 to i32
  br label %260

; <label>:258:                                    ; preds = %246
  %259 = tail call i32 @luaZ_fill(%struct.Zio* %247) #5
  br label %260

; <label>:260:                                    ; preds = %252, %258
  %261 = phi i32 [ %257, %252 ], [ %259, %258 ]
  store i32 %261, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:262:                                    ; preds = %9
  %263 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %264 = getelementptr inbounds %struct.Zio, %struct.Zio* %263, i64 0, i32 0
  %265 = load i64, i64* %264, align 8, !tbaa !46
  %266 = add i64 %265, -1
  store i64 %266, i64* %264, align 8, !tbaa !46
  %267 = icmp eq i64 %265, 0
  br i1 %267, label %274, label %268

; <label>:268:                                    ; preds = %262
  %269 = getelementptr inbounds %struct.Zio, %struct.Zio* %263, i64 0, i32 1
  %270 = load i8*, i8** %269, align 8, !tbaa !48
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  store i8* %271, i8** %269, align 8, !tbaa !48
  %272 = load i8, i8* %270, align 1, !tbaa !9
  %273 = zext i8 %272 to i32
  br label %276

; <label>:274:                                    ; preds = %262
  %275 = tail call i32 @luaZ_fill(%struct.Zio* %263) #5
  br label %276

; <label>:276:                                    ; preds = %274, %268
  %277 = phi i32 [ %273, %268 ], [ %275, %274 ]
  store i32 %277, i32* %7, align 8, !tbaa !34
  %278 = icmp eq i32 %277, 61
  br i1 %278, label %279, label %1639

; <label>:279:                                    ; preds = %276
  %280 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %281 = getelementptr inbounds %struct.Zio, %struct.Zio* %280, i64 0, i32 0
  %282 = load i64, i64* %281, align 8, !tbaa !46
  %283 = add i64 %282, -1
  store i64 %283, i64* %281, align 8, !tbaa !46
  %284 = icmp eq i64 %282, 0
  br i1 %284, label %291, label %285

; <label>:285:                                    ; preds = %279
  %286 = getelementptr inbounds %struct.Zio, %struct.Zio* %280, i64 0, i32 1
  %287 = load i8*, i8** %286, align 8, !tbaa !48
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  store i8* %288, i8** %286, align 8, !tbaa !48
  %289 = load i8, i8* %287, align 1, !tbaa !9
  %290 = zext i8 %289 to i32
  br label %293

; <label>:291:                                    ; preds = %279
  %292 = tail call i32 @luaZ_fill(%struct.Zio* %280) #5
  br label %293

; <label>:293:                                    ; preds = %285, %291
  %294 = phi i32 [ %290, %285 ], [ %292, %291 ]
  store i32 %294, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:295:                                    ; preds = %9
  %296 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %297 = getelementptr inbounds %struct.Zio, %struct.Zio* %296, i64 0, i32 0
  %298 = load i64, i64* %297, align 8, !tbaa !46
  %299 = add i64 %298, -1
  store i64 %299, i64* %297, align 8, !tbaa !46
  %300 = icmp eq i64 %298, 0
  br i1 %300, label %307, label %301

; <label>:301:                                    ; preds = %295
  %302 = getelementptr inbounds %struct.Zio, %struct.Zio* %296, i64 0, i32 1
  %303 = load i8*, i8** %302, align 8, !tbaa !48
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  store i8* %304, i8** %302, align 8, !tbaa !48
  %305 = load i8, i8* %303, align 1, !tbaa !9
  %306 = zext i8 %305 to i32
  br label %309

; <label>:307:                                    ; preds = %295
  %308 = tail call i32 @luaZ_fill(%struct.Zio* %296) #5
  br label %309

; <label>:309:                                    ; preds = %307, %301
  %310 = phi i32 [ %306, %301 ], [ %308, %307 ]
  store i32 %310, i32* %7, align 8, !tbaa !34
  %311 = icmp eq i32 %310, 58
  br i1 %311, label %312, label %1639

; <label>:312:                                    ; preds = %309
  %313 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %314 = getelementptr inbounds %struct.Zio, %struct.Zio* %313, i64 0, i32 0
  %315 = load i64, i64* %314, align 8, !tbaa !46
  %316 = add i64 %315, -1
  store i64 %316, i64* %314, align 8, !tbaa !46
  %317 = icmp eq i64 %315, 0
  br i1 %317, label %324, label %318

; <label>:318:                                    ; preds = %312
  %319 = getelementptr inbounds %struct.Zio, %struct.Zio* %313, i64 0, i32 1
  %320 = load i8*, i8** %319, align 8, !tbaa !48
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  store i8* %321, i8** %319, align 8, !tbaa !48
  %322 = load i8, i8* %320, align 1, !tbaa !9
  %323 = zext i8 %322 to i32
  br label %326

; <label>:324:                                    ; preds = %312
  %325 = tail call i32 @luaZ_fill(%struct.Zio* %313) #5
  br label %326

; <label>:326:                                    ; preds = %318, %324
  %327 = phi i32 [ %323, %318 ], [ %325, %324 ]
  store i32 %327, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:328:                                    ; preds = %9, %9
  %329 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %330 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %329, i64 0, i32 1
  %331 = load i64, i64* %330, align 8, !tbaa !17
  %332 = add i64 %331, 1
  %333 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %329, i64 0, i32 2
  %334 = load i64, i64* %333, align 8, !tbaa !20
  %335 = icmp ugt i64 %332, %334
  br i1 %335, label %339, label %336

; <label>:336:                                    ; preds = %328
  %337 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %329, i64 0, i32 0
  %338 = load i8*, i8** %337, align 8, !tbaa !21
  br label %351

; <label>:339:                                    ; preds = %328
  %340 = icmp ugt i64 %334, 4611686018427387902
  br i1 %340, label %341, label %342

; <label>:341:                                    ; preds = %339
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:342:                                    ; preds = %339
  %343 = shl i64 %334, 1
  %344 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %345 = load %struct.lua_State*, %struct.lua_State** %344, align 8, !tbaa !10
  %346 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %329, i64 0, i32 0
  %347 = load i8*, i8** %346, align 8, !tbaa !21
  %348 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %345, i8* %347, i64 %334, i64 %343) #5
  store i8* %348, i8** %346, align 8, !tbaa !21
  store i64 %343, i64* %333, align 8, !tbaa !20
  %349 = load i64, i64* %330, align 8, !tbaa !17
  %350 = add i64 %349, 1
  br label %351

; <label>:351:                                    ; preds = %342, %336
  %352 = phi i64 [ %332, %336 ], [ %350, %342 ]
  %353 = phi i64 [ %331, %336 ], [ %349, %342 ]
  %354 = phi i8* [ %338, %336 ], [ %348, %342 ]
  %355 = trunc i32 %10 to i8
  store i64 %352, i64* %330, align 8, !tbaa !17
  %356 = getelementptr inbounds i8, i8* %354, i64 %353
  store i8 %355, i8* %356, align 1, !tbaa !9
  %357 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %358 = getelementptr inbounds %struct.Zio, %struct.Zio* %357, i64 0, i32 0
  %359 = load i64, i64* %358, align 8, !tbaa !46
  %360 = add i64 %359, -1
  store i64 %360, i64* %358, align 8, !tbaa !46
  %361 = icmp eq i64 %359, 0
  br i1 %361, label %368, label %362

; <label>:362:                                    ; preds = %351
  %363 = getelementptr inbounds %struct.Zio, %struct.Zio* %357, i64 0, i32 1
  %364 = load i8*, i8** %363, align 8, !tbaa !48
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  store i8* %365, i8** %363, align 8, !tbaa !48
  %366 = load i8, i8* %364, align 1, !tbaa !9
  %367 = zext i8 %366 to i32
  br label %370

; <label>:368:                                    ; preds = %351
  %369 = tail call i32 @luaZ_fill(%struct.Zio* %357) #5
  br label %370

; <label>:370:                                    ; preds = %368, %362
  %371 = phi i32 [ %367, %362 ], [ %369, %368 ]
  store i32 %371, i32* %7, align 8, !tbaa !34
  %372 = icmp eq i32 %371, %10
  br i1 %372, label %1336, label %373

; <label>:373:                                    ; preds = %370
  %374 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %375 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %376

; <label>:376:                                    ; preds = %1333, %373
  %377 = phi i32 [ %371, %373 ], [ %1334, %1333 ]
  switch i32 %377, label %1290 [
    i32 -1, label %378
    i32 10, label %379
    i32 13, label %379
    i32 92, label %380
  ]

; <label>:378:                                    ; preds = %376
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 289) #7
  unreachable

; <label>:379:                                    ; preds = %376, %376
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:380:                                    ; preds = %376
  %381 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %382 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %381, i64 0, i32 1
  %383 = load i64, i64* %382, align 8, !tbaa !17
  %384 = add i64 %383, 1
  %385 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %381, i64 0, i32 2
  %386 = load i64, i64* %385, align 8, !tbaa !20
  %387 = icmp ugt i64 %384, %386
  br i1 %387, label %391, label %388

; <label>:388:                                    ; preds = %380
  %389 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %381, i64 0, i32 0
  %390 = load i8*, i8** %389, align 8, !tbaa !21
  br label %402

; <label>:391:                                    ; preds = %380
  %392 = icmp ugt i64 %386, 4611686018427387902
  br i1 %392, label %393, label %394

; <label>:393:                                    ; preds = %391
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:394:                                    ; preds = %391
  %395 = shl i64 %386, 1
  %396 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %397 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %381, i64 0, i32 0
  %398 = load i8*, i8** %397, align 8, !tbaa !21
  %399 = call i8* @luaM_saferealloc_(%struct.lua_State* %396, i8* %398, i64 %386, i64 %395) #5
  store i8* %399, i8** %397, align 8, !tbaa !21
  store i64 %395, i64* %385, align 8, !tbaa !20
  %400 = load i64, i64* %382, align 8, !tbaa !17
  %401 = add i64 %400, 1
  br label %402

; <label>:402:                                    ; preds = %394, %388
  %403 = phi i64 [ %384, %388 ], [ %401, %394 ]
  %404 = phi i64 [ %383, %388 ], [ %400, %394 ]
  %405 = phi i8* [ %390, %388 ], [ %399, %394 ]
  store i64 %403, i64* %382, align 8, !tbaa !17
  %406 = getelementptr inbounds i8, i8* %405, i64 %404
  store i8 92, i8* %406, align 1, !tbaa !9
  %407 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %408 = getelementptr inbounds %struct.Zio, %struct.Zio* %407, i64 0, i32 0
  %409 = load i64, i64* %408, align 8, !tbaa !46
  %410 = add i64 %409, -1
  store i64 %410, i64* %408, align 8, !tbaa !46
  %411 = icmp eq i64 %409, 0
  br i1 %411, label %418, label %412

; <label>:412:                                    ; preds = %402
  %413 = getelementptr inbounds %struct.Zio, %struct.Zio* %407, i64 0, i32 1
  %414 = load i8*, i8** %413, align 8, !tbaa !48
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  store i8* %415, i8** %413, align 8, !tbaa !48
  %416 = load i8, i8* %414, align 1, !tbaa !9
  %417 = zext i8 %416 to i32
  br label %420

; <label>:418:                                    ; preds = %402
  %419 = call i32 @luaZ_fill(%struct.Zio* %407) #5
  br label %420

; <label>:420:                                    ; preds = %418, %412
  %421 = phi i32 [ %417, %412 ], [ %419, %418 ]
  store i32 %421, i32* %7, align 8, !tbaa !34
  switch i32 %421, label %1077 [
    i32 97, label %1244
    i32 98, label %422
    i32 102, label %423
    i32 110, label %424
    i32 114, label %425
    i32 116, label %426
    i32 118, label %427
    i32 120, label %428
    i32 117, label %627
    i32 10, label %1020
    i32 13, label %1020
    i32 92, label %1021
    i32 34, label %1021
    i32 39, label %1021
    i32 -1, label %1333
    i32 122, label %1022
  ]

; <label>:422:                                    ; preds = %420
  br label %1244

; <label>:423:                                    ; preds = %420
  br label %1244

; <label>:424:                                    ; preds = %420
  br label %1244

; <label>:425:                                    ; preds = %420
  br label %1244

; <label>:426:                                    ; preds = %420
  br label %1244

; <label>:427:                                    ; preds = %420
  br label %1244

; <label>:428:                                    ; preds = %420
  %429 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %430 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %429, i64 0, i32 1
  %431 = load i64, i64* %430, align 8, !tbaa !17
  %432 = add i64 %431, 1
  %433 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %429, i64 0, i32 2
  %434 = load i64, i64* %433, align 8, !tbaa !20
  %435 = icmp ugt i64 %432, %434
  br i1 %435, label %439, label %436

; <label>:436:                                    ; preds = %428
  %437 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %429, i64 0, i32 0
  %438 = load i8*, i8** %437, align 8, !tbaa !21
  br label %450

; <label>:439:                                    ; preds = %428
  %440 = icmp ugt i64 %434, 4611686018427387902
  br i1 %440, label %441, label %442

; <label>:441:                                    ; preds = %439
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:442:                                    ; preds = %439
  %443 = shl i64 %434, 1
  %444 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %445 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %429, i64 0, i32 0
  %446 = load i8*, i8** %445, align 8, !tbaa !21
  %447 = call i8* @luaM_saferealloc_(%struct.lua_State* %444, i8* %446, i64 %434, i64 %443) #5
  store i8* %447, i8** %445, align 8, !tbaa !21
  store i64 %443, i64* %433, align 8, !tbaa !20
  %448 = load i64, i64* %430, align 8, !tbaa !17
  %449 = add i64 %448, 1
  br label %450

; <label>:450:                                    ; preds = %442, %436
  %451 = phi i64 [ %432, %436 ], [ %449, %442 ]
  %452 = phi i64 [ %431, %436 ], [ %448, %442 ]
  %453 = phi i8* [ %438, %436 ], [ %447, %442 ]
  store i64 %451, i64* %430, align 8, !tbaa !17
  %454 = getelementptr inbounds i8, i8* %453, i64 %452
  store i8 120, i8* %454, align 1, !tbaa !9
  %455 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %456 = getelementptr inbounds %struct.Zio, %struct.Zio* %455, i64 0, i32 0
  %457 = load i64, i64* %456, align 8, !tbaa !46
  %458 = add i64 %457, -1
  store i64 %458, i64* %456, align 8, !tbaa !46
  %459 = icmp eq i64 %457, 0
  br i1 %459, label %466, label %460

; <label>:460:                                    ; preds = %450
  %461 = getelementptr inbounds %struct.Zio, %struct.Zio* %455, i64 0, i32 1
  %462 = load i8*, i8** %461, align 8, !tbaa !48
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  store i8* %463, i8** %461, align 8, !tbaa !48
  %464 = load i8, i8* %462, align 1, !tbaa !9
  %465 = zext i8 %464 to i32
  br label %468

; <label>:466:                                    ; preds = %450
  %467 = call i32 @luaZ_fill(%struct.Zio* %455) #5
  br label %468

; <label>:468:                                    ; preds = %466, %460
  %469 = phi i32 [ %465, %460 ], [ %467, %466 ]
  store i32 %469, i32* %7, align 8, !tbaa !34
  %470 = add nsw i32 %469, 1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %471
  %473 = load i8, i8* %472, align 1, !tbaa !9
  %474 = and i8 %473, 16
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %522

; <label>:476:                                    ; preds = %468
  %477 = icmp eq i32 %469, -1
  br i1 %477, label %521, label %478

; <label>:478:                                    ; preds = %476
  %479 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %480 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %479, i64 0, i32 1
  %481 = load i64, i64* %480, align 8, !tbaa !17
  %482 = add i64 %481, 1
  %483 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %479, i64 0, i32 2
  %484 = load i64, i64* %483, align 8, !tbaa !20
  %485 = icmp ugt i64 %482, %484
  br i1 %485, label %489, label %486

; <label>:486:                                    ; preds = %478
  %487 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %479, i64 0, i32 0
  %488 = load i8*, i8** %487, align 8, !tbaa !21
  br label %500

; <label>:489:                                    ; preds = %478
  %490 = icmp ugt i64 %484, 4611686018427387902
  br i1 %490, label %491, label %492

; <label>:491:                                    ; preds = %489
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:492:                                    ; preds = %489
  %493 = shl i64 %484, 1
  %494 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %495 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %479, i64 0, i32 0
  %496 = load i8*, i8** %495, align 8, !tbaa !21
  %497 = call i8* @luaM_saferealloc_(%struct.lua_State* %494, i8* %496, i64 %484, i64 %493) #5
  store i8* %497, i8** %495, align 8, !tbaa !21
  store i64 %493, i64* %483, align 8, !tbaa !20
  %498 = load i64, i64* %480, align 8, !tbaa !17
  %499 = add i64 %498, 1
  br label %500

; <label>:500:                                    ; preds = %492, %486
  %501 = phi i64 [ %482, %486 ], [ %499, %492 ]
  %502 = phi i64 [ %481, %486 ], [ %498, %492 ]
  %503 = phi i8* [ %488, %486 ], [ %497, %492 ]
  %504 = trunc i32 %469 to i8
  store i64 %501, i64* %480, align 8, !tbaa !17
  %505 = getelementptr inbounds i8, i8* %503, i64 %502
  store i8 %504, i8* %505, align 1, !tbaa !9
  %506 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %507 = getelementptr inbounds %struct.Zio, %struct.Zio* %506, i64 0, i32 0
  %508 = load i64, i64* %507, align 8, !tbaa !46
  %509 = add i64 %508, -1
  store i64 %509, i64* %507, align 8, !tbaa !46
  %510 = icmp eq i64 %508, 0
  br i1 %510, label %517, label %511

; <label>:511:                                    ; preds = %500
  %512 = getelementptr inbounds %struct.Zio, %struct.Zio* %506, i64 0, i32 1
  %513 = load i8*, i8** %512, align 8, !tbaa !48
  %514 = getelementptr inbounds i8, i8* %513, i64 1
  store i8* %514, i8** %512, align 8, !tbaa !48
  %515 = load i8, i8* %513, align 1, !tbaa !9
  %516 = zext i8 %515 to i32
  br label %519

; <label>:517:                                    ; preds = %500
  %518 = call i32 @luaZ_fill(%struct.Zio* %506) #5
  br label %519

; <label>:519:                                    ; preds = %517, %511
  %520 = phi i32 [ %516, %511 ], [ %518, %517 ]
  store i32 %520, i32* %7, align 8, !tbaa !34
  br label %521

; <label>:521:                                    ; preds = %519, %476
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:522:                                    ; preds = %468
  %523 = call i32 @luaO_hexavalue(i32 %469) #5
  %524 = shl i32 %523, 4
  %525 = load i32, i32* %7, align 8, !tbaa !34
  %526 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %527 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %526, i64 0, i32 1
  %528 = load i64, i64* %527, align 8, !tbaa !17
  %529 = add i64 %528, 1
  %530 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %526, i64 0, i32 2
  %531 = load i64, i64* %530, align 8, !tbaa !20
  %532 = icmp ugt i64 %529, %531
  br i1 %532, label %536, label %533

; <label>:533:                                    ; preds = %522
  %534 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %526, i64 0, i32 0
  %535 = load i8*, i8** %534, align 8, !tbaa !21
  br label %547

; <label>:536:                                    ; preds = %522
  %537 = icmp ugt i64 %531, 4611686018427387902
  br i1 %537, label %538, label %539

; <label>:538:                                    ; preds = %536
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:539:                                    ; preds = %536
  %540 = shl i64 %531, 1
  %541 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %542 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %526, i64 0, i32 0
  %543 = load i8*, i8** %542, align 8, !tbaa !21
  %544 = call i8* @luaM_saferealloc_(%struct.lua_State* %541, i8* %543, i64 %531, i64 %540) #5
  store i8* %544, i8** %542, align 8, !tbaa !21
  store i64 %540, i64* %530, align 8, !tbaa !20
  %545 = load i64, i64* %527, align 8, !tbaa !17
  %546 = add i64 %545, 1
  br label %547

; <label>:547:                                    ; preds = %539, %533
  %548 = phi i64 [ %529, %533 ], [ %546, %539 ]
  %549 = phi i64 [ %528, %533 ], [ %545, %539 ]
  %550 = phi i8* [ %535, %533 ], [ %544, %539 ]
  %551 = trunc i32 %525 to i8
  store i64 %548, i64* %527, align 8, !tbaa !17
  %552 = getelementptr inbounds i8, i8* %550, i64 %549
  store i8 %551, i8* %552, align 1, !tbaa !9
  %553 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %554 = getelementptr inbounds %struct.Zio, %struct.Zio* %553, i64 0, i32 0
  %555 = load i64, i64* %554, align 8, !tbaa !46
  %556 = add i64 %555, -1
  store i64 %556, i64* %554, align 8, !tbaa !46
  %557 = icmp eq i64 %555, 0
  br i1 %557, label %564, label %558

; <label>:558:                                    ; preds = %547
  %559 = getelementptr inbounds %struct.Zio, %struct.Zio* %553, i64 0, i32 1
  %560 = load i8*, i8** %559, align 8, !tbaa !48
  %561 = getelementptr inbounds i8, i8* %560, i64 1
  store i8* %561, i8** %559, align 8, !tbaa !48
  %562 = load i8, i8* %560, align 1, !tbaa !9
  %563 = zext i8 %562 to i32
  br label %566

; <label>:564:                                    ; preds = %547
  %565 = call i32 @luaZ_fill(%struct.Zio* %553) #5
  br label %566

; <label>:566:                                    ; preds = %564, %558
  %567 = phi i32 [ %563, %558 ], [ %565, %564 ]
  store i32 %567, i32* %7, align 8, !tbaa !34
  %568 = add nsw i32 %567, 1
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %569
  %571 = load i8, i8* %570, align 1, !tbaa !9
  %572 = and i8 %571, 16
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %620

; <label>:574:                                    ; preds = %566
  %575 = icmp eq i32 %567, -1
  br i1 %575, label %619, label %576

; <label>:576:                                    ; preds = %574
  %577 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %578 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %577, i64 0, i32 1
  %579 = load i64, i64* %578, align 8, !tbaa !17
  %580 = add i64 %579, 1
  %581 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %577, i64 0, i32 2
  %582 = load i64, i64* %581, align 8, !tbaa !20
  %583 = icmp ugt i64 %580, %582
  br i1 %583, label %587, label %584

; <label>:584:                                    ; preds = %576
  %585 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %577, i64 0, i32 0
  %586 = load i8*, i8** %585, align 8, !tbaa !21
  br label %598

; <label>:587:                                    ; preds = %576
  %588 = icmp ugt i64 %582, 4611686018427387902
  br i1 %588, label %589, label %590

; <label>:589:                                    ; preds = %587
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:590:                                    ; preds = %587
  %591 = shl i64 %582, 1
  %592 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %593 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %577, i64 0, i32 0
  %594 = load i8*, i8** %593, align 8, !tbaa !21
  %595 = call i8* @luaM_saferealloc_(%struct.lua_State* %592, i8* %594, i64 %582, i64 %591) #5
  store i8* %595, i8** %593, align 8, !tbaa !21
  store i64 %591, i64* %581, align 8, !tbaa !20
  %596 = load i64, i64* %578, align 8, !tbaa !17
  %597 = add i64 %596, 1
  br label %598

; <label>:598:                                    ; preds = %590, %584
  %599 = phi i64 [ %580, %584 ], [ %597, %590 ]
  %600 = phi i64 [ %579, %584 ], [ %596, %590 ]
  %601 = phi i8* [ %586, %584 ], [ %595, %590 ]
  %602 = trunc i32 %567 to i8
  store i64 %599, i64* %578, align 8, !tbaa !17
  %603 = getelementptr inbounds i8, i8* %601, i64 %600
  store i8 %602, i8* %603, align 1, !tbaa !9
  %604 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %605 = getelementptr inbounds %struct.Zio, %struct.Zio* %604, i64 0, i32 0
  %606 = load i64, i64* %605, align 8, !tbaa !46
  %607 = add i64 %606, -1
  store i64 %607, i64* %605, align 8, !tbaa !46
  %608 = icmp eq i64 %606, 0
  br i1 %608, label %615, label %609

; <label>:609:                                    ; preds = %598
  %610 = getelementptr inbounds %struct.Zio, %struct.Zio* %604, i64 0, i32 1
  %611 = load i8*, i8** %610, align 8, !tbaa !48
  %612 = getelementptr inbounds i8, i8* %611, i64 1
  store i8* %612, i8** %610, align 8, !tbaa !48
  %613 = load i8, i8* %611, align 1, !tbaa !9
  %614 = zext i8 %613 to i32
  br label %617

; <label>:615:                                    ; preds = %598
  %616 = call i32 @luaZ_fill(%struct.Zio* %604) #5
  br label %617

; <label>:617:                                    ; preds = %615, %609
  %618 = phi i32 [ %614, %609 ], [ %616, %615 ]
  store i32 %618, i32* %7, align 8, !tbaa !34
  br label %619

; <label>:619:                                    ; preds = %617, %574
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:620:                                    ; preds = %566
  %621 = call i32 @luaO_hexavalue(i32 %567) #5
  %622 = add nsw i32 %621, %524
  %623 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %624 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %623, i64 0, i32 1
  %625 = load i64, i64* %624, align 8, !tbaa !17
  %626 = add i64 %625, -2
  store i64 %626, i64* %624, align 8, !tbaa !17
  br label %1244

; <label>:627:                                    ; preds = %420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %375) #5
  %628 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %629 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %628, i64 0, i32 1
  %630 = load i64, i64* %629, align 8, !tbaa !17
  %631 = add i64 %630, 1
  %632 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %628, i64 0, i32 2
  %633 = load i64, i64* %632, align 8, !tbaa !20
  %634 = icmp ugt i64 %631, %633
  br i1 %634, label %638, label %635

; <label>:635:                                    ; preds = %627
  %636 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %628, i64 0, i32 0
  %637 = load i8*, i8** %636, align 8, !tbaa !21
  br label %649

; <label>:638:                                    ; preds = %627
  %639 = icmp ugt i64 %633, 4611686018427387902
  br i1 %639, label %640, label %641

; <label>:640:                                    ; preds = %638
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:641:                                    ; preds = %638
  %642 = shl i64 %633, 1
  %643 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %644 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %628, i64 0, i32 0
  %645 = load i8*, i8** %644, align 8, !tbaa !21
  %646 = call i8* @luaM_saferealloc_(%struct.lua_State* %643, i8* %645, i64 %633, i64 %642) #5
  store i8* %646, i8** %644, align 8, !tbaa !21
  store i64 %642, i64* %632, align 8, !tbaa !20
  %647 = load i64, i64* %629, align 8, !tbaa !17
  %648 = add i64 %647, 1
  br label %649

; <label>:649:                                    ; preds = %641, %635
  %650 = phi i64 [ %631, %635 ], [ %648, %641 ]
  %651 = phi i64 [ %630, %635 ], [ %647, %641 ]
  %652 = phi i8* [ %637, %635 ], [ %646, %641 ]
  store i64 %650, i64* %629, align 8, !tbaa !17
  %653 = getelementptr inbounds i8, i8* %652, i64 %651
  store i8 117, i8* %653, align 1, !tbaa !9
  %654 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %655 = getelementptr inbounds %struct.Zio, %struct.Zio* %654, i64 0, i32 0
  %656 = load i64, i64* %655, align 8, !tbaa !46
  %657 = add i64 %656, -1
  store i64 %657, i64* %655, align 8, !tbaa !46
  %658 = icmp eq i64 %656, 0
  br i1 %658, label %665, label %659

; <label>:659:                                    ; preds = %649
  %660 = getelementptr inbounds %struct.Zio, %struct.Zio* %654, i64 0, i32 1
  %661 = load i8*, i8** %660, align 8, !tbaa !48
  %662 = getelementptr inbounds i8, i8* %661, i64 1
  store i8* %662, i8** %660, align 8, !tbaa !48
  %663 = load i8, i8* %661, align 1, !tbaa !9
  %664 = zext i8 %663 to i32
  br label %667

; <label>:665:                                    ; preds = %649
  %666 = call i32 @luaZ_fill(%struct.Zio* %654) #5
  br label %667

; <label>:667:                                    ; preds = %665, %659
  %668 = phi i32 [ %664, %659 ], [ %666, %665 ]
  store i32 %668, i32* %7, align 8, !tbaa !34
  switch i32 %668, label %669 [
    i32 123, label %713
    i32 -1, label %712
  ]

; <label>:669:                                    ; preds = %667
  %670 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %671 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %670, i64 0, i32 1
  %672 = load i64, i64* %671, align 8, !tbaa !17
  %673 = add i64 %672, 1
  %674 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %670, i64 0, i32 2
  %675 = load i64, i64* %674, align 8, !tbaa !20
  %676 = icmp ugt i64 %673, %675
  br i1 %676, label %680, label %677

; <label>:677:                                    ; preds = %669
  %678 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %670, i64 0, i32 0
  %679 = load i8*, i8** %678, align 8, !tbaa !21
  br label %691

; <label>:680:                                    ; preds = %669
  %681 = icmp ugt i64 %675, 4611686018427387902
  br i1 %681, label %682, label %683

; <label>:682:                                    ; preds = %680
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:683:                                    ; preds = %680
  %684 = shl i64 %675, 1
  %685 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %686 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %670, i64 0, i32 0
  %687 = load i8*, i8** %686, align 8, !tbaa !21
  %688 = call i8* @luaM_saferealloc_(%struct.lua_State* %685, i8* %687, i64 %675, i64 %684) #5
  store i8* %688, i8** %686, align 8, !tbaa !21
  store i64 %684, i64* %674, align 8, !tbaa !20
  %689 = load i64, i64* %671, align 8, !tbaa !17
  %690 = add i64 %689, 1
  br label %691

; <label>:691:                                    ; preds = %683, %677
  %692 = phi i64 [ %673, %677 ], [ %690, %683 ]
  %693 = phi i64 [ %672, %677 ], [ %689, %683 ]
  %694 = phi i8* [ %679, %677 ], [ %688, %683 ]
  %695 = trunc i32 %668 to i8
  store i64 %692, i64* %671, align 8, !tbaa !17
  %696 = getelementptr inbounds i8, i8* %694, i64 %693
  store i8 %695, i8* %696, align 1, !tbaa !9
  %697 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %698 = getelementptr inbounds %struct.Zio, %struct.Zio* %697, i64 0, i32 0
  %699 = load i64, i64* %698, align 8, !tbaa !46
  %700 = add i64 %699, -1
  store i64 %700, i64* %698, align 8, !tbaa !46
  %701 = icmp eq i64 %699, 0
  br i1 %701, label %708, label %702

; <label>:702:                                    ; preds = %691
  %703 = getelementptr inbounds %struct.Zio, %struct.Zio* %697, i64 0, i32 1
  %704 = load i8*, i8** %703, align 8, !tbaa !48
  %705 = getelementptr inbounds i8, i8* %704, i64 1
  store i8* %705, i8** %703, align 8, !tbaa !48
  %706 = load i8, i8* %704, align 1, !tbaa !9
  %707 = zext i8 %706 to i32
  br label %710

; <label>:708:                                    ; preds = %691
  %709 = call i32 @luaZ_fill(%struct.Zio* %697) #5
  br label %710

; <label>:710:                                    ; preds = %708, %702
  %711 = phi i32 [ %707, %702 ], [ %709, %708 ]
  store i32 %711, i32* %7, align 8, !tbaa !34
  br label %712

; <label>:712:                                    ; preds = %667, %710
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:713:                                    ; preds = %667
  %714 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %715 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %714, i64 0, i32 1
  %716 = load i64, i64* %715, align 8, !tbaa !17
  %717 = add i64 %716, 1
  %718 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %714, i64 0, i32 2
  %719 = load i64, i64* %718, align 8, !tbaa !20
  %720 = icmp ugt i64 %717, %719
  br i1 %720, label %724, label %721

; <label>:721:                                    ; preds = %713
  %722 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %714, i64 0, i32 0
  %723 = load i8*, i8** %722, align 8, !tbaa !21
  br label %735

; <label>:724:                                    ; preds = %713
  %725 = icmp ugt i64 %719, 4611686018427387902
  br i1 %725, label %726, label %727

; <label>:726:                                    ; preds = %724
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:727:                                    ; preds = %724
  %728 = shl i64 %719, 1
  %729 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %730 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %714, i64 0, i32 0
  %731 = load i8*, i8** %730, align 8, !tbaa !21
  %732 = call i8* @luaM_saferealloc_(%struct.lua_State* %729, i8* %731, i64 %719, i64 %728) #5
  store i8* %732, i8** %730, align 8, !tbaa !21
  store i64 %728, i64* %718, align 8, !tbaa !20
  %733 = load i64, i64* %715, align 8, !tbaa !17
  %734 = add i64 %733, 1
  br label %735

; <label>:735:                                    ; preds = %727, %721
  %736 = phi i64 [ %717, %721 ], [ %734, %727 ]
  %737 = phi i64 [ %716, %721 ], [ %733, %727 ]
  %738 = phi i8* [ %723, %721 ], [ %732, %727 ]
  store i64 %736, i64* %715, align 8, !tbaa !17
  %739 = getelementptr inbounds i8, i8* %738, i64 %737
  store i8 123, i8* %739, align 1, !tbaa !9
  %740 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %741 = getelementptr inbounds %struct.Zio, %struct.Zio* %740, i64 0, i32 0
  %742 = load i64, i64* %741, align 8, !tbaa !46
  %743 = add i64 %742, -1
  store i64 %743, i64* %741, align 8, !tbaa !46
  %744 = icmp eq i64 %742, 0
  br i1 %744, label %751, label %745

; <label>:745:                                    ; preds = %735
  %746 = getelementptr inbounds %struct.Zio, %struct.Zio* %740, i64 0, i32 1
  %747 = load i8*, i8** %746, align 8, !tbaa !48
  %748 = getelementptr inbounds i8, i8* %747, i64 1
  store i8* %748, i8** %746, align 8, !tbaa !48
  %749 = load i8, i8* %747, align 1, !tbaa !9
  %750 = zext i8 %749 to i32
  br label %753

; <label>:751:                                    ; preds = %735
  %752 = call i32 @luaZ_fill(%struct.Zio* %740) #5
  br label %753

; <label>:753:                                    ; preds = %751, %745
  %754 = phi i32 [ %750, %745 ], [ %752, %751 ]
  store i32 %754, i32* %7, align 8, !tbaa !34
  %755 = add nsw i32 %754, 1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %756
  %758 = load i8, i8* %757, align 1, !tbaa !9
  %759 = and i8 %758, 16
  %760 = icmp eq i8 %759, 0
  br i1 %760, label %761, label %807

; <label>:761:                                    ; preds = %753
  %762 = icmp eq i32 %754, -1
  br i1 %762, label %806, label %763

; <label>:763:                                    ; preds = %761
  %764 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %765 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %764, i64 0, i32 1
  %766 = load i64, i64* %765, align 8, !tbaa !17
  %767 = add i64 %766, 1
  %768 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %764, i64 0, i32 2
  %769 = load i64, i64* %768, align 8, !tbaa !20
  %770 = icmp ugt i64 %767, %769
  br i1 %770, label %774, label %771

; <label>:771:                                    ; preds = %763
  %772 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %764, i64 0, i32 0
  %773 = load i8*, i8** %772, align 8, !tbaa !21
  br label %785

; <label>:774:                                    ; preds = %763
  %775 = icmp ugt i64 %769, 4611686018427387902
  br i1 %775, label %776, label %777

; <label>:776:                                    ; preds = %774
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:777:                                    ; preds = %774
  %778 = shl i64 %769, 1
  %779 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %780 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %764, i64 0, i32 0
  %781 = load i8*, i8** %780, align 8, !tbaa !21
  %782 = call i8* @luaM_saferealloc_(%struct.lua_State* %779, i8* %781, i64 %769, i64 %778) #5
  store i8* %782, i8** %780, align 8, !tbaa !21
  store i64 %778, i64* %768, align 8, !tbaa !20
  %783 = load i64, i64* %765, align 8, !tbaa !17
  %784 = add i64 %783, 1
  br label %785

; <label>:785:                                    ; preds = %777, %771
  %786 = phi i64 [ %767, %771 ], [ %784, %777 ]
  %787 = phi i64 [ %766, %771 ], [ %783, %777 ]
  %788 = phi i8* [ %773, %771 ], [ %782, %777 ]
  %789 = trunc i32 %754 to i8
  store i64 %786, i64* %765, align 8, !tbaa !17
  %790 = getelementptr inbounds i8, i8* %788, i64 %787
  store i8 %789, i8* %790, align 1, !tbaa !9
  %791 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %792 = getelementptr inbounds %struct.Zio, %struct.Zio* %791, i64 0, i32 0
  %793 = load i64, i64* %792, align 8, !tbaa !46
  %794 = add i64 %793, -1
  store i64 %794, i64* %792, align 8, !tbaa !46
  %795 = icmp eq i64 %793, 0
  br i1 %795, label %802, label %796

; <label>:796:                                    ; preds = %785
  %797 = getelementptr inbounds %struct.Zio, %struct.Zio* %791, i64 0, i32 1
  %798 = load i8*, i8** %797, align 8, !tbaa !48
  %799 = getelementptr inbounds i8, i8* %798, i64 1
  store i8* %799, i8** %797, align 8, !tbaa !48
  %800 = load i8, i8* %798, align 1, !tbaa !9
  %801 = zext i8 %800 to i32
  br label %804

; <label>:802:                                    ; preds = %785
  %803 = call i32 @luaZ_fill(%struct.Zio* %791) #5
  br label %804

; <label>:804:                                    ; preds = %802, %796
  %805 = phi i32 [ %801, %796 ], [ %803, %802 ]
  store i32 %805, i32* %7, align 8, !tbaa !34
  br label %806

; <label>:806:                                    ; preds = %804, %761
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:807:                                    ; preds = %753
  %808 = call i32 @luaO_hexavalue(i32 %754) #5
  %809 = sext i32 %808 to i64
  br label %810

; <label>:810:                                    ; preds = %910, %807
  %811 = phi i64 [ %809, %807 ], [ %915, %910 ]
  %812 = phi i32 [ 4, %807 ], [ %911, %910 ]
  %813 = load i32, i32* %7, align 8, !tbaa !34
  %814 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %815 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %814, i64 0, i32 1
  %816 = load i64, i64* %815, align 8, !tbaa !17
  %817 = add i64 %816, 1
  %818 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %814, i64 0, i32 2
  %819 = load i64, i64* %818, align 8, !tbaa !20
  %820 = icmp ugt i64 %817, %819
  br i1 %820, label %824, label %821

; <label>:821:                                    ; preds = %810
  %822 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %814, i64 0, i32 0
  %823 = load i8*, i8** %822, align 8, !tbaa !21
  br label %835

; <label>:824:                                    ; preds = %810
  %825 = icmp ugt i64 %819, 4611686018427387902
  br i1 %825, label %826, label %827

; <label>:826:                                    ; preds = %824
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:827:                                    ; preds = %824
  %828 = shl i64 %819, 1
  %829 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %830 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %814, i64 0, i32 0
  %831 = load i8*, i8** %830, align 8, !tbaa !21
  %832 = call i8* @luaM_saferealloc_(%struct.lua_State* %829, i8* %831, i64 %819, i64 %828) #5
  store i8* %832, i8** %830, align 8, !tbaa !21
  store i64 %828, i64* %818, align 8, !tbaa !20
  %833 = load i64, i64* %815, align 8, !tbaa !17
  %834 = add i64 %833, 1
  br label %835

; <label>:835:                                    ; preds = %827, %821
  %836 = phi i64 [ %817, %821 ], [ %834, %827 ]
  %837 = phi i64 [ %816, %821 ], [ %833, %827 ]
  %838 = phi i8* [ %823, %821 ], [ %832, %827 ]
  %839 = trunc i32 %813 to i8
  store i64 %836, i64* %815, align 8, !tbaa !17
  %840 = getelementptr inbounds i8, i8* %838, i64 %837
  store i8 %839, i8* %840, align 1, !tbaa !9
  %841 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %842 = getelementptr inbounds %struct.Zio, %struct.Zio* %841, i64 0, i32 0
  %843 = load i64, i64* %842, align 8, !tbaa !46
  %844 = add i64 %843, -1
  store i64 %844, i64* %842, align 8, !tbaa !46
  %845 = icmp eq i64 %843, 0
  br i1 %845, label %852, label %846

; <label>:846:                                    ; preds = %835
  %847 = getelementptr inbounds %struct.Zio, %struct.Zio* %841, i64 0, i32 1
  %848 = load i8*, i8** %847, align 8, !tbaa !48
  %849 = getelementptr inbounds i8, i8* %848, i64 1
  store i8* %849, i8** %847, align 8, !tbaa !48
  %850 = load i8, i8* %848, align 1, !tbaa !9
  %851 = zext i8 %850 to i32
  br label %854

; <label>:852:                                    ; preds = %835
  %853 = call i32 @luaZ_fill(%struct.Zio* %841) #5
  br label %854

; <label>:854:                                    ; preds = %852, %846
  %855 = phi i32 [ %851, %846 ], [ %853, %852 ]
  store i32 %855, i32* %7, align 8, !tbaa !34
  %856 = add nsw i32 %855, 1
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %857
  %859 = load i8, i8* %858, align 1, !tbaa !9
  %860 = and i8 %859, 16
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %916, label %862

; <label>:862:                                    ; preds = %854
  %863 = icmp ugt i64 %811, 134217727
  br i1 %863, label %864, label %910

; <label>:864:                                    ; preds = %862
  %865 = icmp eq i32 %855, -1
  br i1 %865, label %909, label %866

; <label>:866:                                    ; preds = %864
  %867 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %868 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %867, i64 0, i32 1
  %869 = load i64, i64* %868, align 8, !tbaa !17
  %870 = add i64 %869, 1
  %871 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %867, i64 0, i32 2
  %872 = load i64, i64* %871, align 8, !tbaa !20
  %873 = icmp ugt i64 %870, %872
  br i1 %873, label %877, label %874

; <label>:874:                                    ; preds = %866
  %875 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %867, i64 0, i32 0
  %876 = load i8*, i8** %875, align 8, !tbaa !21
  br label %888

; <label>:877:                                    ; preds = %866
  %878 = icmp ugt i64 %872, 4611686018427387902
  br i1 %878, label %879, label %880

; <label>:879:                                    ; preds = %877
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:880:                                    ; preds = %877
  %881 = shl i64 %872, 1
  %882 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %883 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %867, i64 0, i32 0
  %884 = load i8*, i8** %883, align 8, !tbaa !21
  %885 = call i8* @luaM_saferealloc_(%struct.lua_State* %882, i8* %884, i64 %872, i64 %881) #5
  store i8* %885, i8** %883, align 8, !tbaa !21
  store i64 %881, i64* %871, align 8, !tbaa !20
  %886 = load i64, i64* %868, align 8, !tbaa !17
  %887 = add i64 %886, 1
  br label %888

; <label>:888:                                    ; preds = %880, %874
  %889 = phi i64 [ %870, %874 ], [ %887, %880 ]
  %890 = phi i64 [ %869, %874 ], [ %886, %880 ]
  %891 = phi i8* [ %876, %874 ], [ %885, %880 ]
  %892 = trunc i32 %855 to i8
  store i64 %889, i64* %868, align 8, !tbaa !17
  %893 = getelementptr inbounds i8, i8* %891, i64 %890
  store i8 %892, i8* %893, align 1, !tbaa !9
  %894 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %895 = getelementptr inbounds %struct.Zio, %struct.Zio* %894, i64 0, i32 0
  %896 = load i64, i64* %895, align 8, !tbaa !46
  %897 = add i64 %896, -1
  store i64 %897, i64* %895, align 8, !tbaa !46
  %898 = icmp eq i64 %896, 0
  br i1 %898, label %905, label %899

; <label>:899:                                    ; preds = %888
  %900 = getelementptr inbounds %struct.Zio, %struct.Zio* %894, i64 0, i32 1
  %901 = load i8*, i8** %900, align 8, !tbaa !48
  %902 = getelementptr inbounds i8, i8* %901, i64 1
  store i8* %902, i8** %900, align 8, !tbaa !48
  %903 = load i8, i8* %901, align 1, !tbaa !9
  %904 = zext i8 %903 to i32
  br label %907

; <label>:905:                                    ; preds = %888
  %906 = call i32 @luaZ_fill(%struct.Zio* %894) #5
  br label %907

; <label>:907:                                    ; preds = %905, %899
  %908 = phi i32 [ %904, %899 ], [ %906, %905 ]
  store i32 %908, i32* %7, align 8, !tbaa !34
  br label %909

; <label>:909:                                    ; preds = %907, %864
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:910:                                    ; preds = %862
  %911 = add nuw nsw i32 %812, 1
  %912 = shl i64 %811, 4
  %913 = call i32 @luaO_hexavalue(i32 %855) #5
  %914 = sext i32 %913 to i64
  %915 = add i64 %912, %914
  br label %810

; <label>:916:                                    ; preds = %854
  switch i32 %855, label %917 [
    i32 125, label %961
    i32 -1, label %960
  ]

; <label>:917:                                    ; preds = %916
  %918 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %919 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %918, i64 0, i32 1
  %920 = load i64, i64* %919, align 8, !tbaa !17
  %921 = add i64 %920, 1
  %922 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %918, i64 0, i32 2
  %923 = load i64, i64* %922, align 8, !tbaa !20
  %924 = icmp ugt i64 %921, %923
  br i1 %924, label %928, label %925

; <label>:925:                                    ; preds = %917
  %926 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %918, i64 0, i32 0
  %927 = load i8*, i8** %926, align 8, !tbaa !21
  br label %939

; <label>:928:                                    ; preds = %917
  %929 = icmp ugt i64 %923, 4611686018427387902
  br i1 %929, label %930, label %931

; <label>:930:                                    ; preds = %928
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:931:                                    ; preds = %928
  %932 = shl i64 %923, 1
  %933 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %934 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %918, i64 0, i32 0
  %935 = load i8*, i8** %934, align 8, !tbaa !21
  %936 = call i8* @luaM_saferealloc_(%struct.lua_State* %933, i8* %935, i64 %923, i64 %932) #5
  store i8* %936, i8** %934, align 8, !tbaa !21
  store i64 %932, i64* %922, align 8, !tbaa !20
  %937 = load i64, i64* %919, align 8, !tbaa !17
  %938 = add i64 %937, 1
  br label %939

; <label>:939:                                    ; preds = %931, %925
  %940 = phi i64 [ %921, %925 ], [ %938, %931 ]
  %941 = phi i64 [ %920, %925 ], [ %937, %931 ]
  %942 = phi i8* [ %927, %925 ], [ %936, %931 ]
  %943 = trunc i32 %855 to i8
  store i64 %940, i64* %919, align 8, !tbaa !17
  %944 = getelementptr inbounds i8, i8* %942, i64 %941
  store i8 %943, i8* %944, align 1, !tbaa !9
  %945 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %946 = getelementptr inbounds %struct.Zio, %struct.Zio* %945, i64 0, i32 0
  %947 = load i64, i64* %946, align 8, !tbaa !46
  %948 = add i64 %947, -1
  store i64 %948, i64* %946, align 8, !tbaa !46
  %949 = icmp eq i64 %947, 0
  br i1 %949, label %956, label %950

; <label>:950:                                    ; preds = %939
  %951 = getelementptr inbounds %struct.Zio, %struct.Zio* %945, i64 0, i32 1
  %952 = load i8*, i8** %951, align 8, !tbaa !48
  %953 = getelementptr inbounds i8, i8* %952, i64 1
  store i8* %953, i8** %951, align 8, !tbaa !48
  %954 = load i8, i8* %952, align 1, !tbaa !9
  %955 = zext i8 %954 to i32
  br label %958

; <label>:956:                                    ; preds = %939
  %957 = call i32 @luaZ_fill(%struct.Zio* %945) #5
  br label %958

; <label>:958:                                    ; preds = %956, %950
  %959 = phi i32 [ %955, %950 ], [ %957, %956 ]
  store i32 %959, i32* %7, align 8, !tbaa !34
  br label %960

; <label>:960:                                    ; preds = %916, %958
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:961:                                    ; preds = %916
  %962 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %963 = getelementptr inbounds %struct.Zio, %struct.Zio* %962, i64 0, i32 0
  %964 = load i64, i64* %963, align 8, !tbaa !46
  %965 = add i64 %964, -1
  store i64 %965, i64* %963, align 8, !tbaa !46
  %966 = icmp eq i64 %964, 0
  br i1 %966, label %973, label %967

; <label>:967:                                    ; preds = %961
  %968 = getelementptr inbounds %struct.Zio, %struct.Zio* %962, i64 0, i32 1
  %969 = load i8*, i8** %968, align 8, !tbaa !48
  %970 = getelementptr inbounds i8, i8* %969, i64 1
  store i8* %970, i8** %968, align 8, !tbaa !48
  %971 = load i8, i8* %969, align 1, !tbaa !9
  %972 = zext i8 %971 to i32
  br label %975

; <label>:973:                                    ; preds = %961
  %974 = call i32 @luaZ_fill(%struct.Zio* %962) #5
  br label %975

; <label>:975:                                    ; preds = %973, %967
  %976 = phi i32 [ %972, %967 ], [ %974, %973 ]
  store i32 %976, i32* %7, align 8, !tbaa !34
  %977 = zext i32 %812 to i64
  %978 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %979 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %978, i64 0, i32 1
  %980 = load i64, i64* %979, align 8, !tbaa !17
  %981 = sub i64 %980, %977
  store i64 %981, i64* %979, align 8, !tbaa !17
  %982 = call i32 @luaO_utf8esc(i8* nonnull %375, i64 %811) #5
  %983 = icmp sgt i32 %982, 0
  br i1 %983, label %984, label %1019

; <label>:984:                                    ; preds = %975
  %985 = sext i32 %982 to i64
  br label %986

; <label>:986:                                    ; preds = %1012, %984
  %987 = phi i64 [ %985, %984 ], [ %1017, %1012 ]
  %988 = sub nsw i64 8, %987
  %989 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %988
  %990 = load i8, i8* %989, align 1, !tbaa !9
  %991 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %992 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %991, i64 0, i32 1
  %993 = load i64, i64* %992, align 8, !tbaa !17
  %994 = add i64 %993, 1
  %995 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %991, i64 0, i32 2
  %996 = load i64, i64* %995, align 8, !tbaa !20
  %997 = icmp ugt i64 %994, %996
  br i1 %997, label %1001, label %998

; <label>:998:                                    ; preds = %986
  %999 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %991, i64 0, i32 0
  %1000 = load i8*, i8** %999, align 8, !tbaa !21
  br label %1012

; <label>:1001:                                   ; preds = %986
  %1002 = icmp ugt i64 %996, 4611686018427387902
  br i1 %1002, label %1003, label %1004

; <label>:1003:                                   ; preds = %1001
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1004:                                   ; preds = %1001
  %1005 = shl i64 %996, 1
  %1006 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1007 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %991, i64 0, i32 0
  %1008 = load i8*, i8** %1007, align 8, !tbaa !21
  %1009 = call i8* @luaM_saferealloc_(%struct.lua_State* %1006, i8* %1008, i64 %996, i64 %1005) #5
  store i8* %1009, i8** %1007, align 8, !tbaa !21
  store i64 %1005, i64* %995, align 8, !tbaa !20
  %1010 = load i64, i64* %992, align 8, !tbaa !17
  %1011 = add i64 %1010, 1
  br label %1012

; <label>:1012:                                   ; preds = %1004, %998
  %1013 = phi i64 [ %994, %998 ], [ %1011, %1004 ]
  %1014 = phi i64 [ %993, %998 ], [ %1010, %1004 ]
  %1015 = phi i8* [ %1000, %998 ], [ %1009, %1004 ]
  store i64 %1013, i64* %992, align 8, !tbaa !17
  %1016 = getelementptr inbounds i8, i8* %1015, i64 %1014
  store i8 %990, i8* %1016, align 1, !tbaa !9
  %1017 = add nsw i64 %987, -1
  %1018 = icmp sgt i64 %987, 1
  br i1 %1018, label %986, label %1019

; <label>:1019:                                   ; preds = %1012, %975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %375) #5
  br label %1333

; <label>:1020:                                   ; preds = %420, %420
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #5
  br label %1261

; <label>:1021:                                   ; preds = %420, %420, %420
  br label %1244

; <label>:1022:                                   ; preds = %420
  %1023 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1024 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1023, i64 0, i32 1
  %1025 = load i64, i64* %1024, align 8, !tbaa !17
  %1026 = add i64 %1025, -1
  store i64 %1026, i64* %1024, align 8, !tbaa !17
  %1027 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1028 = getelementptr inbounds %struct.Zio, %struct.Zio* %1027, i64 0, i32 0
  %1029 = load i64, i64* %1028, align 8, !tbaa !46
  %1030 = add i64 %1029, -1
  store i64 %1030, i64* %1028, align 8, !tbaa !46
  %1031 = icmp eq i64 %1029, 0
  br i1 %1031, label %1038, label %1032

; <label>:1032:                                   ; preds = %1022
  %1033 = getelementptr inbounds %struct.Zio, %struct.Zio* %1027, i64 0, i32 1
  %1034 = load i8*, i8** %1033, align 8, !tbaa !48
  %1035 = getelementptr inbounds i8, i8* %1034, i64 1
  store i8* %1035, i8** %1033, align 8, !tbaa !48
  %1036 = load i8, i8* %1034, align 1, !tbaa !9
  %1037 = zext i8 %1036 to i32
  br label %1040

; <label>:1038:                                   ; preds = %1022
  %1039 = call i32 @luaZ_fill(%struct.Zio* %1027) #5
  br label %1040

; <label>:1040:                                   ; preds = %1038, %1032
  %1041 = phi i32 [ %1037, %1032 ], [ %1039, %1038 ]
  store i32 %1041, i32* %7, align 8, !tbaa !34
  %1042 = add nsw i32 %1041, 1
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1043
  %1045 = load i8, i8* %1044, align 1, !tbaa !9
  %1046 = and i8 %1045, 8
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1333, label %1048

; <label>:1048:                                   ; preds = %1040
  br label %1049

; <label>:1049:                                   ; preds = %1048, %1069
  %1050 = phi i32 [ %1070, %1069 ], [ %1041, %1048 ]
  switch i32 %1050, label %1053 [
    i32 10, label %1051
    i32 13, label %1051
  ]

; <label>:1051:                                   ; preds = %1049, %1049
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #5
  %1052 = load i32, i32* %7, align 8, !tbaa !34
  br label %1069

; <label>:1053:                                   ; preds = %1049
  %1054 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1055 = getelementptr inbounds %struct.Zio, %struct.Zio* %1054, i64 0, i32 0
  %1056 = load i64, i64* %1055, align 8, !tbaa !46
  %1057 = add i64 %1056, -1
  store i64 %1057, i64* %1055, align 8, !tbaa !46
  %1058 = icmp eq i64 %1056, 0
  br i1 %1058, label %1065, label %1059

; <label>:1059:                                   ; preds = %1053
  %1060 = getelementptr inbounds %struct.Zio, %struct.Zio* %1054, i64 0, i32 1
  %1061 = load i8*, i8** %1060, align 8, !tbaa !48
  %1062 = getelementptr inbounds i8, i8* %1061, i64 1
  store i8* %1062, i8** %1060, align 8, !tbaa !48
  %1063 = load i8, i8* %1061, align 1, !tbaa !9
  %1064 = zext i8 %1063 to i32
  br label %1067

; <label>:1065:                                   ; preds = %1053
  %1066 = call i32 @luaZ_fill(%struct.Zio* %1054) #5
  br label %1067

; <label>:1067:                                   ; preds = %1065, %1059
  %1068 = phi i32 [ %1064, %1059 ], [ %1066, %1065 ]
  store i32 %1068, i32* %7, align 8, !tbaa !34
  br label %1069

; <label>:1069:                                   ; preds = %1067, %1051
  %1070 = phi i32 [ %1068, %1067 ], [ %1052, %1051 ]
  %1071 = add nsw i32 %1070, 1
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1072
  %1074 = load i8, i8* %1073, align 1, !tbaa !9
  %1075 = and i8 %1074, 8
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1333, label %1049

; <label>:1077:                                   ; preds = %420
  %1078 = add nsw i32 %421, 1
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1079
  %1081 = load i8, i8* %1080, align 1, !tbaa !9
  %1082 = and i8 %1081, 2
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %1085, label %1084

; <label>:1084:                                   ; preds = %1077
  br label %1138

; <label>:1085:                                   ; preds = %1077
  %1086 = icmp eq i32 %421, -1
  br i1 %1086, label %1130, label %1087

; <label>:1087:                                   ; preds = %1085
  %1088 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1089 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1088, i64 0, i32 1
  %1090 = load i64, i64* %1089, align 8, !tbaa !17
  %1091 = add i64 %1090, 1
  %1092 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1088, i64 0, i32 2
  %1093 = load i64, i64* %1092, align 8, !tbaa !20
  %1094 = icmp ugt i64 %1091, %1093
  br i1 %1094, label %1098, label %1095

; <label>:1095:                                   ; preds = %1087
  %1096 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1088, i64 0, i32 0
  %1097 = load i8*, i8** %1096, align 8, !tbaa !21
  br label %1109

; <label>:1098:                                   ; preds = %1087
  %1099 = icmp ugt i64 %1093, 4611686018427387902
  br i1 %1099, label %1100, label %1101

; <label>:1100:                                   ; preds = %1098
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1101:                                   ; preds = %1098
  %1102 = shl i64 %1093, 1
  %1103 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1104 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1088, i64 0, i32 0
  %1105 = load i8*, i8** %1104, align 8, !tbaa !21
  %1106 = call i8* @luaM_saferealloc_(%struct.lua_State* %1103, i8* %1105, i64 %1093, i64 %1102) #5
  store i8* %1106, i8** %1104, align 8, !tbaa !21
  store i64 %1102, i64* %1092, align 8, !tbaa !20
  %1107 = load i64, i64* %1089, align 8, !tbaa !17
  %1108 = add i64 %1107, 1
  br label %1109

; <label>:1109:                                   ; preds = %1101, %1095
  %1110 = phi i64 [ %1091, %1095 ], [ %1108, %1101 ]
  %1111 = phi i64 [ %1090, %1095 ], [ %1107, %1101 ]
  %1112 = phi i8* [ %1097, %1095 ], [ %1106, %1101 ]
  %1113 = trunc i32 %421 to i8
  store i64 %1110, i64* %1089, align 8, !tbaa !17
  %1114 = getelementptr inbounds i8, i8* %1112, i64 %1111
  store i8 %1113, i8* %1114, align 1, !tbaa !9
  %1115 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1116 = getelementptr inbounds %struct.Zio, %struct.Zio* %1115, i64 0, i32 0
  %1117 = load i64, i64* %1116, align 8, !tbaa !46
  %1118 = add i64 %1117, -1
  store i64 %1118, i64* %1116, align 8, !tbaa !46
  %1119 = icmp eq i64 %1117, 0
  br i1 %1119, label %1126, label %1120

; <label>:1120:                                   ; preds = %1109
  %1121 = getelementptr inbounds %struct.Zio, %struct.Zio* %1115, i64 0, i32 1
  %1122 = load i8*, i8** %1121, align 8, !tbaa !48
  %1123 = getelementptr inbounds i8, i8* %1122, i64 1
  store i8* %1123, i8** %1121, align 8, !tbaa !48
  %1124 = load i8, i8* %1122, align 1, !tbaa !9
  %1125 = zext i8 %1124 to i32
  br label %1128

; <label>:1126:                                   ; preds = %1109
  %1127 = call i32 @luaZ_fill(%struct.Zio* %1115) #5
  br label %1128

; <label>:1128:                                   ; preds = %1126, %1120
  %1129 = phi i32 [ %1125, %1120 ], [ %1127, %1126 ]
  store i32 %1129, i32* %7, align 8, !tbaa !34
  br label %1130

; <label>:1130:                                   ; preds = %1128, %1085
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:1131:                                   ; preds = %1185
  %1132 = add nsw i32 %1186, 1
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1133
  %1135 = load i8, i8* %1134, align 1, !tbaa !9
  %1136 = and i8 %1135, 2
  %1137 = icmp eq i8 %1136, 0
  br i1 %1137, label %1189, label %1138

; <label>:1138:                                   ; preds = %1084, %1131
  %1139 = phi i32 [ %1187, %1131 ], [ 0, %1084 ]
  %1140 = phi i32 [ %1144, %1131 ], [ 0, %1084 ]
  %1141 = phi i32 [ %1186, %1131 ], [ %421, %1084 ]
  %1142 = mul nsw i32 %1140, 10
  %1143 = add i32 %1141, -48
  %1144 = add i32 %1143, %1142
  %1145 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1146 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1145, i64 0, i32 1
  %1147 = load i64, i64* %1146, align 8, !tbaa !17
  %1148 = add i64 %1147, 1
  %1149 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1145, i64 0, i32 2
  %1150 = load i64, i64* %1149, align 8, !tbaa !20
  %1151 = icmp ugt i64 %1148, %1150
  br i1 %1151, label %1155, label %1152

; <label>:1152:                                   ; preds = %1138
  %1153 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1145, i64 0, i32 0
  %1154 = load i8*, i8** %1153, align 8, !tbaa !21
  br label %1166

; <label>:1155:                                   ; preds = %1138
  %1156 = icmp ugt i64 %1150, 4611686018427387902
  br i1 %1156, label %1157, label %1158

; <label>:1157:                                   ; preds = %1155
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1158:                                   ; preds = %1155
  %1159 = shl i64 %1150, 1
  %1160 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1161 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1145, i64 0, i32 0
  %1162 = load i8*, i8** %1161, align 8, !tbaa !21
  %1163 = call i8* @luaM_saferealloc_(%struct.lua_State* %1160, i8* %1162, i64 %1150, i64 %1159) #5
  store i8* %1163, i8** %1161, align 8, !tbaa !21
  store i64 %1159, i64* %1149, align 8, !tbaa !20
  %1164 = load i64, i64* %1146, align 8, !tbaa !17
  %1165 = add i64 %1164, 1
  br label %1166

; <label>:1166:                                   ; preds = %1158, %1152
  %1167 = phi i64 [ %1148, %1152 ], [ %1165, %1158 ]
  %1168 = phi i64 [ %1147, %1152 ], [ %1164, %1158 ]
  %1169 = phi i8* [ %1154, %1152 ], [ %1163, %1158 ]
  %1170 = trunc i32 %1141 to i8
  store i64 %1167, i64* %1146, align 8, !tbaa !17
  %1171 = getelementptr inbounds i8, i8* %1169, i64 %1168
  store i8 %1170, i8* %1171, align 1, !tbaa !9
  %1172 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1173 = getelementptr inbounds %struct.Zio, %struct.Zio* %1172, i64 0, i32 0
  %1174 = load i64, i64* %1173, align 8, !tbaa !46
  %1175 = add i64 %1174, -1
  store i64 %1175, i64* %1173, align 8, !tbaa !46
  %1176 = icmp eq i64 %1174, 0
  br i1 %1176, label %1183, label %1177

; <label>:1177:                                   ; preds = %1166
  %1178 = getelementptr inbounds %struct.Zio, %struct.Zio* %1172, i64 0, i32 1
  %1179 = load i8*, i8** %1178, align 8, !tbaa !48
  %1180 = getelementptr inbounds i8, i8* %1179, i64 1
  store i8* %1180, i8** %1178, align 8, !tbaa !48
  %1181 = load i8, i8* %1179, align 1, !tbaa !9
  %1182 = zext i8 %1181 to i32
  br label %1185

; <label>:1183:                                   ; preds = %1166
  %1184 = call i32 @luaZ_fill(%struct.Zio* %1172) #5
  br label %1185

; <label>:1185:                                   ; preds = %1183, %1177
  %1186 = phi i32 [ %1182, %1177 ], [ %1184, %1183 ]
  store i32 %1186, i32* %7, align 8, !tbaa !34
  %1187 = add nuw nsw i32 %1139, 1
  %1188 = icmp ult i32 %1187, 3
  br i1 %1188, label %1131, label %1189

; <label>:1189:                                   ; preds = %1131, %1185
  %1190 = phi i32 [ %1187, %1131 ], [ 3, %1185 ]
  %1191 = icmp sgt i32 %1144, 255
  br i1 %1191, label %1192, label %1238

; <label>:1192:                                   ; preds = %1189
  %1193 = icmp eq i32 %1186, -1
  br i1 %1193, label %1237, label %1194

; <label>:1194:                                   ; preds = %1192
  %1195 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1196 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1195, i64 0, i32 1
  %1197 = load i64, i64* %1196, align 8, !tbaa !17
  %1198 = add i64 %1197, 1
  %1199 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1195, i64 0, i32 2
  %1200 = load i64, i64* %1199, align 8, !tbaa !20
  %1201 = icmp ugt i64 %1198, %1200
  br i1 %1201, label %1205, label %1202

; <label>:1202:                                   ; preds = %1194
  %1203 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1195, i64 0, i32 0
  %1204 = load i8*, i8** %1203, align 8, !tbaa !21
  br label %1216

; <label>:1205:                                   ; preds = %1194
  %1206 = icmp ugt i64 %1200, 4611686018427387902
  br i1 %1206, label %1207, label %1208

; <label>:1207:                                   ; preds = %1205
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1208:                                   ; preds = %1205
  %1209 = shl i64 %1200, 1
  %1210 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1211 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1195, i64 0, i32 0
  %1212 = load i8*, i8** %1211, align 8, !tbaa !21
  %1213 = call i8* @luaM_saferealloc_(%struct.lua_State* %1210, i8* %1212, i64 %1200, i64 %1209) #5
  store i8* %1213, i8** %1211, align 8, !tbaa !21
  store i64 %1209, i64* %1199, align 8, !tbaa !20
  %1214 = load i64, i64* %1196, align 8, !tbaa !17
  %1215 = add i64 %1214, 1
  br label %1216

; <label>:1216:                                   ; preds = %1208, %1202
  %1217 = phi i64 [ %1198, %1202 ], [ %1215, %1208 ]
  %1218 = phi i64 [ %1197, %1202 ], [ %1214, %1208 ]
  %1219 = phi i8* [ %1204, %1202 ], [ %1213, %1208 ]
  %1220 = trunc i32 %1186 to i8
  store i64 %1217, i64* %1196, align 8, !tbaa !17
  %1221 = getelementptr inbounds i8, i8* %1219, i64 %1218
  store i8 %1220, i8* %1221, align 1, !tbaa !9
  %1222 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1223 = getelementptr inbounds %struct.Zio, %struct.Zio* %1222, i64 0, i32 0
  %1224 = load i64, i64* %1223, align 8, !tbaa !46
  %1225 = add i64 %1224, -1
  store i64 %1225, i64* %1223, align 8, !tbaa !46
  %1226 = icmp eq i64 %1224, 0
  br i1 %1226, label %1233, label %1227

; <label>:1227:                                   ; preds = %1216
  %1228 = getelementptr inbounds %struct.Zio, %struct.Zio* %1222, i64 0, i32 1
  %1229 = load i8*, i8** %1228, align 8, !tbaa !48
  %1230 = getelementptr inbounds i8, i8* %1229, i64 1
  store i8* %1230, i8** %1228, align 8, !tbaa !48
  %1231 = load i8, i8* %1229, align 1, !tbaa !9
  %1232 = zext i8 %1231 to i32
  br label %1235

; <label>:1233:                                   ; preds = %1216
  %1234 = call i32 @luaZ_fill(%struct.Zio* %1222) #5
  br label %1235

; <label>:1235:                                   ; preds = %1233, %1227
  %1236 = phi i32 [ %1232, %1227 ], [ %1234, %1233 ]
  store i32 %1236, i32* %7, align 8, !tbaa !34
  br label %1237

; <label>:1237:                                   ; preds = %1235, %1192
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:1238:                                   ; preds = %1189
  %1239 = zext i32 %1190 to i64
  %1240 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1241 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1240, i64 0, i32 1
  %1242 = load i64, i64* %1241, align 8, !tbaa !17
  %1243 = sub i64 %1242, %1239
  store i64 %1243, i64* %1241, align 8, !tbaa !17
  br label %1261

; <label>:1244:                                   ; preds = %1021, %620, %427, %426, %425, %424, %423, %422, %420
  %1245 = phi i32 [ %421, %1021 ], [ %622, %620 ], [ 11, %427 ], [ 9, %426 ], [ 13, %425 ], [ 10, %424 ], [ 12, %423 ], [ 8, %422 ], [ 7, %420 ]
  %1246 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1247 = getelementptr inbounds %struct.Zio, %struct.Zio* %1246, i64 0, i32 0
  %1248 = load i64, i64* %1247, align 8, !tbaa !46
  %1249 = add i64 %1248, -1
  store i64 %1249, i64* %1247, align 8, !tbaa !46
  %1250 = icmp eq i64 %1248, 0
  br i1 %1250, label %1257, label %1251

; <label>:1251:                                   ; preds = %1244
  %1252 = getelementptr inbounds %struct.Zio, %struct.Zio* %1246, i64 0, i32 1
  %1253 = load i8*, i8** %1252, align 8, !tbaa !48
  %1254 = getelementptr inbounds i8, i8* %1253, i64 1
  store i8* %1254, i8** %1252, align 8, !tbaa !48
  %1255 = load i8, i8* %1253, align 1, !tbaa !9
  %1256 = zext i8 %1255 to i32
  br label %1259

; <label>:1257:                                   ; preds = %1244
  %1258 = call i32 @luaZ_fill(%struct.Zio* %1246) #5
  br label %1259

; <label>:1259:                                   ; preds = %1257, %1251
  %1260 = phi i32 [ %1256, %1251 ], [ %1258, %1257 ]
  store i32 %1260, i32* %7, align 8, !tbaa !34
  br label %1261

; <label>:1261:                                   ; preds = %1259, %1238, %1020
  %1262 = phi i32 [ %1144, %1238 ], [ %1245, %1259 ], [ 10, %1020 ]
  %1263 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1264 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1263, i64 0, i32 1
  %1265 = load i64, i64* %1264, align 8, !tbaa !17
  %1266 = add i64 %1265, -1
  store i64 %1266, i64* %1264, align 8, !tbaa !17
  %1267 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1263, i64 0, i32 2
  %1268 = load i64, i64* %1267, align 8, !tbaa !20
  %1269 = icmp ugt i64 %1265, %1268
  br i1 %1269, label %1273, label %1270

; <label>:1270:                                   ; preds = %1261
  %1271 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1263, i64 0, i32 0
  %1272 = load i8*, i8** %1271, align 8, !tbaa !21
  br label %1284

; <label>:1273:                                   ; preds = %1261
  %1274 = icmp ugt i64 %1268, 4611686018427387902
  br i1 %1274, label %1275, label %1276

; <label>:1275:                                   ; preds = %1273
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1276:                                   ; preds = %1273
  %1277 = shl i64 %1268, 1
  %1278 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1279 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1263, i64 0, i32 0
  %1280 = load i8*, i8** %1279, align 8, !tbaa !21
  %1281 = call i8* @luaM_saferealloc_(%struct.lua_State* %1278, i8* %1280, i64 %1268, i64 %1277) #5
  store i8* %1281, i8** %1279, align 8, !tbaa !21
  store i64 %1277, i64* %1267, align 8, !tbaa !20
  %1282 = load i64, i64* %1264, align 8, !tbaa !17
  %1283 = add i64 %1282, 1
  br label %1284

; <label>:1284:                                   ; preds = %1276, %1270
  %1285 = phi i64 [ %1265, %1270 ], [ %1283, %1276 ]
  %1286 = phi i64 [ %1266, %1270 ], [ %1282, %1276 ]
  %1287 = phi i8* [ %1272, %1270 ], [ %1281, %1276 ]
  %1288 = trunc i32 %1262 to i8
  store i64 %1285, i64* %1264, align 8, !tbaa !17
  %1289 = getelementptr inbounds i8, i8* %1287, i64 %1286
  store i8 %1288, i8* %1289, align 1, !tbaa !9
  br label %1333

; <label>:1290:                                   ; preds = %376
  %1291 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1292 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1291, i64 0, i32 1
  %1293 = load i64, i64* %1292, align 8, !tbaa !17
  %1294 = add i64 %1293, 1
  %1295 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1291, i64 0, i32 2
  %1296 = load i64, i64* %1295, align 8, !tbaa !20
  %1297 = icmp ugt i64 %1294, %1296
  br i1 %1297, label %1301, label %1298

; <label>:1298:                                   ; preds = %1290
  %1299 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1291, i64 0, i32 0
  %1300 = load i8*, i8** %1299, align 8, !tbaa !21
  br label %1312

; <label>:1301:                                   ; preds = %1290
  %1302 = icmp ugt i64 %1296, 4611686018427387902
  br i1 %1302, label %1303, label %1304

; <label>:1303:                                   ; preds = %1301
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1304:                                   ; preds = %1301
  %1305 = shl i64 %1296, 1
  %1306 = load %struct.lua_State*, %struct.lua_State** %374, align 8, !tbaa !10
  %1307 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1291, i64 0, i32 0
  %1308 = load i8*, i8** %1307, align 8, !tbaa !21
  %1309 = call i8* @luaM_saferealloc_(%struct.lua_State* %1306, i8* %1308, i64 %1296, i64 %1305) #5
  store i8* %1309, i8** %1307, align 8, !tbaa !21
  store i64 %1305, i64* %1295, align 8, !tbaa !20
  %1310 = load i64, i64* %1292, align 8, !tbaa !17
  %1311 = add i64 %1310, 1
  br label %1312

; <label>:1312:                                   ; preds = %1304, %1298
  %1313 = phi i64 [ %1294, %1298 ], [ %1311, %1304 ]
  %1314 = phi i64 [ %1293, %1298 ], [ %1310, %1304 ]
  %1315 = phi i8* [ %1300, %1298 ], [ %1309, %1304 ]
  %1316 = trunc i32 %377 to i8
  store i64 %1313, i64* %1292, align 8, !tbaa !17
  %1317 = getelementptr inbounds i8, i8* %1315, i64 %1314
  store i8 %1316, i8* %1317, align 1, !tbaa !9
  %1318 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1319 = getelementptr inbounds %struct.Zio, %struct.Zio* %1318, i64 0, i32 0
  %1320 = load i64, i64* %1319, align 8, !tbaa !46
  %1321 = add i64 %1320, -1
  store i64 %1321, i64* %1319, align 8, !tbaa !46
  %1322 = icmp eq i64 %1320, 0
  br i1 %1322, label %1329, label %1323

; <label>:1323:                                   ; preds = %1312
  %1324 = getelementptr inbounds %struct.Zio, %struct.Zio* %1318, i64 0, i32 1
  %1325 = load i8*, i8** %1324, align 8, !tbaa !48
  %1326 = getelementptr inbounds i8, i8* %1325, i64 1
  store i8* %1326, i8** %1324, align 8, !tbaa !48
  %1327 = load i8, i8* %1325, align 1, !tbaa !9
  %1328 = zext i8 %1327 to i32
  br label %1331

; <label>:1329:                                   ; preds = %1312
  %1330 = call i32 @luaZ_fill(%struct.Zio* %1318) #5
  br label %1331

; <label>:1331:                                   ; preds = %1329, %1323
  %1332 = phi i32 [ %1328, %1323 ], [ %1330, %1329 ]
  store i32 %1332, i32* %7, align 8, !tbaa !34
  br label %1333

; <label>:1333:                                   ; preds = %1069, %1331, %1284, %1040, %1019, %420
  %1334 = load i32, i32* %7, align 8, !tbaa !34
  %1335 = icmp eq i32 %1334, %10
  br i1 %1335, label %1336, label %376

; <label>:1336:                                   ; preds = %1333, %370
  %1337 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1338 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1337, i64 0, i32 1
  %1339 = load i64, i64* %1338, align 8, !tbaa !17
  %1340 = add i64 %1339, 1
  %1341 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1337, i64 0, i32 2
  %1342 = load i64, i64* %1341, align 8, !tbaa !20
  %1343 = icmp ugt i64 %1340, %1342
  br i1 %1343, label %1347, label %1344

; <label>:1344:                                   ; preds = %1336
  %1345 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1337, i64 0, i32 0
  %1346 = load i8*, i8** %1345, align 8, !tbaa !21
  br label %1359

; <label>:1347:                                   ; preds = %1336
  %1348 = icmp ugt i64 %1342, 4611686018427387902
  br i1 %1348, label %1349, label %1350

; <label>:1349:                                   ; preds = %1347
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1350:                                   ; preds = %1347
  %1351 = shl i64 %1342, 1
  %1352 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1353 = load %struct.lua_State*, %struct.lua_State** %1352, align 8, !tbaa !10
  %1354 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1337, i64 0, i32 0
  %1355 = load i8*, i8** %1354, align 8, !tbaa !21
  %1356 = call i8* @luaM_saferealloc_(%struct.lua_State* %1353, i8* %1355, i64 %1342, i64 %1351) #5
  store i8* %1356, i8** %1354, align 8, !tbaa !21
  store i64 %1351, i64* %1341, align 8, !tbaa !20
  %1357 = load i64, i64* %1338, align 8, !tbaa !17
  %1358 = add i64 %1357, 1
  br label %1359

; <label>:1359:                                   ; preds = %1350, %1344
  %1360 = phi i64 [ %1340, %1344 ], [ %1358, %1350 ]
  %1361 = phi i64 [ %1339, %1344 ], [ %1357, %1350 ]
  %1362 = phi i8* [ %1346, %1344 ], [ %1356, %1350 ]
  store i64 %1360, i64* %1338, align 8, !tbaa !17
  %1363 = getelementptr inbounds i8, i8* %1362, i64 %1361
  store i8 %355, i8* %1363, align 1, !tbaa !9
  %1364 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1365 = getelementptr inbounds %struct.Zio, %struct.Zio* %1364, i64 0, i32 0
  %1366 = load i64, i64* %1365, align 8, !tbaa !46
  %1367 = add i64 %1366, -1
  store i64 %1367, i64* %1365, align 8, !tbaa !46
  %1368 = icmp eq i64 %1366, 0
  br i1 %1368, label %1375, label %1369

; <label>:1369:                                   ; preds = %1359
  %1370 = getelementptr inbounds %struct.Zio, %struct.Zio* %1364, i64 0, i32 1
  %1371 = load i8*, i8** %1370, align 8, !tbaa !48
  %1372 = getelementptr inbounds i8, i8* %1371, i64 1
  store i8* %1372, i8** %1370, align 8, !tbaa !48
  %1373 = load i8, i8* %1371, align 1, !tbaa !9
  %1374 = zext i8 %1373 to i32
  br label %1377

; <label>:1375:                                   ; preds = %1359
  %1376 = call i32 @luaZ_fill(%struct.Zio* %1364) #5
  br label %1377

; <label>:1377:                                   ; preds = %1375, %1369
  %1378 = phi i32 [ %1374, %1369 ], [ %1376, %1375 ]
  store i32 %1378, i32* %7, align 8, !tbaa !34
  %1379 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1380 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1379, i64 0, i32 0
  %1381 = load i8*, i8** %1380, align 8, !tbaa !21
  %1382 = getelementptr inbounds i8, i8* %1381, i64 1
  %1383 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1379, i64 0, i32 1
  %1384 = load i64, i64* %1383, align 8, !tbaa !17
  %1385 = add i64 %1384, -2
  %1386 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1387 = load %struct.lua_State*, %struct.lua_State** %1386, align 8, !tbaa !10
  %1388 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %1387, i8* nonnull %1382, i64 %1385) #5
  %1389 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1387, i64 0, i32 6
  %1390 = load %union.StackValue*, %union.StackValue** %1389, align 8, !tbaa !22
  %1391 = getelementptr inbounds %union.StackValue, %union.StackValue* %1390, i64 1
  store %union.StackValue* %1391, %union.StackValue** %1389, align 8, !tbaa !22
  %1392 = bitcast %union.StackValue* %1390 to %struct.TString**
  store %struct.TString* %1388, %struct.TString** %1392, align 8, !tbaa !9
  %1393 = getelementptr inbounds %struct.TString, %struct.TString* %1388, i64 0, i32 1
  %1394 = load i8, i8* %1393, align 8, !tbaa !26
  %1395 = or i8 %1394, 64
  %1396 = getelementptr inbounds %union.StackValue, %union.StackValue* %1390, i64 0, i32 0, i32 1
  store i8 %1395, i8* %1396, align 8, !tbaa !27
  %1397 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %1398 = load %struct.Table*, %struct.Table** %1397, align 8, !tbaa !29
  %1399 = load %union.StackValue*, %union.StackValue** %1389, align 8, !tbaa !22
  %1400 = getelementptr inbounds %union.StackValue, %union.StackValue* %1399, i64 -1, i32 0
  %1401 = call %struct.TValue* @luaH_set(%struct.lua_State* %1387, %struct.Table* %1398, %struct.TValue* nonnull %1400) #5
  %1402 = getelementptr inbounds %struct.TValue, %struct.TValue* %1401, i64 0, i32 1
  %1403 = load i8, i8* %1402, align 8, !tbaa !27
  %1404 = and i8 %1403, 15
  %1405 = icmp eq i8 %1404, 0
  br i1 %1405, label %1406, label %1414

; <label>:1406:                                   ; preds = %1377
  %1407 = bitcast %struct.TValue* %1401 to i32*
  store i32 1, i32* %1407, align 8, !tbaa !9
  store i8 1, i8* %1402, align 8, !tbaa !27
  %1408 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1387, i64 0, i32 7
  %1409 = load %struct.global_State*, %struct.global_State** %1408, align 8, !tbaa !30
  %1410 = getelementptr inbounds %struct.global_State, %struct.global_State* %1409, i64 0, i32 3
  %1411 = load i64, i64* %1410, align 8, !tbaa !31
  %1412 = icmp sgt i64 %1411, 0
  br i1 %1412, label %1413, label %1418

; <label>:1413:                                   ; preds = %1406
  call void @luaC_step(%struct.lua_State* nonnull %1387) #5
  br label %1418

; <label>:1414:                                   ; preds = %1377
  %1415 = getelementptr inbounds %struct.TValue, %struct.TValue* %1401, i64 1, i32 0, i32 0
  %1416 = bitcast %struct.GCObject** %1415 to %struct.TString**
  %1417 = load %struct.TString*, %struct.TString** %1416, align 8, !tbaa !9
  br label %1418

; <label>:1418:                                   ; preds = %1406, %1413, %1414
  %1419 = phi %struct.TString* [ %1388, %1413 ], [ %1388, %1406 ], [ %1417, %1414 ]
  %1420 = load %union.StackValue*, %union.StackValue** %1389, align 8, !tbaa !22
  %1421 = getelementptr inbounds %union.StackValue, %union.StackValue* %1420, i64 -1
  store %union.StackValue* %1421, %union.StackValue** %1389, align 8, !tbaa !22
  %1422 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %1419, %struct.TString** %1422, align 8, !tbaa !9
  br label %1639

; <label>:1423:                                   ; preds = %9
  %1424 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1425 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1424, i64 0, i32 1
  %1426 = load i64, i64* %1425, align 8, !tbaa !17
  %1427 = add i64 %1426, 1
  %1428 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1424, i64 0, i32 2
  %1429 = load i64, i64* %1428, align 8, !tbaa !20
  %1430 = icmp ugt i64 %1427, %1429
  br i1 %1430, label %1434, label %1431

; <label>:1431:                                   ; preds = %1423
  %1432 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1424, i64 0, i32 0
  %1433 = load i8*, i8** %1432, align 8, !tbaa !21
  br label %1446

; <label>:1434:                                   ; preds = %1423
  %1435 = icmp ugt i64 %1429, 4611686018427387902
  br i1 %1435, label %1436, label %1437

; <label>:1436:                                   ; preds = %1434
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1437:                                   ; preds = %1434
  %1438 = shl i64 %1429, 1
  %1439 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1440 = load %struct.lua_State*, %struct.lua_State** %1439, align 8, !tbaa !10
  %1441 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1424, i64 0, i32 0
  %1442 = load i8*, i8** %1441, align 8, !tbaa !21
  %1443 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %1440, i8* %1442, i64 %1429, i64 %1438) #5
  store i8* %1443, i8** %1441, align 8, !tbaa !21
  store i64 %1438, i64* %1428, align 8, !tbaa !20
  %1444 = load i64, i64* %1425, align 8, !tbaa !17
  %1445 = add i64 %1444, 1
  br label %1446

; <label>:1446:                                   ; preds = %1431, %1437
  %1447 = phi i64 [ %1427, %1431 ], [ %1445, %1437 ]
  %1448 = phi i64 [ %1426, %1431 ], [ %1444, %1437 ]
  %1449 = phi i8* [ %1433, %1431 ], [ %1443, %1437 ]
  store i64 %1447, i64* %1425, align 8, !tbaa !17
  %1450 = getelementptr inbounds i8, i8* %1449, i64 %1448
  store i8 46, i8* %1450, align 1, !tbaa !9
  %1451 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1452 = getelementptr inbounds %struct.Zio, %struct.Zio* %1451, i64 0, i32 0
  %1453 = load i64, i64* %1452, align 8, !tbaa !46
  %1454 = add i64 %1453, -1
  store i64 %1454, i64* %1452, align 8, !tbaa !46
  %1455 = icmp eq i64 %1453, 0
  br i1 %1455, label %1462, label %1456

; <label>:1456:                                   ; preds = %1446
  %1457 = getelementptr inbounds %struct.Zio, %struct.Zio* %1451, i64 0, i32 1
  %1458 = load i8*, i8** %1457, align 8, !tbaa !48
  %1459 = getelementptr inbounds i8, i8* %1458, i64 1
  store i8* %1459, i8** %1457, align 8, !tbaa !48
  %1460 = load i8, i8* %1458, align 1, !tbaa !9
  %1461 = zext i8 %1460 to i32
  br label %1464

; <label>:1462:                                   ; preds = %1446
  %1463 = tail call i32 @luaZ_fill(%struct.Zio* %1451) #5
  br label %1464

; <label>:1464:                                   ; preds = %1462, %1456
  %1465 = phi i32 [ %1461, %1456 ], [ %1463, %1462 ]
  store i32 %1465, i32* %7, align 8, !tbaa !34
  %1466 = icmp eq i32 %1465, 46
  br i1 %1466, label %1467, label %1500

; <label>:1467:                                   ; preds = %1464
  %1468 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1469 = getelementptr inbounds %struct.Zio, %struct.Zio* %1468, i64 0, i32 0
  %1470 = load i64, i64* %1469, align 8, !tbaa !46
  %1471 = add i64 %1470, -1
  store i64 %1471, i64* %1469, align 8, !tbaa !46
  %1472 = icmp eq i64 %1470, 0
  br i1 %1472, label %1479, label %1473

; <label>:1473:                                   ; preds = %1467
  %1474 = getelementptr inbounds %struct.Zio, %struct.Zio* %1468, i64 0, i32 1
  %1475 = load i8*, i8** %1474, align 8, !tbaa !48
  %1476 = getelementptr inbounds i8, i8* %1475, i64 1
  store i8* %1476, i8** %1474, align 8, !tbaa !48
  %1477 = load i8, i8* %1475, align 1, !tbaa !9
  %1478 = zext i8 %1477 to i32
  br label %1481

; <label>:1479:                                   ; preds = %1467
  %1480 = tail call i32 @luaZ_fill(%struct.Zio* %1468) #5
  br label %1481

; <label>:1481:                                   ; preds = %1479, %1473
  %1482 = phi i32 [ %1478, %1473 ], [ %1480, %1479 ]
  store i32 %1482, i32* %7, align 8, !tbaa !34
  %1483 = icmp eq i32 %1482, 46
  br i1 %1483, label %1484, label %1639

; <label>:1484:                                   ; preds = %1481
  %1485 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1486 = getelementptr inbounds %struct.Zio, %struct.Zio* %1485, i64 0, i32 0
  %1487 = load i64, i64* %1486, align 8, !tbaa !46
  %1488 = add i64 %1487, -1
  store i64 %1488, i64* %1486, align 8, !tbaa !46
  %1489 = icmp eq i64 %1487, 0
  br i1 %1489, label %1496, label %1490

; <label>:1490:                                   ; preds = %1484
  %1491 = getelementptr inbounds %struct.Zio, %struct.Zio* %1485, i64 0, i32 1
  %1492 = load i8*, i8** %1491, align 8, !tbaa !48
  %1493 = getelementptr inbounds i8, i8* %1492, i64 1
  store i8* %1493, i8** %1491, align 8, !tbaa !48
  %1494 = load i8, i8* %1492, align 1, !tbaa !9
  %1495 = zext i8 %1494 to i32
  br label %1498

; <label>:1496:                                   ; preds = %1484
  %1497 = tail call i32 @luaZ_fill(%struct.Zio* %1485) #5
  br label %1498

; <label>:1498:                                   ; preds = %1490, %1496
  %1499 = phi i32 [ %1495, %1490 ], [ %1497, %1496 ]
  store i32 %1499, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:1500:                                   ; preds = %1464
  %1501 = add nsw i32 %1465, 1
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1502
  %1504 = load i8, i8* %1503, align 1, !tbaa !9
  %1505 = and i8 %1504, 2
  %1506 = icmp eq i8 %1505, 0
  br i1 %1506, label %1639, label %1507

; <label>:1507:                                   ; preds = %1500
  %1508 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %1639

; <label>:1509:                                   ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %1510 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %1639

; <label>:1511:                                   ; preds = %9
  %1512 = add nsw i32 %10, 1
  %1513 = sext i32 %1512 to i64
  %1514 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1513
  %1515 = load i8, i8* %1514, align 1, !tbaa !9
  %1516 = and i8 %1515, 1
  %1517 = icmp eq i8 %1516, 0
  br i1 %1517, label %1623, label %1518

; <label>:1518:                                   ; preds = %1511
  %1519 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %1520

; <label>:1520:                                   ; preds = %1562, %1518
  %1521 = phi i32 [ %1563, %1562 ], [ %10, %1518 ]
  %1522 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1523 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1522, i64 0, i32 1
  %1524 = load i64, i64* %1523, align 8, !tbaa !17
  %1525 = add i64 %1524, 1
  %1526 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1522, i64 0, i32 2
  %1527 = load i64, i64* %1526, align 8, !tbaa !20
  %1528 = icmp ugt i64 %1525, %1527
  br i1 %1528, label %1532, label %1529

; <label>:1529:                                   ; preds = %1520
  %1530 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1522, i64 0, i32 0
  %1531 = load i8*, i8** %1530, align 8, !tbaa !21
  br label %1543

; <label>:1532:                                   ; preds = %1520
  %1533 = icmp ugt i64 %1527, 4611686018427387902
  br i1 %1533, label %1534, label %1535

; <label>:1534:                                   ; preds = %1532
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1535:                                   ; preds = %1532
  %1536 = shl i64 %1527, 1
  %1537 = load %struct.lua_State*, %struct.lua_State** %1519, align 8, !tbaa !10
  %1538 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1522, i64 0, i32 0
  %1539 = load i8*, i8** %1538, align 8, !tbaa !21
  %1540 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %1537, i8* %1539, i64 %1527, i64 %1536) #5
  store i8* %1540, i8** %1538, align 8, !tbaa !21
  store i64 %1536, i64* %1526, align 8, !tbaa !20
  %1541 = load i64, i64* %1523, align 8, !tbaa !17
  %1542 = add i64 %1541, 1
  br label %1543

; <label>:1543:                                   ; preds = %1529, %1535
  %1544 = phi i64 [ %1525, %1529 ], [ %1542, %1535 ]
  %1545 = phi i64 [ %1524, %1529 ], [ %1541, %1535 ]
  %1546 = phi i8* [ %1531, %1529 ], [ %1540, %1535 ]
  %1547 = trunc i32 %1521 to i8
  store i64 %1544, i64* %1523, align 8, !tbaa !17
  %1548 = getelementptr inbounds i8, i8* %1546, i64 %1545
  store i8 %1547, i8* %1548, align 1, !tbaa !9
  %1549 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1550 = getelementptr inbounds %struct.Zio, %struct.Zio* %1549, i64 0, i32 0
  %1551 = load i64, i64* %1550, align 8, !tbaa !46
  %1552 = add i64 %1551, -1
  store i64 %1552, i64* %1550, align 8, !tbaa !46
  %1553 = icmp eq i64 %1551, 0
  br i1 %1553, label %1560, label %1554

; <label>:1554:                                   ; preds = %1543
  %1555 = getelementptr inbounds %struct.Zio, %struct.Zio* %1549, i64 0, i32 1
  %1556 = load i8*, i8** %1555, align 8, !tbaa !48
  %1557 = getelementptr inbounds i8, i8* %1556, i64 1
  store i8* %1557, i8** %1555, align 8, !tbaa !48
  %1558 = load i8, i8* %1556, align 1, !tbaa !9
  %1559 = zext i8 %1558 to i32
  br label %1562

; <label>:1560:                                   ; preds = %1543
  %1561 = tail call i32 @luaZ_fill(%struct.Zio* %1549) #5
  br label %1562

; <label>:1562:                                   ; preds = %1560, %1554
  %1563 = phi i32 [ %1559, %1554 ], [ %1561, %1560 ]
  store i32 %1563, i32* %7, align 8, !tbaa !34
  %1564 = add nsw i32 %1563, 1
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1565
  %1567 = load i8, i8* %1566, align 1, !tbaa !9
  %1568 = and i8 %1567, 3
  %1569 = icmp eq i8 %1568, 0
  br i1 %1569, label %1570, label %1520

; <label>:1570:                                   ; preds = %1562
  %1571 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1572 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1571, i64 0, i32 0
  %1573 = load i8*, i8** %1572, align 8, !tbaa !21
  %1574 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1571, i64 0, i32 1
  %1575 = load i64, i64* %1574, align 8, !tbaa !17
  %1576 = load %struct.lua_State*, %struct.lua_State** %1519, align 8, !tbaa !10
  %1577 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %1576, i8* %1573, i64 %1575) #5
  %1578 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1576, i64 0, i32 6
  %1579 = load %union.StackValue*, %union.StackValue** %1578, align 8, !tbaa !22
  %1580 = getelementptr inbounds %union.StackValue, %union.StackValue* %1579, i64 1
  store %union.StackValue* %1580, %union.StackValue** %1578, align 8, !tbaa !22
  %1581 = bitcast %union.StackValue* %1579 to %struct.TString**
  store %struct.TString* %1577, %struct.TString** %1581, align 8, !tbaa !9
  %1582 = getelementptr inbounds %struct.TString, %struct.TString* %1577, i64 0, i32 1
  %1583 = load i8, i8* %1582, align 8, !tbaa !26
  %1584 = or i8 %1583, 64
  %1585 = getelementptr inbounds %union.StackValue, %union.StackValue* %1579, i64 0, i32 0, i32 1
  store i8 %1584, i8* %1585, align 8, !tbaa !27
  %1586 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %1587 = load %struct.Table*, %struct.Table** %1586, align 8, !tbaa !29
  %1588 = load %union.StackValue*, %union.StackValue** %1578, align 8, !tbaa !22
  %1589 = getelementptr inbounds %union.StackValue, %union.StackValue* %1588, i64 -1, i32 0
  %1590 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %1576, %struct.Table* %1587, %struct.TValue* nonnull %1589) #5
  %1591 = getelementptr inbounds %struct.TValue, %struct.TValue* %1590, i64 0, i32 1
  %1592 = load i8, i8* %1591, align 8, !tbaa !27
  %1593 = and i8 %1592, 15
  %1594 = icmp eq i8 %1593, 0
  br i1 %1594, label %1595, label %1603

; <label>:1595:                                   ; preds = %1570
  %1596 = bitcast %struct.TValue* %1590 to i32*
  store i32 1, i32* %1596, align 8, !tbaa !9
  store i8 1, i8* %1591, align 8, !tbaa !27
  %1597 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1576, i64 0, i32 7
  %1598 = load %struct.global_State*, %struct.global_State** %1597, align 8, !tbaa !30
  %1599 = getelementptr inbounds %struct.global_State, %struct.global_State* %1598, i64 0, i32 3
  %1600 = load i64, i64* %1599, align 8, !tbaa !31
  %1601 = icmp sgt i64 %1600, 0
  br i1 %1601, label %1602, label %1608

; <label>:1602:                                   ; preds = %1595
  tail call void @luaC_step(%struct.lua_State* nonnull %1576) #5
  br label %1608

; <label>:1603:                                   ; preds = %1570
  %1604 = getelementptr inbounds %struct.TValue, %struct.TValue* %1590, i64 1, i32 0, i32 0
  %1605 = bitcast %struct.GCObject** %1604 to %struct.TString**
  %1606 = load %struct.TString*, %struct.TString** %1605, align 8, !tbaa !9
  %1607 = getelementptr inbounds %struct.TString, %struct.TString* %1606, i64 0, i32 1
  br label %1608

; <label>:1608:                                   ; preds = %1595, %1602, %1603
  %1609 = phi i8* [ %1582, %1595 ], [ %1582, %1602 ], [ %1607, %1603 ]
  %1610 = phi %struct.TString* [ %1577, %1595 ], [ %1577, %1602 ], [ %1606, %1603 ]
  %1611 = load %union.StackValue*, %union.StackValue** %1578, align 8, !tbaa !22
  %1612 = getelementptr inbounds %union.StackValue, %union.StackValue* %1611, i64 -1
  store %union.StackValue* %1612, %union.StackValue** %1578, align 8, !tbaa !22
  %1613 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %1610, %struct.TString** %1613, align 8, !tbaa !9
  %1614 = load i8, i8* %1609, align 8, !tbaa !26
  %1615 = icmp eq i8 %1614, 20
  br i1 %1615, label %1616, label %1639

; <label>:1616:                                   ; preds = %1608
  %1617 = getelementptr inbounds %struct.TString, %struct.TString* %1610, i64 0, i32 3
  %1618 = load i8, i8* %1617, align 2, !tbaa !6
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1639, label %1620

; <label>:1620:                                   ; preds = %1616
  %1621 = zext i8 %1618 to i32
  %1622 = or i32 %1621, 256
  br label %1639

; <label>:1623:                                   ; preds = %1511
  %1624 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1625 = getelementptr inbounds %struct.Zio, %struct.Zio* %1624, i64 0, i32 0
  %1626 = load i64, i64* %1625, align 8, !tbaa !46
  %1627 = add i64 %1626, -1
  store i64 %1627, i64* %1625, align 8, !tbaa !46
  %1628 = icmp eq i64 %1626, 0
  br i1 %1628, label %1635, label %1629

; <label>:1629:                                   ; preds = %1623
  %1630 = getelementptr inbounds %struct.Zio, %struct.Zio* %1624, i64 0, i32 1
  %1631 = load i8*, i8** %1630, align 8, !tbaa !48
  %1632 = getelementptr inbounds i8, i8* %1631, i64 1
  store i8* %1632, i8** %1630, align 8, !tbaa !48
  %1633 = load i8, i8* %1631, align 1, !tbaa !9
  %1634 = zext i8 %1633 to i32
  br label %1637

; <label>:1635:                                   ; preds = %1623
  %1636 = tail call i32 @luaZ_fill(%struct.Zio* %1624) #5
  br label %1637

; <label>:1637:                                   ; preds = %1635, %1629
  %1638 = phi i32 [ %1634, %1629 ], [ %1636, %1635 ]
  store i32 %1638, i32* %7, align 8, !tbaa !34
  br label %1639

; <label>:1639:                                   ; preds = %9, %42, %195, %147, %1498, %1481, %326, %309, %293, %276, %260, %243, %227, %211, %179, %163, %131, %114, %1620, %1616, %1608, %1500, %96, %97, %1637, %1509, %1507, %1418
  %1640 = phi i32 [ %10, %1637 ], [ %1510, %1509 ], [ %1508, %1507 ], [ 293, %1418 ], [ 293, %96 ], [ 91, %97 ], [ 284, %163 ], [ 283, %211 ], [ 46, %1500 ], [ %1622, %1620 ], [ 292, %1616 ], [ 292, %1608 ], [ 282, %131 ], [ 61, %114 ], [ 286, %179 ], [ 287, %227 ], [ 279, %260 ], [ 47, %243 ], [ 285, %293 ], [ 126, %276 ], [ 288, %326 ], [ 58, %309 ], [ 281, %1498 ], [ 280, %1481 ], [ 60, %147 ], [ 62, %195 ], [ 289, %9 ], [ 45, %42 ]
  ret i32 %1640
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %3 = tail call fastcc i32 @llex(%struct.LexState* %0, %union.SemInfo* nonnull %2)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  store i32 %3, i32* %4, align 8, !tbaa !35
  ret i32 %3
}

declare hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @inclinenumber(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !46
  %8 = add i64 %7, -1
  store i64 %8, i64* %6, align 8, !tbaa !46
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8, !tbaa !48
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %11, align 8, !tbaa !48
  %14 = load i8, i8* %12, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  br label %18

; <label>:16:                                     ; preds = %1
  %17 = tail call i32 @luaZ_fill(%struct.Zio* %5) #5
  br label %18

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ]
  store i32 %19, i32* %2, align 8, !tbaa !34
  switch i32 %19, label %38 [
    i32 10, label %20
    i32 13, label %20
  ]

; <label>:20:                                     ; preds = %18, %18
  %21 = icmp eq i32 %19, %3
  br i1 %21, label %38, label %22

; <label>:22:                                     ; preds = %20
  %23 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !46
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8, !tbaa !46
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 1
  %30 = load i8*, i8** %29, align 8, !tbaa !48
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %29, align 8, !tbaa !48
  %32 = load i8, i8* %30, align 1, !tbaa !9
  %33 = zext i8 %32 to i32
  br label %36

; <label>:34:                                     ; preds = %22
  %35 = tail call i32 @luaZ_fill(%struct.Zio* %23) #5
  br label %36

; <label>:36:                                     ; preds = %34, %28
  %37 = phi i32 [ %33, %28 ], [ %35, %34 ]
  store i32 %37, i32* %2, align 8, !tbaa !34
  br label %38

; <label>:38:                                     ; preds = %18, %20, %36
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %40 = load i32, i32* %39, align 4, !tbaa !15
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4, !tbaa !15
  %42 = icmp eq i32 %41, 2147483647
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #6
  unreachable

; <label>:44:                                     ; preds = %38
  ret void
}

declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @skip_sep(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %5 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !17
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !20
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !21
  br label %27

; <label>:15:                                     ; preds = %1
  %16 = icmp ugt i64 %10, 4611686018427387902
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %15
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:18:                                     ; preds = %15
  %19 = shl i64 %10, 1
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !21
  %24 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %21, i8* %23, i64 %10, i64 %19) #5
  store i8* %24, i8** %22, align 8, !tbaa !21
  store i64 %19, i64* %9, align 8, !tbaa !20
  %25 = load i64, i64* %6, align 8, !tbaa !17
  %26 = add i64 %25, 1
  br label %27

; <label>:27:                                     ; preds = %12, %18
  %28 = phi i64 [ %8, %12 ], [ %26, %18 ]
  %29 = phi i64 [ %7, %12 ], [ %25, %18 ]
  %30 = phi i8* [ %14, %12 ], [ %24, %18 ]
  %31 = trunc i32 %3 to i8
  store i64 %28, i64* %6, align 8, !tbaa !17
  %32 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8 %31, i8* %32, align 1, !tbaa !9
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %34 = load %struct.Zio*, %struct.Zio** %33, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.Zio, %struct.Zio* %34, i64 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !46
  %37 = add i64 %36, -1
  store i64 %37, i64* %35, align 8, !tbaa !46
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds %struct.Zio, %struct.Zio* %34, i64 0, i32 1
  %41 = load i8*, i8** %40, align 8, !tbaa !48
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %40, align 8, !tbaa !48
  %43 = load i8, i8* %41, align 1, !tbaa !9
  %44 = zext i8 %43 to i32
  br label %47

; <label>:45:                                     ; preds = %27
  %46 = tail call i32 @luaZ_fill(%struct.Zio* %34) #5
  br label %47

; <label>:47:                                     ; preds = %45, %39
  %48 = phi i32 [ %44, %39 ], [ %46, %45 ]
  store i32 %48, i32* %2, align 8, !tbaa !34
  %49 = icmp eq i32 %48, 61
  br i1 %49, label %50, label %97

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %52

; <label>:52:                                     ; preds = %50, %93
  %53 = phi i64 [ 0, %50 ], [ %95, %93 ]
  %54 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %54, i64 0, i32 1
  %56 = load i64, i64* %55, align 8, !tbaa !17
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !20
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %64, label %61

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %54, i64 0, i32 0
  %63 = load i8*, i8** %62, align 8, !tbaa !21
  br label %75

; <label>:64:                                     ; preds = %52
  %65 = icmp ugt i64 %59, 4611686018427387902
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %64
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:67:                                     ; preds = %64
  %68 = shl i64 %59, 1
  %69 = load %struct.lua_State*, %struct.lua_State** %51, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %54, i64 0, i32 0
  %71 = load i8*, i8** %70, align 8, !tbaa !21
  %72 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %69, i8* %71, i64 %59, i64 %68) #5
  store i8* %72, i8** %70, align 8, !tbaa !21
  store i64 %68, i64* %58, align 8, !tbaa !20
  %73 = load i64, i64* %55, align 8, !tbaa !17
  %74 = add i64 %73, 1
  br label %75

; <label>:75:                                     ; preds = %61, %67
  %76 = phi i64 [ %57, %61 ], [ %74, %67 ]
  %77 = phi i64 [ %56, %61 ], [ %73, %67 ]
  %78 = phi i8* [ %63, %61 ], [ %72, %67 ]
  store i64 %76, i64* %55, align 8, !tbaa !17
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8 61, i8* %79, align 1, !tbaa !9
  %80 = load %struct.Zio*, %struct.Zio** %33, align 8, !tbaa !36
  %81 = getelementptr inbounds %struct.Zio, %struct.Zio* %80, i64 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !46
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8, !tbaa !46
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %91, label %85

; <label>:85:                                     ; preds = %75
  %86 = getelementptr inbounds %struct.Zio, %struct.Zio* %80, i64 0, i32 1
  %87 = load i8*, i8** %86, align 8, !tbaa !48
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %88, i8** %86, align 8, !tbaa !48
  %89 = load i8, i8* %87, align 1, !tbaa !9
  %90 = zext i8 %89 to i32
  br label %93

; <label>:91:                                     ; preds = %75
  %92 = tail call i32 @luaZ_fill(%struct.Zio* %80) #5
  br label %93

; <label>:93:                                     ; preds = %91, %85
  %94 = phi i32 [ %90, %85 ], [ %92, %91 ]
  store i32 %94, i32* %2, align 8, !tbaa !34
  %95 = add i64 %53, 1
  %96 = icmp eq i32 %94, 61
  br i1 %96, label %52, label %97

; <label>:97:                                     ; preds = %93, %47
  %98 = phi i32 [ %48, %47 ], [ %94, %93 ]
  %99 = phi i64 [ 0, %47 ], [ %95, %93 ]
  %100 = icmp eq i32 %98, %3
  %101 = add i64 %99, 2
  %102 = icmp eq i64 %99, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %100, i64 %101, i64 %103
  ret i64 %104
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_long_string(%struct.LexState*, %union.SemInfo*, i64) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %9 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i64 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !17
  %12 = add i64 %11, 1
  %13 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i64 0, i32 2
  %14 = load i64, i64* %13, align 8, !tbaa !20
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !21
  br label %31

; <label>:19:                                     ; preds = %3
  %20 = icmp ugt i64 %14, 4611686018427387902
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %19
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:22:                                     ; preds = %19
  %23 = shl i64 %14, 1
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !21
  %28 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %25, i8* %27, i64 %14, i64 %23) #5
  store i8* %28, i8** %26, align 8, !tbaa !21
  store i64 %23, i64* %13, align 8, !tbaa !20
  %29 = load i64, i64* %10, align 8, !tbaa !17
  %30 = add i64 %29, 1
  br label %31

; <label>:31:                                     ; preds = %16, %22
  %32 = phi i64 [ %12, %16 ], [ %30, %22 ]
  %33 = phi i64 [ %11, %16 ], [ %29, %22 ]
  %34 = phi i8* [ %18, %16 ], [ %28, %22 ]
  %35 = trunc i32 %7 to i8
  store i64 %32, i64* %10, align 8, !tbaa !17
  %36 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8 %35, i8* %36, align 1, !tbaa !9
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %38 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct.Zio, %struct.Zio* %38, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !46
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8, !tbaa !46
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %31
  %44 = getelementptr inbounds %struct.Zio, %struct.Zio* %38, i64 0, i32 1
  %45 = load i8*, i8** %44, align 8, !tbaa !48
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %44, align 8, !tbaa !48
  %47 = load i8, i8* %45, align 1, !tbaa !9
  %48 = zext i8 %47 to i32
  br label %51

; <label>:49:                                     ; preds = %31
  %50 = tail call i32 @luaZ_fill(%struct.Zio* %38) #5
  br label %51

; <label>:51:                                     ; preds = %49, %43
  %52 = phi i32 [ %48, %43 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 8, !tbaa !34
  switch i32 %52, label %54 [
    i32 10, label %53
    i32 13, label %53
  ]

; <label>:53:                                     ; preds = %51, %51
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = icmp eq %union.SemInfo* %1, null
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %57

; <label>:57:                                     ; preds = %137, %54
  %58 = load i32, i32* %6, align 8, !tbaa !34
  switch i32 %58, label %141 [
    i32 -1, label %59
    i32 93, label %63
    i32 10, label %110
    i32 13, label %110
  ]

; <label>:59:                                     ; preds = %57
  %60 = select i1 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %61 = load %struct.lua_State*, %struct.lua_State** %56, align 8, !tbaa !10
  %62 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0), i8* %60, i32 %5) #5
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %62, i32 289) #6
  unreachable

; <label>:63:                                     ; preds = %57
  %64 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %65 = icmp eq i64 %64, %2
  br i1 %65, label %66, label %137

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %6, align 8, !tbaa !34
  %68 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 1
  %70 = load i64, i64* %69, align 8, !tbaa !17
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 2
  %73 = load i64, i64* %72, align 8, !tbaa !20
  %74 = icmp ugt i64 %71, %73
  br i1 %74, label %78, label %75

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 0
  %77 = load i8*, i8** %76, align 8, !tbaa !21
  br label %89

; <label>:78:                                     ; preds = %66
  %79 = icmp ugt i64 %73, 4611686018427387902
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %78
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:81:                                     ; preds = %78
  %82 = shl i64 %73, 1
  %83 = load %struct.lua_State*, %struct.lua_State** %56, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 0
  %85 = load i8*, i8** %84, align 8, !tbaa !21
  %86 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %83, i8* %85, i64 %73, i64 %82) #5
  store i8* %86, i8** %84, align 8, !tbaa !21
  store i64 %82, i64* %72, align 8, !tbaa !20
  %87 = load i64, i64* %69, align 8, !tbaa !17
  %88 = add i64 %87, 1
  br label %89

; <label>:89:                                     ; preds = %75, %81
  %90 = phi i64 [ %71, %75 ], [ %88, %81 ]
  %91 = phi i64 [ %70, %75 ], [ %87, %81 ]
  %92 = phi i8* [ %77, %75 ], [ %86, %81 ]
  %93 = trunc i32 %67 to i8
  store i64 %90, i64* %69, align 8, !tbaa !17
  %94 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8 %93, i8* %94, align 1, !tbaa !9
  %95 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %96 = getelementptr inbounds %struct.Zio, %struct.Zio* %95, i64 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !46
  %98 = add i64 %97, -1
  store i64 %98, i64* %96, align 8, !tbaa !46
  %99 = icmp eq i64 %97, 0
  br i1 %99, label %106, label %100

; <label>:100:                                    ; preds = %89
  %101 = getelementptr inbounds %struct.Zio, %struct.Zio* %95, i64 0, i32 1
  %102 = load i8*, i8** %101, align 8, !tbaa !48
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %101, align 8, !tbaa !48
  %104 = load i8, i8* %102, align 1, !tbaa !9
  %105 = zext i8 %104 to i32
  br label %108

; <label>:106:                                    ; preds = %89
  %107 = tail call i32 @luaZ_fill(%struct.Zio* %95) #5
  br label %108

; <label>:108:                                    ; preds = %106, %100
  %109 = phi i32 [ %105, %100 ], [ %107, %106 ]
  store i32 %109, i32* %6, align 8, !tbaa !34
  br i1 %55, label %246, label %201

; <label>:110:                                    ; preds = %57, %57
  %111 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %112 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %111, i64 0, i32 1
  %113 = load i64, i64* %112, align 8, !tbaa !17
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %111, i64 0, i32 2
  %116 = load i64, i64* %115, align 8, !tbaa !20
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %121, label %118

; <label>:118:                                    ; preds = %110
  %119 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %111, i64 0, i32 0
  %120 = load i8*, i8** %119, align 8, !tbaa !21
  br label %132

; <label>:121:                                    ; preds = %110
  %122 = icmp ugt i64 %116, 4611686018427387902
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %121
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:124:                                    ; preds = %121
  %125 = shl i64 %116, 1
  %126 = load %struct.lua_State*, %struct.lua_State** %56, align 8, !tbaa !10
  %127 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %111, i64 0, i32 0
  %128 = load i8*, i8** %127, align 8, !tbaa !21
  %129 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %126, i8* %128, i64 %116, i64 %125) #5
  store i8* %129, i8** %127, align 8, !tbaa !21
  store i64 %125, i64* %115, align 8, !tbaa !20
  %130 = load i64, i64* %112, align 8, !tbaa !17
  %131 = add i64 %130, 1
  br label %132

; <label>:132:                                    ; preds = %118, %124
  %133 = phi i64 [ %114, %118 ], [ %131, %124 ]
  %134 = phi i64 [ %113, %118 ], [ %130, %124 ]
  %135 = phi i8* [ %120, %118 ], [ %129, %124 ]
  store i64 %133, i64* %112, align 8, !tbaa !17
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  store i8 10, i8* %136, align 1, !tbaa !9
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br i1 %55, label %138, label %137

; <label>:137:                                    ; preds = %132, %183, %199, %138, %63
  br label %57

; <label>:138:                                    ; preds = %132
  %139 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %140 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %139, i64 0, i32 1
  store i64 0, i64* %140, align 8, !tbaa !17
  br label %137

; <label>:141:                                    ; preds = %57
  br i1 %55, label %185, label %142

; <label>:142:                                    ; preds = %141
  %143 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %144 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %143, i64 0, i32 1
  %145 = load i64, i64* %144, align 8, !tbaa !17
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %143, i64 0, i32 2
  %148 = load i64, i64* %147, align 8, !tbaa !20
  %149 = icmp ugt i64 %146, %148
  br i1 %149, label %153, label %150

; <label>:150:                                    ; preds = %142
  %151 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %143, i64 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !21
  br label %164

; <label>:153:                                    ; preds = %142
  %154 = icmp ugt i64 %148, 4611686018427387902
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %153
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:156:                                    ; preds = %153
  %157 = shl i64 %148, 1
  %158 = load %struct.lua_State*, %struct.lua_State** %56, align 8, !tbaa !10
  %159 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %143, i64 0, i32 0
  %160 = load i8*, i8** %159, align 8, !tbaa !21
  %161 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %158, i8* %160, i64 %148, i64 %157) #5
  store i8* %161, i8** %159, align 8, !tbaa !21
  store i64 %157, i64* %147, align 8, !tbaa !20
  %162 = load i64, i64* %144, align 8, !tbaa !17
  %163 = add i64 %162, 1
  br label %164

; <label>:164:                                    ; preds = %150, %156
  %165 = phi i64 [ %146, %150 ], [ %163, %156 ]
  %166 = phi i64 [ %145, %150 ], [ %162, %156 ]
  %167 = phi i8* [ %152, %150 ], [ %161, %156 ]
  %168 = trunc i32 %58 to i8
  store i64 %165, i64* %144, align 8, !tbaa !17
  %169 = getelementptr inbounds i8, i8* %167, i64 %166
  store i8 %168, i8* %169, align 1, !tbaa !9
  %170 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %171 = getelementptr inbounds %struct.Zio, %struct.Zio* %170, i64 0, i32 0
  %172 = load i64, i64* %171, align 8, !tbaa !46
  %173 = add i64 %172, -1
  store i64 %173, i64* %171, align 8, !tbaa !46
  %174 = icmp eq i64 %172, 0
  br i1 %174, label %181, label %175

; <label>:175:                                    ; preds = %164
  %176 = getelementptr inbounds %struct.Zio, %struct.Zio* %170, i64 0, i32 1
  %177 = load i8*, i8** %176, align 8, !tbaa !48
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %176, align 8, !tbaa !48
  %179 = load i8, i8* %177, align 1, !tbaa !9
  %180 = zext i8 %179 to i32
  br label %183

; <label>:181:                                    ; preds = %164
  %182 = tail call i32 @luaZ_fill(%struct.Zio* %170) #5
  br label %183

; <label>:183:                                    ; preds = %181, %175
  %184 = phi i32 [ %180, %175 ], [ %182, %181 ]
  store i32 %184, i32* %6, align 8, !tbaa !34
  br label %137

; <label>:185:                                    ; preds = %141
  %186 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %187 = getelementptr inbounds %struct.Zio, %struct.Zio* %186, i64 0, i32 0
  %188 = load i64, i64* %187, align 8, !tbaa !46
  %189 = add i64 %188, -1
  store i64 %189, i64* %187, align 8, !tbaa !46
  %190 = icmp eq i64 %188, 0
  br i1 %190, label %197, label %191

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.Zio, %struct.Zio* %186, i64 0, i32 1
  %193 = load i8*, i8** %192, align 8, !tbaa !48
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %192, align 8, !tbaa !48
  %195 = load i8, i8* %193, align 1, !tbaa !9
  %196 = zext i8 %195 to i32
  br label %199

; <label>:197:                                    ; preds = %185
  %198 = tail call i32 @luaZ_fill(%struct.Zio* %186) #5
  br label %199

; <label>:199:                                    ; preds = %197, %191
  %200 = phi i32 [ %196, %191 ], [ %198, %197 ]
  store i32 %200, i32* %6, align 8, !tbaa !34
  br label %137

; <label>:201:                                    ; preds = %108
  %202 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %203 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %202, i64 0, i32 0
  %204 = load i8*, i8** %203, align 8, !tbaa !21
  %205 = getelementptr inbounds i8, i8* %204, i64 %2
  %206 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %202, i64 0, i32 1
  %207 = load i64, i64* %206, align 8, !tbaa !17
  %208 = shl i64 %2, 1
  %209 = sub i64 %207, %208
  %210 = load %struct.lua_State*, %struct.lua_State** %56, align 8, !tbaa !10
  %211 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %210, i8* %205, i64 %209) #5
  %212 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %210, i64 0, i32 6
  %213 = load %union.StackValue*, %union.StackValue** %212, align 8, !tbaa !22
  %214 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 1
  store %union.StackValue* %214, %union.StackValue** %212, align 8, !tbaa !22
  %215 = bitcast %union.StackValue* %213 to %struct.TString**
  store %struct.TString* %211, %struct.TString** %215, align 8, !tbaa !9
  %216 = getelementptr inbounds %struct.TString, %struct.TString* %211, i64 0, i32 1
  %217 = load i8, i8* %216, align 8, !tbaa !26
  %218 = or i8 %217, 64
  %219 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 0, i32 0, i32 1
  store i8 %218, i8* %219, align 8, !tbaa !27
  %220 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %221 = load %struct.Table*, %struct.Table** %220, align 8, !tbaa !29
  %222 = load %union.StackValue*, %union.StackValue** %212, align 8, !tbaa !22
  %223 = getelementptr inbounds %union.StackValue, %union.StackValue* %222, i64 -1, i32 0
  %224 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %210, %struct.Table* %221, %struct.TValue* nonnull %223) #5
  %225 = getelementptr inbounds %struct.TValue, %struct.TValue* %224, i64 0, i32 1
  %226 = load i8, i8* %225, align 8, !tbaa !27
  %227 = and i8 %226, 15
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %237

; <label>:229:                                    ; preds = %201
  %230 = bitcast %struct.TValue* %224 to i32*
  store i32 1, i32* %230, align 8, !tbaa !9
  store i8 1, i8* %225, align 8, !tbaa !27
  %231 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %210, i64 0, i32 7
  %232 = load %struct.global_State*, %struct.global_State** %231, align 8, !tbaa !30
  %233 = getelementptr inbounds %struct.global_State, %struct.global_State* %232, i64 0, i32 3
  %234 = load i64, i64* %233, align 8, !tbaa !31
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %241

; <label>:236:                                    ; preds = %229
  tail call void @luaC_step(%struct.lua_State* nonnull %210) #5
  br label %241

; <label>:237:                                    ; preds = %201
  %238 = getelementptr inbounds %struct.TValue, %struct.TValue* %224, i64 1, i32 0, i32 0
  %239 = bitcast %struct.GCObject** %238 to %struct.TString**
  %240 = load %struct.TString*, %struct.TString** %239, align 8, !tbaa !9
  br label %241

; <label>:241:                                    ; preds = %229, %236, %237
  %242 = phi %struct.TString* [ %211, %236 ], [ %211, %229 ], [ %240, %237 ]
  %243 = load %union.StackValue*, %union.StackValue** %212, align 8, !tbaa !22
  %244 = getelementptr inbounds %union.StackValue, %union.StackValue* %243, i64 -1
  store %union.StackValue* %244, %union.StackValue** %212, align 8, !tbaa !22
  %245 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %242, %struct.TString** %245, align 8, !tbaa !9
  br label %246

; <label>:246:                                    ; preds = %108, %241
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_numeral(%struct.LexState*, %union.SemInfo* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %8 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !17
  %11 = add i64 %10, 1
  %12 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !20
  %14 = icmp ugt i64 %11, %13
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !21
  br label %30

; <label>:18:                                     ; preds = %2
  %19 = icmp ugt i64 %13, 4611686018427387902
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %18
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:21:                                     ; preds = %18
  %22 = shl i64 %13, 1
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !21
  %27 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %24, i8* %26, i64 %13, i64 %22) #5
  store i8* %27, i8** %25, align 8, !tbaa !21
  store i64 %22, i64* %12, align 8, !tbaa !20
  %28 = load i64, i64* %9, align 8, !tbaa !17
  %29 = add i64 %28, 1
  br label %30

; <label>:30:                                     ; preds = %15, %21
  %31 = phi i64 [ %11, %15 ], [ %29, %21 ]
  %32 = phi i64 [ %10, %15 ], [ %28, %21 ]
  %33 = phi i8* [ %17, %15 ], [ %27, %21 ]
  %34 = trunc i32 %6 to i8
  store i64 %31, i64* %9, align 8, !tbaa !17
  %35 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8 %34, i8* %35, align 1, !tbaa !9
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %37 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.Zio, %struct.Zio* %37, i64 0, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !46
  %40 = add i64 %39, -1
  store i64 %40, i64* %38, align 8, !tbaa !46
  %41 = icmp eq i64 %39, 0
  br i1 %41, label %48, label %42

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %struct.Zio, %struct.Zio* %37, i64 0, i32 1
  %44 = load i8*, i8** %43, align 8, !tbaa !48
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %43, align 8, !tbaa !48
  %46 = load i8, i8* %44, align 1, !tbaa !9
  %47 = zext i8 %46 to i32
  br label %50

; <label>:48:                                     ; preds = %30
  %49 = tail call i32 @luaZ_fill(%struct.Zio* %37) #5
  br label %50

; <label>:50:                                     ; preds = %48, %42
  %51 = phi i32 [ %47, %42 ], [ %49, %48 ]
  store i32 %51, i32* %5, align 8, !tbaa !34
  %52 = icmp eq i32 %6, 48
  br i1 %52, label %53, label %98

; <label>:53:                                     ; preds = %50
  switch i32 %51, label %98 [
    i32 120, label %54
    i32 88, label %54
  ]

; <label>:54:                                     ; preds = %53, %53
  %55 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %55, i64 0, i32 1
  %57 = load i64, i64* %56, align 8, !tbaa !17
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %55, i64 0, i32 2
  %60 = load i64, i64* %59, align 8, !tbaa !20
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %55, i64 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !21
  br label %77

; <label>:65:                                     ; preds = %54
  %66 = icmp ugt i64 %60, 4611686018427387902
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %65
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:68:                                     ; preds = %65
  %69 = shl i64 %60, 1
  %70 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %71 = load %struct.lua_State*, %struct.lua_State** %70, align 8, !tbaa !10
  %72 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %55, i64 0, i32 0
  %73 = load i8*, i8** %72, align 8, !tbaa !21
  %74 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %71, i8* %73, i64 %60, i64 %69) #5
  store i8* %74, i8** %72, align 8, !tbaa !21
  store i64 %69, i64* %59, align 8, !tbaa !20
  %75 = load i64, i64* %56, align 8, !tbaa !17
  %76 = add i64 %75, 1
  br label %77

; <label>:77:                                     ; preds = %62, %68
  %78 = phi i64 [ %58, %62 ], [ %76, %68 ]
  %79 = phi i64 [ %57, %62 ], [ %75, %68 ]
  %80 = phi i8* [ %64, %62 ], [ %74, %68 ]
  %81 = trunc i32 %51 to i8
  store i64 %78, i64* %56, align 8, !tbaa !17
  %82 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8 %81, i8* %82, align 1, !tbaa !9
  %83 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %84 = getelementptr inbounds %struct.Zio, %struct.Zio* %83, i64 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !46
  %86 = add i64 %85, -1
  store i64 %86, i64* %84, align 8, !tbaa !46
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %94, label %88

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds %struct.Zio, %struct.Zio* %83, i64 0, i32 1
  %90 = load i8*, i8** %89, align 8, !tbaa !48
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %89, align 8, !tbaa !48
  %92 = load i8, i8* %90, align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  br label %96

; <label>:94:                                     ; preds = %77
  %95 = tail call i32 @luaZ_fill(%struct.Zio* %83) #5
  br label %96

; <label>:96:                                     ; preds = %88, %94
  %97 = phi i32 [ %93, %88 ], [ %95, %94 ]
  store i32 %97, i32* %5, align 8, !tbaa !34
  br label %98

; <label>:98:                                     ; preds = %53, %96, %50
  %99 = phi i32 [ %51, %50 ], [ %97, %96 ], [ %51, %53 ]
  %100 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %50 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %96 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %53 ]
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %103

; <label>:103:                                    ; preds = %289, %98
  %104 = phi i32 [ %290, %289 ], [ %99, %98 ]
  %105 = load i8, i8* %100, align 1, !tbaa !9
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %112, label %108

; <label>:108:                                    ; preds = %103
  %109 = load i8, i8* %101, align 1, !tbaa !9
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %104, %110
  br i1 %111, label %112, label %198

; <label>:112:                                    ; preds = %108, %103
  %113 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %114 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %113, i64 0, i32 1
  %115 = load i64, i64* %114, align 8, !tbaa !17
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %113, i64 0, i32 2
  %118 = load i64, i64* %117, align 8, !tbaa !20
  %119 = icmp ugt i64 %116, %118
  br i1 %119, label %123, label %120

; <label>:120:                                    ; preds = %112
  %121 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %113, i64 0, i32 0
  %122 = load i8*, i8** %121, align 8, !tbaa !21
  br label %134

; <label>:123:                                    ; preds = %112
  %124 = icmp ugt i64 %118, 4611686018427387902
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %123
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:126:                                    ; preds = %123
  %127 = shl i64 %118, 1
  %128 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %129 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %113, i64 0, i32 0
  %130 = load i8*, i8** %129, align 8, !tbaa !21
  %131 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %128, i8* %130, i64 %118, i64 %127) #5
  store i8* %131, i8** %129, align 8, !tbaa !21
  store i64 %127, i64* %117, align 8, !tbaa !20
  %132 = load i64, i64* %114, align 8, !tbaa !17
  %133 = add i64 %132, 1
  br label %134

; <label>:134:                                    ; preds = %120, %126
  %135 = phi i64 [ %116, %120 ], [ %133, %126 ]
  %136 = phi i64 [ %115, %120 ], [ %132, %126 ]
  %137 = phi i8* [ %122, %120 ], [ %131, %126 ]
  %138 = trunc i32 %104 to i8
  store i64 %135, i64* %114, align 8, !tbaa !17
  %139 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8 %138, i8* %139, align 1, !tbaa !9
  %140 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %141 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !46
  %143 = add i64 %142, -1
  store i64 %143, i64* %141, align 8, !tbaa !46
  %144 = icmp eq i64 %142, 0
  br i1 %144, label %151, label %145

; <label>:145:                                    ; preds = %134
  %146 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 1
  %147 = load i8*, i8** %146, align 8, !tbaa !48
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %146, align 8, !tbaa !48
  %149 = load i8, i8* %147, align 1, !tbaa !9
  %150 = zext i8 %149 to i32
  br label %153

; <label>:151:                                    ; preds = %134
  %152 = tail call i32 @luaZ_fill(%struct.Zio* %140) #5
  br label %153

; <label>:153:                                    ; preds = %151, %145
  %154 = phi i32 [ %150, %145 ], [ %152, %151 ]
  store i32 %154, i32* %5, align 8, !tbaa !34
  switch i32 %154, label %198 [
    i32 45, label %155
    i32 43, label %155
  ]

; <label>:155:                                    ; preds = %153, %153
  %156 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %157 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 1
  %158 = load i64, i64* %157, align 8, !tbaa !17
  %159 = add i64 %158, 1
  %160 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 2
  %161 = load i64, i64* %160, align 8, !tbaa !20
  %162 = icmp ugt i64 %159, %161
  br i1 %162, label %166, label %163

; <label>:163:                                    ; preds = %155
  %164 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 0
  %165 = load i8*, i8** %164, align 8, !tbaa !21
  br label %177

; <label>:166:                                    ; preds = %155
  %167 = icmp ugt i64 %161, 4611686018427387902
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %166
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:169:                                    ; preds = %166
  %170 = shl i64 %161, 1
  %171 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %172 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 0
  %173 = load i8*, i8** %172, align 8, !tbaa !21
  %174 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %171, i8* %173, i64 %161, i64 %170) #5
  store i8* %174, i8** %172, align 8, !tbaa !21
  store i64 %170, i64* %160, align 8, !tbaa !20
  %175 = load i64, i64* %157, align 8, !tbaa !17
  %176 = add i64 %175, 1
  br label %177

; <label>:177:                                    ; preds = %163, %169
  %178 = phi i64 [ %159, %163 ], [ %176, %169 ]
  %179 = phi i64 [ %158, %163 ], [ %175, %169 ]
  %180 = phi i8* [ %165, %163 ], [ %174, %169 ]
  %181 = trunc i32 %154 to i8
  store i64 %178, i64* %157, align 8, !tbaa !17
  %182 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8 %181, i8* %182, align 1, !tbaa !9
  %183 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %184 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 0
  %185 = load i64, i64* %184, align 8, !tbaa !46
  %186 = add i64 %185, -1
  store i64 %186, i64* %184, align 8, !tbaa !46
  %187 = icmp eq i64 %185, 0
  br i1 %187, label %194, label %188

; <label>:188:                                    ; preds = %177
  %189 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 1
  %190 = load i8*, i8** %189, align 8, !tbaa !48
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %189, align 8, !tbaa !48
  %192 = load i8, i8* %190, align 1, !tbaa !9
  %193 = zext i8 %192 to i32
  br label %196

; <label>:194:                                    ; preds = %177
  %195 = tail call i32 @luaZ_fill(%struct.Zio* %183) #5
  br label %196

; <label>:196:                                    ; preds = %194, %188
  %197 = phi i32 [ %193, %188 ], [ %195, %194 ]
  store i32 %197, i32* %5, align 8, !tbaa !34
  br label %198

; <label>:198:                                    ; preds = %108, %153, %196
  %199 = phi i32 [ %197, %196 ], [ %154, %153 ], [ %104, %108 ]
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1, !tbaa !9
  %204 = and i8 %203, 16
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %247, label %206

; <label>:206:                                    ; preds = %198
  %207 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %208 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %207, i64 0, i32 1
  %209 = load i64, i64* %208, align 8, !tbaa !17
  %210 = add i64 %209, 1
  %211 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %207, i64 0, i32 2
  %212 = load i64, i64* %211, align 8, !tbaa !20
  %213 = icmp ugt i64 %210, %212
  br i1 %213, label %217, label %214

; <label>:214:                                    ; preds = %206
  %215 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %207, i64 0, i32 0
  %216 = load i8*, i8** %215, align 8, !tbaa !21
  br label %228

; <label>:217:                                    ; preds = %206
  %218 = icmp ugt i64 %212, 4611686018427387902
  br i1 %218, label %219, label %220

; <label>:219:                                    ; preds = %217
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:220:                                    ; preds = %217
  %221 = shl i64 %212, 1
  %222 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %223 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %207, i64 0, i32 0
  %224 = load i8*, i8** %223, align 8, !tbaa !21
  %225 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %222, i8* %224, i64 %212, i64 %221) #5
  store i8* %225, i8** %223, align 8, !tbaa !21
  store i64 %221, i64* %211, align 8, !tbaa !20
  %226 = load i64, i64* %208, align 8, !tbaa !17
  %227 = add i64 %226, 1
  br label %228

; <label>:228:                                    ; preds = %214, %220
  %229 = phi i64 [ %210, %214 ], [ %227, %220 ]
  %230 = phi i64 [ %209, %214 ], [ %226, %220 ]
  %231 = phi i8* [ %216, %214 ], [ %225, %220 ]
  %232 = trunc i32 %199 to i8
  store i64 %229, i64* %208, align 8, !tbaa !17
  %233 = getelementptr inbounds i8, i8* %231, i64 %230
  store i8 %232, i8* %233, align 1, !tbaa !9
  %234 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %235 = getelementptr inbounds %struct.Zio, %struct.Zio* %234, i64 0, i32 0
  %236 = load i64, i64* %235, align 8, !tbaa !46
  %237 = add i64 %236, -1
  store i64 %237, i64* %235, align 8, !tbaa !46
  %238 = icmp eq i64 %236, 0
  br i1 %238, label %245, label %239

; <label>:239:                                    ; preds = %228
  %240 = getelementptr inbounds %struct.Zio, %struct.Zio* %234, i64 0, i32 1
  %241 = load i8*, i8** %240, align 8, !tbaa !48
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8* %242, i8** %240, align 8, !tbaa !48
  %243 = load i8, i8* %241, align 1, !tbaa !9
  %244 = zext i8 %243 to i32
  br label %289

; <label>:245:                                    ; preds = %228
  %246 = tail call i32 @luaZ_fill(%struct.Zio* %234) #5
  br label %289

; <label>:247:                                    ; preds = %198
  %248 = icmp eq i32 %199, 46
  br i1 %248, label %249, label %291

; <label>:249:                                    ; preds = %247
  %250 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %251 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %250, i64 0, i32 1
  %252 = load i64, i64* %251, align 8, !tbaa !17
  %253 = add i64 %252, 1
  %254 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %250, i64 0, i32 2
  %255 = load i64, i64* %254, align 8, !tbaa !20
  %256 = icmp ugt i64 %253, %255
  br i1 %256, label %260, label %257

; <label>:257:                                    ; preds = %249
  %258 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %250, i64 0, i32 0
  %259 = load i8*, i8** %258, align 8, !tbaa !21
  br label %271

; <label>:260:                                    ; preds = %249
  %261 = icmp ugt i64 %255, 4611686018427387902
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %260
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:263:                                    ; preds = %260
  %264 = shl i64 %255, 1
  %265 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %266 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %250, i64 0, i32 0
  %267 = load i8*, i8** %266, align 8, !tbaa !21
  %268 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %265, i8* %267, i64 %255, i64 %264) #5
  store i8* %268, i8** %266, align 8, !tbaa !21
  store i64 %264, i64* %254, align 8, !tbaa !20
  %269 = load i64, i64* %251, align 8, !tbaa !17
  %270 = add i64 %269, 1
  br label %271

; <label>:271:                                    ; preds = %257, %263
  %272 = phi i64 [ %253, %257 ], [ %270, %263 ]
  %273 = phi i64 [ %252, %257 ], [ %269, %263 ]
  %274 = phi i8* [ %259, %257 ], [ %268, %263 ]
  store i64 %272, i64* %251, align 8, !tbaa !17
  %275 = getelementptr inbounds i8, i8* %274, i64 %273
  store i8 46, i8* %275, align 1, !tbaa !9
  %276 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %277 = getelementptr inbounds %struct.Zio, %struct.Zio* %276, i64 0, i32 0
  %278 = load i64, i64* %277, align 8, !tbaa !46
  %279 = add i64 %278, -1
  store i64 %279, i64* %277, align 8, !tbaa !46
  %280 = icmp eq i64 %278, 0
  br i1 %280, label %287, label %281

; <label>:281:                                    ; preds = %271
  %282 = getelementptr inbounds %struct.Zio, %struct.Zio* %276, i64 0, i32 1
  %283 = load i8*, i8** %282, align 8, !tbaa !48
  %284 = getelementptr inbounds i8, i8* %283, i64 1
  store i8* %284, i8** %282, align 8, !tbaa !48
  %285 = load i8, i8* %283, align 1, !tbaa !9
  %286 = zext i8 %285 to i32
  br label %289

; <label>:287:                                    ; preds = %271
  %288 = tail call i32 @luaZ_fill(%struct.Zio* %276) #5
  br label %289

; <label>:289:                                    ; preds = %281, %287, %239, %245
  %290 = phi i32 [ %244, %239 ], [ %246, %245 ], [ %286, %281 ], [ %288, %287 ]
  store i32 %290, i32* %5, align 8, !tbaa !34
  br label %103

; <label>:291:                                    ; preds = %247
  %292 = and i8 %203, 3
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %337, label %294

; <label>:294:                                    ; preds = %291
  %295 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %296 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %295, i64 0, i32 1
  %297 = load i64, i64* %296, align 8, !tbaa !17
  %298 = add i64 %297, 1
  %299 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %295, i64 0, i32 2
  %300 = load i64, i64* %299, align 8, !tbaa !20
  %301 = icmp ugt i64 %298, %300
  br i1 %301, label %305, label %302

; <label>:302:                                    ; preds = %294
  %303 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %295, i64 0, i32 0
  %304 = load i8*, i8** %303, align 8, !tbaa !21
  br label %316

; <label>:305:                                    ; preds = %294
  %306 = icmp ugt i64 %300, 4611686018427387902
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %305
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:308:                                    ; preds = %305
  %309 = shl i64 %300, 1
  %310 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %311 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %295, i64 0, i32 0
  %312 = load i8*, i8** %311, align 8, !tbaa !21
  %313 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %310, i8* %312, i64 %300, i64 %309) #5
  store i8* %313, i8** %311, align 8, !tbaa !21
  store i64 %309, i64* %299, align 8, !tbaa !20
  %314 = load i64, i64* %296, align 8, !tbaa !17
  %315 = add i64 %314, 1
  br label %316

; <label>:316:                                    ; preds = %302, %308
  %317 = phi i64 [ %298, %302 ], [ %315, %308 ]
  %318 = phi i64 [ %297, %302 ], [ %314, %308 ]
  %319 = phi i8* [ %304, %302 ], [ %313, %308 ]
  %320 = trunc i32 %199 to i8
  store i64 %317, i64* %296, align 8, !tbaa !17
  %321 = getelementptr inbounds i8, i8* %319, i64 %318
  store i8 %320, i8* %321, align 1, !tbaa !9
  %322 = load %struct.Zio*, %struct.Zio** %36, align 8, !tbaa !36
  %323 = getelementptr inbounds %struct.Zio, %struct.Zio* %322, i64 0, i32 0
  %324 = load i64, i64* %323, align 8, !tbaa !46
  %325 = add i64 %324, -1
  store i64 %325, i64* %323, align 8, !tbaa !46
  %326 = icmp eq i64 %324, 0
  br i1 %326, label %333, label %327

; <label>:327:                                    ; preds = %316
  %328 = getelementptr inbounds %struct.Zio, %struct.Zio* %322, i64 0, i32 1
  %329 = load i8*, i8** %328, align 8, !tbaa !48
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  store i8* %330, i8** %328, align 8, !tbaa !48
  %331 = load i8, i8* %329, align 1, !tbaa !9
  %332 = zext i8 %331 to i32
  br label %335

; <label>:333:                                    ; preds = %316
  %334 = tail call i32 @luaZ_fill(%struct.Zio* %322) #5
  br label %335

; <label>:335:                                    ; preds = %333, %327
  %336 = phi i32 [ %332, %327 ], [ %334, %333 ]
  store i32 %336, i32* %5, align 8, !tbaa !34
  br label %337

; <label>:337:                                    ; preds = %291, %335
  %338 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %339 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %338, i64 0, i32 1
  %340 = load i64, i64* %339, align 8, !tbaa !17
  %341 = add i64 %340, 1
  %342 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %338, i64 0, i32 2
  %343 = load i64, i64* %342, align 8, !tbaa !20
  %344 = icmp ugt i64 %341, %343
  br i1 %344, label %348, label %345

; <label>:345:                                    ; preds = %337
  %346 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %338, i64 0, i32 0
  %347 = load i8*, i8** %346, align 8, !tbaa !21
  br label %359

; <label>:348:                                    ; preds = %337
  %349 = icmp ugt i64 %343, 4611686018427387902
  br i1 %349, label %350, label %351

; <label>:350:                                    ; preds = %348
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:351:                                    ; preds = %348
  %352 = shl i64 %343, 1
  %353 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !10
  %354 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %338, i64 0, i32 0
  %355 = load i8*, i8** %354, align 8, !tbaa !21
  %356 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %353, i8* %355, i64 %343, i64 %352) #5
  store i8* %356, i8** %354, align 8, !tbaa !21
  store i64 %352, i64* %342, align 8, !tbaa !20
  %357 = load i64, i64* %339, align 8, !tbaa !17
  %358 = add i64 %357, 1
  br label %359

; <label>:359:                                    ; preds = %345, %351
  %360 = phi i64 [ %341, %345 ], [ %358, %351 ]
  %361 = phi i64 [ %340, %345 ], [ %357, %351 ]
  %362 = phi i8* [ %347, %345 ], [ %356, %351 ]
  store i64 %360, i64* %339, align 8, !tbaa !17
  %363 = getelementptr inbounds i8, i8* %362, i64 %361
  store i8 0, i8* %363, align 1, !tbaa !9
  %364 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8, !tbaa !16
  %365 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %364, i64 0, i32 0
  %366 = load i8*, i8** %365, align 8, !tbaa !21
  %367 = call i64 @luaO_str2num(i8* %366, %struct.TValue* nonnull %3) #5
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

; <label>:369:                                    ; preds = %359
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 290) #6
  unreachable

; <label>:370:                                    ; preds = %359
  %371 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %372 = load i8, i8* %371, align 8, !tbaa !27
  %373 = icmp eq i8 %372, 35
  %374 = bitcast %struct.TValue* %3 to i64*
  %375 = load i64, i64* %374, align 8, !tbaa !9
  %376 = bitcast %union.SemInfo* %1 to i64*
  store i64 %375, i64* %376, align 8, !tbaa !9
  %377 = select i1 %373, i32 291, i32 290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5
  ret i32 %377
}

declare hidden i32 @luaO_hexavalue(i32) local_unnamed_addr #2

declare hidden i32 @luaO_utf8esc(i8*, i64) local_unnamed_addr #2

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !4, i64 10}
!7 = !{!"TString", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !8, i64 12, !4, i64 16}
!8 = !{!"int", !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !3, i64 56}
!11 = !{!"LexState", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 32, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104}
!12 = !{!"Token", !8, i64 0, !4, i64 8}
!13 = !{!11, !8, i64 16}
!14 = !{!11, !3, i64 96}
!15 = !{!11, !8, i64 4}
!16 = !{!11, !3, i64 72}
!17 = !{!18, !19, i64 8}
!18 = !{!"Mbuffer", !3, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"long", !4, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!18, !3, i64 0}
!22 = !{!23, !3, i64 16}
!23 = !{!"lua_State", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !24, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !25, i64 96, !3, i64 160, !19, i64 168, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192}
!24 = !{!"short", !4, i64 0}
!25 = !{!"CallInfo", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !4, i64 56, !24, i64 60, !24, i64 62}
!26 = !{!7, !4, i64 8}
!27 = !{!28, !4, i64 8}
!28 = !{!"TValue", !4, i64 0, !4, i64 8}
!29 = !{!11, !3, i64 80}
!30 = !{!23, !3, i64 24}
!31 = !{!32, !19, i64 24}
!32 = !{!"global_State", !3, i64 0, !3, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !33, i64 48, !28, i64 64, !28, i64 80, !8, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !3, i64 1392, !3, i64 1400}
!33 = !{!"stringtable", !3, i64 0, !8, i64 8, !8, i64 12}
!34 = !{!11, !8, i64 0}
!35 = !{!11, !8, i64 32}
!36 = !{!11, !3, i64 64}
!37 = !{!11, !3, i64 48}
!38 = !{!11, !8, i64 8}
!39 = !{!11, !3, i64 104}
!40 = !{i64 0, i64 4, !41, i64 8, i64 8, !42, i64 8, i64 8, !44, i64 8, i64 8, !2}
!41 = !{!8, !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !4, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"long long", !4, i64 0}
!46 = !{!47, !19, i64 0}
!47 = !{!"Zio", !19, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!48 = !{!47, !3, i64 8}
