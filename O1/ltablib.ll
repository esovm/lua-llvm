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

; Function Attrs: nounwind uwtable
define i32 @luaopen_table(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #5
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0), i32 0) #5
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @tconcat(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #5
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 5)
  %5 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #5
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %3) #5
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #5
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %5) #5
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #5
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %12
  %13 = phi i64 [ %15, %12 ], [ %8, %11 ]
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %13)
  %14 = load i64, i64* %3, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %7, i64 %14) #5
  %15 = add nsw i64 %13, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %19, label %12

; <label>:17:                                     ; preds = %1
  %18 = icmp eq i64 %8, %9
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %12, %17
  %20 = phi i64 [ %8, %17 ], [ %9, %12 ]
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i64 %20)
  br label %21

; <label>:21:                                     ; preds = %19, %17
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tinsert(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #5
  %3 = add nsw i64 %2, 1
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  switch i32 %4, label %19 [
    i32 2, label %21
    i32 3, label %5
  ]

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5
  %7 = add i64 %6, -1
  %8 = icmp ult i64 %7, %3
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %11

; <label>:11:                                     ; preds = %9, %5
  %12 = icmp slt i64 %2, %6
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %11
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %16, %14 ], [ %3, %13 ]
  %16 = add nsw i64 %15, -1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #5
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %15) #5
  %18 = icmp sgt i64 %16, %6
  br i1 %18, label %14, label %21

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %23

; <label>:21:                                     ; preds = %14, %11, %1
  %22 = phi i64 [ %3, %1 ], [ %6, %11 ], [ %6, %14 ]
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %22) #5
  br label %23

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ 0, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @tpack(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 %2, i32 1) #5
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %10

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64
  br label %6

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %8, %6 ]
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %7) #5
  %8 = add nsw i64 %7, -1
  %9 = icmp sgt i64 %7, 1
  br i1 %9, label %6, label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = sext i32 %2 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tunpack(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #5
  br label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #5
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
  %18 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %15, %12
  %21 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %32

; <label>:22:                                     ; preds = %15
  %23 = icmp sgt i64 %10, %2
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %22
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i64 [ %28, %25 ], [ %2, %24 ]
  %27 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %26) #5
  %28 = add nsw i64 %26, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %25

; <label>:30:                                     ; preds = %25, %22
  %31 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %10) #5
  br label %32

; <label>:32:                                     ; preds = %9, %30, %20
  %33 = phi i32 [ %21, %20 ], [ %17, %30 ], [ 0, %9 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @tremove(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #5
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 %2) #5
  %4 = icmp ne i64 %3, %2
  %5 = add i64 %3, -1
  %6 = icmp ugt i64 %5, %2
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %10

; <label>:10:                                     ; preds = %1, %8
  %11 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %3) #5
  %12 = icmp slt i64 %3, %2
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %16, %14 ], [ %3, %13 ]
  %16 = add nsw i64 %15, 1
  %17 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %16) #5
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %15) #5
  %18 = icmp eq i64 %16, %2
  br i1 %18, label %19, label %14

; <label>:19:                                     ; preds = %14, %10
  %20 = phi i64 [ %3, %10 ], [ %2, %14 ]
  tail call void @lua_pushnil(%struct.lua_State* %0) #5
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %20) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tmove(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #5
  %4 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #5
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 5) #5
  %6 = icmp sgt i32 %5, 0
  %7 = select i1 %6, i32 5, i32 1
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 1)
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 %7, i32 2)
  %8 = icmp slt i64 %3, %2
  br i1 %8, label %52, label %9

; <label>:9:                                      ; preds = %1
  %10 = icmp sgt i64 %2, 0
  %11 = add nsw i64 %2, 9223372036854775807
  %12 = icmp slt i64 %3, %11
  %13 = or i1 %10, %12
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %16

; <label>:16:                                     ; preds = %14, %9
  %17 = sub nsw i64 %3, %2
  %18 = sub i64 9223372036854775807, %17
  %19 = icmp sgt i64 %4, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #5
  br label %22

; <label>:22:                                     ; preds = %16, %20
  %23 = icmp sle i64 %4, %3
  %24 = icmp sgt i64 %4, %2
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %22
  br i1 %6, label %27, label %42

; <label>:27:                                     ; preds = %26
  %28 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 1, i32 %7, i32 0) #5
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
  %38 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %37) #5
  %39 = add nsw i64 %36, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %39) #5
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
  %48 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %47) #5
  %49 = add nsw i64 %46, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %49) #5
  %50 = add nsw i64 %46, -1
  %51 = icmp sgt i64 %46, 0
  br i1 %51, label %45, label %52

; <label>:52:                                     ; preds = %45, %35, %42, %30, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @sort(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #5
  %3 = icmp sgt i64 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %1
  %5 = icmp slt i64 %2, 2147483647
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #5
  br label %8

; <label>:8:                                      ; preds = %6, %4
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %8
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #5
  br label %12

; <label>:12:                                     ; preds = %11, %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5
  %13 = trunc i64 %2 to i32
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %13, i32 0)
  br label %14

; <label>:14:                                     ; preds = %12, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @checktab(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %35, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

; <label>:9:                                      ; preds = %6
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %9
  %13 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

; <label>:15:                                     ; preds = %12, %9
  %16 = phi i32 [ 2, %12 ], [ 1, %9 ]
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = add nuw nsw i32 %16, 1
  %21 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %19, %15
  %24 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = add nsw i32 %24, 1
  %29 = tail call fastcc i32 @checkfield(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = phi i32 [ %28, %27 ], [ %24, %23 ]
  %33 = xor i32 %32, -1
  tail call void @lua_settop(%struct.lua_State* %0, i32 %33) #5
  br label %35

; <label>:34:                                     ; preds = %12, %19, %27, %6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %1, i32 5) #5
  br label %35

; <label>:35:                                     ; preds = %31, %34, %3
  ret void
}

declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addfield(%struct.lua_State*, %struct.luaL_Buffer*, i64) unnamed_addr #0 {
  %4 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %2) #5
  %5 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %9, i64 %2) #5
  br label %11

; <label>:11:                                     ; preds = %3, %7
  tail call void @luaL_addvalue(%struct.luaL_Buffer* %1) #5
  ret void
}

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @checkfield(%struct.lua_State*, i8*, i32) unnamed_addr #0 {
  %4 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #5
  %5 = sub nsw i32 0, %2
  %6 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 %5) #5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_seti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32, i32) unnamed_addr #0 {
  %5 = icmp ugt i32 %2, %1
  br i1 %5, label %6, label %74

; <label>:6:                                      ; preds = %4
  br label %7

; <label>:7:                                      ; preds = %6, %71
  %8 = phi i32 [ %72, %71 ], [ %3, %6 ]
  %9 = phi i32 [ %64, %71 ], [ %2, %6 ]
  %10 = phi i32 [ %63, %71 ], [ %1, %6 ]
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %11) #5
  %13 = zext i32 %9 to i64
  %14 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %13) #5
  %15 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %7
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %10, i32 %9)
  br label %19

; <label>:18:                                     ; preds = %7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = sub i32 %9, %10
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %74, label %22

; <label>:22:                                     ; preds = %19
  %23 = icmp ult i32 %20, 100
  %24 = icmp eq i32 %8, 0
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %22
  %27 = add i32 %9, %10
  %28 = lshr i32 %27, 1
  br label %31

; <label>:29:                                     ; preds = %22
  %30 = tail call fastcc i32 @choosePivot(i32 %10, i32 %9, i32 %8)
  br label %31

; <label>:31:                                     ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  %33 = zext i32 %32 to i64
  %34 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %33) #5
  %35 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %11) #5
  %36 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %31
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %32, i32 %10)
  br label %45

; <label>:39:                                     ; preds = %31
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5
  %40 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %13) #5
  %41 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %39
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %32, i32 %9)
  br label %45

; <label>:44:                                     ; preds = %39
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5
  br label %45

; <label>:45:                                     ; preds = %43, %44, %38
  %46 = icmp eq i32 %20, 2
  br i1 %46, label %74, label %47

; <label>:47:                                     ; preds = %45
  %48 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %33) #5
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5
  %49 = add i32 %9, -1
  %50 = zext i32 %49 to i64
  %51 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %50) #5
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %32, i32 %49)
  %52 = tail call fastcc i32 @partition(%struct.lua_State* %0, i32 %10, i32 %9)
  %53 = sub i32 %52, %10
  %54 = sub i32 %9, %52
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %47
  %57 = add i32 %52, -1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %10, i32 %57, i32 %8)
  %58 = add i32 %52, 1
  br label %62

; <label>:59:                                     ; preds = %47
  %60 = add i32 %52, 1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %60, i32 %9, i32 %8)
  %61 = add i32 %52, -1
  br label %62

; <label>:62:                                     ; preds = %59, %56
  %63 = phi i32 [ %58, %56 ], [ %10, %59 ]
  %64 = phi i32 [ %9, %56 ], [ %61, %59 ]
  %65 = phi i32 [ %53, %56 ], [ %54, %59 ]
  %66 = sub i32 %64, %63
  %67 = lshr i32 %66, 7
  %68 = icmp ugt i32 %67, %65
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %62
  %70 = tail call fastcc i32 @l_randomizePivot()
  br label %71

; <label>:71:                                     ; preds = %69, %62
  %72 = phi i32 [ %8, %62 ], [ %70, %69 ]
  %73 = icmp ugt i32 %64, %63
  br i1 %73, label %7, label %74

; <label>:74:                                     ; preds = %71, %45, %19, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_comp(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %1, i32 %2, i32 1) #5
  br label %12

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #5
  %9 = add nsw i32 %1, -1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #5
  %10 = add nsw i32 %2, -2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %10) #5
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #5
  %11 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #5
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5
  br label %12

; <label>:12:                                     ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set2(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %4) #5
  %5 = zext i32 %2 to i64
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %5) #5
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @choosePivot(i32, i32, i32) unnamed_addr #3 {
  %4 = sub i32 %1, %0
  %5 = lshr i32 %4, 2
  %6 = shl nuw nsw i32 %5, 1
  %7 = urem i32 %2, %6
  %8 = add i32 %5, %0
  %9 = add i32 %8, %7
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @partition(%struct.lua_State*, i32, i32) unnamed_addr #0 {
  %4 = add i32 %2, -1
  br label %5

; <label>:5:                                      ; preds = %50, %3
  %6 = phi i32 [ %1, %3 ], [ %26, %50 ]
  %7 = phi i32 [ %4, %3 ], [ %47, %50 ]
  %8 = add i32 %6, 1
  %9 = zext i32 %8 to i64
  %10 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %9) #5
  %11 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %19
  %15 = phi i32 [ %20, %19 ], [ %8, %13 ]
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %19

; <label>:19:                                     ; preds = %17, %14
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5
  %20 = add i32 %15, 1
  %21 = zext i32 %20 to i64
  %22 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %21) #5
  %23 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14

; <label>:25:                                     ; preds = %19, %5
  %26 = phi i32 [ %8, %5 ], [ %20, %19 ]
  %27 = add i32 %7, -1
  %28 = zext i32 %27 to i64
  %29 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %28) #5
  %30 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1)
  %31 = icmp eq i32 %30, 0
  %32 = icmp ult i32 %27, %26
  br i1 %31, label %46, label %33

; <label>:33:                                     ; preds = %25
  br label %34

; <label>:34:                                     ; preds = %33, %39
  %35 = phi i1 [ %45, %39 ], [ %32, %33 ]
  %36 = phi i32 [ %40, %39 ], [ %27, %33 ]
  br i1 %35, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %39

; <label>:39:                                     ; preds = %37, %34
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5
  %40 = add i32 %36, -1
  %41 = zext i32 %40 to i64
  %42 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %41) #5
  %43 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1)
  %44 = icmp eq i32 %43, 0
  %45 = icmp ult i32 %40, %26
  br i1 %44, label %46, label %34

; <label>:46:                                     ; preds = %39, %25
  %47 = phi i32 [ %27, %25 ], [ %40, %39 ]
  %48 = phi i1 [ %32, %25 ], [ %45, %39 ]
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %4, i32 %26)
  ret i32 %26

; <label>:50:                                     ; preds = %46
  tail call fastcc void @set2(%struct.lua_State* %0, i32 %26, i32 %47)
  br label %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @l_randomizePivot() unnamed_addr #0 {
  %1 = alloca [4 x i32], align 16
  %2 = tail call i64 @clock() #5
  %3 = tail call i64 @time(i64* null) #5
  %4 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5
  %5 = bitcast [4 x i32]* %1 to i64*
  store i64 %2, i64* %5, align 16
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %7 = bitcast i32* %6 to i64*
  store i64 %3, i64* %7, align 8
  br label %8

; <label>:8:                                      ; preds = %8, %0
  %9 = phi i64 [ 0, %0 ], [ %14, %8 ]
  %10 = phi i32 [ 0, %0 ], [ %13, %8 ]
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %9
  %12 = load i32, i32* %11, align 4, !tbaa !6
  %13 = add i32 %12, %10
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %8

; <label>:16:                                     ; preds = %8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5
  ret i32 %13
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

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
