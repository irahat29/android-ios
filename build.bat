@echo off
setlocal
cd /d "%~dp0"

echo Building CodeSolo_v1_2.exe (single portable EXE, no installer)...
where go >nul 2>nul || (echo Go is not installed. Get it from https://go.dev/dl/ & exit /b 1)
if not exist dist mkdir dist
pushd source
set GOOS=windows
set GOARCH=amd64
set CGO_ENABLED=0
go build -trimpath -ldflags "-H=windowsgui -s -w" -o "..\dist\CodeSolo_v1_2.exe" .
if errorlevel 1 (popd & echo Go build failed. & exit /b 1)
popd

echo.
echo Done: dist\CodeSolo_v1_2.exe
