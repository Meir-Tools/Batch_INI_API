::--------------------------------------------------
:: Modifies on : 14-12-2022
:: 
::--------------------------------------------------
:: Run once , can run inly in batch file , Global
::--------------------------------------------------
@ECHO OFF & TITLE Mei-R 
::--------------------------------------------------
:: Main
::--------------------------------------------------
call :20221217_ini_print "sample.ini"
echo %ini_usr%
echo %ini_pwd%
pause

call :eof
:20221217_ini_print
	for /f "usebackq tokens=1-2 delims==" %%a in (%1) do (
      echo %%a %%b
	  SET ini_%%a=%%b
	)
EXIT /B 0 