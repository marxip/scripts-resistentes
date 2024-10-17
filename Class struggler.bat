@echo off

REM Define las carpetas de destino
set PDF_DIR=pdf
set TXT_DIR=txt
set XLS_DIR=xls
set ZIP_DIR=zip

REM Crea las carpetas si no existen
if not exist "%PDF_DIR%" mkdir "%PDF_DIR%"
if not exist "%TXT_DIR%" mkdir "%TXT_DIR%"
if not exist "%XLS_DIR%" mkdir "%XLS_DIR%"
if not exist "%ZIP_DIR%" mkdir "%ZIP_DIR%"

REM Mueve los archivos .pdf, .txt, y .xls a las carpetas correspondientes
move /Y *.pdf "%PDF_DIR%"
move /Y *.txt "%TXT_DIR%"
move /Y *.xls "%XLS_DIR%"
move /Y *.zip "%ZIP_DIR%"

echo Archivos movidos con éxito.
pause