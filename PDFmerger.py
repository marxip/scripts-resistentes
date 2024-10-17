import os
from PyPDF2 import PdfMerger

# Obtener la lista de archivos PDF en el directorio actual
pdf_files = [f for f in os.listdir() if f.endswith('.pdf')]

# Verificar si hay archivos PDF en la carpeta
if not pdf_files:
    print("No se encontraron archivos PDF en la carpeta.")
    exit()

# Obtener las fechas de creación de los archivos
file_dates = [(file, os.path.getctime(file)) for file in pdf_files]

# Ordenar los archivos por fecha de creación (ascendente)
file_dates.sort(key=lambda x: x[1])

# Crear un objeto PdfMerger
merger = PdfMerger()

# Unir los PDFs en el orden correcto
for file, ctime in file_dates:
    merger.append(file)

# Guardar el PDF combinado
output_filename = "00imprimir.pdf"
merger.write(output_filename)
merger.close()

print(f"Archivos combinados y guardados en '{output_filename}'.")
