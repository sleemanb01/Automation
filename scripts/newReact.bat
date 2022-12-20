@echo off

set PATH=D:\dev\%1

set backPath=%PATH%\BackEnd

if not exist %PATH% (
	mkdir "%backPath%"
)

cd /d %PATH%

C:\"Program Files"\nodejs\npx.cmd create-react-app front_end --template typescript ^&^& code front_end
