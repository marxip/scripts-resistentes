@echo off
setlocal enabledelayedexpansion

rem --- Arte ASCII ---
echo --------------------------------------------------------------
echo File Dungeon Crawler
echo --------------------------------------------------------------
echo Este script revisará si hay una carpeta con el nombre del archivo PDF
echo y lo moverá allí si es que existe.
echo.

rem Solicitar al usuario que introduzca la ruta de la carpeta
echo Por favor, introduce o pega la ruta completa de la carpeta donde están los archivos PDF:
set /p "filesPath=Ruta: "

rem Verificar si el directorio existe
if not exist "%filesPath%" (
    echo El directorio "%filesPath%" no existe. Por favor, verifica la ruta.
    exit /b 1
)

rem Confirmación de que la ruta es válida
echo El directorio "%filesPath%" existe.
echo.

rem Definir la ruta del archivo de salida (en el mismo directorio que el .bat)
set "outputFile=%~dp0resultados.txt"

rem Redirigir la salida al archivo de resultados
(
    rem Iterar a través de cada archivo PDF en el directorio
    for %%F in ("%filesPath%\*.pdf") do (
        rem Extraer el nombre del archivo sin extensión
        set "fileName=%%~nF"
        
        rem Debugging: mostrar nombre del archivo y ruta de la carpeta
        echo Procesando archivo: %%F
        echo Nombre del archivo sin extensión: !fileName!
        echo Ruta de la carpeta: %filesPath%\!fileName!
        
        rem Verificar si existe una carpeta con un nombre coincidente
        if exist "%filesPath%\!fileName!\" (
            echo La carpeta "%filesPath%\!fileName!" existe. Moviendo archivo...
            rem Mover el archivo a la carpeta correspondiente
            move "%%F" "%filesPath%\!fileName!\" >nul
            if errorlevel 1 (
                echo Error al mover "%%F" a "%filesPath%\!fileName!"
            ) else (
                echo "%%F" movido exitosamente a "%filesPath%\!fileName!"
            )
        ) else (
            echo La carpeta "%filesPath%\!fileName!" no existe.
        )
        echo.
    )
) > "%outputFile%"

endlocal
exit /b %ERRORLEVEL%