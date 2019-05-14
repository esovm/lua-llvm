; ModuleID = 'linit.c'
source_filename = "linit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@loadedlibs = internal constant [11 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_base }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_package }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_coroutine }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_table }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_io }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_os }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_string }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_math }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_utf8 }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_debug }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_openlibs(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Reg*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store %struct.luaL_Reg* getelementptr inbounds ([11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* @loadedlibs, i32 0, i32 0), %struct.luaL_Reg** %3, align 8
  br label %4

; <label>:4:                                      ; preds = %18, %1
  %5 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %6 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %5, i32 0, i32 1
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8
  %8 = icmp ne i32 (%struct.lua_State*)* %7, null
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %4
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %12 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %15 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %14, i32 0, i32 1
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %15, align 8
  call void @luaL_requiref(%struct.lua_State* %10, i8* %13, i32 (%struct.lua_State*)* %16, i32 1)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %17, i32 -2)
  br label %18

; <label>:18:                                     ; preds = %9
  %19 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %20 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %19, i32 1
  store %struct.luaL_Reg* %20, %struct.luaL_Reg** %3, align 8
  br label %4

; <label>:21:                                     ; preds = %4
  ret void
}

declare void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @luaopen_base(%struct.lua_State*) #1

declare i32 @luaopen_package(%struct.lua_State*) #1

declare i32 @luaopen_coroutine(%struct.lua_State*) #1

declare i32 @luaopen_table(%struct.lua_State*) #1

declare i32 @luaopen_io(%struct.lua_State*) #1

declare i32 @luaopen_os(%struct.lua_State*) #1

declare i32 @luaopen_string(%struct.lua_State*) #1

declare i32 @luaopen_math(%struct.lua_State*) #1

declare i32 @luaopen_utf8(%struct.lua_State*) #1

declare i32 @luaopen_debug(%struct.lua_State*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
