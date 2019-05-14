; ModuleID = 'lzio.c'
source_filename = "lzio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
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

; Function Attrs: nounwind uwtable
define hidden i32 @luaZ_fill(%struct.Zio* nocapture) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %4 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2
  %7 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %6, align 8, !tbaa !8
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 8, !tbaa !9
  %10 = call i8* %7(%struct.lua_State* %5, i8* %9, i64* nonnull %2) #3
  %11 = icmp eq i8* %10, null
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %1
  %16 = add i64 %12, -1
  %17 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %19 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %19, i8** %18, align 8, !tbaa !11
  %20 = load i8, i8* %10, align 1, !tbaa !12
  %21 = zext i8 %20 to i32
  br label %22

; <label>:22:                                     ; preds = %1, %15
  %23 = phi i32 [ %21, %15 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  ret i32 %23
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaZ_init(%struct.lua_State*, %struct.Zio* nocapture, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 2
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %6, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 3
  store i8* %3, i8** %7, align 8, !tbaa !9
  %8 = bitcast %struct.Zio* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @luaZ_read(%struct.Zio* nocapture, i8* nocapture, i64) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %43, label %6

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %8 = bitcast i64* %4 to i8*
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %13 = load i64, i64* %7, align 8, !tbaa !10
  br label %14

; <label>:14:                                     ; preds = %6, %31
  %15 = phi i64 [ %13, %6 ], [ %37, %31 ]
  %16 = phi i64 [ %2, %6 ], [ %41, %31 ]
  %17 = phi i8* [ %1, %6 ], [ %40, %31 ]
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %12, align 8, !tbaa !11
  br label %31

; <label>:21:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #3
  %22 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !2
  %23 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %10, align 8, !tbaa !8
  %24 = load i8*, i8** %11, align 8, !tbaa !9
  %25 = call i8* %23(%struct.lua_State* %22, i8* %24, i64* nonnull %4) #3
  %26 = icmp eq i8* %25, null
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, 0
  %29 = or i1 %26, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #3
  br i1 %29, label %43, label %30

; <label>:30:                                     ; preds = %21
  store i64 %27, i64* %7, align 8, !tbaa !10
  store i8* %25, i8** %12, align 8, !tbaa !11
  br label %31

; <label>:31:                                     ; preds = %19, %30
  %32 = phi i8* [ %25, %30 ], [ %20, %19 ]
  %33 = phi i64 [ %27, %30 ], [ %15, %19 ]
  %34 = icmp ugt i64 %16, %33
  %35 = select i1 %34, i64 %33, i64 %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %32, i64 %35, i32 1, i1 false)
  %36 = load i64, i64* %7, align 8, !tbaa !10
  %37 = sub i64 %36, %35
  store i64 %37, i64* %7, align 8, !tbaa !10
  %38 = load i8*, i8** %12, align 8, !tbaa !11
  %39 = getelementptr inbounds i8, i8* %38, i64 %35
  store i8* %39, i8** %12, align 8, !tbaa !11
  %40 = getelementptr inbounds i8, i8* %17, i64 %35
  %41 = sub i64 %16, %35
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %14

; <label>:43:                                     ; preds = %31, %21, %3
  %44 = phi i64 [ 0, %3 ], [ 0, %31 ], [ %16, %21 ]
  ret i64 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !7, i64 32}
!3 = !{!"Zio", !4, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !7, i64 16}
!9 = !{!3, !7, i64 24}
!10 = !{!3, !4, i64 0}
!11 = !{!3, !7, i64 8}
!12 = !{!5, !5, i64 0}
