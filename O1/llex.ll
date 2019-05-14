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
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %14 = tail call fastcc i8* @txtToken(%struct.LexState* nonnull %0, i32 %2)
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %10, i8* %14) #5
  br label %16

; <label>:16:                                     ; preds = %3, %12
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  tail call void @luaD_throw(%struct.lua_State* %17, i32 3) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !10
  %6 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #5
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %7, align 8, !tbaa !16
  %10 = bitcast %union.StackValue* %8 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %6, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !21
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 0, i32 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %16 = load %struct.Table*, %struct.Table** %15, align 8, !tbaa !24
  %17 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !16
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 -1, i32 0
  %19 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %16, %struct.TValue* nonnull %18) #5
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !22
  %22 = and i8 %21, 15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.TValue* %19 to i32*
  store i32 1, i32* %25, align 8, !tbaa !9
  store i8 1, i8* %20, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !26
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
  %38 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !16
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i64 -1
  store %union.StackValue* %39, %union.StackValue** %7, align 8, !tbaa !16
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
  store i32 %4, i32* %8, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 4, i32 0
  store i32 289, i32* %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 7
  store %struct.Zio* %2, %struct.Zio** %10, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 5
  store %struct.FuncState* null, %struct.FuncState** %11, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 1
  store i32 1, i32* %12, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 2
  store i32 1, i32* %13, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 11
  store %struct.TString* %3, %struct.TString** %14, align 8, !tbaa !14
  %15 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 12
  store %struct.TString* %15, %struct.TString** %16, align 8, !tbaa !34
  %17 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 8
  %19 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !38
  %24 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %17, i8* %21, i64 %23, i64 32) #5
  %25 = load %struct.Mbuffer*, %struct.Mbuffer** %18, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 0
  store i8* %24, i8** %26, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i64 0, i32 2
  store i64 32, i64* %27, align 8, !tbaa !38
  ret void
}

declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !15
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2
  store i32 %3, i32* %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !30
  %8 = icmp eq i32 %7, 289
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3
  %11 = bitcast %struct.Token* %10 to i8*
  %12 = bitcast %struct.Token* %5 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %11, i8* nonnull %12, i64 16, i32 8, i1 false), !tbaa.struct !39
  store i32 289, i32* %6, align 8, !tbaa !30
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
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %4 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 1
  store i64 0, i64* %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %9

; <label>:9:                                      ; preds = %70, %2
  %10 = load i32, i32* %6, align 8, !tbaa !29
  switch i32 %10, label %260 [
    i32 10, label %11
    i32 13, label %11
    i32 32, label %12
    i32 12, label %12
    i32 9, label %12
    i32 11, label %12
    i32 45, label %28
    i32 91, label %91
    i32 61, label %98
    i32 60, label %118
    i32 62, label %141
    i32 47, label %164
    i32 126, label %184
    i32 58, label %204
    i32 34, label %224
    i32 39, label %224
    i32 46, label %225
    i32 48, label %258
    i32 49, label %258
    i32 50, label %258
    i32 51, label %258
    i32 52, label %258
    i32 53, label %258
    i32 54, label %258
    i32 55, label %258
    i32 56, label %258
    i32 57, label %258
    i32 -1, label %326
  ]

; <label>:11:                                     ; preds = %9, %9
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br label %70

; <label>:12:                                     ; preds = %9, %9, %9, %9
  %13 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  store i32 %27, i32* %6, align 8, !tbaa !29
  br label %70

; <label>:28:                                     ; preds = %9
  %29 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
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
  store i32 %43, i32* %6, align 8, !tbaa !29
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %326

; <label>:45:                                     ; preds = %42
  %46 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
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
  store i32 %60, i32* %6, align 8, !tbaa !29
  %61 = icmp eq i32 %60, 91
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %59
  %63 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %64 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %64, i64 0, i32 1
  store i64 0, i64* %65, align 8, !tbaa !45
  %66 = icmp ugt i64 %63, 1
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %62
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i64 %63)
  %68 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 1
  store i64 0, i64* %69, align 8, !tbaa !45
  br label %70

; <label>:70:                                     ; preds = %73, %73, %73, %67, %26, %11
  br label %9

; <label>:71:                                     ; preds = %62, %59
  %72 = load i32, i32* %6, align 8, !tbaa !29
  br label %73

; <label>:73:                                     ; preds = %89, %71
  %74 = phi i32 [ %90, %89 ], [ %72, %71 ]
  switch i32 %74, label %75 [
    i32 10, label %70
    i32 13, label %70
    i32 -1, label %70
  ]

; <label>:75:                                     ; preds = %73
  %76 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
  %77 = getelementptr inbounds %struct.Zio, %struct.Zio* %76, i64 0, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !46
  %79 = add i64 %78, -1
  store i64 %79, i64* %77, align 8, !tbaa !46
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %87, label %81

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.Zio, %struct.Zio* %76, i64 0, i32 1
  %83 = load i8*, i8** %82, align 8, !tbaa !48
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %82, align 8, !tbaa !48
  %85 = load i8, i8* %83, align 1, !tbaa !9
  %86 = zext i8 %85 to i32
  br label %89

; <label>:87:                                     ; preds = %75
  %88 = tail call i32 @luaZ_fill(%struct.Zio* %76) #5
  br label %89

; <label>:89:                                     ; preds = %87, %81
  %90 = phi i32 [ %86, %81 ], [ %88, %87 ]
  store i32 %90, i32* %6, align 8, !tbaa !29
  br label %73

; <label>:91:                                     ; preds = %9
  %92 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %91
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i64 %92)
  br label %326

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i64 %92, 0
  br i1 %96, label %97, label %326

; <label>:97:                                     ; preds = %95
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 293) #6
  unreachable

; <label>:98:                                     ; preds = %9
  %99 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %100 = load %struct.Zio*, %struct.Zio** %99, align 8, !tbaa !31
  %101 = getelementptr inbounds %struct.Zio, %struct.Zio* %100, i64 0, i32 0
  %102 = load i64, i64* %101, align 8, !tbaa !46
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8, !tbaa !46
  %104 = icmp eq i64 %102, 0
  br i1 %104, label %111, label %105

; <label>:105:                                    ; preds = %98
  %106 = getelementptr inbounds %struct.Zio, %struct.Zio* %100, i64 0, i32 1
  %107 = load i8*, i8** %106, align 8, !tbaa !48
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %106, align 8, !tbaa !48
  %109 = load i8, i8* %107, align 1, !tbaa !9
  %110 = zext i8 %109 to i32
  br label %113

; <label>:111:                                    ; preds = %98
  %112 = tail call i32 @luaZ_fill(%struct.Zio* %100) #5
  br label %113

; <label>:113:                                    ; preds = %111, %105
  %114 = phi i32 [ %110, %105 ], [ %112, %111 ]
  store i32 %114, i32* %6, align 8, !tbaa !29
  %115 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61)
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 61, i32 282
  br label %326

; <label>:118:                                    ; preds = %9
  %119 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %120 = load %struct.Zio*, %struct.Zio** %119, align 8, !tbaa !31
  %121 = getelementptr inbounds %struct.Zio, %struct.Zio* %120, i64 0, i32 0
  %122 = load i64, i64* %121, align 8, !tbaa !46
  %123 = add i64 %122, -1
  store i64 %123, i64* %121, align 8, !tbaa !46
  %124 = icmp eq i64 %122, 0
  br i1 %124, label %131, label %125

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds %struct.Zio, %struct.Zio* %120, i64 0, i32 1
  %127 = load i8*, i8** %126, align 8, !tbaa !48
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %126, align 8, !tbaa !48
  %129 = load i8, i8* %127, align 1, !tbaa !9
  %130 = zext i8 %129 to i32
  br label %133

; <label>:131:                                    ; preds = %118
  %132 = tail call i32 @luaZ_fill(%struct.Zio* %120) #5
  br label %133

; <label>:133:                                    ; preds = %131, %125
  %134 = phi i32 [ %130, %125 ], [ %132, %131 ]
  store i32 %134, i32* %6, align 8, !tbaa !29
  %135 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %326

; <label>:137:                                    ; preds = %133
  %138 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 60)
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 60, i32 286
  br label %326

; <label>:141:                                    ; preds = %9
  %142 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %143 = load %struct.Zio*, %struct.Zio** %142, align 8, !tbaa !31
  %144 = getelementptr inbounds %struct.Zio, %struct.Zio* %143, i64 0, i32 0
  %145 = load i64, i64* %144, align 8, !tbaa !46
  %146 = add i64 %145, -1
  store i64 %146, i64* %144, align 8, !tbaa !46
  %147 = icmp eq i64 %145, 0
  br i1 %147, label %154, label %148

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds %struct.Zio, %struct.Zio* %143, i64 0, i32 1
  %150 = load i8*, i8** %149, align 8, !tbaa !48
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %149, align 8, !tbaa !48
  %152 = load i8, i8* %150, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  br label %156

; <label>:154:                                    ; preds = %141
  %155 = tail call i32 @luaZ_fill(%struct.Zio* %143) #5
  br label %156

; <label>:156:                                    ; preds = %154, %148
  %157 = phi i32 [ %153, %148 ], [ %155, %154 ]
  store i32 %157, i32* %6, align 8, !tbaa !29
  %158 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %326

; <label>:160:                                    ; preds = %156
  %161 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 62)
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 62, i32 287
  br label %326

; <label>:164:                                    ; preds = %9
  %165 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %166 = load %struct.Zio*, %struct.Zio** %165, align 8, !tbaa !31
  %167 = getelementptr inbounds %struct.Zio, %struct.Zio* %166, i64 0, i32 0
  %168 = load i64, i64* %167, align 8, !tbaa !46
  %169 = add i64 %168, -1
  store i64 %169, i64* %167, align 8, !tbaa !46
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %177, label %171

; <label>:171:                                    ; preds = %164
  %172 = getelementptr inbounds %struct.Zio, %struct.Zio* %166, i64 0, i32 1
  %173 = load i8*, i8** %172, align 8, !tbaa !48
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  store i8* %174, i8** %172, align 8, !tbaa !48
  %175 = load i8, i8* %173, align 1, !tbaa !9
  %176 = zext i8 %175 to i32
  br label %179

; <label>:177:                                    ; preds = %164
  %178 = tail call i32 @luaZ_fill(%struct.Zio* %166) #5
  br label %179

; <label>:179:                                    ; preds = %177, %171
  %180 = phi i32 [ %176, %171 ], [ %178, %177 ]
  store i32 %180, i32* %6, align 8, !tbaa !29
  %181 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 47)
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 47, i32 279
  br label %326

; <label>:184:                                    ; preds = %9
  %185 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %186 = load %struct.Zio*, %struct.Zio** %185, align 8, !tbaa !31
  %187 = getelementptr inbounds %struct.Zio, %struct.Zio* %186, i64 0, i32 0
  %188 = load i64, i64* %187, align 8, !tbaa !46
  %189 = add i64 %188, -1
  store i64 %189, i64* %187, align 8, !tbaa !46
  %190 = icmp eq i64 %188, 0
  br i1 %190, label %197, label %191

; <label>:191:                                    ; preds = %184
  %192 = getelementptr inbounds %struct.Zio, %struct.Zio* %186, i64 0, i32 1
  %193 = load i8*, i8** %192, align 8, !tbaa !48
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %192, align 8, !tbaa !48
  %195 = load i8, i8* %193, align 1, !tbaa !9
  %196 = zext i8 %195 to i32
  br label %199

; <label>:197:                                    ; preds = %184
  %198 = tail call i32 @luaZ_fill(%struct.Zio* %186) #5
  br label %199

; <label>:199:                                    ; preds = %197, %191
  %200 = phi i32 [ %196, %191 ], [ %198, %197 ]
  store i32 %200, i32* %6, align 8, !tbaa !29
  %201 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 61)
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i32 126, i32 285
  br label %326

; <label>:204:                                    ; preds = %9
  %205 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %206 = load %struct.Zio*, %struct.Zio** %205, align 8, !tbaa !31
  %207 = getelementptr inbounds %struct.Zio, %struct.Zio* %206, i64 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !46
  %209 = add i64 %208, -1
  store i64 %209, i64* %207, align 8, !tbaa !46
  %210 = icmp eq i64 %208, 0
  br i1 %210, label %217, label %211

; <label>:211:                                    ; preds = %204
  %212 = getelementptr inbounds %struct.Zio, %struct.Zio* %206, i64 0, i32 1
  %213 = load i8*, i8** %212, align 8, !tbaa !48
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  store i8* %214, i8** %212, align 8, !tbaa !48
  %215 = load i8, i8* %213, align 1, !tbaa !9
  %216 = zext i8 %215 to i32
  br label %219

; <label>:217:                                    ; preds = %204
  %218 = tail call i32 @luaZ_fill(%struct.Zio* %206) #5
  br label %219

; <label>:219:                                    ; preds = %217, %211
  %220 = phi i32 [ %216, %211 ], [ %218, %217 ]
  store i32 %220, i32* %6, align 8, !tbaa !29
  %221 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 58)
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 58, i32 288
  br label %326

; <label>:224:                                    ; preds = %9, %9
  tail call fastcc void @read_string(%struct.LexState* nonnull %0, i32 %10, %union.SemInfo* %1)
  br label %326

; <label>:225:                                    ; preds = %9
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %10)
  %226 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %227 = load %struct.Zio*, %struct.Zio** %226, align 8, !tbaa !31
  %228 = getelementptr inbounds %struct.Zio, %struct.Zio* %227, i64 0, i32 0
  %229 = load i64, i64* %228, align 8, !tbaa !46
  %230 = add i64 %229, -1
  store i64 %230, i64* %228, align 8, !tbaa !46
  %231 = icmp eq i64 %229, 0
  br i1 %231, label %238, label %232

; <label>:232:                                    ; preds = %225
  %233 = getelementptr inbounds %struct.Zio, %struct.Zio* %227, i64 0, i32 1
  %234 = load i8*, i8** %233, align 8, !tbaa !48
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  store i8* %235, i8** %233, align 8, !tbaa !48
  %236 = load i8, i8* %234, align 1, !tbaa !9
  %237 = zext i8 %236 to i32
  br label %240

; <label>:238:                                    ; preds = %225
  %239 = tail call i32 @luaZ_fill(%struct.Zio* %227) #5
  br label %240

; <label>:240:                                    ; preds = %238, %232
  %241 = phi i32 [ %237, %232 ], [ %239, %238 ]
  store i32 %241, i32* %6, align 8, !tbaa !29
  %242 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 46)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244

; <label>:244:                                    ; preds = %240
  %245 = tail call fastcc i32 @check_next1(%struct.LexState* nonnull %0, i32 46)
  %246 = icmp eq i32 %245, 0
  %247 = select i1 %246, i32 280, i32 281
  br label %326

; <label>:248:                                    ; preds = %240
  %249 = load i32, i32* %6, align 8, !tbaa !29
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1, !tbaa !9
  %254 = and i8 %253, 2
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %326, label %256

; <label>:256:                                    ; preds = %248
  %257 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %326

; <label>:258:                                    ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %259 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %326

; <label>:260:                                    ; preds = %9
  %261 = add nsw i32 %10, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %262
  %264 = load i8, i8* %263, align 1, !tbaa !9
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  %267 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br i1 %266, label %310, label %268

; <label>:268:                                    ; preds = %260
  br label %269

; <label>:269:                                    ; preds = %268, %284
  %270 = load i32, i32* %6, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %270)
  %271 = load %struct.Zio*, %struct.Zio** %267, align 8, !tbaa !31
  %272 = getelementptr inbounds %struct.Zio, %struct.Zio* %271, i64 0, i32 0
  %273 = load i64, i64* %272, align 8, !tbaa !46
  %274 = add i64 %273, -1
  store i64 %274, i64* %272, align 8, !tbaa !46
  %275 = icmp eq i64 %273, 0
  br i1 %275, label %282, label %276

; <label>:276:                                    ; preds = %269
  %277 = getelementptr inbounds %struct.Zio, %struct.Zio* %271, i64 0, i32 1
  %278 = load i8*, i8** %277, align 8, !tbaa !48
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  store i8* %279, i8** %277, align 8, !tbaa !48
  %280 = load i8, i8* %278, align 1, !tbaa !9
  %281 = zext i8 %280 to i32
  br label %284

; <label>:282:                                    ; preds = %269
  %283 = tail call i32 @luaZ_fill(%struct.Zio* %271) #5
  br label %284

; <label>:284:                                    ; preds = %282, %276
  %285 = phi i32 [ %281, %276 ], [ %283, %282 ]
  store i32 %285, i32* %6, align 8, !tbaa !29
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1, !tbaa !9
  %290 = and i8 %289, 3
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %269

; <label>:292:                                    ; preds = %284
  %293 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !35
  %294 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %293, i64 0, i32 0
  %295 = load i8*, i8** %294, align 8, !tbaa !36
  %296 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %293, i64 0, i32 1
  %297 = load i64, i64* %296, align 8, !tbaa !45
  %298 = tail call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* %295, i64 %297)
  %299 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %298, %struct.TString** %299, align 8, !tbaa !9
  %300 = getelementptr inbounds %struct.TString, %struct.TString* %298, i64 0, i32 1
  %301 = load i8, i8* %300, align 8, !tbaa !21
  %302 = icmp eq i8 %301, 20
  br i1 %302, label %303, label %326

; <label>:303:                                    ; preds = %292
  %304 = getelementptr inbounds %struct.TString, %struct.TString* %298, i64 0, i32 3
  %305 = load i8, i8* %304, align 2, !tbaa !6
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %326, label %307

; <label>:307:                                    ; preds = %303
  %308 = zext i8 %305 to i32
  %309 = or i32 %308, 256
  br label %326

; <label>:310:                                    ; preds = %260
  %311 = load %struct.Zio*, %struct.Zio** %267, align 8, !tbaa !31
  %312 = getelementptr inbounds %struct.Zio, %struct.Zio* %311, i64 0, i32 0
  %313 = load i64, i64* %312, align 8, !tbaa !46
  %314 = add i64 %313, -1
  store i64 %314, i64* %312, align 8, !tbaa !46
  %315 = icmp eq i64 %313, 0
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %310
  %317 = getelementptr inbounds %struct.Zio, %struct.Zio* %311, i64 0, i32 1
  %318 = load i8*, i8** %317, align 8, !tbaa !48
  %319 = getelementptr inbounds i8, i8* %318, i64 1
  store i8* %319, i8** %317, align 8, !tbaa !48
  %320 = load i8, i8* %318, align 1, !tbaa !9
  %321 = zext i8 %320 to i32
  br label %324

; <label>:322:                                    ; preds = %310
  %323 = tail call i32 @luaZ_fill(%struct.Zio* %311) #5
  br label %324

; <label>:324:                                    ; preds = %322, %316
  %325 = phi i32 [ %321, %316 ], [ %323, %322 ]
  store i32 %325, i32* %6, align 8, !tbaa !29
  br label %326

; <label>:326:                                    ; preds = %9, %42, %307, %303, %292, %248, %244, %219, %199, %179, %160, %156, %137, %133, %113, %94, %95, %324, %258, %256, %224
  %327 = phi i32 [ %10, %324 ], [ %259, %258 ], [ %257, %256 ], [ 293, %224 ], [ 293, %94 ], [ 91, %95 ], [ %117, %113 ], [ 284, %133 ], [ %140, %137 ], [ 283, %156 ], [ %163, %160 ], [ %183, %179 ], [ %203, %199 ], [ %223, %219 ], [ %247, %244 ], [ 46, %248 ], [ %309, %307 ], [ 292, %303 ], [ 292, %292 ], [ 289, %9 ], [ 45, %42 ]
  ret i32 %327
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %3 = tail call fastcc i32 @llex(%struct.LexState* %0, %union.SemInfo* nonnull %2)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  store i32 %3, i32* %4, align 8, !tbaa !30
  ret i32 %3
}

declare hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @txtToken(%struct.LexState* nocapture readonly, i32) unnamed_addr #0 {
  %3 = add i32 %1, -290
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %13

; <label>:5:                                      ; preds = %2
  tail call fastcc void @save(%struct.LexState* %0, i32 0)
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %9 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !36
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %11) #5
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1)
  br label %15

; <label>:15:                                     ; preds = %13, %5
  %16 = phi i8* [ %12, %5 ], [ %14, %13 ]
  ret i8* %16
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @save(%struct.LexState* nocapture readonly, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %4 = load %struct.Mbuffer*, %struct.Mbuffer** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !45
  %7 = add i64 %6, 1
  %8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 2
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %2
  %12 = icmp ugt i64 %9, 4611686018427387902
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #6
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = shl i64 %9, 1
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !36
  %20 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %17, i8* %19, i64 %9, i64 %15) #5
  store i8* %20, i8** %18, align 8, !tbaa !36
  store i64 %15, i64* %8, align 8, !tbaa !38
  br label %21

; <label>:21:                                     ; preds = %14, %2
  %22 = trunc i32 %1 to i8
  %23 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i64 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !36
  %25 = load i64, i64* %5, align 8, !tbaa !45
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8, !tbaa !45
  %27 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %22, i8* %27, align 1, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @inclinenumber(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %19, i32* %2, align 8, !tbaa !29
  switch i32 %19, label %38 [
    i32 10, label %20
    i32 13, label %20
  ]

; <label>:20:                                     ; preds = %18, %18
  %21 = icmp eq i32 %19, %3
  br i1 %21, label %38, label %22

; <label>:22:                                     ; preds = %20
  %23 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %37, i32* %2, align 8, !tbaa !29
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
  %3 = load i32, i32* %2, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %3)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %19, i32* %2, align 8, !tbaa !29
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %18
  br label %22

; <label>:22:                                     ; preds = %21, %37
  %23 = phi i64 [ %39, %37 ], [ 0, %21 ]
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 61)
  %24 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %38, i32* %2, align 8, !tbaa !29
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

; Function Attrs: nounwind uwtable
define internal fastcc void @read_long_string(%struct.LexState* nocapture, %union.SemInfo*, i64) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %7)
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
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
  store i32 %23, i32* %6, align 8, !tbaa !29
  switch i32 %23, label %25 [
    i32 10, label %24
    i32 13, label %24
  ]

; <label>:24:                                     ; preds = %22, %22
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br label %25

; <label>:25:                                     ; preds = %22, %24
  %26 = icmp eq %union.SemInfo* %1, null
  %27 = icmp eq %union.SemInfo* %1, null
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  br label %29

; <label>:29:                                     ; preds = %59, %25
  %30 = load i32, i32* %6, align 8, !tbaa !29
  switch i32 %30, label %63 [
    i32 -1, label %31
    i32 93, label %37
    i32 10, label %58
    i32 13, label %58
  ]

; <label>:31:                                     ; preds = %29
  %32 = icmp eq %union.SemInfo* %1, null
  %33 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !10
  %36 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0), i8* %33, i32 %5) #5
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %36, i32 289) #6
  unreachable

; <label>:37:                                     ; preds = %29
  %38 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %39 = icmp eq i64 %38, %2
  br i1 %39, label %40, label %59

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %6, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %41)
  %42 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
  %43 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i64 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !46
  %45 = add i64 %44, -1
  store i64 %45, i64* %43, align 8, !tbaa !46
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %53, label %47

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i64 0, i32 1
  %49 = load i8*, i8** %48, align 8, !tbaa !48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %48, align 8, !tbaa !48
  %51 = load i8, i8* %49, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  br label %55

; <label>:53:                                     ; preds = %40
  %54 = tail call i32 @luaZ_fill(%struct.Zio* %42) #5
  br label %55

; <label>:55:                                     ; preds = %53, %47
  %56 = phi i32 [ %52, %47 ], [ %54, %53 ]
  store i32 %56, i32* %6, align 8, !tbaa !29
  %57 = icmp eq %union.SemInfo* %1, null
  br i1 %57, label %108, label %96

; <label>:58:                                     ; preds = %29, %29
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 10)
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br i1 %27, label %60, label %59

; <label>:59:                                     ; preds = %58, %78, %94, %60, %37
  br label %29

; <label>:60:                                     ; preds = %58
  %61 = load %struct.Mbuffer*, %struct.Mbuffer** %28, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %61, i64 0, i32 1
  store i64 0, i64* %62, align 8, !tbaa !45
  br label %59

; <label>:63:                                     ; preds = %29
  br i1 %26, label %80, label %64

; <label>:64:                                     ; preds = %63
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %30)
  %65 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
  %66 = getelementptr inbounds %struct.Zio, %struct.Zio* %65, i64 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !46
  %68 = add i64 %67, -1
  store i64 %68, i64* %66, align 8, !tbaa !46
  %69 = icmp eq i64 %67, 0
  br i1 %69, label %76, label %70

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %struct.Zio, %struct.Zio* %65, i64 0, i32 1
  %72 = load i8*, i8** %71, align 8, !tbaa !48
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %71, align 8, !tbaa !48
  %74 = load i8, i8* %72, align 1, !tbaa !9
  %75 = zext i8 %74 to i32
  br label %78

; <label>:76:                                     ; preds = %64
  %77 = tail call i32 @luaZ_fill(%struct.Zio* %65) #5
  br label %78

; <label>:78:                                     ; preds = %76, %70
  %79 = phi i32 [ %75, %70 ], [ %77, %76 ]
  store i32 %79, i32* %6, align 8, !tbaa !29
  br label %59

; <label>:80:                                     ; preds = %63
  %81 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !31
  %82 = getelementptr inbounds %struct.Zio, %struct.Zio* %81, i64 0, i32 0
  %83 = load i64, i64* %82, align 8, !tbaa !46
  %84 = add i64 %83, -1
  store i64 %84, i64* %82, align 8, !tbaa !46
  %85 = icmp eq i64 %83, 0
  br i1 %85, label %92, label %86

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds %struct.Zio, %struct.Zio* %81, i64 0, i32 1
  %88 = load i8*, i8** %87, align 8, !tbaa !48
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %87, align 8, !tbaa !48
  %90 = load i8, i8* %88, align 1, !tbaa !9
  %91 = zext i8 %90 to i32
  br label %94

; <label>:92:                                     ; preds = %80
  %93 = tail call i32 @luaZ_fill(%struct.Zio* %81) #5
  br label %94

; <label>:94:                                     ; preds = %92, %86
  %95 = phi i32 [ %91, %86 ], [ %93, %92 ]
  store i32 %95, i32* %6, align 8, !tbaa !29
  br label %59

; <label>:96:                                     ; preds = %55
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %98 = load %struct.Mbuffer*, %struct.Mbuffer** %97, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %98, i64 0, i32 0
  %100 = load i8*, i8** %99, align 8, !tbaa !36
  %101 = getelementptr inbounds i8, i8* %100, i64 %2
  %102 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %98, i64 0, i32 1
  %103 = load i64, i64* %102, align 8, !tbaa !45
  %104 = shl i64 %2, 1
  %105 = sub i64 %103, %104
  %106 = tail call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* %101, i64 %105)
  %107 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %106, %struct.TString** %107, align 8, !tbaa !9
  br label %108

; <label>:108:                                    ; preds = %55, %96
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_next1(%struct.LexState* nocapture, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !29
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %8 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  store i32 %22, i32* %3, align 8, !tbaa !29
  br label %23

; <label>:23:                                     ; preds = %2, %21
  %24 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_string(%struct.LexState* nocapture, i32, %union.SemInfo* nocapture) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %5)
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %7 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !46
  %10 = add i64 %9, -1
  store i64 %10, i64* %8, align 8, !tbaa !46
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !48
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %13, align 8, !tbaa !48
  %16 = load i8, i8* %14, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  br label %20

; <label>:18:                                     ; preds = %3
  %19 = tail call i32 @luaZ_fill(%struct.Zio* %7) #5
  br label %20

; <label>:20:                                     ; preds = %18, %12
  %21 = phi i32 [ %17, %12 ], [ %19, %18 ]
  store i32 %21, i32* %4, align 8, !tbaa !29
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %161, label %23

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  br label %26

; <label>:26:                                     ; preds = %23, %158
  %27 = phi i32 [ %21, %23 ], [ %159, %158 ]
  switch i32 %27, label %142 [
    i32 -1, label %28
    i32 10, label %29
    i32 13, label %29
    i32 92, label %30
  ]

; <label>:28:                                     ; preds = %26
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 289) #6
  unreachable

; <label>:29:                                     ; preds = %26, %26
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 293) #6
  unreachable

; <label>:30:                                     ; preds = %26
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %27)
  %31 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.Zio, %struct.Zio* %31, i64 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !46
  %34 = add i64 %33, -1
  store i64 %34, i64* %32, align 8, !tbaa !46
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.Zio, %struct.Zio* %31, i64 0, i32 1
  %38 = load i8*, i8** %37, align 8, !tbaa !48
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %37, align 8, !tbaa !48
  %40 = load i8, i8* %38, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  br label %44

; <label>:42:                                     ; preds = %30
  %43 = tail call i32 @luaZ_fill(%struct.Zio* %31) #5
  br label %44

; <label>:44:                                     ; preds = %42, %36
  %45 = phi i32 [ %41, %36 ], [ %43, %42 ]
  store i32 %45, i32* %4, align 8, !tbaa !29
  switch i32 %45, label %111 [
    i32 97, label %119
    i32 98, label %46
    i32 102, label %47
    i32 110, label %48
    i32 114, label %49
    i32 116, label %50
    i32 118, label %51
    i32 120, label %52
    i32 117, label %54
    i32 10, label %55
    i32 13, label %55
    i32 92, label %56
    i32 34, label %56
    i32 39, label %56
    i32 -1, label %158
    i32 122, label %57
  ]

; <label>:46:                                     ; preds = %44
  br label %119

; <label>:47:                                     ; preds = %44
  br label %119

; <label>:48:                                     ; preds = %44
  br label %119

; <label>:49:                                     ; preds = %44
  br label %119

; <label>:50:                                     ; preds = %44
  br label %119

; <label>:51:                                     ; preds = %44
  br label %119

; <label>:52:                                     ; preds = %44
  %53 = tail call fastcc i32 @readhexaesc(%struct.LexState* nonnull %0)
  br label %119

; <label>:54:                                     ; preds = %44
  tail call fastcc void @utf8esc(%struct.LexState* nonnull %0)
  br label %158

; <label>:55:                                     ; preds = %44, %44
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0)
  br label %136

; <label>:56:                                     ; preds = %44, %44, %44
  br label %119

; <label>:57:                                     ; preds = %44
  %58 = load %struct.Mbuffer*, %struct.Mbuffer** %25, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %58, i64 0, i32 1
  %60 = load i64, i64* %59, align 8, !tbaa !45
  %61 = add i64 %60, -1
  store i64 %61, i64* %59, align 8, !tbaa !45
  %62 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %63 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 0
  %64 = load i64, i64* %63, align 8, !tbaa !46
  %65 = add i64 %64, -1
  store i64 %65, i64* %63, align 8, !tbaa !46
  %66 = icmp eq i64 %64, 0
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %57
  %68 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 1
  %69 = load i8*, i8** %68, align 8, !tbaa !48
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %68, align 8, !tbaa !48
  %71 = load i8, i8* %69, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  br label %75

; <label>:73:                                     ; preds = %57
  %74 = tail call i32 @luaZ_fill(%struct.Zio* %62) #5
  br label %75

; <label>:75:                                     ; preds = %73, %67
  %76 = phi i32 [ %72, %67 ], [ %74, %73 ]
  store i32 %76, i32* %4, align 8, !tbaa !29
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !9
  %81 = and i8 %80, 8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %158, label %83

; <label>:83:                                     ; preds = %75
  br label %84

; <label>:84:                                     ; preds = %83, %103
  %85 = phi i32 [ %104, %103 ], [ %76, %83 ]
  switch i32 %85, label %87 [
    i32 10, label %86
    i32 13, label %86
  ]

; <label>:86:                                     ; preds = %84, %84
  tail call fastcc void @inclinenumber(%struct.LexState* %0)
  br label %103

; <label>:87:                                     ; preds = %84
  %88 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %89 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i64 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !46
  %91 = add i64 %90, -1
  store i64 %91, i64* %89, align 8, !tbaa !46
  %92 = icmp eq i64 %90, 0
  br i1 %92, label %99, label %93

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i64 0, i32 1
  %95 = load i8*, i8** %94, align 8, !tbaa !48
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %94, align 8, !tbaa !48
  %97 = load i8, i8* %95, align 1, !tbaa !9
  %98 = zext i8 %97 to i32
  br label %101

; <label>:99:                                     ; preds = %87
  %100 = tail call i32 @luaZ_fill(%struct.Zio* %88) #5
  br label %101

; <label>:101:                                    ; preds = %99, %93
  %102 = phi i32 [ %98, %93 ], [ %100, %99 ]
  store i32 %102, i32* %4, align 8, !tbaa !29
  br label %103

; <label>:103:                                    ; preds = %101, %86
  %104 = load i32, i32* %4, align 8, !tbaa !29
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1, !tbaa !9
  %109 = and i8 %108, 8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %158, label %84

; <label>:111:                                    ; preds = %44
  %112 = add nsw i32 %45, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1, !tbaa !9
  %116 = and i8 %115, 2
  %117 = zext i8 %116 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0))
  %118 = tail call fastcc i32 @readdecesc(%struct.LexState* nonnull %0)
  br label %136

; <label>:119:                                    ; preds = %44, %56, %52, %51, %50, %49, %48, %47, %46
  %120 = phi i32 [ %45, %56 ], [ %53, %52 ], [ 11, %51 ], [ 9, %50 ], [ 13, %49 ], [ 10, %48 ], [ 12, %47 ], [ 8, %46 ], [ 7, %44 ]
  %121 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %122 = getelementptr inbounds %struct.Zio, %struct.Zio* %121, i64 0, i32 0
  %123 = load i64, i64* %122, align 8, !tbaa !46
  %124 = add i64 %123, -1
  store i64 %124, i64* %122, align 8, !tbaa !46
  %125 = icmp eq i64 %123, 0
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds %struct.Zio, %struct.Zio* %121, i64 0, i32 1
  %128 = load i8*, i8** %127, align 8, !tbaa !48
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %127, align 8, !tbaa !48
  %130 = load i8, i8* %128, align 1, !tbaa !9
  %131 = zext i8 %130 to i32
  br label %134

; <label>:132:                                    ; preds = %119
  %133 = tail call i32 @luaZ_fill(%struct.Zio* %121) #5
  br label %134

; <label>:134:                                    ; preds = %132, %126
  %135 = phi i32 [ %131, %126 ], [ %133, %132 ]
  store i32 %135, i32* %4, align 8, !tbaa !29
  br label %136

; <label>:136:                                    ; preds = %134, %111, %55
  %137 = phi i32 [ %118, %111 ], [ %120, %134 ], [ 10, %55 ]
  %138 = load %struct.Mbuffer*, %struct.Mbuffer** %24, align 8, !tbaa !35
  %139 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %138, i64 0, i32 1
  %140 = load i64, i64* %139, align 8, !tbaa !45
  %141 = add i64 %140, -1
  store i64 %141, i64* %139, align 8, !tbaa !45
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %137)
  br label %158

; <label>:142:                                    ; preds = %26
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %27)
  %143 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %144 = getelementptr inbounds %struct.Zio, %struct.Zio* %143, i64 0, i32 0
  %145 = load i64, i64* %144, align 8, !tbaa !46
  %146 = add i64 %145, -1
  store i64 %146, i64* %144, align 8, !tbaa !46
  %147 = icmp eq i64 %145, 0
  br i1 %147, label %154, label %148

; <label>:148:                                    ; preds = %142
  %149 = getelementptr inbounds %struct.Zio, %struct.Zio* %143, i64 0, i32 1
  %150 = load i8*, i8** %149, align 8, !tbaa !48
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %149, align 8, !tbaa !48
  %152 = load i8, i8* %150, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  br label %156

; <label>:154:                                    ; preds = %142
  %155 = tail call i32 @luaZ_fill(%struct.Zio* %143) #5
  br label %156

; <label>:156:                                    ; preds = %154, %148
  %157 = phi i32 [ %153, %148 ], [ %155, %154 ]
  store i32 %157, i32* %4, align 8, !tbaa !29
  br label %158

; <label>:158:                                    ; preds = %103, %75, %54, %136, %44, %156
  %159 = load i32, i32* %4, align 8, !tbaa !29
  %160 = icmp eq i32 %159, %1
  br i1 %160, label %161, label %26

; <label>:161:                                    ; preds = %158, %20
  %162 = phi i32 [ %21, %20 ], [ %159, %158 ]
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %162)
  %163 = load %struct.Zio*, %struct.Zio** %6, align 8, !tbaa !31
  %164 = getelementptr inbounds %struct.Zio, %struct.Zio* %163, i64 0, i32 0
  %165 = load i64, i64* %164, align 8, !tbaa !46
  %166 = add i64 %165, -1
  store i64 %166, i64* %164, align 8, !tbaa !46
  %167 = icmp eq i64 %165, 0
  br i1 %167, label %174, label %168

; <label>:168:                                    ; preds = %161
  %169 = getelementptr inbounds %struct.Zio, %struct.Zio* %163, i64 0, i32 1
  %170 = load i8*, i8** %169, align 8, !tbaa !48
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %171, i8** %169, align 8, !tbaa !48
  %172 = load i8, i8* %170, align 1, !tbaa !9
  %173 = zext i8 %172 to i32
  br label %176

; <label>:174:                                    ; preds = %161
  %175 = tail call i32 @luaZ_fill(%struct.Zio* %163) #5
  br label %176

; <label>:176:                                    ; preds = %174, %168
  %177 = phi i32 [ %173, %168 ], [ %175, %174 ]
  store i32 %177, i32* %4, align 8, !tbaa !29
  %178 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %179 = load %struct.Mbuffer*, %struct.Mbuffer** %178, align 8, !tbaa !35
  %180 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %179, i64 0, i32 0
  %181 = load i8*, i8** %180, align 8, !tbaa !36
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %179, i64 0, i32 1
  %184 = load i64, i64* %183, align 8, !tbaa !45
  %185 = add i64 %184, -2
  %186 = tail call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* nonnull %182, i64 %185)
  %187 = bitcast %union.SemInfo* %2 to %struct.TString**
  store %struct.TString* %186, %struct.TString** %187, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_numeral(%struct.LexState* nocapture, %union.SemInfo* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %6)
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %8 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  store i32 %22, i32* %5, align 8, !tbaa !29
  %23 = icmp eq i32 %6, 48
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %21 ], [ %27, %24 ]
  br label %30

; <label>:30:                                     ; preds = %73, %28
  %31 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* %29)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %30
  %34 = tail call fastcc i32 @check_next2(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0))
  br label %35

; <label>:35:                                     ; preds = %30, %33
  %36 = load i32, i32* %5, align 8, !tbaa !29
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = and i8 %40, 16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

; <label>:43:                                     ; preds = %35
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %36)
  %44 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %36)
  %60 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  store i32 %74, i32* %5, align 8, !tbaa !29
  br label %30

; <label>:75:                                     ; preds = %57
  %76 = and i8 %40, 3
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %94, label %78

; <label>:78:                                     ; preds = %75
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %36)
  %79 = load %struct.Zio*, %struct.Zio** %7, align 8, !tbaa !31
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
  store i32 %93, i32* %5, align 8, !tbaa !29
  br label %94

; <label>:94:                                     ; preds = %75, %92
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 0)
  %95 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %96 = load %struct.Mbuffer*, %struct.Mbuffer** %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %96, i64 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !36
  %99 = call i64 @luaO_str2num(i8* %98, %struct.TValue* nonnull %3) #5
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %94
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 290) #6
  unreachable

; <label>:102:                                    ; preds = %94
  %103 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %104 = load i8, i8* %103, align 8, !tbaa !22
  %105 = icmp eq i8 %104, 35
  %106 = bitcast %struct.TValue* %3 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !9
  %108 = bitcast %union.SemInfo* %1 to i64*
  store i64 %107, i64* %108, align 8, !tbaa !9
  %109 = select i1 %105, i32 291, i32 290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @readhexaesc(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gethexa(%struct.LexState* %0)
  %3 = shl i32 %2, 4
  %4 = tail call fastcc i32 @gethexa(%struct.LexState* %0)
  %5 = add nsw i32 %3, %4
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %7 = load %struct.Mbuffer*, %struct.Mbuffer** %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !45
  %10 = add i64 %9, -2
  store i64 %10, i64* %8, align 8, !tbaa !45
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @utf8esc(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = tail call fastcc i64 @readutf8esc(%struct.LexState* %0)
  %5 = call i32 @luaO_utf8esc(i8* nonnull %3, i64 %4) #5
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %1
  %8 = sext i32 %5 to i64
  br label %9

; <label>:9:                                      ; preds = %7, %9
  %10 = phi i64 [ %8, %7 ], [ %15, %9 ]
  %11 = sub nsw i64 8, %10
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  call fastcc void @save(%struct.LexState* %0, i32 %14)
  %15 = add nsw i64 %10, -1
  %16 = icmp sgt i64 %10, 1
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %9, %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @esccheck(%struct.LexState* nocapture, i32, i8*) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %27

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %26, label %9

; <label>:9:                                      ; preds = %5
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %7)
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %11 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !31
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
  store i32 %25, i32* %6, align 8, !tbaa !29
  br label %26

; <label>:26:                                     ; preds = %5, %24
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %2, i32 293) #6
  unreachable

; <label>:27:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @readdecesc(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %4

; <label>:4:                                      ; preds = %1, %31
  %5 = phi i32 [ 0, %1 ], [ %17, %31 ]
  %6 = phi i32 [ 0, %1 ], [ %33, %31 ]
  %7 = load i32, i32* %2, align 8, !tbaa !29
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

; <label>:14:                                     ; preds = %4
  %15 = mul nsw i32 %5, 10
  %16 = add i32 %15, -48
  %17 = add i32 %16, %7
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %7)
  %18 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i64 0, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !46
  %21 = add i64 %20, -1
  store i64 %21, i64* %19, align 8, !tbaa !46
  %22 = icmp eq i64 %20, 0
  br i1 %22, label %29, label %23

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !48
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %24, align 8, !tbaa !48
  %27 = load i8, i8* %25, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  br label %31

; <label>:29:                                     ; preds = %14
  %30 = tail call i32 @luaZ_fill(%struct.Zio* %18) #5
  br label %31

; <label>:31:                                     ; preds = %29, %23
  %32 = phi i32 [ %28, %23 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 8, !tbaa !29
  %33 = add nuw nsw i32 %6, 1
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %4, label %35

; <label>:35:                                     ; preds = %4, %31
  %36 = phi i32 [ %6, %4 ], [ 3, %31 ]
  %37 = phi i32 [ %5, %4 ], [ %17, %31 ]
  %38 = icmp slt i32 %37, 256
  %39 = zext i1 %38 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0))
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %42 = load %struct.Mbuffer*, %struct.Mbuffer** %41, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %42, i64 0, i32 1
  %44 = load i64, i64* %43, align 8, !tbaa !45
  %45 = sub i64 %44, %40
  store i64 %45, i64* %43, align 8, !tbaa !45
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gethexa(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %3)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %19, i32* %2, align 8, !tbaa !29
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = and i8 %23, 16
  %25 = zext i8 %24 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0))
  %26 = load i32, i32* %2, align 8, !tbaa !29
  %27 = tail call i32 @luaO_hexavalue(i32 %26) #5
  ret i32 %27
}

declare hidden i32 @luaO_hexavalue(i32) local_unnamed_addr #2

declare hidden i32 @luaO_utf8esc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @readutf8esc(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* %0, i32 %3)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
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
  store i32 %19, i32* %2, align 8, !tbaa !29
  %20 = icmp eq i32 %19, 123
  %21 = zext i1 %20 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0))
  %22 = tail call fastcc i32 @gethexa(%struct.LexState* nonnull %0)
  %23 = sext i32 %22 to i64
  br label %24

; <label>:24:                                     ; preds = %49, %18
  %25 = phi i64 [ %23, %18 ], [ %57, %49 ]
  %26 = phi i32 [ 4, %18 ], [ %50, %49 ]
  %27 = load i32, i32* %2, align 8, !tbaa !29
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %27)
  %28 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %28, i64 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !46
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8, !tbaa !46
  %32 = icmp eq i64 %30, 0
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds %struct.Zio, %struct.Zio* %28, i64 0, i32 1
  %35 = load i8*, i8** %34, align 8, !tbaa !48
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %34, align 8, !tbaa !48
  %37 = load i8, i8* %35, align 1, !tbaa !9
  %38 = zext i8 %37 to i32
  br label %41

; <label>:39:                                     ; preds = %24
  %40 = tail call i32 @luaZ_fill(%struct.Zio* %28) #5
  br label %41

; <label>:41:                                     ; preds = %39, %33
  %42 = phi i32 [ %38, %33 ], [ %40, %39 ]
  store i32 %42, i32* %2, align 8, !tbaa !29
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49

; <label>:49:                                     ; preds = %41
  %50 = add nuw nsw i32 %26, 1
  %51 = icmp ult i64 %25, 134217728
  %52 = zext i1 %51 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0))
  %53 = shl i64 %25, 4
  %54 = load i32, i32* %2, align 8, !tbaa !29
  %55 = tail call i32 @luaO_hexavalue(i32 %54) #5
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  br label %24

; <label>:58:                                     ; preds = %41
  %59 = icmp eq i32 %42, 125
  %60 = zext i1 %59 to i32
  tail call fastcc void @esccheck(%struct.LexState* nonnull %0, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0))
  %61 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !31
  %62 = getelementptr inbounds %struct.Zio, %struct.Zio* %61, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !46
  %64 = add i64 %63, -1
  store i64 %64, i64* %62, align 8, !tbaa !46
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %72, label %66

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds %struct.Zio, %struct.Zio* %61, i64 0, i32 1
  %68 = load i8*, i8** %67, align 8, !tbaa !48
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %67, align 8, !tbaa !48
  %70 = load i8, i8* %68, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  br label %74

; <label>:72:                                     ; preds = %58
  %73 = tail call i32 @luaZ_fill(%struct.Zio* %61) #5
  br label %74

; <label>:74:                                     ; preds = %72, %66
  %75 = phi i32 [ %71, %66 ], [ %73, %72 ]
  store i32 %75, i32* %2, align 8, !tbaa !29
  %76 = zext i32 %26 to i64
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %78 = load %struct.Mbuffer*, %struct.Mbuffer** %77, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %78, i64 0, i32 1
  %80 = load i64, i64* %79, align 8, !tbaa !45
  %81 = sub i64 %80, %76
  store i64 %81, i64* %79, align 8, !tbaa !45
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_next2(%struct.LexState* nocapture, i8* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !29
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
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %4)
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %15 = load %struct.Zio*, %struct.Zio** %14, align 8, !tbaa !31
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
  store i32 %29, i32* %3, align 8, !tbaa !29
  br label %30

; <label>:30:                                     ; preds = %8, %28
  %31 = phi i32 [ 1, %28 ], [ 0, %8 ]
  ret i32 %31
}

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
!16 = !{!17, !3, i64 16}
!17 = !{!"lua_State", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !18, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !19, i64 96, !3, i64 160, !20, i64 168, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192}
!18 = !{!"short", !4, i64 0}
!19 = !{!"CallInfo", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !4, i64 56, !18, i64 60, !18, i64 62}
!20 = !{!"long", !4, i64 0}
!21 = !{!7, !4, i64 8}
!22 = !{!23, !4, i64 8}
!23 = !{!"TValue", !4, i64 0, !4, i64 8}
!24 = !{!11, !3, i64 80}
!25 = !{!17, !3, i64 24}
!26 = !{!27, !20, i64 24}
!27 = !{!"global_State", !3, i64 0, !3, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !28, i64 48, !23, i64 64, !23, i64 80, !8, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !3, i64 1392, !3, i64 1400}
!28 = !{!"stringtable", !3, i64 0, !8, i64 8, !8, i64 12}
!29 = !{!11, !8, i64 0}
!30 = !{!11, !8, i64 32}
!31 = !{!11, !3, i64 64}
!32 = !{!11, !3, i64 48}
!33 = !{!11, !8, i64 8}
!34 = !{!11, !3, i64 104}
!35 = !{!11, !3, i64 72}
!36 = !{!37, !3, i64 0}
!37 = !{!"Mbuffer", !3, i64 0, !20, i64 8, !20, i64 16}
!38 = !{!37, !20, i64 16}
!39 = !{i64 0, i64 4, !40, i64 8, i64 8, !41, i64 8, i64 8, !43, i64 8, i64 8, !2}
!40 = !{!8, !8, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !4, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"long long", !4, i64 0}
!45 = !{!37, !20, i64 8}
!46 = !{!47, !20, i64 0}
!47 = !{!"Zio", !20, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!48 = !{!47, !3, i64 8}
