@echo off
setlocal enabledelayedexpansion

rem Recursive function to search for Java files
:search_java_files
for /r %1 %%f in (*.java) do (
    echo Ada file Java pada direktori %1
    exit /b
)

rem Loop through subdirectories
for /d %%d in (%1\*) do (
    call :search_java_files "%%d"
)

:end
