@echo off
rem /**
rem  * Copyright &copy; 2015-2017 http://www.funtl.com All rights reserved.
rem  *
rem  * Author: Lusifer
rem  */
echo.
echo [INFO] Rebuild your database and import initial data.
echo.
pause
echo.
echo [INFO] This will clear up your data tables and data and restore the initial state.
echo.
echo [INFO] Do you want to continue? Otherwise close the window.
echo.
pause
echo.
echo [INFO] Are you sure you want to continue? Otherwise close the window.
echo.
pause
echo.

cd %~dp0
cd ..

call mvn clean antrun:run -Pinit-db -e

cd db
pause