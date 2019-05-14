; ModuleID = 'ltablib.c'
source_filename = "ltablib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }

@tab_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @tpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @tunpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @tmove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"position out of bounds\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"too many elements to move\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"destination wrap around\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"array too big\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @luaopen_table(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #4
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0), i32 0) #4
  ret i32 1
}

; Function Attrs: optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @tconcat(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #5
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 5) #6
  %5 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %3) #4
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %5) #4
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %12
  %13 = phi i64 [ %15, %12 ], [ %8, %11 ]
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %13) #6
  %14 = load i64, i64* %3, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %7, i64 %14) #4
  %15 = add nsw i64 %13, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %19, label %12

; <label>:17:                                     ; preds = %1
  %18 = icmp eq i64 %8, %9
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12, %17
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %9) #6
  br label %20

; <label>:20:                                     ; preds = %19, %17
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #5
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @tinsert(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7) #6
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %3 = add nsw i64 %2, 1
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  switch i32 %4, label %19 [
    i32 2, label %21
    i32 3, label %5
  ]

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4
  %7 = add i64 %6, -1
  %8 = icmp ult i64 %7, %3
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %11

; <label>:11:                                     ; preds = %9, %5
  %12 = icmp slt i64 %2, %6
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %11
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %16, %14 ], [ %3, %13 ]
  %16 = add nsw i64 %15, -1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %15) #4
  %18 = icmp sgt i64 %16, %6
  br i1 %18, label %14, label %21

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %23

; <label>:21:                                     ; preds = %14, %11, %1
  %22 = phi i64 [ %3, %1 ], [ %6, %11 ], [ %6, %14 ]
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %22) #4
  br label %23

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ 0, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @tpack(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %2, i32 1) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #4
  %3 = icmp sgt i32 %2, 0
  %4 = sext i32 %2 to i64
  br i1 %3, label %5, label %10

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i64 [ %8, %6 ], [ %4, %5 ]
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %7) #4
  %8 = add nsw i64 %7, -1
  %9 = icmp sgt i64 %7, 1
  br i1 %9, label %6, label %10

; <label>:10:                                     ; preds = %6, %1
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #4
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @tunpack(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #4
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  br label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #4
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi i64 [ %6, %5 ], [ %8, %7 ]
  %11 = icmp slt i64 %10, %2
  br i1 %11, label %32, label %12

; <label>:12:                                     ; preds = %9
  %13 = sub i64 %10, %2
  %14 = icmp ugt i64 %13, 2147483646
  br i1 %14, label %20, label %15

; <label>:15:                                     ; preds = %12
  %16 = trunc i64 %13 to i32
  %17 = add i32 %16, 1
  %18 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %15, %12
  %21 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %32

; <label>:22:                                     ; preds = %15
  %23 = icmp sgt i64 %10, %2
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %22
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i64 [ %28, %25 ], [ %2, %24 ]
  %27 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %26) #4
  %28 = add nsw i64 %26, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %25

; <label>:30:                                     ; preds = %25, %22
  %31 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %10) #4
  br label %32

; <label>:32:                                     ; preds = %9, %30, %20
  %33 = phi i32 [ %21, %20 ], [ %17, %30 ], [ 0, %9 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @tremove(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7) #6
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 %2) #4
  %4 = icmp ne i64 %3, %2
  %5 = add i64 %3, -1
  %6 = icmp ugt i64 %5, %2
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %3) #4
  %12 = icmp slt i64 %3, %2
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %16, %14 ], [ %3, %13 ]
  %16 = add nsw i64 %15, 1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %15) #4
  %18 = icmp eq i64 %16, %2
  br i1 %18, label %19, label %14

; <label>:19:                                     ; preds = %14, %10
  %20 = phi i64 [ %3, %10 ], [ %2, %14 ]
  tail call void @lua_pushnil(%struct.lua_State* %0) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %20) #4
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @tmove(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #4
  %4 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #4
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 5) #4
  %6 = icmp sgt i32 %5, 0
  %7 = select i1 %6, i32 5, i32 1
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 1) #6
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 %7, i32 2) #6
  %8 = icmp slt i64 %3, %2
  br i1 %8, label %52, label %9

; <label>:9:                                      ; preds = %1
  %10 = icmp sgt i64 %2, 0
  %11 = add nsw i64 %2, 9223372036854775807
  %12 = icmp slt i64 %3, %11
  %13 = or i1 %10, %12
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #4
  br label %16

; <label>:16:                                     ; preds = %14, %9
  %17 = sub nsw i64 %3, %2
  %18 = sub i64 9223372036854775807, %17
  %19 = icmp sgt i64 %4, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %22

; <label>:22:                                     ; preds = %16, %20
  %23 = icmp sle i64 %4, %3
  %24 = icmp sgt i64 %4, %2
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %22
  br i1 %6, label %27, label %42

; <label>:27:                                     ; preds = %26
  %28 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 1, i32 %7, i32 0) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %22, %27
  %31 = icmp slt i64 %17, 0
  br i1 %31, label %52, label %32

; <label>:32:                                     ; preds = %30
  %33 = add i64 %3, 1
  %34 = sub i64 %33, %2
  br label %35

; <label>:35:                                     ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = add nsw i64 %36, %2
  %38 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %37) #4
  %39 = add nsw i64 %36, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %39) #4
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, %34
  br i1 %41, label %52, label %35

; <label>:42:                                     ; preds = %27, %26
  %43 = icmp sgt i64 %17, -1
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %42
  br label %45

; <label>:45:                                     ; preds = %44, %45
  %46 = phi i64 [ %50, %45 ], [ %17, %44 ]
  %47 = add nsw i64 %46, %2
  %48 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %47) #4
  %49 = add nsw i64 %46, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %49) #4
  %50 = add nsw i64 %46, -1
  %51 = icmp sgt i64 %46, 0
  br i1 %51, label %45, label %52

; <label>:52:                                     ; preds = %45, %35, %42, %30, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @sort(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7) #6
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %3 = icmp sgt i64 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %1
  %5 = icmp slt i64 %2, 2147483647
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %8

; <label>:8:                                      ; preds = %6, %4
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %8
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4
  br label %12

; <label>:12:                                     ; preds = %11, %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4
  %13 = trunc i64 %2 to i32
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %13, i32 0) #6
  br label %14

; <label>:14:                                     ; preds = %12, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @checktab(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %40, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

; <label>:9:                                      ; preds = %6
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #4
  %14 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi i32 [ 2, %12 ], [ 1, %9 ]
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %16
  %21 = add nuw nsw i32 %17, 1
  %22 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #4
  %23 = xor i32 %17, -1
  %24 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

; <label>:26:                                     ; preds = %20, %16
  %27 = phi i32 [ %21, %20 ], [ %17, %16 ]
  %28 = and i32 %2, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %26
  %31 = add nsw i32 %27, 1
  %32 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #4
  %33 = xor i32 %27, -1
  %34 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 %33) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %30, %26
  %37 = phi i32 [ %31, %30 ], [ %27, %26 ]
  %38 = xor i32 %37, -1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %38) #4
  br label %40

; <label>:39:                                     ; preds = %12, %20, %30, %6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %1, i32 5) #4
  br label %40

; <label>:40:                                     ; preds = %36, %39, %3
  ret void
}

; Function Attrs: optsize
declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addfield(%struct.lua_State*, %struct.luaL_Buffer*, i64) unnamed_addr #0 {
  %4 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %2) #4
  %5 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #4
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %9, i64 %2) #4
  br label %11

; <label>:11:                                     ; preds = %3, %7
  tail call void @luaL_addvalue(%struct.luaL_Buffer* %1) #4
  ret void
}

; Function Attrs: optsize
declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_seti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32, i32) unnamed_addr #0 {
  %5 = alloca [4 x i32], align 16
  %6 = icmp ugt i32 %2, %1
  br i1 %6, label %7, label %150

; <label>:7:                                      ; preds = %4
  %8 = bitcast [4 x i32]* %5 to i8*
  %9 = bitcast [4 x i32]* %5 to i64*
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %11 = bitcast i32* %10 to i64*
  br label %12

; <label>:12:                                     ; preds = %7, %147
  %13 = phi i32 [ %3, %7 ], [ %148, %147 ]
  %14 = phi i32 [ %2, %7 ], [ %124, %147 ]
  %15 = phi i32 [ %1, %7 ], [ %123, %147 ]
  %16 = zext i32 %15 to i64
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  %18 = zext i32 %14 to i64
  %19 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %18) #4
  %20 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %12
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %16) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %18) #4
  br label %24

; <label>:23:                                     ; preds = %12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %24

; <label>:24:                                     ; preds = %23, %22
  %25 = sub i32 %14, %15
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %150, label %27

; <label>:27:                                     ; preds = %24
  %28 = icmp ult i32 %25, 100
  %29 = icmp eq i32 %13, 0
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %27
  %32 = add i32 %14, %15
  %33 = lshr i32 %32, 1
  br label %40

; <label>:34:                                     ; preds = %27
  %35 = lshr i32 %25, 2
  %36 = shl nuw nsw i32 %35, 1
  %37 = urem i32 %13, %36
  %38 = add i32 %35, %15
  %39 = add i32 %38, %37
  br label %40

; <label>:40:                                     ; preds = %34, %31
  %41 = phi i32 [ %33, %31 ], [ %39, %34 ]
  %42 = zext i32 %41 to i64
  %43 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %42) #4
  %44 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  %45 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

; <label>:47:                                     ; preds = %40
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %42) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %16) #4
  br label %54

; <label>:48:                                     ; preds = %40
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %49 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %18) #4
  %50 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %48
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %42) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %18) #4
  br label %54

; <label>:53:                                     ; preds = %48
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %54

; <label>:54:                                     ; preds = %52, %53, %47
  %55 = icmp eq i32 %25, 2
  br i1 %55, label %150, label %56

; <label>:56:                                     ; preds = %54
  %57 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %42) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  %58 = add i32 %14, -1
  %59 = zext i32 %58 to i64
  %60 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %59) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %42) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %59) #4
  br label %61

; <label>:61:                                     ; preds = %111, %56
  %62 = phi i32 [ %15, %56 ], [ %84, %111 ]
  %63 = phi i32 [ %58, %56 ], [ %108, %111 ]
  %64 = add i32 %62, 1
  %65 = zext i32 %64 to i64
  %66 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %65) #4
  %67 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

; <label>:69:                                     ; preds = %61
  br label %70

; <label>:70:                                     ; preds = %69, %75
  %71 = phi i32 [ %76, %75 ], [ %64, %69 ]
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %70
  %74 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %75

; <label>:75:                                     ; preds = %73, %70
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %76 = add i32 %71, 1
  %77 = zext i32 %76 to i64
  %78 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %77) #4
  %79 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %70

; <label>:81:                                     ; preds = %75
  %82 = zext i32 %76 to i64
  br label %83

; <label>:83:                                     ; preds = %81, %61
  %84 = phi i32 [ %64, %61 ], [ %76, %81 ]
  %85 = phi i64 [ %65, %61 ], [ %82, %81 ]
  %86 = add i32 %63, -1
  %87 = zext i32 %86 to i64
  %88 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %87) #4
  %89 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #4
  %90 = icmp eq i32 %89, 0
  %91 = icmp ult i32 %86, %84
  br i1 %90, label %107, label %92

; <label>:92:                                     ; preds = %83
  br label %93

; <label>:93:                                     ; preds = %92, %98
  %94 = phi i1 [ %104, %98 ], [ %91, %92 ]
  %95 = phi i32 [ %99, %98 ], [ %86, %92 ]
  br i1 %94, label %96, label %98

; <label>:96:                                     ; preds = %93
  %97 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %98

; <label>:98:                                     ; preds = %96, %93
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %99 = add i32 %95, -1
  %100 = zext i32 %99 to i64
  %101 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %100) #4
  %102 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #4
  %103 = icmp eq i32 %102, 0
  %104 = icmp ult i32 %99, %84
  br i1 %103, label %105, label %93

; <label>:105:                                    ; preds = %98
  %106 = zext i32 %99 to i64
  br label %107

; <label>:107:                                    ; preds = %105, %83
  %108 = phi i32 [ %86, %83 ], [ %99, %105 ]
  %109 = phi i64 [ %87, %83 ], [ %106, %105 ]
  %110 = phi i1 [ %91, %83 ], [ %104, %105 ]
  br i1 %110, label %112, label %111

; <label>:111:                                    ; preds = %107
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %85) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %109) #4
  br label %61

; <label>:112:                                    ; preds = %107
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %59) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %85) #4
  %113 = sub i32 %84, %15
  %114 = sub i32 %14, %84
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %112
  %117 = add i32 %84, -1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %15, i32 %117, i32 %13) #6
  %118 = add i32 %84, 1
  br label %122

; <label>:119:                                    ; preds = %112
  %120 = add i32 %84, 1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %120, i32 %14, i32 %13) #6
  %121 = add i32 %84, -1
  br label %122

; <label>:122:                                    ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %15, %119 ]
  %124 = phi i32 [ %14, %116 ], [ %121, %119 ]
  %125 = phi i32 [ %113, %116 ], [ %114, %119 ]
  %126 = sub i32 %124, %123
  %127 = lshr i32 %126, 7
  %128 = icmp ugt i32 %127, %125
  br i1 %128, label %129, label %147

; <label>:129:                                    ; preds = %122
  %130 = tail call i64 @clock() #4
  %131 = tail call i64 @time(i64* null) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5
  store i64 %130, i64* %9, align 16
  store i64 %131, i64* %11, align 8
  br label %132

; <label>:132:                                    ; preds = %132, %129
  %133 = phi i64 [ 0, %129 ], [ %139, %132 ]
  %134 = phi <4 x i32> [ zeroinitializer, %129 ], [ %138, %132 ]
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %133
  %136 = bitcast i32* %135 to <4 x i32>*
  %137 = load <4 x i32>, <4 x i32>* %136, align 16, !tbaa !6
  %138 = add <4 x i32> %137, %134
  %139 = add i64 %133, 4
  %140 = icmp eq i64 %133, 0
  br i1 %140, label %141, label %132, !llvm.loop !8

; <label>:141:                                    ; preds = %132
  %142 = shufflevector <4 x i32> %138, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %143 = add <4 x i32> %138, %142
  %144 = shufflevector <4 x i32> %143, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %145 = add <4 x i32> %143, %144
  %146 = extractelement <4 x i32> %145, i32 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5
  br label %147

; <label>:147:                                    ; preds = %141, %122
  %148 = phi i32 [ %13, %122 ], [ %146, %141 ]
  %149 = icmp ugt i32 %124, %123
  br i1 %149, label %12, label %150

; <label>:150:                                    ; preds = %147, %54, %24, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @sort_comp(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %1, i32 %2, i32 1) #4
  br label %12

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4
  %9 = add nsw i32 %1, -1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #4
  %10 = add nsw i32 %2, -2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %10) #4
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #4
  %11 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %12

; <label>:12:                                     ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i64 @time(i64*) local_unnamed_addr #3

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
