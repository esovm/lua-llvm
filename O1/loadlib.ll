; ModuleID = 'loadlib.c'
source_filename = "loadlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@pk_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_searchpath }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.2 = private unnamed_addr constant [151 x i8] c"/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua;/usr/local/lib/lua/5.4/?.lua;/usr/local/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"/usr/local/lib/lua/5.4/?.so;/usr/local/lib/lua/5.4/loadall.so;./?.so\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"/\0A;\0A?\0A!\0A-\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_PRELOAD\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [2 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@CLIBS = internal constant i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"searchpath\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"searchers\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"\0A\09no file '\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"'\0A\09no file '\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@createsearcherstable.searchers = internal unnamed_addr constant [5 x i32 (%struct.lua_State*)*] [i32 (%struct.lua_State*)* @searcher_preload, i32 (%struct.lua_State*)* @searcher_Lua, i32 (%struct.lua_State*)* @searcher_C, i32 (%struct.lua_State*)* @searcher_Croot, i32 (%struct.lua_State*)* null], align 16
@.str.27 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c":preload:\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"_5_4\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"'package.searchers' must be a table\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_package(%struct.lua_State*) local_unnamed_addr #0 {
  tail call fastcc void @createclibstable(%struct.lua_State* %0)
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0), i32 0) #6
  tail call fastcc void @createsearcherstable(%struct.lua_State* %0)
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.2, i64 0, i64 0))
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #6
  %3 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #6
  %4 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #6
  %5 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 -1001000, i64 2) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([2 x %struct.luaL_Reg], [2 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0), i32 1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createclibstable(%struct.lua_State*) unnamed_addr #0 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gctm, i32 0) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6
  %2 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #6
  tail call void @lua_rawsetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)) #6
  ret void
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @createsearcherstable(%struct.lua_State*) unnamed_addr #0 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 4, i32 0) #6
  br label %2

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %6, %2 ]
  %4 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i64 0, i64 %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8, !tbaa !2
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %5, i32 1) #6
  %6 = add nuw nsw i64 %3, 1
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %6) #6
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %8, label %2

; <label>:8:                                      ; preds = %2
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setpath(%struct.lua_State*, i8*, i8*, i8*) unnamed_addr #0 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #6
  %7 = tail call i8* @getenv(i8* %6) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @getenv(i8* %2) #6
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %4, %9
  %13 = phi i8* [ %10, %9 ], [ %7, %4 ]
  %14 = tail call fastcc i32 @noenv(%struct.lua_State* %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %3) #6
  br label %67

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @strstr(i8* nonnull %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #7
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %18
  %22 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %13) #6
  br label %67

; <label>:23:                                     ; preds = %18
  %24 = tail call i64 @strlen(i8* nonnull %13) #7
  %25 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %25) #6
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #6
  %26 = icmp ult i8* %13, %19
  br i1 %26, label %27, label %44

; <label>:27:                                     ; preds = %23
  %28 = ptrtoint i8* %19 to i64
  %29 = ptrtoint i8* %13 to i64
  %30 = sub i64 %28, %29
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %13, i64 %30) #6
  %31 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %32 = load i64, i64* %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %34 = load i64, i64* %33, align 8, !tbaa !9
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %38, label %36

; <label>:36:                                     ; preds = %27
  %37 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #6
  br label %38

; <label>:38:                                     ; preds = %36, %27
  %39 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %40 = load i8*, i8** %39, align 8, !tbaa !10
  %41 = load i64, i64* %31, align 8, !tbaa !6
  %42 = add i64 %41, 1
  store i64 %42, i64* %31, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 59, i8* %43, align 1, !tbaa !11
  br label %44

; <label>:44:                                     ; preds = %38, %23
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* %3) #6
  %45 = getelementptr inbounds i8, i8* %13, i64 %24
  %46 = getelementptr inbounds i8, i8* %45, i64 -2
  %47 = icmp ult i8* %19, %46
  br i1 %47, label %48, label %66

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %50 = load i64, i64* %49, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !9
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %48
  %55 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #6
  br label %56

; <label>:56:                                     ; preds = %54, %48
  %57 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %58 = load i8*, i8** %57, align 8, !tbaa !10
  %59 = load i64, i64* %49, align 8, !tbaa !6
  %60 = add i64 %59, 1
  store i64 %60, i64* %49, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 59, i8* %61, align 1, !tbaa !11
  %62 = getelementptr inbounds i8, i8* %19, i64 2
  %63 = ptrtoint i8* %46 to i64
  %64 = ptrtoint i8* %19 to i64
  %65 = sub i64 %63, %64
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %62, i64 %65) #6
  br label %66

; <label>:66:                                     ; preds = %56, %44
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %25) #6
  br label %67

; <label>:67:                                     ; preds = %21, %66, %16
  call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gctm(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #6
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ %2, %4 ]
  %7 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 1, i64 %6) #6
  %8 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %9 = add nsw i64 %6, -1
  %10 = icmp sgt i64 %6, 1
  br i1 %10, label %5, label %11

; <label>:11:                                     ; preds = %5, %1
  ret i32 0
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @ll_loadlib(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6
  %4 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %2, i8* %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)
  %9 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %8) #6
  br label %10

; <label>:10:                                     ; preds = %1, %6
  %11 = phi i32 [ 3, %6 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @ll_searchpath(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6
  %4 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #6
  %5 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64* null) #6
  %6 = tail call fastcc i8* @searchpath(%struct.lua_State* %0, i8* %2, i8* %3, i8* %4, i8* %5)
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %9

; <label>:9:                                      ; preds = %1, %8
  %10 = phi i32 [ 2, %8 ], [ 1, %1 ]
  ret i32 %10
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lookforfunc(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call fastcc i8* @checkclib(%struct.lua_State* %0, i8* %1)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call fastcc void @lsys_load(%struct.lua_State* %0)
  br label %12

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %2, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 42
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  br label %12

; <label>:11:                                     ; preds = %7
  tail call fastcc void @lsys_sym(%struct.lua_State* %0)
  br label %12

; <label>:12:                                     ; preds = %11, %10, %6
  %13 = phi i32 [ 1, %6 ], [ 0, %10 ], [ 2, %11 ]
  ret i32 %13
}

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @checkclib(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)) #6
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1) #6
  %5 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #6
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lsys_load(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0)) #6
  ret void
}

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lsys_sym(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0)) #6
  ret void
}

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @searchpath(%struct.lua_State*, i8*, i8*, i8*, i8*) unnamed_addr #0 {
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.luaL_Buffer* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %8) #6
  %9 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  %10 = load i8, i8* %3, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %5
  %13 = sext i8 %10 to i32
  %14 = tail call i8* @strchr(i8* %1, i32 %13) #7
  %15 = icmp eq i8* %14, null
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %12
  %17 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* nonnull %3, i8* %4) #6
  br label %18

; <label>:18:                                     ; preds = %12, %5, %16
  %19 = phi i8* [ %17, %16 ], [ %1, %12 ], [ %1, %5 ]
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #6
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %6, i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %19) #6
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 2
  %21 = load i64, i64* %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 1
  %23 = load i64, i64* %22, align 8, !tbaa !9
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %18
  %26 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %6, i64 1) #6
  br label %27

; <label>:27:                                     ; preds = %25, %18
  %28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !10
  %30 = load i64, i64* %20, align 8, !tbaa !6
  %31 = add i64 %30, 1
  store i64 %31, i64* %20, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %32, align 1, !tbaa !11
  %33 = load i8*, i8** %28, align 8, !tbaa !10
  store i8* %33, i8** %7, align 8, !tbaa !2
  %34 = load i64, i64* %20, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = call fastcc i8* @getnextfilename(i8** nonnull %7, i8* nonnull %36)
  %38 = icmp eq i8* %37, null
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %27
  br label %43

; <label>:40:                                     ; preds = %43
  %41 = call fastcc i8* @getnextfilename(i8** nonnull %7, i8* nonnull %36)
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %39, %40
  %44 = phi i8* [ %41, %40 ], [ %37, %39 ]
  %45 = call fastcc i32 @readable(i8* nonnull %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %40, label %47

; <label>:47:                                     ; preds = %43
  %48 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %44) #6
  br label %51

; <label>:49:                                     ; preds = %40, %27
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #6
  %50 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  call fastcc void @pusherrornotfound(%struct.lua_State* %0, i8* %50)
  br label %51

; <label>:51:                                     ; preds = %49, %47
  %52 = phi i8* [ %48, %47 ], [ null, %49 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %8) #6
  ret i8* %52
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #3

declare i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

declare void @luaL_addgsub(%struct.luaL_Buffer*, i8*, i8*, i8*) local_unnamed_addr #1

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @getnextfilename(i8** nocapture, i8*) unnamed_addr #0 {
  %3 = load i8*, i8** %0, align 8, !tbaa !2
  %4 = icmp eq i8* %3, %1
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %3, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %5
  store i8 59, i8* %3, align 1, !tbaa !11
  %9 = getelementptr inbounds i8, i8* %3, i64 1
  br label %10

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ %3, %5 ]
  %12 = tail call i8* @strchr(i8* nonnull %11, i32 59) #7
  %13 = icmp eq i8* %12, null
  %14 = select i1 %13, i8* %1, i8* %12
  store i8 0, i8* %14, align 1, !tbaa !11
  store i8* %14, i8** %0, align 8, !tbaa !2
  br label %15

; <label>:15:                                     ; preds = %2, %10
  %16 = phi i8* [ %11, %10 ], [ null, %2 ]
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @readable(i8* nocapture readonly) unnamed_addr #0 {
  %2 = tail call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %2)
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pusherrornotfound(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #6
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #6
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #6
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %3, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #6
  ret void
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @searcher_preload(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #6
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* %2) #6
  br label %10

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #6
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i32 [ 1, %6 ], [ 2, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @searcher_Lua(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %3, i8* null) #6
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 %8, i8* nonnull %3)
  br label %10

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @searcher_C(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call fastcc i32 @loadfunc(%struct.lua_State* %0, i8* nonnull %3, i8* %2)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 %8, i8* nonnull %3)
  br label %10

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @searcher_Croot(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @strchr(i8* %2, i32 46) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %21, label %5

; <label>:5:                                      ; preds = %1
  %6 = ptrtoint i8* %3 to i64
  %7 = ptrtoint i8* %2 to i64
  %8 = sub i64 %6, %7
  %9 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %2, i64 %8) #6
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %11 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp eq i8* %11, null
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %5
  %14 = tail call fastcc i32 @loadfunc(%struct.lua_State* %0, i8* nonnull %11, i8* %2)
  switch i32 %14, label %15 [
    i32 0, label %19
    i32 2, label %17
  ]

; <label>:15:                                     ; preds = %13
  %16 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 0, i8* nonnull %11)
  br label %21

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0), i8* %2, i8* nonnull %11) #6
  br label %21

; <label>:19:                                     ; preds = %13
  %20 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %11) #6
  br label %21

; <label>:21:                                     ; preds = %5, %1, %19, %17, %15
  %22 = phi i32 [ %16, %15 ], [ 1, %17 ], [ 2, %19 ], [ 0, %1 ], [ 1, %5 ]
  ret i32 %22
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @findfile(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001001, i8* %2) #6
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %2) #6
  br label %9

; <label>:9:                                      ; preds = %7, %3
  %10 = tail call fastcc i8* @searchpath(%struct.lua_State* %0, i8* %1, i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @checkload(%struct.lua_State*, i32, i8*) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %2) #6
  br label %11

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i8* %8, i8* %2, i8* %9) #6
  br label %11

; <label>:11:                                     ; preds = %7, %5
  %12 = phi i32 [ 2, %5 ], [ %10, %7 ]
  ret i32 %12
}

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @loadfunc(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6
  %5 = tail call i8* @strchr(i8* %4, i32 45) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %16, label %7

; <label>:7:                                      ; preds = %3
  %8 = ptrtoint i8* %5 to i64
  %9 = ptrtoint i8* %4 to i64
  %10 = sub i64 %8, %9
  %11 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %4, i64 %10) #6
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %11) #6
  %13 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %1, i8* %12)
  %14 = icmp eq i32 %13, 2
  %15 = getelementptr inbounds i8, i8* %5, i64 1
  br i1 %14, label %16, label %20

; <label>:16:                                     ; preds = %3, %7
  %17 = phi i8* [ %15, %7 ], [ %4, %3 ]
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %17) #6
  %19 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %1, i8* %18)
  br label %20

; <label>:20:                                     ; preds = %7, %16
  %21 = phi i32 [ %19, %16 ], [ %13, %7 ]
  ret i32 %21
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @noenv(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #6
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  ret i32 %3
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ll_require(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  %3 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #6
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #6
  %5 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  tail call fastcc void @findloader(%struct.lua_State* %0, i8* %2)
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #6
  tail call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #6
  br label %12

; <label>:11:                                     ; preds = %7
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %12

; <label>:12:                                     ; preds = %11, %10
  %13 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 -2) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #6
  br label %16

; <label>:16:                                     ; preds = %15, %12
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %17

; <label>:17:                                     ; preds = %1, %16
  %18 = phi i32 [ 2, %16 ], [ 1, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal fastcc void @findloader(%struct.lua_State*, i8*) unnamed_addr #0 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %4) #6
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001001, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #6
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0)) #6
  br label %9

; <label>:9:                                      ; preds = %2, %7
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #6
  br label %10

; <label>:10:                                     ; preds = %27, %9
  %11 = phi i64 [ %28, %27 ], [ 1, %9 ]
  %12 = call i32 @lua_rawgeti(%struct.lua_State* %0, i32 3, i64 %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %10
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #6
  %15 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %16 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i8* %1, i8* %15) #6
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %1) #6
  call void @lua_callk(%struct.lua_State* %0, i32 1, i32 2, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %19 = call i32 @lua_type(%struct.lua_State* %0, i32 -2) #6
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %17
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %4) #6
  ret void

; <label>:22:                                     ; preds = %17
  %23 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -2) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %22
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %3) #6
  br label %27

; <label>:26:                                     ; preds = %22
  call void @lua_settop(%struct.lua_State* %0, i32 -3) #6
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = add nuw i64 %11, 1
  br label %10
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 16}
!7 = !{!"luaL_Buffer", !3, i64 0, !8, i64 8, !8, i64 16, !3, i64 24, !4, i64 32}
!8 = !{!"long", !4, i64 0}
!9 = !{!7, !8, i64 8}
!10 = !{!7, !3, i64 0}
!11 = !{!4, !4, i64 0}
