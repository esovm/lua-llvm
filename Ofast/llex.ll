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
  %4 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5
  %5 = bitcast %struct.TString* %4 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %5) #5
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %4, i64 0, i32 3
  store i8 1, i8* %6, align 2, !tbaa !2
  %7 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %8 = bitcast %struct.TString* %7 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %8) #5
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %7, i64 0, i32 3
  store i8 2, i8* %9, align 2, !tbaa !2
  %10 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #5
  %11 = bitcast %struct.TString* %10 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %11) #5
  %12 = getelementptr inbounds %struct.TString, %struct.TString* %10, i64 0, i32 3
  store i8 3, i8* %12, align 2, !tbaa !2
  %13 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5
  %14 = bitcast %struct.TString* %13 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %14) #5
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %13, i64 0, i32 3
  store i8 4, i8* %15, align 2, !tbaa !2
  %16 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #5
  %17 = bitcast %struct.TString* %16 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %17) #5
  %18 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 0, i32 3
  store i8 5, i8* %18, align 2, !tbaa !2
  %19 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #5
  %20 = bitcast %struct.TString* %19 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %20) #5
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %19, i64 0, i32 3
  store i8 6, i8* %21, align 2, !tbaa !2
  %22 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #5
  %23 = bitcast %struct.TString* %22 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %23) #5
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %22, i64 0, i32 3
  store i8 7, i8* %24, align 2, !tbaa !2
  %25 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #5
  %26 = bitcast %struct.TString* %25 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %26) #5
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %25, i64 0, i32 3
  store i8 8, i8* %27, align 2, !tbaa !2
  %28 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #5
  %29 = bitcast %struct.TString* %28 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %29) #5
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %28, i64 0, i32 3
  store i8 9, i8* %30, align 2, !tbaa !2
  %31 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #5
  %32 = bitcast %struct.TString* %31 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %32) #5
  %33 = getelementptr inbounds %struct.TString, %struct.TString* %31, i64 0, i32 3
  store i8 10, i8* %33, align 2, !tbaa !2
  %34 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #5
  %35 = bitcast %struct.TString* %34 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %35) #5
  %36 = getelementptr inbounds %struct.TString, %struct.TString* %34, i64 0, i32 3
  store i8 11, i8* %36, align 2, !tbaa !2
  %37 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #5
  %38 = bitcast %struct.TString* %37 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %38) #5
  %39 = getelementptr inbounds %struct.TString, %struct.TString* %37, i64 0, i32 3
  store i8 12, i8* %39, align 2, !tbaa !2
  %40 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #5
  %41 = bitcast %struct.TString* %40 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %41) #5
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %40, i64 0, i32 3
  store i8 13, i8* %42, align 2, !tbaa !2
  %43 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #5
  %44 = bitcast %struct.TString* %43 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %44) #5
  %45 = getelementptr inbounds %struct.TString, %struct.TString* %43, i64 0, i32 3
  store i8 14, i8* %45, align 2, !tbaa !2
  %46 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #5
  %47 = bitcast %struct.TString* %46 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %47) #5
  %48 = getelementptr inbounds %struct.TString, %struct.TString* %46, i64 0, i32 3
  store i8 15, i8* %48, align 2, !tbaa !2
  %49 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #5
  %50 = bitcast %struct.TString* %49 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %50) #5
  %51 = getelementptr inbounds %struct.TString, %struct.TString* %49, i64 0, i32 3
  store i8 16, i8* %51, align 2, !tbaa !2
  %52 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #5
  %53 = bitcast %struct.TString* %52 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %53) #5
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %52, i64 0, i32 3
  store i8 17, i8* %54, align 2, !tbaa !2
  %55 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #5
  %56 = bitcast %struct.TString* %55 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %56) #5
  %57 = getelementptr inbounds %struct.TString, %struct.TString* %55, i64 0, i32 3
  store i8 18, i8* %57, align 2, !tbaa !2
  %58 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #5
  %59 = bitcast %struct.TString* %58 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %59) #5
  %60 = getelementptr inbounds %struct.TString, %struct.TString* %58, i64 0, i32 3
  store i8 19, i8* %60, align 2, !tbaa !2
  %61 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #5
  %62 = bitcast %struct.TString* %61 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %62) #5
  %63 = getelementptr inbounds %struct.TString, %struct.TString* %61, i64 0, i32 3
  store i8 20, i8* %63, align 2, !tbaa !2
  %64 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #5
  %65 = bitcast %struct.TString* %64 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %65) #5
  %66 = getelementptr inbounds %struct.TString, %struct.TString* %64, i64 0, i32 3
  store i8 21, i8* %66, align 2, !tbaa !2
  %67 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #5
  %68 = bitcast %struct.TString* %67 to %struct.GCObject*
  tail call void @luaC_fix(%struct.lua_State* %0, %struct.GCObject* %68) #5
  %69 = getelementptr inbounds %struct.TString, %struct.TString* %67, i64 0, i32 3
  store i8 22, i8* %69, align 2, !tbaa !2
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
  %8 = load i8, i8* %7, align 1, !tbaa !8
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !9
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
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = icmp slt i32 %1, 289
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !9
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
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %7 = load %struct.TString*, %struct.TString** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !15
  %10 = tail call i8* @luaG_addinfo(%struct.lua_State* %5, i8* %1, %struct.TString* %7, i32 %9) #5
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %72, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !9
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
  store i8 0, i8* %42, align 1, !tbaa !8
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !9
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
  %54 = load i8, i8* %53, align 1, !tbaa !8
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
  %65 = load i8*, i8** %64, align 8, !tbaa !12
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
  %73 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !9
  tail call void @luaD_throw(%struct.lua_State* %73, i32 3) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden %struct.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !9
  %6 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #5
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 1
  store %union.StackValue* %9, %union.StackValue** %7, align 8, !tbaa !22
  %10 = bitcast %union.StackValue* %8 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %10, align 8, !tbaa !8
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
  store i32 1, i32* %25, align 8, !tbaa !8
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
  %35 = load %struct.TString*, %struct.TString** %34, align 8, !tbaa !8
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
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8, !tbaa !9
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
  %17 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !9
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
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  br label %10

; <label>:10:                                     ; preds = %50, %2
  %11 = load i32, i32* %7, align 8, !tbaa !34
  switch i32 %11, label %1714 [
    i32 10, label %12
    i32 13, label %12
    i32 32, label %52
    i32 12, label %52
    i32 9, label %52
    i32 11, label %52
    i32 45, label %68
    i32 91, label %132
    i32 61, label %139
    i32 60, label %172
    i32 62, label %220
    i32 47, label %268
    i32 126, label %301
    i32 58, label %334
    i32 34, label %367
    i32 39, label %367
    i32 46, label %1626
    i32 48, label %1712
    i32 49, label %1712
    i32 50, label %1712
    i32 51, label %1712
    i32 52, label %1712
    i32 53, label %1712
    i32 54, label %1712
    i32 55, label %1712
    i32 56, label %1712
    i32 57, label %1712
    i32 -1, label %1842
  ]

; <label>:12:                                     ; preds = %10, %10
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
  %22 = load i8, i8* %20, align 1, !tbaa !8
  %23 = zext i8 %22 to i32
  br label %26

; <label>:24:                                     ; preds = %12
  %25 = tail call i32 @luaZ_fill(%struct.Zio* %13) #5
  br label %26

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 8, !tbaa !34
  switch i32 %27, label %46 [
    i32 10, label %28
    i32 13, label %28
  ]

; <label>:28:                                     ; preds = %26, %26
  %29 = icmp eq i32 %27, %11
  br i1 %29, label %46, label %30

; <label>:30:                                     ; preds = %28
  %31 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
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
  %40 = load i8, i8* %38, align 1, !tbaa !8
  %41 = zext i8 %40 to i32
  br label %44

; <label>:42:                                     ; preds = %30
  %43 = tail call i32 @luaZ_fill(%struct.Zio* %31) #5
  br label %44

; <label>:44:                                     ; preds = %42, %36
  %45 = phi i32 [ %41, %36 ], [ %43, %42 ]
  store i32 %45, i32* %7, align 8, !tbaa !34
  br label %46

; <label>:46:                                     ; preds = %44, %28, %26
  %47 = load i32, i32* %9, align 4, !tbaa !15
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4, !tbaa !15
  %49 = icmp eq i32 %48, 2147483647
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %114, %114, %114, %46, %111, %66
  br label %10

; <label>:51:                                     ; preds = %46
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:52:                                     ; preds = %10, %10, %10, %10
  %53 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.Zio, %struct.Zio* %53, i64 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !46
  %56 = add i64 %55, -1
  store i64 %56, i64* %54, align 8, !tbaa !46
  %57 = icmp eq i64 %55, 0
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %53, i64 0, i32 1
  %60 = load i8*, i8** %59, align 8, !tbaa !48
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %59, align 8, !tbaa !48
  %62 = load i8, i8* %60, align 1, !tbaa !8
  %63 = zext i8 %62 to i32
  br label %66

; <label>:64:                                     ; preds = %52
  %65 = tail call i32 @luaZ_fill(%struct.Zio* %53) #5
  br label %66

; <label>:66:                                     ; preds = %64, %58
  %67 = phi i32 [ %63, %58 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 8, !tbaa !34
  br label %50

; <label>:68:                                     ; preds = %10
  %69 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %70 = getelementptr inbounds %struct.Zio, %struct.Zio* %69, i64 0, i32 0
  %71 = load i64, i64* %70, align 8, !tbaa !46
  %72 = add i64 %71, -1
  store i64 %72, i64* %70, align 8, !tbaa !46
  %73 = icmp eq i64 %71, 0
  br i1 %73, label %80, label %74

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.Zio, %struct.Zio* %69, i64 0, i32 1
  %76 = load i8*, i8** %75, align 8, !tbaa !48
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %75, align 8, !tbaa !48
  %78 = load i8, i8* %76, align 1, !tbaa !8
  %79 = zext i8 %78 to i32
  br label %82

; <label>:80:                                     ; preds = %68
  %81 = tail call i32 @luaZ_fill(%struct.Zio* %69) #5
  br label %82

; <label>:82:                                     ; preds = %80, %74
  %83 = phi i32 [ %79, %74 ], [ %81, %80 ]
  store i32 %83, i32* %7, align 8, !tbaa !34
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %85, label %1842

; <label>:85:                                     ; preds = %82
  %86 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %87 = getelementptr inbounds %struct.Zio, %struct.Zio* %86, i64 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !46
  %89 = add i64 %88, -1
  store i64 %89, i64* %87, align 8, !tbaa !46
  %90 = icmp eq i64 %88, 0
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %struct.Zio, %struct.Zio* %86, i64 0, i32 1
  %93 = load i8*, i8** %92, align 8, !tbaa !48
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %92, align 8, !tbaa !48
  %95 = load i8, i8* %93, align 1, !tbaa !8
  %96 = zext i8 %95 to i32
  br label %99

; <label>:97:                                     ; preds = %85
  %98 = tail call i32 @luaZ_fill(%struct.Zio* %86) #5
  br label %99

; <label>:99:                                     ; preds = %97, %91
  %100 = phi i32 [ %96, %91 ], [ %98, %97 ]
  store i32 %100, i32* %7, align 8, !tbaa !34
  %101 = icmp eq i32 %100, 91
  br i1 %101, label %104, label %102

; <label>:102:                                    ; preds = %109, %99
  %103 = phi i32 [ %100, %99 ], [ %110, %109 ]
  br label %114

; <label>:104:                                    ; preds = %99
  %105 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %106 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %107 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %106, i64 0, i32 1
  store i64 0, i64* %107, align 8, !tbaa !17
  %108 = icmp ugt i64 %105, 1
  br i1 %108, label %111, label %109

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %7, align 8, !tbaa !34
  br label %102

; <label>:111:                                    ; preds = %104
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i64 %105)
  %112 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %113 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %112, i64 0, i32 1
  store i64 0, i64* %113, align 8, !tbaa !17
  br label %50

; <label>:114:                                    ; preds = %102, %130
  %115 = phi i32 [ %131, %130 ], [ %103, %102 ]
  switch i32 %115, label %116 [
    i32 10, label %50
    i32 13, label %50
    i32 -1, label %50
  ]

; <label>:116:                                    ; preds = %114
  %117 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %118 = getelementptr inbounds %struct.Zio, %struct.Zio* %117, i64 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !46
  %120 = add i64 %119, -1
  store i64 %120, i64* %118, align 8, !tbaa !46
  %121 = icmp eq i64 %119, 0
  br i1 %121, label %128, label %122

; <label>:122:                                    ; preds = %116
  %123 = getelementptr inbounds %struct.Zio, %struct.Zio* %117, i64 0, i32 1
  %124 = load i8*, i8** %123, align 8, !tbaa !48
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %123, align 8, !tbaa !48
  %126 = load i8, i8* %124, align 1, !tbaa !8
  %127 = zext i8 %126 to i32
  br label %130

; <label>:128:                                    ; preds = %116
  %129 = tail call i32 @luaZ_fill(%struct.Zio* %117) #5
  br label %130

; <label>:130:                                    ; preds = %128, %122
  %131 = phi i32 [ %127, %122 ], [ %129, %128 ]
  store i32 %131, i32* %7, align 8, !tbaa !34
  br label %114

; <label>:132:                                    ; preds = %10
  %133 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %134 = icmp ugt i64 %133, 1
  br i1 %134, label %135, label %136

; <label>:135:                                    ; preds = %132
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i64 %133)
  br label %1842

; <label>:136:                                    ; preds = %132
  %137 = icmp eq i64 %133, 0
  br i1 %137, label %138, label %1842

; <label>:138:                                    ; preds = %136
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 293) #6
  unreachable

; <label>:139:                                    ; preds = %10
  %140 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %141 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !46
  %143 = add i64 %142, -1
  store i64 %143, i64* %141, align 8, !tbaa !46
  %144 = icmp eq i64 %142, 0
  br i1 %144, label %151, label %145

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 1
  %147 = load i8*, i8** %146, align 8, !tbaa !48
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %146, align 8, !tbaa !48
  %149 = load i8, i8* %147, align 1, !tbaa !8
  %150 = zext i8 %149 to i32
  br label %153

; <label>:151:                                    ; preds = %139
  %152 = tail call i32 @luaZ_fill(%struct.Zio* %140) #5
  br label %153

; <label>:153:                                    ; preds = %151, %145
  %154 = phi i32 [ %150, %145 ], [ %152, %151 ]
  store i32 %154, i32* %7, align 8, !tbaa !34
  %155 = icmp eq i32 %154, 61
  br i1 %155, label %156, label %1842

; <label>:156:                                    ; preds = %153
  %157 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %158 = getelementptr inbounds %struct.Zio, %struct.Zio* %157, i64 0, i32 0
  %159 = load i64, i64* %158, align 8, !tbaa !46
  %160 = add i64 %159, -1
  store i64 %160, i64* %158, align 8, !tbaa !46
  %161 = icmp eq i64 %159, 0
  br i1 %161, label %168, label %162

; <label>:162:                                    ; preds = %156
  %163 = getelementptr inbounds %struct.Zio, %struct.Zio* %157, i64 0, i32 1
  %164 = load i8*, i8** %163, align 8, !tbaa !48
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  store i8* %165, i8** %163, align 8, !tbaa !48
  %166 = load i8, i8* %164, align 1, !tbaa !8
  %167 = zext i8 %166 to i32
  br label %170

; <label>:168:                                    ; preds = %156
  %169 = tail call i32 @luaZ_fill(%struct.Zio* %157) #5
  br label %170

; <label>:170:                                    ; preds = %162, %168
  %171 = phi i32 [ %167, %162 ], [ %169, %168 ]
  store i32 %171, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:172:                                    ; preds = %10
  %173 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %174 = getelementptr inbounds %struct.Zio, %struct.Zio* %173, i64 0, i32 0
  %175 = load i64, i64* %174, align 8, !tbaa !46
  %176 = add i64 %175, -1
  store i64 %176, i64* %174, align 8, !tbaa !46
  %177 = icmp eq i64 %175, 0
  br i1 %177, label %184, label %178

; <label>:178:                                    ; preds = %172
  %179 = getelementptr inbounds %struct.Zio, %struct.Zio* %173, i64 0, i32 1
  %180 = load i8*, i8** %179, align 8, !tbaa !48
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  store i8* %181, i8** %179, align 8, !tbaa !48
  %182 = load i8, i8* %180, align 1, !tbaa !8
  %183 = zext i8 %182 to i32
  br label %186

; <label>:184:                                    ; preds = %172
  %185 = tail call i32 @luaZ_fill(%struct.Zio* %173) #5
  br label %186

; <label>:186:                                    ; preds = %184, %178
  %187 = phi i32 [ %183, %178 ], [ %185, %184 ]
  store i32 %187, i32* %7, align 8, !tbaa !34
  switch i32 %187, label %1842 [
    i32 61, label %188
    i32 60, label %204
  ]

; <label>:188:                                    ; preds = %186
  %189 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %190 = getelementptr inbounds %struct.Zio, %struct.Zio* %189, i64 0, i32 0
  %191 = load i64, i64* %190, align 8, !tbaa !46
  %192 = add i64 %191, -1
  store i64 %192, i64* %190, align 8, !tbaa !46
  %193 = icmp eq i64 %191, 0
  br i1 %193, label %200, label %194

; <label>:194:                                    ; preds = %188
  %195 = getelementptr inbounds %struct.Zio, %struct.Zio* %189, i64 0, i32 1
  %196 = load i8*, i8** %195, align 8, !tbaa !48
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  store i8* %197, i8** %195, align 8, !tbaa !48
  %198 = load i8, i8* %196, align 1, !tbaa !8
  %199 = zext i8 %198 to i32
  br label %202

; <label>:200:                                    ; preds = %188
  %201 = tail call i32 @luaZ_fill(%struct.Zio* %189) #5
  br label %202

; <label>:202:                                    ; preds = %194, %200
  %203 = phi i32 [ %199, %194 ], [ %201, %200 ]
  store i32 %203, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:204:                                    ; preds = %186
  %205 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %206 = getelementptr inbounds %struct.Zio, %struct.Zio* %205, i64 0, i32 0
  %207 = load i64, i64* %206, align 8, !tbaa !46
  %208 = add i64 %207, -1
  store i64 %208, i64* %206, align 8, !tbaa !46
  %209 = icmp eq i64 %207, 0
  br i1 %209, label %216, label %210

; <label>:210:                                    ; preds = %204
  %211 = getelementptr inbounds %struct.Zio, %struct.Zio* %205, i64 0, i32 1
  %212 = load i8*, i8** %211, align 8, !tbaa !48
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  store i8* %213, i8** %211, align 8, !tbaa !48
  %214 = load i8, i8* %212, align 1, !tbaa !8
  %215 = zext i8 %214 to i32
  br label %218

; <label>:216:                                    ; preds = %204
  %217 = tail call i32 @luaZ_fill(%struct.Zio* %205) #5
  br label %218

; <label>:218:                                    ; preds = %210, %216
  %219 = phi i32 [ %215, %210 ], [ %217, %216 ]
  store i32 %219, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:220:                                    ; preds = %10
  %221 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
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
  %230 = load i8, i8* %228, align 1, !tbaa !8
  %231 = zext i8 %230 to i32
  br label %234

; <label>:232:                                    ; preds = %220
  %233 = tail call i32 @luaZ_fill(%struct.Zio* %221) #5
  br label %234

; <label>:234:                                    ; preds = %232, %226
  %235 = phi i32 [ %231, %226 ], [ %233, %232 ]
  store i32 %235, i32* %7, align 8, !tbaa !34
  switch i32 %235, label %1842 [
    i32 61, label %236
    i32 62, label %252
  ]

; <label>:236:                                    ; preds = %234
  %237 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %238 = getelementptr inbounds %struct.Zio, %struct.Zio* %237, i64 0, i32 0
  %239 = load i64, i64* %238, align 8, !tbaa !46
  %240 = add i64 %239, -1
  store i64 %240, i64* %238, align 8, !tbaa !46
  %241 = icmp eq i64 %239, 0
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %236
  %243 = getelementptr inbounds %struct.Zio, %struct.Zio* %237, i64 0, i32 1
  %244 = load i8*, i8** %243, align 8, !tbaa !48
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  store i8* %245, i8** %243, align 8, !tbaa !48
  %246 = load i8, i8* %244, align 1, !tbaa !8
  %247 = zext i8 %246 to i32
  br label %250

; <label>:248:                                    ; preds = %236
  %249 = tail call i32 @luaZ_fill(%struct.Zio* %237) #5
  br label %250

; <label>:250:                                    ; preds = %242, %248
  %251 = phi i32 [ %247, %242 ], [ %249, %248 ]
  store i32 %251, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:252:                                    ; preds = %234
  %253 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %254 = getelementptr inbounds %struct.Zio, %struct.Zio* %253, i64 0, i32 0
  %255 = load i64, i64* %254, align 8, !tbaa !46
  %256 = add i64 %255, -1
  store i64 %256, i64* %254, align 8, !tbaa !46
  %257 = icmp eq i64 %255, 0
  br i1 %257, label %264, label %258

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds %struct.Zio, %struct.Zio* %253, i64 0, i32 1
  %260 = load i8*, i8** %259, align 8, !tbaa !48
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  store i8* %261, i8** %259, align 8, !tbaa !48
  %262 = load i8, i8* %260, align 1, !tbaa !8
  %263 = zext i8 %262 to i32
  br label %266

; <label>:264:                                    ; preds = %252
  %265 = tail call i32 @luaZ_fill(%struct.Zio* %253) #5
  br label %266

; <label>:266:                                    ; preds = %258, %264
  %267 = phi i32 [ %263, %258 ], [ %265, %264 ]
  store i32 %267, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:268:                                    ; preds = %10
  %269 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %270 = getelementptr inbounds %struct.Zio, %struct.Zio* %269, i64 0, i32 0
  %271 = load i64, i64* %270, align 8, !tbaa !46
  %272 = add i64 %271, -1
  store i64 %272, i64* %270, align 8, !tbaa !46
  %273 = icmp eq i64 %271, 0
  br i1 %273, label %280, label %274

; <label>:274:                                    ; preds = %268
  %275 = getelementptr inbounds %struct.Zio, %struct.Zio* %269, i64 0, i32 1
  %276 = load i8*, i8** %275, align 8, !tbaa !48
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  store i8* %277, i8** %275, align 8, !tbaa !48
  %278 = load i8, i8* %276, align 1, !tbaa !8
  %279 = zext i8 %278 to i32
  br label %282

; <label>:280:                                    ; preds = %268
  %281 = tail call i32 @luaZ_fill(%struct.Zio* %269) #5
  br label %282

; <label>:282:                                    ; preds = %280, %274
  %283 = phi i32 [ %279, %274 ], [ %281, %280 ]
  store i32 %283, i32* %7, align 8, !tbaa !34
  %284 = icmp eq i32 %283, 47
  br i1 %284, label %285, label %1842

; <label>:285:                                    ; preds = %282
  %286 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %287 = getelementptr inbounds %struct.Zio, %struct.Zio* %286, i64 0, i32 0
  %288 = load i64, i64* %287, align 8, !tbaa !46
  %289 = add i64 %288, -1
  store i64 %289, i64* %287, align 8, !tbaa !46
  %290 = icmp eq i64 %288, 0
  br i1 %290, label %297, label %291

; <label>:291:                                    ; preds = %285
  %292 = getelementptr inbounds %struct.Zio, %struct.Zio* %286, i64 0, i32 1
  %293 = load i8*, i8** %292, align 8, !tbaa !48
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  store i8* %294, i8** %292, align 8, !tbaa !48
  %295 = load i8, i8* %293, align 1, !tbaa !8
  %296 = zext i8 %295 to i32
  br label %299

; <label>:297:                                    ; preds = %285
  %298 = tail call i32 @luaZ_fill(%struct.Zio* %286) #5
  br label %299

; <label>:299:                                    ; preds = %291, %297
  %300 = phi i32 [ %296, %291 ], [ %298, %297 ]
  store i32 %300, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:301:                                    ; preds = %10
  %302 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %303 = getelementptr inbounds %struct.Zio, %struct.Zio* %302, i64 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !46
  %305 = add i64 %304, -1
  store i64 %305, i64* %303, align 8, !tbaa !46
  %306 = icmp eq i64 %304, 0
  br i1 %306, label %313, label %307

; <label>:307:                                    ; preds = %301
  %308 = getelementptr inbounds %struct.Zio, %struct.Zio* %302, i64 0, i32 1
  %309 = load i8*, i8** %308, align 8, !tbaa !48
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  store i8* %310, i8** %308, align 8, !tbaa !48
  %311 = load i8, i8* %309, align 1, !tbaa !8
  %312 = zext i8 %311 to i32
  br label %315

; <label>:313:                                    ; preds = %301
  %314 = tail call i32 @luaZ_fill(%struct.Zio* %302) #5
  br label %315

; <label>:315:                                    ; preds = %313, %307
  %316 = phi i32 [ %312, %307 ], [ %314, %313 ]
  store i32 %316, i32* %7, align 8, !tbaa !34
  %317 = icmp eq i32 %316, 61
  br i1 %317, label %318, label %1842

; <label>:318:                                    ; preds = %315
  %319 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %320 = getelementptr inbounds %struct.Zio, %struct.Zio* %319, i64 0, i32 0
  %321 = load i64, i64* %320, align 8, !tbaa !46
  %322 = add i64 %321, -1
  store i64 %322, i64* %320, align 8, !tbaa !46
  %323 = icmp eq i64 %321, 0
  br i1 %323, label %330, label %324

; <label>:324:                                    ; preds = %318
  %325 = getelementptr inbounds %struct.Zio, %struct.Zio* %319, i64 0, i32 1
  %326 = load i8*, i8** %325, align 8, !tbaa !48
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  store i8* %327, i8** %325, align 8, !tbaa !48
  %328 = load i8, i8* %326, align 1, !tbaa !8
  %329 = zext i8 %328 to i32
  br label %332

; <label>:330:                                    ; preds = %318
  %331 = tail call i32 @luaZ_fill(%struct.Zio* %319) #5
  br label %332

; <label>:332:                                    ; preds = %324, %330
  %333 = phi i32 [ %329, %324 ], [ %331, %330 ]
  store i32 %333, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:334:                                    ; preds = %10
  %335 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %336 = getelementptr inbounds %struct.Zio, %struct.Zio* %335, i64 0, i32 0
  %337 = load i64, i64* %336, align 8, !tbaa !46
  %338 = add i64 %337, -1
  store i64 %338, i64* %336, align 8, !tbaa !46
  %339 = icmp eq i64 %337, 0
  br i1 %339, label %346, label %340

; <label>:340:                                    ; preds = %334
  %341 = getelementptr inbounds %struct.Zio, %struct.Zio* %335, i64 0, i32 1
  %342 = load i8*, i8** %341, align 8, !tbaa !48
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  store i8* %343, i8** %341, align 8, !tbaa !48
  %344 = load i8, i8* %342, align 1, !tbaa !8
  %345 = zext i8 %344 to i32
  br label %348

; <label>:346:                                    ; preds = %334
  %347 = tail call i32 @luaZ_fill(%struct.Zio* %335) #5
  br label %348

; <label>:348:                                    ; preds = %346, %340
  %349 = phi i32 [ %345, %340 ], [ %347, %346 ]
  store i32 %349, i32* %7, align 8, !tbaa !34
  %350 = icmp eq i32 %349, 58
  br i1 %350, label %351, label %1842

; <label>:351:                                    ; preds = %348
  %352 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %353 = getelementptr inbounds %struct.Zio, %struct.Zio* %352, i64 0, i32 0
  %354 = load i64, i64* %353, align 8, !tbaa !46
  %355 = add i64 %354, -1
  store i64 %355, i64* %353, align 8, !tbaa !46
  %356 = icmp eq i64 %354, 0
  br i1 %356, label %363, label %357

; <label>:357:                                    ; preds = %351
  %358 = getelementptr inbounds %struct.Zio, %struct.Zio* %352, i64 0, i32 1
  %359 = load i8*, i8** %358, align 8, !tbaa !48
  %360 = getelementptr inbounds i8, i8* %359, i64 1
  store i8* %360, i8** %358, align 8, !tbaa !48
  %361 = load i8, i8* %359, align 1, !tbaa !8
  %362 = zext i8 %361 to i32
  br label %365

; <label>:363:                                    ; preds = %351
  %364 = tail call i32 @luaZ_fill(%struct.Zio* %352) #5
  br label %365

; <label>:365:                                    ; preds = %357, %363
  %366 = phi i32 [ %362, %357 ], [ %364, %363 ]
  store i32 %366, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:367:                                    ; preds = %10, %10
  %368 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %369 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %368, i64 0, i32 1
  %370 = load i64, i64* %369, align 8, !tbaa !17
  %371 = add i64 %370, 1
  %372 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %368, i64 0, i32 2
  %373 = load i64, i64* %372, align 8, !tbaa !20
  %374 = icmp ugt i64 %371, %373
  br i1 %374, label %378, label %375

; <label>:375:                                    ; preds = %367
  %376 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %368, i64 0, i32 0
  %377 = load i8*, i8** %376, align 8, !tbaa !21
  br label %390

; <label>:378:                                    ; preds = %367
  %379 = icmp ugt i64 %373, 4611686018427387902
  br i1 %379, label %380, label %381

; <label>:380:                                    ; preds = %378
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:381:                                    ; preds = %378
  %382 = shl i64 %373, 1
  %383 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %384 = load %struct.lua_State*, %struct.lua_State** %383, align 8, !tbaa !9
  %385 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %368, i64 0, i32 0
  %386 = load i8*, i8** %385, align 8, !tbaa !21
  %387 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %384, i8* %386, i64 %373, i64 %382) #5
  store i8* %387, i8** %385, align 8, !tbaa !21
  store i64 %382, i64* %372, align 8, !tbaa !20
  %388 = load i64, i64* %369, align 8, !tbaa !17
  %389 = add i64 %388, 1
  br label %390

; <label>:390:                                    ; preds = %381, %375
  %391 = phi i64 [ %371, %375 ], [ %389, %381 ]
  %392 = phi i64 [ %370, %375 ], [ %388, %381 ]
  %393 = phi i8* [ %377, %375 ], [ %387, %381 ]
  %394 = trunc i32 %11 to i8
  store i64 %391, i64* %369, align 8, !tbaa !17
  %395 = getelementptr inbounds i8, i8* %393, i64 %392
  store i8 %394, i8* %395, align 1, !tbaa !8
  %396 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %397 = getelementptr inbounds %struct.Zio, %struct.Zio* %396, i64 0, i32 0
  %398 = load i64, i64* %397, align 8, !tbaa !46
  %399 = add i64 %398, -1
  store i64 %399, i64* %397, align 8, !tbaa !46
  %400 = icmp eq i64 %398, 0
  br i1 %400, label %407, label %401

; <label>:401:                                    ; preds = %390
  %402 = getelementptr inbounds %struct.Zio, %struct.Zio* %396, i64 0, i32 1
  %403 = load i8*, i8** %402, align 8, !tbaa !48
  %404 = getelementptr inbounds i8, i8* %403, i64 1
  store i8* %404, i8** %402, align 8, !tbaa !48
  %405 = load i8, i8* %403, align 1, !tbaa !8
  %406 = zext i8 %405 to i32
  br label %409

; <label>:407:                                    ; preds = %390
  %408 = tail call i32 @luaZ_fill(%struct.Zio* %396) #5
  br label %409

; <label>:409:                                    ; preds = %407, %401
  %410 = phi i32 [ %406, %401 ], [ %408, %407 ]
  store i32 %410, i32* %7, align 8, !tbaa !34
  %411 = icmp eq i32 %410, %11
  br i1 %411, label %1539, label %412

; <label>:412:                                    ; preds = %409
  %413 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %414 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %415

; <label>:415:                                    ; preds = %1536, %412
  %416 = phi i32 [ %410, %412 ], [ %1537, %1536 ]
  switch i32 %416, label %1493 [
    i32 -1, label %417
    i32 10, label %418
    i32 13, label %418
    i32 92, label %419
  ]

; <label>:417:                                    ; preds = %415
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 289) #7
  unreachable

; <label>:418:                                    ; preds = %415, %415
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:419:                                    ; preds = %415
  %420 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %421 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %420, i64 0, i32 1
  %422 = load i64, i64* %421, align 8, !tbaa !17
  %423 = add i64 %422, 1
  %424 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %420, i64 0, i32 2
  %425 = load i64, i64* %424, align 8, !tbaa !20
  %426 = icmp ugt i64 %423, %425
  br i1 %426, label %430, label %427

; <label>:427:                                    ; preds = %419
  %428 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %420, i64 0, i32 0
  %429 = load i8*, i8** %428, align 8, !tbaa !21
  br label %441

; <label>:430:                                    ; preds = %419
  %431 = icmp ugt i64 %425, 4611686018427387902
  br i1 %431, label %432, label %433

; <label>:432:                                    ; preds = %430
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:433:                                    ; preds = %430
  %434 = shl i64 %425, 1
  %435 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %436 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %420, i64 0, i32 0
  %437 = load i8*, i8** %436, align 8, !tbaa !21
  %438 = call i8* @luaM_saferealloc_(%struct.lua_State* %435, i8* %437, i64 %425, i64 %434) #5
  store i8* %438, i8** %436, align 8, !tbaa !21
  store i64 %434, i64* %424, align 8, !tbaa !20
  %439 = load i64, i64* %421, align 8, !tbaa !17
  %440 = add i64 %439, 1
  br label %441

; <label>:441:                                    ; preds = %433, %427
  %442 = phi i64 [ %423, %427 ], [ %440, %433 ]
  %443 = phi i64 [ %422, %427 ], [ %439, %433 ]
  %444 = phi i8* [ %429, %427 ], [ %438, %433 ]
  store i64 %442, i64* %421, align 8, !tbaa !17
  %445 = getelementptr inbounds i8, i8* %444, i64 %443
  store i8 92, i8* %445, align 1, !tbaa !8
  %446 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %447 = getelementptr inbounds %struct.Zio, %struct.Zio* %446, i64 0, i32 0
  %448 = load i64, i64* %447, align 8, !tbaa !46
  %449 = add i64 %448, -1
  store i64 %449, i64* %447, align 8, !tbaa !46
  %450 = icmp eq i64 %448, 0
  br i1 %450, label %457, label %451

; <label>:451:                                    ; preds = %441
  %452 = getelementptr inbounds %struct.Zio, %struct.Zio* %446, i64 0, i32 1
  %453 = load i8*, i8** %452, align 8, !tbaa !48
  %454 = getelementptr inbounds i8, i8* %453, i64 1
  store i8* %454, i8** %452, align 8, !tbaa !48
  %455 = load i8, i8* %453, align 1, !tbaa !8
  %456 = zext i8 %455 to i32
  br label %459

; <label>:457:                                    ; preds = %441
  %458 = call i32 @luaZ_fill(%struct.Zio* %446) #5
  br label %459

; <label>:459:                                    ; preds = %457, %451
  %460 = phi i32 [ %456, %451 ], [ %458, %457 ]
  store i32 %460, i32* %7, align 8, !tbaa !34
  switch i32 %460, label %1192 [
    i32 97, label %1447
    i32 98, label %461
    i32 102, label %462
    i32 110, label %463
    i32 114, label %464
    i32 116, label %465
    i32 118, label %466
    i32 120, label %467
    i32 117, label %666
    i32 10, label %1059
    i32 13, label %1059
    i32 92, label %1098
    i32 34, label %1098
    i32 39, label %1098
    i32 -1, label %1536
    i32 122, label %1099
  ]

; <label>:461:                                    ; preds = %459
  br label %1447

; <label>:462:                                    ; preds = %459
  br label %1447

; <label>:463:                                    ; preds = %459
  br label %1447

; <label>:464:                                    ; preds = %459
  br label %1447

; <label>:465:                                    ; preds = %459
  br label %1447

; <label>:466:                                    ; preds = %459
  br label %1447

; <label>:467:                                    ; preds = %459
  %468 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %469 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %468, i64 0, i32 1
  %470 = load i64, i64* %469, align 8, !tbaa !17
  %471 = add i64 %470, 1
  %472 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %468, i64 0, i32 2
  %473 = load i64, i64* %472, align 8, !tbaa !20
  %474 = icmp ugt i64 %471, %473
  br i1 %474, label %478, label %475

; <label>:475:                                    ; preds = %467
  %476 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %468, i64 0, i32 0
  %477 = load i8*, i8** %476, align 8, !tbaa !21
  br label %489

; <label>:478:                                    ; preds = %467
  %479 = icmp ugt i64 %473, 4611686018427387902
  br i1 %479, label %480, label %481

; <label>:480:                                    ; preds = %478
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:481:                                    ; preds = %478
  %482 = shl i64 %473, 1
  %483 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %484 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %468, i64 0, i32 0
  %485 = load i8*, i8** %484, align 8, !tbaa !21
  %486 = call i8* @luaM_saferealloc_(%struct.lua_State* %483, i8* %485, i64 %473, i64 %482) #5
  store i8* %486, i8** %484, align 8, !tbaa !21
  store i64 %482, i64* %472, align 8, !tbaa !20
  %487 = load i64, i64* %469, align 8, !tbaa !17
  %488 = add i64 %487, 1
  br label %489

; <label>:489:                                    ; preds = %481, %475
  %490 = phi i64 [ %471, %475 ], [ %488, %481 ]
  %491 = phi i64 [ %470, %475 ], [ %487, %481 ]
  %492 = phi i8* [ %477, %475 ], [ %486, %481 ]
  store i64 %490, i64* %469, align 8, !tbaa !17
  %493 = getelementptr inbounds i8, i8* %492, i64 %491
  store i8 120, i8* %493, align 1, !tbaa !8
  %494 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %495 = getelementptr inbounds %struct.Zio, %struct.Zio* %494, i64 0, i32 0
  %496 = load i64, i64* %495, align 8, !tbaa !46
  %497 = add i64 %496, -1
  store i64 %497, i64* %495, align 8, !tbaa !46
  %498 = icmp eq i64 %496, 0
  br i1 %498, label %505, label %499

; <label>:499:                                    ; preds = %489
  %500 = getelementptr inbounds %struct.Zio, %struct.Zio* %494, i64 0, i32 1
  %501 = load i8*, i8** %500, align 8, !tbaa !48
  %502 = getelementptr inbounds i8, i8* %501, i64 1
  store i8* %502, i8** %500, align 8, !tbaa !48
  %503 = load i8, i8* %501, align 1, !tbaa !8
  %504 = zext i8 %503 to i32
  br label %507

; <label>:505:                                    ; preds = %489
  %506 = call i32 @luaZ_fill(%struct.Zio* %494) #5
  br label %507

; <label>:507:                                    ; preds = %505, %499
  %508 = phi i32 [ %504, %499 ], [ %506, %505 ]
  store i32 %508, i32* %7, align 8, !tbaa !34
  %509 = add nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %510
  %512 = load i8, i8* %511, align 1, !tbaa !8
  %513 = and i8 %512, 16
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %515, label %561

; <label>:515:                                    ; preds = %507
  %516 = icmp eq i32 %508, -1
  br i1 %516, label %560, label %517

; <label>:517:                                    ; preds = %515
  %518 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %519 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %518, i64 0, i32 1
  %520 = load i64, i64* %519, align 8, !tbaa !17
  %521 = add i64 %520, 1
  %522 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %518, i64 0, i32 2
  %523 = load i64, i64* %522, align 8, !tbaa !20
  %524 = icmp ugt i64 %521, %523
  br i1 %524, label %528, label %525

; <label>:525:                                    ; preds = %517
  %526 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %518, i64 0, i32 0
  %527 = load i8*, i8** %526, align 8, !tbaa !21
  br label %539

; <label>:528:                                    ; preds = %517
  %529 = icmp ugt i64 %523, 4611686018427387902
  br i1 %529, label %530, label %531

; <label>:530:                                    ; preds = %528
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:531:                                    ; preds = %528
  %532 = shl i64 %523, 1
  %533 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %534 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %518, i64 0, i32 0
  %535 = load i8*, i8** %534, align 8, !tbaa !21
  %536 = call i8* @luaM_saferealloc_(%struct.lua_State* %533, i8* %535, i64 %523, i64 %532) #5
  store i8* %536, i8** %534, align 8, !tbaa !21
  store i64 %532, i64* %522, align 8, !tbaa !20
  %537 = load i64, i64* %519, align 8, !tbaa !17
  %538 = add i64 %537, 1
  br label %539

; <label>:539:                                    ; preds = %531, %525
  %540 = phi i64 [ %521, %525 ], [ %538, %531 ]
  %541 = phi i64 [ %520, %525 ], [ %537, %531 ]
  %542 = phi i8* [ %527, %525 ], [ %536, %531 ]
  %543 = trunc i32 %508 to i8
  store i64 %540, i64* %519, align 8, !tbaa !17
  %544 = getelementptr inbounds i8, i8* %542, i64 %541
  store i8 %543, i8* %544, align 1, !tbaa !8
  %545 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %546 = getelementptr inbounds %struct.Zio, %struct.Zio* %545, i64 0, i32 0
  %547 = load i64, i64* %546, align 8, !tbaa !46
  %548 = add i64 %547, -1
  store i64 %548, i64* %546, align 8, !tbaa !46
  %549 = icmp eq i64 %547, 0
  br i1 %549, label %556, label %550

; <label>:550:                                    ; preds = %539
  %551 = getelementptr inbounds %struct.Zio, %struct.Zio* %545, i64 0, i32 1
  %552 = load i8*, i8** %551, align 8, !tbaa !48
  %553 = getelementptr inbounds i8, i8* %552, i64 1
  store i8* %553, i8** %551, align 8, !tbaa !48
  %554 = load i8, i8* %552, align 1, !tbaa !8
  %555 = zext i8 %554 to i32
  br label %558

; <label>:556:                                    ; preds = %539
  %557 = call i32 @luaZ_fill(%struct.Zio* %545) #5
  br label %558

; <label>:558:                                    ; preds = %556, %550
  %559 = phi i32 [ %555, %550 ], [ %557, %556 ]
  store i32 %559, i32* %7, align 8, !tbaa !34
  br label %560

; <label>:560:                                    ; preds = %558, %515
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:561:                                    ; preds = %507
  %562 = call i32 @luaO_hexavalue(i32 %508) #5
  %563 = shl i32 %562, 4
  %564 = load i32, i32* %7, align 8, !tbaa !34
  %565 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %566 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %565, i64 0, i32 1
  %567 = load i64, i64* %566, align 8, !tbaa !17
  %568 = add i64 %567, 1
  %569 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %565, i64 0, i32 2
  %570 = load i64, i64* %569, align 8, !tbaa !20
  %571 = icmp ugt i64 %568, %570
  br i1 %571, label %575, label %572

; <label>:572:                                    ; preds = %561
  %573 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %565, i64 0, i32 0
  %574 = load i8*, i8** %573, align 8, !tbaa !21
  br label %586

; <label>:575:                                    ; preds = %561
  %576 = icmp ugt i64 %570, 4611686018427387902
  br i1 %576, label %577, label %578

; <label>:577:                                    ; preds = %575
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:578:                                    ; preds = %575
  %579 = shl i64 %570, 1
  %580 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %581 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %565, i64 0, i32 0
  %582 = load i8*, i8** %581, align 8, !tbaa !21
  %583 = call i8* @luaM_saferealloc_(%struct.lua_State* %580, i8* %582, i64 %570, i64 %579) #5
  store i8* %583, i8** %581, align 8, !tbaa !21
  store i64 %579, i64* %569, align 8, !tbaa !20
  %584 = load i64, i64* %566, align 8, !tbaa !17
  %585 = add i64 %584, 1
  br label %586

; <label>:586:                                    ; preds = %578, %572
  %587 = phi i64 [ %568, %572 ], [ %585, %578 ]
  %588 = phi i64 [ %567, %572 ], [ %584, %578 ]
  %589 = phi i8* [ %574, %572 ], [ %583, %578 ]
  %590 = trunc i32 %564 to i8
  store i64 %587, i64* %566, align 8, !tbaa !17
  %591 = getelementptr inbounds i8, i8* %589, i64 %588
  store i8 %590, i8* %591, align 1, !tbaa !8
  %592 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %593 = getelementptr inbounds %struct.Zio, %struct.Zio* %592, i64 0, i32 0
  %594 = load i64, i64* %593, align 8, !tbaa !46
  %595 = add i64 %594, -1
  store i64 %595, i64* %593, align 8, !tbaa !46
  %596 = icmp eq i64 %594, 0
  br i1 %596, label %603, label %597

; <label>:597:                                    ; preds = %586
  %598 = getelementptr inbounds %struct.Zio, %struct.Zio* %592, i64 0, i32 1
  %599 = load i8*, i8** %598, align 8, !tbaa !48
  %600 = getelementptr inbounds i8, i8* %599, i64 1
  store i8* %600, i8** %598, align 8, !tbaa !48
  %601 = load i8, i8* %599, align 1, !tbaa !8
  %602 = zext i8 %601 to i32
  br label %605

; <label>:603:                                    ; preds = %586
  %604 = call i32 @luaZ_fill(%struct.Zio* %592) #5
  br label %605

; <label>:605:                                    ; preds = %603, %597
  %606 = phi i32 [ %602, %597 ], [ %604, %603 ]
  store i32 %606, i32* %7, align 8, !tbaa !34
  %607 = add nsw i32 %606, 1
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %608
  %610 = load i8, i8* %609, align 1, !tbaa !8
  %611 = and i8 %610, 16
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %613, label %659

; <label>:613:                                    ; preds = %605
  %614 = icmp eq i32 %606, -1
  br i1 %614, label %658, label %615

; <label>:615:                                    ; preds = %613
  %616 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %617 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %616, i64 0, i32 1
  %618 = load i64, i64* %617, align 8, !tbaa !17
  %619 = add i64 %618, 1
  %620 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %616, i64 0, i32 2
  %621 = load i64, i64* %620, align 8, !tbaa !20
  %622 = icmp ugt i64 %619, %621
  br i1 %622, label %626, label %623

; <label>:623:                                    ; preds = %615
  %624 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %616, i64 0, i32 0
  %625 = load i8*, i8** %624, align 8, !tbaa !21
  br label %637

; <label>:626:                                    ; preds = %615
  %627 = icmp ugt i64 %621, 4611686018427387902
  br i1 %627, label %628, label %629

; <label>:628:                                    ; preds = %626
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:629:                                    ; preds = %626
  %630 = shl i64 %621, 1
  %631 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %632 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %616, i64 0, i32 0
  %633 = load i8*, i8** %632, align 8, !tbaa !21
  %634 = call i8* @luaM_saferealloc_(%struct.lua_State* %631, i8* %633, i64 %621, i64 %630) #5
  store i8* %634, i8** %632, align 8, !tbaa !21
  store i64 %630, i64* %620, align 8, !tbaa !20
  %635 = load i64, i64* %617, align 8, !tbaa !17
  %636 = add i64 %635, 1
  br label %637

; <label>:637:                                    ; preds = %629, %623
  %638 = phi i64 [ %619, %623 ], [ %636, %629 ]
  %639 = phi i64 [ %618, %623 ], [ %635, %629 ]
  %640 = phi i8* [ %625, %623 ], [ %634, %629 ]
  %641 = trunc i32 %606 to i8
  store i64 %638, i64* %617, align 8, !tbaa !17
  %642 = getelementptr inbounds i8, i8* %640, i64 %639
  store i8 %641, i8* %642, align 1, !tbaa !8
  %643 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %644 = getelementptr inbounds %struct.Zio, %struct.Zio* %643, i64 0, i32 0
  %645 = load i64, i64* %644, align 8, !tbaa !46
  %646 = add i64 %645, -1
  store i64 %646, i64* %644, align 8, !tbaa !46
  %647 = icmp eq i64 %645, 0
  br i1 %647, label %654, label %648

; <label>:648:                                    ; preds = %637
  %649 = getelementptr inbounds %struct.Zio, %struct.Zio* %643, i64 0, i32 1
  %650 = load i8*, i8** %649, align 8, !tbaa !48
  %651 = getelementptr inbounds i8, i8* %650, i64 1
  store i8* %651, i8** %649, align 8, !tbaa !48
  %652 = load i8, i8* %650, align 1, !tbaa !8
  %653 = zext i8 %652 to i32
  br label %656

; <label>:654:                                    ; preds = %637
  %655 = call i32 @luaZ_fill(%struct.Zio* %643) #5
  br label %656

; <label>:656:                                    ; preds = %654, %648
  %657 = phi i32 [ %653, %648 ], [ %655, %654 ]
  store i32 %657, i32* %7, align 8, !tbaa !34
  br label %658

; <label>:658:                                    ; preds = %656, %613
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:659:                                    ; preds = %605
  %660 = call i32 @luaO_hexavalue(i32 %606) #5
  %661 = add nsw i32 %660, %563
  %662 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %663 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %662, i64 0, i32 1
  %664 = load i64, i64* %663, align 8, !tbaa !17
  %665 = add i64 %664, -2
  store i64 %665, i64* %663, align 8, !tbaa !17
  br label %1447

; <label>:666:                                    ; preds = %459
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %414) #5
  %667 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %668 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %667, i64 0, i32 1
  %669 = load i64, i64* %668, align 8, !tbaa !17
  %670 = add i64 %669, 1
  %671 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %667, i64 0, i32 2
  %672 = load i64, i64* %671, align 8, !tbaa !20
  %673 = icmp ugt i64 %670, %672
  br i1 %673, label %677, label %674

; <label>:674:                                    ; preds = %666
  %675 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %667, i64 0, i32 0
  %676 = load i8*, i8** %675, align 8, !tbaa !21
  br label %688

; <label>:677:                                    ; preds = %666
  %678 = icmp ugt i64 %672, 4611686018427387902
  br i1 %678, label %679, label %680

; <label>:679:                                    ; preds = %677
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:680:                                    ; preds = %677
  %681 = shl i64 %672, 1
  %682 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %683 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %667, i64 0, i32 0
  %684 = load i8*, i8** %683, align 8, !tbaa !21
  %685 = call i8* @luaM_saferealloc_(%struct.lua_State* %682, i8* %684, i64 %672, i64 %681) #5
  store i8* %685, i8** %683, align 8, !tbaa !21
  store i64 %681, i64* %671, align 8, !tbaa !20
  %686 = load i64, i64* %668, align 8, !tbaa !17
  %687 = add i64 %686, 1
  br label %688

; <label>:688:                                    ; preds = %680, %674
  %689 = phi i64 [ %670, %674 ], [ %687, %680 ]
  %690 = phi i64 [ %669, %674 ], [ %686, %680 ]
  %691 = phi i8* [ %676, %674 ], [ %685, %680 ]
  store i64 %689, i64* %668, align 8, !tbaa !17
  %692 = getelementptr inbounds i8, i8* %691, i64 %690
  store i8 117, i8* %692, align 1, !tbaa !8
  %693 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %694 = getelementptr inbounds %struct.Zio, %struct.Zio* %693, i64 0, i32 0
  %695 = load i64, i64* %694, align 8, !tbaa !46
  %696 = add i64 %695, -1
  store i64 %696, i64* %694, align 8, !tbaa !46
  %697 = icmp eq i64 %695, 0
  br i1 %697, label %704, label %698

; <label>:698:                                    ; preds = %688
  %699 = getelementptr inbounds %struct.Zio, %struct.Zio* %693, i64 0, i32 1
  %700 = load i8*, i8** %699, align 8, !tbaa !48
  %701 = getelementptr inbounds i8, i8* %700, i64 1
  store i8* %701, i8** %699, align 8, !tbaa !48
  %702 = load i8, i8* %700, align 1, !tbaa !8
  %703 = zext i8 %702 to i32
  br label %706

; <label>:704:                                    ; preds = %688
  %705 = call i32 @luaZ_fill(%struct.Zio* %693) #5
  br label %706

; <label>:706:                                    ; preds = %704, %698
  %707 = phi i32 [ %703, %698 ], [ %705, %704 ]
  store i32 %707, i32* %7, align 8, !tbaa !34
  switch i32 %707, label %708 [
    i32 123, label %752
    i32 -1, label %751
  ]

; <label>:708:                                    ; preds = %706
  %709 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %710 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %709, i64 0, i32 1
  %711 = load i64, i64* %710, align 8, !tbaa !17
  %712 = add i64 %711, 1
  %713 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %709, i64 0, i32 2
  %714 = load i64, i64* %713, align 8, !tbaa !20
  %715 = icmp ugt i64 %712, %714
  br i1 %715, label %719, label %716

; <label>:716:                                    ; preds = %708
  %717 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %709, i64 0, i32 0
  %718 = load i8*, i8** %717, align 8, !tbaa !21
  br label %730

; <label>:719:                                    ; preds = %708
  %720 = icmp ugt i64 %714, 4611686018427387902
  br i1 %720, label %721, label %722

; <label>:721:                                    ; preds = %719
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:722:                                    ; preds = %719
  %723 = shl i64 %714, 1
  %724 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %725 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %709, i64 0, i32 0
  %726 = load i8*, i8** %725, align 8, !tbaa !21
  %727 = call i8* @luaM_saferealloc_(%struct.lua_State* %724, i8* %726, i64 %714, i64 %723) #5
  store i8* %727, i8** %725, align 8, !tbaa !21
  store i64 %723, i64* %713, align 8, !tbaa !20
  %728 = load i64, i64* %710, align 8, !tbaa !17
  %729 = add i64 %728, 1
  br label %730

; <label>:730:                                    ; preds = %722, %716
  %731 = phi i64 [ %712, %716 ], [ %729, %722 ]
  %732 = phi i64 [ %711, %716 ], [ %728, %722 ]
  %733 = phi i8* [ %718, %716 ], [ %727, %722 ]
  %734 = trunc i32 %707 to i8
  store i64 %731, i64* %710, align 8, !tbaa !17
  %735 = getelementptr inbounds i8, i8* %733, i64 %732
  store i8 %734, i8* %735, align 1, !tbaa !8
  %736 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %737 = getelementptr inbounds %struct.Zio, %struct.Zio* %736, i64 0, i32 0
  %738 = load i64, i64* %737, align 8, !tbaa !46
  %739 = add i64 %738, -1
  store i64 %739, i64* %737, align 8, !tbaa !46
  %740 = icmp eq i64 %738, 0
  br i1 %740, label %747, label %741

; <label>:741:                                    ; preds = %730
  %742 = getelementptr inbounds %struct.Zio, %struct.Zio* %736, i64 0, i32 1
  %743 = load i8*, i8** %742, align 8, !tbaa !48
  %744 = getelementptr inbounds i8, i8* %743, i64 1
  store i8* %744, i8** %742, align 8, !tbaa !48
  %745 = load i8, i8* %743, align 1, !tbaa !8
  %746 = zext i8 %745 to i32
  br label %749

; <label>:747:                                    ; preds = %730
  %748 = call i32 @luaZ_fill(%struct.Zio* %736) #5
  br label %749

; <label>:749:                                    ; preds = %747, %741
  %750 = phi i32 [ %746, %741 ], [ %748, %747 ]
  store i32 %750, i32* %7, align 8, !tbaa !34
  br label %751

; <label>:751:                                    ; preds = %706, %749
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:752:                                    ; preds = %706
  %753 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %754 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %753, i64 0, i32 1
  %755 = load i64, i64* %754, align 8, !tbaa !17
  %756 = add i64 %755, 1
  %757 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %753, i64 0, i32 2
  %758 = load i64, i64* %757, align 8, !tbaa !20
  %759 = icmp ugt i64 %756, %758
  br i1 %759, label %763, label %760

; <label>:760:                                    ; preds = %752
  %761 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %753, i64 0, i32 0
  %762 = load i8*, i8** %761, align 8, !tbaa !21
  br label %774

; <label>:763:                                    ; preds = %752
  %764 = icmp ugt i64 %758, 4611686018427387902
  br i1 %764, label %765, label %766

; <label>:765:                                    ; preds = %763
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:766:                                    ; preds = %763
  %767 = shl i64 %758, 1
  %768 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %769 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %753, i64 0, i32 0
  %770 = load i8*, i8** %769, align 8, !tbaa !21
  %771 = call i8* @luaM_saferealloc_(%struct.lua_State* %768, i8* %770, i64 %758, i64 %767) #5
  store i8* %771, i8** %769, align 8, !tbaa !21
  store i64 %767, i64* %757, align 8, !tbaa !20
  %772 = load i64, i64* %754, align 8, !tbaa !17
  %773 = add i64 %772, 1
  br label %774

; <label>:774:                                    ; preds = %766, %760
  %775 = phi i64 [ %756, %760 ], [ %773, %766 ]
  %776 = phi i64 [ %755, %760 ], [ %772, %766 ]
  %777 = phi i8* [ %762, %760 ], [ %771, %766 ]
  store i64 %775, i64* %754, align 8, !tbaa !17
  %778 = getelementptr inbounds i8, i8* %777, i64 %776
  store i8 123, i8* %778, align 1, !tbaa !8
  %779 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %780 = getelementptr inbounds %struct.Zio, %struct.Zio* %779, i64 0, i32 0
  %781 = load i64, i64* %780, align 8, !tbaa !46
  %782 = add i64 %781, -1
  store i64 %782, i64* %780, align 8, !tbaa !46
  %783 = icmp eq i64 %781, 0
  br i1 %783, label %790, label %784

; <label>:784:                                    ; preds = %774
  %785 = getelementptr inbounds %struct.Zio, %struct.Zio* %779, i64 0, i32 1
  %786 = load i8*, i8** %785, align 8, !tbaa !48
  %787 = getelementptr inbounds i8, i8* %786, i64 1
  store i8* %787, i8** %785, align 8, !tbaa !48
  %788 = load i8, i8* %786, align 1, !tbaa !8
  %789 = zext i8 %788 to i32
  br label %792

; <label>:790:                                    ; preds = %774
  %791 = call i32 @luaZ_fill(%struct.Zio* %779) #5
  br label %792

; <label>:792:                                    ; preds = %790, %784
  %793 = phi i32 [ %789, %784 ], [ %791, %790 ]
  store i32 %793, i32* %7, align 8, !tbaa !34
  %794 = add nsw i32 %793, 1
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %795
  %797 = load i8, i8* %796, align 1, !tbaa !8
  %798 = and i8 %797, 16
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %800, label %846

; <label>:800:                                    ; preds = %792
  %801 = icmp eq i32 %793, -1
  br i1 %801, label %845, label %802

; <label>:802:                                    ; preds = %800
  %803 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %804 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %803, i64 0, i32 1
  %805 = load i64, i64* %804, align 8, !tbaa !17
  %806 = add i64 %805, 1
  %807 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %803, i64 0, i32 2
  %808 = load i64, i64* %807, align 8, !tbaa !20
  %809 = icmp ugt i64 %806, %808
  br i1 %809, label %813, label %810

; <label>:810:                                    ; preds = %802
  %811 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %803, i64 0, i32 0
  %812 = load i8*, i8** %811, align 8, !tbaa !21
  br label %824

; <label>:813:                                    ; preds = %802
  %814 = icmp ugt i64 %808, 4611686018427387902
  br i1 %814, label %815, label %816

; <label>:815:                                    ; preds = %813
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:816:                                    ; preds = %813
  %817 = shl i64 %808, 1
  %818 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %819 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %803, i64 0, i32 0
  %820 = load i8*, i8** %819, align 8, !tbaa !21
  %821 = call i8* @luaM_saferealloc_(%struct.lua_State* %818, i8* %820, i64 %808, i64 %817) #5
  store i8* %821, i8** %819, align 8, !tbaa !21
  store i64 %817, i64* %807, align 8, !tbaa !20
  %822 = load i64, i64* %804, align 8, !tbaa !17
  %823 = add i64 %822, 1
  br label %824

; <label>:824:                                    ; preds = %816, %810
  %825 = phi i64 [ %806, %810 ], [ %823, %816 ]
  %826 = phi i64 [ %805, %810 ], [ %822, %816 ]
  %827 = phi i8* [ %812, %810 ], [ %821, %816 ]
  %828 = trunc i32 %793 to i8
  store i64 %825, i64* %804, align 8, !tbaa !17
  %829 = getelementptr inbounds i8, i8* %827, i64 %826
  store i8 %828, i8* %829, align 1, !tbaa !8
  %830 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %831 = getelementptr inbounds %struct.Zio, %struct.Zio* %830, i64 0, i32 0
  %832 = load i64, i64* %831, align 8, !tbaa !46
  %833 = add i64 %832, -1
  store i64 %833, i64* %831, align 8, !tbaa !46
  %834 = icmp eq i64 %832, 0
  br i1 %834, label %841, label %835

; <label>:835:                                    ; preds = %824
  %836 = getelementptr inbounds %struct.Zio, %struct.Zio* %830, i64 0, i32 1
  %837 = load i8*, i8** %836, align 8, !tbaa !48
  %838 = getelementptr inbounds i8, i8* %837, i64 1
  store i8* %838, i8** %836, align 8, !tbaa !48
  %839 = load i8, i8* %837, align 1, !tbaa !8
  %840 = zext i8 %839 to i32
  br label %843

; <label>:841:                                    ; preds = %824
  %842 = call i32 @luaZ_fill(%struct.Zio* %830) #5
  br label %843

; <label>:843:                                    ; preds = %841, %835
  %844 = phi i32 [ %840, %835 ], [ %842, %841 ]
  store i32 %844, i32* %7, align 8, !tbaa !34
  br label %845

; <label>:845:                                    ; preds = %843, %800
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:846:                                    ; preds = %792
  %847 = call i32 @luaO_hexavalue(i32 %793) #5
  %848 = sext i32 %847 to i64
  br label %849

; <label>:849:                                    ; preds = %949, %846
  %850 = phi i64 [ %848, %846 ], [ %954, %949 ]
  %851 = phi i32 [ 4, %846 ], [ %950, %949 ]
  %852 = load i32, i32* %7, align 8, !tbaa !34
  %853 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %854 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %853, i64 0, i32 1
  %855 = load i64, i64* %854, align 8, !tbaa !17
  %856 = add i64 %855, 1
  %857 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %853, i64 0, i32 2
  %858 = load i64, i64* %857, align 8, !tbaa !20
  %859 = icmp ugt i64 %856, %858
  br i1 %859, label %863, label %860

; <label>:860:                                    ; preds = %849
  %861 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %853, i64 0, i32 0
  %862 = load i8*, i8** %861, align 8, !tbaa !21
  br label %874

; <label>:863:                                    ; preds = %849
  %864 = icmp ugt i64 %858, 4611686018427387902
  br i1 %864, label %865, label %866

; <label>:865:                                    ; preds = %863
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:866:                                    ; preds = %863
  %867 = shl i64 %858, 1
  %868 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %869 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %853, i64 0, i32 0
  %870 = load i8*, i8** %869, align 8, !tbaa !21
  %871 = call i8* @luaM_saferealloc_(%struct.lua_State* %868, i8* %870, i64 %858, i64 %867) #5
  store i8* %871, i8** %869, align 8, !tbaa !21
  store i64 %867, i64* %857, align 8, !tbaa !20
  %872 = load i64, i64* %854, align 8, !tbaa !17
  %873 = add i64 %872, 1
  br label %874

; <label>:874:                                    ; preds = %866, %860
  %875 = phi i64 [ %856, %860 ], [ %873, %866 ]
  %876 = phi i64 [ %855, %860 ], [ %872, %866 ]
  %877 = phi i8* [ %862, %860 ], [ %871, %866 ]
  %878 = trunc i32 %852 to i8
  store i64 %875, i64* %854, align 8, !tbaa !17
  %879 = getelementptr inbounds i8, i8* %877, i64 %876
  store i8 %878, i8* %879, align 1, !tbaa !8
  %880 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %881 = getelementptr inbounds %struct.Zio, %struct.Zio* %880, i64 0, i32 0
  %882 = load i64, i64* %881, align 8, !tbaa !46
  %883 = add i64 %882, -1
  store i64 %883, i64* %881, align 8, !tbaa !46
  %884 = icmp eq i64 %882, 0
  br i1 %884, label %891, label %885

; <label>:885:                                    ; preds = %874
  %886 = getelementptr inbounds %struct.Zio, %struct.Zio* %880, i64 0, i32 1
  %887 = load i8*, i8** %886, align 8, !tbaa !48
  %888 = getelementptr inbounds i8, i8* %887, i64 1
  store i8* %888, i8** %886, align 8, !tbaa !48
  %889 = load i8, i8* %887, align 1, !tbaa !8
  %890 = zext i8 %889 to i32
  br label %893

; <label>:891:                                    ; preds = %874
  %892 = call i32 @luaZ_fill(%struct.Zio* %880) #5
  br label %893

; <label>:893:                                    ; preds = %891, %885
  %894 = phi i32 [ %890, %885 ], [ %892, %891 ]
  store i32 %894, i32* %7, align 8, !tbaa !34
  %895 = add nsw i32 %894, 1
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %896
  %898 = load i8, i8* %897, align 1, !tbaa !8
  %899 = and i8 %898, 16
  %900 = icmp eq i8 %899, 0
  br i1 %900, label %955, label %901

; <label>:901:                                    ; preds = %893
  %902 = icmp ugt i64 %850, 134217727
  br i1 %902, label %903, label %949

; <label>:903:                                    ; preds = %901
  %904 = icmp eq i32 %894, -1
  br i1 %904, label %948, label %905

; <label>:905:                                    ; preds = %903
  %906 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %907 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %906, i64 0, i32 1
  %908 = load i64, i64* %907, align 8, !tbaa !17
  %909 = add i64 %908, 1
  %910 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %906, i64 0, i32 2
  %911 = load i64, i64* %910, align 8, !tbaa !20
  %912 = icmp ugt i64 %909, %911
  br i1 %912, label %916, label %913

; <label>:913:                                    ; preds = %905
  %914 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %906, i64 0, i32 0
  %915 = load i8*, i8** %914, align 8, !tbaa !21
  br label %927

; <label>:916:                                    ; preds = %905
  %917 = icmp ugt i64 %911, 4611686018427387902
  br i1 %917, label %918, label %919

; <label>:918:                                    ; preds = %916
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:919:                                    ; preds = %916
  %920 = shl i64 %911, 1
  %921 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %922 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %906, i64 0, i32 0
  %923 = load i8*, i8** %922, align 8, !tbaa !21
  %924 = call i8* @luaM_saferealloc_(%struct.lua_State* %921, i8* %923, i64 %911, i64 %920) #5
  store i8* %924, i8** %922, align 8, !tbaa !21
  store i64 %920, i64* %910, align 8, !tbaa !20
  %925 = load i64, i64* %907, align 8, !tbaa !17
  %926 = add i64 %925, 1
  br label %927

; <label>:927:                                    ; preds = %919, %913
  %928 = phi i64 [ %909, %913 ], [ %926, %919 ]
  %929 = phi i64 [ %908, %913 ], [ %925, %919 ]
  %930 = phi i8* [ %915, %913 ], [ %924, %919 ]
  %931 = trunc i32 %894 to i8
  store i64 %928, i64* %907, align 8, !tbaa !17
  %932 = getelementptr inbounds i8, i8* %930, i64 %929
  store i8 %931, i8* %932, align 1, !tbaa !8
  %933 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %934 = getelementptr inbounds %struct.Zio, %struct.Zio* %933, i64 0, i32 0
  %935 = load i64, i64* %934, align 8, !tbaa !46
  %936 = add i64 %935, -1
  store i64 %936, i64* %934, align 8, !tbaa !46
  %937 = icmp eq i64 %935, 0
  br i1 %937, label %944, label %938

; <label>:938:                                    ; preds = %927
  %939 = getelementptr inbounds %struct.Zio, %struct.Zio* %933, i64 0, i32 1
  %940 = load i8*, i8** %939, align 8, !tbaa !48
  %941 = getelementptr inbounds i8, i8* %940, i64 1
  store i8* %941, i8** %939, align 8, !tbaa !48
  %942 = load i8, i8* %940, align 1, !tbaa !8
  %943 = zext i8 %942 to i32
  br label %946

; <label>:944:                                    ; preds = %927
  %945 = call i32 @luaZ_fill(%struct.Zio* %933) #5
  br label %946

; <label>:946:                                    ; preds = %944, %938
  %947 = phi i32 [ %943, %938 ], [ %945, %944 ]
  store i32 %947, i32* %7, align 8, !tbaa !34
  br label %948

; <label>:948:                                    ; preds = %946, %903
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:949:                                    ; preds = %901
  %950 = add nuw nsw i32 %851, 1
  %951 = shl i64 %850, 4
  %952 = call i32 @luaO_hexavalue(i32 %894) #5
  %953 = sext i32 %952 to i64
  %954 = add i64 %951, %953
  br label %849

; <label>:955:                                    ; preds = %893
  switch i32 %894, label %956 [
    i32 125, label %1000
    i32 -1, label %999
  ]

; <label>:956:                                    ; preds = %955
  %957 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %958 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %957, i64 0, i32 1
  %959 = load i64, i64* %958, align 8, !tbaa !17
  %960 = add i64 %959, 1
  %961 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %957, i64 0, i32 2
  %962 = load i64, i64* %961, align 8, !tbaa !20
  %963 = icmp ugt i64 %960, %962
  br i1 %963, label %967, label %964

; <label>:964:                                    ; preds = %956
  %965 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %957, i64 0, i32 0
  %966 = load i8*, i8** %965, align 8, !tbaa !21
  br label %978

; <label>:967:                                    ; preds = %956
  %968 = icmp ugt i64 %962, 4611686018427387902
  br i1 %968, label %969, label %970

; <label>:969:                                    ; preds = %967
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:970:                                    ; preds = %967
  %971 = shl i64 %962, 1
  %972 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %973 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %957, i64 0, i32 0
  %974 = load i8*, i8** %973, align 8, !tbaa !21
  %975 = call i8* @luaM_saferealloc_(%struct.lua_State* %972, i8* %974, i64 %962, i64 %971) #5
  store i8* %975, i8** %973, align 8, !tbaa !21
  store i64 %971, i64* %961, align 8, !tbaa !20
  %976 = load i64, i64* %958, align 8, !tbaa !17
  %977 = add i64 %976, 1
  br label %978

; <label>:978:                                    ; preds = %970, %964
  %979 = phi i64 [ %960, %964 ], [ %977, %970 ]
  %980 = phi i64 [ %959, %964 ], [ %976, %970 ]
  %981 = phi i8* [ %966, %964 ], [ %975, %970 ]
  %982 = trunc i32 %894 to i8
  store i64 %979, i64* %958, align 8, !tbaa !17
  %983 = getelementptr inbounds i8, i8* %981, i64 %980
  store i8 %982, i8* %983, align 1, !tbaa !8
  %984 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %985 = getelementptr inbounds %struct.Zio, %struct.Zio* %984, i64 0, i32 0
  %986 = load i64, i64* %985, align 8, !tbaa !46
  %987 = add i64 %986, -1
  store i64 %987, i64* %985, align 8, !tbaa !46
  %988 = icmp eq i64 %986, 0
  br i1 %988, label %995, label %989

; <label>:989:                                    ; preds = %978
  %990 = getelementptr inbounds %struct.Zio, %struct.Zio* %984, i64 0, i32 1
  %991 = load i8*, i8** %990, align 8, !tbaa !48
  %992 = getelementptr inbounds i8, i8* %991, i64 1
  store i8* %992, i8** %990, align 8, !tbaa !48
  %993 = load i8, i8* %991, align 1, !tbaa !8
  %994 = zext i8 %993 to i32
  br label %997

; <label>:995:                                    ; preds = %978
  %996 = call i32 @luaZ_fill(%struct.Zio* %984) #5
  br label %997

; <label>:997:                                    ; preds = %995, %989
  %998 = phi i32 [ %994, %989 ], [ %996, %995 ]
  store i32 %998, i32* %7, align 8, !tbaa !34
  br label %999

; <label>:999:                                    ; preds = %955, %997
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:1000:                                   ; preds = %955
  %1001 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1002 = getelementptr inbounds %struct.Zio, %struct.Zio* %1001, i64 0, i32 0
  %1003 = load i64, i64* %1002, align 8, !tbaa !46
  %1004 = add i64 %1003, -1
  store i64 %1004, i64* %1002, align 8, !tbaa !46
  %1005 = icmp eq i64 %1003, 0
  br i1 %1005, label %1012, label %1006

; <label>:1006:                                   ; preds = %1000
  %1007 = getelementptr inbounds %struct.Zio, %struct.Zio* %1001, i64 0, i32 1
  %1008 = load i8*, i8** %1007, align 8, !tbaa !48
  %1009 = getelementptr inbounds i8, i8* %1008, i64 1
  store i8* %1009, i8** %1007, align 8, !tbaa !48
  %1010 = load i8, i8* %1008, align 1, !tbaa !8
  %1011 = zext i8 %1010 to i32
  br label %1014

; <label>:1012:                                   ; preds = %1000
  %1013 = call i32 @luaZ_fill(%struct.Zio* %1001) #5
  br label %1014

; <label>:1014:                                   ; preds = %1012, %1006
  %1015 = phi i32 [ %1011, %1006 ], [ %1013, %1012 ]
  store i32 %1015, i32* %7, align 8, !tbaa !34
  %1016 = zext i32 %851 to i64
  %1017 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1018 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1017, i64 0, i32 1
  %1019 = load i64, i64* %1018, align 8, !tbaa !17
  %1020 = sub i64 %1019, %1016
  store i64 %1020, i64* %1018, align 8, !tbaa !17
  %1021 = call i32 @luaO_utf8esc(i8* nonnull %414, i64 %850) #5
  %1022 = icmp sgt i32 %1021, 0
  br i1 %1022, label %1023, label %1058

; <label>:1023:                                   ; preds = %1014
  %1024 = sext i32 %1021 to i64
  br label %1025

; <label>:1025:                                   ; preds = %1051, %1023
  %1026 = phi i64 [ %1024, %1023 ], [ %1056, %1051 ]
  %1027 = sub nsw i64 8, %1026
  %1028 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %1027
  %1029 = load i8, i8* %1028, align 1, !tbaa !8
  %1030 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1031 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1030, i64 0, i32 1
  %1032 = load i64, i64* %1031, align 8, !tbaa !17
  %1033 = add i64 %1032, 1
  %1034 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1030, i64 0, i32 2
  %1035 = load i64, i64* %1034, align 8, !tbaa !20
  %1036 = icmp ugt i64 %1033, %1035
  br i1 %1036, label %1040, label %1037

; <label>:1037:                                   ; preds = %1025
  %1038 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1030, i64 0, i32 0
  %1039 = load i8*, i8** %1038, align 8, !tbaa !21
  br label %1051

; <label>:1040:                                   ; preds = %1025
  %1041 = icmp ugt i64 %1035, 4611686018427387902
  br i1 %1041, label %1042, label %1043

; <label>:1042:                                   ; preds = %1040
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1043:                                   ; preds = %1040
  %1044 = shl i64 %1035, 1
  %1045 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1046 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1030, i64 0, i32 0
  %1047 = load i8*, i8** %1046, align 8, !tbaa !21
  %1048 = call i8* @luaM_saferealloc_(%struct.lua_State* %1045, i8* %1047, i64 %1035, i64 %1044) #5
  store i8* %1048, i8** %1046, align 8, !tbaa !21
  store i64 %1044, i64* %1034, align 8, !tbaa !20
  %1049 = load i64, i64* %1031, align 8, !tbaa !17
  %1050 = add i64 %1049, 1
  br label %1051

; <label>:1051:                                   ; preds = %1043, %1037
  %1052 = phi i64 [ %1033, %1037 ], [ %1050, %1043 ]
  %1053 = phi i64 [ %1032, %1037 ], [ %1049, %1043 ]
  %1054 = phi i8* [ %1039, %1037 ], [ %1048, %1043 ]
  store i64 %1052, i64* %1031, align 8, !tbaa !17
  %1055 = getelementptr inbounds i8, i8* %1054, i64 %1053
  store i8 %1029, i8* %1055, align 1, !tbaa !8
  %1056 = add nsw i64 %1026, -1
  %1057 = icmp sgt i64 %1026, 1
  br i1 %1057, label %1025, label %1058

; <label>:1058:                                   ; preds = %1051, %1014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %414) #5
  br label %1536

; <label>:1059:                                   ; preds = %459, %459
  %1060 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1061 = getelementptr inbounds %struct.Zio, %struct.Zio* %1060, i64 0, i32 0
  %1062 = load i64, i64* %1061, align 8, !tbaa !46
  %1063 = add i64 %1062, -1
  store i64 %1063, i64* %1061, align 8, !tbaa !46
  %1064 = icmp eq i64 %1062, 0
  br i1 %1064, label %1071, label %1065

; <label>:1065:                                   ; preds = %1059
  %1066 = getelementptr inbounds %struct.Zio, %struct.Zio* %1060, i64 0, i32 1
  %1067 = load i8*, i8** %1066, align 8, !tbaa !48
  %1068 = getelementptr inbounds i8, i8* %1067, i64 1
  store i8* %1068, i8** %1066, align 8, !tbaa !48
  %1069 = load i8, i8* %1067, align 1, !tbaa !8
  %1070 = zext i8 %1069 to i32
  br label %1073

; <label>:1071:                                   ; preds = %1059
  %1072 = call i32 @luaZ_fill(%struct.Zio* %1060) #5
  br label %1073

; <label>:1073:                                   ; preds = %1071, %1065
  %1074 = phi i32 [ %1070, %1065 ], [ %1072, %1071 ]
  store i32 %1074, i32* %7, align 8, !tbaa !34
  switch i32 %1074, label %1093 [
    i32 10, label %1075
    i32 13, label %1075
  ]

; <label>:1075:                                   ; preds = %1073, %1073
  %1076 = icmp eq i32 %1074, %460
  br i1 %1076, label %1093, label %1077

; <label>:1077:                                   ; preds = %1075
  %1078 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1079 = getelementptr inbounds %struct.Zio, %struct.Zio* %1078, i64 0, i32 0
  %1080 = load i64, i64* %1079, align 8, !tbaa !46
  %1081 = add i64 %1080, -1
  store i64 %1081, i64* %1079, align 8, !tbaa !46
  %1082 = icmp eq i64 %1080, 0
  br i1 %1082, label %1089, label %1083

; <label>:1083:                                   ; preds = %1077
  %1084 = getelementptr inbounds %struct.Zio, %struct.Zio* %1078, i64 0, i32 1
  %1085 = load i8*, i8** %1084, align 8, !tbaa !48
  %1086 = getelementptr inbounds i8, i8* %1085, i64 1
  store i8* %1086, i8** %1084, align 8, !tbaa !48
  %1087 = load i8, i8* %1085, align 1, !tbaa !8
  %1088 = zext i8 %1087 to i32
  br label %1091

; <label>:1089:                                   ; preds = %1077
  %1090 = call i32 @luaZ_fill(%struct.Zio* %1078) #5
  br label %1091

; <label>:1091:                                   ; preds = %1089, %1083
  %1092 = phi i32 [ %1088, %1083 ], [ %1090, %1089 ]
  store i32 %1092, i32* %7, align 8, !tbaa !34
  br label %1093

; <label>:1093:                                   ; preds = %1091, %1075, %1073
  %1094 = load i32, i32* %9, align 4, !tbaa !15
  %1095 = add nsw i32 %1094, 1
  store i32 %1095, i32* %9, align 4, !tbaa !15
  %1096 = icmp eq i32 %1095, 2147483647
  br i1 %1096, label %1097, label %1464

; <label>:1097:                                   ; preds = %1093
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1098:                                   ; preds = %459, %459, %459
  br label %1447

; <label>:1099:                                   ; preds = %459
  %1100 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1101 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1100, i64 0, i32 1
  %1102 = load i64, i64* %1101, align 8, !tbaa !17
  %1103 = add i64 %1102, -1
  store i64 %1103, i64* %1101, align 8, !tbaa !17
  %1104 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1105 = getelementptr inbounds %struct.Zio, %struct.Zio* %1104, i64 0, i32 0
  %1106 = load i64, i64* %1105, align 8, !tbaa !46
  %1107 = add i64 %1106, -1
  store i64 %1107, i64* %1105, align 8, !tbaa !46
  %1108 = icmp eq i64 %1106, 0
  br i1 %1108, label %1115, label %1109

; <label>:1109:                                   ; preds = %1099
  %1110 = getelementptr inbounds %struct.Zio, %struct.Zio* %1104, i64 0, i32 1
  %1111 = load i8*, i8** %1110, align 8, !tbaa !48
  %1112 = getelementptr inbounds i8, i8* %1111, i64 1
  store i8* %1112, i8** %1110, align 8, !tbaa !48
  %1113 = load i8, i8* %1111, align 1, !tbaa !8
  %1114 = zext i8 %1113 to i32
  br label %1117

; <label>:1115:                                   ; preds = %1099
  %1116 = call i32 @luaZ_fill(%struct.Zio* %1104) #5
  br label %1117

; <label>:1117:                                   ; preds = %1115, %1109
  %1118 = phi i32 [ %1114, %1109 ], [ %1116, %1115 ]
  store i32 %1118, i32* %7, align 8, !tbaa !34
  %1119 = add nsw i32 %1118, 1
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1120
  %1122 = load i8, i8* %1121, align 1, !tbaa !8
  %1123 = and i8 %1122, 8
  %1124 = icmp eq i8 %1123, 0
  br i1 %1124, label %1536, label %1125

; <label>:1125:                                   ; preds = %1117
  br label %1126

; <label>:1126:                                   ; preds = %1125, %1184
  %1127 = phi i32 [ %1185, %1184 ], [ %1118, %1125 ]
  switch i32 %1127, label %1168 [
    i32 10, label %1128
    i32 13, label %1128
  ]

; <label>:1128:                                   ; preds = %1126, %1126
  %1129 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1130 = getelementptr inbounds %struct.Zio, %struct.Zio* %1129, i64 0, i32 0
  %1131 = load i64, i64* %1130, align 8, !tbaa !46
  %1132 = add i64 %1131, -1
  store i64 %1132, i64* %1130, align 8, !tbaa !46
  %1133 = icmp eq i64 %1131, 0
  br i1 %1133, label %1140, label %1134

; <label>:1134:                                   ; preds = %1128
  %1135 = getelementptr inbounds %struct.Zio, %struct.Zio* %1129, i64 0, i32 1
  %1136 = load i8*, i8** %1135, align 8, !tbaa !48
  %1137 = getelementptr inbounds i8, i8* %1136, i64 1
  store i8* %1137, i8** %1135, align 8, !tbaa !48
  %1138 = load i8, i8* %1136, align 1, !tbaa !8
  %1139 = zext i8 %1138 to i32
  br label %1142

; <label>:1140:                                   ; preds = %1128
  %1141 = call i32 @luaZ_fill(%struct.Zio* %1129) #5
  br label %1142

; <label>:1142:                                   ; preds = %1140, %1134
  %1143 = phi i32 [ %1139, %1134 ], [ %1141, %1140 ]
  store i32 %1143, i32* %7, align 8, !tbaa !34
  switch i32 %1143, label %1162 [
    i32 10, label %1144
    i32 13, label %1144
  ]

; <label>:1144:                                   ; preds = %1142, %1142
  %1145 = icmp eq i32 %1143, %1127
  br i1 %1145, label %1162, label %1146

; <label>:1146:                                   ; preds = %1144
  %1147 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1148 = getelementptr inbounds %struct.Zio, %struct.Zio* %1147, i64 0, i32 0
  %1149 = load i64, i64* %1148, align 8, !tbaa !46
  %1150 = add i64 %1149, -1
  store i64 %1150, i64* %1148, align 8, !tbaa !46
  %1151 = icmp eq i64 %1149, 0
  br i1 %1151, label %1158, label %1152

; <label>:1152:                                   ; preds = %1146
  %1153 = getelementptr inbounds %struct.Zio, %struct.Zio* %1147, i64 0, i32 1
  %1154 = load i8*, i8** %1153, align 8, !tbaa !48
  %1155 = getelementptr inbounds i8, i8* %1154, i64 1
  store i8* %1155, i8** %1153, align 8, !tbaa !48
  %1156 = load i8, i8* %1154, align 1, !tbaa !8
  %1157 = zext i8 %1156 to i32
  br label %1160

; <label>:1158:                                   ; preds = %1146
  %1159 = call i32 @luaZ_fill(%struct.Zio* %1147) #5
  br label %1160

; <label>:1160:                                   ; preds = %1158, %1152
  %1161 = phi i32 [ %1157, %1152 ], [ %1159, %1158 ]
  store i32 %1161, i32* %7, align 8, !tbaa !34
  br label %1162

; <label>:1162:                                   ; preds = %1160, %1144, %1142
  %1163 = phi i32 [ %1161, %1160 ], [ %1127, %1144 ], [ %1143, %1142 ]
  %1164 = load i32, i32* %9, align 4, !tbaa !15
  %1165 = add nsw i32 %1164, 1
  store i32 %1165, i32* %9, align 4, !tbaa !15
  %1166 = icmp eq i32 %1165, 2147483647
  br i1 %1166, label %1167, label %1184

; <label>:1167:                                   ; preds = %1162
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1168:                                   ; preds = %1126
  %1169 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1170 = getelementptr inbounds %struct.Zio, %struct.Zio* %1169, i64 0, i32 0
  %1171 = load i64, i64* %1170, align 8, !tbaa !46
  %1172 = add i64 %1171, -1
  store i64 %1172, i64* %1170, align 8, !tbaa !46
  %1173 = icmp eq i64 %1171, 0
  br i1 %1173, label %1180, label %1174

; <label>:1174:                                   ; preds = %1168
  %1175 = getelementptr inbounds %struct.Zio, %struct.Zio* %1169, i64 0, i32 1
  %1176 = load i8*, i8** %1175, align 8, !tbaa !48
  %1177 = getelementptr inbounds i8, i8* %1176, i64 1
  store i8* %1177, i8** %1175, align 8, !tbaa !48
  %1178 = load i8, i8* %1176, align 1, !tbaa !8
  %1179 = zext i8 %1178 to i32
  br label %1182

; <label>:1180:                                   ; preds = %1168
  %1181 = call i32 @luaZ_fill(%struct.Zio* %1169) #5
  br label %1182

; <label>:1182:                                   ; preds = %1180, %1174
  %1183 = phi i32 [ %1179, %1174 ], [ %1181, %1180 ]
  store i32 %1183, i32* %7, align 8, !tbaa !34
  br label %1184

; <label>:1184:                                   ; preds = %1182, %1162
  %1185 = phi i32 [ %1163, %1162 ], [ %1183, %1182 ]
  %1186 = add nsw i32 %1185, 1
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1187
  %1189 = load i8, i8* %1188, align 1, !tbaa !8
  %1190 = and i8 %1189, 8
  %1191 = icmp eq i8 %1190, 0
  br i1 %1191, label %1536, label %1126

; <label>:1192:                                   ; preds = %459
  %1193 = add nsw i32 %460, 1
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1194
  %1196 = load i8, i8* %1195, align 1, !tbaa !8
  %1197 = and i8 %1196, 2
  %1198 = icmp eq i8 %1197, 0
  br i1 %1198, label %1199, label %1245

; <label>:1199:                                   ; preds = %1192
  %1200 = icmp eq i32 %460, -1
  br i1 %1200, label %1244, label %1201

; <label>:1201:                                   ; preds = %1199
  %1202 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1203 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1202, i64 0, i32 1
  %1204 = load i64, i64* %1203, align 8, !tbaa !17
  %1205 = add i64 %1204, 1
  %1206 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1202, i64 0, i32 2
  %1207 = load i64, i64* %1206, align 8, !tbaa !20
  %1208 = icmp ugt i64 %1205, %1207
  br i1 %1208, label %1212, label %1209

; <label>:1209:                                   ; preds = %1201
  %1210 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1202, i64 0, i32 0
  %1211 = load i8*, i8** %1210, align 8, !tbaa !21
  br label %1223

; <label>:1212:                                   ; preds = %1201
  %1213 = icmp ugt i64 %1207, 4611686018427387902
  br i1 %1213, label %1214, label %1215

; <label>:1214:                                   ; preds = %1212
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1215:                                   ; preds = %1212
  %1216 = shl i64 %1207, 1
  %1217 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1218 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1202, i64 0, i32 0
  %1219 = load i8*, i8** %1218, align 8, !tbaa !21
  %1220 = call i8* @luaM_saferealloc_(%struct.lua_State* %1217, i8* %1219, i64 %1207, i64 %1216) #5
  store i8* %1220, i8** %1218, align 8, !tbaa !21
  store i64 %1216, i64* %1206, align 8, !tbaa !20
  %1221 = load i64, i64* %1203, align 8, !tbaa !17
  %1222 = add i64 %1221, 1
  br label %1223

; <label>:1223:                                   ; preds = %1215, %1209
  %1224 = phi i64 [ %1205, %1209 ], [ %1222, %1215 ]
  %1225 = phi i64 [ %1204, %1209 ], [ %1221, %1215 ]
  %1226 = phi i8* [ %1211, %1209 ], [ %1220, %1215 ]
  %1227 = trunc i32 %460 to i8
  store i64 %1224, i64* %1203, align 8, !tbaa !17
  %1228 = getelementptr inbounds i8, i8* %1226, i64 %1225
  store i8 %1227, i8* %1228, align 1, !tbaa !8
  %1229 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1230 = getelementptr inbounds %struct.Zio, %struct.Zio* %1229, i64 0, i32 0
  %1231 = load i64, i64* %1230, align 8, !tbaa !46
  %1232 = add i64 %1231, -1
  store i64 %1232, i64* %1230, align 8, !tbaa !46
  %1233 = icmp eq i64 %1231, 0
  br i1 %1233, label %1240, label %1234

; <label>:1234:                                   ; preds = %1223
  %1235 = getelementptr inbounds %struct.Zio, %struct.Zio* %1229, i64 0, i32 1
  %1236 = load i8*, i8** %1235, align 8, !tbaa !48
  %1237 = getelementptr inbounds i8, i8* %1236, i64 1
  store i8* %1237, i8** %1235, align 8, !tbaa !48
  %1238 = load i8, i8* %1236, align 1, !tbaa !8
  %1239 = zext i8 %1238 to i32
  br label %1242

; <label>:1240:                                   ; preds = %1223
  %1241 = call i32 @luaZ_fill(%struct.Zio* %1229) #5
  br label %1242

; <label>:1242:                                   ; preds = %1240, %1234
  %1243 = phi i32 [ %1239, %1234 ], [ %1241, %1240 ]
  store i32 %1243, i32* %7, align 8, !tbaa !34
  br label %1244

; <label>:1244:                                   ; preds = %1242, %1199
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:1245:                                   ; preds = %1192
  %1246 = add i32 %460, -48
  %1247 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1248 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1247, i64 0, i32 1
  %1249 = load i64, i64* %1248, align 8, !tbaa !17
  %1250 = add i64 %1249, 1
  %1251 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1247, i64 0, i32 2
  %1252 = load i64, i64* %1251, align 8, !tbaa !20
  %1253 = icmp ugt i64 %1250, %1252
  br i1 %1253, label %1257, label %1254

; <label>:1254:                                   ; preds = %1245
  %1255 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1247, i64 0, i32 0
  %1256 = load i8*, i8** %1255, align 8, !tbaa !21
  br label %1268

; <label>:1257:                                   ; preds = %1245
  %1258 = icmp ugt i64 %1252, 4611686018427387902
  br i1 %1258, label %1259, label %1260

; <label>:1259:                                   ; preds = %1411, %1360, %1257
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1260:                                   ; preds = %1257
  %1261 = shl i64 %1252, 1
  %1262 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1263 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1247, i64 0, i32 0
  %1264 = load i8*, i8** %1263, align 8, !tbaa !21
  %1265 = call i8* @luaM_saferealloc_(%struct.lua_State* %1262, i8* %1264, i64 %1252, i64 %1261) #5
  store i8* %1265, i8** %1263, align 8, !tbaa !21
  store i64 %1261, i64* %1251, align 8, !tbaa !20
  %1266 = load i64, i64* %1248, align 8, !tbaa !17
  %1267 = add i64 %1266, 1
  br label %1268

; <label>:1268:                                   ; preds = %1260, %1254
  %1269 = phi i64 [ %1250, %1254 ], [ %1267, %1260 ]
  %1270 = phi i64 [ %1249, %1254 ], [ %1266, %1260 ]
  %1271 = phi i8* [ %1256, %1254 ], [ %1265, %1260 ]
  %1272 = trunc i32 %460 to i8
  store i64 %1269, i64* %1248, align 8, !tbaa !17
  %1273 = getelementptr inbounds i8, i8* %1271, i64 %1270
  store i8 %1272, i8* %1273, align 1, !tbaa !8
  %1274 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1275 = getelementptr inbounds %struct.Zio, %struct.Zio* %1274, i64 0, i32 0
  %1276 = load i64, i64* %1275, align 8, !tbaa !46
  %1277 = add i64 %1276, -1
  store i64 %1277, i64* %1275, align 8, !tbaa !46
  %1278 = icmp eq i64 %1276, 0
  br i1 %1278, label %1285, label %1279

; <label>:1279:                                   ; preds = %1268
  %1280 = getelementptr inbounds %struct.Zio, %struct.Zio* %1274, i64 0, i32 1
  %1281 = load i8*, i8** %1280, align 8, !tbaa !48
  %1282 = getelementptr inbounds i8, i8* %1281, i64 1
  store i8* %1282, i8** %1280, align 8, !tbaa !48
  %1283 = load i8, i8* %1281, align 1, !tbaa !8
  %1284 = zext i8 %1283 to i32
  br label %1287

; <label>:1285:                                   ; preds = %1268
  %1286 = call i32 @luaZ_fill(%struct.Zio* %1274) #5
  br label %1287

; <label>:1287:                                   ; preds = %1285, %1279
  %1288 = phi i32 [ %1284, %1279 ], [ %1286, %1285 ]
  store i32 %1288, i32* %7, align 8, !tbaa !34
  %1289 = add nsw i32 %1288, 1
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1290
  %1292 = load i8, i8* %1291, align 1, !tbaa !8
  %1293 = and i8 %1292, 2
  %1294 = icmp eq i8 %1293, 0
  br i1 %1294, label %1295, label %1346

; <label>:1295:                                   ; preds = %1440, %1389, %1287
  %1296 = phi i32 [ %1288, %1287 ], [ %1390, %1389 ], [ %1441, %1440 ]
  %1297 = phi i64 [ 1, %1287 ], [ 2, %1389 ], [ 3, %1440 ]
  %1298 = phi i32 [ %1246, %1287 ], [ %1349, %1389 ], [ %1400, %1440 ]
  %1299 = icmp sgt i32 %1298, 255
  br i1 %1299, label %1300, label %1442

; <label>:1300:                                   ; preds = %1295
  %1301 = icmp eq i32 %1296, -1
  br i1 %1301, label %1345, label %1302

; <label>:1302:                                   ; preds = %1300
  %1303 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1304 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1303, i64 0, i32 1
  %1305 = load i64, i64* %1304, align 8, !tbaa !17
  %1306 = add i64 %1305, 1
  %1307 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1303, i64 0, i32 2
  %1308 = load i64, i64* %1307, align 8, !tbaa !20
  %1309 = icmp ugt i64 %1306, %1308
  br i1 %1309, label %1313, label %1310

; <label>:1310:                                   ; preds = %1302
  %1311 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1303, i64 0, i32 0
  %1312 = load i8*, i8** %1311, align 8, !tbaa !21
  br label %1324

; <label>:1313:                                   ; preds = %1302
  %1314 = icmp ugt i64 %1308, 4611686018427387902
  br i1 %1314, label %1315, label %1316

; <label>:1315:                                   ; preds = %1313
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1316:                                   ; preds = %1313
  %1317 = shl i64 %1308, 1
  %1318 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1319 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1303, i64 0, i32 0
  %1320 = load i8*, i8** %1319, align 8, !tbaa !21
  %1321 = call i8* @luaM_saferealloc_(%struct.lua_State* %1318, i8* %1320, i64 %1308, i64 %1317) #5
  store i8* %1321, i8** %1319, align 8, !tbaa !21
  store i64 %1317, i64* %1307, align 8, !tbaa !20
  %1322 = load i64, i64* %1304, align 8, !tbaa !17
  %1323 = add i64 %1322, 1
  br label %1324

; <label>:1324:                                   ; preds = %1316, %1310
  %1325 = phi i64 [ %1306, %1310 ], [ %1323, %1316 ]
  %1326 = phi i64 [ %1305, %1310 ], [ %1322, %1316 ]
  %1327 = phi i8* [ %1312, %1310 ], [ %1321, %1316 ]
  %1328 = trunc i32 %1296 to i8
  store i64 %1325, i64* %1304, align 8, !tbaa !17
  %1329 = getelementptr inbounds i8, i8* %1327, i64 %1326
  store i8 %1328, i8* %1329, align 1, !tbaa !8
  %1330 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1331 = getelementptr inbounds %struct.Zio, %struct.Zio* %1330, i64 0, i32 0
  %1332 = load i64, i64* %1331, align 8, !tbaa !46
  %1333 = add i64 %1332, -1
  store i64 %1333, i64* %1331, align 8, !tbaa !46
  %1334 = icmp eq i64 %1332, 0
  br i1 %1334, label %1341, label %1335

; <label>:1335:                                   ; preds = %1324
  %1336 = getelementptr inbounds %struct.Zio, %struct.Zio* %1330, i64 0, i32 1
  %1337 = load i8*, i8** %1336, align 8, !tbaa !48
  %1338 = getelementptr inbounds i8, i8* %1337, i64 1
  store i8* %1338, i8** %1336, align 8, !tbaa !48
  %1339 = load i8, i8* %1337, align 1, !tbaa !8
  %1340 = zext i8 %1339 to i32
  br label %1343

; <label>:1341:                                   ; preds = %1324
  %1342 = call i32 @luaZ_fill(%struct.Zio* %1330) #5
  br label %1343

; <label>:1343:                                   ; preds = %1341, %1335
  %1344 = phi i32 [ %1340, %1335 ], [ %1342, %1341 ]
  store i32 %1344, i32* %7, align 8, !tbaa !34
  br label %1345

; <label>:1345:                                   ; preds = %1343, %1300
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i32 293) #7
  unreachable

; <label>:1346:                                   ; preds = %1287
  %1347 = mul nsw i32 %1246, 10
  %1348 = add i32 %1347, -48
  %1349 = add i32 %1348, %1288
  %1350 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1351 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1350, i64 0, i32 1
  %1352 = load i64, i64* %1351, align 8, !tbaa !17
  %1353 = add i64 %1352, 1
  %1354 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1350, i64 0, i32 2
  %1355 = load i64, i64* %1354, align 8, !tbaa !20
  %1356 = icmp ugt i64 %1353, %1355
  br i1 %1356, label %1360, label %1357

; <label>:1357:                                   ; preds = %1346
  %1358 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1350, i64 0, i32 0
  %1359 = load i8*, i8** %1358, align 8, !tbaa !21
  br label %1370

; <label>:1360:                                   ; preds = %1346
  %1361 = icmp ugt i64 %1355, 4611686018427387902
  br i1 %1361, label %1259, label %1362

; <label>:1362:                                   ; preds = %1360
  %1363 = shl i64 %1355, 1
  %1364 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1365 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1350, i64 0, i32 0
  %1366 = load i8*, i8** %1365, align 8, !tbaa !21
  %1367 = call i8* @luaM_saferealloc_(%struct.lua_State* %1364, i8* %1366, i64 %1355, i64 %1363) #5
  store i8* %1367, i8** %1365, align 8, !tbaa !21
  store i64 %1363, i64* %1354, align 8, !tbaa !20
  %1368 = load i64, i64* %1351, align 8, !tbaa !17
  %1369 = add i64 %1368, 1
  br label %1370

; <label>:1370:                                   ; preds = %1362, %1357
  %1371 = phi i64 [ %1353, %1357 ], [ %1369, %1362 ]
  %1372 = phi i64 [ %1352, %1357 ], [ %1368, %1362 ]
  %1373 = phi i8* [ %1359, %1357 ], [ %1367, %1362 ]
  %1374 = trunc i32 %1288 to i8
  store i64 %1371, i64* %1351, align 8, !tbaa !17
  %1375 = getelementptr inbounds i8, i8* %1373, i64 %1372
  store i8 %1374, i8* %1375, align 1, !tbaa !8
  %1376 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1377 = getelementptr inbounds %struct.Zio, %struct.Zio* %1376, i64 0, i32 0
  %1378 = load i64, i64* %1377, align 8, !tbaa !46
  %1379 = add i64 %1378, -1
  store i64 %1379, i64* %1377, align 8, !tbaa !46
  %1380 = icmp eq i64 %1378, 0
  br i1 %1380, label %1387, label %1381

; <label>:1381:                                   ; preds = %1370
  %1382 = getelementptr inbounds %struct.Zio, %struct.Zio* %1376, i64 0, i32 1
  %1383 = load i8*, i8** %1382, align 8, !tbaa !48
  %1384 = getelementptr inbounds i8, i8* %1383, i64 1
  store i8* %1384, i8** %1382, align 8, !tbaa !48
  %1385 = load i8, i8* %1383, align 1, !tbaa !8
  %1386 = zext i8 %1385 to i32
  br label %1389

; <label>:1387:                                   ; preds = %1370
  %1388 = call i32 @luaZ_fill(%struct.Zio* %1376) #5
  br label %1389

; <label>:1389:                                   ; preds = %1387, %1381
  %1390 = phi i32 [ %1386, %1381 ], [ %1388, %1387 ]
  store i32 %1390, i32* %7, align 8, !tbaa !34
  %1391 = add nsw i32 %1390, 1
  %1392 = sext i32 %1391 to i64
  %1393 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1392
  %1394 = load i8, i8* %1393, align 1, !tbaa !8
  %1395 = and i8 %1394, 2
  %1396 = icmp eq i8 %1395, 0
  br i1 %1396, label %1295, label %1397

; <label>:1397:                                   ; preds = %1389
  %1398 = mul nsw i32 %1349, 10
  %1399 = add i32 %1398, -48
  %1400 = add i32 %1399, %1390
  %1401 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1402 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1401, i64 0, i32 1
  %1403 = load i64, i64* %1402, align 8, !tbaa !17
  %1404 = add i64 %1403, 1
  %1405 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1401, i64 0, i32 2
  %1406 = load i64, i64* %1405, align 8, !tbaa !20
  %1407 = icmp ugt i64 %1404, %1406
  br i1 %1407, label %1411, label %1408

; <label>:1408:                                   ; preds = %1397
  %1409 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1401, i64 0, i32 0
  %1410 = load i8*, i8** %1409, align 8, !tbaa !21
  br label %1421

; <label>:1411:                                   ; preds = %1397
  %1412 = icmp ugt i64 %1406, 4611686018427387902
  br i1 %1412, label %1259, label %1413

; <label>:1413:                                   ; preds = %1411
  %1414 = shl i64 %1406, 1
  %1415 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1416 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1401, i64 0, i32 0
  %1417 = load i8*, i8** %1416, align 8, !tbaa !21
  %1418 = call i8* @luaM_saferealloc_(%struct.lua_State* %1415, i8* %1417, i64 %1406, i64 %1414) #5
  store i8* %1418, i8** %1416, align 8, !tbaa !21
  store i64 %1414, i64* %1405, align 8, !tbaa !20
  %1419 = load i64, i64* %1402, align 8, !tbaa !17
  %1420 = add i64 %1419, 1
  br label %1421

; <label>:1421:                                   ; preds = %1413, %1408
  %1422 = phi i64 [ %1404, %1408 ], [ %1420, %1413 ]
  %1423 = phi i64 [ %1403, %1408 ], [ %1419, %1413 ]
  %1424 = phi i8* [ %1410, %1408 ], [ %1418, %1413 ]
  %1425 = trunc i32 %1390 to i8
  store i64 %1422, i64* %1402, align 8, !tbaa !17
  %1426 = getelementptr inbounds i8, i8* %1424, i64 %1423
  store i8 %1425, i8* %1426, align 1, !tbaa !8
  %1427 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1428 = getelementptr inbounds %struct.Zio, %struct.Zio* %1427, i64 0, i32 0
  %1429 = load i64, i64* %1428, align 8, !tbaa !46
  %1430 = add i64 %1429, -1
  store i64 %1430, i64* %1428, align 8, !tbaa !46
  %1431 = icmp eq i64 %1429, 0
  br i1 %1431, label %1438, label %1432

; <label>:1432:                                   ; preds = %1421
  %1433 = getelementptr inbounds %struct.Zio, %struct.Zio* %1427, i64 0, i32 1
  %1434 = load i8*, i8** %1433, align 8, !tbaa !48
  %1435 = getelementptr inbounds i8, i8* %1434, i64 1
  store i8* %1435, i8** %1433, align 8, !tbaa !48
  %1436 = load i8, i8* %1434, align 1, !tbaa !8
  %1437 = zext i8 %1436 to i32
  br label %1440

; <label>:1438:                                   ; preds = %1421
  %1439 = call i32 @luaZ_fill(%struct.Zio* %1427) #5
  br label %1440

; <label>:1440:                                   ; preds = %1438, %1432
  %1441 = phi i32 [ %1437, %1432 ], [ %1439, %1438 ]
  store i32 %1441, i32* %7, align 8, !tbaa !34
  br label %1295

; <label>:1442:                                   ; preds = %1295
  %1443 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1444 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1443, i64 0, i32 1
  %1445 = load i64, i64* %1444, align 8, !tbaa !17
  %1446 = sub i64 %1445, %1297
  store i64 %1446, i64* %1444, align 8, !tbaa !17
  br label %1464

; <label>:1447:                                   ; preds = %1098, %659, %466, %465, %464, %463, %462, %461, %459
  %1448 = phi i32 [ %460, %1098 ], [ %661, %659 ], [ 11, %466 ], [ 9, %465 ], [ 13, %464 ], [ 10, %463 ], [ 12, %462 ], [ 8, %461 ], [ 7, %459 ]
  %1449 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1450 = getelementptr inbounds %struct.Zio, %struct.Zio* %1449, i64 0, i32 0
  %1451 = load i64, i64* %1450, align 8, !tbaa !46
  %1452 = add i64 %1451, -1
  store i64 %1452, i64* %1450, align 8, !tbaa !46
  %1453 = icmp eq i64 %1451, 0
  br i1 %1453, label %1460, label %1454

; <label>:1454:                                   ; preds = %1447
  %1455 = getelementptr inbounds %struct.Zio, %struct.Zio* %1449, i64 0, i32 1
  %1456 = load i8*, i8** %1455, align 8, !tbaa !48
  %1457 = getelementptr inbounds i8, i8* %1456, i64 1
  store i8* %1457, i8** %1455, align 8, !tbaa !48
  %1458 = load i8, i8* %1456, align 1, !tbaa !8
  %1459 = zext i8 %1458 to i32
  br label %1462

; <label>:1460:                                   ; preds = %1447
  %1461 = call i32 @luaZ_fill(%struct.Zio* %1449) #5
  br label %1462

; <label>:1462:                                   ; preds = %1460, %1454
  %1463 = phi i32 [ %1459, %1454 ], [ %1461, %1460 ]
  store i32 %1463, i32* %7, align 8, !tbaa !34
  br label %1464

; <label>:1464:                                   ; preds = %1462, %1442, %1093
  %1465 = phi i32 [ %1298, %1442 ], [ %1448, %1462 ], [ 10, %1093 ]
  %1466 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1467 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1466, i64 0, i32 1
  %1468 = load i64, i64* %1467, align 8, !tbaa !17
  %1469 = add i64 %1468, -1
  store i64 %1469, i64* %1467, align 8, !tbaa !17
  %1470 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1466, i64 0, i32 2
  %1471 = load i64, i64* %1470, align 8, !tbaa !20
  %1472 = icmp ugt i64 %1468, %1471
  br i1 %1472, label %1476, label %1473

; <label>:1473:                                   ; preds = %1464
  %1474 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1466, i64 0, i32 0
  %1475 = load i8*, i8** %1474, align 8, !tbaa !21
  br label %1487

; <label>:1476:                                   ; preds = %1464
  %1477 = icmp ugt i64 %1471, 4611686018427387902
  br i1 %1477, label %1478, label %1479

; <label>:1478:                                   ; preds = %1476
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1479:                                   ; preds = %1476
  %1480 = shl i64 %1471, 1
  %1481 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1482 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1466, i64 0, i32 0
  %1483 = load i8*, i8** %1482, align 8, !tbaa !21
  %1484 = call i8* @luaM_saferealloc_(%struct.lua_State* %1481, i8* %1483, i64 %1471, i64 %1480) #5
  store i8* %1484, i8** %1482, align 8, !tbaa !21
  store i64 %1480, i64* %1470, align 8, !tbaa !20
  %1485 = load i64, i64* %1467, align 8, !tbaa !17
  %1486 = add i64 %1485, 1
  br label %1487

; <label>:1487:                                   ; preds = %1479, %1473
  %1488 = phi i64 [ %1468, %1473 ], [ %1486, %1479 ]
  %1489 = phi i64 [ %1469, %1473 ], [ %1485, %1479 ]
  %1490 = phi i8* [ %1475, %1473 ], [ %1484, %1479 ]
  %1491 = trunc i32 %1465 to i8
  store i64 %1488, i64* %1467, align 8, !tbaa !17
  %1492 = getelementptr inbounds i8, i8* %1490, i64 %1489
  store i8 %1491, i8* %1492, align 1, !tbaa !8
  br label %1536

; <label>:1493:                                   ; preds = %415
  %1494 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1495 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1494, i64 0, i32 1
  %1496 = load i64, i64* %1495, align 8, !tbaa !17
  %1497 = add i64 %1496, 1
  %1498 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1494, i64 0, i32 2
  %1499 = load i64, i64* %1498, align 8, !tbaa !20
  %1500 = icmp ugt i64 %1497, %1499
  br i1 %1500, label %1504, label %1501

; <label>:1501:                                   ; preds = %1493
  %1502 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1494, i64 0, i32 0
  %1503 = load i8*, i8** %1502, align 8, !tbaa !21
  br label %1515

; <label>:1504:                                   ; preds = %1493
  %1505 = icmp ugt i64 %1499, 4611686018427387902
  br i1 %1505, label %1506, label %1507

; <label>:1506:                                   ; preds = %1504
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1507:                                   ; preds = %1504
  %1508 = shl i64 %1499, 1
  %1509 = load %struct.lua_State*, %struct.lua_State** %413, align 8, !tbaa !9
  %1510 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1494, i64 0, i32 0
  %1511 = load i8*, i8** %1510, align 8, !tbaa !21
  %1512 = call i8* @luaM_saferealloc_(%struct.lua_State* %1509, i8* %1511, i64 %1499, i64 %1508) #5
  store i8* %1512, i8** %1510, align 8, !tbaa !21
  store i64 %1508, i64* %1498, align 8, !tbaa !20
  %1513 = load i64, i64* %1495, align 8, !tbaa !17
  %1514 = add i64 %1513, 1
  br label %1515

; <label>:1515:                                   ; preds = %1507, %1501
  %1516 = phi i64 [ %1497, %1501 ], [ %1514, %1507 ]
  %1517 = phi i64 [ %1496, %1501 ], [ %1513, %1507 ]
  %1518 = phi i8* [ %1503, %1501 ], [ %1512, %1507 ]
  %1519 = trunc i32 %416 to i8
  store i64 %1516, i64* %1495, align 8, !tbaa !17
  %1520 = getelementptr inbounds i8, i8* %1518, i64 %1517
  store i8 %1519, i8* %1520, align 1, !tbaa !8
  %1521 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1522 = getelementptr inbounds %struct.Zio, %struct.Zio* %1521, i64 0, i32 0
  %1523 = load i64, i64* %1522, align 8, !tbaa !46
  %1524 = add i64 %1523, -1
  store i64 %1524, i64* %1522, align 8, !tbaa !46
  %1525 = icmp eq i64 %1523, 0
  br i1 %1525, label %1532, label %1526

; <label>:1526:                                   ; preds = %1515
  %1527 = getelementptr inbounds %struct.Zio, %struct.Zio* %1521, i64 0, i32 1
  %1528 = load i8*, i8** %1527, align 8, !tbaa !48
  %1529 = getelementptr inbounds i8, i8* %1528, i64 1
  store i8* %1529, i8** %1527, align 8, !tbaa !48
  %1530 = load i8, i8* %1528, align 1, !tbaa !8
  %1531 = zext i8 %1530 to i32
  br label %1534

; <label>:1532:                                   ; preds = %1515
  %1533 = call i32 @luaZ_fill(%struct.Zio* %1521) #5
  br label %1534

; <label>:1534:                                   ; preds = %1532, %1526
  %1535 = phi i32 [ %1531, %1526 ], [ %1533, %1532 ]
  store i32 %1535, i32* %7, align 8, !tbaa !34
  br label %1536

; <label>:1536:                                   ; preds = %1184, %1534, %1487, %1117, %1058, %459
  %1537 = load i32, i32* %7, align 8, !tbaa !34
  %1538 = icmp eq i32 %1537, %11
  br i1 %1538, label %1539, label %415

; <label>:1539:                                   ; preds = %1536, %409
  %1540 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1541 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1540, i64 0, i32 1
  %1542 = load i64, i64* %1541, align 8, !tbaa !17
  %1543 = add i64 %1542, 1
  %1544 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1540, i64 0, i32 2
  %1545 = load i64, i64* %1544, align 8, !tbaa !20
  %1546 = icmp ugt i64 %1543, %1545
  br i1 %1546, label %1550, label %1547

; <label>:1547:                                   ; preds = %1539
  %1548 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1540, i64 0, i32 0
  %1549 = load i8*, i8** %1548, align 8, !tbaa !21
  br label %1562

; <label>:1550:                                   ; preds = %1539
  %1551 = icmp ugt i64 %1545, 4611686018427387902
  br i1 %1551, label %1552, label %1553

; <label>:1552:                                   ; preds = %1550
  call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1553:                                   ; preds = %1550
  %1554 = shl i64 %1545, 1
  %1555 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1556 = load %struct.lua_State*, %struct.lua_State** %1555, align 8, !tbaa !9
  %1557 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1540, i64 0, i32 0
  %1558 = load i8*, i8** %1557, align 8, !tbaa !21
  %1559 = call i8* @luaM_saferealloc_(%struct.lua_State* %1556, i8* %1558, i64 %1545, i64 %1554) #5
  store i8* %1559, i8** %1557, align 8, !tbaa !21
  store i64 %1554, i64* %1544, align 8, !tbaa !20
  %1560 = load i64, i64* %1541, align 8, !tbaa !17
  %1561 = add i64 %1560, 1
  br label %1562

; <label>:1562:                                   ; preds = %1553, %1547
  %1563 = phi i64 [ %1543, %1547 ], [ %1561, %1553 ]
  %1564 = phi i64 [ %1542, %1547 ], [ %1560, %1553 ]
  %1565 = phi i8* [ %1549, %1547 ], [ %1559, %1553 ]
  store i64 %1563, i64* %1541, align 8, !tbaa !17
  %1566 = getelementptr inbounds i8, i8* %1565, i64 %1564
  store i8 %394, i8* %1566, align 1, !tbaa !8
  %1567 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1568 = getelementptr inbounds %struct.Zio, %struct.Zio* %1567, i64 0, i32 0
  %1569 = load i64, i64* %1568, align 8, !tbaa !46
  %1570 = add i64 %1569, -1
  store i64 %1570, i64* %1568, align 8, !tbaa !46
  %1571 = icmp eq i64 %1569, 0
  br i1 %1571, label %1578, label %1572

; <label>:1572:                                   ; preds = %1562
  %1573 = getelementptr inbounds %struct.Zio, %struct.Zio* %1567, i64 0, i32 1
  %1574 = load i8*, i8** %1573, align 8, !tbaa !48
  %1575 = getelementptr inbounds i8, i8* %1574, i64 1
  store i8* %1575, i8** %1573, align 8, !tbaa !48
  %1576 = load i8, i8* %1574, align 1, !tbaa !8
  %1577 = zext i8 %1576 to i32
  br label %1580

; <label>:1578:                                   ; preds = %1562
  %1579 = call i32 @luaZ_fill(%struct.Zio* %1567) #5
  br label %1580

; <label>:1580:                                   ; preds = %1578, %1572
  %1581 = phi i32 [ %1577, %1572 ], [ %1579, %1578 ]
  store i32 %1581, i32* %7, align 8, !tbaa !34
  %1582 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1583 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1582, i64 0, i32 0
  %1584 = load i8*, i8** %1583, align 8, !tbaa !21
  %1585 = getelementptr inbounds i8, i8* %1584, i64 1
  %1586 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1582, i64 0, i32 1
  %1587 = load i64, i64* %1586, align 8, !tbaa !17
  %1588 = add i64 %1587, -2
  %1589 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1590 = load %struct.lua_State*, %struct.lua_State** %1589, align 8, !tbaa !9
  %1591 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %1590, i8* nonnull %1585, i64 %1588) #5
  %1592 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1590, i64 0, i32 6
  %1593 = load %union.StackValue*, %union.StackValue** %1592, align 8, !tbaa !22
  %1594 = getelementptr inbounds %union.StackValue, %union.StackValue* %1593, i64 1
  store %union.StackValue* %1594, %union.StackValue** %1592, align 8, !tbaa !22
  %1595 = bitcast %union.StackValue* %1593 to %struct.TString**
  store %struct.TString* %1591, %struct.TString** %1595, align 8, !tbaa !8
  %1596 = getelementptr inbounds %struct.TString, %struct.TString* %1591, i64 0, i32 1
  %1597 = load i8, i8* %1596, align 8, !tbaa !26
  %1598 = or i8 %1597, 64
  %1599 = getelementptr inbounds %union.StackValue, %union.StackValue* %1593, i64 0, i32 0, i32 1
  store i8 %1598, i8* %1599, align 8, !tbaa !27
  %1600 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %1601 = load %struct.Table*, %struct.Table** %1600, align 8, !tbaa !29
  %1602 = load %union.StackValue*, %union.StackValue** %1592, align 8, !tbaa !22
  %1603 = getelementptr inbounds %union.StackValue, %union.StackValue* %1602, i64 -1, i32 0
  %1604 = call %struct.TValue* @luaH_set(%struct.lua_State* %1590, %struct.Table* %1601, %struct.TValue* nonnull %1603) #5
  %1605 = getelementptr inbounds %struct.TValue, %struct.TValue* %1604, i64 0, i32 1
  %1606 = load i8, i8* %1605, align 8, !tbaa !27
  %1607 = and i8 %1606, 15
  %1608 = icmp eq i8 %1607, 0
  br i1 %1608, label %1609, label %1617

; <label>:1609:                                   ; preds = %1580
  %1610 = bitcast %struct.TValue* %1604 to i32*
  store i32 1, i32* %1610, align 8, !tbaa !8
  store i8 1, i8* %1605, align 8, !tbaa !27
  %1611 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1590, i64 0, i32 7
  %1612 = load %struct.global_State*, %struct.global_State** %1611, align 8, !tbaa !30
  %1613 = getelementptr inbounds %struct.global_State, %struct.global_State* %1612, i64 0, i32 3
  %1614 = load i64, i64* %1613, align 8, !tbaa !31
  %1615 = icmp sgt i64 %1614, 0
  br i1 %1615, label %1616, label %1621

; <label>:1616:                                   ; preds = %1609
  call void @luaC_step(%struct.lua_State* nonnull %1590) #5
  br label %1621

; <label>:1617:                                   ; preds = %1580
  %1618 = getelementptr inbounds %struct.TValue, %struct.TValue* %1604, i64 1, i32 0, i32 0
  %1619 = bitcast %struct.GCObject** %1618 to %struct.TString**
  %1620 = load %struct.TString*, %struct.TString** %1619, align 8, !tbaa !8
  br label %1621

; <label>:1621:                                   ; preds = %1609, %1616, %1617
  %1622 = phi %struct.TString* [ %1591, %1616 ], [ %1591, %1609 ], [ %1620, %1617 ]
  %1623 = load %union.StackValue*, %union.StackValue** %1592, align 8, !tbaa !22
  %1624 = getelementptr inbounds %union.StackValue, %union.StackValue* %1623, i64 -1
  store %union.StackValue* %1624, %union.StackValue** %1592, align 8, !tbaa !22
  %1625 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %1622, %struct.TString** %1625, align 8, !tbaa !8
  br label %1842

; <label>:1626:                                   ; preds = %10
  %1627 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1628 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1627, i64 0, i32 1
  %1629 = load i64, i64* %1628, align 8, !tbaa !17
  %1630 = add i64 %1629, 1
  %1631 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1627, i64 0, i32 2
  %1632 = load i64, i64* %1631, align 8, !tbaa !20
  %1633 = icmp ugt i64 %1630, %1632
  br i1 %1633, label %1637, label %1634

; <label>:1634:                                   ; preds = %1626
  %1635 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1627, i64 0, i32 0
  %1636 = load i8*, i8** %1635, align 8, !tbaa !21
  br label %1649

; <label>:1637:                                   ; preds = %1626
  %1638 = icmp ugt i64 %1632, 4611686018427387902
  br i1 %1638, label %1639, label %1640

; <label>:1639:                                   ; preds = %1637
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1640:                                   ; preds = %1637
  %1641 = shl i64 %1632, 1
  %1642 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1643 = load %struct.lua_State*, %struct.lua_State** %1642, align 8, !tbaa !9
  %1644 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1627, i64 0, i32 0
  %1645 = load i8*, i8** %1644, align 8, !tbaa !21
  %1646 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %1643, i8* %1645, i64 %1632, i64 %1641) #5
  store i8* %1646, i8** %1644, align 8, !tbaa !21
  store i64 %1641, i64* %1631, align 8, !tbaa !20
  %1647 = load i64, i64* %1628, align 8, !tbaa !17
  %1648 = add i64 %1647, 1
  br label %1649

; <label>:1649:                                   ; preds = %1634, %1640
  %1650 = phi i64 [ %1630, %1634 ], [ %1648, %1640 ]
  %1651 = phi i64 [ %1629, %1634 ], [ %1647, %1640 ]
  %1652 = phi i8* [ %1636, %1634 ], [ %1646, %1640 ]
  store i64 %1650, i64* %1628, align 8, !tbaa !17
  %1653 = getelementptr inbounds i8, i8* %1652, i64 %1651
  store i8 46, i8* %1653, align 1, !tbaa !8
  %1654 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1655 = getelementptr inbounds %struct.Zio, %struct.Zio* %1654, i64 0, i32 0
  %1656 = load i64, i64* %1655, align 8, !tbaa !46
  %1657 = add i64 %1656, -1
  store i64 %1657, i64* %1655, align 8, !tbaa !46
  %1658 = icmp eq i64 %1656, 0
  br i1 %1658, label %1665, label %1659

; <label>:1659:                                   ; preds = %1649
  %1660 = getelementptr inbounds %struct.Zio, %struct.Zio* %1654, i64 0, i32 1
  %1661 = load i8*, i8** %1660, align 8, !tbaa !48
  %1662 = getelementptr inbounds i8, i8* %1661, i64 1
  store i8* %1662, i8** %1660, align 8, !tbaa !48
  %1663 = load i8, i8* %1661, align 1, !tbaa !8
  %1664 = zext i8 %1663 to i32
  br label %1667

; <label>:1665:                                   ; preds = %1649
  %1666 = tail call i32 @luaZ_fill(%struct.Zio* %1654) #5
  br label %1667

; <label>:1667:                                   ; preds = %1665, %1659
  %1668 = phi i32 [ %1664, %1659 ], [ %1666, %1665 ]
  store i32 %1668, i32* %7, align 8, !tbaa !34
  %1669 = icmp eq i32 %1668, 46
  br i1 %1669, label %1670, label %1703

; <label>:1670:                                   ; preds = %1667
  %1671 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1672 = getelementptr inbounds %struct.Zio, %struct.Zio* %1671, i64 0, i32 0
  %1673 = load i64, i64* %1672, align 8, !tbaa !46
  %1674 = add i64 %1673, -1
  store i64 %1674, i64* %1672, align 8, !tbaa !46
  %1675 = icmp eq i64 %1673, 0
  br i1 %1675, label %1682, label %1676

; <label>:1676:                                   ; preds = %1670
  %1677 = getelementptr inbounds %struct.Zio, %struct.Zio* %1671, i64 0, i32 1
  %1678 = load i8*, i8** %1677, align 8, !tbaa !48
  %1679 = getelementptr inbounds i8, i8* %1678, i64 1
  store i8* %1679, i8** %1677, align 8, !tbaa !48
  %1680 = load i8, i8* %1678, align 1, !tbaa !8
  %1681 = zext i8 %1680 to i32
  br label %1684

; <label>:1682:                                   ; preds = %1670
  %1683 = tail call i32 @luaZ_fill(%struct.Zio* %1671) #5
  br label %1684

; <label>:1684:                                   ; preds = %1682, %1676
  %1685 = phi i32 [ %1681, %1676 ], [ %1683, %1682 ]
  store i32 %1685, i32* %7, align 8, !tbaa !34
  %1686 = icmp eq i32 %1685, 46
  br i1 %1686, label %1687, label %1842

; <label>:1687:                                   ; preds = %1684
  %1688 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1689 = getelementptr inbounds %struct.Zio, %struct.Zio* %1688, i64 0, i32 0
  %1690 = load i64, i64* %1689, align 8, !tbaa !46
  %1691 = add i64 %1690, -1
  store i64 %1691, i64* %1689, align 8, !tbaa !46
  %1692 = icmp eq i64 %1690, 0
  br i1 %1692, label %1699, label %1693

; <label>:1693:                                   ; preds = %1687
  %1694 = getelementptr inbounds %struct.Zio, %struct.Zio* %1688, i64 0, i32 1
  %1695 = load i8*, i8** %1694, align 8, !tbaa !48
  %1696 = getelementptr inbounds i8, i8* %1695, i64 1
  store i8* %1696, i8** %1694, align 8, !tbaa !48
  %1697 = load i8, i8* %1695, align 1, !tbaa !8
  %1698 = zext i8 %1697 to i32
  br label %1701

; <label>:1699:                                   ; preds = %1687
  %1700 = tail call i32 @luaZ_fill(%struct.Zio* %1688) #5
  br label %1701

; <label>:1701:                                   ; preds = %1693, %1699
  %1702 = phi i32 [ %1698, %1693 ], [ %1700, %1699 ]
  store i32 %1702, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:1703:                                   ; preds = %1667
  %1704 = add nsw i32 %1668, 1
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1705
  %1707 = load i8, i8* %1706, align 1, !tbaa !8
  %1708 = and i8 %1707, 2
  %1709 = icmp eq i8 %1708, 0
  br i1 %1709, label %1842, label %1710

; <label>:1710:                                   ; preds = %1703
  %1711 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %1842

; <label>:1712:                                   ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %1713 = tail call fastcc i32 @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1)
  br label %1842

; <label>:1714:                                   ; preds = %10
  %1715 = add nsw i32 %11, 1
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1716
  %1718 = load i8, i8* %1717, align 1, !tbaa !8
  %1719 = and i8 %1718, 1
  %1720 = icmp eq i8 %1719, 0
  br i1 %1720, label %1826, label %1721

; <label>:1721:                                   ; preds = %1714
  %1722 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %1723

; <label>:1723:                                   ; preds = %1765, %1721
  %1724 = phi i32 [ %1766, %1765 ], [ %11, %1721 ]
  %1725 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1726 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1725, i64 0, i32 1
  %1727 = load i64, i64* %1726, align 8, !tbaa !17
  %1728 = add i64 %1727, 1
  %1729 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1725, i64 0, i32 2
  %1730 = load i64, i64* %1729, align 8, !tbaa !20
  %1731 = icmp ugt i64 %1728, %1730
  br i1 %1731, label %1735, label %1732

; <label>:1732:                                   ; preds = %1723
  %1733 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1725, i64 0, i32 0
  %1734 = load i8*, i8** %1733, align 8, !tbaa !21
  br label %1746

; <label>:1735:                                   ; preds = %1723
  %1736 = icmp ugt i64 %1730, 4611686018427387902
  br i1 %1736, label %1737, label %1738

; <label>:1737:                                   ; preds = %1735
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:1738:                                   ; preds = %1735
  %1739 = shl i64 %1730, 1
  %1740 = load %struct.lua_State*, %struct.lua_State** %1722, align 8, !tbaa !9
  %1741 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1725, i64 0, i32 0
  %1742 = load i8*, i8** %1741, align 8, !tbaa !21
  %1743 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %1740, i8* %1742, i64 %1730, i64 %1739) #5
  store i8* %1743, i8** %1741, align 8, !tbaa !21
  store i64 %1739, i64* %1729, align 8, !tbaa !20
  %1744 = load i64, i64* %1726, align 8, !tbaa !17
  %1745 = add i64 %1744, 1
  br label %1746

; <label>:1746:                                   ; preds = %1732, %1738
  %1747 = phi i64 [ %1728, %1732 ], [ %1745, %1738 ]
  %1748 = phi i64 [ %1727, %1732 ], [ %1744, %1738 ]
  %1749 = phi i8* [ %1734, %1732 ], [ %1743, %1738 ]
  %1750 = trunc i32 %1724 to i8
  store i64 %1747, i64* %1726, align 8, !tbaa !17
  %1751 = getelementptr inbounds i8, i8* %1749, i64 %1748
  store i8 %1750, i8* %1751, align 1, !tbaa !8
  %1752 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1753 = getelementptr inbounds %struct.Zio, %struct.Zio* %1752, i64 0, i32 0
  %1754 = load i64, i64* %1753, align 8, !tbaa !46
  %1755 = add i64 %1754, -1
  store i64 %1755, i64* %1753, align 8, !tbaa !46
  %1756 = icmp eq i64 %1754, 0
  br i1 %1756, label %1763, label %1757

; <label>:1757:                                   ; preds = %1746
  %1758 = getelementptr inbounds %struct.Zio, %struct.Zio* %1752, i64 0, i32 1
  %1759 = load i8*, i8** %1758, align 8, !tbaa !48
  %1760 = getelementptr inbounds i8, i8* %1759, i64 1
  store i8* %1760, i8** %1758, align 8, !tbaa !48
  %1761 = load i8, i8* %1759, align 1, !tbaa !8
  %1762 = zext i8 %1761 to i32
  br label %1765

; <label>:1763:                                   ; preds = %1746
  %1764 = tail call i32 @luaZ_fill(%struct.Zio* %1752) #5
  br label %1765

; <label>:1765:                                   ; preds = %1763, %1757
  %1766 = phi i32 [ %1762, %1757 ], [ %1764, %1763 ]
  store i32 %1766, i32* %7, align 8, !tbaa !34
  %1767 = add nsw i32 %1766, 1
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %1768
  %1770 = load i8, i8* %1769, align 1, !tbaa !8
  %1771 = and i8 %1770, 3
  %1772 = icmp eq i8 %1771, 0
  br i1 %1772, label %1773, label %1723

; <label>:1773:                                   ; preds = %1765
  %1774 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !tbaa !16
  %1775 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1774, i64 0, i32 0
  %1776 = load i8*, i8** %1775, align 8, !tbaa !21
  %1777 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1774, i64 0, i32 1
  %1778 = load i64, i64* %1777, align 8, !tbaa !17
  %1779 = load %struct.lua_State*, %struct.lua_State** %1722, align 8, !tbaa !9
  %1780 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %1779, i8* %1776, i64 %1778) #5
  %1781 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1779, i64 0, i32 6
  %1782 = load %union.StackValue*, %union.StackValue** %1781, align 8, !tbaa !22
  %1783 = getelementptr inbounds %union.StackValue, %union.StackValue* %1782, i64 1
  store %union.StackValue* %1783, %union.StackValue** %1781, align 8, !tbaa !22
  %1784 = bitcast %union.StackValue* %1782 to %struct.TString**
  store %struct.TString* %1780, %struct.TString** %1784, align 8, !tbaa !8
  %1785 = getelementptr inbounds %struct.TString, %struct.TString* %1780, i64 0, i32 1
  %1786 = load i8, i8* %1785, align 8, !tbaa !26
  %1787 = or i8 %1786, 64
  %1788 = getelementptr inbounds %union.StackValue, %union.StackValue* %1782, i64 0, i32 0, i32 1
  store i8 %1787, i8* %1788, align 8, !tbaa !27
  %1789 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %1790 = load %struct.Table*, %struct.Table** %1789, align 8, !tbaa !29
  %1791 = load %union.StackValue*, %union.StackValue** %1781, align 8, !tbaa !22
  %1792 = getelementptr inbounds %union.StackValue, %union.StackValue* %1791, i64 -1, i32 0
  %1793 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %1779, %struct.Table* %1790, %struct.TValue* nonnull %1792) #5
  %1794 = getelementptr inbounds %struct.TValue, %struct.TValue* %1793, i64 0, i32 1
  %1795 = load i8, i8* %1794, align 8, !tbaa !27
  %1796 = and i8 %1795, 15
  %1797 = icmp eq i8 %1796, 0
  br i1 %1797, label %1798, label %1806

; <label>:1798:                                   ; preds = %1773
  %1799 = bitcast %struct.TValue* %1793 to i32*
  store i32 1, i32* %1799, align 8, !tbaa !8
  store i8 1, i8* %1794, align 8, !tbaa !27
  %1800 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1779, i64 0, i32 7
  %1801 = load %struct.global_State*, %struct.global_State** %1800, align 8, !tbaa !30
  %1802 = getelementptr inbounds %struct.global_State, %struct.global_State* %1801, i64 0, i32 3
  %1803 = load i64, i64* %1802, align 8, !tbaa !31
  %1804 = icmp sgt i64 %1803, 0
  br i1 %1804, label %1805, label %1811

; <label>:1805:                                   ; preds = %1798
  tail call void @luaC_step(%struct.lua_State* nonnull %1779) #5
  br label %1811

; <label>:1806:                                   ; preds = %1773
  %1807 = getelementptr inbounds %struct.TValue, %struct.TValue* %1793, i64 1, i32 0, i32 0
  %1808 = bitcast %struct.GCObject** %1807 to %struct.TString**
  %1809 = load %struct.TString*, %struct.TString** %1808, align 8, !tbaa !8
  %1810 = getelementptr inbounds %struct.TString, %struct.TString* %1809, i64 0, i32 1
  br label %1811

; <label>:1811:                                   ; preds = %1798, %1805, %1806
  %1812 = phi i8* [ %1785, %1798 ], [ %1785, %1805 ], [ %1810, %1806 ]
  %1813 = phi %struct.TString* [ %1780, %1798 ], [ %1780, %1805 ], [ %1809, %1806 ]
  %1814 = load %union.StackValue*, %union.StackValue** %1781, align 8, !tbaa !22
  %1815 = getelementptr inbounds %union.StackValue, %union.StackValue* %1814, i64 -1
  store %union.StackValue* %1815, %union.StackValue** %1781, align 8, !tbaa !22
  %1816 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %1813, %struct.TString** %1816, align 8, !tbaa !8
  %1817 = load i8, i8* %1812, align 8, !tbaa !26
  %1818 = icmp eq i8 %1817, 20
  br i1 %1818, label %1819, label %1842

; <label>:1819:                                   ; preds = %1811
  %1820 = getelementptr inbounds %struct.TString, %struct.TString* %1813, i64 0, i32 3
  %1821 = load i8, i8* %1820, align 2, !tbaa !2
  %1822 = icmp eq i8 %1821, 0
  br i1 %1822, label %1842, label %1823

; <label>:1823:                                   ; preds = %1819
  %1824 = zext i8 %1821 to i32
  %1825 = or i32 %1824, 256
  br label %1842

; <label>:1826:                                   ; preds = %1714
  %1827 = load %struct.Zio*, %struct.Zio** %8, align 8, !tbaa !36
  %1828 = getelementptr inbounds %struct.Zio, %struct.Zio* %1827, i64 0, i32 0
  %1829 = load i64, i64* %1828, align 8, !tbaa !46
  %1830 = add i64 %1829, -1
  store i64 %1830, i64* %1828, align 8, !tbaa !46
  %1831 = icmp eq i64 %1829, 0
  br i1 %1831, label %1838, label %1832

; <label>:1832:                                   ; preds = %1826
  %1833 = getelementptr inbounds %struct.Zio, %struct.Zio* %1827, i64 0, i32 1
  %1834 = load i8*, i8** %1833, align 8, !tbaa !48
  %1835 = getelementptr inbounds i8, i8* %1834, i64 1
  store i8* %1835, i8** %1833, align 8, !tbaa !48
  %1836 = load i8, i8* %1834, align 1, !tbaa !8
  %1837 = zext i8 %1836 to i32
  br label %1840

; <label>:1838:                                   ; preds = %1826
  %1839 = tail call i32 @luaZ_fill(%struct.Zio* %1827) #5
  br label %1840

; <label>:1840:                                   ; preds = %1838, %1832
  %1841 = phi i32 [ %1837, %1832 ], [ %1839, %1838 ]
  store i32 %1841, i32* %7, align 8, !tbaa !34
  br label %1842

; <label>:1842:                                   ; preds = %10, %82, %234, %186, %1701, %1684, %365, %348, %332, %315, %299, %282, %266, %250, %218, %202, %170, %153, %1823, %1819, %1811, %1703, %135, %136, %1840, %1712, %1710, %1621
  %1843 = phi i32 [ %11, %1840 ], [ %1713, %1712 ], [ %1711, %1710 ], [ 293, %1621 ], [ 293, %135 ], [ 91, %136 ], [ 284, %202 ], [ 283, %250 ], [ 46, %1703 ], [ %1825, %1823 ], [ 292, %1819 ], [ 292, %1811 ], [ 282, %170 ], [ 61, %153 ], [ 286, %218 ], [ 287, %266 ], [ 279, %299 ], [ 47, %282 ], [ 285, %332 ], [ 126, %315 ], [ 288, %365 ], [ 58, %348 ], [ 281, %1701 ], [ 280, %1684 ], [ 60, %186 ], [ 62, %234 ], [ 289, %10 ], [ 45, %82 ]
  ret i32 %1843
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
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !9
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
  store i8 %31, i8* %32, align 1, !tbaa !8
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
  %43 = load i8, i8* %41, align 1, !tbaa !8
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
  %69 = load %struct.lua_State*, %struct.lua_State** %51, align 8, !tbaa !9
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
  store i8 61, i8* %79, align 1, !tbaa !8
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
  %89 = load i8, i8* %87, align 1, !tbaa !8
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
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !9
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
  store i8 %35, i8* %36, align 1, !tbaa !8
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
  %47 = load i8, i8* %45, align 1, !tbaa !8
  %48 = zext i8 %47 to i32
  br label %51

; <label>:49:                                     ; preds = %31
  %50 = tail call i32 @luaZ_fill(%struct.Zio* %38) #5
  br label %51

; <label>:51:                                     ; preds = %49, %43
  %52 = phi i32 [ %48, %43 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 8, !tbaa !34
  switch i32 %52, label %93 [
    i32 10, label %53
    i32 13, label %53
  ]

; <label>:53:                                     ; preds = %51, %51
  %54 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %55 = getelementptr inbounds %struct.Zio, %struct.Zio* %54, i64 0, i32 0
  %56 = load i64, i64* %55, align 8, !tbaa !46
  %57 = add i64 %56, -1
  store i64 %57, i64* %55, align 8, !tbaa !46
  %58 = icmp eq i64 %56, 0
  br i1 %58, label %65, label %59

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.Zio, %struct.Zio* %54, i64 0, i32 1
  %61 = load i8*, i8** %60, align 8, !tbaa !48
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %60, align 8, !tbaa !48
  %63 = load i8, i8* %61, align 1, !tbaa !8
  %64 = zext i8 %63 to i32
  br label %67

; <label>:65:                                     ; preds = %53
  %66 = tail call i32 @luaZ_fill(%struct.Zio* %54) #5
  br label %67

; <label>:67:                                     ; preds = %65, %59
  %68 = phi i32 [ %64, %59 ], [ %66, %65 ]
  store i32 %68, i32* %6, align 8, !tbaa !34
  switch i32 %68, label %87 [
    i32 10, label %69
    i32 13, label %69
  ]

; <label>:69:                                     ; preds = %67, %67
  %70 = icmp eq i32 %68, %52
  br i1 %70, label %87, label %71

; <label>:71:                                     ; preds = %69
  %72 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct.Zio, %struct.Zio* %72, i64 0, i32 0
  %74 = load i64, i64* %73, align 8, !tbaa !46
  %75 = add i64 %74, -1
  store i64 %75, i64* %73, align 8, !tbaa !46
  %76 = icmp eq i64 %74, 0
  br i1 %76, label %83, label %77

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds %struct.Zio, %struct.Zio* %72, i64 0, i32 1
  %79 = load i8*, i8** %78, align 8, !tbaa !48
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %78, align 8, !tbaa !48
  %81 = load i8, i8* %79, align 1, !tbaa !8
  %82 = zext i8 %81 to i32
  br label %85

; <label>:83:                                     ; preds = %71
  %84 = tail call i32 @luaZ_fill(%struct.Zio* %72) #5
  br label %85

; <label>:85:                                     ; preds = %83, %77
  %86 = phi i32 [ %82, %77 ], [ %84, %83 ]
  store i32 %86, i32* %6, align 8, !tbaa !34
  br label %87

; <label>:87:                                     ; preds = %85, %69, %67
  %88 = phi i32 [ %86, %85 ], [ %52, %69 ], [ %68, %67 ]
  %89 = load i32, i32* %4, align 4, !tbaa !15
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4, !tbaa !15
  %91 = icmp eq i32 %90, 2147483647
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %87
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:93:                                     ; preds = %87, %51
  %94 = phi i32 [ %88, %87 ], [ %52, %51 ]
  %95 = icmp eq %union.SemInfo* %1, null
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %97

; <label>:97:                                     ; preds = %107, %93
  %98 = phi i32 [ %94, %93 ], [ %108, %107 ]
  switch i32 %98, label %223 [
    i32 -1, label %99
    i32 93, label %103
    i32 10, label %152
    i32 13, label %152
  ]

; <label>:99:                                     ; preds = %97
  %100 = select i1 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %101 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !9
  %102 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0), i8* %100, i32 %5) #5
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* %102, i32 289) #6
  unreachable

; <label>:103:                                    ; preds = %97
  %104 = tail call fastcc i64 @skip_sep(%struct.LexState* nonnull %0)
  %105 = icmp eq i64 %104, %2
  %106 = load i32, i32* %6, align 8, !tbaa !34
  br i1 %105, label %109, label %107

; <label>:107:                                    ; preds = %103, %219, %265, %281, %220
  %108 = phi i32 [ %214, %219 ], [ %266, %265 ], [ %282, %281 ], [ %214, %220 ], [ %106, %103 ]
  br label %97

; <label>:109:                                    ; preds = %103
  %110 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %111 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %110, i64 0, i32 1
  %112 = load i64, i64* %111, align 8, !tbaa !17
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %110, i64 0, i32 2
  %115 = load i64, i64* %114, align 8, !tbaa !20
  %116 = icmp ugt i64 %113, %115
  br i1 %116, label %120, label %117

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %110, i64 0, i32 0
  %119 = load i8*, i8** %118, align 8, !tbaa !21
  br label %131

; <label>:120:                                    ; preds = %109
  %121 = icmp ugt i64 %115, 4611686018427387902
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %120
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:123:                                    ; preds = %120
  %124 = shl i64 %115, 1
  %125 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !9
  %126 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %110, i64 0, i32 0
  %127 = load i8*, i8** %126, align 8, !tbaa !21
  %128 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %125, i8* %127, i64 %115, i64 %124) #5
  store i8* %128, i8** %126, align 8, !tbaa !21
  store i64 %124, i64* %114, align 8, !tbaa !20
  %129 = load i64, i64* %111, align 8, !tbaa !17
  %130 = add i64 %129, 1
  br label %131

; <label>:131:                                    ; preds = %117, %123
  %132 = phi i64 [ %113, %117 ], [ %130, %123 ]
  %133 = phi i64 [ %112, %117 ], [ %129, %123 ]
  %134 = phi i8* [ %119, %117 ], [ %128, %123 ]
  %135 = trunc i32 %106 to i8
  store i64 %132, i64* %111, align 8, !tbaa !17
  %136 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8 %135, i8* %136, align 1, !tbaa !8
  %137 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %138 = getelementptr inbounds %struct.Zio, %struct.Zio* %137, i64 0, i32 0
  %139 = load i64, i64* %138, align 8, !tbaa !46
  %140 = add i64 %139, -1
  store i64 %140, i64* %138, align 8, !tbaa !46
  %141 = icmp eq i64 %139, 0
  br i1 %141, label %148, label %142

; <label>:142:                                    ; preds = %131
  %143 = getelementptr inbounds %struct.Zio, %struct.Zio* %137, i64 0, i32 1
  %144 = load i8*, i8** %143, align 8, !tbaa !48
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %145, i8** %143, align 8, !tbaa !48
  %146 = load i8, i8* %144, align 1, !tbaa !8
  %147 = zext i8 %146 to i32
  br label %150

; <label>:148:                                    ; preds = %131
  %149 = tail call i32 @luaZ_fill(%struct.Zio* %137) #5
  br label %150

; <label>:150:                                    ; preds = %148, %142
  %151 = phi i32 [ %147, %142 ], [ %149, %148 ]
  store i32 %151, i32* %6, align 8, !tbaa !34
  br i1 %95, label %328, label %283

; <label>:152:                                    ; preds = %97, %97
  %153 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %154 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %153, i64 0, i32 1
  %155 = load i64, i64* %154, align 8, !tbaa !17
  %156 = add i64 %155, 1
  %157 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %153, i64 0, i32 2
  %158 = load i64, i64* %157, align 8, !tbaa !20
  %159 = icmp ugt i64 %156, %158
  br i1 %159, label %163, label %160

; <label>:160:                                    ; preds = %152
  %161 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %153, i64 0, i32 0
  %162 = load i8*, i8** %161, align 8, !tbaa !21
  br label %174

; <label>:163:                                    ; preds = %152
  %164 = icmp ugt i64 %158, 4611686018427387902
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %163
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:166:                                    ; preds = %163
  %167 = shl i64 %158, 1
  %168 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !9
  %169 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %153, i64 0, i32 0
  %170 = load i8*, i8** %169, align 8, !tbaa !21
  %171 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %168, i8* %170, i64 %158, i64 %167) #5
  store i8* %171, i8** %169, align 8, !tbaa !21
  store i64 %167, i64* %157, align 8, !tbaa !20
  %172 = load i64, i64* %154, align 8, !tbaa !17
  %173 = add i64 %172, 1
  br label %174

; <label>:174:                                    ; preds = %160, %166
  %175 = phi i64 [ %156, %160 ], [ %173, %166 ]
  %176 = phi i64 [ %155, %160 ], [ %172, %166 ]
  %177 = phi i8* [ %162, %160 ], [ %171, %166 ]
  store i64 %175, i64* %154, align 8, !tbaa !17
  %178 = getelementptr inbounds i8, i8* %177, i64 %176
  store i8 10, i8* %178, align 1, !tbaa !8
  %179 = load i32, i32* %6, align 8, !tbaa !34
  %180 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %181 = getelementptr inbounds %struct.Zio, %struct.Zio* %180, i64 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !46
  %183 = add i64 %182, -1
  store i64 %183, i64* %181, align 8, !tbaa !46
  %184 = icmp eq i64 %182, 0
  br i1 %184, label %191, label %185

; <label>:185:                                    ; preds = %174
  %186 = getelementptr inbounds %struct.Zio, %struct.Zio* %180, i64 0, i32 1
  %187 = load i8*, i8** %186, align 8, !tbaa !48
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8* %188, i8** %186, align 8, !tbaa !48
  %189 = load i8, i8* %187, align 1, !tbaa !8
  %190 = zext i8 %189 to i32
  br label %193

; <label>:191:                                    ; preds = %174
  %192 = tail call i32 @luaZ_fill(%struct.Zio* %180) #5
  br label %193

; <label>:193:                                    ; preds = %191, %185
  %194 = phi i32 [ %190, %185 ], [ %192, %191 ]
  store i32 %194, i32* %6, align 8, !tbaa !34
  switch i32 %194, label %213 [
    i32 10, label %195
    i32 13, label %195
  ]

; <label>:195:                                    ; preds = %193, %193
  %196 = icmp eq i32 %194, %179
  br i1 %196, label %213, label %197

; <label>:197:                                    ; preds = %195
  %198 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
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
  %207 = load i8, i8* %205, align 1, !tbaa !8
  %208 = zext i8 %207 to i32
  br label %211

; <label>:209:                                    ; preds = %197
  %210 = tail call i32 @luaZ_fill(%struct.Zio* %198) #5
  br label %211

; <label>:211:                                    ; preds = %209, %203
  %212 = phi i32 [ %208, %203 ], [ %210, %209 ]
  store i32 %212, i32* %6, align 8, !tbaa !34
  br label %213

; <label>:213:                                    ; preds = %211, %195, %193
  %214 = phi i32 [ %212, %211 ], [ %179, %195 ], [ %194, %193 ]
  %215 = load i32, i32* %4, align 4, !tbaa !15
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4, !tbaa !15
  %217 = icmp eq i32 %216, 2147483647
  br i1 %217, label %218, label %219

; <label>:218:                                    ; preds = %213
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:219:                                    ; preds = %213
  br i1 %95, label %220, label %107

; <label>:220:                                    ; preds = %219
  %221 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %222 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %221, i64 0, i32 1
  store i64 0, i64* %222, align 8, !tbaa !17
  br label %107

; <label>:223:                                    ; preds = %97
  br i1 %95, label %267, label %224

; <label>:224:                                    ; preds = %223
  %225 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %226 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %225, i64 0, i32 1
  %227 = load i64, i64* %226, align 8, !tbaa !17
  %228 = add i64 %227, 1
  %229 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %225, i64 0, i32 2
  %230 = load i64, i64* %229, align 8, !tbaa !20
  %231 = icmp ugt i64 %228, %230
  br i1 %231, label %235, label %232

; <label>:232:                                    ; preds = %224
  %233 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %225, i64 0, i32 0
  %234 = load i8*, i8** %233, align 8, !tbaa !21
  br label %246

; <label>:235:                                    ; preds = %224
  %236 = icmp ugt i64 %230, 4611686018427387902
  br i1 %236, label %237, label %238

; <label>:237:                                    ; preds = %235
  tail call fastcc void @lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 0) #7
  unreachable

; <label>:238:                                    ; preds = %235
  %239 = shl i64 %230, 1
  %240 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !9
  %241 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %225, i64 0, i32 0
  %242 = load i8*, i8** %241, align 8, !tbaa !21
  %243 = tail call i8* @luaM_saferealloc_(%struct.lua_State* %240, i8* %242, i64 %230, i64 %239) #5
  store i8* %243, i8** %241, align 8, !tbaa !21
  store i64 %239, i64* %229, align 8, !tbaa !20
  %244 = load i64, i64* %226, align 8, !tbaa !17
  %245 = add i64 %244, 1
  br label %246

; <label>:246:                                    ; preds = %232, %238
  %247 = phi i64 [ %228, %232 ], [ %245, %238 ]
  %248 = phi i64 [ %227, %232 ], [ %244, %238 ]
  %249 = phi i8* [ %234, %232 ], [ %243, %238 ]
  %250 = trunc i32 %98 to i8
  store i64 %247, i64* %226, align 8, !tbaa !17
  %251 = getelementptr inbounds i8, i8* %249, i64 %248
  store i8 %250, i8* %251, align 1, !tbaa !8
  %252 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %253 = getelementptr inbounds %struct.Zio, %struct.Zio* %252, i64 0, i32 0
  %254 = load i64, i64* %253, align 8, !tbaa !46
  %255 = add i64 %254, -1
  store i64 %255, i64* %253, align 8, !tbaa !46
  %256 = icmp eq i64 %254, 0
  br i1 %256, label %263, label %257

; <label>:257:                                    ; preds = %246
  %258 = getelementptr inbounds %struct.Zio, %struct.Zio* %252, i64 0, i32 1
  %259 = load i8*, i8** %258, align 8, !tbaa !48
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  store i8* %260, i8** %258, align 8, !tbaa !48
  %261 = load i8, i8* %259, align 1, !tbaa !8
  %262 = zext i8 %261 to i32
  br label %265

; <label>:263:                                    ; preds = %246
  %264 = tail call i32 @luaZ_fill(%struct.Zio* %252) #5
  br label %265

; <label>:265:                                    ; preds = %263, %257
  %266 = phi i32 [ %262, %257 ], [ %264, %263 ]
  store i32 %266, i32* %6, align 8, !tbaa !34
  br label %107

; <label>:267:                                    ; preds = %223
  %268 = load %struct.Zio*, %struct.Zio** %37, align 8, !tbaa !36
  %269 = getelementptr inbounds %struct.Zio, %struct.Zio* %268, i64 0, i32 0
  %270 = load i64, i64* %269, align 8, !tbaa !46
  %271 = add i64 %270, -1
  store i64 %271, i64* %269, align 8, !tbaa !46
  %272 = icmp eq i64 %270, 0
  br i1 %272, label %279, label %273

; <label>:273:                                    ; preds = %267
  %274 = getelementptr inbounds %struct.Zio, %struct.Zio* %268, i64 0, i32 1
  %275 = load i8*, i8** %274, align 8, !tbaa !48
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  store i8* %276, i8** %274, align 8, !tbaa !48
  %277 = load i8, i8* %275, align 1, !tbaa !8
  %278 = zext i8 %277 to i32
  br label %281

; <label>:279:                                    ; preds = %267
  %280 = tail call i32 @luaZ_fill(%struct.Zio* %268) #5
  br label %281

; <label>:281:                                    ; preds = %279, %273
  %282 = phi i32 [ %278, %273 ], [ %280, %279 ]
  store i32 %282, i32* %6, align 8, !tbaa !34
  br label %107

; <label>:283:                                    ; preds = %150
  %284 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8, !tbaa !16
  %285 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 0
  %286 = load i8*, i8** %285, align 8, !tbaa !21
  %287 = getelementptr inbounds i8, i8* %286, i64 %2
  %288 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 1
  %289 = load i64, i64* %288, align 8, !tbaa !17
  %290 = shl i64 %2, 1
  %291 = sub i64 %289, %290
  %292 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !9
  %293 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %292, i8* %287, i64 %291) #5
  %294 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %292, i64 0, i32 6
  %295 = load %union.StackValue*, %union.StackValue** %294, align 8, !tbaa !22
  %296 = getelementptr inbounds %union.StackValue, %union.StackValue* %295, i64 1
  store %union.StackValue* %296, %union.StackValue** %294, align 8, !tbaa !22
  %297 = bitcast %union.StackValue* %295 to %struct.TString**
  store %struct.TString* %293, %struct.TString** %297, align 8, !tbaa !8
  %298 = getelementptr inbounds %struct.TString, %struct.TString* %293, i64 0, i32 1
  %299 = load i8, i8* %298, align 8, !tbaa !26
  %300 = or i8 %299, 64
  %301 = getelementptr inbounds %union.StackValue, %union.StackValue* %295, i64 0, i32 0, i32 1
  store i8 %300, i8* %301, align 8, !tbaa !27
  %302 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %303 = load %struct.Table*, %struct.Table** %302, align 8, !tbaa !29
  %304 = load %union.StackValue*, %union.StackValue** %294, align 8, !tbaa !22
  %305 = getelementptr inbounds %union.StackValue, %union.StackValue* %304, i64 -1, i32 0
  %306 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %292, %struct.Table* %303, %struct.TValue* nonnull %305) #5
  %307 = getelementptr inbounds %struct.TValue, %struct.TValue* %306, i64 0, i32 1
  %308 = load i8, i8* %307, align 8, !tbaa !27
  %309 = and i8 %308, 15
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %319

; <label>:311:                                    ; preds = %283
  %312 = bitcast %struct.TValue* %306 to i32*
  store i32 1, i32* %312, align 8, !tbaa !8
  store i8 1, i8* %307, align 8, !tbaa !27
  %313 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %292, i64 0, i32 7
  %314 = load %struct.global_State*, %struct.global_State** %313, align 8, !tbaa !30
  %315 = getelementptr inbounds %struct.global_State, %struct.global_State* %314, i64 0, i32 3
  %316 = load i64, i64* %315, align 8, !tbaa !31
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %318, label %323

; <label>:318:                                    ; preds = %311
  tail call void @luaC_step(%struct.lua_State* nonnull %292) #5
  br label %323

; <label>:319:                                    ; preds = %283
  %320 = getelementptr inbounds %struct.TValue, %struct.TValue* %306, i64 1, i32 0, i32 0
  %321 = bitcast %struct.GCObject** %320 to %struct.TString**
  %322 = load %struct.TString*, %struct.TString** %321, align 8, !tbaa !8
  br label %323

; <label>:323:                                    ; preds = %311, %318, %319
  %324 = phi %struct.TString* [ %293, %318 ], [ %293, %311 ], [ %322, %319 ]
  %325 = load %union.StackValue*, %union.StackValue** %294, align 8, !tbaa !22
  %326 = getelementptr inbounds %union.StackValue, %union.StackValue* %325, i64 -1
  store %union.StackValue* %326, %union.StackValue** %294, align 8, !tbaa !22
  %327 = bitcast %union.SemInfo* %1 to %struct.TString**
  store %struct.TString* %324, %struct.TString** %327, align 8, !tbaa !8
  br label %328

; <label>:328:                                    ; preds = %150, %323
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
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !9
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
  store i8 %34, i8* %35, align 1, !tbaa !8
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
  %46 = load i8, i8* %44, align 1, !tbaa !8
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
  %71 = load %struct.lua_State*, %struct.lua_State** %70, align 8, !tbaa !9
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
  store i8 %81, i8* %82, align 1, !tbaa !8
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
  %92 = load i8, i8* %90, align 1, !tbaa !8
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
  %105 = load i8, i8* %100, align 1, !tbaa !8
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %112, label %108

; <label>:108:                                    ; preds = %103
  %109 = load i8, i8* %101, align 1, !tbaa !8
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
  %128 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 %138, i8* %139, align 1, !tbaa !8
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
  %149 = load i8, i8* %147, align 1, !tbaa !8
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
  %171 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 %181, i8* %182, align 1, !tbaa !8
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
  %192 = load i8, i8* %190, align 1, !tbaa !8
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
  %203 = load i8, i8* %202, align 1, !tbaa !8
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
  %222 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 %232, i8* %233, align 1, !tbaa !8
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
  %243 = load i8, i8* %241, align 1, !tbaa !8
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
  %265 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 46, i8* %275, align 1, !tbaa !8
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
  %285 = load i8, i8* %283, align 1, !tbaa !8
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
  %310 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 %320, i8* %321, align 1, !tbaa !8
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
  %331 = load i8, i8* %329, align 1, !tbaa !8
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
  %353 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !tbaa !9
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
  store i8 0, i8* %363, align 1, !tbaa !8
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
  %375 = load i64, i64* %374, align 8, !tbaa !8
  %376 = bitcast %union.SemInfo* %1 to i64*
  store i64 %375, i64* %376, align 8, !tbaa !8
  %377 = select i1 %373, i32 291, i32 290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5
  ret i32 %377
}

declare hidden i32 @luaO_hexavalue(i32) local_unnamed_addr #2

declare hidden i32 @luaO_utf8esc(i8*, i64) local_unnamed_addr #2

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !5, i64 10}
!3 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !4, i64 56}
!10 = !{!"LexState", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !11, i64 32, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104}
!11 = !{!"Token", !7, i64 0, !5, i64 8}
!12 = !{!4, !4, i64 0}
!13 = !{!10, !7, i64 16}
!14 = !{!10, !4, i64 96}
!15 = !{!10, !7, i64 4}
!16 = !{!10, !4, i64 72}
!17 = !{!18, !19, i64 8}
!18 = !{!"Mbuffer", !4, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!18, !4, i64 0}
!22 = !{!23, !4, i64 16}
!23 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !24, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !25, i64 96, !4, i64 160, !19, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192}
!24 = !{!"short", !5, i64 0}
!25 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !24, i64 60, !24, i64 62}
!26 = !{!3, !5, i64 8}
!27 = !{!28, !5, i64 8}
!28 = !{!"TValue", !5, i64 0, !5, i64 8}
!29 = !{!10, !4, i64 80}
!30 = !{!23, !4, i64 24}
!31 = !{!32, !19, i64 24}
!32 = !{!"global_State", !4, i64 0, !4, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !33, i64 48, !28, i64 64, !28, i64 80, !7, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!33 = !{!"stringtable", !4, i64 0, !7, i64 8, !7, i64 12}
!34 = !{!10, !7, i64 0}
!35 = !{!10, !7, i64 32}
!36 = !{!10, !4, i64 64}
!37 = !{!10, !4, i64 48}
!38 = !{!10, !7, i64 8}
!39 = !{!10, !4, i64 104}
!40 = !{i64 0, i64 4, !41, i64 8, i64 8, !42, i64 8, i64 8, !44, i64 8, i64 8, !12}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !5, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"long long", !5, i64 0}
!46 = !{!47, !19, i64 0}
!47 = !{!"Zio", !19, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32}
!48 = !{!47, !4, i64 8}
