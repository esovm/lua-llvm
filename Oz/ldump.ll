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

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto* readonly, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 {
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
  %13 = tail call i32 %2(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4, i8* %3) #3
  store i32 %13, i32* %12, align 4, !tbaa !11
  call fastcc void @DumpSize(i64 504, %struct.DumpState* nonnull %6) #3
  call fastcc void @DumpByte(i32 0, %struct.DumpState* nonnull %6) #3
  %14 = load i32, i32* %12, align 4, !tbaa !11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %5
  %17 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %9, align 8, !tbaa !8
  %18 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !2
  %19 = load i8*, i8** %10, align 8, !tbaa !9
  %20 = tail call i32 %17(%struct.lua_State* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6, i8* %19) #3
  store i32 %20, i32* %12, align 4, !tbaa !11
  br label %21

; <label>:21:                                     ; preds = %5, %16
  call fastcc void @DumpByte(i32 4, %struct.DumpState* nonnull %6) #3
  call fastcc void @DumpByte(i32 8, %struct.DumpState* nonnull %6) #3
  call fastcc void @DumpByte(i32 8, %struct.DumpState* nonnull %6) #3
  call fastcc void @DumpInteger(i64 22136, %struct.DumpState* nonnull %6) #3
  call fastcc void @DumpNumber(double 3.705000e+02, %struct.DumpState* nonnull %6) #3
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %23 = load i32, i32* %22, align 8, !tbaa !12
  call fastcc void @DumpByte(i32 %23, %struct.DumpState* nonnull %6) #4
  call fastcc void @DumpFunction(%struct.Proto* %1, %struct.TString* null, %struct.DumpState* nonnull %6) #4
  %24 = load i32, i32* %12, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #2
  ret i32 %24
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpByte(i32, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #2
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* %3, align 1, !tbaa !14
  call fastcc void @DumpBlock(i8* nonnull %3, i64 1, %struct.DumpState* %1) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpFunction(%struct.Proto* readonly, %struct.TString* readnone, %struct.DumpState*) unnamed_addr #0 {
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
  tail call fastcc void @DumpSize(i64 0, %struct.DumpState* nonnull %2) #3
  br label %13

; <label>:12:                                     ; preds = %7
  tail call fastcc void @DumpString(%struct.TString* %9, %struct.DumpState* nonnull %2) #4
  br label %13

; <label>:13:                                     ; preds = %12, %11
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  %15 = load i32, i32* %14, align 4, !tbaa !16
  tail call fastcc void @DumpInt(i32 %15, %struct.DumpState* nonnull %2) #4
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %17 = load i32, i32* %16, align 8, !tbaa !17
  tail call fastcc void @DumpInt(i32 %17, %struct.DumpState* nonnull %2) #4
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %19 = load i8, i8* %18, align 2, !tbaa !18
  %20 = zext i8 %19 to i32
  tail call fastcc void @DumpByte(i32 %20, %struct.DumpState* nonnull %2) #4
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4
  %22 = load i8, i8* %21, align 1, !tbaa !19
  %23 = zext i8 %22 to i32
  tail call fastcc void @DumpByte(i32 %23, %struct.DumpState* nonnull %2) #4
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %25 = load i8, i8* %24, align 4, !tbaa !20
  %26 = zext i8 %25 to i32
  tail call fastcc void @DumpByte(i32 %26, %struct.DumpState* nonnull %2) #4
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 8, !tbaa !21
  tail call fastcc void @DumpInt(i32 %28, %struct.DumpState* nonnull %2) #3
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %30 = bitcast i32** %29 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !22
  %32 = load i32, i32* %27, align 8, !tbaa !21
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  tail call fastcc void @DumpBlock(i8* %31, i64 %34, %struct.DumpState* nonnull %2) #3
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %36 = load i32, i32* %35, align 4, !tbaa !23
  tail call fastcc void @DumpInt(i32 %36, %struct.DumpState* nonnull %2) #3
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %38 = sext i32 %36 to i64
  br label %39

; <label>:39:                                     ; preds = %63, %13
  %40 = phi i64 [ %64, %63 ], [ 0, %13 ]
  %41 = icmp slt i64 %40, %38
  br i1 %41, label %42, label %65

; <label>:42:                                     ; preds = %39
  %43 = load %struct.TValue*, %struct.TValue** %37, align 8, !tbaa !24
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 %40
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 %40, i32 1
  %46 = load i8, i8* %45, align 8, !tbaa !25
  %47 = and i8 %46, 63
  %48 = zext i8 %47 to i32
  tail call fastcc void @DumpByte(i32 %48, %struct.DumpState* %2) #3
  %49 = load i8, i8* %45, align 8, !tbaa !25
  %50 = trunc i8 %49 to i6
  switch i6 %50, label %63 [
    i6 -28, label %60
    i6 1, label %51
    i6 19, label %54
    i6 -29, label %57
    i6 20, label %60
  ]

; <label>:51:                                     ; preds = %42
  %52 = bitcast %struct.TValue* %44 to i32*
  %53 = load i32, i32* %52, align 8, !tbaa !14
  tail call fastcc void @DumpByte(i32 %53, %struct.DumpState* %2) #3
  br label %63

; <label>:54:                                     ; preds = %42
  %55 = bitcast %struct.TValue* %44 to double*
  %56 = load double, double* %55, align 8, !tbaa !14
  tail call fastcc void @DumpNumber(double %56, %struct.DumpState* %2) #3
  br label %63

; <label>:57:                                     ; preds = %42
  %58 = bitcast %struct.TValue* %44 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !14
  tail call fastcc void @DumpInteger(i64 %59, %struct.DumpState* %2) #3
  br label %63

; <label>:60:                                     ; preds = %42, %42
  %61 = bitcast %struct.TValue* %44 to %struct.TString**
  %62 = load %struct.TString*, %struct.TString** %61, align 8, !tbaa !14
  tail call fastcc void @DumpString(%struct.TString* %62, %struct.DumpState* %2) #3
  br label %63

; <label>:63:                                     ; preds = %60, %57, %54, %51, %42
  %64 = add nuw nsw i64 %40, 1
  br label %39

; <label>:65:                                     ; preds = %39
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %67 = load i32, i32* %66, align 8, !tbaa !12
  tail call fastcc void @DumpInt(i32 %67, %struct.DumpState* %2) #3
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %69 = sext i32 %67 to i64
  br label %70

; <label>:70:                                     ; preds = %73, %65
  %71 = phi i64 [ %82, %73 ], [ 0, %65 ]
  %72 = icmp slt i64 %71, %69
  br i1 %72, label %73, label %83

; <label>:73:                                     ; preds = %70
  %74 = load %struct.Upvaldesc*, %struct.Upvaldesc** %68, align 8, !tbaa !27
  %75 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %74, i64 %71, i32 1
  %76 = load i8, i8* %75, align 8, !tbaa !28
  %77 = zext i8 %76 to i32
  tail call fastcc void @DumpByte(i32 %77, %struct.DumpState* %2) #3
  %78 = load %struct.Upvaldesc*, %struct.Upvaldesc** %68, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %78, i64 %71, i32 2
  %80 = load i8, i8* %79, align 1, !tbaa !30
  %81 = zext i8 %80 to i32
  tail call fastcc void @DumpByte(i32 %81, %struct.DumpState* %2) #3
  %82 = add nuw nsw i64 %71, 1
  br label %70

; <label>:83:                                     ; preds = %70
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10
  %85 = load i32, i32* %84, align 8, !tbaa !31
  tail call fastcc void @DumpInt(i32 %85, %struct.DumpState* %2) #3
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %88 = sext i32 %85 to i64
  br label %89

; <label>:89:                                     ; preds = %92, %83
  %90 = phi i64 [ %97, %92 ], [ 0, %83 ]
  %91 = icmp slt i64 %90, %88
  br i1 %91, label %92, label %98

; <label>:92:                                     ; preds = %89
  %93 = load %struct.Proto**, %struct.Proto*** %86, align 8, !tbaa !32
  %94 = getelementptr inbounds %struct.Proto*, %struct.Proto** %93, i64 %90
  %95 = load %struct.Proto*, %struct.Proto** %94, align 8, !tbaa !33
  %96 = load %struct.TString*, %struct.TString** %87, align 8, !tbaa !15
  tail call fastcc void @DumpFunction(%struct.Proto* %95, %struct.TString* %96, %struct.DumpState* %2) #3
  %97 = add nuw nsw i64 %90, 1
  br label %89

; <label>:98:                                     ; preds = %89
  %99 = load i32, i32* %4, align 8, !tbaa !10
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %103 = load i32, i32* %102, align 4, !tbaa !34
  br label %104

; <label>:104:                                    ; preds = %101, %98
  %105 = phi i32 [ %103, %101 ], [ 0, %98 ]
  tail call fastcc void @DumpInt(i32 %105, %struct.DumpState* nonnull %2) #3
  %106 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %107 = load i8*, i8** %106, align 8, !tbaa !35
  %108 = sext i32 %105 to i64
  tail call fastcc void @DumpBlock(i8* %107, i64 %108, %struct.DumpState* nonnull %2) #3
  %109 = load i32, i32* %4, align 8, !tbaa !10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

; <label>:111:                                    ; preds = %104
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %113 = load i32, i32* %112, align 8, !tbaa !36
  br label %114

; <label>:114:                                    ; preds = %111, %104
  %115 = phi i32 [ %113, %111 ], [ 0, %104 ]
  tail call fastcc void @DumpInt(i32 %115, %struct.DumpState* nonnull %2) #3
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %117 = sext i32 %115 to i64
  br label %118

; <label>:118:                                    ; preds = %121, %114
  %119 = phi i64 [ %128, %121 ], [ 0, %114 ]
  %120 = icmp slt i64 %119, %117
  br i1 %120, label %121, label %129

; <label>:121:                                    ; preds = %118
  %122 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %116, align 8, !tbaa !37
  %123 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %122, i64 %119, i32 0
  %124 = load i32, i32* %123, align 4, !tbaa !38
  tail call fastcc void @DumpInt(i32 %124, %struct.DumpState* %2) #3
  %125 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %116, align 8, !tbaa !37
  %126 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %125, i64 %119, i32 1
  %127 = load i32, i32* %126, align 4, !tbaa !40
  tail call fastcc void @DumpInt(i32 %127, %struct.DumpState* %2) #3
  %128 = add nuw nsw i64 %119, 1
  br label %118

; <label>:129:                                    ; preds = %118
  %130 = load i32, i32* %4, align 8, !tbaa !10
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

; <label>:132:                                    ; preds = %129
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %134 = load i32, i32* %133, align 4, !tbaa !41
  br label %135

; <label>:135:                                    ; preds = %132, %129
  %136 = phi i32 [ %134, %132 ], [ 0, %129 ]
  tail call fastcc void @DumpInt(i32 %136, %struct.DumpState* nonnull %2) #3
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %138 = sext i32 %136 to i64
  br label %139

; <label>:139:                                    ; preds = %142, %135
  %140 = phi i64 [ %152, %142 ], [ 0, %135 ]
  %141 = icmp slt i64 %140, %138
  br i1 %141, label %142, label %153

; <label>:142:                                    ; preds = %139
  %143 = load %struct.LocVar*, %struct.LocVar** %137, align 8, !tbaa !42
  %144 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %143, i64 %140, i32 0
  %145 = load %struct.TString*, %struct.TString** %144, align 8, !tbaa !43
  tail call fastcc void @DumpString(%struct.TString* %145, %struct.DumpState* %2) #3
  %146 = load %struct.LocVar*, %struct.LocVar** %137, align 8, !tbaa !42
  %147 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %146, i64 %140, i32 1
  %148 = load i32, i32* %147, align 8, !tbaa !45
  tail call fastcc void @DumpInt(i32 %148, %struct.DumpState* %2) #3
  %149 = load %struct.LocVar*, %struct.LocVar** %137, align 8, !tbaa !42
  %150 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %149, i64 %140, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !46
  tail call fastcc void @DumpInt(i32 %151, %struct.DumpState* %2) #3
  %152 = add nuw nsw i64 %140, 1
  br label %139

; <label>:153:                                    ; preds = %139
  %154 = load i32, i32* %4, align 8, !tbaa !10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %66, align 8, !tbaa !12
  br label %158

; <label>:158:                                    ; preds = %156, %153
  %159 = phi i32 [ %157, %156 ], [ 0, %153 ]
  tail call fastcc void @DumpInt(i32 %159, %struct.DumpState* nonnull %2) #3
  %160 = sext i32 %159 to i64
  br label %161

; <label>:161:                                    ; preds = %164, %158
  %162 = phi i64 [ %168, %164 ], [ 0, %158 ]
  %163 = icmp slt i64 %162, %160
  br i1 %163, label %164, label %169

; <label>:164:                                    ; preds = %161
  %165 = load %struct.Upvaldesc*, %struct.Upvaldesc** %68, align 8, !tbaa !27
  %166 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %165, i64 %162, i32 0
  %167 = load %struct.TString*, %struct.TString** %166, align 8, !tbaa !47
  tail call fastcc void @DumpString(%struct.TString* %167, %struct.DumpState* %2) #3
  %168 = add nuw nsw i64 %162, 1
  br label %161

; <label>:169:                                    ; preds = %161
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize nounwind optsize uwtable
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
  %16 = tail call i32 %11(%struct.lua_State* %13, i8* %0, i64 %1, i8* %15) #3
  store i32 %16, i32* %4, align 4, !tbaa !11
  br label %17

; <label>:17:                                     ; preds = %9, %3
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpInt(i32, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  tail call fastcc void @DumpSize(i64 %3, %struct.DumpState* %1) #4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpInteger(i64, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8, !tbaa !48
  %4 = bitcast i64* %3 to i8*
  call fastcc void @DumpBlock(i8* nonnull %4, i64 8, %struct.DumpState* %1) #4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpNumber(double, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca double, align 8
  store double %0, double* %3, align 8, !tbaa !50
  %4 = bitcast double* %3 to i8*
  call fastcc void @DumpBlock(i8* nonnull %4, i64 8, %struct.DumpState* %1) #4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  call fastcc void @DumpBlock(i8* nonnull %22, i64 %16, %struct.DumpState* %1) #4
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @DumpString(%struct.TString*, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = icmp eq %struct.TString* %0, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call fastcc void @DumpSize(i64 0, %struct.DumpState* %1) #4
  br label %21

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !52
  %8 = icmp eq i8 %7, 20
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !54
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
  tail call fastcc void @DumpSize(i64 %20, %struct.DumpState* %1) #4
  tail call fastcc void @DumpBlock(i8* nonnull %19, i64 %17, %struct.DumpState* %1) #4
  br label %21

; <label>:21:                                     ; preds = %16, %4
  ret void
}

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { minsize nounwind optsize }
attributes #4 = { minsize optsize }

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
!21 = !{!13, !7, i64 24}
!22 = !{!13, !4, i64 64}
!23 = !{!13, !7, i64 20}
!24 = !{!13, !4, i64 56}
!25 = !{!26, !5, i64 8}
!26 = !{!"TValue", !5, i64 0, !5, i64 8}
!27 = !{!13, !4, i64 80}
!28 = !{!29, !5, i64 8}
!29 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!30 = !{!29, !5, i64 9}
!31 = !{!13, !7, i64 32}
!32 = !{!13, !4, i64 72}
!33 = !{!4, !4, i64 0}
!34 = !{!13, !7, i64 28}
!35 = !{!13, !4, i64 88}
!36 = !{!13, !7, i64 40}
!37 = !{!13, !4, i64 96}
!38 = !{!39, !7, i64 0}
!39 = !{!"AbsLineInfo", !7, i64 0, !7, i64 4}
!40 = !{!39, !7, i64 4}
!41 = !{!13, !7, i64 36}
!42 = !{!13, !4, i64 104}
!43 = !{!44, !4, i64 0}
!44 = !{!"LocVar", !4, i64 0, !7, i64 8, !7, i64 12}
!45 = !{!44, !7, i64 8}
!46 = !{!44, !7, i64 12}
!47 = !{!29, !4, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"long long", !5, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !5, i64 0}
!52 = !{!53, !5, i64 8}
!53 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!54 = !{!53, !5, i64 11}
