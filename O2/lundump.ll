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
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.LoadState, align 8
  %8 = bitcast %struct.LoadState* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6
  %9 = load i8, i8* %2, align 1, !tbaa !2
  switch i8 %9, label %12 [
    i8 64, label %10
    i8 61, label %10
    i8 27, label %13
  ]

; <label>:10:                                     ; preds = %3, %3
  %11 = getelementptr inbounds i8, i8* %2, i64 1
  br label %13

; <label>:12:                                     ; preds = %3
  br label %13

; <label>:13:                                     ; preds = %3, %12, %10
  %14 = phi i8* [ %2, %12 ], [ %11, %10 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 2
  store i8* %14, i8** %15, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %16, align 8, !tbaa !8
  %17 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 1
  store %struct.Zio* %1, %struct.Zio** %17, align 8, !tbaa !9
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %18) #6
  %19 = call i64 @luaZ_read(%struct.Zio* %1, i8* nonnull %18, i64 3) #6
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %13
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:22:                                     ; preds = %13
  %23 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 1), i8* nonnull %18, i64 3) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %22
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:26:                                     ; preds = %22
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %18) #6
  br label %27

; <label>:27:                                     ; preds = %49, %26
  %28 = phi i64 [ 0, %26 ], [ %53, %49 ]
  %29 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i64 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !10
  %32 = add i64 %31, -1
  store i64 %32, i64* %30, align 8, !tbaa !10
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i64 0, i32 1
  %36 = load i8*, i8** %35, align 8, !tbaa !13
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %35, align 8, !tbaa !13
  %38 = load i8, i8* %36, align 1, !tbaa !2
  %39 = zext i8 %38 to i32
  br label %44

; <label>:40:                                     ; preds = %27
  %41 = call i32 @luaZ_fill(%struct.Zio* %29) #6
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i32 [ %39, %34 ], [ %41, %40 ]
  %46 = trunc i32 %45 to i8
  %47 = icmp ult i64 %28, 16777215
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %44
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:49:                                     ; preds = %44
  %50 = shl i64 %28, 7
  %51 = and i8 %46, 127
  %52 = zext i8 %51 to i64
  %53 = or i64 %50, %52
  %54 = icmp sgt i8 %46, -1
  br i1 %54, label %27, label %55

; <label>:55:                                     ; preds = %49
  %56 = trunc i64 %53 to i32
  %57 = icmp eq i32 %56, 504
  br i1 %57, label %59, label %58

; <label>:58:                                     ; preds = %55
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #7
  unreachable

; <label>:59:                                     ; preds = %55
  %60 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.Zio, %struct.Zio* %60, i64 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !10
  %63 = add i64 %62, -1
  store i64 %63, i64* %61, align 8, !tbaa !10
  %64 = icmp eq i64 %62, 0
  br i1 %64, label %71, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.Zio, %struct.Zio* %60, i64 0, i32 1
  %67 = load i8*, i8** %66, align 8, !tbaa !13
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %66, align 8, !tbaa !13
  %69 = load i8, i8* %67, align 1, !tbaa !2
  %70 = zext i8 %69 to i32
  br label %75

; <label>:71:                                     ; preds = %59
  %72 = call i32 @luaZ_fill(%struct.Zio* %60) #6
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:75:                                     ; preds = %71, %65
  %76 = phi i32 [ %70, %65 ], [ %72, %71 ]
  %77 = trunc i32 %76 to i8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

; <label>:79:                                     ; preds = %75
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
  unreachable

; <label>:80:                                     ; preds = %75
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %18) #6
  %81 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %82 = call i64 @luaZ_read(%struct.Zio* %81, i8* nonnull %18, i64 6) #6
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %85, label %84

; <label>:84:                                     ; preds = %80
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:85:                                     ; preds = %80
  %86 = call i32 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %18, i64 6) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

; <label>:88:                                     ; preds = %85
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #7
  unreachable

; <label>:89:                                     ; preds = %85
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %18) #6
  %90 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %91 = getelementptr inbounds %struct.Zio, %struct.Zio* %90, i64 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !10
  %93 = add i64 %92, -1
  store i64 %93, i64* %91, align 8, !tbaa !10
  %94 = icmp eq i64 %92, 0
  br i1 %94, label %101, label %95

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds %struct.Zio, %struct.Zio* %90, i64 0, i32 1
  %97 = load i8*, i8** %96, align 8, !tbaa !13
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %96, align 8, !tbaa !13
  %99 = load i8, i8* %97, align 1, !tbaa !2
  %100 = zext i8 %99 to i32
  br label %105

; <label>:101:                                    ; preds = %89
  %102 = call i32 @luaZ_fill(%struct.Zio* %90) #6
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %101
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:105:                                    ; preds = %101, %95
  %106 = phi i32 [ %100, %95 ], [ %102, %101 ]
  %107 = and i32 %106, 255
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %112, label %109

; <label>:109:                                    ; preds = %105
  %110 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !8
  %111 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #6
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* %111) #7
  unreachable

; <label>:112:                                    ; preds = %105
  %113 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %114 = getelementptr inbounds %struct.Zio, %struct.Zio* %113, i64 0, i32 0
  %115 = load i64, i64* %114, align 8, !tbaa !10
  %116 = add i64 %115, -1
  store i64 %116, i64* %114, align 8, !tbaa !10
  %117 = icmp eq i64 %115, 0
  br i1 %117, label %124, label %118

; <label>:118:                                    ; preds = %112
  %119 = getelementptr inbounds %struct.Zio, %struct.Zio* %113, i64 0, i32 1
  %120 = load i8*, i8** %119, align 8, !tbaa !13
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %119, align 8, !tbaa !13
  %122 = load i8, i8* %120, align 1, !tbaa !2
  %123 = zext i8 %122 to i32
  br label %128

; <label>:124:                                    ; preds = %112
  %125 = call i32 @luaZ_fill(%struct.Zio* %113) #6
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %124
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:128:                                    ; preds = %124, %118
  %129 = phi i32 [ %123, %118 ], [ %125, %124 ]
  %130 = and i32 %129, 255
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %135, label %132

; <label>:132:                                    ; preds = %128
  %133 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !8
  %134 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #6
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* %134) #7
  unreachable

; <label>:135:                                    ; preds = %128
  %136 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.Zio, %struct.Zio* %136, i64 0, i32 0
  %138 = load i64, i64* %137, align 8, !tbaa !10
  %139 = add i64 %138, -1
  store i64 %139, i64* %137, align 8, !tbaa !10
  %140 = icmp eq i64 %138, 0
  br i1 %140, label %147, label %141

; <label>:141:                                    ; preds = %135
  %142 = getelementptr inbounds %struct.Zio, %struct.Zio* %136, i64 0, i32 1
  %143 = load i8*, i8** %142, align 8, !tbaa !13
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %142, align 8, !tbaa !13
  %145 = load i8, i8* %143, align 1, !tbaa !2
  %146 = zext i8 %145 to i32
  br label %151

; <label>:147:                                    ; preds = %135
  %148 = call i32 @luaZ_fill(%struct.Zio* %136) #6
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %147
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:151:                                    ; preds = %147, %141
  %152 = phi i32 [ %146, %141 ], [ %148, %147 ]
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %158, label %155

; <label>:155:                                    ; preds = %151
  %156 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !8
  %157 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %156, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* %157) #7
  unreachable

; <label>:158:                                    ; preds = %151
  %159 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %159) #6
  %160 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %161 = call i64 @luaZ_read(%struct.Zio* %160, i8* nonnull %159, i64 8) #6
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %164, label %163

; <label>:163:                                    ; preds = %158
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:164:                                    ; preds = %158
  %165 = load i64, i64* %5, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #6
  %166 = icmp eq i64 %165, 22136
  br i1 %166, label %168, label %167

; <label>:167:                                    ; preds = %164
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #7
  unreachable

; <label>:168:                                    ; preds = %164
  %169 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %169) #6
  %170 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %171 = call i64 @luaZ_read(%struct.Zio* %170, i8* nonnull %169, i64 8) #6
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %174, label %173

; <label>:173:                                    ; preds = %168
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:174:                                    ; preds = %168
  %175 = load double, double* %4, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %169) #6
  %176 = fcmp une double %175, 3.705000e+02
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %174
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #7
  unreachable

; <label>:178:                                    ; preds = %174
  %179 = load %struct.Zio*, %struct.Zio** %17, align 8, !tbaa !9
  %180 = getelementptr inbounds %struct.Zio, %struct.Zio* %179, i64 0, i32 0
  %181 = load i64, i64* %180, align 8, !tbaa !10
  %182 = add i64 %181, -1
  store i64 %182, i64* %180, align 8, !tbaa !10
  %183 = icmp eq i64 %181, 0
  br i1 %183, label %190, label %184

; <label>:184:                                    ; preds = %178
  %185 = getelementptr inbounds %struct.Zio, %struct.Zio* %179, i64 0, i32 1
  %186 = load i8*, i8** %185, align 8, !tbaa !13
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %185, align 8, !tbaa !13
  %188 = load i8, i8* %186, align 1, !tbaa !2
  %189 = zext i8 %188 to i32
  br label %194

; <label>:190:                                    ; preds = %178
  %191 = call i32 @luaZ_fill(%struct.Zio* %179) #6
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

; <label>:193:                                    ; preds = %190
  call fastcc void @error(%struct.LoadState* nonnull %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:194:                                    ; preds = %184, %190
  %195 = phi i32 [ %189, %184 ], [ %191, %190 ]
  %196 = and i32 %195, 255
  %197 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %196) #6
  %198 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %199 = bitcast %union.StackValue** %198 to %struct.TValue**
  %200 = load %struct.TValue*, %struct.TValue** %199, align 8, !tbaa !18
  %201 = bitcast %struct.TValue* %200 to %struct.LClosure**
  store %struct.LClosure* %197, %struct.LClosure** %201, align 8, !tbaa !2
  %202 = getelementptr inbounds %struct.TValue, %struct.TValue* %200, i64 0, i32 1
  store i8 86, i8* %202, align 8, !tbaa !23
  call void @luaD_inctop(%struct.lua_State* %0) #6
  %203 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #6
  %204 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %197, i64 0, i32 5
  store %struct.Proto* %203, %struct.Proto** %204, align 8, !tbaa !25
  call fastcc void @LoadFunction(%struct.LoadState* nonnull %7, %struct.Proto* %203, %struct.TString* null)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6
  ret %struct.LClosure* %197
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadFunction(%struct.LoadState* readonly, %struct.Proto*, %struct.TString*) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0)
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %8 = icmp eq %struct.TString* %6, null
  %9 = select i1 %8, %struct.TString* %2, %struct.TString* %6
  store %struct.TString* %9, %struct.TString** %7, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  br label %11

; <label>:11:                                     ; preds = %33, %3
  %12 = phi i64 [ 0, %3 ], [ %37, %33 ]
  %13 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i64 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !10
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8, !tbaa !10
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %24, label %18

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %19, align 8, !tbaa !13
  %22 = load i8, i8* %20, align 1, !tbaa !2
  %23 = zext i8 %22 to i32
  br label %28

; <label>:24:                                     ; preds = %11
  %25 = tail call i32 @luaZ_fill(%struct.Zio* %13) #6
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:28:                                     ; preds = %24, %18
  %29 = phi i32 [ %23, %18 ], [ %25, %24 ]
  %30 = trunc i32 %29 to i8
  %31 = icmp ult i64 %12, 16777215
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %28
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:33:                                     ; preds = %28
  %34 = shl i64 %12, 7
  %35 = and i8 %30, 127
  %36 = zext i8 %35 to i64
  %37 = or i64 %34, %36
  %38 = icmp sgt i8 %30, -1
  br i1 %38, label %11, label %39

; <label>:39:                                     ; preds = %33
  %40 = trunc i64 %37 to i32
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  store i32 %40, i32* %41, align 4, !tbaa !29
  br label %42

; <label>:42:                                     ; preds = %64, %39
  %43 = phi i64 [ 0, %39 ], [ %68, %64 ]
  %44 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.Zio, %struct.Zio* %44, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !10
  %47 = add i64 %46, -1
  store i64 %47, i64* %45, align 8, !tbaa !10
  %48 = icmp eq i64 %46, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.Zio, %struct.Zio* %44, i64 0, i32 1
  %51 = load i8*, i8** %50, align 8, !tbaa !13
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %50, align 8, !tbaa !13
  %53 = load i8, i8* %51, align 1, !tbaa !2
  %54 = zext i8 %53 to i32
  br label %59

; <label>:55:                                     ; preds = %42
  %56 = tail call i32 @luaZ_fill(%struct.Zio* %44) #6
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %55
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:59:                                     ; preds = %55, %49
  %60 = phi i32 [ %54, %49 ], [ %56, %55 ]
  %61 = trunc i32 %60 to i8
  %62 = icmp ult i64 %43, 16777215
  br i1 %62, label %64, label %63

; <label>:63:                                     ; preds = %59
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:64:                                     ; preds = %59
  %65 = shl i64 %43, 7
  %66 = and i8 %61, 127
  %67 = zext i8 %66 to i64
  %68 = or i64 %65, %67
  %69 = icmp sgt i8 %61, -1
  br i1 %69, label %42, label %70

; <label>:70:                                     ; preds = %64
  %71 = trunc i64 %68 to i32
  %72 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  store i32 %71, i32* %72, align 8, !tbaa !30
  %73 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct.Zio, %struct.Zio* %73, i64 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !10
  %76 = add i64 %75, -1
  store i64 %76, i64* %74, align 8, !tbaa !10
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %70
  %79 = getelementptr inbounds %struct.Zio, %struct.Zio* %73, i64 0, i32 1
  %80 = load i8*, i8** %79, align 8, !tbaa !13
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %79, align 8, !tbaa !13
  %82 = load i8, i8* %80, align 1, !tbaa !2
  %83 = zext i8 %82 to i32
  br label %92

; <label>:84:                                     ; preds = %70
  %85 = tail call i32 @luaZ_fill(%struct.Zio* %73) #6
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %84
  %88 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %89 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i64 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !10
  br label %92

; <label>:91:                                     ; preds = %84
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:92:                                     ; preds = %87, %78
  %93 = phi i64* [ %89, %87 ], [ %74, %78 ]
  %94 = phi i64 [ %90, %87 ], [ %76, %78 ]
  %95 = phi %struct.Zio* [ %88, %87 ], [ %73, %78 ]
  %96 = phi i32 [ %85, %87 ], [ %83, %78 ]
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  store i8 %97, i8* %98, align 2, !tbaa !31
  %99 = add i64 %94, -1
  store i64 %99, i64* %93, align 8, !tbaa !10
  %100 = icmp eq i64 %94, 0
  br i1 %100, label %107, label %101

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds %struct.Zio, %struct.Zio* %95, i64 0, i32 1
  %103 = load i8*, i8** %102, align 8, !tbaa !13
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %102, align 8, !tbaa !13
  %105 = load i8, i8* %103, align 1, !tbaa !2
  %106 = zext i8 %105 to i32
  br label %115

; <label>:107:                                    ; preds = %92
  %108 = tail call i32 @luaZ_fill(%struct.Zio* %95) #6
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %114, label %110

; <label>:110:                                    ; preds = %107
  %111 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.Zio, %struct.Zio* %111, i64 0, i32 0
  %113 = load i64, i64* %112, align 8, !tbaa !10
  br label %115

; <label>:114:                                    ; preds = %107
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:115:                                    ; preds = %110, %101
  %116 = phi i64* [ %112, %110 ], [ %93, %101 ]
  %117 = phi i64 [ %113, %110 ], [ %99, %101 ]
  %118 = phi %struct.Zio* [ %111, %110 ], [ %95, %101 ]
  %119 = phi i32 [ %108, %110 ], [ %106, %101 ]
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  store i8 %120, i8* %121, align 1, !tbaa !32
  %122 = add i64 %117, -1
  store i64 %122, i64* %116, align 8, !tbaa !10
  %123 = icmp eq i64 %117, 0
  br i1 %123, label %130, label %124

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds %struct.Zio, %struct.Zio* %118, i64 0, i32 1
  %126 = load i8*, i8** %125, align 8, !tbaa !13
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %125, align 8, !tbaa !13
  %128 = load i8, i8* %126, align 1, !tbaa !2
  %129 = zext i8 %128 to i32
  br label %134

; <label>:130:                                    ; preds = %115
  %131 = tail call i32 @luaZ_fill(%struct.Zio* %118) #6
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %130
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:134:                                    ; preds = %124, %130
  %135 = phi i32 [ %129, %124 ], [ %131, %130 ]
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  store i8 %136, i8* %137, align 4, !tbaa !33
  br label %138

; <label>:138:                                    ; preds = %160, %134
  %139 = phi i64 [ 0, %134 ], [ %164, %160 ]
  %140 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %141 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !10
  %143 = add i64 %142, -1
  store i64 %143, i64* %141, align 8, !tbaa !10
  %144 = icmp eq i64 %142, 0
  br i1 %144, label %151, label %145

; <label>:145:                                    ; preds = %138
  %146 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i64 0, i32 1
  %147 = load i8*, i8** %146, align 8, !tbaa !13
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %146, align 8, !tbaa !13
  %149 = load i8, i8* %147, align 1, !tbaa !2
  %150 = zext i8 %149 to i32
  br label %155

; <label>:151:                                    ; preds = %138
  %152 = tail call i32 @luaZ_fill(%struct.Zio* %140) #6
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %151
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:155:                                    ; preds = %151, %145
  %156 = phi i32 [ %150, %145 ], [ %152, %151 ]
  %157 = trunc i32 %156 to i8
  %158 = icmp ult i64 %139, 16777215
  br i1 %158, label %160, label %159

; <label>:159:                                    ; preds = %155
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:160:                                    ; preds = %155
  %161 = shl i64 %139, 7
  %162 = and i8 %157, 127
  %163 = zext i8 %162 to i64
  %164 = or i64 %161, %163
  %165 = icmp sgt i8 %157, -1
  br i1 %165, label %138, label %166

; <label>:166:                                    ; preds = %160
  %167 = trunc i64 %164 to i32
  %168 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %169 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %170 = shl i64 %164, 32
  %171 = ashr exact i64 %170, 30
  %172 = tail call i8* @luaM_malloc_(%struct.lua_State* %169, i64 %171, i32 0) #6
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 16
  %174 = bitcast i32** %173 to i8**
  store i8* %172, i8** %174, align 8, !tbaa !34
  %175 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  store i32 %167, i32* %175, align 8, !tbaa !35
  %176 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %177 = tail call i64 @luaZ_read(%struct.Zio* %176, i8* %172, i64 %171) #6
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

; <label>:179:                                    ; preds = %166
  br label %181

; <label>:180:                                    ; preds = %166
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:181:                                    ; preds = %179, %203
  %182 = phi i64 [ %207, %203 ], [ 0, %179 ]
  %183 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %184 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 0
  %185 = load i64, i64* %184, align 8, !tbaa !10
  %186 = add i64 %185, -1
  store i64 %186, i64* %184, align 8, !tbaa !10
  %187 = icmp eq i64 %185, 0
  br i1 %187, label %194, label %188

; <label>:188:                                    ; preds = %181
  %189 = getelementptr inbounds %struct.Zio, %struct.Zio* %183, i64 0, i32 1
  %190 = load i8*, i8** %189, align 8, !tbaa !13
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %189, align 8, !tbaa !13
  %192 = load i8, i8* %190, align 1, !tbaa !2
  %193 = zext i8 %192 to i32
  br label %198

; <label>:194:                                    ; preds = %181
  %195 = tail call i32 @luaZ_fill(%struct.Zio* %183) #6
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %198

; <label>:197:                                    ; preds = %194
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:198:                                    ; preds = %194, %188
  %199 = phi i32 [ %193, %188 ], [ %195, %194 ]
  %200 = trunc i32 %199 to i8
  %201 = icmp ult i64 %182, 16777215
  br i1 %201, label %203, label %202

; <label>:202:                                    ; preds = %198
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:203:                                    ; preds = %198
  %204 = shl i64 %182, 7
  %205 = and i8 %200, 127
  %206 = zext i8 %205 to i64
  %207 = or i64 %204, %206
  %208 = icmp sgt i8 %200, -1
  br i1 %208, label %181, label %209

; <label>:209:                                    ; preds = %203
  %210 = trunc i64 %207 to i32
  %211 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %212 = shl i64 %207, 32
  %213 = ashr exact i64 %212, 28
  %214 = tail call i8* @luaM_malloc_(%struct.lua_State* %211, i64 %213, i32 0) #6
  %215 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %216 = bitcast %struct.TValue** %215 to i8**
  store i8* %214, i8** %216, align 8, !tbaa !36
  %217 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  store i32 %210, i32* %217, align 4, !tbaa !37
  %218 = icmp sgt i32 %210, 0
  %219 = bitcast i8* %214 to %struct.TValue*
  br i1 %218, label %221, label %220

; <label>:220:                                    ; preds = %327, %209
  br label %332

; <label>:221:                                    ; preds = %209
  %222 = and i64 %207, 4294967295
  %223 = add nsw i64 %222, -1
  %224 = and i64 %206, 3
  %225 = icmp ult i64 %223, 3
  br i1 %225, label %241, label %226

; <label>:226:                                    ; preds = %221
  %227 = sub nsw i64 %222, %224
  br label %228

; <label>:228:                                    ; preds = %228, %226
  %229 = phi i64 [ 0, %226 ], [ %238, %228 ]
  %230 = phi i64 [ %227, %226 ], [ %239, %228 ]
  %231 = getelementptr inbounds %struct.TValue, %struct.TValue* %219, i64 %229, i32 1
  store i8 0, i8* %231, align 8, !tbaa !23
  %232 = or i64 %229, 1
  %233 = getelementptr inbounds %struct.TValue, %struct.TValue* %219, i64 %232, i32 1
  store i8 0, i8* %233, align 8, !tbaa !23
  %234 = or i64 %229, 2
  %235 = getelementptr inbounds %struct.TValue, %struct.TValue* %219, i64 %234, i32 1
  store i8 0, i8* %235, align 8, !tbaa !23
  %236 = or i64 %229, 3
  %237 = getelementptr inbounds %struct.TValue, %struct.TValue* %219, i64 %236, i32 1
  store i8 0, i8* %237, align 8, !tbaa !23
  %238 = add nuw nsw i64 %229, 4
  %239 = add i64 %230, -4
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %228

; <label>:241:                                    ; preds = %228, %221
  %242 = phi i64 [ 0, %221 ], [ %238, %228 ]
  %243 = icmp eq i64 %224, 0
  br i1 %243, label %252, label %244

; <label>:244:                                    ; preds = %241
  br label %245

; <label>:245:                                    ; preds = %245, %244
  %246 = phi i64 [ %242, %244 ], [ %249, %245 ]
  %247 = phi i64 [ %224, %244 ], [ %250, %245 ]
  %248 = getelementptr inbounds %struct.TValue, %struct.TValue* %219, i64 %246, i32 1
  store i8 0, i8* %248, align 8, !tbaa !23
  %249 = add nuw nsw i64 %246, 1
  %250 = add i64 %247, -1
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %245, !llvm.loop !38

; <label>:252:                                    ; preds = %245, %241
  %253 = bitcast double* %5 to i8*
  %254 = bitcast i64* %4 to i8*
  %255 = bitcast double* %5 to i64*
  %256 = ashr exact i64 %212, 32
  br label %257

; <label>:257:                                    ; preds = %330, %252
  %258 = phi %struct.TValue* [ %219, %252 ], [ %331, %330 ]
  %259 = phi i64 [ 0, %252 ], [ %328, %330 ]
  %260 = getelementptr inbounds %struct.TValue, %struct.TValue* %258, i64 %259
  %261 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %262 = getelementptr inbounds %struct.Zio, %struct.Zio* %261, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !10
  %264 = add i64 %263, -1
  store i64 %264, i64* %262, align 8, !tbaa !10
  %265 = icmp eq i64 %263, 0
  br i1 %265, label %272, label %266

; <label>:266:                                    ; preds = %257
  %267 = getelementptr inbounds %struct.Zio, %struct.Zio* %261, i64 0, i32 1
  %268 = load i8*, i8** %267, align 8, !tbaa !13
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  store i8* %269, i8** %267, align 8, !tbaa !13
  %270 = load i8, i8* %268, align 1, !tbaa !2
  %271 = zext i8 %270 to i32
  br label %276

; <label>:272:                                    ; preds = %257
  %273 = call i32 @luaZ_fill(%struct.Zio* %261) #6
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %276

; <label>:275:                                    ; preds = %272
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:276:                                    ; preds = %272, %266
  %277 = phi i32 [ %271, %266 ], [ %273, %272 ]
  %278 = trunc i32 %277 to i8
  switch i8 %278, label %327 [
    i8 0, label %324
    i8 1, label %279
    i8 19, label %299
    i8 35, label %307
    i8 20, label %315
    i8 36, label %315
  ]

; <label>:279:                                    ; preds = %276
  %280 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %281 = getelementptr inbounds %struct.Zio, %struct.Zio* %280, i64 0, i32 0
  %282 = load i64, i64* %281, align 8, !tbaa !10
  %283 = add i64 %282, -1
  store i64 %283, i64* %281, align 8, !tbaa !10
  %284 = icmp eq i64 %282, 0
  br i1 %284, label %291, label %285

; <label>:285:                                    ; preds = %279
  %286 = getelementptr inbounds %struct.Zio, %struct.Zio* %280, i64 0, i32 1
  %287 = load i8*, i8** %286, align 8, !tbaa !13
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  store i8* %288, i8** %286, align 8, !tbaa !13
  %289 = load i8, i8* %287, align 1, !tbaa !2
  %290 = zext i8 %289 to i32
  br label %295

; <label>:291:                                    ; preds = %279
  %292 = call i32 @luaZ_fill(%struct.Zio* %280) #6
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %295

; <label>:294:                                    ; preds = %291
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:295:                                    ; preds = %291, %285
  %296 = phi i32 [ %290, %285 ], [ %292, %291 ]
  %297 = and i32 %296, 255
  %298 = bitcast %struct.TValue* %260 to i32*
  store i32 %297, i32* %298, align 8, !tbaa !2
  br label %324

; <label>:299:                                    ; preds = %276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %253) #6
  %300 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %301 = call i64 @luaZ_read(%struct.Zio* %300, i8* nonnull %253, i64 8) #6
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %304, label %303

; <label>:303:                                    ; preds = %299
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:304:                                    ; preds = %299
  %305 = load i64, i64* %255, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %253) #6
  %306 = bitcast %struct.TValue* %260 to i64*
  store i64 %305, i64* %306, align 8, !tbaa !2
  br label %324

; <label>:307:                                    ; preds = %276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %254) #6
  %308 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %309 = call i64 @luaZ_read(%struct.Zio* %308, i8* nonnull %254, i64 8) #6
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %312, label %311

; <label>:311:                                    ; preds = %307
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:312:                                    ; preds = %307
  %313 = load i64, i64* %4, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %254) #6
  %314 = bitcast %struct.TValue* %260 to i64*
  store i64 %313, i64* %314, align 8, !tbaa !2
  br label %324

; <label>:315:                                    ; preds = %276, %276
  %316 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* nonnull %0) #6
  %317 = icmp eq %struct.TString* %316, null
  br i1 %317, label %318, label %319

; <label>:318:                                    ; preds = %315
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #7
  unreachable

; <label>:319:                                    ; preds = %315
  %320 = bitcast %struct.TValue* %260 to %struct.TString**
  store %struct.TString* %316, %struct.TString** %320, align 8, !tbaa !2
  %321 = getelementptr inbounds %struct.TString, %struct.TString* %316, i64 0, i32 1
  %322 = load i8, i8* %321, align 8, !tbaa !40
  %323 = or i8 %322, 64
  br label %324

; <label>:324:                                    ; preds = %276, %295, %304, %312, %319
  %325 = phi i8 [ %323, %319 ], [ 35, %312 ], [ 19, %304 ], [ 1, %295 ], [ %278, %276 ]
  %326 = getelementptr inbounds %struct.TValue, %struct.TValue* %258, i64 %259, i32 1
  store i8 %325, i8* %326, align 8, !tbaa !23
  br label %327

; <label>:327:                                    ; preds = %324, %276
  %328 = add nuw nsw i64 %259, 1
  %329 = icmp slt i64 %328, %256
  br i1 %329, label %330, label %220

; <label>:330:                                    ; preds = %327
  %331 = load %struct.TValue*, %struct.TValue** %215, align 8, !tbaa !36
  br label %257

; <label>:332:                                    ; preds = %220, %354
  %333 = phi i64 [ %358, %354 ], [ 0, %220 ]
  %334 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %335 = getelementptr inbounds %struct.Zio, %struct.Zio* %334, i64 0, i32 0
  %336 = load i64, i64* %335, align 8, !tbaa !10
  %337 = add i64 %336, -1
  store i64 %337, i64* %335, align 8, !tbaa !10
  %338 = icmp eq i64 %336, 0
  br i1 %338, label %345, label %339

; <label>:339:                                    ; preds = %332
  %340 = getelementptr inbounds %struct.Zio, %struct.Zio* %334, i64 0, i32 1
  %341 = load i8*, i8** %340, align 8, !tbaa !13
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  store i8* %342, i8** %340, align 8, !tbaa !13
  %343 = load i8, i8* %341, align 1, !tbaa !2
  %344 = zext i8 %343 to i32
  br label %349

; <label>:345:                                    ; preds = %332
  %346 = call i32 @luaZ_fill(%struct.Zio* %334) #6
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %349

; <label>:348:                                    ; preds = %345
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:349:                                    ; preds = %345, %339
  %350 = phi i32 [ %344, %339 ], [ %346, %345 ]
  %351 = trunc i32 %350 to i8
  %352 = icmp ult i64 %333, 16777215
  br i1 %352, label %354, label %353

; <label>:353:                                    ; preds = %349
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:354:                                    ; preds = %349
  %355 = shl i64 %333, 7
  %356 = and i8 %351, 127
  %357 = zext i8 %356 to i64
  %358 = or i64 %355, %357
  %359 = icmp sgt i8 %351, -1
  br i1 %359, label %332, label %360

; <label>:360:                                    ; preds = %354
  %361 = trunc i64 %358 to i32
  %362 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %363 = shl i64 %358, 32
  %364 = ashr exact i64 %363, 28
  %365 = call i8* @luaM_malloc_(%struct.lua_State* %362, i64 %364, i32 0) #6
  %366 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %367 = bitcast %struct.Upvaldesc** %366 to i8**
  store i8* %365, i8** %367, align 8, !tbaa !42
  %368 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  store i32 %361, i32* %368, align 8, !tbaa !43
  %369 = icmp sgt i32 %361, 0
  %370 = bitcast i8* %365 to %struct.Upvaldesc*
  br i1 %369, label %371, label %456

; <label>:371:                                    ; preds = %360
  %372 = and i64 %358, 4294967295
  %373 = add nsw i64 %372, -1
  %374 = and i64 %357, 3
  %375 = icmp ult i64 %373, 3
  br i1 %375, label %391, label %376

; <label>:376:                                    ; preds = %371
  %377 = sub nsw i64 %372, %374
  br label %378

; <label>:378:                                    ; preds = %378, %376
  %379 = phi i64 [ 0, %376 ], [ %388, %378 ]
  %380 = phi i64 [ %377, %376 ], [ %389, %378 ]
  %381 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %370, i64 %379, i32 0
  store %struct.TString* null, %struct.TString** %381, align 8, !tbaa !44
  %382 = or i64 %379, 1
  %383 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %370, i64 %382, i32 0
  store %struct.TString* null, %struct.TString** %383, align 8, !tbaa !44
  %384 = or i64 %379, 2
  %385 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %370, i64 %384, i32 0
  store %struct.TString* null, %struct.TString** %385, align 8, !tbaa !44
  %386 = or i64 %379, 3
  %387 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %370, i64 %386, i32 0
  store %struct.TString* null, %struct.TString** %387, align 8, !tbaa !44
  %388 = add nuw nsw i64 %379, 4
  %389 = add i64 %380, -4
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %378

; <label>:391:                                    ; preds = %378, %371
  %392 = phi i64 [ 0, %371 ], [ %388, %378 ]
  %393 = icmp eq i64 %374, 0
  br i1 %393, label %402, label %394

; <label>:394:                                    ; preds = %391
  br label %395

; <label>:395:                                    ; preds = %395, %394
  %396 = phi i64 [ %392, %394 ], [ %399, %395 ]
  %397 = phi i64 [ %374, %394 ], [ %400, %395 ]
  %398 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %370, i64 %396, i32 0
  store %struct.TString* null, %struct.TString** %398, align 8, !tbaa !44
  %399 = add nuw nsw i64 %396, 1
  %400 = add i64 %397, -1
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %395, !llvm.loop !46

; <label>:402:                                    ; preds = %395, %391
  %403 = ashr exact i64 %363, 32
  br label %404

; <label>:404:                                    ; preds = %449, %402
  %405 = phi %struct.Upvaldesc* [ %370, %402 ], [ %450, %449 ]
  %406 = phi i64 [ 0, %402 ], [ %454, %449 ]
  %407 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %408 = getelementptr inbounds %struct.Zio, %struct.Zio* %407, i64 0, i32 0
  %409 = load i64, i64* %408, align 8, !tbaa !10
  %410 = add i64 %409, -1
  store i64 %410, i64* %408, align 8, !tbaa !10
  %411 = icmp eq i64 %409, 0
  br i1 %411, label %418, label %412

; <label>:412:                                    ; preds = %404
  %413 = getelementptr inbounds %struct.Zio, %struct.Zio* %407, i64 0, i32 1
  %414 = load i8*, i8** %413, align 8, !tbaa !13
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  store i8* %415, i8** %413, align 8, !tbaa !13
  %416 = load i8, i8* %414, align 1, !tbaa !2
  %417 = zext i8 %416 to i32
  br label %427

; <label>:418:                                    ; preds = %404
  %419 = call i32 @luaZ_fill(%struct.Zio* %407) #6
  %420 = icmp eq i32 %419, -1
  br i1 %420, label %426, label %421

; <label>:421:                                    ; preds = %418
  %422 = load %struct.Upvaldesc*, %struct.Upvaldesc** %366, align 8, !tbaa !42
  %423 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %424 = getelementptr inbounds %struct.Zio, %struct.Zio* %423, i64 0, i32 0
  %425 = load i64, i64* %424, align 8, !tbaa !10
  br label %427

; <label>:426:                                    ; preds = %418
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:427:                                    ; preds = %421, %412
  %428 = phi i64* [ %424, %421 ], [ %408, %412 ]
  %429 = phi %struct.Upvaldesc* [ %422, %421 ], [ %405, %412 ]
  %430 = phi i64 [ %425, %421 ], [ %410, %412 ]
  %431 = phi %struct.Zio* [ %423, %421 ], [ %407, %412 ]
  %432 = phi i32 [ %419, %421 ], [ %417, %412 ]
  %433 = trunc i32 %432 to i8
  %434 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %429, i64 %406, i32 1
  store i8 %433, i8* %434, align 8, !tbaa !47
  %435 = add i64 %430, -1
  store i64 %435, i64* %428, align 8, !tbaa !10
  %436 = icmp eq i64 %430, 0
  br i1 %436, label %443, label %437

; <label>:437:                                    ; preds = %427
  %438 = getelementptr inbounds %struct.Zio, %struct.Zio* %431, i64 0, i32 1
  %439 = load i8*, i8** %438, align 8, !tbaa !13
  %440 = getelementptr inbounds i8, i8* %439, i64 1
  store i8* %440, i8** %438, align 8, !tbaa !13
  %441 = load i8, i8* %439, align 1, !tbaa !2
  %442 = zext i8 %441 to i32
  br label %449

; <label>:443:                                    ; preds = %427
  %444 = call i32 @luaZ_fill(%struct.Zio* %431) #6
  %445 = icmp eq i32 %444, -1
  br i1 %445, label %448, label %446

; <label>:446:                                    ; preds = %443
  %447 = load %struct.Upvaldesc*, %struct.Upvaldesc** %366, align 8, !tbaa !42
  br label %449

; <label>:448:                                    ; preds = %443
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:449:                                    ; preds = %446, %437
  %450 = phi %struct.Upvaldesc* [ %429, %437 ], [ %447, %446 ]
  %451 = phi i32 [ %442, %437 ], [ %444, %446 ]
  %452 = trunc i32 %451 to i8
  %453 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %450, i64 %406, i32 2
  store i8 %452, i8* %453, align 1, !tbaa !48
  %454 = add nuw nsw i64 %406, 1
  %455 = icmp slt i64 %454, %403
  br i1 %455, label %404, label %456

; <label>:456:                                    ; preds = %449, %360
  br label %457

; <label>:457:                                    ; preds = %456, %479
  %458 = phi i64 [ %483, %479 ], [ 0, %456 ]
  %459 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %460 = getelementptr inbounds %struct.Zio, %struct.Zio* %459, i64 0, i32 0
  %461 = load i64, i64* %460, align 8, !tbaa !10
  %462 = add i64 %461, -1
  store i64 %462, i64* %460, align 8, !tbaa !10
  %463 = icmp eq i64 %461, 0
  br i1 %463, label %470, label %464

; <label>:464:                                    ; preds = %457
  %465 = getelementptr inbounds %struct.Zio, %struct.Zio* %459, i64 0, i32 1
  %466 = load i8*, i8** %465, align 8, !tbaa !13
  %467 = getelementptr inbounds i8, i8* %466, i64 1
  store i8* %467, i8** %465, align 8, !tbaa !13
  %468 = load i8, i8* %466, align 1, !tbaa !2
  %469 = zext i8 %468 to i32
  br label %474

; <label>:470:                                    ; preds = %457
  %471 = call i32 @luaZ_fill(%struct.Zio* %459) #6
  %472 = icmp eq i32 %471, -1
  br i1 %472, label %473, label %474

; <label>:473:                                    ; preds = %470
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:474:                                    ; preds = %470, %464
  %475 = phi i32 [ %469, %464 ], [ %471, %470 ]
  %476 = trunc i32 %475 to i8
  %477 = icmp ult i64 %458, 16777215
  br i1 %477, label %479, label %478

; <label>:478:                                    ; preds = %474
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:479:                                    ; preds = %474
  %480 = shl i64 %458, 7
  %481 = and i8 %476, 127
  %482 = zext i8 %481 to i64
  %483 = or i64 %480, %482
  %484 = icmp sgt i8 %476, -1
  br i1 %484, label %457, label %485

; <label>:485:                                    ; preds = %479
  %486 = trunc i64 %483 to i32
  %487 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %488 = shl i64 %483, 32
  %489 = ashr exact i64 %488, 29
  %490 = call i8* @luaM_malloc_(%struct.lua_State* %487, i64 %489, i32 0) #6
  %491 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  %492 = bitcast %struct.Proto*** %491 to i8**
  store i8* %490, i8** %492, align 8, !tbaa !49
  %493 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  store i32 %486, i32* %493, align 8, !tbaa !50
  %494 = icmp sgt i32 %486, 0
  br i1 %494, label %495, label %550

; <label>:495:                                    ; preds = %485
  %496 = bitcast i8* %490 to %struct.Proto**
  %497 = and i64 %483, 4294967295
  store %struct.Proto* null, %struct.Proto** %496, align 8, !tbaa !51
  %498 = icmp eq i64 %497, 1
  br i1 %498, label %535, label %499

; <label>:499:                                    ; preds = %495
  %500 = add nsw i64 %497, -1
  %501 = add nsw i64 %497, -2
  %502 = and i64 %500, 3
  %503 = icmp ult i64 %501, 3
  br i1 %503, label %523, label %504

; <label>:504:                                    ; preds = %499
  %505 = sub nsw i64 %500, %502
  br label %506

; <label>:506:                                    ; preds = %506, %504
  %507 = phi i64 [ 1, %504 ], [ %520, %506 ]
  %508 = phi i64 [ %505, %504 ], [ %521, %506 ]
  %509 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %510 = getelementptr inbounds %struct.Proto*, %struct.Proto** %509, i64 %507
  store %struct.Proto* null, %struct.Proto** %510, align 8, !tbaa !51
  %511 = add nuw nsw i64 %507, 1
  %512 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %513 = getelementptr inbounds %struct.Proto*, %struct.Proto** %512, i64 %511
  store %struct.Proto* null, %struct.Proto** %513, align 8, !tbaa !51
  %514 = add nuw nsw i64 %507, 2
  %515 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %516 = getelementptr inbounds %struct.Proto*, %struct.Proto** %515, i64 %514
  store %struct.Proto* null, %struct.Proto** %516, align 8, !tbaa !51
  %517 = add nuw nsw i64 %507, 3
  %518 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %519 = getelementptr inbounds %struct.Proto*, %struct.Proto** %518, i64 %517
  store %struct.Proto* null, %struct.Proto** %519, align 8, !tbaa !51
  %520 = add nuw nsw i64 %507, 4
  %521 = add i64 %508, -4
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %506

; <label>:523:                                    ; preds = %506, %499
  %524 = phi i64 [ 1, %499 ], [ %520, %506 ]
  %525 = icmp eq i64 %502, 0
  br i1 %525, label %535, label %526

; <label>:526:                                    ; preds = %523
  br label %527

; <label>:527:                                    ; preds = %527, %526
  %528 = phi i64 [ %532, %527 ], [ %524, %526 ]
  %529 = phi i64 [ %533, %527 ], [ %502, %526 ]
  %530 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %531 = getelementptr inbounds %struct.Proto*, %struct.Proto** %530, i64 %528
  store %struct.Proto* null, %struct.Proto** %531, align 8, !tbaa !51
  %532 = add nuw nsw i64 %528, 1
  %533 = add i64 %529, -1
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %527, !llvm.loop !52

; <label>:535:                                    ; preds = %523, %527, %495
  br i1 %494, label %536, label %550

; <label>:536:                                    ; preds = %535
  %537 = and i64 %483, 4294967295
  br label %538

; <label>:538:                                    ; preds = %538, %536
  %539 = phi i64 [ 0, %536 ], [ %548, %538 ]
  %540 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %541 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %540) #6
  %542 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %543 = getelementptr inbounds %struct.Proto*, %struct.Proto** %542, i64 %539
  store %struct.Proto* %541, %struct.Proto** %543, align 8, !tbaa !51
  %544 = load %struct.Proto**, %struct.Proto*** %491, align 8, !tbaa !49
  %545 = getelementptr inbounds %struct.Proto*, %struct.Proto** %544, i64 %539
  %546 = load %struct.Proto*, %struct.Proto** %545, align 8, !tbaa !51
  %547 = load %struct.TString*, %struct.TString** %7, align 8, !tbaa !27
  call fastcc void @LoadFunction(%struct.LoadState* %0, %struct.Proto* %546, %struct.TString* %547) #6
  %548 = add nuw nsw i64 %539, 1
  %549 = icmp eq i64 %548, %537
  br i1 %549, label %550, label %538

; <label>:550:                                    ; preds = %538, %485, %535
  br label %551

; <label>:551:                                    ; preds = %550, %573
  %552 = phi i64 [ %577, %573 ], [ 0, %550 ]
  %553 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %554 = getelementptr inbounds %struct.Zio, %struct.Zio* %553, i64 0, i32 0
  %555 = load i64, i64* %554, align 8, !tbaa !10
  %556 = add i64 %555, -1
  store i64 %556, i64* %554, align 8, !tbaa !10
  %557 = icmp eq i64 %555, 0
  br i1 %557, label %564, label %558

; <label>:558:                                    ; preds = %551
  %559 = getelementptr inbounds %struct.Zio, %struct.Zio* %553, i64 0, i32 1
  %560 = load i8*, i8** %559, align 8, !tbaa !13
  %561 = getelementptr inbounds i8, i8* %560, i64 1
  store i8* %561, i8** %559, align 8, !tbaa !13
  %562 = load i8, i8* %560, align 1, !tbaa !2
  %563 = zext i8 %562 to i32
  br label %568

; <label>:564:                                    ; preds = %551
  %565 = call i32 @luaZ_fill(%struct.Zio* %553) #6
  %566 = icmp eq i32 %565, -1
  br i1 %566, label %567, label %568

; <label>:567:                                    ; preds = %564
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:568:                                    ; preds = %564, %558
  %569 = phi i32 [ %563, %558 ], [ %565, %564 ]
  %570 = trunc i32 %569 to i8
  %571 = icmp ult i64 %552, 16777215
  br i1 %571, label %573, label %572

; <label>:572:                                    ; preds = %568
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:573:                                    ; preds = %568
  %574 = shl i64 %552, 7
  %575 = and i8 %570, 127
  %576 = zext i8 %575 to i64
  %577 = or i64 %574, %576
  %578 = icmp sgt i8 %570, -1
  br i1 %578, label %551, label %579

; <label>:579:                                    ; preds = %573
  %580 = trunc i64 %577 to i32
  %581 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %582 = shl i64 %577, 32
  %583 = ashr exact i64 %582, 32
  %584 = call i8* @luaM_malloc_(%struct.lua_State* %581, i64 %583, i32 0) #6
  %585 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  store i8* %584, i8** %585, align 8, !tbaa !53
  %586 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  store i32 %580, i32* %586, align 4, !tbaa !54
  %587 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %588 = call i64 @luaZ_read(%struct.Zio* %587, i8* %584, i64 %583) #6
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %591

; <label>:590:                                    ; preds = %579
  br label %592

; <label>:591:                                    ; preds = %579
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:592:                                    ; preds = %590, %614
  %593 = phi i64 [ %618, %614 ], [ 0, %590 ]
  %594 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %595 = getelementptr inbounds %struct.Zio, %struct.Zio* %594, i64 0, i32 0
  %596 = load i64, i64* %595, align 8, !tbaa !10
  %597 = add i64 %596, -1
  store i64 %597, i64* %595, align 8, !tbaa !10
  %598 = icmp eq i64 %596, 0
  br i1 %598, label %605, label %599

; <label>:599:                                    ; preds = %592
  %600 = getelementptr inbounds %struct.Zio, %struct.Zio* %594, i64 0, i32 1
  %601 = load i8*, i8** %600, align 8, !tbaa !13
  %602 = getelementptr inbounds i8, i8* %601, i64 1
  store i8* %602, i8** %600, align 8, !tbaa !13
  %603 = load i8, i8* %601, align 1, !tbaa !2
  %604 = zext i8 %603 to i32
  br label %609

; <label>:605:                                    ; preds = %592
  %606 = call i32 @luaZ_fill(%struct.Zio* %594) #6
  %607 = icmp eq i32 %606, -1
  br i1 %607, label %608, label %609

; <label>:608:                                    ; preds = %605
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:609:                                    ; preds = %605, %599
  %610 = phi i32 [ %604, %599 ], [ %606, %605 ]
  %611 = trunc i32 %610 to i8
  %612 = icmp ult i64 %593, 16777215
  br i1 %612, label %614, label %613

; <label>:613:                                    ; preds = %609
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:614:                                    ; preds = %609
  %615 = shl i64 %593, 7
  %616 = and i8 %611, 127
  %617 = zext i8 %616 to i64
  %618 = or i64 %615, %617
  %619 = icmp sgt i8 %611, -1
  br i1 %619, label %592, label %620

; <label>:620:                                    ; preds = %614
  %621 = trunc i64 %618 to i32
  %622 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %623 = shl i64 %618, 32
  %624 = ashr exact i64 %623, 29
  %625 = call i8* @luaM_malloc_(%struct.lua_State* %622, i64 %624, i32 0) #6
  %626 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %627 = bitcast %struct.AbsLineInfo** %626 to i8**
  store i8* %625, i8** %627, align 8, !tbaa !55
  %628 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  store i32 %621, i32* %628, align 8, !tbaa !56
  %629 = ashr exact i64 %623, 32
  br label %630

; <label>:630:                                    ; preds = %694, %620
  %631 = phi i64 [ %698, %694 ], [ 0, %620 ]
  %632 = icmp slt i64 %631, %629
  br label %633

; <label>:633:                                    ; preds = %655, %630
  %634 = phi i64 [ 0, %630 ], [ %659, %655 ]
  %635 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %636 = getelementptr inbounds %struct.Zio, %struct.Zio* %635, i64 0, i32 0
  %637 = load i64, i64* %636, align 8, !tbaa !10
  %638 = add i64 %637, -1
  store i64 %638, i64* %636, align 8, !tbaa !10
  %639 = icmp eq i64 %637, 0
  br i1 %639, label %646, label %640

; <label>:640:                                    ; preds = %633
  %641 = getelementptr inbounds %struct.Zio, %struct.Zio* %635, i64 0, i32 1
  %642 = load i8*, i8** %641, align 8, !tbaa !13
  %643 = getelementptr inbounds i8, i8* %642, i64 1
  store i8* %643, i8** %641, align 8, !tbaa !13
  %644 = load i8, i8* %642, align 1, !tbaa !2
  %645 = zext i8 %644 to i32
  br label %650

; <label>:646:                                    ; preds = %633
  %647 = call i32 @luaZ_fill(%struct.Zio* %635) #6
  %648 = icmp eq i32 %647, -1
  br i1 %648, label %649, label %650

; <label>:649:                                    ; preds = %646
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:650:                                    ; preds = %646, %640
  %651 = phi i32 [ %645, %640 ], [ %647, %646 ]
  %652 = trunc i32 %651 to i8
  %653 = icmp ult i64 %634, 16777215
  br i1 %653, label %655, label %654

; <label>:654:                                    ; preds = %650
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:655:                                    ; preds = %650
  %656 = shl i64 %634, 7
  %657 = and i8 %652, 127
  %658 = zext i8 %657 to i64
  %659 = or i64 %656, %658
  %660 = icmp sgt i8 %652, -1
  br i1 %660, label %633, label %661

; <label>:661:                                    ; preds = %655
  %662 = trunc i64 %659 to i32
  br i1 %632, label %663, label %699

; <label>:663:                                    ; preds = %661
  %664 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %626, align 8, !tbaa !55
  %665 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %664, i64 %631, i32 0
  store i32 %662, i32* %665, align 4, !tbaa !57
  br label %666

; <label>:666:                                    ; preds = %688, %663
  %667 = phi i64 [ 0, %663 ], [ %692, %688 ]
  %668 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %669 = getelementptr inbounds %struct.Zio, %struct.Zio* %668, i64 0, i32 0
  %670 = load i64, i64* %669, align 8, !tbaa !10
  %671 = add i64 %670, -1
  store i64 %671, i64* %669, align 8, !tbaa !10
  %672 = icmp eq i64 %670, 0
  br i1 %672, label %679, label %673

; <label>:673:                                    ; preds = %666
  %674 = getelementptr inbounds %struct.Zio, %struct.Zio* %668, i64 0, i32 1
  %675 = load i8*, i8** %674, align 8, !tbaa !13
  %676 = getelementptr inbounds i8, i8* %675, i64 1
  store i8* %676, i8** %674, align 8, !tbaa !13
  %677 = load i8, i8* %675, align 1, !tbaa !2
  %678 = zext i8 %677 to i32
  br label %683

; <label>:679:                                    ; preds = %666
  %680 = call i32 @luaZ_fill(%struct.Zio* %668) #6
  %681 = icmp eq i32 %680, -1
  br i1 %681, label %682, label %683

; <label>:682:                                    ; preds = %679
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:683:                                    ; preds = %679, %673
  %684 = phi i32 [ %678, %673 ], [ %680, %679 ]
  %685 = trunc i32 %684 to i8
  %686 = icmp ult i64 %667, 16777215
  br i1 %686, label %688, label %687

; <label>:687:                                    ; preds = %683
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:688:                                    ; preds = %683
  %689 = shl i64 %667, 7
  %690 = and i8 %685, 127
  %691 = zext i8 %690 to i64
  %692 = or i64 %689, %691
  %693 = icmp sgt i8 %685, -1
  br i1 %693, label %666, label %694

; <label>:694:                                    ; preds = %688
  %695 = trunc i64 %692 to i32
  %696 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %626, align 8, !tbaa !55
  %697 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %696, i64 %631, i32 1
  store i32 %695, i32* %697, align 4, !tbaa !59
  %698 = add nuw i64 %631, 1
  br label %630

; <label>:699:                                    ; preds = %661
  %700 = trunc i64 %659 to i32
  %701 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !8
  %702 = shl i64 %659, 32
  %703 = ashr exact i64 %702, 28
  %704 = call i8* @luaM_malloc_(%struct.lua_State* %701, i64 %703, i32 0) #6
  %705 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  %706 = bitcast %struct.LocVar** %705 to i8**
  store i8* %704, i8** %706, align 8, !tbaa !60
  %707 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  store i32 %700, i32* %707, align 4, !tbaa !61
  %708 = icmp sgt i32 %700, 0
  %709 = bitcast i8* %704 to %struct.LocVar*
  br i1 %708, label %710, label %814

; <label>:710:                                    ; preds = %699
  %711 = and i64 %659, 4294967295
  %712 = add nsw i64 %711, -1
  %713 = and i64 %658, 3
  %714 = icmp ult i64 %712, 3
  br i1 %714, label %730, label %715

; <label>:715:                                    ; preds = %710
  %716 = sub nsw i64 %711, %713
  br label %717

; <label>:717:                                    ; preds = %717, %715
  %718 = phi i64 [ 0, %715 ], [ %727, %717 ]
  %719 = phi i64 [ %716, %715 ], [ %728, %717 ]
  %720 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %709, i64 %718, i32 0
  store %struct.TString* null, %struct.TString** %720, align 8, !tbaa !62
  %721 = or i64 %718, 1
  %722 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %709, i64 %721, i32 0
  store %struct.TString* null, %struct.TString** %722, align 8, !tbaa !62
  %723 = or i64 %718, 2
  %724 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %709, i64 %723, i32 0
  store %struct.TString* null, %struct.TString** %724, align 8, !tbaa !62
  %725 = or i64 %718, 3
  %726 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %709, i64 %725, i32 0
  store %struct.TString* null, %struct.TString** %726, align 8, !tbaa !62
  %727 = add nuw nsw i64 %718, 4
  %728 = add i64 %719, -4
  %729 = icmp eq i64 %728, 0
  br i1 %729, label %730, label %717

; <label>:730:                                    ; preds = %717, %710
  %731 = phi i64 [ 0, %710 ], [ %727, %717 ]
  %732 = icmp eq i64 %713, 0
  br i1 %732, label %741, label %733

; <label>:733:                                    ; preds = %730
  br label %734

; <label>:734:                                    ; preds = %734, %733
  %735 = phi i64 [ %731, %733 ], [ %738, %734 ]
  %736 = phi i64 [ %713, %733 ], [ %739, %734 ]
  %737 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %709, i64 %735, i32 0
  store %struct.TString* null, %struct.TString** %737, align 8, !tbaa !62
  %738 = add nuw nsw i64 %735, 1
  %739 = add i64 %736, -1
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %741, label %734, !llvm.loop !64

; <label>:741:                                    ; preds = %734, %730
  %742 = ashr exact i64 %702, 32
  br label %743

; <label>:743:                                    ; preds = %808, %741
  %744 = phi i64 [ 0, %741 ], [ %812, %808 ]
  %745 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #6
  %746 = load %struct.LocVar*, %struct.LocVar** %705, align 8, !tbaa !60
  %747 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %746, i64 %744, i32 0
  store %struct.TString* %745, %struct.TString** %747, align 8, !tbaa !62
  br label %748

; <label>:748:                                    ; preds = %770, %743
  %749 = phi i64 [ 0, %743 ], [ %774, %770 ]
  %750 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %751 = getelementptr inbounds %struct.Zio, %struct.Zio* %750, i64 0, i32 0
  %752 = load i64, i64* %751, align 8, !tbaa !10
  %753 = add i64 %752, -1
  store i64 %753, i64* %751, align 8, !tbaa !10
  %754 = icmp eq i64 %752, 0
  br i1 %754, label %761, label %755

; <label>:755:                                    ; preds = %748
  %756 = getelementptr inbounds %struct.Zio, %struct.Zio* %750, i64 0, i32 1
  %757 = load i8*, i8** %756, align 8, !tbaa !13
  %758 = getelementptr inbounds i8, i8* %757, i64 1
  store i8* %758, i8** %756, align 8, !tbaa !13
  %759 = load i8, i8* %757, align 1, !tbaa !2
  %760 = zext i8 %759 to i32
  br label %765

; <label>:761:                                    ; preds = %748
  %762 = call i32 @luaZ_fill(%struct.Zio* %750) #6
  %763 = icmp eq i32 %762, -1
  br i1 %763, label %764, label %765

; <label>:764:                                    ; preds = %761
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:765:                                    ; preds = %761, %755
  %766 = phi i32 [ %760, %755 ], [ %762, %761 ]
  %767 = trunc i32 %766 to i8
  %768 = icmp ult i64 %749, 16777215
  br i1 %768, label %770, label %769

; <label>:769:                                    ; preds = %765
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:770:                                    ; preds = %765
  %771 = shl i64 %749, 7
  %772 = and i8 %767, 127
  %773 = zext i8 %772 to i64
  %774 = or i64 %771, %773
  %775 = icmp sgt i8 %767, -1
  br i1 %775, label %748, label %776

; <label>:776:                                    ; preds = %770
  %777 = trunc i64 %774 to i32
  %778 = load %struct.LocVar*, %struct.LocVar** %705, align 8, !tbaa !60
  %779 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %778, i64 %744, i32 1
  store i32 %777, i32* %779, align 8, !tbaa !65
  br label %780

; <label>:780:                                    ; preds = %802, %776
  %781 = phi i64 [ 0, %776 ], [ %806, %802 ]
  %782 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %783 = getelementptr inbounds %struct.Zio, %struct.Zio* %782, i64 0, i32 0
  %784 = load i64, i64* %783, align 8, !tbaa !10
  %785 = add i64 %784, -1
  store i64 %785, i64* %783, align 8, !tbaa !10
  %786 = icmp eq i64 %784, 0
  br i1 %786, label %793, label %787

; <label>:787:                                    ; preds = %780
  %788 = getelementptr inbounds %struct.Zio, %struct.Zio* %782, i64 0, i32 1
  %789 = load i8*, i8** %788, align 8, !tbaa !13
  %790 = getelementptr inbounds i8, i8* %789, i64 1
  store i8* %790, i8** %788, align 8, !tbaa !13
  %791 = load i8, i8* %789, align 1, !tbaa !2
  %792 = zext i8 %791 to i32
  br label %797

; <label>:793:                                    ; preds = %780
  %794 = call i32 @luaZ_fill(%struct.Zio* %782) #6
  %795 = icmp eq i32 %794, -1
  br i1 %795, label %796, label %797

; <label>:796:                                    ; preds = %793
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:797:                                    ; preds = %793, %787
  %798 = phi i32 [ %792, %787 ], [ %794, %793 ]
  %799 = trunc i32 %798 to i8
  %800 = icmp ult i64 %781, 16777215
  br i1 %800, label %802, label %801

; <label>:801:                                    ; preds = %797
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:802:                                    ; preds = %797
  %803 = shl i64 %781, 7
  %804 = and i8 %799, 127
  %805 = zext i8 %804 to i64
  %806 = or i64 %803, %805
  %807 = icmp sgt i8 %799, -1
  br i1 %807, label %780, label %808

; <label>:808:                                    ; preds = %802
  %809 = trunc i64 %806 to i32
  %810 = load %struct.LocVar*, %struct.LocVar** %705, align 8, !tbaa !60
  %811 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %810, i64 %744, i32 2
  store i32 %809, i32* %811, align 4, !tbaa !66
  %812 = add nuw nsw i64 %744, 1
  %813 = icmp slt i64 %812, %742
  br i1 %813, label %743, label %814

; <label>:814:                                    ; preds = %808, %699
  br label %815

; <label>:815:                                    ; preds = %814, %837
  %816 = phi i64 [ %841, %837 ], [ 0, %814 ]
  %817 = load %struct.Zio*, %struct.Zio** %10, align 8, !tbaa !9
  %818 = getelementptr inbounds %struct.Zio, %struct.Zio* %817, i64 0, i32 0
  %819 = load i64, i64* %818, align 8, !tbaa !10
  %820 = add i64 %819, -1
  store i64 %820, i64* %818, align 8, !tbaa !10
  %821 = icmp eq i64 %819, 0
  br i1 %821, label %828, label %822

; <label>:822:                                    ; preds = %815
  %823 = getelementptr inbounds %struct.Zio, %struct.Zio* %817, i64 0, i32 1
  %824 = load i8*, i8** %823, align 8, !tbaa !13
  %825 = getelementptr inbounds i8, i8* %824, i64 1
  store i8* %825, i8** %823, align 8, !tbaa !13
  %826 = load i8, i8* %824, align 1, !tbaa !2
  %827 = zext i8 %826 to i32
  br label %832

; <label>:828:                                    ; preds = %815
  %829 = call i32 @luaZ_fill(%struct.Zio* %817) #6
  %830 = icmp eq i32 %829, -1
  br i1 %830, label %831, label %832

; <label>:831:                                    ; preds = %828
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:832:                                    ; preds = %828, %822
  %833 = phi i32 [ %827, %822 ], [ %829, %828 ]
  %834 = trunc i32 %833 to i8
  %835 = icmp ult i64 %816, 16777215
  br i1 %835, label %837, label %836

; <label>:836:                                    ; preds = %832
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:837:                                    ; preds = %832
  %838 = shl i64 %816, 7
  %839 = and i8 %834, 127
  %840 = zext i8 %839 to i64
  %841 = or i64 %838, %840
  %842 = icmp sgt i8 %834, -1
  br i1 %842, label %815, label %843

; <label>:843:                                    ; preds = %837
  %844 = trunc i64 %841 to i32
  %845 = icmp sgt i32 %844, 0
  br i1 %845, label %846, label %855

; <label>:846:                                    ; preds = %843
  %847 = and i64 %841, 4294967295
  br label %848

; <label>:848:                                    ; preds = %848, %846
  %849 = phi i64 [ 0, %846 ], [ %853, %848 ]
  %850 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #6
  %851 = load %struct.Upvaldesc*, %struct.Upvaldesc** %366, align 8, !tbaa !42
  %852 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %851, i64 %849, i32 0
  store %struct.TString* %850, %struct.TString** %852, align 8, !tbaa !44
  %853 = add nuw nsw i64 %849, 1
  %854 = icmp eq i64 %853, %847
  br i1 %854, label %855, label %848

; <label>:855:                                    ; preds = %848, %843
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error(%struct.LoadState* nocapture readonly, i8*) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %6, i8* %1) #6
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  tail call void @luaD_throw(%struct.lua_State* %8, i32 3) #7
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) local_unnamed_addr #2

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #5

declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @LoadStringN(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca [40 x i8], align 16
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  br label %4

; <label>:4:                                      ; preds = %26, %1
  %5 = phi i64 [ 0, %1 ], [ %30, %26 ]
  %6 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !10
  %9 = add i64 %8, -1
  store i64 %9, i64* %7, align 8, !tbaa !10
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !13
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !13
  %15 = load i8, i8* %13, align 1, !tbaa !2
  %16 = zext i8 %15 to i32
  br label %21

; <label>:17:                                     ; preds = %4
  %18 = tail call i32 @luaZ_fill(%struct.Zio* %6) #6
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i32 [ %16, %11 ], [ %18, %17 ]
  %23 = trunc i32 %22 to i8
  %24 = icmp ult i64 %5, 144115188075855871
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #7
  unreachable

; <label>:26:                                     ; preds = %21
  %27 = shl i64 %5, 7
  %28 = and i8 %23, 127
  %29 = zext i8 %28 to i64
  %30 = or i64 %27, %29
  %31 = icmp sgt i8 %23, -1
  br i1 %31, label %4, label %32

; <label>:32:                                     ; preds = %26
  %33 = icmp eq i64 %30, 0
  br i1 %33, label %57, label %34

; <label>:34:                                     ; preds = %32
  %35 = add i64 %30, -1
  %36 = icmp ult i64 %35, 41
  br i1 %36, label %37, label %47

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %38) #6
  %39 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !9
  %40 = call i64 @luaZ_read(%struct.Zio* %39, i8* nonnull %38, i64 %35) #6
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %37
  call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %45 = load %struct.lua_State*, %struct.lua_State** %44, align 8, !tbaa !8
  %46 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %45, i8* nonnull %38, i64 %35) #6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %38) #6
  br label %57

; <label>:47:                                     ; preds = %34
  %48 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %49 = load %struct.lua_State*, %struct.lua_State** %48, align 8, !tbaa !8
  %50 = tail call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %49, i64 %35) #6
  %51 = getelementptr inbounds %struct.TString, %struct.TString* %50, i64 1
  %52 = bitcast %struct.TString* %51 to i8*
  %53 = load %struct.Zio*, %struct.Zio** %3, align 8, !tbaa !9
  %54 = tail call i64 @luaZ_read(%struct.Zio* %53, i8* nonnull %52, i64 %35) #6
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %47
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #7
  unreachable

; <label>:57:                                     ; preds = %47, %32, %43
  %58 = phi %struct.TString* [ %46, %43 ], [ null, %32 ], [ %50, %47 ]
  ret %struct.TString* %58
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"Zio", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!12 = !{!"long", !3, i64 0}
!13 = !{!11, !7, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !3, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !3, i64 0}
!18 = !{!19, !7, i64 16}
!19 = !{!"lua_State", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !20, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !21, i64 96, !7, i64 160, !12, i64 168, !22, i64 176, !22, i64 180, !22, i64 184, !22, i64 188, !22, i64 192}
!20 = !{!"short", !3, i64 0}
!21 = !{!"CallInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 56, !20, i64 60, !20, i64 62}
!22 = !{!"int", !3, i64 0}
!23 = !{!24, !3, i64 8}
!24 = !{!"TValue", !3, i64 0, !3, i64 8}
!25 = !{!26, !7, i64 24}
!26 = !{!"LClosure", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !7, i64 16, !7, i64 24, !3, i64 32}
!27 = !{!28, !7, i64 112}
!28 = !{!"Proto", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !3, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!29 = !{!28, !22, i64 44}
!30 = !{!28, !22, i64 48}
!31 = !{!28, !3, i64 10}
!32 = !{!28, !3, i64 11}
!33 = !{!28, !3, i64 12}
!34 = !{!28, !7, i64 64}
!35 = !{!28, !22, i64 24}
!36 = !{!28, !7, i64 56}
!37 = !{!28, !22, i64 20}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !3, i64 8}
!41 = !{!"TString", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !22, i64 12, !3, i64 16}
!42 = !{!28, !7, i64 80}
!43 = !{!28, !22, i64 16}
!44 = !{!45, !7, i64 0}
!45 = !{!"Upvaldesc", !7, i64 0, !3, i64 8, !3, i64 9}
!46 = distinct !{!46, !39}
!47 = !{!45, !3, i64 8}
!48 = !{!45, !3, i64 9}
!49 = !{!28, !7, i64 72}
!50 = !{!28, !22, i64 32}
!51 = !{!7, !7, i64 0}
!52 = distinct !{!52, !39}
!53 = !{!28, !7, i64 88}
!54 = !{!28, !22, i64 28}
!55 = !{!28, !7, i64 96}
!56 = !{!28, !22, i64 40}
!57 = !{!58, !22, i64 0}
!58 = !{!"AbsLineInfo", !22, i64 0, !22, i64 4}
!59 = !{!58, !22, i64 4}
!60 = !{!28, !7, i64 104}
!61 = !{!28, !22, i64 36}
!62 = !{!63, !7, i64 0}
!63 = !{!"LocVar", !7, i64 0, !22, i64 8, !22, i64 12}
!64 = distinct !{!64, !39}
!65 = !{!63, !22, i64 8}
!66 = !{!63, !22, i64 12}
