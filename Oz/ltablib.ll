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

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_table(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #4
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0), i32 0) #4
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
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
  br label %10

; <label>:10:                                     ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %15, %13 ]
  %12 = icmp slt i64 %11, %9
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %11) #6
  %14 = load i64, i64* %3, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %7, i64 %14) #4
  %15 = add nsw i64 %11, 1
  br label %10

; <label>:16:                                     ; preds = %10
  %17 = icmp eq i64 %11, %9
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %16
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %9) #6
  br label %19

; <label>:19:                                     ; preds = %18, %16
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #5
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @tinsert(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7) #6
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %3 = add nsw i64 %2, 1
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  switch i32 %4, label %18 [
    i32 2, label %20
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
  br label %12

; <label>:12:                                     ; preds = %11, %15
  %13 = phi i64 [ %16, %15 ], [ %3, %11 ]
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %12
  %16 = add nsw i64 %13, -1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %13) #4
  br label %12

; <label>:18:                                     ; preds = %1
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %22

; <label>:20:                                     ; preds = %12, %1
  %21 = phi i64 [ %3, %1 ], [ %6, %12 ]
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %21) #4
  br label %22

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @tpack(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %2, i32 1) #4
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #4
  %3 = sext i32 %2 to i64
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ %3, %1 ]
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %5) #4
  %8 = add nsw i64 %5, -1
  br label %4

; <label>:9:                                      ; preds = %4
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %3) #4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #4
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %11, label %31, label %12

; <label>:12:                                     ; preds = %9
  %13 = sub i64 %10, %2
  %14 = icmp ugt i64 %13, 2147483646
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %12
  %16 = trunc i64 %13 to i32
  %17 = add i32 %16, 1
  %18 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  br label %23

; <label>:21:                                     ; preds = %15, %12
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %31

; <label>:23:                                     ; preds = %20, %26
  %24 = phi i64 [ %28, %26 ], [ %2, %20 ]
  %25 = icmp slt i64 %24, %10
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %24) #4
  %28 = add nsw i64 %24, 1
  br label %23

; <label>:29:                                     ; preds = %23
  %30 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %10) #4
  br label %31

; <label>:31:                                     ; preds = %9, %29, %21
  %32 = phi i32 [ %22, %21 ], [ %17, %29 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br label %12

; <label>:12:                                     ; preds = %15, %10
  %13 = phi i64 [ %3, %10 ], [ %16, %15 ]
  %14 = icmp slt i64 %13, %2
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = add nsw i64 %13, 1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %13) #4
  br label %12

; <label>:18:                                     ; preds = %12
  tail call void @lua_pushnil(%struct.lua_State* %0) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %13) #4
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %8, label %48, label %9

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
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %22
  br i1 %6, label %28, label %27

; <label>:27:                                     ; preds = %28, %26
  br label %40

; <label>:28:                                     ; preds = %26
  %29 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 1, i32 %7, i32 0) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

; <label>:31:                                     ; preds = %22, %28
  br label %32

; <label>:32:                                     ; preds = %31, %35
  %33 = phi i64 [ %39, %35 ], [ 0, %31 ]
  %34 = icmp sgt i64 %33, %17
  br i1 %34, label %48, label %35

; <label>:35:                                     ; preds = %32
  %36 = add nsw i64 %33, %2
  %37 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %36) #4
  %38 = add nsw i64 %33, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %38) #4
  %39 = add nuw nsw i64 %33, 1
  br label %32

; <label>:40:                                     ; preds = %27, %43
  %41 = phi i64 [ %47, %43 ], [ %17, %27 ]
  %42 = icmp sgt i64 %41, -1
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %40
  %44 = add nsw i64 %41, %2
  %45 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %44) #4
  %46 = add nsw i64 %41, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %46) #4
  %47 = add nsw i64 %41, -1
  br label %40

; <label>:48:                                     ; preds = %40, %32, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4
  ret i32 1
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checktab(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %35, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

; <label>:9:                                      ; preds = %6
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %9
  %13 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

; <label>:15:                                     ; preds = %12, %9
  %16 = phi i32 [ 2, %12 ], [ 1, %9 ]
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = add nuw nsw i32 %16, 1
  %21 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %19, %15
  %24 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = add nsw i32 %24, 1
  %29 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %28) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = phi i32 [ %28, %27 ], [ %24, %23 ]
  %33 = xor i32 %32, -1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %33) #4
  br label %35

; <label>:34:                                     ; preds = %12, %19, %27, %6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %1, i32 5) #4
  br label %35

; <label>:35:                                     ; preds = %31, %34, %3
  ret void
}

; Function Attrs: minsize optsize
declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @checkfield(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #4
  %5 = sub nsw i32 0, %2
  %6 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 %5) #4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_seti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32, i32) unnamed_addr #0 {
  %5 = alloca [4 x i32], align 16
  %6 = bitcast [4 x i32]* %5 to i8*
  %7 = bitcast [4 x i32]* %5 to i64*
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %9 = bitcast i32* %8 to i64*
  br label %10

; <label>:10:                                     ; preds = %121, %4
  %11 = phi i32 [ %103, %121 ], [ %1, %4 ]
  %12 = phi i32 [ %104, %121 ], [ %2, %4 ]
  %13 = phi i32 [ %114, %121 ], [ %3, %4 ]
  %14 = icmp eq i32 %13, 0
  br label %15

; <label>:15:                                     ; preds = %10, %102
  %16 = phi i32 [ %103, %102 ], [ %11, %10 ]
  %17 = phi i32 [ %104, %102 ], [ %12, %10 ]
  %18 = icmp ugt i32 %17, %16
  br i1 %18, label %19, label %122

; <label>:19:                                     ; preds = %15
  %20 = zext i32 %16 to i64
  %21 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %20) #4
  %22 = zext i32 %17 to i64
  %23 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %22) #4
  %24 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %19
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %16, i32 %17) #6
  br label %28

; <label>:27:                                     ; preds = %19
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %28

; <label>:28:                                     ; preds = %27, %26
  %29 = sub i32 %17, %16
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %122, label %31

; <label>:31:                                     ; preds = %28
  %32 = icmp ult i32 %29, 100
  %33 = or i1 %32, %14
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = add i32 %17, %16
  %36 = lshr i32 %35, 1
  br label %43

; <label>:37:                                     ; preds = %31
  %38 = lshr i32 %29, 2
  %39 = shl nuw nsw i32 %38, 1
  %40 = urem i32 %13, %39
  %41 = add i32 %38, %16
  %42 = add i32 %41, %40
  br label %43

; <label>:43:                                     ; preds = %37, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %37 ]
  %45 = zext i32 %44 to i64
  %46 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %45) #4
  %47 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %20) #4
  %48 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %43
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %44, i32 %16) #6
  br label %57

; <label>:51:                                     ; preds = %43
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %52 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %22) #4
  %53 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

; <label>:55:                                     ; preds = %51
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %44, i32 %17) #6
  br label %57

; <label>:56:                                     ; preds = %51
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %57

; <label>:57:                                     ; preds = %55, %56, %50
  %58 = icmp eq i32 %29, 2
  br i1 %58, label %122, label %59

; <label>:59:                                     ; preds = %57
  %60 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %45) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  %61 = add i32 %17, -1
  %62 = zext i32 %61 to i64
  %63 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %62) #4
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %44, i32 %61) #6
  br label %64

; <label>:64:                                     ; preds = %93, %59
  %65 = phi i32 [ %16, %59 ], [ %69, %93 ]
  %66 = phi i32 [ %61, %59 ], [ %82, %93 ]
  br label %67

; <label>:67:                                     ; preds = %79, %64
  %68 = phi i32 [ %65, %64 ], [ %69, %79 ]
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %70) #4
  %72 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %67
  br label %80

; <label>:75:                                     ; preds = %67
  %76 = icmp eq i32 %69, %61
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %75
  %78 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %79

; <label>:79:                                     ; preds = %77, %75
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %67

; <label>:80:                                     ; preds = %74, %91
  %81 = phi i32 [ %82, %91 ], [ %66, %74 ]
  %82 = add i32 %81, -1
  %83 = zext i32 %82 to i64
  %84 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %83) #4
  %85 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #4
  %86 = icmp eq i32 %85, 0
  %87 = icmp ult i32 %82, %69
  br i1 %86, label %92, label %88

; <label>:88:                                     ; preds = %80
  br i1 %87, label %89, label %91

; <label>:89:                                     ; preds = %88
  %90 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %91

; <label>:91:                                     ; preds = %89, %88
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  br label %80

; <label>:92:                                     ; preds = %80
  br i1 %87, label %94, label %93

; <label>:93:                                     ; preds = %92
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %69, i32 %82) #4
  br label %64

; <label>:94:                                     ; preds = %92
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %61, i32 %69) #4
  %95 = sub i32 %69, %16
  %96 = sub i32 %17, %69
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %94
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %16, i32 %68, i32 %13) #6
  %99 = add i32 %68, 2
  br label %102

; <label>:100:                                    ; preds = %94
  %101 = add i32 %68, 2
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %101, i32 %17, i32 %13) #6
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %16, %100 ]
  %104 = phi i32 [ %17, %98 ], [ %68, %100 ]
  %105 = phi i32 [ %95, %98 ], [ %96, %100 ]
  %106 = sub i32 %104, %103
  %107 = lshr i32 %106, 7
  %108 = icmp ugt i32 %107, %105
  br i1 %108, label %109, label %15

; <label>:109:                                    ; preds = %102
  %110 = tail call i64 @clock() #4
  %111 = tail call i64 @time(i64* null) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5
  store i64 %110, i64* %7, align 16
  store i64 %111, i64* %9, align 8
  br label %112

; <label>:112:                                    ; preds = %116, %109
  %113 = phi i64 [ %120, %116 ], [ 0, %109 ]
  %114 = phi i32 [ %119, %116 ], [ 0, %109 ]
  %115 = icmp eq i64 %113, 4
  br i1 %115, label %121, label %116

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %113
  %118 = load i32, i32* %117, align 4, !tbaa !6
  %119 = add i32 %118, %114
  %120 = add nuw nsw i64 %113, 1
  br label %112

; <label>:121:                                    ; preds = %112
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5
  br label %10

; <label>:122:                                    ; preds = %28, %57, %15
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @set2(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %4) #4
  %5 = zext i32 %2 to i64
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %5) #4
  ret void
}

; Function Attrs: minsize optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare i64 @clock() local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i64 @time(i64*) local_unnamed_addr #3

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { minsize optsize }

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
