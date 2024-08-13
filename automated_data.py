import pandas as pd
from datetime import datetime
import os

# función que agregar una nueva fila al df del excel 'df_automated.xlsx'
def agregar_fila_a_excel(ruta_archivo):
    # lee el pd.df si existe, sino, crea uno vacío
    try:
        df = pd.read_excel(ruta_archivo)
    except FileNotFoundError:
        df = pd.DataFrame(columns=['ejecucion', 'timestamp'])

    # obtiene el número de la última ejecución (si existe), sino lo inicaliza en 1
    if not df.empty:
        ultimo_numero = df['ejecucion'].astype(int).max() + 1
        # print("DEBUG----->", ultimo_numero)
    else:
        ultimo_numero = 1

    # crea una nueva fila
    nueva_fila = pd.DataFrame(
        {
            'ejecucion': [ultimo_numero], 
            'timestamp': [datetime.now()]
            }
        )
    # print("DEBUG----->", nueva_fila)

    # concatena la nueva fila al df. Parsea los tipos de datos del df y la fila para asegurar que los tipos de datos sean consistentes para prevenir FutureWarnings
    df = pd.concat([df.astype(nueva_fila.dtypes), nueva_fila.astype(df.dtypes)], ignore_index=True)

    # guarda el df en el archivo Excel, en la ruta recibida como parámetro
    df.to_excel(ruta_archivo, index=False)
    # print(df)

# Ruta del archivo Excel
# ruta_actual = os.getcwd()
ruta_script = os.path.dirname(os.path.abspath(__file__))
path = ruta_script + '\df_automated.xlsx'
# print(path)

# llama a la función para agregar una nueva fila, si el Excel está abierto durante la ejecución automatizada, NO se agregará la fila
agregar_fila_a_excel(path)
