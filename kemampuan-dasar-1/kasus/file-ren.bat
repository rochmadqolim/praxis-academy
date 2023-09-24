@echo off
setlocal enabledelayedexpansion

rem Recursive function to search for Java files and rename them
:search_java_files
for /r %1 %%f in (*.java) do (
    echo Ada file Java pada direktori %1
    set /p choice="Nama file Java ada, diganti namanya (y/t)? "
    if "!choice!" == "y" (
        set /p new_name="Masukkan nama baru untuk file: "
        ren "%%f" "!new_name!.java"
        echo File %%f telah diubah menjadi !new_name!.java
    )
)

rem Loop through subdirectories
for /d %%d in (%1\*) do (
    call :search_java_files "%%d"
)

:end
