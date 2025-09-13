@echo off

set PREFIX=%USERPROFILE%\Downloads

set GOPATH=%PREFIX%\gopath
set GOROOT=%PREFIX%\go1.25.0.windows-amd64\go
set GOBIN=%GOROOT%\bin
set GOEXE=%GOBIN%\go.exe


@REM https://github.com/brechtsanders/winlibs_mingw/releases/download/15.2.0posix-13.0.0-ucrt-r1/winlibs-x86_64-posix-seh-gcc-15.2.0-mingw-w64ucrt-13.0.0-r1.zip
set MINGW64ROOT=%PREFIX%\winlibs-x86_64-posix-seh-gcc-15.2.0-mingw-w64ucrt-13.0.0-r1\mingw64

set CC=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gcc.exe
set CXX=%MINGW64ROOT%\bin\x86_64-w64-mingw32-g++.exe
set FC=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gfortran.exe
set F77=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gfortran.exe
set LD=%MINGW64ROOT%\bin\ld.exe
set AR=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gcc-ar.exe
set RANLIB=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gcc-ranlib.exe
set WINDRES=%MINGW64ROOT%\bin\windres.exe
set RC=%MINGW64ROOT%\bin\windres.exe
set NM=%MINGW64ROOT%\bin\x86_64-w64-mingw32-gcc-nm.exe
set DLLTOOL=%MINGW64ROOT%\bin\dlltool.exe
set STRIP=%MINGW64ROOT%\bin\strip.exe
set PKG_CONFIG=%MINGW64ROOT%\bin\pkgconf.exe
REM SET PKG_CONFIG_PATH=
REM To enable ccache remove REM from the next lines
REM SET CC=%~dp0bin/ccache.exe %CC%
REM SET CXX=%~dp0bin/ccache.exe %CXX%

set PATH=^
%windir%\System32;^
%PREFIX%\PortableGit\bin;^
%GOBIN%;^
%MINGW64ROOT%\bin;


@REM go install github.com/fyne-io/fyne-cross@latest &&^
@REM fyne-cross windows -arch=amd64 &&^

go install fyne.io/tools/cmd/fyne@latest &&^
%GOPATH%\bin\fyne.exe package -os windows -icon Icon.png &&^
cd /d "%~dp0"
echo done