@echo off & setlocal enabledelayedexpansion

for %%v in ("*.MOV") do (
	set FileName=%%v
	ffmpeg -i "!FileName!" -vcodec h264 -acodec aac "!FileName:~0,-4!.mp4"
	)
pause