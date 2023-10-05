@echo off & setlocal enabledelayedexpansion
set /p name=Enter file name:
set /p desiredExtension=Enter desired file type:.
ffmpeg -i "%name%" -c copy -map 0 "!name:~0,-4!.%desiredExtension%"
pause