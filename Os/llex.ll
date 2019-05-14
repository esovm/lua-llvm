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
@.str.56 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaX_syntaxerror(%struct.LexState* nocapture readonly, i8*) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !13
  tail call fastcc void @lexerror(%struct.LexState* %0, i8* %1, i32 %4) #6
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @lexerror(%struct.LexState* nocapture readonly, i8*, i32) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %7 = load %struct.TString*, %struct.TString** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !15
  %10 = tail call i8* @luaG_addinfo(%struct.lua_State* %5, i8* %1, %struct.TString* %7, i32 %9) #5
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %28, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %14 = add i32 %2, -290
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %12
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #5
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %19 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !17
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %21) #5
  br label %25

; <label>:23:                                     ; preds = %12
  %24 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #5
  br label %25

; <label>:25:                                     ; preds = %16, %23
  %26 = phi i8* [ %22, %16 ], [ %24, %23 ]
  %27 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %10, i8* %26) #5
  br label %28

; <label>:28:                                     ; preds = %3, %25
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  tail call void @luaD_throw(%struct.lua_State* %29, i32 3) #7
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define hidden %struct.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %6 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #5
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %7, align 8, !tbaa !20
  %10 = bitcast %union.StackValue* %8 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %6, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !24
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 0, i32 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %16 = load %struct.Table*, %struct.Table** %15, align 8, !tbaa !27
  %17 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !20
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 -1, i32 0
  %19 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %16, %struct.TValue* nonnull %18) #5
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !25
  %22 = and i8 %21, 15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.TValue* %19 to i32*
  store i32 1, i32* %25, align 8, !tbaa !9
  store i8 1, i8* %20, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !29
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
  %38 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !20
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i64 -1
  store %union.StackValue* %39, %union.StackValue** %7, align 8, !tbaa !20
  ret %struct.TString* %37
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState* nocapture, %struct.Zio*, %struct.TString*, i32) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 3, i32 0
  store i32 0, i32* %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 6
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 0
  store i32 %4, i32* %8, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 4, i32 0
  store i32 289, i32* %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 7
  store %struct.Zio* %2, %struct.Zio** %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 5
  store %struct.FuncState* null, %struct.FuncState** %11, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 1
  store i32 1, i32* %12, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 2
  store i32 1, i32* %13, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 11
  store %struct.TString* %3, %struct.TString** %14, align 8, !tbaa !14
  %15 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 12
  store %struct.TString* %15, %struct.TString** %16, align 8, !tbaa !37
  %17 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 8
  %19 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !38
  %24 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %17, i8* %21, i64 %23, i64 32) #5
  %25 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 0
  store i8* %24, i8** %26, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 2
  store i64 32, i64* %27, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !15
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2
  store i32 %3, i32* %4, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !33
  %8 = icmp eq i32 %7, 289
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3
  %11 = bitcast %struct.Token* %10 to i8*
  %12 = bitcast %struct.Token* %5 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %11, i8* nonnull %12, i64 16, i32 8, i1 false), !tbaa.struct !39
  store i32 289, i32* %6, align 8, !tbaa !33
  br label %17

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %15 = tail call fastcc i32 @llex(%struct.LexState* nonnull %0, %union.SemInfo* nonnull %14) #8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 %15, i32* %16, align 8, !tbaa !13
  br label %17

; <label>:17:                                     ; preds = %13, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @llex(%struct.LexState*, %union.SemInfo*) unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %5 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 1
  store i64 0, i64* %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %9

; <label>:9:                                      ; preds = %74, %2
  %10 = load i32, i32* %7, align 8, !tbaa !32
  switch i32 %10, label %571 [
    i32 10, label %11
    i32 13, label %11
    i32 32, label %12
    i32 12, label %12
    i32 9, label %12
    i32 11, label %12
    i32 45, label %28
    i32 91, label %93
    i32 61, label %100
    i32 60, label %119
    i32 62, label %141
    i32 47, label %163
    i32 126, label %182
    i32 58, label %201
    i32 34, label %220
    i32 39, label %220
    i32 46, label %537
    i32 48, label %569
    i32 49, label %569
    i32 50, label %569
    i32 51, label %569
    i32 52, label %569
    i32 53, label %569
    i32 54, label %569
    i32 55, label %569
    i32 56, label %569
    i32 57, label %569
    i32 -1, label %636
  ]

; <label>:11:                                     ; preds = %9, %9
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #8
  br label %74

; <label>:12:                                     ; preds = %9, %9, %9, %9
  %13 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %27, i32* %7, align 8, !tbaa !32
  br label %74

; <label>:28:                                     ; preds = %9
  %29 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %43, i32* %7, align 8, !tbaa !32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %636

; <label>:45:                                     ; preds = %42
  %46 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %60, i32* %7, align 8, !tbaa !32
  %61 = icmp eq i32 %60, 91
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %69, %59
  %63 = phi i32 [ %60, %59 ], [ %70, %69 ]
  br label %75

; <label>:64:                                     ; preds = %59
  %65 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0) #8
  %66 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %66, i64 0, i32 1
  store i64 0, i64* %67, align 8, !tbaa !45
  %68 = icmp ugt i64 %65, 1
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %7, align 8, !tbaa !32
  br label %62

; <label>:71:                                     ; preds = %64
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i64 %65) #8
  %72 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %72, i64 0, i32 1
  store i64 0, i64* %73, align 8, !tbaa !45
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
  %78 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %92, i32* %7, align 8, !tbaa !32
  br label %75

; <label>:93:                                     ; preds = %9
  %94 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0) #8
  %95 = icmp ugt i64 %94, 1
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %93
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i64 %94) #8
  br label %636

; <label>:97:                                     ; preds = %93
  %98 = icmp eq i64 %94, 0
  br i1 %98, label %99, label %636

; <label>:99:                                     ; preds = %97
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 293) #6
  unreachable

; <label>:100:                                    ; preds = %9
  %101 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %115, i32* %7, align 8, !tbaa !32
  %116 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61) #8
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 61, i32 282
  br label %636

; <label>:119:                                    ; preds = %9
  %120 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.Zio, %struct.Zio* %120, i64 0, i32 0
  %122 = load i64, i64* %121, align 8, !tbaa !46
  %123 = add i64 %122, -1
  store i64 %123, i64* %121, align 8, !tbaa !46
  %124 = icmp eq i64 %122, 0
  br i1 %124, label %131, label %125

; <label>:125:                                    ; preds = %119
  %126 = getelementptr inbounds %struct.Zio, %struct.Zio* %120, i64 0, i32 1
  %127 = load i8*, i8** %126, align 8, !tbaa !48
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %126, align 8, !tbaa !48
  %129 = load i8, i8* %127, align 1, !tbaa !9
  %130 = zext i8 %129 to i32
  br label %133

; <label>:131:                                    ; preds = %119
  %132 = tail call i32 @luaZ_fill(%struct.Zio* %120) #5
  br label %133

; <label>:133:                                    ; preds = %131, %125
  %134 = phi i32 [ %130, %125 ], [ %132, %131 ]
  store i32 %134, i32* %7, align 8, !tbaa !32
  %135 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61) #8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %636

; <label>:137:                                    ; preds = %133
  %138 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 60) #8
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 60, i32 286
  br label %636

; <label>:141:                                    ; preds = %9
  %142 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %143 = getelementptr inbounds %struct.Zio, %struct.Zio* %142, i64 0, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !46
  %145 = add i64 %144, -1
  store i64 %145, i64* %143, align 8, !tbaa !46
  %146 = icmp eq i64 %144, 0
  br i1 %146, label %153, label %147

; <label>:147:                                    ; preds = %141
  %148 = getelementptr inbounds %struct.Zio, %struct.Zio* %142, i64 0, i32 1
  %149 = load i8*, i8** %148, align 8, !tbaa !48
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %148, align 8, !tbaa !48
  %151 = load i8, i8* %149, align 1, !tbaa !9
  %152 = zext i8 %151 to i32
  br label %155

; <label>:153:                                    ; preds = %141
  %154 = tail call i32 @luaZ_fill(%struct.Zio* %142) #5
  br label %155

; <label>:155:                                    ; preds = %153, %147
  %156 = phi i32 [ %152, %147 ], [ %154, %153 ]
  store i32 %156, i32* %7, align 8, !tbaa !32
  %157 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %636

; <label>:159:                                    ; preds = %155
  %160 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 62) #8
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 62, i32 287
  br label %636

; <label>:163:                                    ; preds = %9
  %164 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.Zio, %struct.Zio* %164, i64 0, i32 0
  %166 = load i64, i64* %165, align 8, !tbaa !46
  %167 = add i64 %166, -1
  store i64 %167, i64* %165, align 8, !tbaa !46
  %168 = icmp eq i64 %166, 0
  br i1 %168, label %175, label %169

; <label>:169:                                    ; preds = %163
  %170 = getelementptr inbounds %struct.Zio, %struct.Zio* %164, i64 0, i32 1
  %171 = load i8*, i8** %170, align 8, !tbaa !48
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %170, align 8, !tbaa !48
  %173 = load i8, i8* %171, align 1, !tbaa !9
  %174 = zext i8 %173 to i32
  br label %177

; <label>:175:                                    ; preds = %163
  %176 = tail call i32 @luaZ_fill(%struct.Zio* %164) #5
  br label %177

; <label>:177:                                    ; preds = %175, %169
  %178 = phi i32 [ %174, %169 ], [ %176, %175 ]
  store i32 %178, i32* %7, align 8, !tbaa !32
  %179 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 47) #8
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 47, i32 279
  br label %636

; <label>:182:                                    ; preds = %9
  %183 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %184 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 0
  %185 = load i64, i64* %184, align 8, !tbaa !46
  %186 = add i64 %185, -1
  store i64 %186, i64* %184, align 8, !tbaa !46
  %187 = icmp eq i64 %185, 0
  br i1 %187, label %194, label %188

; <label>:188:                                    ; preds = %182
  %189 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 1
  %190 = load i8*, i8** %189, align 8, !tbaa !48
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %189, align 8, !tbaa !48
  %192 = load i8, i8* %190, align 1, !tbaa !9
  %193 = zext i8 %192 to i32
  br label %196

; <label>:194:                                    ; preds = %182
  %195 = tail call i32 @luaZ_fill(%struct.Zio* %183) #5
  br label %196

; <label>:196:                                    ; preds = %194, %188
  %197 = phi i32 [ %193, %188 ], [ %195, %194 ]
  store i32 %197, i32* %7, align 8, !tbaa !32
  %198 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61) #8
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 126, i32 285
  br label %636

; <label>:201:                                    ; preds = %9
  %202 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %203 = getelementptr inbounds %struct.Zio, %struct.Zio* %202, i64 0, i32 0
  %204 = load i64, i64* %203, align 8, !tbaa !46
  %205 = add i64 %204, -1
  store i64 %205, i64* %203, align 8, !tbaa !46
  %206 = icmp eq i64 %204, 0
  br i1 %206, label %213, label %207

; <label>:207:                                    ; preds = %201
  %208 = getelementptr inbounds %struct.Zio, %struct.Zio* %202, i64 0, i32 1
  %209 = load i8*, i8** %208, align 8, !tbaa !48
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  store i8* %210, i8** %208, align 8, !tbaa !48
  %211 = load i8, i8* %209, align 1, !tbaa !9
  %212 = zext i8 %211 to i32
  br label %215

; <label>:213:                                    ; preds = %201
  %214 = tail call i32 @luaZ_fill(%struct.Zio* %202) #5
  br label %215

; <label>:215:                                    ; preds = %213, %207
  %216 = phi i32 [ %212, %207 ], [ %214, %213 ]
  store i32 %216, i32* %7, align 8, !tbaa !32
  %217 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 58) #8
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i32 58, i32 288
  br label %636

; <label>:220:                                    ; preds = %9, %9
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %10) #5
  %221 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %222 = getelementptr inbounds %struct.Zio, %struct.Zio* %221, i64 0, i32 0
  %223 = load i64, i64* %222, align 8, !tbaa !46
  %224 = add i64 %223, -1
  store i64 %224, i64* %222, align 8, !tbaa !46
  %225 = icmp eq i64 %223, 0
  br i1 %225, label %232, label %226

; <label>:226:                                    ; preds = %220
  %227 = getelementptr inbounds %struct.Zio, %struct.Zio* %221, i64 0, i32 1
  %228 = load i8*, i8** %227, align 8, !tbaa !48
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  store i8* %229, i8** %227, align 8, !tbaa !48
  %230 = load i8, i8* %228, align 1, !tbaa !9
  %231 = zext i8 %230 to i32
  br label %234

; <label>:232:                                    ; preds = %220
  %233 = tail call i32 @luaZ_fill(%struct.Zio* %221) #5
  br label %234

; <label>:234:                                    ; preds = %232, %226
  %235 = phi i32 [ %231, %226 ], [ %233, %232 ]
  store i32 %235, i32* %7, align 8, !tbaa !32
  %236 = icmp eq i32 %235, %10
  br i1 %236, label %512, label %237

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %239

; <label>:239:                                    ; preds = %509, %237
  %240 = phi i32 [ %235, %237 ], [ %510, %509 ]
  switch i32 %240, label %493 [
    i32 -1, label %241
    i32 10, label %242
    i32 13, label %242
    i32 92, label %243
  ]

; <label>:241:                                    ; preds = %239
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 289) #7
  unreachable

; <label>:242:                                    ; preds = %239, %239
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:243:                                    ; preds = %239
  call fastcc void @save(%struct.LexState* nonnull %0, i32 92) #5
  %244 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %245 = getelementptr inbounds %struct.Zio, %struct.Zio* %244, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !46
  %247 = add i64 %246, -1
  store i64 %247, i64* %245, align 8, !tbaa !46
  %248 = icmp eq i64 %246, 0
  br i1 %248, label %255, label %249

; <label>:249:                                    ; preds = %243
  %250 = getelementptr inbounds %struct.Zio, %struct.Zio* %244, i64 0, i32 1
  %251 = load i8*, i8** %250, align 8, !tbaa !48
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  store i8* %252, i8** %250, align 8, !tbaa !48
  %253 = load i8, i8* %251, align 1, !tbaa !9
  %254 = zext i8 %253 to i32
  br label %257

; <label>:255:                                    ; preds = %243
  %256 = call i32 @luaZ_fill(%struct.Zio* %244) #5
  br label %257

; <label>:257:                                    ; preds = %255, %249
  %258 = phi i32 [ %254, %249 ], [ %256, %255 ]
  store i32 %258, i32* %7, align 8, !tbaa !32
  switch i32 %258, label %421 [
    i32 97, label %470
    i32 98, label %259
    i32 102, label %260
    i32 110, label %261
    i32 114, label %262
    i32 116, label %263
    i32 118, label %264
    i32 120, label %265
    i32 117, label %274
    i32 10, label %364
    i32 13, label %364
    i32 92, label %365
    i32 34, label %365
    i32 39, label %365
    i32 -1, label %509
    i32 122, label %366
  ]

; <label>:259:                                    ; preds = %257
  br label %470

; <label>:260:                                    ; preds = %257
  br label %470

; <label>:261:                                    ; preds = %257
  br label %470

; <label>:262:                                    ; preds = %257
  br label %470

; <label>:263:                                    ; preds = %257
  br label %470

; <label>:264:                                    ; preds = %257
  br label %470

; <label>:265:                                    ; preds = %257
  %266 = call fastcc i32 @gethexa(%struct.LexState* nonnull %0) #5
  %267 = shl i32 %266, 4
  %268 = call fastcc i32 @gethexa(%struct.LexState* nonnull %0) #5
  %269 = add nsw i32 %267, %268
  %270 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %271 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %270, i64 0, i32 1
  %272 = load i64, i64* %271, align 8, !tbaa !45
  %273 = add i64 %272, -2
  store i64 %273, i64* %271, align 8, !tbaa !45
  br label %470

; <label>:274:                                    ; preds = %257
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %238) #9
  call fastcc void @save(%struct.LexState* nonnull %0, i32 117) #5
  %275 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %276 = getelementptr inbounds %struct.Zio, %struct.Zio* %275, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !46
  %278 = add i64 %277, -1
  store i64 %278, i64* %276, align 8, !tbaa !46
  %279 = icmp eq i64 %277, 0
  br i1 %279, label %286, label %280

; <label>:280:                                    ; preds = %274
  %281 = getelementptr inbounds %struct.Zio, %struct.Zio* %275, i64 0, i32 1
  %282 = load i8*, i8** %281, align 8, !tbaa !48
  %283 = getelementptr inbounds i8, i8* %282, i64 1
  store i8* %283, i8** %281, align 8, !tbaa !48
  %284 = load i8, i8* %282, align 1, !tbaa !9
  %285 = zext i8 %284 to i32
  br label %288

; <label>:286:                                    ; preds = %274
  %287 = call i32 @luaZ_fill(%struct.Zio* %275) #5
  br label %288

; <label>:288:                                    ; preds = %286, %280
  %289 = phi i32 [ %285, %280 ], [ %287, %286 ]
  store i32 %289, i32* %7, align 8, !tbaa !32
  %290 = icmp eq i32 %289, 123
  %291 = zext i1 %290 to i32
  call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #5
  %292 = call fastcc i32 @gethexa(%struct.LexState* nonnull %0) #5
  %293 = sext i32 %292 to i64
  br label %294

; <label>:294:                                    ; preds = %319, %288
  %295 = phi i64 [ %293, %288 ], [ %327, %319 ]
  %296 = phi i32 [ 4, %288 ], [ %320, %319 ]
  %297 = load i32, i32* %7, align 8, !tbaa !32
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %297) #5
  %298 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %299 = getelementptr inbounds %struct.Zio, %struct.Zio* %298, i64 0, i32 0
  %300 = load i64, i64* %299, align 8, !tbaa !46
  %301 = add i64 %300, -1
  store i64 %301, i64* %299, align 8, !tbaa !46
  %302 = icmp eq i64 %300, 0
  br i1 %302, label %309, label %303

; <label>:303:                                    ; preds = %294
  %304 = getelementptr inbounds %struct.Zio, %struct.Zio* %298, i64 0, i32 1
  %305 = load i8*, i8** %304, align 8, !tbaa !48
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  store i8* %306, i8** %304, align 8, !tbaa !48
  %307 = load i8, i8* %305, align 1, !tbaa !9
  %308 = zext i8 %307 to i32
  br label %311

; <label>:309:                                    ; preds = %294
  %310 = call i32 @luaZ_fill(%struct.Zio* %298) #5
  br label %311

; <label>:311:                                    ; preds = %309, %303
  %312 = phi i32 [ %308, %303 ], [ %310, %309 ]
  store i32 %312, i32* %7, align 8, !tbaa !32
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %314
  %316 = load i8, i8* %315, align 1, !tbaa !9
  %317 = and i8 %316, 16
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %328, label %319

; <label>:319:                                    ; preds = %311
  %320 = add nuw nsw i32 %296, 1
  %321 = icmp ult i64 %295, 134217728
  %322 = zext i1 %321 to i32
  call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0)) #5
  %323 = shl i64 %295, 4
  %324 = load i32, i32* %7, align 8, !tbaa !32
  %325 = call i32 @luaO_hexavalue(i32 %324) #5
  %326 = sext i32 %325 to i64
  %327 = add i64 %323, %326
  br label %294

; <label>:328:                                    ; preds = %311
  %329 = icmp eq i32 %312, 125
  %330 = zext i1 %329 to i32
  call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %330, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)) #5
  %331 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %332 = getelementptr inbounds %struct.Zio, %struct.Zio* %331, i64 0, i32 0
  %333 = load i64, i64* %332, align 8, !tbaa !46
  %334 = add i64 %333, -1
  store i64 %334, i64* %332, align 8, !tbaa !46
  %335 = icmp eq i64 %333, 0
  br i1 %335, label %342, label %336

; <label>:336:                                    ; preds = %328
  %337 = getelementptr inbounds %struct.Zio, %struct.Zio* %331, i64 0, i32 1
  %338 = load i8*, i8** %337, align 8, !tbaa !48
  %339 = getelementptr inbounds i8, i8* %338, i64 1
  store i8* %339, i8** %337, align 8, !tbaa !48
  %340 = load i8, i8* %338, align 1, !tbaa !9
  %341 = zext i8 %340 to i32
  br label %344

; <label>:342:                                    ; preds = %328
  %343 = call i32 @luaZ_fill(%struct.Zio* %331) #5
  br label %344

; <label>:344:                                    ; preds = %342, %336
  %345 = phi i32 [ %341, %336 ], [ %343, %342 ]
  store i32 %345, i32* %7, align 8, !tbaa !32
  %346 = zext i32 %296 to i64
  %347 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %348 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %347, i64 0, i32 1
  %349 = load i64, i64* %348, align 8, !tbaa !45
  %350 = sub i64 %349, %346
  store i64 %350, i64* %348, align 8, !tbaa !45
  %351 = call i32 @luaO_utf8esc(i8* nonnull %238, i64 %295) #5
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %363

; <label>:353:                                    ; preds = %344
  %354 = sext i32 %351 to i64
  br label %355

; <label>:355:                                    ; preds = %355, %353
  %356 = phi i64 [ %354, %353 ], [ %361, %355 ]
  %357 = sub nsw i64 8, %356
  %358 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %357
  %359 = load i8, i8* %358, align 1, !tbaa !9
  %360 = sext i8 %359 to i32
  call fastcc void @save(%struct.LexState* %0, i32 %360) #5
  %361 = add nsw i64 %356, -1
  %362 = icmp sgt i64 %356, 1
  br i1 %362, label %355, label %363

; <label>:363:                                    ; preds = %355, %344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %238) #9
  br label %509

; <label>:364:                                    ; preds = %257, %257
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #5
  br label %487

; <label>:365:                                    ; preds = %257, %257, %257
  br label %470

; <label>:366:                                    ; preds = %257
  %367 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %368 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %367, i64 0, i32 1
  %369 = load i64, i64* %368, align 8, !tbaa !45
  %370 = add i64 %369, -1
  store i64 %370, i64* %368, align 8, !tbaa !45
  %371 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %372 = getelementptr inbounds %struct.Zio, %struct.Zio* %371, i64 0, i32 0
  %373 = load i64, i64* %372, align 8, !tbaa !46
  %374 = add i64 %373, -1
  store i64 %374, i64* %372, align 8, !tbaa !46
  %375 = icmp eq i64 %373, 0
  br i1 %375, label %382, label %376

; <label>:376:                                    ; preds = %366
  %377 = getelementptr inbounds %struct.Zio, %struct.Zio* %371, i64 0, i32 1
  %378 = load i8*, i8** %377, align 8, !tbaa !48
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  store i8* %379, i8** %377, align 8, !tbaa !48
  %380 = load i8, i8* %378, align 1, !tbaa !9
  %381 = zext i8 %380 to i32
  br label %384

; <label>:382:                                    ; preds = %366
  %383 = call i32 @luaZ_fill(%struct.Zio* %371) #5
  br label %384

; <label>:384:                                    ; preds = %382, %376
  %385 = phi i32 [ %381, %376 ], [ %383, %382 ]
  store i32 %385, i32* %7, align 8, !tbaa !32
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %387
  %389 = load i8, i8* %388, align 1, !tbaa !9
  %390 = and i8 %389, 8
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %509, label %392

; <label>:392:                                    ; preds = %384
  br label %393

; <label>:393:                                    ; preds = %392, %413
  %394 = phi i32 [ %414, %413 ], [ %385, %392 ]
  switch i32 %394, label %397 [
    i32 10, label %395
    i32 13, label %395
  ]

; <label>:395:                                    ; preds = %393, %393
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #5
  %396 = load i32, i32* %7, align 8, !tbaa !32
  br label %413

; <label>:397:                                    ; preds = %393
  %398 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %399 = getelementptr inbounds %struct.Zio, %struct.Zio* %398, i64 0, i32 0
  %400 = load i64, i64* %399, align 8, !tbaa !46
  %401 = add i64 %400, -1
  store i64 %401, i64* %399, align 8, !tbaa !46
  %402 = icmp eq i64 %400, 0
  br i1 %402, label %409, label %403

; <label>:403:                                    ; preds = %397
  %404 = getelementptr inbounds %struct.Zio, %struct.Zio* %398, i64 0, i32 1
  %405 = load i8*, i8** %404, align 8, !tbaa !48
  %406 = getelementptr inbounds i8, i8* %405, i64 1
  store i8* %406, i8** %404, align 8, !tbaa !48
  %407 = load i8, i8* %405, align 1, !tbaa !9
  %408 = zext i8 %407 to i32
  br label %411

; <label>:409:                                    ; preds = %397
  %410 = call i32 @luaZ_fill(%struct.Zio* %398) #5
  br label %411

; <label>:411:                                    ; preds = %409, %403
  %412 = phi i32 [ %408, %403 ], [ %410, %409 ]
  store i32 %412, i32* %7, align 8, !tbaa !32
  br label %413

; <label>:413:                                    ; preds = %411, %395
  %414 = phi i32 [ %412, %411 ], [ %396, %395 ]
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %416
  %418 = load i8, i8* %417, align 1, !tbaa !9
  %419 = and i8 %418, 8
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %509, label %393

; <label>:421:                                    ; preds = %257
  %422 = add nsw i32 %258, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %423
  %425 = load i8, i8* %424, align 1, !tbaa !9
  %426 = and i8 %425, 2
  %427 = zext i8 %426 to i32
  call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %427, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #5
  %428 = load i32, i32* %7, align 8, !tbaa !32
  br label %429

; <label>:429:                                    ; preds = %456, %421
  %430 = phi i32 [ %428, %421 ], [ %457, %456 ]
  %431 = phi i32 [ 0, %421 ], [ %442, %456 ]
  %432 = phi i32 [ 0, %421 ], [ %458, %456 ]
  %433 = add nsw i32 %430, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %434
  %436 = load i8, i8* %435, align 1, !tbaa !9
  %437 = and i8 %436, 2
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %460, label %439

; <label>:439:                                    ; preds = %429
  %440 = mul nsw i32 %431, 10
  %441 = add i32 %430, -48
  %442 = add i32 %441, %440
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %430) #5
  %443 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %444 = getelementptr inbounds %struct.Zio, %struct.Zio* %443, i64 0, i32 0
  %445 = load i64, i64* %444, align 8, !tbaa !46
  %446 = add i64 %445, -1
  store i64 %446, i64* %444, align 8, !tbaa !46
  %447 = icmp eq i64 %445, 0
  br i1 %447, label %454, label %448

; <label>:448:                                    ; preds = %439
  %449 = getelementptr inbounds %struct.Zio, %struct.Zio* %443, i64 0, i32 1
  %450 = load i8*, i8** %449, align 8, !tbaa !48
  %451 = getelementptr inbounds i8, i8* %450, i64 1
  store i8* %451, i8** %449, align 8, !tbaa !48
  %452 = load i8, i8* %450, align 1, !tbaa !9
  %453 = zext i8 %452 to i32
  br label %456

; <label>:454:                                    ; preds = %439
  %455 = call i32 @luaZ_fill(%struct.Zio* %443) #5
  br label %456

; <label>:456:                                    ; preds = %454, %448
  %457 = phi i32 [ %453, %448 ], [ %455, %454 ]
  store i32 %457, i32* %7, align 8, !tbaa !32
  %458 = add nuw nsw i32 %432, 1
  %459 = icmp ult i32 %458, 3
  br i1 %459, label %429, label %460

; <label>:460:                                    ; preds = %456, %429
  %461 = phi i32 [ %432, %429 ], [ 3, %456 ]
  %462 = phi i32 [ %431, %429 ], [ %442, %456 ]
  %463 = icmp slt i32 %462, 256
  %464 = zext i1 %463 to i32
  call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %464, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0)) #5
  %465 = zext i32 %461 to i64
  %466 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %467 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %466, i64 0, i32 1
  %468 = load i64, i64* %467, align 8, !tbaa !45
  %469 = sub i64 %468, %465
  store i64 %469, i64* %467, align 8, !tbaa !45
  br label %487

; <label>:470:                                    ; preds = %365, %265, %264, %263, %262, %261, %260, %259, %257
  %471 = phi i32 [ %258, %365 ], [ %269, %265 ], [ 11, %264 ], [ 9, %263 ], [ 13, %262 ], [ 10, %261 ], [ 12, %260 ], [ 8, %259 ], [ 7, %257 ]
  %472 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %473 = getelementptr inbounds %struct.Zio, %struct.Zio* %472, i64 0, i32 0
  %474 = load i64, i64* %473, align 8, !tbaa !46
  %475 = add i64 %474, -1
  store i64 %475, i64* %473, align 8, !tbaa !46
  %476 = icmp eq i64 %474, 0
  br i1 %476, label %483, label %477

; <label>:477:                                    ; preds = %470
  %478 = getelementptr inbounds %struct.Zio, %struct.Zio* %472, i64 0, i32 1
  %479 = load i8*, i8** %478, align 8, !tbaa !48
  %480 = getelementptr inbounds i8, i8* %479, i64 1
  store i8* %480, i8** %478, align 8, !tbaa !48
  %481 = load i8, i8* %479, align 1, !tbaa !9
  %482 = zext i8 %481 to i32
  br label %485

; <label>:483:                                    ; preds = %470
  %484 = call i32 @luaZ_fill(%struct.Zio* %472) #5
  br label %485

; <label>:485:                                    ; preds = %483, %477
  %486 = phi i32 [ %482, %477 ], [ %484, %483 ]
  store i32 %486, i32* %7, align 8, !tbaa !32
  br label %487

; <label>:487:                                    ; preds = %485, %460, %364
  %488 = phi i32 [ %462, %460 ], [ %471, %485 ], [ 10, %364 ]
  %489 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %490 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %489, i64 0, i32 1
  %491 = load i64, i64* %490, align 8, !tbaa !45
  %492 = add i64 %491, -1
  store i64 %492, i64* %490, align 8, !tbaa !45
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %488) #5
  br label %509

; <label>:493:                                    ; preds = %239
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %240) #5
  %494 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %495 = getelementptr inbounds %struct.Zio, %struct.Zio* %494, i64 0, i32 0
  %496 = load i64, i64* %495, align 8, !tbaa !46
  %497 = add i64 %496, -1
  store i64 %497, i64* %495, align 8, !tbaa !46
  %498 = icmp eq i64 %496, 0
  br i1 %498, label %505, label %499

; <label>:499:                                    ; preds = %493
  %500 = getelementptr inbounds %struct.Zio, %struct.Zio* %494, i64 0, i32 1
  %501 = load i8*, i8** %500, align 8, !tbaa !48
  %502 = getelementptr inbounds i8, i8* %501, i64 1
  store i8* %502, i8** %500, align 8, !tbaa !48
  %503 = load i8, i8* %501, align 1, !tbaa !9
  %504 = zext i8 %503 to i32
  br label %507

; <label>:505:                                    ; preds = %493
  %506 = call i32 @luaZ_fill(%struct.Zio* %494) #5
  br label %507

; <label>:507:                                    ; preds = %505, %499
  %508 = phi i32 [ %504, %499 ], [ %506, %505 ]
  store i32 %508, i32* %7, align 8, !tbaa !32
  br label %509

; <label>:509:                                    ; preds = %413, %507, %487, %384, %363, %257
  %510 = load i32, i32* %7, align 8, !tbaa !32
  %511 = icmp eq i32 %510, %10
  br i1 %511, label %512, label %239

; <label>:512:                                    ; preds = %509, %234
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %10) #5
  %513 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %514 = getelementptr inbounds %struct.Zio, %struct.Zio* %513, i64 0, i32 0
  %515 = load i64, i64* %514, align 8, !tbaa !46
  %516 = add i64 %515, -1
  store i64 %516, i64* %514, align 8, !tbaa !46
  %517 = icmp eq i64 %515, 0
  br i1 %517, label %524, label %518

; <label>:518:                                    ; preds = %512
  %519 = getelementptr inbounds %struct.Zio, %struct.Zio* %513, i64 0, i32 1
  %520 = load i8*, i8** %519, align 8, !tbaa !48
  %521 = getelementptr inbounds i8, i8* %520, i64 1
  store i8* %521, i8** %519, align 8, !tbaa !48
  %522 = load i8, i8* %520, align 1, !tbaa !9
  %523 = zext i8 %522 to i32
  br label %526

; <label>:524:                                    ; preds = %512
  %525 = call i32 @luaZ_fill(%struct.Zio* %513) #5
  br label %526

; <label>:526:                                    ; preds = %518, %524
  %527 = phi i32 [ %523, %518 ], [ %525, %524 ]
  store i32 %527, i32* %7, align 8, !tbaa !32
  %528 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %529 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %528, i64 0, i32 0
  %530 = load i8*, i8** %529, align 8, !tbaa !17
  %531 = getelementptr inbounds i8, i8* %530, i64 1
  %532 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %528, i64 0, i32 1
  %533 = load i64, i64* %532, align 8, !tbaa !45
  %534 = add i64 %533, -2
  %535 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* nonnull %531, i64 %534) #5
  %536 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %535, %struct.TString** %536, align 8, !tbaa !9
  br label %636

; <label>:537:                                    ; preds = %9
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 46) #8
  %538 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %539 = getelementptr inbounds %struct.Zio, %struct.Zio* %538, i64 0, i32 0
  %540 = load i64, i64* %539, align 8, !tbaa !46
  %541 = add i64 %540, -1
  store i64 %541, i64* %539, align 8, !tbaa !46
  %542 = icmp eq i64 %540, 0
  br i1 %542, label %549, label %543

; <label>:543:                                    ; preds = %537
  %544 = getelementptr inbounds %struct.Zio, %struct.Zio* %538, i64 0, i32 1
  %545 = load i8*, i8** %544, align 8, !tbaa !48
  %546 = getelementptr inbounds i8, i8* %545, i64 1
  store i8* %546, i8** %544, align 8, !tbaa !48
  %547 = load i8, i8* %545, align 1, !tbaa !9
  %548 = zext i8 %547 to i32
  br label %551

; <label>:549:                                    ; preds = %537
  %550 = tail call i32 @luaZ_fill(%struct.Zio* %538) #5
  br label %551

; <label>:551:                                    ; preds = %549, %543
  %552 = phi i32 [ %548, %543 ], [ %550, %549 ]
  store i32 %552, i32* %7, align 8, !tbaa !32
  %553 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 46) #8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %559, label %555

; <label>:555:                                    ; preds = %551
  %556 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 46) #8
  %557 = icmp eq i32 %556, 0
  %558 = select i1 %557, i32 280, i32 281
  br label %636

; <label>:559:                                    ; preds = %551
  %560 = load i32, i32* %7, align 8, !tbaa !32
  %561 = add nsw i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %562
  %564 = load i8, i8* %563, align 1, !tbaa !9
  %565 = and i8 %564, 2
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %636, label %567

; <label>:567:                                    ; preds = %559
  %568 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #8
  br label %636

; <label>:569:                                    ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %570 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #8
  br label %636

; <label>:571:                                    ; preds = %9
  %572 = add nsw i32 %10, 1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %573
  %575 = load i8, i8* %574, align 1, !tbaa !9
  %576 = and i8 %575, 1
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %620, label %578

; <label>:578:                                    ; preds = %571
  br label %579

; <label>:579:                                    ; preds = %578, %594
  %580 = phi i32 [ %595, %594 ], [ %10, %578 ]
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %580) #8
  %581 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %582 = getelementptr inbounds %struct.Zio, %struct.Zio* %581, i64 0, i32 0
  %583 = load i64, i64* %582, align 8, !tbaa !46
  %584 = add i64 %583, -1
  store i64 %584, i64* %582, align 8, !tbaa !46
  %585 = icmp eq i64 %583, 0
  br i1 %585, label %592, label %586

; <label>:586:                                    ; preds = %579
  %587 = getelementptr inbounds %struct.Zio, %struct.Zio* %581, i64 0, i32 1
  %588 = load i8*, i8** %587, align 8, !tbaa !48
  %589 = getelementptr inbounds i8, i8* %588, i64 1
  store i8* %589, i8** %587, align 8, !tbaa !48
  %590 = load i8, i8* %588, align 1, !tbaa !9
  %591 = zext i8 %590 to i32
  br label %594

; <label>:592:                                    ; preds = %579
  %593 = tail call i32 @luaZ_fill(%struct.Zio* %581) #5
  br label %594

; <label>:594:                                    ; preds = %592, %586
  %595 = phi i32 [ %591, %586 ], [ %593, %592 ]
  store i32 %595, i32* %7, align 8, !tbaa !32
  %596 = add nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %597
  %599 = load i8, i8* %598, align 1, !tbaa !9
  %600 = and i8 %599, 3
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %602, label %579

; <label>:602:                                    ; preds = %594
  %603 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %604 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %603, i64 0, i32 0
  %605 = load i8*, i8** %604, align 8, !tbaa !17
  %606 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %603, i64 0, i32 1
  %607 = load i64, i64* %606, align 8, !tbaa !45
  %608 = tail call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* %605, i64 %607) #8
  %609 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %608, %struct.TString** %609, align 8, !tbaa !9
  %610 = getelementptr inbounds %struct.TString, %struct.TString* %608, i64 0, i32 1
  %611 = load i8, i8* %610, align 8, !tbaa !24
  %612 = icmp eq i8 %611, 20
  br i1 %612, label %613, label %636

; <label>:613:                                    ; preds = %602
  %614 = getelementptr inbounds %struct.TString, %struct.TString* %608, i64 0, i32 3
  %615 = load i8, i8* %614, align 2, !tbaa !6
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %636, label %617

; <label>:617:                                    ; preds = %613
  %618 = zext i8 %615 to i32
  %619 = or i32 %618, 256
  br label %636

; <label>:620:                                    ; preds = %571
  %621 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %622 = getelementptr inbounds %struct.Zio, %struct.Zio* %621, i64 0, i32 0
  %623 = load i64, i64* %622, align 8, !tbaa !46
  %624 = add i64 %623, -1
  store i64 %624, i64* %622, align 8, !tbaa !46
  %625 = icmp eq i64 %623, 0
  br i1 %625, label %632, label %626

; <label>:626:                                    ; preds = %620
  %627 = getelementptr inbounds %struct.Zio, %struct.Zio* %621, i64 0, i32 1
  %628 = load i8*, i8** %627, align 8, !tbaa !48
  %629 = getelementptr inbounds i8, i8* %628, i64 1
  store i8* %629, i8** %627, align 8, !tbaa !48
  %630 = load i8, i8* %628, align 1, !tbaa !9
  %631 = zext i8 %630 to i32
  br label %634

; <label>:632:                                    ; preds = %620
  %633 = tail call i32 @luaZ_fill(%struct.Zio* %621) #5
  br label %634

; <label>:634:                                    ; preds = %632, %626
  %635 = phi i32 [ %631, %626 ], [ %633, %632 ]
  store i32 %635, i32* %7, align 8, !tbaa !32
  br label %636

; <label>:636:                                    ; preds = %9, %42, %617, %613, %602, %559, %555, %215, %196, %177, %159, %155, %137, %133, %114, %96, %97, %634, %569, %567, %526
  %637 = phi i32 [ %10, %634 ], [ %570, %569 ], [ %568, %567 ], [ 293, %526 ], [ 293, %96 ], [ 91, %97 ], [ %118, %114 ], [ 284, %133 ], [ %140, %137 ], [ 283, %155 ], [ %162, %159 ], [ %181, %177 ], [ %200, %196 ], [ %219, %215 ], [ %558, %555 ], [ 46, %559 ], [ %619, %617 ], [ 292, %613 ], [ 292, %602 ], [ 289, %9 ], [ 45, %42 ]
  ret i32 %637
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %3 = tail call fastcc i32 @llex(%struct.LexState* %0, %union.SemInfo* nonnull %2) #8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  store i32 %3, i32* %4, align 8, !tbaa !33
  ret i32 %3
}

; Function Attrs: optsize
declare hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @save(%struct.LexState* nocapture readonly, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %4 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !45
  %7 = add i64 %6, 1
  %8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 2
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !17
  br label %26

; <label>:14:                                     ; preds = %2
  %15 = icmp ugt i64 %9, 4611686018427387902
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #6
  unreachable

; <label>:17:                                     ; preds = %14
  %18 = shl i64 %9, 1
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !17
  %23 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %20, i8* %22, i64 %9, i64 %18) #5
  store i8* %23, i8** %21, align 8, !tbaa !17
  store i64 %18, i64* %8, align 8, !tbaa !38
  %24 = load i64, i64* %5, align 8, !tbaa !45
  %25 = add i64 %24, 1
  br label %26

; <label>:26:                                     ; preds = %11, %17
  %27 = phi i64 [ %7, %11 ], [ %25, %17 ]
  %28 = phi i64 [ %6, %11 ], [ %24, %17 ]
  %29 = phi i8* [ %13, %11 ], [ %23, %17 ]
  %30 = trunc i32 %1 to i8
  store i64 %27, i64* %5, align 8, !tbaa !45
  %31 = getelementptr inbounds i8, i8* %29, i64 %28
  store i8 %30, i8* %31, align 1, !tbaa !9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inclinenumber(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !34
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
  store i32 %19, i32* %2, align 8, !tbaa !32
  switch i32 %19, label %38 [
    i32 10, label %20
    i32 13, label %20
  ]

; <label>:20:                                     ; preds = %18, %18
  %21 = icmp eq i32 %19, %3
  br i1 %21, label %38, label %22

; <label>:22:                                     ; preds = %20
  %23 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !34
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
  store i32 %37, i32* %2, align 8, !tbaa !32
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

; Function Attrs: optsize
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @skip_sep(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !32
  tail call fastcc void @save(%struct.LexState* %0, i32 %3) #8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !34
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
  store i32 %19, i32* %2, align 8, !tbaa !32
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %18
  br label %22

; <label>:22:                                     ; preds = %21, %37
  %23 = phi i64 [ %39, %37 ], [ 0, %21 ]
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 61) #8
  %24 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i64 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !46
  %27 = add i64 %26, -1
  store i64 %27, i64* %25, align 8, !tbaa !46
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %35, label %29

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i64 0, i32 1
  %31 = load i8*, i8** %30, align 8, !tbaa !48
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %30, align 8, !tbaa !48
  %33 = load i8, i8* %31, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  br label %37

; <label>:35:                                     ; preds = %22
  %36 = tail call i32 @luaZ_fill(%struct.Zio* %24) #5
  br label %37

; <label>:37:                                     ; preds = %35, %29
  %38 = phi i32 [ %34, %29 ], [ %36, %35 ]
  store i32 %38, i32* %2, align 8, !tbaa !32
  %39 = add i64 %23, 1
  %40 = icmp eq i32 %38, 61
  br i1 %40, label %22, label %41

; <label>:41:                                     ; preds = %37, %18
  %42 = phi i32 [ %19, %18 ], [ %38, %37 ]
  %43 = phi i64 [ 0, %18 ], [ %39, %37 ]
  %44 = icmp eq i32 %42, %3
  %45 = add i64 %43, 2
  %46 = icmp eq i64 %43, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %44, i64 %45, i64 %47
  ret i64 %48
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @read_long_string(%struct.LexState* nocapture, %union.SemInfo*, i64) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !32
  tail call fastcc void @save(%struct.LexState* %0, i32 %7) #8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !46
  %12 = add i64 %11, -1
  store i64 %12, i64* %10, align 8, !tbaa !46
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8, !tbaa !48
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %15, align 8, !tbaa !48
  %18 = load i8, i8* %16, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  br label %22

; <label>:20:                                     ; preds = %3
  %21 = tail call i32 @luaZ_fill(%struct.Zio* %9) #5
  br label %22

; <label>:22:                                     ; preds = %20, %14
  %23 = phi i32 [ %19, %14 ], [ %21, %20 ]
  store i32 %23, i32* %6, align 8, !tbaa !32
  switch i32 %23, label %25 [
    i32 10, label %24
    i32 13, label %24
  ]

; <label>:24:                                     ; preds = %22, %22
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #8
  br label %25

; <label>:25:                                     ; preds = %22, %24
  %26 = icmp eq %union.SemInfo* %1, null
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  br label %28

; <label>:28:                                     ; preds = %56, %25
  %29 = load i32, i32* %6, align 8, !tbaa !32
  switch i32 %29, label %60 [
    i32 -1, label %30
    i32 93, label %35
    i32 10, label %55
    i32 13, label %55
  ]

; <label>:30:                                     ; preds = %28
  %31 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !tbaa !10
  %34 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0), i8* %31, i32 %5) #5
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %34, i32 289) #6
  unreachable

; <label>:35:                                     ; preds = %28
  %36 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0) #8
  %37 = icmp eq i64 %36, %2
  br i1 %37, label %38, label %56

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %6, align 8, !tbaa !32
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %39) #8
  %40 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.Zio, %struct.Zio* %40, i64 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !46
  %43 = add i64 %42, -1
  store i64 %43, i64* %41, align 8, !tbaa !46
  %44 = icmp eq i64 %42, 0
  br i1 %44, label %51, label %45

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.Zio, %struct.Zio* %40, i64 0, i32 1
  %47 = load i8*, i8** %46, align 8, !tbaa !48
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %46, align 8, !tbaa !48
  %49 = load i8, i8* %47, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  br label %53

; <label>:51:                                     ; preds = %38
  %52 = tail call i32 @luaZ_fill(%struct.Zio* %40) #5
  br label %53

; <label>:53:                                     ; preds = %51, %45
  %54 = phi i32 [ %50, %45 ], [ %52, %51 ]
  store i32 %54, i32* %6, align 8, !tbaa !32
  br i1 %26, label %104, label %93

; <label>:55:                                     ; preds = %28, %28
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 10) #8
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #8
  br i1 %26, label %57, label %56

; <label>:56:                                     ; preds = %55, %75, %91, %57, %35
  br label %28

; <label>:57:                                     ; preds = %55
  %58 = load %struct.Mbuffer*, %struct.Mbuffer** %27, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %58, i64 0, i32 1
  store i64 0, i64* %59, align 8, !tbaa !45
  br label %56

; <label>:60:                                     ; preds = %28
  br i1 %26, label %77, label %61

; <label>:61:                                     ; preds = %60
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %29) #8
  %62 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 0
  %64 = load i64, i64* %63, align 8, !tbaa !46
  %65 = add i64 %64, -1
  store i64 %65, i64* %63, align 8, !tbaa !46
  %66 = icmp eq i64 %64, 0
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 1
  %69 = load i8*, i8** %68, align 8, !tbaa !48
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %68, align 8, !tbaa !48
  %71 = load i8, i8* %69, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  br label %75

; <label>:73:                                     ; preds = %61
  %74 = tail call i32 @luaZ_fill(%struct.Zio* %62) #5
  br label %75

; <label>:75:                                     ; preds = %73, %67
  %76 = phi i32 [ %72, %67 ], [ %74, %73 ]
  store i32 %76, i32* %6, align 8, !tbaa !32
  br label %56

; <label>:77:                                     ; preds = %60
  %78 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !34
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
  store i32 %92, i32* %6, align 8, !tbaa !32
  br label %56

; <label>:93:                                     ; preds = %53
  %94 = load %struct.Mbuffer*, %struct.Mbuffer** %27, align 8, !tbaa !16
  %95 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %94, i64 0, i32 0
  %96 = load i8*, i8** %95, align 8, !tbaa !17
  %97 = getelementptr inbounds i8, i8* %96, i64 %2
  %98 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %94, i64 0, i32 1
  %99 = load i64, i64* %98, align 8, !tbaa !45
  %100 = shl i64 %2, 1
  %101 = sub i64 %99, %100
  %102 = tail call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* %97, i64 %101) #8
  %103 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %102, %struct.TString** %103, align 8, !tbaa !9
  br label %104

; <label>:104:                                    ; preds = %53, %93
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @check_next1(%struct.LexState* nocapture, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %8 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !46
  %11 = add i64 %10, -1
  store i64 %11, i64* %9, align 8, !tbaa !46
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !48
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %14, align 8, !tbaa !48
  %17 = load i8, i8* %15, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  br label %21

; <label>:19:                                     ; preds = %6
  %20 = tail call i32 @luaZ_fill(%struct.Zio* %8) #5
  br label %21

; <label>:21:                                     ; preds = %19, %13
  %22 = phi i32 [ %18, %13 ], [ %20, %19 ]
  store i32 %22, i32* %3, align 8, !tbaa !32
  br label %23

; <label>:23:                                     ; preds = %2, %21
  %24 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_numeral(%struct.LexState* nocapture, %union.SemInfo* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !32
  tail call fastcc void @save(%struct.LexState* %0, i32 %6) #8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %8 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !46
  %11 = add i64 %10, -1
  store i64 %11, i64* %9, align 8, !tbaa !46
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !48
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %14, align 8, !tbaa !48
  %17 = load i8, i8* %15, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  br label %21

; <label>:19:                                     ; preds = %2
  %20 = tail call i32 @luaZ_fill(%struct.Zio* %8) #5
  br label %21

; <label>:21:                                     ; preds = %19, %13
  %22 = phi i32 [ %18, %13 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 8, !tbaa !32
  %23 = icmp eq i32 %6, 48
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %21 ], [ %27, %24 ]
  br label %30

; <label>:30:                                     ; preds = %73, %28
  %31 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* %29) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %30
  %34 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #8
  br label %35

; <label>:35:                                     ; preds = %30, %33
  %36 = load i32, i32* %5, align 8, !tbaa !32
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = and i8 %40, 16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

; <label>:43:                                     ; preds = %35
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %36) #8
  %44 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.Zio, %struct.Zio* %44, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !46
  %47 = add i64 %46, -1
  store i64 %47, i64* %45, align 8, !tbaa !46
  %48 = icmp eq i64 %46, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct.Zio, %struct.Zio* %44, i64 0, i32 1
  %51 = load i8*, i8** %50, align 8, !tbaa !48
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %50, align 8, !tbaa !48
  %53 = load i8, i8* %51, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  br label %73

; <label>:55:                                     ; preds = %43
  %56 = tail call i32 @luaZ_fill(%struct.Zio* %44) #5
  br label %73

; <label>:57:                                     ; preds = %35
  %58 = icmp eq i32 %36, 46
  br i1 %58, label %59, label %75

; <label>:59:                                     ; preds = %57
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 46) #8
  %60 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.Zio, %struct.Zio* %60, i64 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !46
  %63 = add i64 %62, -1
  store i64 %63, i64* %61, align 8, !tbaa !46
  %64 = icmp eq i64 %62, 0
  br i1 %64, label %71, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.Zio, %struct.Zio* %60, i64 0, i32 1
  %67 = load i8*, i8** %66, align 8, !tbaa !48
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %66, align 8, !tbaa !48
  %69 = load i8, i8* %67, align 1, !tbaa !9
  %70 = zext i8 %69 to i32
  br label %73

; <label>:71:                                     ; preds = %59
  %72 = tail call i32 @luaZ_fill(%struct.Zio* %60) #5
  br label %73

; <label>:73:                                     ; preds = %65, %71, %49, %55
  %74 = phi i32 [ %54, %49 ], [ %56, %55 ], [ %70, %65 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 8, !tbaa !32
  br label %30

; <label>:75:                                     ; preds = %57
  %76 = and i8 %40, 3
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %94, label %78

; <label>:78:                                     ; preds = %75
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %36) #8
  %79 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.Zio, %struct.Zio* %79, i64 0, i32 0
  %81 = load i64, i64* %80, align 8, !tbaa !46
  %82 = add i64 %81, -1
  store i64 %82, i64* %80, align 8, !tbaa !46
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %90, label %84

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.Zio, %struct.Zio* %79, i64 0, i32 1
  %86 = load i8*, i8** %85, align 8, !tbaa !48
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %85, align 8, !tbaa !48
  %88 = load i8, i8* %86, align 1, !tbaa !9
  %89 = zext i8 %88 to i32
  br label %92

; <label>:90:                                     ; preds = %78
  %91 = tail call i32 @luaZ_fill(%struct.Zio* %79) #5
  br label %92

; <label>:92:                                     ; preds = %90, %84
  %93 = phi i32 [ %89, %84 ], [ %91, %90 ]
  store i32 %93, i32* %5, align 8, !tbaa !32
  br label %94

; <label>:94:                                     ; preds = %75, %92
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #8
  %95 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %96 = load %struct.Mbuffer*, %struct.Mbuffer** %95, align 8, !tbaa !16
  %97 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %96, i64 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !17
  %99 = call i64 @luaO_str2num(i8* %98, %struct.TValue* nonnull %3) #5
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %94
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 290) #6
  unreachable

; <label>:102:                                    ; preds = %94
  %103 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %104 = load i8, i8* %103, align 8, !tbaa !25
  %105 = icmp eq i8 %104, 35
  %106 = bitcast %struct.TValue* %3 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !9
  %108 = bitcast %union.SemInfo* %1 to i64*
  store i64 %107, i64* %108, align 8, !tbaa !9
  %109 = select i1 %105, i32 291, i32 290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %109
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @esccheck(%struct.LexState* nocapture, i32, i8*) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %27

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !32
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %26, label %9

; <label>:9:                                      ; preds = %5
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %7) #8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %11 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Zio, %struct.Zio* %11, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !46
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8, !tbaa !46
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.Zio, %struct.Zio* %11, i64 0, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !48
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %17, align 8, !tbaa !48
  %20 = load i8, i8* %18, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  br label %24

; <label>:22:                                     ; preds = %9
  %23 = tail call i32 @luaZ_fill(%struct.Zio* %11) #5
  br label %24

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i32 [ %21, %16 ], [ %23, %22 ]
  store i32 %25, i32* %6, align 8, !tbaa !32
  br label %26

; <label>:26:                                     ; preds = %5, %24
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %2, i32 293) #6
  unreachable

; <label>:27:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @gethexa(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !32
  tail call fastcc void @save(%struct.LexState* %0, i32 %3) #8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !34
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
  store i32 %19, i32* %2, align 8, !tbaa !32
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = and i8 %23, 16
  %25 = zext i8 %24 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #8
  %26 = load i32, i32* %2, align 8, !tbaa !32
  %27 = tail call i32 @luaO_hexavalue(i32 %26) #5
  ret i32 %27
}

; Function Attrs: optsize
declare hidden i32 @luaO_hexavalue(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaO_utf8esc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @check_next2(%struct.LexState* nocapture, i8* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !32
  %5 = load i8, i8* %1, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %1, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %4, %11
  br i1 %12, label %13, label %30

; <label>:13:                                     ; preds = %8, %2
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %4) #8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %15 = load %struct.Zio*, %struct.Zio** %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Zio, %struct.Zio* %15, i64 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !46
  %18 = add i64 %17, -1
  store i64 %18, i64* %16, align 8, !tbaa !46
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.Zio, %struct.Zio* %15, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8, !tbaa !48
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8, !tbaa !48
  %24 = load i8, i8* %22, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  br label %28

; <label>:26:                                     ; preds = %13
  %27 = tail call i32 @luaZ_fill(%struct.Zio* %15) #5
  br label %28

; <label>:28:                                     ; preds = %26, %20
  %29 = phi i32 [ %25, %20 ], [ %27, %26 ]
  store i32 %29, i32* %3, align 8, !tbaa !32
  br label %30

; <label>:30:                                     ; preds = %8, %28
  %31 = phi i32 [ 1, %28 ], [ 0, %8 ]
  ret i32 %31
}

; Function Attrs: optsize
declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!17 = !{!18, !3, i64 0}
!18 = !{!"Mbuffer", !3, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"long", !4, i64 0}
!20 = !{!21, !3, i64 16}
!21 = !{!"lua_State", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !22, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !23, i64 96, !3, i64 160, !19, i64 168, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192}
!22 = !{!"short", !4, i64 0}
!23 = !{!"CallInfo", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !4, i64 56, !22, i64 60, !22, i64 62}
!24 = !{!7, !4, i64 8}
!25 = !{!26, !4, i64 8}
!26 = !{!"TValue", !4, i64 0, !4, i64 8}
!27 = !{!11, !3, i64 80}
!28 = !{!21, !3, i64 24}
!29 = !{!30, !19, i64 24}
!30 = !{!"global_State", !3, i64 0, !3, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !31, i64 48, !26, i64 64, !26, i64 80, !8, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !3, i64 1392, !3, i64 1400}
!31 = !{!"stringtable", !3, i64 0, !8, i64 8, !8, i64 12}
!32 = !{!11, !8, i64 0}
!33 = !{!11, !8, i64 32}
!34 = !{!11, !3, i64 64}
!35 = !{!11, !3, i64 48}
!36 = !{!11, !8, i64 8}
!37 = !{!11, !3, i64 104}
!38 = !{!18, !19, i64 16}
!39 = !{i64 0, i64 4, !40, i64 8, i64 8, !41, i64 8, i64 8, !43, i64 8, i64 8, !2}
!40 = !{!8, !8, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !4, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"long long", !4, i64 0}
!45 = !{!18, !19, i64 8}
!46 = !{!47, !19, i64 0}
!47 = !{!"Zio", !19, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!48 = !{!47, !3, i64 8}
