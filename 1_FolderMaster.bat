@echo off
setlocal

rem --- Arte ASCII ---
echo --------------------------------------------------------------
echo Ancient Architect Folder Master
echo --------------------------------------------------------------
echo -------------------- INSTRUCCIONES ---------------------------
echo 1. Copia la lista de nombres de carpetas desde tu archivo Excel.
echo 2. Cuando se te indique, pega la lista directamente en la consola.
echo 3. Cada carpeta debe estar en una línea diferente.
echo 4. Despues de pegar, presiona CTRL+Z y luego Enter para continuar.
echo --------------------------------------------------------------
echo.

rem Pausa y espera a que se presione una tecla
echo Presiona cualquier tecla para continuar o CTRL+C para abortar...
pause >nul

rem Crear un archivo temporal para almacenar la entrada del usuario
set "inputFile=%temp%\carpetas_input.txt"
echo. > "%inputFile%"

rem Solicitar al usuario que pegue la lista de carpetas
echo Pega la lista de carpetas que deseas crear, y luego presiona CTRL+Z y Enter:
copy con "%inputFile%"

rem Leer el archivo y crear carpetas
for /f "delims=" %%F in (%inputFile%) do (
    if not "%%F"=="" MD "%%~F"
)

rem Limpiar archivo temporal
del "%inputFile%"

endlocal
exit /b %ERRORLEVEL%
