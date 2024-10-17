import PyPDF2
import os

# Obtener el directorio actual donde se encuentra el script
directorio_actual = os.path.dirname(os.path.abspath(__file__))

# Encontrar el primer archivo PDF en el directorio actual
archivo_pdf = None
for archivo in os.listdir(directorio_actual):
    if archivo.endswith('.pdf'):
        archivo_pdf = archivo
        break

# Verificar si se encontró un archivo PDF
if archivo_pdf:
    ruta_archivo_pdf = os.path.join(directorio_actual, archivo_pdf)
    
    # Leer el archivo PDF
    with open(ruta_archivo_pdf, 'rb') as archivo:
        lector_pdf = PyPDF2.PdfReader(archivo)
        num_paginas = len(lector_pdf.pages)

        # Crear un archivo PDF individual para cada página
        for i in range(num_paginas):
            escritor_pdf = PyPDF2.PdfWriter()
            escritor_pdf.add_page(lector_pdf.pages[i])

            # Nombre del nuevo archivo PDF
            nombre_archivo_salida = f'pagina_{i+1}.pdf'
            ruta_archivo_salida = os.path.join(directorio_actual, nombre_archivo_salida)

            # Guardar el archivo PDF individual
            with open(ruta_archivo_salida, 'wb') as archivo_salida:
                escritor_pdf.write(archivo_salida)

            print(f'Generado: {nombre_archivo_salida}')
else:
    print("No se encontró ningún archivo PDF en el directorio actual.")
