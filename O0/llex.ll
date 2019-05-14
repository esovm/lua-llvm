; ModuleID = 'llex.c'
source_filename = "llex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %struct.lua_State }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.BlockCnt = type opaque
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.3, %struct.Labellist, %struct.Labellist }
%struct.anon.3 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }

@.str = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@luaX_tokens = internal constant [37 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"<integer>\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"%s near %s\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"lexical element too long\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@luai_ctype_ = external hidden constant [257 x i8], align 16
@.str.43 = private unnamed_addr constant [25 x i8] c"chunk has too many lines\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"unfinished long %s (starting at line %d)\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"hexadecimal digit expected\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"missing '{'\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"UTF-8 value too large\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"missing '}'\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"decimal escape too large\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaX_init(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4)
  store %struct.TString* %7, %struct.TString** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct.TString*, %struct.TString** %4, align 8
  %10 = bitcast %struct.TString* %9 to %union.GCUnion*
  %11 = bitcast %union.GCUnion* %10 to %struct.GCObject*
  call void @luaC_fix(%struct.lua_State* %8, %struct.GCObject* %11)
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %31, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 22
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [37 x i8*], [37 x i8*]* @luaX_tokens, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call %struct.TString* @luaS_new(%struct.lua_State* %16, i8* %20)
  store %struct.TString* %21, %struct.TString** %5, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load %struct.TString*, %struct.TString** %5, align 8
  %24 = bitcast %struct.TString* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.GCObject*
  call void @luaC_fix(%struct.lua_State* %22, %struct.GCObject* %25)
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  %29 = load %struct.TString*, %struct.TString** %5, align 8
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %29, i32 0, i32 3
  store i8 %28, i8* %30, align 2
  br label %31

; <label>:31:                                     ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %12

; <label>:34:                                     ; preds = %12
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaX_token2str(%struct.LexState*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 257
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  store i8* %14, i8** %3, align 8
  br label %31

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 257
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [37 x i8*], [37 x i8*]* @luaX_tokens, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 289
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %15
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 6
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %27)
  store i8* %28, i8** %3, align 8
  br label %31

; <label>:29:                                     ; preds = %15
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %31

; <label>:31:                                     ; preds = %29, %23, %9
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #2 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.Token, %struct.Token* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  call void @lexerror(%struct.LexState* %5, i8* %6, i32 %10) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @lexerror(%struct.LexState*, i8*, i32) #2 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.LexState*, %struct.LexState** %4, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.LexState*, %struct.LexState** %4, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 11
  %13 = load %struct.TString*, %struct.TString** %12, align 8
  %14 = load %struct.LexState*, %struct.LexState** %4, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @luaG_addinfo(%struct.lua_State* %9, i8* %10, %struct.TString* %13, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %3
  %21 = load %struct.LexState*, %struct.LexState** %4, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 6
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @txtToken(%struct.LexState* %25, i32 %26)
  %28 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* %24, i8* %27)
  br label %29

; <label>:29:                                     ; preds = %20, %3
  %30 = load %struct.LexState*, %struct.LexState** %4, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 6
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  call void @luaD_throw(%struct.lua_State* %32, i32 3) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.TString*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.TString*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  store %struct.lua_State* %15, %struct.lua_State** %7, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %16, i8* %17, i64 %18)
  store %struct.TString* %19, %struct.TString** %9, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 5
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 1
  store %struct.lua_TValue* %23, %struct.lua_TValue** %21, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %10, align 8
  %24 = load %struct.TString*, %struct.TString** %9, align 8
  store %struct.TString* %24, %struct.TString** %11, align 8
  %25 = load %struct.TString*, %struct.TString** %11, align 8
  %26 = bitcast %struct.TString* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.GCObject*
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  store %struct.GCObject* %27, %struct.GCObject** %30, align 8
  %31 = load %struct.TString*, %struct.TString** %11, align 8
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 64
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %39 = load %struct.LexState*, %struct.LexState** %4, align 8
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 9
  %41 = load %struct.Table*, %struct.Table** %40, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 5
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 -1
  %46 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %38, %struct.Table* %41, %struct.lua_TValue* %45)
  store %struct.lua_TValue* %46, %struct.lua_TValue** %8, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

; <label>:51:                                     ; preds = %3
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %52, %struct.lua_TValue** %12, align 8
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to i32*
  store i32 1, i32* %55, align 8
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 6
  %60 = load %struct.global_State*, %struct.global_State** %59, align 8
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %51
  %65 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaC_step(%struct.lua_State* %65)
  br label %66

; <label>:66:                                     ; preds = %64, %51
  br label %79

; <label>:67:                                     ; preds = %3
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %69 = bitcast %struct.lua_TValue* %68 to i8*
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = bitcast i8* %70 to %struct.Node*
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %71, i32 0, i32 1
  %73 = bitcast %union.TKey* %72 to %struct.lua_TValue*
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %74 to %struct.GCObject**
  %76 = load %struct.GCObject*, %struct.GCObject** %75, align 8
  %77 = bitcast %struct.GCObject* %76 to %union.GCUnion*
  %78 = bitcast %union.GCUnion* %77 to %struct.TString*
  store %struct.TString* %78, %struct.TString** %9, align 8
  br label %79

; <label>:79:                                     ; preds = %67, %66
  %80 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 5
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i32 -1
  store %struct.lua_TValue* %83, %struct.lua_TValue** %81, align 8
  %84 = load %struct.TString*, %struct.TString** %9, align 8
  ret %struct.TString* %84
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.LexState*, align 8
  %8 = alloca %struct.Zio*, align 8
  %9 = alloca %struct.TString*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.LexState* %1, %struct.LexState** %7, align 8
  store %struct.Zio* %2, %struct.Zio** %8, align 8
  store %struct.TString* %3, %struct.TString** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.LexState*, %struct.LexState** %7, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Token, %struct.Token* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %15 = load %struct.LexState*, %struct.LexState** %7, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 6
  store %struct.lua_State* %14, %struct.lua_State** %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.LexState*, %struct.LexState** %7, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.LexState*, %struct.LexState** %7, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 0
  store i32 289, i32* %22, align 8
  %23 = load %struct.Zio*, %struct.Zio** %8, align 8
  %24 = load %struct.LexState*, %struct.LexState** %7, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 7
  store %struct.Zio* %23, %struct.Zio** %25, align 8
  %26 = load %struct.LexState*, %struct.LexState** %7, align 8
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 5
  store %struct.FuncState* null, %struct.FuncState** %27, align 8
  %28 = load %struct.LexState*, %struct.LexState** %7, align 8
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.LexState*, %struct.LexState** %7, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.TString*, %struct.TString** %9, align 8
  %33 = load %struct.LexState*, %struct.LexState** %7, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 11
  store %struct.TString* %32, %struct.TString** %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %36 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4)
  %37 = load %struct.LexState*, %struct.LexState** %7, align 8
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 12
  store %struct.TString* %36, %struct.TString** %38, align 8
  %39 = load %struct.LexState*, %struct.LexState** %7, align 8
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 6
  %41 = load %struct.lua_State*, %struct.lua_State** %40, align 8
  %42 = load %struct.LexState*, %struct.LexState** %7, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 8
  %44 = load %struct.Mbuffer*, %struct.Mbuffer** %43, align 8
  %45 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.LexState*, %struct.LexState** %7, align 8
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i32 0, i32 8
  %49 = load %struct.Mbuffer*, %struct.Mbuffer** %48, align 8
  %50 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 1
  %53 = call i8* @luaM_realloc_(%struct.lua_State* %41, i8* %46, i64 %52, i64 32)
  %54 = load %struct.LexState*, %struct.LexState** %7, align 8
  %55 = getelementptr inbounds %struct.LexState, %struct.LexState* %54, i32 0, i32 8
  %56 = load %struct.Mbuffer*, %struct.Mbuffer** %55, align 8
  %57 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.LexState*, %struct.LexState** %7, align 8
  %59 = getelementptr inbounds %struct.LexState, %struct.LexState* %58, i32 0, i32 8
  %60 = load %struct.Mbuffer*, %struct.Mbuffer** %59, align 8
  %61 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %60, i32 0, i32 2
  store i64 32, i64* %61, align 8
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaX_next(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %3 = load %struct.LexState*, %struct.LexState** %2, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 289
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %1
  %14 = load %struct.LexState*, %struct.LexState** %2, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 3
  %16 = load %struct.LexState*, %struct.LexState** %2, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 4
  %18 = bitcast %struct.Token* %15 to i8*
  %19 = bitcast %struct.Token* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = load %struct.LexState*, %struct.LexState** %2, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 0
  store i32 289, i32* %22, align 8
  br label %32

; <label>:23:                                     ; preds = %1
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  %25 = load %struct.LexState*, %struct.LexState** %2, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.Token, %struct.Token* %26, i32 0, i32 1
  %28 = call i32 @llex(%struct.LexState* %24, %union.SemInfo* %27)
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.Token, %struct.Token* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  br label %32

; <label>:32:                                     ; preds = %23, %13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(%struct.LexState*, %union.SemInfo*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %union.SemInfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %union.SemInfo* %1, %union.SemInfo** %5, align 8
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 8
  %12 = load %struct.Mbuffer*, %struct.Mbuffer** %11, align 8
  %13 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

; <label>:14:                                     ; preds = %565, %2
  %15 = load %struct.LexState*, %struct.LexState** %4, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %447 [
    i32 10, label %18
    i32 13, label %18
    i32 32, label %20
    i32 12, label %20
    i32 9, label %20
    i32 11, label %20
    i32 45, label %46
    i32 91, label %169
    i32 61, label %185
    i32 60, label %216
    i32 62, label %252
    i32 47, label %288
    i32 126, label %319
    i32 58, label %350
    i32 34, label %381
    i32 39, label %381
    i32 46, label %387
    i32 48, label %442
    i32 49, label %442
    i32 50, label %442
    i32 51, label %442
    i32 52, label %442
    i32 53, label %442
    i32 54, label %442
    i32 55, label %442
    i32 56, label %442
    i32 57, label %442
    i32 -1, label %446
  ]

; <label>:18:                                     ; preds = %14, %14
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @inclinenumber(%struct.LexState* %19)
  br label %565

; <label>:20:                                     ; preds = %14, %14, %14, %14
  %21 = load %struct.LexState*, %struct.LexState** %4, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 7
  %23 = load %struct.Zio*, %struct.Zio** %22, align 8
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp ugt i64 %25, 0
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %20
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 7
  %31 = load %struct.Zio*, %struct.Zio** %30, align 8
  %32 = getelementptr inbounds %struct.Zio, %struct.Zio* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  br label %42

; <label>:37:                                     ; preds = %20
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 7
  %40 = load %struct.Zio*, %struct.Zio** %39, align 8
  %41 = call i32 @luaZ_fill(%struct.Zio* %40)
  br label %42

; <label>:42:                                     ; preds = %37, %28
  %43 = phi i32 [ %36, %28 ], [ %41, %37 ]
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  %45 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %565

; <label>:46:                                     ; preds = %14
  %47 = load %struct.LexState*, %struct.LexState** %4, align 8
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i32 0, i32 7
  %49 = load %struct.Zio*, %struct.Zio** %48, align 8
  %50 = getelementptr inbounds %struct.Zio, %struct.Zio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = icmp ugt i64 %51, 0
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %46
  %55 = load %struct.LexState*, %struct.LexState** %4, align 8
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 7
  %57 = load %struct.Zio*, %struct.Zio** %56, align 8
  %58 = getelementptr inbounds %struct.Zio, %struct.Zio* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  br label %68

; <label>:63:                                     ; preds = %46
  %64 = load %struct.LexState*, %struct.LexState** %4, align 8
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i32 0, i32 7
  %66 = load %struct.Zio*, %struct.Zio** %65, align 8
  %67 = call i32 @luaZ_fill(%struct.Zio* %66)
  br label %68

; <label>:68:                                     ; preds = %63, %54
  %69 = phi i32 [ %62, %54 ], [ %67, %63 ]
  %70 = load %struct.LexState*, %struct.LexState** %4, align 8
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.LexState*, %struct.LexState** %4, align 8
  %73 = getelementptr inbounds %struct.LexState, %struct.LexState* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 45
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %68
  store i32 45, i32* %3, align 4
  br label %566

; <label>:77:                                     ; preds = %68
  %78 = load %struct.LexState*, %struct.LexState** %4, align 8
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i32 0, i32 7
  %80 = load %struct.Zio*, %struct.Zio** %79, align 8
  %81 = getelementptr inbounds %struct.Zio, %struct.Zio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = icmp ugt i64 %82, 0
  br i1 %84, label %85, label %94

; <label>:85:                                     ; preds = %77
  %86 = load %struct.LexState*, %struct.LexState** %4, align 8
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %86, i32 0, i32 7
  %88 = load %struct.Zio*, %struct.Zio** %87, align 8
  %89 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  br label %99

; <label>:94:                                     ; preds = %77
  %95 = load %struct.LexState*, %struct.LexState** %4, align 8
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %95, i32 0, i32 7
  %97 = load %struct.Zio*, %struct.Zio** %96, align 8
  %98 = call i32 @luaZ_fill(%struct.Zio* %97)
  br label %99

; <label>:99:                                     ; preds = %94, %85
  %100 = phi i32 [ %93, %85 ], [ %98, %94 ]
  %101 = load %struct.LexState*, %struct.LexState** %4, align 8
  %102 = getelementptr inbounds %struct.LexState, %struct.LexState* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.LexState*, %struct.LexState** %4, align 8
  %104 = getelementptr inbounds %struct.LexState, %struct.LexState* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 91
  br i1 %106, label %107, label %124

; <label>:107:                                    ; preds = %99
  %108 = load %struct.LexState*, %struct.LexState** %4, align 8
  %109 = call i64 @skip_sep(%struct.LexState* %108)
  store i64 %109, i64* %6, align 8
  %110 = load %struct.LexState*, %struct.LexState** %4, align 8
  %111 = getelementptr inbounds %struct.LexState, %struct.LexState* %110, i32 0, i32 8
  %112 = load %struct.Mbuffer*, %struct.Mbuffer** %111, align 8
  %113 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp uge i64 %114, 2
  br i1 %115, label %116, label %123

; <label>:116:                                    ; preds = %107
  %117 = load %struct.LexState*, %struct.LexState** %4, align 8
  %118 = load i64, i64* %6, align 8
  call void @read_long_string(%struct.LexState* %117, %union.SemInfo* null, i64 %118)
  %119 = load %struct.LexState*, %struct.LexState** %4, align 8
  %120 = getelementptr inbounds %struct.LexState, %struct.LexState* %119, i32 0, i32 8
  %121 = load %struct.Mbuffer*, %struct.Mbuffer** %120, align 8
  %122 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  br label %565

; <label>:123:                                    ; preds = %107
  br label %124

; <label>:124:                                    ; preds = %123, %99
  br label %125

; <label>:125:                                    ; preds = %164, %124
  %126 = load %struct.LexState*, %struct.LexState** %4, align 8
  %127 = getelementptr inbounds %struct.LexState, %struct.LexState* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %140, label %130

; <label>:130:                                    ; preds = %125
  %131 = load %struct.LexState*, %struct.LexState** %4, align 8
  %132 = getelementptr inbounds %struct.LexState, %struct.LexState* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 13
  br i1 %134, label %140, label %135

; <label>:135:                                    ; preds = %130
  %136 = load %struct.LexState*, %struct.LexState** %4, align 8
  %137 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, -1
  br label %140

; <label>:140:                                    ; preds = %135, %130, %125
  %141 = phi i1 [ false, %130 ], [ false, %125 ], [ %139, %135 ]
  br i1 %141, label %142, label %168

; <label>:142:                                    ; preds = %140
  %143 = load %struct.LexState*, %struct.LexState** %4, align 8
  %144 = getelementptr inbounds %struct.LexState, %struct.LexState* %143, i32 0, i32 7
  %145 = load %struct.Zio*, %struct.Zio** %144, align 8
  %146 = getelementptr inbounds %struct.Zio, %struct.Zio* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %146, align 8
  %149 = icmp ugt i64 %147, 0
  br i1 %149, label %150, label %159

; <label>:150:                                    ; preds = %142
  %151 = load %struct.LexState*, %struct.LexState** %4, align 8
  %152 = getelementptr inbounds %struct.LexState, %struct.LexState* %151, i32 0, i32 7
  %153 = load %struct.Zio*, %struct.Zio** %152, align 8
  %154 = getelementptr inbounds %struct.Zio, %struct.Zio* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %154, align 8
  %157 = load i8, i8* %155, align 1
  %158 = zext i8 %157 to i32
  br label %164

; <label>:159:                                    ; preds = %142
  %160 = load %struct.LexState*, %struct.LexState** %4, align 8
  %161 = getelementptr inbounds %struct.LexState, %struct.LexState* %160, i32 0, i32 7
  %162 = load %struct.Zio*, %struct.Zio** %161, align 8
  %163 = call i32 @luaZ_fill(%struct.Zio* %162)
  br label %164

; <label>:164:                                    ; preds = %159, %150
  %165 = phi i32 [ %158, %150 ], [ %163, %159 ]
  %166 = load %struct.LexState*, %struct.LexState** %4, align 8
  %167 = getelementptr inbounds %struct.LexState, %struct.LexState* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %125

; <label>:168:                                    ; preds = %140
  br label %565

; <label>:169:                                    ; preds = %14
  %170 = load %struct.LexState*, %struct.LexState** %4, align 8
  %171 = call i64 @skip_sep(%struct.LexState* %170)
  store i64 %171, i64* %7, align 8
  %172 = load i64, i64* %7, align 8
  %173 = icmp uge i64 %172, 2
  br i1 %173, label %174, label %178

; <label>:174:                                    ; preds = %169
  %175 = load %struct.LexState*, %struct.LexState** %4, align 8
  %176 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %177 = load i64, i64* %7, align 8
  call void @read_long_string(%struct.LexState* %175, %union.SemInfo* %176, i64 %177)
  store i32 293, i32* %3, align 4
  br label %566

; <label>:178:                                    ; preds = %169
  %179 = load i64, i64* %7, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

; <label>:181:                                    ; preds = %178
  %182 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @lexerror(%struct.LexState* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 293) #5
  unreachable

; <label>:183:                                    ; preds = %178
  br label %184

; <label>:184:                                    ; preds = %183
  store i32 91, i32* %3, align 4
  br label %566

; <label>:185:                                    ; preds = %14
  %186 = load %struct.LexState*, %struct.LexState** %4, align 8
  %187 = getelementptr inbounds %struct.LexState, %struct.LexState* %186, i32 0, i32 7
  %188 = load %struct.Zio*, %struct.Zio** %187, align 8
  %189 = getelementptr inbounds %struct.Zio, %struct.Zio* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, -1
  store i64 %191, i64* %189, align 8
  %192 = icmp ugt i64 %190, 0
  br i1 %192, label %193, label %202

; <label>:193:                                    ; preds = %185
  %194 = load %struct.LexState*, %struct.LexState** %4, align 8
  %195 = getelementptr inbounds %struct.LexState, %struct.LexState* %194, i32 0, i32 7
  %196 = load %struct.Zio*, %struct.Zio** %195, align 8
  %197 = getelementptr inbounds %struct.Zio, %struct.Zio* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %197, align 8
  %200 = load i8, i8* %198, align 1
  %201 = zext i8 %200 to i32
  br label %207

; <label>:202:                                    ; preds = %185
  %203 = load %struct.LexState*, %struct.LexState** %4, align 8
  %204 = getelementptr inbounds %struct.LexState, %struct.LexState* %203, i32 0, i32 7
  %205 = load %struct.Zio*, %struct.Zio** %204, align 8
  %206 = call i32 @luaZ_fill(%struct.Zio* %205)
  br label %207

; <label>:207:                                    ; preds = %202, %193
  %208 = phi i32 [ %201, %193 ], [ %206, %202 ]
  %209 = load %struct.LexState*, %struct.LexState** %4, align 8
  %210 = getelementptr inbounds %struct.LexState, %struct.LexState* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.LexState*, %struct.LexState** %4, align 8
  %212 = call i32 @check_next1(%struct.LexState* %211, i32 61)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

; <label>:214:                                    ; preds = %207
  store i32 282, i32* %3, align 4
  br label %566

; <label>:215:                                    ; preds = %207
  store i32 61, i32* %3, align 4
  br label %566

; <label>:216:                                    ; preds = %14
  %217 = load %struct.LexState*, %struct.LexState** %4, align 8
  %218 = getelementptr inbounds %struct.LexState, %struct.LexState* %217, i32 0, i32 7
  %219 = load %struct.Zio*, %struct.Zio** %218, align 8
  %220 = getelementptr inbounds %struct.Zio, %struct.Zio* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %220, align 8
  %223 = icmp ugt i64 %221, 0
  br i1 %223, label %224, label %233

; <label>:224:                                    ; preds = %216
  %225 = load %struct.LexState*, %struct.LexState** %4, align 8
  %226 = getelementptr inbounds %struct.LexState, %struct.LexState* %225, i32 0, i32 7
  %227 = load %struct.Zio*, %struct.Zio** %226, align 8
  %228 = getelementptr inbounds %struct.Zio, %struct.Zio* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %228, align 8
  %231 = load i8, i8* %229, align 1
  %232 = zext i8 %231 to i32
  br label %238

; <label>:233:                                    ; preds = %216
  %234 = load %struct.LexState*, %struct.LexState** %4, align 8
  %235 = getelementptr inbounds %struct.LexState, %struct.LexState* %234, i32 0, i32 7
  %236 = load %struct.Zio*, %struct.Zio** %235, align 8
  %237 = call i32 @luaZ_fill(%struct.Zio* %236)
  br label %238

; <label>:238:                                    ; preds = %233, %224
  %239 = phi i32 [ %232, %224 ], [ %237, %233 ]
  %240 = load %struct.LexState*, %struct.LexState** %4, align 8
  %241 = getelementptr inbounds %struct.LexState, %struct.LexState* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.LexState*, %struct.LexState** %4, align 8
  %243 = call i32 @check_next1(%struct.LexState* %242, i32 61)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

; <label>:245:                                    ; preds = %238
  store i32 284, i32* %3, align 4
  br label %566

; <label>:246:                                    ; preds = %238
  %247 = load %struct.LexState*, %struct.LexState** %4, align 8
  %248 = call i32 @check_next1(%struct.LexState* %247, i32 60)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %246
  store i32 286, i32* %3, align 4
  br label %566

; <label>:251:                                    ; preds = %246
  store i32 60, i32* %3, align 4
  br label %566

; <label>:252:                                    ; preds = %14
  %253 = load %struct.LexState*, %struct.LexState** %4, align 8
  %254 = getelementptr inbounds %struct.LexState, %struct.LexState* %253, i32 0, i32 7
  %255 = load %struct.Zio*, %struct.Zio** %254, align 8
  %256 = getelementptr inbounds %struct.Zio, %struct.Zio* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, -1
  store i64 %258, i64* %256, align 8
  %259 = icmp ugt i64 %257, 0
  br i1 %259, label %260, label %269

; <label>:260:                                    ; preds = %252
  %261 = load %struct.LexState*, %struct.LexState** %4, align 8
  %262 = getelementptr inbounds %struct.LexState, %struct.LexState* %261, i32 0, i32 7
  %263 = load %struct.Zio*, %struct.Zio** %262, align 8
  %264 = getelementptr inbounds %struct.Zio, %struct.Zio* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %264, align 8
  %267 = load i8, i8* %265, align 1
  %268 = zext i8 %267 to i32
  br label %274

; <label>:269:                                    ; preds = %252
  %270 = load %struct.LexState*, %struct.LexState** %4, align 8
  %271 = getelementptr inbounds %struct.LexState, %struct.LexState* %270, i32 0, i32 7
  %272 = load %struct.Zio*, %struct.Zio** %271, align 8
  %273 = call i32 @luaZ_fill(%struct.Zio* %272)
  br label %274

; <label>:274:                                    ; preds = %269, %260
  %275 = phi i32 [ %268, %260 ], [ %273, %269 ]
  %276 = load %struct.LexState*, %struct.LexState** %4, align 8
  %277 = getelementptr inbounds %struct.LexState, %struct.LexState* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.LexState*, %struct.LexState** %4, align 8
  %279 = call i32 @check_next1(%struct.LexState* %278, i32 61)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

; <label>:281:                                    ; preds = %274
  store i32 283, i32* %3, align 4
  br label %566

; <label>:282:                                    ; preds = %274
  %283 = load %struct.LexState*, %struct.LexState** %4, align 8
  %284 = call i32 @check_next1(%struct.LexState* %283, i32 62)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

; <label>:286:                                    ; preds = %282
  store i32 287, i32* %3, align 4
  br label %566

; <label>:287:                                    ; preds = %282
  store i32 62, i32* %3, align 4
  br label %566

; <label>:288:                                    ; preds = %14
  %289 = load %struct.LexState*, %struct.LexState** %4, align 8
  %290 = getelementptr inbounds %struct.LexState, %struct.LexState* %289, i32 0, i32 7
  %291 = load %struct.Zio*, %struct.Zio** %290, align 8
  %292 = getelementptr inbounds %struct.Zio, %struct.Zio* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %293, -1
  store i64 %294, i64* %292, align 8
  %295 = icmp ugt i64 %293, 0
  br i1 %295, label %296, label %305

; <label>:296:                                    ; preds = %288
  %297 = load %struct.LexState*, %struct.LexState** %4, align 8
  %298 = getelementptr inbounds %struct.LexState, %struct.LexState* %297, i32 0, i32 7
  %299 = load %struct.Zio*, %struct.Zio** %298, align 8
  %300 = getelementptr inbounds %struct.Zio, %struct.Zio* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %300, align 8
  %303 = load i8, i8* %301, align 1
  %304 = zext i8 %303 to i32
  br label %310

; <label>:305:                                    ; preds = %288
  %306 = load %struct.LexState*, %struct.LexState** %4, align 8
  %307 = getelementptr inbounds %struct.LexState, %struct.LexState* %306, i32 0, i32 7
  %308 = load %struct.Zio*, %struct.Zio** %307, align 8
  %309 = call i32 @luaZ_fill(%struct.Zio* %308)
  br label %310

; <label>:310:                                    ; preds = %305, %296
  %311 = phi i32 [ %304, %296 ], [ %309, %305 ]
  %312 = load %struct.LexState*, %struct.LexState** %4, align 8
  %313 = getelementptr inbounds %struct.LexState, %struct.LexState* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.LexState*, %struct.LexState** %4, align 8
  %315 = call i32 @check_next1(%struct.LexState* %314, i32 47)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

; <label>:317:                                    ; preds = %310
  store i32 279, i32* %3, align 4
  br label %566

; <label>:318:                                    ; preds = %310
  store i32 47, i32* %3, align 4
  br label %566

; <label>:319:                                    ; preds = %14
  %320 = load %struct.LexState*, %struct.LexState** %4, align 8
  %321 = getelementptr inbounds %struct.LexState, %struct.LexState* %320, i32 0, i32 7
  %322 = load %struct.Zio*, %struct.Zio** %321, align 8
  %323 = getelementptr inbounds %struct.Zio, %struct.Zio* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = add i64 %324, -1
  store i64 %325, i64* %323, align 8
  %326 = icmp ugt i64 %324, 0
  br i1 %326, label %327, label %336

; <label>:327:                                    ; preds = %319
  %328 = load %struct.LexState*, %struct.LexState** %4, align 8
  %329 = getelementptr inbounds %struct.LexState, %struct.LexState* %328, i32 0, i32 7
  %330 = load %struct.Zio*, %struct.Zio** %329, align 8
  %331 = getelementptr inbounds %struct.Zio, %struct.Zio* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %331, align 8
  %334 = load i8, i8* %332, align 1
  %335 = zext i8 %334 to i32
  br label %341

; <label>:336:                                    ; preds = %319
  %337 = load %struct.LexState*, %struct.LexState** %4, align 8
  %338 = getelementptr inbounds %struct.LexState, %struct.LexState* %337, i32 0, i32 7
  %339 = load %struct.Zio*, %struct.Zio** %338, align 8
  %340 = call i32 @luaZ_fill(%struct.Zio* %339)
  br label %341

; <label>:341:                                    ; preds = %336, %327
  %342 = phi i32 [ %335, %327 ], [ %340, %336 ]
  %343 = load %struct.LexState*, %struct.LexState** %4, align 8
  %344 = getelementptr inbounds %struct.LexState, %struct.LexState* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load %struct.LexState*, %struct.LexState** %4, align 8
  %346 = call i32 @check_next1(%struct.LexState* %345, i32 61)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

; <label>:348:                                    ; preds = %341
  store i32 285, i32* %3, align 4
  br label %566

; <label>:349:                                    ; preds = %341
  store i32 126, i32* %3, align 4
  br label %566

; <label>:350:                                    ; preds = %14
  %351 = load %struct.LexState*, %struct.LexState** %4, align 8
  %352 = getelementptr inbounds %struct.LexState, %struct.LexState* %351, i32 0, i32 7
  %353 = load %struct.Zio*, %struct.Zio** %352, align 8
  %354 = getelementptr inbounds %struct.Zio, %struct.Zio* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = add i64 %355, -1
  store i64 %356, i64* %354, align 8
  %357 = icmp ugt i64 %355, 0
  br i1 %357, label %358, label %367

; <label>:358:                                    ; preds = %350
  %359 = load %struct.LexState*, %struct.LexState** %4, align 8
  %360 = getelementptr inbounds %struct.LexState, %struct.LexState* %359, i32 0, i32 7
  %361 = load %struct.Zio*, %struct.Zio** %360, align 8
  %362 = getelementptr inbounds %struct.Zio, %struct.Zio* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %362, align 8
  %365 = load i8, i8* %363, align 1
  %366 = zext i8 %365 to i32
  br label %372

; <label>:367:                                    ; preds = %350
  %368 = load %struct.LexState*, %struct.LexState** %4, align 8
  %369 = getelementptr inbounds %struct.LexState, %struct.LexState* %368, i32 0, i32 7
  %370 = load %struct.Zio*, %struct.Zio** %369, align 8
  %371 = call i32 @luaZ_fill(%struct.Zio* %370)
  br label %372

; <label>:372:                                    ; preds = %367, %358
  %373 = phi i32 [ %366, %358 ], [ %371, %367 ]
  %374 = load %struct.LexState*, %struct.LexState** %4, align 8
  %375 = getelementptr inbounds %struct.LexState, %struct.LexState* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  %376 = load %struct.LexState*, %struct.LexState** %4, align 8
  %377 = call i32 @check_next1(%struct.LexState* %376, i32 58)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

; <label>:379:                                    ; preds = %372
  store i32 288, i32* %3, align 4
  br label %566

; <label>:380:                                    ; preds = %372
  store i32 58, i32* %3, align 4
  br label %566

; <label>:381:                                    ; preds = %14, %14
  %382 = load %struct.LexState*, %struct.LexState** %4, align 8
  %383 = load %struct.LexState*, %struct.LexState** %4, align 8
  %384 = getelementptr inbounds %struct.LexState, %struct.LexState* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  call void @read_string(%struct.LexState* %382, i32 %385, %union.SemInfo* %386)
  store i32 293, i32* %3, align 4
  br label %566

; <label>:387:                                    ; preds = %14
  %388 = load %struct.LexState*, %struct.LexState** %4, align 8
  %389 = load %struct.LexState*, %struct.LexState** %4, align 8
  %390 = getelementptr inbounds %struct.LexState, %struct.LexState* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  call void @save(%struct.LexState* %388, i32 %391)
  %392 = load %struct.LexState*, %struct.LexState** %4, align 8
  %393 = getelementptr inbounds %struct.LexState, %struct.LexState* %392, i32 0, i32 7
  %394 = load %struct.Zio*, %struct.Zio** %393, align 8
  %395 = getelementptr inbounds %struct.Zio, %struct.Zio* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %396, -1
  store i64 %397, i64* %395, align 8
  %398 = icmp ugt i64 %396, 0
  br i1 %398, label %399, label %408

; <label>:399:                                    ; preds = %387
  %400 = load %struct.LexState*, %struct.LexState** %4, align 8
  %401 = getelementptr inbounds %struct.LexState, %struct.LexState* %400, i32 0, i32 7
  %402 = load %struct.Zio*, %struct.Zio** %401, align 8
  %403 = getelementptr inbounds %struct.Zio, %struct.Zio* %402, i32 0, i32 1
  %404 = load i8*, i8** %403, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %403, align 8
  %406 = load i8, i8* %404, align 1
  %407 = zext i8 %406 to i32
  br label %413

; <label>:408:                                    ; preds = %387
  %409 = load %struct.LexState*, %struct.LexState** %4, align 8
  %410 = getelementptr inbounds %struct.LexState, %struct.LexState* %409, i32 0, i32 7
  %411 = load %struct.Zio*, %struct.Zio** %410, align 8
  %412 = call i32 @luaZ_fill(%struct.Zio* %411)
  br label %413

; <label>:413:                                    ; preds = %408, %399
  %414 = phi i32 [ %407, %399 ], [ %412, %408 ]
  %415 = load %struct.LexState*, %struct.LexState** %4, align 8
  %416 = getelementptr inbounds %struct.LexState, %struct.LexState* %415, i32 0, i32 0
  store i32 %414, i32* %416, align 8
  %417 = load %struct.LexState*, %struct.LexState** %4, align 8
  %418 = call i32 @check_next1(%struct.LexState* %417, i32 46)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %426

; <label>:420:                                    ; preds = %413
  %421 = load %struct.LexState*, %struct.LexState** %4, align 8
  %422 = call i32 @check_next1(%struct.LexState* %421, i32 46)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

; <label>:424:                                    ; preds = %420
  store i32 281, i32* %3, align 4
  br label %566

; <label>:425:                                    ; preds = %420
  store i32 280, i32* %3, align 4
  br label %566

; <label>:426:                                    ; preds = %413
  %427 = load %struct.LexState*, %struct.LexState** %4, align 8
  %428 = getelementptr inbounds %struct.LexState, %struct.LexState* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i32
  %435 = and i32 %434, 2
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %438, label %437

; <label>:437:                                    ; preds = %426
  store i32 46, i32* %3, align 4
  br label %566

; <label>:438:                                    ; preds = %426
  %439 = load %struct.LexState*, %struct.LexState** %4, align 8
  %440 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %441 = call i32 @read_numeral(%struct.LexState* %439, %union.SemInfo* %440)
  store i32 %441, i32* %3, align 4
  br label %566

; <label>:442:                                    ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %443 = load %struct.LexState*, %struct.LexState** %4, align 8
  %444 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %445 = call i32 @read_numeral(%struct.LexState* %443, %union.SemInfo* %444)
  store i32 %445, i32* %3, align 4
  br label %566

; <label>:446:                                    ; preds = %14
  store i32 289, i32* %3, align 4
  br label %566

; <label>:447:                                    ; preds = %14
  %448 = load %struct.LexState*, %struct.LexState** %4, align 8
  %449 = getelementptr inbounds %struct.LexState, %struct.LexState* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = add nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %452
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i32
  %456 = and i32 %455, 1
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %535

; <label>:458:                                    ; preds = %447
  br label %459

; <label>:459:                                    ; preds = %489, %458
  %460 = load %struct.LexState*, %struct.LexState** %4, align 8
  %461 = load %struct.LexState*, %struct.LexState** %4, align 8
  %462 = getelementptr inbounds %struct.LexState, %struct.LexState* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  call void @save(%struct.LexState* %460, i32 %463)
  %464 = load %struct.LexState*, %struct.LexState** %4, align 8
  %465 = getelementptr inbounds %struct.LexState, %struct.LexState* %464, i32 0, i32 7
  %466 = load %struct.Zio*, %struct.Zio** %465, align 8
  %467 = getelementptr inbounds %struct.Zio, %struct.Zio* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = add i64 %468, -1
  store i64 %469, i64* %467, align 8
  %470 = icmp ugt i64 %468, 0
  br i1 %470, label %471, label %480

; <label>:471:                                    ; preds = %459
  %472 = load %struct.LexState*, %struct.LexState** %4, align 8
  %473 = getelementptr inbounds %struct.LexState, %struct.LexState* %472, i32 0, i32 7
  %474 = load %struct.Zio*, %struct.Zio** %473, align 8
  %475 = getelementptr inbounds %struct.Zio, %struct.Zio* %474, i32 0, i32 1
  %476 = load i8*, i8** %475, align 8
  %477 = getelementptr inbounds i8, i8* %476, i32 1
  store i8* %477, i8** %475, align 8
  %478 = load i8, i8* %476, align 1
  %479 = zext i8 %478 to i32
  br label %485

; <label>:480:                                    ; preds = %459
  %481 = load %struct.LexState*, %struct.LexState** %4, align 8
  %482 = getelementptr inbounds %struct.LexState, %struct.LexState* %481, i32 0, i32 7
  %483 = load %struct.Zio*, %struct.Zio** %482, align 8
  %484 = call i32 @luaZ_fill(%struct.Zio* %483)
  br label %485

; <label>:485:                                    ; preds = %480, %471
  %486 = phi i32 [ %479, %471 ], [ %484, %480 ]
  %487 = load %struct.LexState*, %struct.LexState** %4, align 8
  %488 = getelementptr inbounds %struct.LexState, %struct.LexState* %487, i32 0, i32 0
  store i32 %486, i32* %488, align 8
  br label %489

; <label>:489:                                    ; preds = %485
  %490 = load %struct.LexState*, %struct.LexState** %4, align 8
  %491 = getelementptr inbounds %struct.LexState, %struct.LexState* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = add nsw i32 %492, 1
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %494
  %496 = load i8, i8* %495, align 1
  %497 = zext i8 %496 to i32
  %498 = and i32 %497, 3
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %459, label %500

; <label>:500:                                    ; preds = %489
  %501 = load %struct.LexState*, %struct.LexState** %4, align 8
  %502 = load %struct.LexState*, %struct.LexState** %4, align 8
  %503 = getelementptr inbounds %struct.LexState, %struct.LexState* %502, i32 0, i32 8
  %504 = load %struct.Mbuffer*, %struct.Mbuffer** %503, align 8
  %505 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %504, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8
  %507 = load %struct.LexState*, %struct.LexState** %4, align 8
  %508 = getelementptr inbounds %struct.LexState, %struct.LexState* %507, i32 0, i32 8
  %509 = load %struct.Mbuffer*, %struct.Mbuffer** %508, align 8
  %510 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %509, i32 0, i32 1
  %511 = load i64, i64* %510, align 8
  %512 = call %struct.TString* @luaX_newstring(%struct.LexState* %501, i8* %506, i64 %511)
  store %struct.TString* %512, %struct.TString** %8, align 8
  %513 = load %struct.TString*, %struct.TString** %8, align 8
  %514 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %515 = bitcast %union.SemInfo* %514 to %struct.TString**
  store %struct.TString* %513, %struct.TString** %515, align 8
  %516 = load %struct.TString*, %struct.TString** %8, align 8
  %517 = getelementptr inbounds %struct.TString, %struct.TString* %516, i32 0, i32 1
  %518 = load i8, i8* %517, align 8
  %519 = zext i8 %518 to i32
  %520 = icmp eq i32 %519, 4
  br i1 %520, label %521, label %534

; <label>:521:                                    ; preds = %500
  %522 = load %struct.TString*, %struct.TString** %8, align 8
  %523 = getelementptr inbounds %struct.TString, %struct.TString* %522, i32 0, i32 3
  %524 = load i8, i8* %523, align 2
  %525 = zext i8 %524 to i32
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %534

; <label>:527:                                    ; preds = %521
  %528 = load %struct.TString*, %struct.TString** %8, align 8
  %529 = getelementptr inbounds %struct.TString, %struct.TString* %528, i32 0, i32 3
  %530 = load i8, i8* %529, align 2
  %531 = zext i8 %530 to i32
  %532 = sub nsw i32 %531, 1
  %533 = add nsw i32 %532, 257
  store i32 %533, i32* %3, align 4
  br label %566

; <label>:534:                                    ; preds = %521, %500
  store i32 292, i32* %3, align 4
  br label %566

; <label>:535:                                    ; preds = %447
  %536 = load %struct.LexState*, %struct.LexState** %4, align 8
  %537 = getelementptr inbounds %struct.LexState, %struct.LexState* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  store i32 %538, i32* %9, align 4
  %539 = load %struct.LexState*, %struct.LexState** %4, align 8
  %540 = getelementptr inbounds %struct.LexState, %struct.LexState* %539, i32 0, i32 7
  %541 = load %struct.Zio*, %struct.Zio** %540, align 8
  %542 = getelementptr inbounds %struct.Zio, %struct.Zio* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = add i64 %543, -1
  store i64 %544, i64* %542, align 8
  %545 = icmp ugt i64 %543, 0
  br i1 %545, label %546, label %555

; <label>:546:                                    ; preds = %535
  %547 = load %struct.LexState*, %struct.LexState** %4, align 8
  %548 = getelementptr inbounds %struct.LexState, %struct.LexState* %547, i32 0, i32 7
  %549 = load %struct.Zio*, %struct.Zio** %548, align 8
  %550 = getelementptr inbounds %struct.Zio, %struct.Zio* %549, i32 0, i32 1
  %551 = load i8*, i8** %550, align 8
  %552 = getelementptr inbounds i8, i8* %551, i32 1
  store i8* %552, i8** %550, align 8
  %553 = load i8, i8* %551, align 1
  %554 = zext i8 %553 to i32
  br label %560

; <label>:555:                                    ; preds = %535
  %556 = load %struct.LexState*, %struct.LexState** %4, align 8
  %557 = getelementptr inbounds %struct.LexState, %struct.LexState* %556, i32 0, i32 7
  %558 = load %struct.Zio*, %struct.Zio** %557, align 8
  %559 = call i32 @luaZ_fill(%struct.Zio* %558)
  br label %560

; <label>:560:                                    ; preds = %555, %546
  %561 = phi i32 [ %554, %546 ], [ %559, %555 ]
  %562 = load %struct.LexState*, %struct.LexState** %4, align 8
  %563 = getelementptr inbounds %struct.LexState, %struct.LexState* %562, i32 0, i32 0
  store i32 %561, i32* %563, align 8
  %564 = load i32, i32* %9, align 4
  store i32 %564, i32* %3, align 4
  br label %566

; <label>:565:                                    ; preds = %168, %116, %42, %18
  br label %14

; <label>:566:                                    ; preds = %560, %534, %527, %446, %442, %438, %437, %425, %424, %381, %380, %379, %349, %348, %318, %317, %287, %286, %281, %251, %250, %245, %215, %214, %184, %174, %76
  %567 = load i32, i32* %3, align 4
  ret i32 %567
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaX_lookahead(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %3 = load %struct.LexState*, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i32 0, i32 1
  %7 = call i32 @llex(%struct.LexState* %3, %union.SemInfo* %6)
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.Token, %struct.Token* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  ret i32 %14
}

declare hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @txtToken(%struct.LexState*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 292, label %7
    i32 293, label %7
    i32 290, label %7
    i32 291, label %7
  ]

; <label>:7:                                      ; preds = %2, %2, %2, %2
  %8 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @save(%struct.LexState* %8, i32 0)
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = load %struct.LexState*, %struct.LexState** %4, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 8
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %13, align 8
  %15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %16)
  store i8* %17, i8** %3, align 8
  br label %22

; <label>:18:                                     ; preds = %2
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @luaX_token2str(%struct.LexState* %19, i32 %20)
  store i8* %21, i8** %3, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %7
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Mbuffer*, align 8
  %6 = alloca i64, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 8
  %9 = load %struct.Mbuffer*, %struct.Mbuffer** %8, align 8
  store %struct.Mbuffer* %9, %struct.Mbuffer** %5, align 8
  %10 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %11 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 1
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %48

; <label>:18:                                     ; preds = %2
  %19 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %21, 4611686018427387903
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %18
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @lexerror(%struct.LexState* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i32 0) #5
  unreachable

; <label>:25:                                     ; preds = %18
  %26 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %27 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 2
  store i64 %29, i64* %6, align 8
  %30 = load %struct.LexState*, %struct.LexState** %3, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 6
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %34 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %37 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 1
  %40 = load i64, i64* %6, align 8
  %41 = mul i64 %40, 1
  %42 = call i8* @luaM_realloc_(%struct.lua_State* %32, i8* %35, i64 %39, i64 %41)
  %43 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %44 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %47 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %25, %2
  %49 = load i32, i32* %4, align 4
  %50 = trunc i32 %49 to i8
  %51 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %52 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %55 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %50, i8* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inclinenumber(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %8, align 8
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %1
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 7
  %17 = load %struct.Zio*, %struct.Zio** %16, align 8
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %18, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  br label %28

; <label>:23:                                     ; preds = %1
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 7
  %26 = load %struct.Zio*, %struct.Zio** %25, align 8
  %27 = call i32 @luaZ_fill(%struct.Zio* %26)
  br label %28

; <label>:28:                                     ; preds = %23, %14
  %29 = phi i32 [ %22, %14 ], [ %27, %23 ]
  %30 = load %struct.LexState*, %struct.LexState** %2, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.LexState*, %struct.LexState** %2, align 8
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %41, label %36

; <label>:36:                                     ; preds = %28
  %37 = load %struct.LexState*, %struct.LexState** %2, align 8
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %73

; <label>:41:                                     ; preds = %36, %28
  %42 = load %struct.LexState*, %struct.LexState** %2, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %73

; <label>:47:                                     ; preds = %41
  %48 = load %struct.LexState*, %struct.LexState** %2, align 8
  %49 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i32 0, i32 7
  %50 = load %struct.Zio*, %struct.Zio** %49, align 8
  %51 = getelementptr inbounds %struct.Zio, %struct.Zio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = icmp ugt i64 %52, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %47
  %56 = load %struct.LexState*, %struct.LexState** %2, align 8
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %56, i32 0, i32 7
  %58 = load %struct.Zio*, %struct.Zio** %57, align 8
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %59, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  br label %69

; <label>:64:                                     ; preds = %47
  %65 = load %struct.LexState*, %struct.LexState** %2, align 8
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 7
  %67 = load %struct.Zio*, %struct.Zio** %66, align 8
  %68 = call i32 @luaZ_fill(%struct.Zio* %67)
  br label %69

; <label>:69:                                     ; preds = %64, %55
  %70 = phi i32 [ %63, %55 ], [ %68, %64 ]
  %71 = load %struct.LexState*, %struct.LexState** %2, align 8
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

; <label>:73:                                     ; preds = %69, %41, %36
  %74 = load %struct.LexState*, %struct.LexState** %2, align 8
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = icmp sge i32 %77, 2147483647
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %73
  %80 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @lexerror(%struct.LexState* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i32 0) #5
  unreachable

; <label>:81:                                     ; preds = %73
  ret void
}

declare hidden i32 @luaZ_fill(%struct.Zio*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_sep(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  call void @save(%struct.LexState* %8, i32 %11)
  %12 = load %struct.LexState*, %struct.LexState** %2, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 7
  %14 = load %struct.Zio*, %struct.Zio** %13, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %1
  %20 = load %struct.LexState*, %struct.LexState** %2, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %22 = load %struct.Zio*, %struct.Zio** %21, align 8
  %23 = getelementptr inbounds %struct.Zio, %struct.Zio* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  br label %33

; <label>:28:                                     ; preds = %1
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 7
  %31 = load %struct.Zio*, %struct.Zio** %30, align 8
  %32 = call i32 @luaZ_fill(%struct.Zio* %31)
  br label %33

; <label>:33:                                     ; preds = %28, %19
  %34 = phi i32 [ %27, %19 ], [ %32, %28 ]
  %35 = load %struct.LexState*, %struct.LexState** %2, align 8
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

; <label>:37:                                     ; preds = %68, %33
  %38 = load %struct.LexState*, %struct.LexState** %2, align 8
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %74

; <label>:42:                                     ; preds = %37
  %43 = load %struct.LexState*, %struct.LexState** %2, align 8
  %44 = load %struct.LexState*, %struct.LexState** %2, align 8
  %45 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  call void @save(%struct.LexState* %43, i32 %46)
  %47 = load %struct.LexState*, %struct.LexState** %2, align 8
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i32 0, i32 7
  %49 = load %struct.Zio*, %struct.Zio** %48, align 8
  %50 = getelementptr inbounds %struct.Zio, %struct.Zio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = icmp ugt i64 %51, 0
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %42
  %55 = load %struct.LexState*, %struct.LexState** %2, align 8
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 7
  %57 = load %struct.Zio*, %struct.Zio** %56, align 8
  %58 = getelementptr inbounds %struct.Zio, %struct.Zio* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  br label %68

; <label>:63:                                     ; preds = %42
  %64 = load %struct.LexState*, %struct.LexState** %2, align 8
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i32 0, i32 7
  %66 = load %struct.Zio*, %struct.Zio** %65, align 8
  %67 = call i32 @luaZ_fill(%struct.Zio* %66)
  br label %68

; <label>:68:                                     ; preds = %63, %54
  %69 = phi i32 [ %62, %54 ], [ %67, %63 ]
  %70 = load %struct.LexState*, %struct.LexState** %2, align 8
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %37

; <label>:74:                                     ; preds = %37
  %75 = load %struct.LexState*, %struct.LexState** %2, align 8
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %74
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 2
  br label %89

; <label>:83:                                     ; preds = %74
  %84 = load i64, i64* %3, align 8
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = sext i32 %87 to i64
  br label %89

; <label>:89:                                     ; preds = %83, %80
  %90 = phi i64 [ %82, %80 ], [ %88, %83 ]
  ret i64 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_long_string(%struct.LexState*, %union.SemInfo*, i64) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %union.SemInfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %union.SemInfo* %1, %union.SemInfo** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = load %struct.LexState*, %struct.LexState** %4, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  call void @save(%struct.LexState* %13, i32 %16)
  %17 = load %struct.LexState*, %struct.LexState** %4, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 7
  %19 = load %struct.Zio*, %struct.Zio** %18, align 8
  %20 = getelementptr inbounds %struct.Zio, %struct.Zio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp ugt i64 %21, 0
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %3
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 7
  %27 = load %struct.Zio*, %struct.Zio** %26, align 8
  %28 = getelementptr inbounds %struct.Zio, %struct.Zio* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  br label %38

; <label>:33:                                     ; preds = %3
  %34 = load %struct.LexState*, %struct.LexState** %4, align 8
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %34, i32 0, i32 7
  %36 = load %struct.Zio*, %struct.Zio** %35, align 8
  %37 = call i32 @luaZ_fill(%struct.Zio* %36)
  br label %38

; <label>:38:                                     ; preds = %33, %24
  %39 = phi i32 [ %32, %24 ], [ %37, %33 ]
  %40 = load %struct.LexState*, %struct.LexState** %4, align 8
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.LexState*, %struct.LexState** %4, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %51, label %46

; <label>:46:                                     ; preds = %38
  %47 = load %struct.LexState*, %struct.LexState** %4, align 8
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %46, %38
  %52 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @inclinenumber(%struct.LexState* %52)
  br label %53

; <label>:53:                                     ; preds = %51, %46
  br label %54

; <label>:54:                                     ; preds = %178, %53
  %55 = load %struct.LexState*, %struct.LexState** %4, align 8
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %118 [
    i32 -1, label %58
    i32 93, label %71
    i32 10, label %107
    i32 13, label %107
  ]

; <label>:58:                                     ; preds = %54
  %59 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %60 = icmp ne %union.SemInfo* %59, null
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)
  store i8* %62, i8** %8, align 8
  %63 = load %struct.LexState*, %struct.LexState** %4, align 8
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 6
  %65 = load %struct.lua_State*, %struct.lua_State** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0), i8* %66, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = load %struct.LexState*, %struct.LexState** %4, align 8
  %70 = load i8*, i8** %9, align 8
  call void @lexerror(%struct.LexState* %69, i8* %70, i32 289) #5
  unreachable

; <label>:71:                                     ; preds = %54
  %72 = load %struct.LexState*, %struct.LexState** %4, align 8
  %73 = call i64 @skip_sep(%struct.LexState* %72)
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %106

; <label>:76:                                     ; preds = %71
  %77 = load %struct.LexState*, %struct.LexState** %4, align 8
  %78 = load %struct.LexState*, %struct.LexState** %4, align 8
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  call void @save(%struct.LexState* %77, i32 %80)
  %81 = load %struct.LexState*, %struct.LexState** %4, align 8
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %81, i32 0, i32 7
  %83 = load %struct.Zio*, %struct.Zio** %82, align 8
  %84 = getelementptr inbounds %struct.Zio, %struct.Zio* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = icmp ugt i64 %85, 0
  br i1 %87, label %88, label %97

; <label>:88:                                     ; preds = %76
  %89 = load %struct.LexState*, %struct.LexState** %4, align 8
  %90 = getelementptr inbounds %struct.LexState, %struct.LexState* %89, i32 0, i32 7
  %91 = load %struct.Zio*, %struct.Zio** %90, align 8
  %92 = getelementptr inbounds %struct.Zio, %struct.Zio* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i8, i8* %93, align 1
  %96 = zext i8 %95 to i32
  br label %102

; <label>:97:                                     ; preds = %76
  %98 = load %struct.LexState*, %struct.LexState** %4, align 8
  %99 = getelementptr inbounds %struct.LexState, %struct.LexState* %98, i32 0, i32 7
  %100 = load %struct.Zio*, %struct.Zio** %99, align 8
  %101 = call i32 @luaZ_fill(%struct.Zio* %100)
  br label %102

; <label>:102:                                    ; preds = %97, %88
  %103 = phi i32 [ %96, %88 ], [ %101, %97 ]
  %104 = load %struct.LexState*, %struct.LexState** %4, align 8
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %179

; <label>:106:                                    ; preds = %71
  br label %178

; <label>:107:                                    ; preds = %54, %54
  %108 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @save(%struct.LexState* %108, i32 10)
  %109 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @inclinenumber(%struct.LexState* %109)
  %110 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %111 = icmp ne %union.SemInfo* %110, null
  br i1 %111, label %117, label %112

; <label>:112:                                    ; preds = %107
  %113 = load %struct.LexState*, %struct.LexState** %4, align 8
  %114 = getelementptr inbounds %struct.LexState, %struct.LexState* %113, i32 0, i32 8
  %115 = load %struct.Mbuffer*, %struct.Mbuffer** %114, align 8
  %116 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  br label %117

; <label>:117:                                    ; preds = %112, %107
  br label %178

; <label>:118:                                    ; preds = %54
  %119 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %120 = icmp ne %union.SemInfo* %119, null
  br i1 %120, label %121, label %151

; <label>:121:                                    ; preds = %118
  %122 = load %struct.LexState*, %struct.LexState** %4, align 8
  %123 = load %struct.LexState*, %struct.LexState** %4, align 8
  %124 = getelementptr inbounds %struct.LexState, %struct.LexState* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  call void @save(%struct.LexState* %122, i32 %125)
  %126 = load %struct.LexState*, %struct.LexState** %4, align 8
  %127 = getelementptr inbounds %struct.LexState, %struct.LexState* %126, i32 0, i32 7
  %128 = load %struct.Zio*, %struct.Zio** %127, align 8
  %129 = getelementptr inbounds %struct.Zio, %struct.Zio* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %129, align 8
  %132 = icmp ugt i64 %130, 0
  br i1 %132, label %133, label %142

; <label>:133:                                    ; preds = %121
  %134 = load %struct.LexState*, %struct.LexState** %4, align 8
  %135 = getelementptr inbounds %struct.LexState, %struct.LexState* %134, i32 0, i32 7
  %136 = load %struct.Zio*, %struct.Zio** %135, align 8
  %137 = getelementptr inbounds %struct.Zio, %struct.Zio* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  br label %147

; <label>:142:                                    ; preds = %121
  %143 = load %struct.LexState*, %struct.LexState** %4, align 8
  %144 = getelementptr inbounds %struct.LexState, %struct.LexState* %143, i32 0, i32 7
  %145 = load %struct.Zio*, %struct.Zio** %144, align 8
  %146 = call i32 @luaZ_fill(%struct.Zio* %145)
  br label %147

; <label>:147:                                    ; preds = %142, %133
  %148 = phi i32 [ %141, %133 ], [ %146, %142 ]
  %149 = load %struct.LexState*, %struct.LexState** %4, align 8
  %150 = getelementptr inbounds %struct.LexState, %struct.LexState* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %177

; <label>:151:                                    ; preds = %118
  %152 = load %struct.LexState*, %struct.LexState** %4, align 8
  %153 = getelementptr inbounds %struct.LexState, %struct.LexState* %152, i32 0, i32 7
  %154 = load %struct.Zio*, %struct.Zio** %153, align 8
  %155 = getelementptr inbounds %struct.Zio, %struct.Zio* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, -1
  store i64 %157, i64* %155, align 8
  %158 = icmp ugt i64 %156, 0
  br i1 %158, label %159, label %168

; <label>:159:                                    ; preds = %151
  %160 = load %struct.LexState*, %struct.LexState** %4, align 8
  %161 = getelementptr inbounds %struct.LexState, %struct.LexState* %160, i32 0, i32 7
  %162 = load %struct.Zio*, %struct.Zio** %161, align 8
  %163 = getelementptr inbounds %struct.Zio, %struct.Zio* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load i8, i8* %164, align 1
  %167 = zext i8 %166 to i32
  br label %173

; <label>:168:                                    ; preds = %151
  %169 = load %struct.LexState*, %struct.LexState** %4, align 8
  %170 = getelementptr inbounds %struct.LexState, %struct.LexState* %169, i32 0, i32 7
  %171 = load %struct.Zio*, %struct.Zio** %170, align 8
  %172 = call i32 @luaZ_fill(%struct.Zio* %171)
  br label %173

; <label>:173:                                    ; preds = %168, %159
  %174 = phi i32 [ %167, %159 ], [ %172, %168 ]
  %175 = load %struct.LexState*, %struct.LexState** %4, align 8
  %176 = getelementptr inbounds %struct.LexState, %struct.LexState* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

; <label>:177:                                    ; preds = %173, %147
  br label %178

; <label>:178:                                    ; preds = %177, %117, %106
  br label %54

; <label>:179:                                    ; preds = %102
  %180 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %181 = icmp ne %union.SemInfo* %180, null
  br i1 %181, label %182, label %202

; <label>:182:                                    ; preds = %179
  %183 = load %struct.LexState*, %struct.LexState** %4, align 8
  %184 = load %struct.LexState*, %struct.LexState** %4, align 8
  %185 = getelementptr inbounds %struct.LexState, %struct.LexState* %184, i32 0, i32 8
  %186 = load %struct.Mbuffer*, %struct.Mbuffer** %185, align 8
  %187 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i64, i64* %6, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load %struct.LexState*, %struct.LexState** %4, align 8
  %192 = getelementptr inbounds %struct.LexState, %struct.LexState* %191, i32 0, i32 8
  %193 = load %struct.Mbuffer*, %struct.Mbuffer** %192, align 8
  %194 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %6, align 8
  %197 = mul i64 2, %196
  %198 = sub i64 %195, %197
  %199 = call %struct.TString* @luaX_newstring(%struct.LexState* %183, i8* %190, i64 %198)
  %200 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %201 = bitcast %union.SemInfo* %200 to %struct.TString**
  store %struct.TString* %199, %struct.TString** %201, align 8
  br label %202

; <label>:202:                                    ; preds = %182, %179
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_next1(%struct.LexState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.LexState*, %struct.LexState** %4, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %37

; <label>:11:                                     ; preds = %2
  %12 = load %struct.LexState*, %struct.LexState** %4, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 7
  %14 = load %struct.Zio*, %struct.Zio** %13, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %11
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %22 = load %struct.Zio*, %struct.Zio** %21, align 8
  %23 = getelementptr inbounds %struct.Zio, %struct.Zio* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  br label %33

; <label>:28:                                     ; preds = %11
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 7
  %31 = load %struct.Zio*, %struct.Zio** %30, align 8
  %32 = call i32 @luaZ_fill(%struct.Zio* %31)
  br label %33

; <label>:33:                                     ; preds = %28, %19
  %34 = phi i32 [ %27, %19 ], [ %32, %28 ]
  %35 = load %struct.LexState*, %struct.LexState** %4, align 8
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %3, align 4
  br label %38

; <label>:37:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_string(%struct.LexState*, i32, %union.SemInfo*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.SemInfo*, align 8
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.SemInfo* %2, %union.SemInfo** %6, align 8
  %8 = load %struct.LexState*, %struct.LexState** %4, align 8
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  call void @save(%struct.LexState* %8, i32 %11)
  %12 = load %struct.LexState*, %struct.LexState** %4, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 7
  %14 = load %struct.Zio*, %struct.Zio** %13, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %3
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %22 = load %struct.Zio*, %struct.Zio** %21, align 8
  %23 = getelementptr inbounds %struct.Zio, %struct.Zio* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  br label %33

; <label>:28:                                     ; preds = %3
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 7
  %31 = load %struct.Zio*, %struct.Zio** %30, align 8
  %32 = call i32 @luaZ_fill(%struct.Zio* %31)
  br label %33

; <label>:33:                                     ; preds = %28, %19
  %34 = phi i32 [ %27, %19 ], [ %32, %28 ]
  %35 = load %struct.LexState*, %struct.LexState** %4, align 8
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

; <label>:37:                                     ; preds = %265, %33
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %266

; <label>:43:                                     ; preds = %37
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  %45 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %235 [
    i32 -1, label %47
    i32 10, label %49
    i32 13, label %49
    i32 92, label %51
  ]

; <label>:47:                                     ; preds = %43
  %48 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @lexerror(%struct.LexState* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 289) #5
  unreachable

; <label>:49:                                     ; preds = %43, %43
  %50 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @lexerror(%struct.LexState* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 293) #5
  unreachable

; <label>:51:                                     ; preds = %43
  %52 = load %struct.LexState*, %struct.LexState** %4, align 8
  %53 = load %struct.LexState*, %struct.LexState** %4, align 8
  %54 = getelementptr inbounds %struct.LexState, %struct.LexState* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  call void @save(%struct.LexState* %52, i32 %55)
  %56 = load %struct.LexState*, %struct.LexState** %4, align 8
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %56, i32 0, i32 7
  %58 = load %struct.Zio*, %struct.Zio** %57, align 8
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = icmp ugt i64 %60, 0
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %51
  %64 = load %struct.LexState*, %struct.LexState** %4, align 8
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i32 0, i32 7
  %66 = load %struct.Zio*, %struct.Zio** %65, align 8
  %67 = getelementptr inbounds %struct.Zio, %struct.Zio* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i32
  br label %77

; <label>:72:                                     ; preds = %51
  %73 = load %struct.LexState*, %struct.LexState** %4, align 8
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 7
  %75 = load %struct.Zio*, %struct.Zio** %74, align 8
  %76 = call i32 @luaZ_fill(%struct.Zio* %75)
  br label %77

; <label>:77:                                     ; preds = %72, %63
  %78 = phi i32 [ %71, %63 ], [ %76, %72 ]
  %79 = load %struct.LexState*, %struct.LexState** %4, align 8
  %80 = getelementptr inbounds %struct.LexState, %struct.LexState* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.LexState*, %struct.LexState** %4, align 8
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %186 [
    i32 97, label %84
    i32 98, label %85
    i32 102, label %86
    i32 110, label %87
    i32 114, label %88
    i32 116, label %89
    i32 118, label %90
    i32 120, label %91
    i32 117, label %94
    i32 10, label %96
    i32 13, label %96
    i32 92, label %98
    i32 34, label %98
    i32 39, label %98
    i32 -1, label %102
    i32 122, label %103
  ]

; <label>:84:                                     ; preds = %77
  store i32 7, i32* %7, align 4
  br label %199

; <label>:85:                                     ; preds = %77
  store i32 8, i32* %7, align 4
  br label %199

; <label>:86:                                     ; preds = %77
  store i32 12, i32* %7, align 4
  br label %199

; <label>:87:                                     ; preds = %77
  store i32 10, i32* %7, align 4
  br label %199

; <label>:88:                                     ; preds = %77
  store i32 13, i32* %7, align 4
  br label %199

; <label>:89:                                     ; preds = %77
  store i32 9, i32* %7, align 4
  br label %199

; <label>:90:                                     ; preds = %77
  store i32 11, i32* %7, align 4
  br label %199

; <label>:91:                                     ; preds = %77
  %92 = load %struct.LexState*, %struct.LexState** %4, align 8
  %93 = call i32 @readhexaesc(%struct.LexState* %92)
  store i32 %93, i32* %7, align 4
  br label %199

; <label>:94:                                     ; preds = %77
  %95 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @utf8esc(%struct.LexState* %95)
  br label %234

; <label>:96:                                     ; preds = %77, %77
  %97 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @inclinenumber(%struct.LexState* %97)
  store i32 10, i32* %7, align 4
  br label %225

; <label>:98:                                     ; preds = %77, %77, %77
  %99 = load %struct.LexState*, %struct.LexState** %4, align 8
  %100 = getelementptr inbounds %struct.LexState, %struct.LexState* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %7, align 4
  br label %199

; <label>:102:                                    ; preds = %77
  br label %234

; <label>:103:                                    ; preds = %77
  %104 = load %struct.LexState*, %struct.LexState** %4, align 8
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %104, i32 0, i32 8
  %106 = load %struct.Mbuffer*, %struct.Mbuffer** %105, align 8
  %107 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.LexState*, %struct.LexState** %4, align 8
  %111 = getelementptr inbounds %struct.LexState, %struct.LexState* %110, i32 0, i32 7
  %112 = load %struct.Zio*, %struct.Zio** %111, align 8
  %113 = getelementptr inbounds %struct.Zio, %struct.Zio* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = icmp ugt i64 %114, 0
  br i1 %116, label %117, label %126

; <label>:117:                                    ; preds = %103
  %118 = load %struct.LexState*, %struct.LexState** %4, align 8
  %119 = getelementptr inbounds %struct.LexState, %struct.LexState* %118, i32 0, i32 7
  %120 = load %struct.Zio*, %struct.Zio** %119, align 8
  %121 = getelementptr inbounds %struct.Zio, %struct.Zio* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %121, align 8
  %124 = load i8, i8* %122, align 1
  %125 = zext i8 %124 to i32
  br label %131

; <label>:126:                                    ; preds = %103
  %127 = load %struct.LexState*, %struct.LexState** %4, align 8
  %128 = getelementptr inbounds %struct.LexState, %struct.LexState* %127, i32 0, i32 7
  %129 = load %struct.Zio*, %struct.Zio** %128, align 8
  %130 = call i32 @luaZ_fill(%struct.Zio* %129)
  br label %131

; <label>:131:                                    ; preds = %126, %117
  %132 = phi i32 [ %125, %117 ], [ %130, %126 ]
  %133 = load %struct.LexState*, %struct.LexState** %4, align 8
  %134 = getelementptr inbounds %struct.LexState, %struct.LexState* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

; <label>:135:                                    ; preds = %184, %131
  %136 = load %struct.LexState*, %struct.LexState** %4, align 8
  %137 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %185

; <label>:146:                                    ; preds = %135
  %147 = load %struct.LexState*, %struct.LexState** %4, align 8
  %148 = getelementptr inbounds %struct.LexState, %struct.LexState* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %156, label %151

; <label>:151:                                    ; preds = %146
  %152 = load %struct.LexState*, %struct.LexState** %4, align 8
  %153 = getelementptr inbounds %struct.LexState, %struct.LexState* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 13
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %151, %146
  %157 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @inclinenumber(%struct.LexState* %157)
  br label %184

; <label>:158:                                    ; preds = %151
  %159 = load %struct.LexState*, %struct.LexState** %4, align 8
  %160 = getelementptr inbounds %struct.LexState, %struct.LexState* %159, i32 0, i32 7
  %161 = load %struct.Zio*, %struct.Zio** %160, align 8
  %162 = getelementptr inbounds %struct.Zio, %struct.Zio* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, -1
  store i64 %164, i64* %162, align 8
  %165 = icmp ugt i64 %163, 0
  br i1 %165, label %166, label %175

; <label>:166:                                    ; preds = %158
  %167 = load %struct.LexState*, %struct.LexState** %4, align 8
  %168 = getelementptr inbounds %struct.LexState, %struct.LexState* %167, i32 0, i32 7
  %169 = load %struct.Zio*, %struct.Zio** %168, align 8
  %170 = getelementptr inbounds %struct.Zio, %struct.Zio* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %170, align 8
  %173 = load i8, i8* %171, align 1
  %174 = zext i8 %173 to i32
  br label %180

; <label>:175:                                    ; preds = %158
  %176 = load %struct.LexState*, %struct.LexState** %4, align 8
  %177 = getelementptr inbounds %struct.LexState, %struct.LexState* %176, i32 0, i32 7
  %178 = load %struct.Zio*, %struct.Zio** %177, align 8
  %179 = call i32 @luaZ_fill(%struct.Zio* %178)
  br label %180

; <label>:180:                                    ; preds = %175, %166
  %181 = phi i32 [ %174, %166 ], [ %179, %175 ]
  %182 = load %struct.LexState*, %struct.LexState** %4, align 8
  %183 = getelementptr inbounds %struct.LexState, %struct.LexState* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  br label %184

; <label>:184:                                    ; preds = %180, %156
  br label %135

; <label>:185:                                    ; preds = %135
  br label %234

; <label>:186:                                    ; preds = %77
  %187 = load %struct.LexState*, %struct.LexState** %4, align 8
  %188 = load %struct.LexState*, %struct.LexState** %4, align 8
  %189 = getelementptr inbounds %struct.LexState, %struct.LexState* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 2
  call void @esccheck(%struct.LexState* %187, i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0))
  %197 = load %struct.LexState*, %struct.LexState** %4, align 8
  %198 = call i32 @readdecesc(%struct.LexState* %197)
  store i32 %198, i32* %7, align 4
  br label %225

; <label>:199:                                    ; preds = %98, %91, %90, %89, %88, %87, %86, %85, %84
  %200 = load %struct.LexState*, %struct.LexState** %4, align 8
  %201 = getelementptr inbounds %struct.LexState, %struct.LexState* %200, i32 0, i32 7
  %202 = load %struct.Zio*, %struct.Zio** %201, align 8
  %203 = getelementptr inbounds %struct.Zio, %struct.Zio* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, -1
  store i64 %205, i64* %203, align 8
  %206 = icmp ugt i64 %204, 0
  br i1 %206, label %207, label %216

; <label>:207:                                    ; preds = %199
  %208 = load %struct.LexState*, %struct.LexState** %4, align 8
  %209 = getelementptr inbounds %struct.LexState, %struct.LexState* %208, i32 0, i32 7
  %210 = load %struct.Zio*, %struct.Zio** %209, align 8
  %211 = getelementptr inbounds %struct.Zio, %struct.Zio* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %211, align 8
  %214 = load i8, i8* %212, align 1
  %215 = zext i8 %214 to i32
  br label %221

; <label>:216:                                    ; preds = %199
  %217 = load %struct.LexState*, %struct.LexState** %4, align 8
  %218 = getelementptr inbounds %struct.LexState, %struct.LexState* %217, i32 0, i32 7
  %219 = load %struct.Zio*, %struct.Zio** %218, align 8
  %220 = call i32 @luaZ_fill(%struct.Zio* %219)
  br label %221

; <label>:221:                                    ; preds = %216, %207
  %222 = phi i32 [ %215, %207 ], [ %220, %216 ]
  %223 = load %struct.LexState*, %struct.LexState** %4, align 8
  %224 = getelementptr inbounds %struct.LexState, %struct.LexState* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %225

; <label>:225:                                    ; preds = %221, %186, %96
  %226 = load %struct.LexState*, %struct.LexState** %4, align 8
  %227 = getelementptr inbounds %struct.LexState, %struct.LexState* %226, i32 0, i32 8
  %228 = load %struct.Mbuffer*, %struct.Mbuffer** %227, align 8
  %229 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load %struct.LexState*, %struct.LexState** %4, align 8
  %233 = load i32, i32* %7, align 4
  call void @save(%struct.LexState* %232, i32 %233)
  br label %234

; <label>:234:                                    ; preds = %225, %185, %102, %94
  br label %265

; <label>:235:                                    ; preds = %43
  %236 = load %struct.LexState*, %struct.LexState** %4, align 8
  %237 = load %struct.LexState*, %struct.LexState** %4, align 8
  %238 = getelementptr inbounds %struct.LexState, %struct.LexState* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  call void @save(%struct.LexState* %236, i32 %239)
  %240 = load %struct.LexState*, %struct.LexState** %4, align 8
  %241 = getelementptr inbounds %struct.LexState, %struct.LexState* %240, i32 0, i32 7
  %242 = load %struct.Zio*, %struct.Zio** %241, align 8
  %243 = getelementptr inbounds %struct.Zio, %struct.Zio* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, -1
  store i64 %245, i64* %243, align 8
  %246 = icmp ugt i64 %244, 0
  br i1 %246, label %247, label %256

; <label>:247:                                    ; preds = %235
  %248 = load %struct.LexState*, %struct.LexState** %4, align 8
  %249 = getelementptr inbounds %struct.LexState, %struct.LexState* %248, i32 0, i32 7
  %250 = load %struct.Zio*, %struct.Zio** %249, align 8
  %251 = getelementptr inbounds %struct.Zio, %struct.Zio* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %251, align 8
  %254 = load i8, i8* %252, align 1
  %255 = zext i8 %254 to i32
  br label %261

; <label>:256:                                    ; preds = %235
  %257 = load %struct.LexState*, %struct.LexState** %4, align 8
  %258 = getelementptr inbounds %struct.LexState, %struct.LexState* %257, i32 0, i32 7
  %259 = load %struct.Zio*, %struct.Zio** %258, align 8
  %260 = call i32 @luaZ_fill(%struct.Zio* %259)
  br label %261

; <label>:261:                                    ; preds = %256, %247
  %262 = phi i32 [ %255, %247 ], [ %260, %256 ]
  %263 = load %struct.LexState*, %struct.LexState** %4, align 8
  %264 = getelementptr inbounds %struct.LexState, %struct.LexState* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %265

; <label>:265:                                    ; preds = %261, %234
  br label %37

; <label>:266:                                    ; preds = %37
  %267 = load %struct.LexState*, %struct.LexState** %4, align 8
  %268 = load %struct.LexState*, %struct.LexState** %4, align 8
  %269 = getelementptr inbounds %struct.LexState, %struct.LexState* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  call void @save(%struct.LexState* %267, i32 %270)
  %271 = load %struct.LexState*, %struct.LexState** %4, align 8
  %272 = getelementptr inbounds %struct.LexState, %struct.LexState* %271, i32 0, i32 7
  %273 = load %struct.Zio*, %struct.Zio** %272, align 8
  %274 = getelementptr inbounds %struct.Zio, %struct.Zio* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, -1
  store i64 %276, i64* %274, align 8
  %277 = icmp ugt i64 %275, 0
  br i1 %277, label %278, label %287

; <label>:278:                                    ; preds = %266
  %279 = load %struct.LexState*, %struct.LexState** %4, align 8
  %280 = getelementptr inbounds %struct.LexState, %struct.LexState* %279, i32 0, i32 7
  %281 = load %struct.Zio*, %struct.Zio** %280, align 8
  %282 = getelementptr inbounds %struct.Zio, %struct.Zio* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %282, align 8
  %285 = load i8, i8* %283, align 1
  %286 = zext i8 %285 to i32
  br label %292

; <label>:287:                                    ; preds = %266
  %288 = load %struct.LexState*, %struct.LexState** %4, align 8
  %289 = getelementptr inbounds %struct.LexState, %struct.LexState* %288, i32 0, i32 7
  %290 = load %struct.Zio*, %struct.Zio** %289, align 8
  %291 = call i32 @luaZ_fill(%struct.Zio* %290)
  br label %292

; <label>:292:                                    ; preds = %287, %278
  %293 = phi i32 [ %286, %278 ], [ %291, %287 ]
  %294 = load %struct.LexState*, %struct.LexState** %4, align 8
  %295 = getelementptr inbounds %struct.LexState, %struct.LexState* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.LexState*, %struct.LexState** %4, align 8
  %297 = load %struct.LexState*, %struct.LexState** %4, align 8
  %298 = getelementptr inbounds %struct.LexState, %struct.LexState* %297, i32 0, i32 8
  %299 = load %struct.Mbuffer*, %struct.Mbuffer** %298, align 8
  %300 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 1
  %303 = load %struct.LexState*, %struct.LexState** %4, align 8
  %304 = getelementptr inbounds %struct.LexState, %struct.LexState* %303, i32 0, i32 8
  %305 = load %struct.Mbuffer*, %struct.Mbuffer** %304, align 8
  %306 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = sub i64 %307, 2
  %309 = call %struct.TString* @luaX_newstring(%struct.LexState* %296, i8* %302, i64 %308)
  %310 = load %union.SemInfo*, %union.SemInfo** %6, align 8
  %311 = bitcast %union.SemInfo* %310 to %struct.TString**
  store %struct.TString* %309, %struct.TString** %311, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_numeral(%struct.LexState*, %union.SemInfo*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %union.SemInfo*, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %union.SemInfo* %1, %union.SemInfo** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %7, align 8
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.LexState*, %struct.LexState** %4, align 8
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  call void @save(%struct.LexState* %12, i32 %15)
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 7
  %18 = load %struct.Zio*, %struct.Zio** %17, align 8
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp ugt i64 %20, 0
  br i1 %22, label %23, label %32

; <label>:23:                                     ; preds = %2
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 7
  %26 = load %struct.Zio*, %struct.Zio** %25, align 8
  %27 = getelementptr inbounds %struct.Zio, %struct.Zio* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  br label %37

; <label>:32:                                     ; preds = %2
  %33 = load %struct.LexState*, %struct.LexState** %4, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 7
  %35 = load %struct.Zio*, %struct.Zio** %34, align 8
  %36 = call i32 @luaZ_fill(%struct.Zio* %35)
  br label %37

; <label>:37:                                     ; preds = %32, %23
  %38 = phi i32 [ %31, %23 ], [ %36, %32 ]
  %39 = load %struct.LexState*, %struct.LexState** %4, align 8
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 48
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %37
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  %45 = call i32 @check_next2(%struct.LexState* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8** %7, align 8
  br label %48

; <label>:48:                                     ; preds = %47, %43, %37
  br label %49

; <label>:49:                                     ; preds = %135, %48
  %50 = load %struct.LexState*, %struct.LexState** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @check_next2(%struct.LexState* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %49
  %55 = load %struct.LexState*, %struct.LexState** %4, align 8
  %56 = call i32 @check_next2(%struct.LexState* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  br label %57

; <label>:57:                                     ; preds = %54, %49
  %58 = load %struct.LexState*, %struct.LexState** %4, align 8
  %59 = getelementptr inbounds %struct.LexState, %struct.LexState* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 16
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

; <label>:68:                                     ; preds = %57
  %69 = load %struct.LexState*, %struct.LexState** %4, align 8
  %70 = load %struct.LexState*, %struct.LexState** %4, align 8
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  call void @save(%struct.LexState* %69, i32 %72)
  %73 = load %struct.LexState*, %struct.LexState** %4, align 8
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 7
  %75 = load %struct.Zio*, %struct.Zio** %74, align 8
  %76 = getelementptr inbounds %struct.Zio, %struct.Zio* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = icmp ugt i64 %77, 0
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %68
  %81 = load %struct.LexState*, %struct.LexState** %4, align 8
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %81, i32 0, i32 7
  %83 = load %struct.Zio*, %struct.Zio** %82, align 8
  %84 = getelementptr inbounds %struct.Zio, %struct.Zio* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %84, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  br label %94

; <label>:89:                                     ; preds = %68
  %90 = load %struct.LexState*, %struct.LexState** %4, align 8
  %91 = getelementptr inbounds %struct.LexState, %struct.LexState* %90, i32 0, i32 7
  %92 = load %struct.Zio*, %struct.Zio** %91, align 8
  %93 = call i32 @luaZ_fill(%struct.Zio* %92)
  br label %94

; <label>:94:                                     ; preds = %89, %80
  %95 = phi i32 [ %88, %80 ], [ %93, %89 ]
  %96 = load %struct.LexState*, %struct.LexState** %4, align 8
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %135

; <label>:98:                                     ; preds = %57
  %99 = load %struct.LexState*, %struct.LexState** %4, align 8
  %100 = getelementptr inbounds %struct.LexState, %struct.LexState* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 46
  br i1 %102, label %103, label %133

; <label>:103:                                    ; preds = %98
  %104 = load %struct.LexState*, %struct.LexState** %4, align 8
  %105 = load %struct.LexState*, %struct.LexState** %4, align 8
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  call void @save(%struct.LexState* %104, i32 %107)
  %108 = load %struct.LexState*, %struct.LexState** %4, align 8
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %108, i32 0, i32 7
  %110 = load %struct.Zio*, %struct.Zio** %109, align 8
  %111 = getelementptr inbounds %struct.Zio, %struct.Zio* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %111, align 8
  %114 = icmp ugt i64 %112, 0
  br i1 %114, label %115, label %124

; <label>:115:                                    ; preds = %103
  %116 = load %struct.LexState*, %struct.LexState** %4, align 8
  %117 = getelementptr inbounds %struct.LexState, %struct.LexState* %116, i32 0, i32 7
  %118 = load %struct.Zio*, %struct.Zio** %117, align 8
  %119 = getelementptr inbounds %struct.Zio, %struct.Zio* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %119, align 8
  %122 = load i8, i8* %120, align 1
  %123 = zext i8 %122 to i32
  br label %129

; <label>:124:                                    ; preds = %103
  %125 = load %struct.LexState*, %struct.LexState** %4, align 8
  %126 = getelementptr inbounds %struct.LexState, %struct.LexState* %125, i32 0, i32 7
  %127 = load %struct.Zio*, %struct.Zio** %126, align 8
  %128 = call i32 @luaZ_fill(%struct.Zio* %127)
  br label %129

; <label>:129:                                    ; preds = %124, %115
  %130 = phi i32 [ %123, %115 ], [ %128, %124 ]
  %131 = load %struct.LexState*, %struct.LexState** %4, align 8
  %132 = getelementptr inbounds %struct.LexState, %struct.LexState* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %134

; <label>:133:                                    ; preds = %98
  br label %136

; <label>:134:                                    ; preds = %129
  br label %135

; <label>:135:                                    ; preds = %134, %94
  br label %49

; <label>:136:                                    ; preds = %133
  %137 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @save(%struct.LexState* %137, i32 0)
  %138 = load %struct.LexState*, %struct.LexState** %4, align 8
  %139 = getelementptr inbounds %struct.LexState, %struct.LexState* %138, i32 0, i32 8
  %140 = load %struct.Mbuffer*, %struct.Mbuffer** %139, align 8
  %141 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @luaO_str2num(i8* %142, %struct.lua_TValue* %6)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

; <label>:145:                                    ; preds = %136
  %146 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @lexerror(%struct.LexState* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i32 290) #5
  unreachable

; <label>:147:                                    ; preds = %136
  %148 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 19
  br i1 %150, label %151, label %157

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %153 = bitcast %union.Value* %152 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %156 = bitcast %union.SemInfo* %155 to i64*
  store i64 %154, i64* %156, align 8
  store i32 291, i32* %3, align 4
  br label %163

; <label>:157:                                    ; preds = %147
  %158 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %159 = bitcast %union.Value* %158 to double*
  %160 = load double, double* %159, align 8
  %161 = load %union.SemInfo*, %union.SemInfo** %5, align 8
  %162 = bitcast %union.SemInfo* %161 to double*
  store double %160, double* %162, align 8
  store i32 290, i32* %3, align 4
  br label %163

; <label>:163:                                    ; preds = %157, %151
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readhexaesc(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = call i32 @gethexa(%struct.LexState* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 %6, 4
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = call i32 @gethexa(%struct.LexState* %8)
  %10 = add nsw i32 %7, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 8
  %13 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8
  %14 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %15, 2
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utf8esc(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = call i64 @readutf8esc(%struct.LexState* %6)
  %8 = call i32 @luaO_utf8esc(i8* %5, i64 %7)
  store i32 %8, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %9
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 8, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  call void @save(%struct.LexState* %13, i32 %19)
  br label %20

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %9

; <label>:23:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esccheck(%struct.LexState*, i32, i8*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %47, label %9

; <label>:9:                                      ; preds = %3
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %44

; <label>:14:                                     ; preds = %9
  %15 = load %struct.LexState*, %struct.LexState** %4, align 8
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  call void @save(%struct.LexState* %15, i32 %18)
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 7
  %21 = load %struct.Zio*, %struct.Zio** %20, align 8
  %22 = getelementptr inbounds %struct.Zio, %struct.Zio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ugt i64 %23, 0
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %14
  %27 = load %struct.LexState*, %struct.LexState** %4, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 7
  %29 = load %struct.Zio*, %struct.Zio** %28, align 8
  %30 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  br label %40

; <label>:35:                                     ; preds = %14
  %36 = load %struct.LexState*, %struct.LexState** %4, align 8
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %36, i32 0, i32 7
  %38 = load %struct.Zio*, %struct.Zio** %37, align 8
  %39 = call i32 @luaZ_fill(%struct.Zio* %38)
  br label %40

; <label>:40:                                     ; preds = %35, %26
  %41 = phi i32 [ %34, %26 ], [ %39, %35 ]
  %42 = load %struct.LexState*, %struct.LexState** %4, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

; <label>:44:                                     ; preds = %40, %9
  %45 = load %struct.LexState*, %struct.LexState** %4, align 8
  %46 = load i8*, i8** %6, align 8
  call void @lexerror(%struct.LexState* %45, i8* %46, i32 293) #5
  unreachable

; <label>:47:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readdecesc(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %58, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %5
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %8, %5
  %20 = phi i1 [ false, %5 ], [ %18, %8 ]
  br i1 %20, label %21, label %61

; <label>:21:                                     ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 10, %22
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %4, align 4
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  %30 = load %struct.LexState*, %struct.LexState** %2, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  call void @save(%struct.LexState* %29, i32 %32)
  %33 = load %struct.LexState*, %struct.LexState** %2, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 7
  %35 = load %struct.Zio*, %struct.Zio** %34, align 8
  %36 = getelementptr inbounds %struct.Zio, %struct.Zio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp ugt i64 %37, 0
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %21
  %41 = load %struct.LexState*, %struct.LexState** %2, align 8
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 7
  %43 = load %struct.Zio*, %struct.Zio** %42, align 8
  %44 = getelementptr inbounds %struct.Zio, %struct.Zio* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  br label %54

; <label>:49:                                     ; preds = %21
  %50 = load %struct.LexState*, %struct.LexState** %2, align 8
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i32 0, i32 7
  %52 = load %struct.Zio*, %struct.Zio** %51, align 8
  %53 = call i32 @luaZ_fill(%struct.Zio* %52)
  br label %54

; <label>:54:                                     ; preds = %49, %40
  %55 = phi i32 [ %48, %40 ], [ %53, %49 ]
  %56 = load %struct.LexState*, %struct.LexState** %2, align 8
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %5

; <label>:61:                                     ; preds = %19
  %62 = load %struct.LexState*, %struct.LexState** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 255
  %65 = zext i1 %64 to i32
  call void @esccheck(%struct.LexState* %62, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0))
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.LexState*, %struct.LexState** %2, align 8
  %69 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i32 0, i32 8
  %70 = load %struct.Mbuffer*, %struct.Mbuffer** %69, align 8
  %71 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, %67
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethexa(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %3 = load %struct.LexState*, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  call void @save(%struct.LexState* %3, i32 %6)
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %8, align 8
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %1
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 7
  %17 = load %struct.Zio*, %struct.Zio** %16, align 8
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %18, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  br label %28

; <label>:23:                                     ; preds = %1
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 7
  %26 = load %struct.Zio*, %struct.Zio** %25, align 8
  %27 = call i32 @luaZ_fill(%struct.Zio* %26)
  br label %28

; <label>:28:                                     ; preds = %23, %14
  %29 = phi i32 [ %22, %14 ], [ %27, %23 ]
  %30 = load %struct.LexState*, %struct.LexState** %2, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.LexState*, %struct.LexState** %2, align 8
  %33 = load %struct.LexState*, %struct.LexState** %2, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 16
  call void @esccheck(%struct.LexState* %32, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  %42 = load %struct.LexState*, %struct.LexState** %2, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @luaO_hexavalue(i32 %44)
  ret i32 %45
}

declare hidden i32 @luaO_hexavalue(i32) #1

declare hidden i32 @luaO_utf8esc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readutf8esc(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  store i32 4, i32* %4, align 4
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  call void @save(%struct.LexState* %5, i32 %8)
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 7
  %11 = load %struct.Zio*, %struct.Zio** %10, align 8
  %12 = getelementptr inbounds %struct.Zio, %struct.Zio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ugt i64 %13, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 7
  %19 = load %struct.Zio*, %struct.Zio** %18, align 8
  %20 = getelementptr inbounds %struct.Zio, %struct.Zio* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  br label %30

; <label>:25:                                     ; preds = %1
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 7
  %28 = load %struct.Zio*, %struct.Zio** %27, align 8
  %29 = call i32 @luaZ_fill(%struct.Zio* %28)
  br label %30

; <label>:30:                                     ; preds = %25, %16
  %31 = phi i32 [ %24, %16 ], [ %29, %25 ]
  %32 = load %struct.LexState*, %struct.LexState** %2, align 8
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.LexState*, %struct.LexState** %2, align 8
  %35 = load %struct.LexState*, %struct.LexState** %2, align 8
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 123
  %39 = zext i1 %38 to i32
  call void @esccheck(%struct.LexState* %34, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %40 = load %struct.LexState*, %struct.LexState** %2, align 8
  %41 = call i32 @gethexa(%struct.LexState* %40)
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %3, align 8
  br label %43

; <label>:43:                                     ; preds = %83, %30
  %44 = load %struct.LexState*, %struct.LexState** %2, align 8
  %45 = load %struct.LexState*, %struct.LexState** %2, align 8
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  call void @save(%struct.LexState* %44, i32 %47)
  %48 = load %struct.LexState*, %struct.LexState** %2, align 8
  %49 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i32 0, i32 7
  %50 = load %struct.Zio*, %struct.Zio** %49, align 8
  %51 = getelementptr inbounds %struct.Zio, %struct.Zio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = icmp ugt i64 %52, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %43
  %56 = load %struct.LexState*, %struct.LexState** %2, align 8
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %56, i32 0, i32 7
  %58 = load %struct.Zio*, %struct.Zio** %57, align 8
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %59, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  br label %69

; <label>:64:                                     ; preds = %43
  %65 = load %struct.LexState*, %struct.LexState** %2, align 8
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 7
  %67 = load %struct.Zio*, %struct.Zio** %66, align 8
  %68 = call i32 @luaZ_fill(%struct.Zio* %67)
  br label %69

; <label>:69:                                     ; preds = %64, %55
  %70 = phi i32 [ %63, %55 ], [ %68, %64 ]
  %71 = load %struct.LexState*, %struct.LexState** %2, align 8
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.LexState*, %struct.LexState** %2, align 8
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

; <label>:83:                                     ; preds = %69
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  %86 = load i64, i64* %3, align 8
  %87 = shl i64 %86, 4
  %88 = load %struct.LexState*, %struct.LexState** %2, align 8
  %89 = getelementptr inbounds %struct.LexState, %struct.LexState* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @luaO_hexavalue(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = add i64 %87, %92
  store i64 %93, i64* %3, align 8
  %94 = load %struct.LexState*, %struct.LexState** %2, align 8
  %95 = load i64, i64* %3, align 8
  %96 = icmp ule i64 %95, 1114111
  %97 = zext i1 %96 to i32
  call void @esccheck(%struct.LexState* %94, i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0))
  br label %43

; <label>:98:                                     ; preds = %69
  %99 = load %struct.LexState*, %struct.LexState** %2, align 8
  %100 = load %struct.LexState*, %struct.LexState** %2, align 8
  %101 = getelementptr inbounds %struct.LexState, %struct.LexState* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 125
  %104 = zext i1 %103 to i32
  call void @esccheck(%struct.LexState* %99, i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0))
  %105 = load %struct.LexState*, %struct.LexState** %2, align 8
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %105, i32 0, i32 7
  %107 = load %struct.Zio*, %struct.Zio** %106, align 8
  %108 = getelementptr inbounds %struct.Zio, %struct.Zio* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %108, align 8
  %111 = icmp ugt i64 %109, 0
  br i1 %111, label %112, label %121

; <label>:112:                                    ; preds = %98
  %113 = load %struct.LexState*, %struct.LexState** %2, align 8
  %114 = getelementptr inbounds %struct.LexState, %struct.LexState* %113, i32 0, i32 7
  %115 = load %struct.Zio*, %struct.Zio** %114, align 8
  %116 = getelementptr inbounds %struct.Zio, %struct.Zio* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %116, align 8
  %119 = load i8, i8* %117, align 1
  %120 = zext i8 %119 to i32
  br label %126

; <label>:121:                                    ; preds = %98
  %122 = load %struct.LexState*, %struct.LexState** %2, align 8
  %123 = getelementptr inbounds %struct.LexState, %struct.LexState* %122, i32 0, i32 7
  %124 = load %struct.Zio*, %struct.Zio** %123, align 8
  %125 = call i32 @luaZ_fill(%struct.Zio* %124)
  br label %126

; <label>:126:                                    ; preds = %121, %112
  %127 = phi i32 [ %120, %112 ], [ %125, %121 ]
  %128 = load %struct.LexState*, %struct.LexState** %2, align 8
  %129 = getelementptr inbounds %struct.LexState, %struct.LexState* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.LexState*, %struct.LexState** %2, align 8
  %133 = getelementptr inbounds %struct.LexState, %struct.LexState* %132, i32 0, i32 8
  %134 = load %struct.Mbuffer*, %struct.Mbuffer** %133, align 8
  %135 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %136, %131
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_next2(%struct.LexState*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.LexState*, %struct.LexState** %4, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %23, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.LexState*, %struct.LexState** %4, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %53

; <label>:23:                                     ; preds = %14, %2
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  call void @save(%struct.LexState* %24, i32 %27)
  %28 = load %struct.LexState*, %struct.LexState** %4, align 8
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 7
  %30 = load %struct.Zio*, %struct.Zio** %29, align 8
  %31 = getelementptr inbounds %struct.Zio, %struct.Zio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = icmp ugt i64 %32, 0
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %23
  %36 = load %struct.LexState*, %struct.LexState** %4, align 8
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %36, i32 0, i32 7
  %38 = load %struct.Zio*, %struct.Zio** %37, align 8
  %39 = getelementptr inbounds %struct.Zio, %struct.Zio* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  br label %49

; <label>:44:                                     ; preds = %23
  %45 = load %struct.LexState*, %struct.LexState** %4, align 8
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i32 0, i32 7
  %47 = load %struct.Zio*, %struct.Zio** %46, align 8
  %48 = call i32 @luaZ_fill(%struct.Zio* %47)
  br label %49

; <label>:49:                                     ; preds = %44, %35
  %50 = phi i32 [ %43, %35 ], [ %48, %44 ]
  %51 = load %struct.LexState*, %struct.LexState** %4, align 8
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 1, i32* %3, align 4
  br label %54

; <label>:53:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %49
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare hidden i64 @luaO_str2num(i8*, %struct.lua_TValue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
