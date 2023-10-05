@echo off & setlocal enabledelayedexpansion
set /p name=Enter file name:
set /p desiredExtension=Enter desired file type:.
set fileExtension=%name:*.=%
call set fileName=%%name:%fileExtension%=%%
magick "%name%" "%fileName%%desiredExtension%"
pause