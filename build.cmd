@echo off

REM Vars
set "SLNDIR=%~dp0src"

REM Restore + Build
dotnet build "%SLNDIR%\foxy.sln" --nologo || exit /b

REM Test
dotnet test "%SLNDIR%\Foxy.Tests" --nologo --no-build
