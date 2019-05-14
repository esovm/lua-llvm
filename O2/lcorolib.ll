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
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #3
  %3 = icmp eq %struct.lua_State* %2, null
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #3
  %8 = add nsw i32 %7, -1
  %9 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %8)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #3
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #3
  br label %15

; <label>:12:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #3
  %13 = add nsw i32 %9, 1
  %14 = xor i32 %9, -1
  tail call void @lua_rotate(%struct.lua_State* %0, i32 %14, i32 1) #3
  br label %15

; <label>:15:                                     ; preds = %12, %11
  %16 = phi i32 [ 2, %11 ], [ %13, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_corunning(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #3
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_costatus(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #3
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %7

; <label>:7:                                      ; preds = %1, %5
  %8 = icmp eq %struct.lua_State* %3, %0
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %7
  %10 = tail call i32 @lua_status(%struct.lua_State* %3) #3
  switch i32 %10, label %21 [
    i32 1, label %22
    i32 0, label %11
  ]

; <label>:11:                                     ; preds = %9
  %12 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %12) #3
  %13 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* nonnull %2) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %11
  %16 = call i32 @lua_gettop(%struct.lua_State* %3) #3
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i64 1, i64 2
  br label %19

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i64 [ 3, %11 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %12) #3
  br label %22

; <label>:21:                                     ; preds = %9
  br label %22

; <label>:22:                                     ; preds = %7, %9, %19, %21
  %23 = phi i64 [ 1, %21 ], [ %20, %19 ], [ 0, %7 ], [ 2, %9 ]
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8, !tbaa !2
  %26 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %25) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #3
  %2 = tail call %struct.lua_State* @lua_newthread(%struct.lua_State* %0) #3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #3
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %2, i32 1) #3
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
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #3
  %6 = icmp eq %struct.lua_State* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %9

; <label>:9:                                      ; preds = %7, %4, %1
  %10 = phi %struct.lua_State* [ %0, %1 ], [ %5, %4 ], [ null, %7 ]
  %11 = tail call i32 @lua_isyieldable(%struct.lua_State* %10) #3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %11) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_kill(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #3
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %7

; <label>:7:                                      ; preds = %1, %5
  %8 = icmp eq %struct.lua_State* %3, %0
  br i1 %8, label %28, label %9

; <label>:9:                                      ; preds = %7
  %10 = tail call i32 @lua_status(%struct.lua_State* %3) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.lua_Debug* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %13) #3
  %14 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* nonnull %2) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %13) #3
  br label %28

; <label>:17:                                     ; preds = %12
  %18 = call i32 @lua_gettop(%struct.lua_State* %3) #3
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 2
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %13) #3
  %21 = add nsw i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %9, %17
  %24 = call i32 @lua_resetthread(%struct.lua_State* %3) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #3
  br label %34

; <label>:27:                                     ; preds = %23
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #3
  call void @lua_xmove(%struct.lua_State* %3, %struct.lua_State* %0, i32 1) #3
  br label %34

; <label>:28:                                     ; preds = %7, %16, %17
  %29 = phi i32 [ %20, %17 ], [ 3, %16 ], [ 0, %7 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statname, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8, !tbaa !2
  %33 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %32) #3
  br label %34

; <label>:34:                                     ; preds = %28, %27, %26
  %35 = phi i32 [ 1, %26 ], [ 2, %27 ], [ %33, %28 ]
  ret i32 %35
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
