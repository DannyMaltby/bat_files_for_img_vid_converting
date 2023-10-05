@echo off & setlocal enabledelayedexpansion
set /p currentExtension=Enter file extension:.
set /p desiredExtension=Enter desired file type:.
for %%v in ("*.%currentExtension%") do (
	set FileName=%%v

	ffmpeg -i "!FileName!" -c copy -map 0 "!FileName:~0,-4!.%desiredExtension%"
	)
pause