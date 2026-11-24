@echo off
rem OPTIONAL: builds the old Inno Setup wizard installer. The normal release is build.bat (single EXE).
setlocal
cd /d "%~dp0"
pushd source
set GOOS=windows
set GOARCH=amd64
set CGO_ENABLED=0
go build -ldflags "-H=windowsgui -s -w" -o "..\installer\CodeSolo.exe" . || (popd & exit /b 1)
popd
set ISCC=
if exist "%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe" set "ISCC=%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe"
if exist "%ProgramFiles%\Inno Setup 6\ISCC.exe" set "ISCC=%ProgramFiles%\Inno Setup 6\ISCC.exe"
if "%ISCC%"=="" (echo Inno Setup 6 not found. & exit /b 1)
"%ISCC%" "installer\CodeSolo.iss"
