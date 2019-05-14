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

; Function Attrs: minsize nounwind optsize uwtable
define i32 @luaopen_package(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gctm, i32 0) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6
  %2 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #6
  tail call void @lua_rawsetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)) #6
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 7) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0), i32 0) #6
  tail call void @lua_createtable(%struct.lua_State* %0, i32 4, i32 0) #6
  br label %3

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %9, %6 ], [ 0, %1 ]
  %5 = icmp eq i64 %4, 4
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i64 0, i64 %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  %8 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8, !tbaa !2
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %8, i32 1) #6
  %9 = add nuw nsw i64 %4, 1
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i64 %9) #6
  br label %3

; <label>:10:                                     ; preds = %3
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #6
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.2, i64 0, i64 0)) #7
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0)) #7
  %11 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #6
  %12 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #6
  %13 = tail call i32 @luaL_getsubtable(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #6
  %14 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 -1001000, i64 2) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([2 x %struct.luaL_Reg], [2 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0), i32 1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  ret i32 1
}

; Function Attrs: minsize optsize
declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @setpath(%struct.lua_State*, i8*, i8*, i8*) unnamed_addr #0 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #6
  %7 = tail call i8* @getenv(i8* %6) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @getenv(i8* %2) #6
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %4, %9
  %13 = phi i8* [ %10, %9 ], [ %7, %4 ]
  %14 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #6
  %15 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %12, %9
  %18 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %3) #6
  br label %70

; <label>:19:                                     ; preds = %12
  %20 = tail call i8* @strstr(i8* nonnull %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %13) #6
  br label %70

; <label>:24:                                     ; preds = %19
  %25 = tail call i64 @strlen(i8* nonnull %13) #8
  %26 = bitcast %struct.luaL_Buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %26) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #6
  %27 = icmp ult i8* %13, %20
  br i1 %27, label %28, label %46

; <label>:28:                                     ; preds = %24
  %29 = ptrtoint i8* %20 to i64
  %30 = ptrtoint i8* %13 to i64
  %31 = sub i64 %29, %30
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %13, i64 %31) #6
  %32 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %33 = load i64, i64* %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !9
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %28
  %38 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #6
  %39 = load i64, i64* %32, align 8, !tbaa !6
  br label %40

; <label>:40:                                     ; preds = %37, %28
  %41 = phi i64 [ %39, %37 ], [ %33, %28 ]
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !10
  %44 = add i64 %41, 1
  store i64 %44, i64* %32, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8 59, i8* %45, align 1, !tbaa !11
  br label %46

; <label>:46:                                     ; preds = %40, %24
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* %3) #6
  %47 = getelementptr inbounds i8, i8* %13, i64 %25
  %48 = getelementptr inbounds i8, i8* %47, i64 -2
  %49 = icmp ult i8* %20, %48
  br i1 %49, label %50, label %69

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2
  %52 = load i64, i64* %51, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1
  %54 = load i64, i64* %53, align 8, !tbaa !9
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %5, i64 1) #6
  %58 = load i64, i64* %51, align 8, !tbaa !6
  br label %59

; <label>:59:                                     ; preds = %56, %50
  %60 = phi i64 [ %58, %56 ], [ %52, %50 ]
  %61 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !10
  %63 = add i64 %60, 1
  store i64 %63, i64* %51, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, i8* %62, i64 %60
  store i8 59, i8* %64, align 1, !tbaa !11
  %65 = getelementptr inbounds i8, i8* %20, i64 2
  %66 = ptrtoint i8* %48 to i64
  %67 = ptrtoint i8* %20 to i64
  %68 = sub i64 %66, %67
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* nonnull %65, i64 %68) #6
  br label %69

; <label>:69:                                     ; preds = %59, %46
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %26) #9
  br label %70

; <label>:70:                                     ; preds = %22, %69, %17
  call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %1) #6
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  ret void
}

; Function Attrs: minsize optsize
declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @gctm(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_len(%struct.lua_State* %0, i32 1) #6
  br label %3

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %9, %6 ]
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 1, i64 %4) #6
  %8 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %9 = add nsw i64 %4, -1
  br label %3

; <label>:10:                                     ; preds = %3
  ret i32 0
}

; Function Attrs: minsize optsize
declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize optsize
declare i64 @luaL_len(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @ll_loadlib(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6
  %4 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %2, i8* %3) #7
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

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @ll_searchpath(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #6
  %4 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64* null) #6
  %5 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64* null) #6
  %6 = tail call fastcc i8* @searchpath(%struct.lua_State* %0, i8* %2, i8* %3, i8* %4, i8* %5) #7
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

; Function Attrs: minsize optsize
declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @lookforfunc(%struct.lua_State*, i8*, i8* nocapture readonly) unnamed_addr #0 {
  %4 = tail call i32 @lua_rawgetp(%struct.lua_State* %0, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)) #6
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1) #6
  %6 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0)) #6
  br label %16

; <label>:10:                                     ; preds = %3
  %11 = load i8, i8* %2, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 42
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  br label %16

; <label>:14:                                     ; preds = %10
  %15 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0)) #6
  br label %16

; <label>:16:                                     ; preds = %14, %13, %8
  %17 = phi i32 [ 1, %8 ], [ 0, %13 ], [ 2, %14 ]
  ret i32 %17
}

; Function Attrs: minsize optsize
declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_rawseti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @searchpath(%struct.lua_State*, i8*, i8*, i8*, i8*) unnamed_addr #0 {
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = alloca %struct.luaL_Buffer, align 8
  %8 = bitcast %struct.luaL_Buffer* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %8) #9
  %9 = load i8, i8* %3, align 1, !tbaa !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %5
  %12 = sext i8 %9 to i32
  %13 = tail call i8* @strchr(i8* %1, i32 %12) #8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %11
  %16 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* nonnull %3, i8* %4) #6
  br label %17

; <label>:17:                                     ; preds = %11, %5, %15
  %18 = phi i8* [ %16, %15 ], [ %1, %11 ], [ %1, %5 ]
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %7) #6
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %7, i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %18) #6
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 2
  %20 = load i64, i64* %19, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 1
  %22 = load i64, i64* %21, align 8, !tbaa !9
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %17
  %25 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* nonnull %7, i64 1) #6
  %26 = load i64, i64* %19, align 8, !tbaa !6
  br label %27

; <label>:27:                                     ; preds = %24, %17
  %28 = phi i64 [ %26, %24 ], [ %20, %17 ]
  %29 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !10
  %31 = add i64 %28, 1
  store i64 %31, i64* %19, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, i8* %30, i64 %28
  store i8 0, i8* %32, align 1, !tbaa !11
  %33 = load i8*, i8** %29, align 8, !tbaa !10
  %34 = load i64, i64* %19, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  br label %37

; <label>:37:                                     ; preds = %45, %27
  %38 = phi i8* [ %33, %27 ], [ %49, %45 ]
  %39 = icmp eq i8* %38, %36
  br i1 %39, label %55, label %40

; <label>:40:                                     ; preds = %37
  %41 = load i8, i8* %38, align 1, !tbaa !11
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %40
  store i8 59, i8* %38, align 1, !tbaa !11
  %44 = getelementptr inbounds i8, i8* %38, i64 1
  br label %45

; <label>:45:                                     ; preds = %43, %40
  %46 = phi i8* [ %44, %43 ], [ %38, %40 ]
  %47 = call i8* @strchr(i8* nonnull %46, i32 59) #8
  %48 = icmp eq i8* %47, null
  %49 = select i1 %48, i8* %36, i8* %47
  store i8 0, i8* %49, align 1, !tbaa !11
  %50 = call %struct._IO_FILE* @fopen64(i8* nonnull %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #6
  %51 = icmp eq %struct._IO_FILE* %50, null
  br i1 %51, label %37, label %52

; <label>:52:                                     ; preds = %45
  %53 = call i32 @fclose(%struct._IO_FILE* nonnull %50) #6
  %54 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* nonnull %46) #6
  br label %58

; <label>:55:                                     ; preds = %37
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %7) #6
  %56 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %57 = bitcast %struct.luaL_Buffer* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %57) #9
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #6
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #6
  call void @luaL_addgsub(%struct.luaL_Buffer* nonnull %6, i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %57) #9
  br label %58

; <label>:58:                                     ; preds = %55, %52
  %59 = phi i8* [ %54, %52 ], [ null, %55 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %8) #9
  ret i8* %59
}

; Function Attrs: minsize optsize
declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addgsub(%struct.luaL_Buffer*, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @searcher_Lua(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* nonnull %3, i8* null) #6
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 %8, i8* nonnull %3) #7
  br label %10

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @searcher_C(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call fastcc i32 @loadfunc(%struct.lua_State* %0, i8* nonnull %3, i8* %2) #7
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 %8, i8* nonnull %3) #7
  br label %10

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @searcher_Croot(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i8* @strchr(i8* %2, i32 46) #8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %21, label %5

; <label>:5:                                      ; preds = %1
  %6 = ptrtoint i8* %3 to i64
  %7 = ptrtoint i8* %2 to i64
  %8 = sub i64 %6, %7
  %9 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %2, i64 %8) #6
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %11 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %5
  %14 = tail call fastcc i32 @loadfunc(%struct.lua_State* %0, i8* nonnull %11, i8* %2) #7
  switch i32 %14, label %15 [
    i32 0, label %19
    i32 2, label %17
  ]

; <label>:15:                                     ; preds = %13
  %16 = tail call fastcc i32 @checkload(%struct.lua_State* %0, i32 0, i8* nonnull %11) #7
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

; Function Attrs: minsize optsize
declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @findfile(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001001, i8* %2) #6
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %2) #6
  br label %9

; <label>:9:                                      ; preds = %7, %3
  %10 = tail call fastcc i8* @searchpath(%struct.lua_State* %0, i8* %1, i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7
  ret i8* %10
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @loadfunc(%struct.lua_State*, i8*, i8*) unnamed_addr #0 {
  %4 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6
  %5 = tail call i8* @strchr(i8* %4, i32 45) #8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %16, label %7

; <label>:7:                                      ; preds = %3
  %8 = ptrtoint i8* %5 to i64
  %9 = ptrtoint i8* %4 to i64
  %10 = sub i64 %8, %9
  %11 = tail call i8* @lua_pushlstring(%struct.lua_State* %0, i8* %4, i64 %10) #6
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %11) #6
  %13 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %1, i8* %12) #7
  %14 = icmp eq i32 %13, 2
  %15 = getelementptr inbounds i8, i8* %5, i64 1
  br i1 %14, label %16, label %20

; <label>:16:                                     ; preds = %3, %7
  %17 = phi i8* [ %15, %7 ], [ %4, %3 ]
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %17) #6
  %19 = tail call fastcc i32 @lookforfunc(%struct.lua_State* %0, i8* %1, i8* %18) #7
  br label %20

; <label>:20:                                     ; preds = %7, %16
  %21 = phi i32 [ %19, %16 ], [ %13, %7 ]
  ret i32 %21
}

; Function Attrs: minsize optsize
declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal i32 @ll_require(%struct.lua_State*) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  %4 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #6
  %5 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 2, i8* %3) #6
  %6 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %43

; <label>:8:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %9 = bitcast %struct.luaL_Buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %9) #9
  %10 = tail call i32 @lua_getfield(%struct.lua_State* %0, i32 -1001001, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #6
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0)) #6
  br label %14

; <label>:14:                                     ; preds = %12, %8
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #6
  br label %15

; <label>:15:                                     ; preds = %31, %14
  %16 = phi i64 [ %32, %31 ], [ 1, %14 ]
  %17 = call i32 @lua_rawgeti(%struct.lua_State* %0, i32 3, i64 %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #6
  %20 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #6
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i8* %3, i8* %20) #6
  br label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = call i8* @lua_pushstring(%struct.lua_State* %0, i8* %3) #6
  call void @lua_callk(%struct.lua_State* %0, i32 1, i32 2, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %24 = call i32 @lua_type(%struct.lua_State* %0, i32 -2) #6
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %33, label %26

; <label>:26:                                     ; preds = %22
  %27 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -2) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #6
  br label %31

; <label>:30:                                     ; preds = %26
  call void @lua_settop(%struct.lua_State* %0, i32 -3) #6
  br label %31

; <label>:31:                                     ; preds = %30, %29
  %32 = add nuw i64 %16, 1
  br label %15

; <label>:33:                                     ; preds = %22
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %9) #9
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #6
  call void @lua_callk(%struct.lua_State* %0, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %34 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %33
  call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %3) #6
  br label %38

; <label>:37:                                     ; preds = %33
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %38

; <label>:38:                                     ; preds = %37, %36
  %39 = call i32 @lua_getfield(%struct.lua_State* %0, i32 2, i8* %3) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 -2) #6
  call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %3) #6
  br label %42

; <label>:42:                                     ; preds = %41, %38
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %43

; <label>:43:                                     ; preds = %1, %42
  %44 = phi i32 [ 2, %42 ], [ 1, %1 ]
  ret i32 %44
}

; Function Attrs: minsize optsize
declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize }
attributes #7 = { minsize optsize }
attributes #8 = { minsize nounwind optsize readonly }
attributes #9 = { nounwind }

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
