; ModuleID = 'linit.c'
source_filename = "linit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type opaque

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

; Function Attrs: nounwind uwtable
define void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_base, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_package, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_coroutine, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_table, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_io, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_os, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_string, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_math, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_utf8, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  tail call void @luaL_requiref(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 (%struct.lua_State*)* nonnull @luaopen_debug, i32 1) #2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #2
  ret void
}

declare void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

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

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
