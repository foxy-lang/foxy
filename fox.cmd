@echo off

REM Vars
set "SLNDIR=%~dp0src"

REM Restore + Build
dotnet build "%SLNDIR%\fox" --nologo || exit /b

REM Run
dotnet run -p "%SLNDIR%\fox" --no-build -- %*
