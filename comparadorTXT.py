import os

def comparar_facturas(mes_actual, mes_anterior, archivo_resultante='no_facturado.txt'):
    # Verificar si los archivos existen
    if not os.path.exists(mes_actual):
        print(f"El archivo {mes_actual} no existe.")
        return
    if not os.path.exists(mes_anterior):
        print(f"El archivo {mes_anterior} no existe.")
        return

    # Leer ambos archivos
    with open(mes_anterior, 'r') as f_ant:
        lineas_anterior = set(f_ant.readlines())

    with open(mes_actual, 'r') as f_act:
        lineas_actual = set(f_act.readlines())

    # Obtener las líneas del mes actual que no están en el archivo anterior
    lineas_no_facturadas = lineas_actual - lineas_anterior

    # Escribir el resultado en un archivo nuevo
    with open(archivo_resultante, 'w') as f_res:
        f_res.writelines(lineas_no_facturadas)

    print(f"Las prácticas no facturadas se han guardado en '{archivo_resultante}'.")

# Uso del script
archivo_mes_actual = 'mes_actual.txt'
archivo_mes_anterior = 'mes_anterior.txt'
comparar_facturas(archivo_mes_actual, archivo_mes_anterior)
