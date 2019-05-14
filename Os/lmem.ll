; ModuleID = 'lmem.c'
source_filename = "lmem.c"
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

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32* nocapture, i32, i32, i8*) local_unnamed_addr #0 {
  %8 = load i32, i32* %3, align 4, !tbaa !2
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %31, label %10

; <label>:10:                                     ; preds = %7
  %11 = sdiv i32 %5, 2
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp slt i32 %8, %5
  br i1 %14, label %20, label %15, !prof !6

; <label>:15:                                     ; preds = %13
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %5) #4
  unreachable

; <label>:16:                                     ; preds = %10
  %17 = shl nsw i32 %8, 1
  %18 = icmp sgt i32 %17, 4
  %19 = select i1 %18, i32 %17, i32 4
  br label %20

; <label>:20:                                     ; preds = %13, %16
  %21 = phi i32 [ %19, %16 ], [ %5, %13 ]
  %22 = sext i32 %8 to i64
  %23 = sext i32 %4 to i64
  %24 = mul nsw i64 %22, %23
  %25 = sext i32 %21 to i64
  %26 = mul nsw i64 %25, %23
  %27 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %1, i64 %24, i64 %26) #5
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30, !prof !7

; <label>:29:                                     ; preds = %20
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #4
  unreachable

; <label>:30:                                     ; preds = %20
  store i32 %21, i32* %3, align 4, !tbaa !2
  br label %31

; <label>:31:                                     ; preds = %7, %30
  %32 = phi i8* [ %27, %30 ], [ %1, %7 ]
  ret i8* %32
}

; Function Attrs: noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !18
  %11 = tail call i8* %8(i8* %10, i8* %1, i64 %2, i64 %3) #6
  %12 = icmp eq i8* %11, null
  %13 = icmp ne i64 %3, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %20, !prof !7

; <label>:15:                                     ; preds = %4
  %16 = icmp ugt i64 %3, %2
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %15
  %18 = tail call fastcc i8* @tryagain(%struct.lua_State* nonnull %0, i8* %1, i64 %2, i64 %3) #5
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %17, %4
  %21 = phi i8* [ %18, %17 ], [ %11, %4 ]
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !19
  %24 = sub i64 %3, %2
  %25 = add i64 %24, %23
  store i64 %25, i64* %22, align 8, !tbaa !19
  br label %26

; <label>:26:                                     ; preds = %15, %17, %20
  %27 = phi i8* [ %21, %20 ], [ null, %17 ], [ null, %15 ]
  ret i8* %27
}

; Function Attrs: noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32* nocapture, i32, i32) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !8
  %8 = load i32, i32* %2, align 4, !tbaa !2
  %9 = mul nsw i32 %8, %4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i32 %4, %3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 0
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8, !tbaa !18
  %17 = tail call i8* %14(i8* %16, i8* %1, i64 %10, i64 %12) #6
  %18 = icmp eq i8* %17, null
  %19 = icmp sgt i32 %3, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %22, !prof !7

; <label>:21:                                     ; preds = %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:22:                                     ; preds = %5
  %23 = sub nsw i64 %12, %10
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !19
  %26 = add i64 %23, %25
  store i64 %26, i64* %24, align 8, !tbaa !19
  store i32 %3, i32* %2, align 4, !tbaa !2
  ret i8* %17
}

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2 {
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #4
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaM_free_(%struct.lua_State* nocapture readonly, i8*, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 0
  %7 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8, !tbaa !18
  %10 = tail call i8* %7(i8* %9, i8* %1, i64 %2, i64 0) #6
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !19
  %13 = sub i64 %12, %2
  store i64 %13, i64* %11, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @tryagain(%struct.lua_State*, i8*, i64, i64) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 8, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !20
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %4
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0, i32 1) #6
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0
  %13 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %12, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !18
  %16 = tail call i8* %13(i8* %15, i8* %1, i64 %2, i64 %3) #6
  br label %17

; <label>:17:                                     ; preds = %4, %11
  %18 = phi i8* [ %16, %11 ], [ null, %4 ]
  ret i8* %18
}

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 {
  %5 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %1, i64 %2, i64 %3) #5
  %6 = icmp eq i8* %5, null
  %7 = icmp ne i64 %3, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10, !prof !7

; <label>:9:                                      ; preds = %4
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #4
  unreachable

; <label>:10:                                     ; preds = %4
  ret i8* %5
}

; Function Attrs: nounwind optsize uwtable
define hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %24, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 0
  %9 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !18
  %12 = sext i32 %2 to i64
  %13 = tail call i8* %9(i8* %11, i8* null, i64 %12, i64 %1) #6
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19, !prof !7

; <label>:15:                                     ; preds = %5
  %16 = tail call fastcc i8* @tryagain(%struct.lua_State* nonnull %0, i8* null, i64 %12, i64 %1) #5
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #4
  unreachable

; <label>:19:                                     ; preds = %15, %5
  %20 = phi i8* [ %16, %15 ], [ %13, %5 ]
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 3
  %22 = load i64, i64* %21, align 8, !tbaa !19
  %23 = add i64 %22, %1
  store i64 %23, i64* %21, align 8, !tbaa !19
  br label %24

; <label>:24:                                     ; preds = %3, %19
  %25 = phi i8* [ %20, %19 ], [ null, %3 ]
  ret i8* %25
}

; Function Attrs: optsize
declare hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #3

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"branch_weights", i32 2000, i32 1}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{!9, !10, i64 24}
!9 = !{!"lua_State", !10, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !11, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !12, i64 96, !10, i64 160, !13, i64 168, !3, i64 176, !3, i64 180, !3, i64 184, !3, i64 188, !3, i64 192}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"CallInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32, !4, i64 56, !11, i64 60, !11, i64 62}
!13 = !{!"long", !4, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"global_State", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !16, i64 48, !17, i64 64, !17, i64 80, !3, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !10, i64 1392, !10, i64 1400}
!16 = !{!"stringtable", !10, i64 0, !3, i64 8, !3, i64 12}
!17 = !{!"TValue", !4, i64 0, !4, i64 8}
!18 = !{!15, !10, i64 8}
!19 = !{!15, !13, i64 24}
!20 = !{!15, !4, i64 88}
