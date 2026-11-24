CODE SOLO v1.2 - Phone <-> Windows file transfer
Portable single EXE (same format as AUTORUNTEK IOS-DROID 2 WINDOWS): no installer, no wizard.

USE
- Double-click CodeSolo_v1_2.exe. Put it in any folder you like and keep it there.
- First run: Windows may ask to allow it on Private networks - click Allow.
- "Start with Windows" is in Settings inside the app (keep the EXE in the same folder).
- Delete the EXE to remove it. Settings and paired phones live in %APPDATA%\CodeSolo (delete that folder too if you want a clean removal).

BUILD (on Windows)
1. Install Go  https://go.dev/dl/
2. Double-click build.bat
   Result: dist\CodeSolo_v1_2.exe  (or push to GitHub and download the artifact from Actions)

OPTIONAL wizard installer: build_setup.bat (needs Inno Setup 6). Not the default release.

Notes
- Unsigned EXEs trigger SmartScreen ("More info" > "Run anyway"). A code-signing certificate removes it.
- To release a new version, bump the version in source\main.go and the file name in build.bat / build.yml.
