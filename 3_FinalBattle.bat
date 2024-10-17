@echo off
setlocal

rem --- Explicaci�n de la tarea ---
echo --------------------------------------------------------------
echo Script de Movimiento de Archivos (FINAL BATTLE)
echo --------------------------------------------------------------
echo Este script mover� todos los archivos .jpg o .pdf encontrados en subcarpetas
echo de la carpeta actual al directorio principal.
echo.

rem Obtener la ruta del directorio actual
set "currentPath=%~dp0"

rem Mostrar la ruta y pedir confirmaci�n
echo La ruta actual es: %currentPath%
echo �Deseas continuar con esta ruta? (S/N)
set /p "userChoice=Tu elecci�n: "

rem Evaluar la elecci�n del usuario
if /i "%userChoice%" neq "S" (
    echo Operaci�n cancelada por el usuario.
    endlocal
    exit /b 0
)

rem Elegir el tipo de archivo a mover
echo.
echo Selecciona el tipo de archivo a mover:
echo 1. Archivos JPG
echo 2. Archivos PDF
set /p "fileType=Tu elecci�n (1 o 2): "

rem Confirmaci�n de la operaci�n
if "%fileType%"=="1" (
    set "extension=*.jpg"
    echo Moviendo archivos JPG...
) else if "%fileType%"=="2" (
    set "extension=*.pdf"
    echo Moviendo archivos PDF...
) else (
    echo Opci�n no v�lida.
    endlocal
    exit /b 1
)

rem Ejecutar la operaci�n principal
FOR /R "%currentPath%" %%i IN (%extension%) DO MOVE "%%i" "%currentPath%" >nul

rem Mensaje final
echo Operaci�n completada. Los archivos han sido movidos.
echo.

endlocal
exit /b %ERRORLEVEL%