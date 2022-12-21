 @echo off

DOSKEY newTs= cd /d D:\tut\ts ^&^& mkdir $1 ^&^& cd $1 ^&^& mkdir src ^&^& mkdir dist ^&^& tsc --init ^&^& npm init ^&^& npm install --save-dev lite-server ^&^& type nul > index.html ^&^& cd .. ^&^& code $1
DOSKEY startTs=cd /d D:\tut\ts\$1 ^&^& npm start
DOSKEY watchTs=cd /d D:\tut\ts\$1 ^&^& tsc -w

DOSKEY newNode= cd /d D:\tut\node ^&^& mkdir $1 ^&^& cd $1 ^&^& npm init ^&^& npm install --save-dev nodemon ^&^& type nul > app.js ^&^& cd .. ^&^& code $1
DOSKEY startNode = cd /d D:\tut\node\$1 ^&^& npm start

DOSKEY newMERN= cd /d D:\tut\node ^&^& mkdir $1 ^&^& cd $1 ^&^& npm init ^&^& npm install --save-dev nodemon ^&^& npm install --save express ^&^& npm install --save body-parser ^&^& type nul > app.js ^&^& cd .. ^&^& code $1
DOSKEY startMERN = cd /d D:\tut\node\$1 ^&^& npm start

DOSKEY newTMERN=cd /d D:\backUp\$1\BackEnd ^&^& mkdir src ^&^& mkdir dist ^&^& cd src ^&^& type nul > app.ts ^&^& cd .. ^&^& npm init ^&^& tsc --init ^&^& npm install --save-dev nodemon ^&^& npm install --save-dev @types/node ^&^& npm install --save-dev @types/express ^&^& npm install --save express ^&^& npm install --save body-parser ^&^& cd .. ^&^& code BackEnd
DOSKEY startTMERN= cd /d D:\backUp\$1\BackEnd ^&^& npm start
 
DOSKEY goReact=cd /d D:\dev\wd\web\react
DOSKEY newReact=D:\Automation\Scripts\newReact.bat $1
DOSKEY startReact=cd /d D:\backUp\$1 ^&^& code front_end ^&^& cd front_end ^&^& npm start

DOSKEY goNative=cd /d D:\dev\wd\web\native
DOSKEY codeNative= cd /d D:\dev\wd\$1\FrontEnd ^&^& code $1
DOSKEY newNative= cd /d D:\dev\$1\FrontEnd ^&^& npx react-native init $1 --template react-native-template-typescript ^&^& code $1
DOSKEY newNativeExpo= cd /d D:\dev\wd\$1\FrontEnd ^&^& npx create-expo-app $1 --template expo-template-blank-typescript ^&^& code $1

DOSKEY launchNative=cd /d D:\dev\wd\$1\FrontEnd ^&^& code $1 ^&^& cd $1 ^&^& npx react-native run-android

DOSKEY startNative= cd /d D:\dev\wd\web\native\$1\FrontEnd\$1 ^&^& npx react-native start
DOSKEY startAndroid=cd /d D:\dev\wd\web\native\$1\FrontEnd ^&^& npx react-native run-android
DOSKEY startEmu= cd /d C:\Users\sleeman\AppData\Local\Android\Sdk\emulator ^&^& emulator -avd Pixel_4_API_31 

DOSKEY goGit=cd /d D:\dev\$1
DOSKEY updateGit= robocopy D:\dev\wd\. D:\dev\git /IS /S /XD node_modules /XD ios /XD android /XF .gitignore
DOSKEY uploadGit=cd /d D:\dev\git ^&^&  git add . ^&^& git commit -m $1 ^&^& git push -u origin main

DOSKEY newP = cd /d D:\dev ^&^& mkdir $1 ^&^& cd $1 ^&^& mkdir BackEnd
DOSKEY codeP= cd /d D:\backUp ^&^& code $1
DOSKEY updateP= robocopy D:\backUp\$1 D:\dev\$1 /PURGE /IS /S /XD node_modules /XD ios /XD android XD D:\dev\$1\.git XD .git /XF .gitignore
DOSKEY uploadP =cd /d D:\dev\$1 ^&^&  git add . ^&^& git commit -m $2 ^&^& git push -u origin $3

DOSKEY goNet= cd /d D:\dev\.net
DOSKEY codeNet=cd /d D:\dev\wd\$1\BackEnd ^&^& code $1
DOSKEY newNet=cd /d D:\dev\wd\ ^&^& dotnet new webapi -o $1 ^&^& code $1
DOSKEY runNet=cd /d D:\dev\wd\$1\BackEnd\$1 ^&^& dotnet watch run

DOSKEY goSql=cd /d D:\dev\wd\web\sql