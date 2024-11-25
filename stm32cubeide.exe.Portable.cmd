@echo off

set PATH=^
%PATH%;^
%~dp0plugins\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.12.3.rel1.win32_1.0.200.202406191623\tools\bin;

set prefix=arm-none-eabi-

set USERPROFILE=%~dp0USERPROFILE
set DESKTOP=%USERPROFILE%\Desktop
set APPDATA=%USERPROFILE%\AppData\Roaming
set LOCALAPPDATA=%USERPROFILE%\AppData\Local

echo %USERPROFILE%
echo %DESKTOP%
echo %APPDATA%
echo %LOCALAPPDATA%

if not exist %USERPROFILE% (
	mkdir %USERPROFILE%
)

if not exist %DESKTOP% (
	mkdir %DESKTOP%
)

if not exist %APPDATA% (
	mkdir %APPDATA%
)

if not exist %LOCALAPPDATA% (
	mkdir %LOCALAPPDATA%
)

start "" stm32cubeide.exe
