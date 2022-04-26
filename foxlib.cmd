@echo off

REM Vars
set "SLNDIR=%~dp0src"

REM Restore + Build
dotnet build "%SLNDIR%\foxlib" --nologo || exit /b

REM Run
dotnet run -p "%SLNDIR%\foxlib" --no-build
