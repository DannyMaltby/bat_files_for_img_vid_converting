@echo off & setlocal enabledelayedexpansion
set /p currentExtension=Enter file extension:.
set /p desiredExtension=Enter desired file type:.
	mogrify -format %desiredExtension% *.%currentExtension%
pause