# scripts-resistentes

Scripts simplisimos, para tareas muy especificas, que probaron ser útiles y eficaces en su aplicación a través del tiempo.

Este repositorio contiene varios scripts en Batch y Python que automatizan diferentes tareas relacionadas con la gestión de archivos. A continuación, se describe el propósito y uso de cada script.

---

## 1. Ancient Architect Folder Master (Batch Script)

### Propósito
Este script facilita la creación rápida de carpetas basadas en una lista de nombres pegada por el usuario. Está diseñado para ser utilizado cuando se tienen nombres de carpetas en un archivo externo, como una hoja de Excel.

### Uso
1. Ejecuta el script en un entorno de línea de comandos.
2. Sigue las instrucciones en pantalla para pegar la lista de nombres de carpetas.
3. Cada nombre de carpeta debe estar en una línea diferente.
4. Presiona `CTRL+Z` seguido de `Enter` para comenzar el proceso.
5. Las carpetas se crearán en el directorio actual.

---

## 2. Dungeon Crawler (Batch Script)

### Propósito
Este script organiza archivos PDF al moverlos a carpetas que coinciden con su nombre (sin la extensión). Si no existe una carpeta con el nombre del archivo, el script lo indica, pero no crea la carpeta automáticamente.

### Uso
1. Ejecuta el script.
2. Introduce la ruta completa de la carpeta donde se encuentran los archivos PDF.
3. El script buscará en esa carpeta archivos PDF y los moverá a carpetas con el mismo nombre que el archivo.
4. Un archivo de registro llamado `resultados.txt` se generará en el mismo directorio que el script con los detalles de las operaciones realizadas.

---

## 3.  FINAL BATTLE (Batch Script) Script de Movimiento de Archivos.

### Propósito
Este script mueve todos los archivos con extensiones `.jpg` o `.pdf` desde subcarpetas dentro del directorio actual al directorio principal.

### Uso
1. Ejecuta el script.
2. Confirma si deseas continuar en el directorio actual.
3. Selecciona si deseas mover archivos `.jpg` o `.pdf`.
4. El script moverá los archivos seleccionados desde las subcarpetas al directorio principal.

---

## 4. Class struggler (Batch Script) Organización por Extensiones

### Propósito
Este script organiza archivos de diferentes tipos (PDF, TXT, XLS, ZIP) en carpetas separadas dentro del directorio actual.

### Uso
1. Ejecuta el script.
2. El script creará carpetas llamadas `pdf`, `txt`, `xls`, y `zip` si no existen.
3. Luego, moverá los archivos correspondientes a sus respectivas carpetas.
4. El script muestra un mensaje confirmando que los archivos han sido movidos con éxito.

---

## 5. comparadorTXT.py (Python Script) Comparador de archivos TXT de control linea por linea 

### Propósito y caso de uso
Este script es util para comparar dos archivos TXT de facturación linea por linea (mes actual y mes anterior o acumulado de meses anteriores). Generará como resultado un archivo con las lineas no registradas en el mes anterior. Es para evitar facturar 2 veces algo.

### Uso
1. Asegúrate de tener dos archivos de texto: uno con lo facturado el mes anterior y otro con lo del mes actual.
2. Modifica las variables `archivo_mes_actual` y `archivo_mes_anterior` en el script para que apunten a los archivos correctos.
3. Ejecuta el script. Se generará un archivo llamado `no_facturado.txt` que contendrá las facturas del mes actual que no aparecieron en el archivo del mes anterior.

---
