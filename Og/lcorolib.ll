; ModuleID = 'lcorolib.c'
source_filename = "lcorolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@co_funcs = internal constant [9 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yieldable }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_kill }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"isyieldable\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@statname = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"cannot kill a %s coroutine\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_coroutine(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #3
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 8) #3
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([9 x %struct.luaL_Reg], [9 x %struct.luaL_Reg]* @co_funcs, i64 0, i64 0), i32 0) #3
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_cocreate(%struct.lua_State*) #0 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #3
  %2 = tail call %struct.lua_State* @lua_newthread(%struct.lua_State* %0) #3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #3
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %2, i32 1) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_coresume(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct.lua_State* @getco(%struct.lua_State* %0)
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #3
  %4 = add nsw i32 %3, -1
  %5 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #3
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #3
  br label %11

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #3
  %9 = add nsw i32 %5, 1
  %10 = xor i32 %5, -1
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %10, i32 1) #3
  br label %11

; <label>:11:                                     ; preds = %8, %7
  %12 = phi i32 [ 2, %7 ], [ %9, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_corunning(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #3
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_costatus(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct.lua_State* @getco(%struct.lua_State* %0)
  %3 = tail call fastcc i32 @auxstatus(%struct.lua_State* %0, %struct.lua_State* %2)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8, !tbaa !2
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %6) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 {
  %2 = tail call i32 @luaB_cocreate(%struct.lua_State* %0)
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_auxwrap, i32 1) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_yield(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #3
  %3 = tail call i32 @lua_yieldk(%struct.lua_State* %0, i32 %2, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #3
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_yieldable(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #3
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.lua_State* @getco(%struct.lua_State* %0)
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ]
  %8 = tail call i32 @lua_isyieldable(%struct.lua_State* %7) #3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %8) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_kill(%struct.lua_State*) #0 {
  %2 = tail call fastcc %struct.lua_State* @getco(%struct.lua_State* %0)
  %3 = tail call fastcc i32 @auxstatus(%struct.lua_State* %0, %struct.lua_State* %2)
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_resetthread(%struct.lua_State* %2) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #3
  br label %16

; <label>:10:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #3
  tail call void @lua_xmove(%struct.lua_State* %2, %struct.lua_State* %0, i32 1) #3
  br label %16

; <label>:11:                                     ; preds = %1
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !2
  %15 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %14) #3
  br label %16

; <label>:16:                                     ; preds = %11, %10, %9
  %17 = phi i32 [ 1, %9 ], [ 2, %10 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.lua_State* @getco(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #3
  %3 = icmp eq %struct.lua_State* %2, null
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %6

; <label>:6:                                      ; preds = %1, %4
  ret %struct.lua_State* %2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @auxresume(%struct.lua_State*, %struct.lua_State*, i32) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  %6 = tail call i32 @lua_checkstack(%struct.lua_State* %1, i32 %2) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %33

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @lua_status(%struct.lua_State* %1) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lua_gettop(%struct.lua_State* %1) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13
  %17 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %33

; <label>:18:                                     ; preds = %13, %10
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %1, i32 %2) #3
  %19 = call i32 @lua_resume(%struct.lua_State* %1, %struct.lua_State* %0, i32 %2, i32* nonnull %4) #3
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %4, align 4, !tbaa !6
  %23 = add nsw i32 %22, 1
  %24 = call i32 @lua_checkstack(%struct.lua_State* %0, i32 %23) #3
  %25 = icmp eq i32 %24, 0
  %26 = load i32, i32* %4, align 4, !tbaa !6
  br i1 %25, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = xor i32 %26, -1
  call void @lua_settop(%struct.lua_State* %1, i32 %28) #3
  %29 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %33

; <label>:30:                                     ; preds = %21
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 %26) #3
  %31 = load i32, i32* %4, align 4, !tbaa !6
  br label %33

; <label>:32:                                     ; preds = %18
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 1) #3
  br label %33

; <label>:33:                                     ; preds = %32, %30, %27, %16, %8
  %34 = phi i32 [ -1, %16 ], [ %31, %30 ], [ -1, %27 ], [ -1, %32 ], [ -1, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  ret i32 %34
}

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i32 @lua_status(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_resume(%struct.lua_State*, %struct.lua_State*, i32, i32*) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @auxstatus(%struct.lua_State* readnone, %struct.lua_State*) unnamed_addr #0 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_status(%struct.lua_State* %1) #3
  switch i32 %6, label %17 [
    i32 1, label %18
    i32 0, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = bitcast %struct.lua_Debug* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %8) #3
  %9 = call i32 @lua_getstack(%struct.lua_State* %1, i32 0, %struct.lua_Debug* nonnull %3) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %7
  %12 = call i32 @lua_gettop(%struct.lua_State* %1) #3
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i32 [ 3, %7 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %8) #3
  br label %18

; <label>:17:                                     ; preds = %5
  br label %18

; <label>:18:                                     ; preds = %5, %2, %17, %15
  %19 = phi i32 [ 1, %17 ], [ %16, %15 ], [ 0, %2 ], [ 2, %5 ]
  ret i32 %19
}

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_auxwrap(%struct.lua_State*) #0 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 -1001001) #3
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #3
  %4 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_status(%struct.lua_State* %2) #3
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @lua_resetthread(%struct.lua_State* %2) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  tail call void @lua_xmove(%struct.lua_State* %2, %struct.lua_State* %0, i32 1) #3
  br label %13

; <label>:13:                                     ; preds = %9, %12, %6
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #3
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @luaL_where(%struct.lua_State* %0, i32 1) #3
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #3
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #3
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = tail call i32 @lua_error(%struct.lua_State* %0) #3
  br label %19

; <label>:19:                                     ; preds = %1, %17
  %20 = phi i32 [ %18, %17 ], [ %4, %1 ]
  ret i32 %20
}

declare i32 @lua_resetthread(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_error(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_yieldk(%struct.lua_State*, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_isyieldable(%struct.lua_State*) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
