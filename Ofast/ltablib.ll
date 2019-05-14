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
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #4
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #4
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0), i32 0) #4
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
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #4
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 5)
  %5 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #4
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  %7 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %3) #4
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %5) #4
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %21
  %13 = phi i64 [ %23, %21 ], [ %8, %11 ]
  %14 = call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %13) #4
  %15 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4
  %19 = call i8* @lua_typename(%struct.lua_State* %0, i32 %18) #4
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %19, i64 %13) #4
  br label %21

; <label>:21:                                     ; preds = %12, %17
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4
  %22 = load i64, i64* %3, align 8, !tbaa !2
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %7, i64 %22) #4
  %23 = add nsw i64 %13, 1
  %24 = icmp eq i64 %23, %9
  br i1 %24, label %27, label %12

; <label>:25:                                     ; preds = %1
  %26 = icmp eq i64 %8, %9
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %21, %25
  %28 = call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %9) #4
  %29 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %27
  %32 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4
  %33 = call i8* @lua_typename(%struct.lua_State* %0, i32 %32) #4
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %33, i64 %9) #4
  br label %35

; <label>:35:                                     ; preds = %27, %31
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4
  br label %36

; <label>:36:                                     ; preds = %35, %25
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tinsert(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal i32 @tremove(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
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

; Function Attrs: nounwind uwtable
define internal i32 @tmove(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #4
  %4 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #4
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 5) #4
  %6 = icmp sgt i32 %5, 0
  %7 = select i1 %6, i32 5, i32 1
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %19, label %10

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #4
  %15 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %13
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %19

; <label>:18:                                     ; preds = %13, %10
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4
  br label %19

; <label>:19:                                     ; preds = %1, %17, %18
  %20 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %7) #4
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %31, label %22

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %7) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #4
  %27 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 -2) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %25
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %31

; <label>:30:                                     ; preds = %25, %22
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %7, i32 5) #4
  br label %31

; <label>:31:                                     ; preds = %19, %29, %30
  %32 = icmp slt i64 %3, %2
  br i1 %32, label %76, label %33

; <label>:33:                                     ; preds = %31
  %34 = icmp sgt i64 %2, 0
  %35 = add nsw i64 %2, 9223372036854775807
  %36 = icmp slt i64 %3, %35
  %37 = or i1 %34, %36
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %33
  %39 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #4
  br label %40

; <label>:40:                                     ; preds = %38, %33
  %41 = sub nsw i64 %3, %2
  %42 = sub i64 9223372036854775807, %41
  %43 = icmp sgt i64 %4, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %40
  %45 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %46

; <label>:46:                                     ; preds = %40, %44
  %47 = icmp sle i64 %4, %3
  %48 = icmp sgt i64 %4, %2
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %46
  br i1 %6, label %51, label %66

; <label>:51:                                     ; preds = %50
  %52 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 1, i32 %7, i32 0) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

; <label>:54:                                     ; preds = %46, %51
  %55 = icmp slt i64 %41, 0
  br i1 %55, label %76, label %56

; <label>:56:                                     ; preds = %54
  %57 = add i64 %3, 1
  %58 = sub i64 %57, %2
  br label %59

; <label>:59:                                     ; preds = %59, %56
  %60 = phi i64 [ 0, %56 ], [ %64, %59 ]
  %61 = add nsw i64 %60, %2
  %62 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %61) #4
  %63 = add nsw i64 %60, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %63) #4
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, %58
  br i1 %65, label %76, label %59

; <label>:66:                                     ; preds = %51, %50
  %67 = icmp sgt i64 %41, -1
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %66
  br label %69

; <label>:69:                                     ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ %41, %68 ]
  %71 = add nsw i64 %70, %2
  %72 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %71) #4
  %73 = add nsw i64 %70, %4
  tail call void @lua_seti(%struct.lua_State* %0, i32 %7, i64 %73) #4
  %74 = add nsw i64 %70, -1
  %75 = icmp sgt i64 %70, 0
  br i1 %75, label %69, label %76

; <label>:76:                                     ; preds = %69, %59, %66, %54, %31
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @sort(%struct.lua_State*) #0 {
  tail call fastcc void @checktab(%struct.lua_State* %0, i32 1, i32 7)
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
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %13, i32 0)
  br label %14

; <label>:14:                                     ; preds = %12, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
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

declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

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
  br i1 %5, label %6, label %139

; <label>:6:                                      ; preds = %4
  br label %7

; <label>:7:                                      ; preds = %6, %136
  %8 = phi i32 [ %137, %136 ], [ %3, %6 ]
  %9 = phi i32 [ %119, %136 ], [ %2, %6 ]
  %10 = phi i32 [ %118, %136 ], [ %1, %6 ]
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %11) #4
  %13 = zext i32 %9 to i64
  %14 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %13) #4
  %15 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %7
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %11) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %13) #4
  br label %19

; <label>:18:                                     ; preds = %7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = sub i32 %9, %10
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %139, label %22

; <label>:22:                                     ; preds = %19
  %23 = icmp ult i32 %20, 100
  %24 = icmp eq i32 %8, 0
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %22
  %27 = add i32 %9, %10
  %28 = lshr i32 %27, 1
  br label %35

; <label>:29:                                     ; preds = %22
  %30 = lshr i32 %20, 2
  %31 = shl nuw nsw i32 %30, 1
  %32 = urem i32 %8, %31
  %33 = add i32 %30, %10
  %34 = add i32 %33, %32
  br label %35

; <label>:35:                                     ; preds = %29, %26
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = zext i32 %36 to i64
  %38 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %37) #4
  %39 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %11) #4
  %40 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %35
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %37) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %11) #4
  br label %49

; <label>:43:                                     ; preds = %35
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %44 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %13) #4
  %45 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

; <label>:47:                                     ; preds = %43
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %37) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %13) #4
  br label %49

; <label>:48:                                     ; preds = %43
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4
  br label %49

; <label>:49:                                     ; preds = %47, %48, %42
  %50 = icmp eq i32 %20, 2
  br i1 %50, label %139, label %51

; <label>:51:                                     ; preds = %49
  %52 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %37) #4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4
  %53 = add i32 %9, -1
  %54 = zext i32 %53 to i64
  %55 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %54) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %37) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %54) #4
  br label %56

; <label>:56:                                     ; preds = %106, %51
  %57 = phi i32 [ %10, %51 ], [ %79, %106 ]
  %58 = phi i32 [ %53, %51 ], [ %103, %106 ]
  %59 = add i32 %57, 1
  %60 = zext i32 %59 to i64
  %61 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %60) #4
  %62 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

; <label>:64:                                     ; preds = %56
  br label %65

; <label>:65:                                     ; preds = %64, %70
  %66 = phi i32 [ %71, %70 ], [ %59, %64 ]
  %67 = icmp eq i32 %66, %53
  br i1 %67, label %68, label %70

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %70

; <label>:70:                                     ; preds = %68, %65
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %71 = add i32 %66, 1
  %72 = zext i32 %71 to i64
  %73 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %72) #4
  %74 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %65

; <label>:76:                                     ; preds = %70
  %77 = zext i32 %71 to i64
  br label %78

; <label>:78:                                     ; preds = %76, %56
  %79 = phi i32 [ %59, %56 ], [ %71, %76 ]
  %80 = phi i64 [ %60, %56 ], [ %77, %76 ]
  %81 = add i32 %58, -1
  %82 = zext i32 %81 to i64
  %83 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %82) #4
  %84 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #4
  %85 = icmp eq i32 %84, 0
  %86 = icmp ult i32 %81, %79
  br i1 %85, label %102, label %87

; <label>:87:                                     ; preds = %78
  br label %88

; <label>:88:                                     ; preds = %87, %93
  %89 = phi i1 [ %99, %93 ], [ %86, %87 ]
  %90 = phi i32 [ %94, %93 ], [ %81, %87 ]
  br i1 %89, label %91, label %93

; <label>:91:                                     ; preds = %88
  %92 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %93

; <label>:93:                                     ; preds = %91, %88
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  %94 = add i32 %90, -1
  %95 = zext i32 %94 to i64
  %96 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %95) #4
  %97 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #4
  %98 = icmp eq i32 %97, 0
  %99 = icmp ult i32 %94, %79
  br i1 %98, label %100, label %88

; <label>:100:                                    ; preds = %93
  %101 = zext i32 %94 to i64
  br label %102

; <label>:102:                                    ; preds = %100, %78
  %103 = phi i32 [ %81, %78 ], [ %94, %100 ]
  %104 = phi i64 [ %82, %78 ], [ %101, %100 ]
  %105 = phi i1 [ %86, %78 ], [ %99, %100 ]
  br i1 %105, label %107, label %106

; <label>:106:                                    ; preds = %102
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %80) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %104) #4
  br label %56

; <label>:107:                                    ; preds = %102
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %54) #4
  tail call void @lua_seti(%struct.lua_State* %0, i32 1, i64 %80) #4
  %108 = sub i32 %79, %10
  %109 = sub i32 %9, %79
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %114

; <label>:111:                                    ; preds = %107
  %112 = add i32 %79, -1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %10, i32 %112, i32 %8)
  %113 = add i32 %79, 1
  br label %117

; <label>:114:                                    ; preds = %107
  %115 = add i32 %79, 1
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %115, i32 %9, i32 %8)
  %116 = add i32 %79, -1
  br label %117

; <label>:117:                                    ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %10, %114 ]
  %119 = phi i32 [ %9, %111 ], [ %116, %114 ]
  %120 = phi i32 [ %108, %111 ], [ %109, %114 ]
  %121 = sub i32 %119, %118
  %122 = lshr i32 %121, 7
  %123 = icmp ugt i32 %122, %120
  br i1 %123, label %124, label %136

; <label>:124:                                    ; preds = %117
  %125 = tail call i64 @clock() #4
  %126 = tail call i64 @time(i64* null) #4
  %127 = trunc i64 %125 to i32
  %128 = lshr i64 %125, 32
  %129 = trunc i64 %128 to i32
  %130 = add i32 %129, %127
  %131 = trunc i64 %126 to i32
  %132 = add i32 %130, %131
  %133 = lshr i64 %126, 32
  %134 = trunc i64 %133 to i32
  %135 = add i32 %132, %134
  br label %136

; <label>:136:                                    ; preds = %124, %117
  %137 = phi i32 [ %8, %117 ], [ %135, %124 ]
  %138 = icmp ugt i32 %119, %118
  br i1 %138, label %7, label %139

; <label>:139:                                    ; preds = %136, %49, %19, %4
  ret void
}

; Function Attrs: nounwind uwtable
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

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
