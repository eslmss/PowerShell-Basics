##### Tipos de Datos #####
### [string]    ...el tamaño reservado cambia dependiendo la longitud del string
### [char]
### [int]
### [long]       -> enteros (números grandes)
### [single]     -> decimales
### [double]     -> decimales

##### Tipos de Datos II #####
### [datetime]   -> fecha y hora
### [bool]
### [array]     ...el tamaño reservado cambia dependiendo la longitud del array
### [hashtable]  -> tabla bidimensional (en la 1er columna: clave de hash) (en la 2da columna: el dato al que queremos acceder) ...el tamaño reservado cambia dependiendo la longitud del hashtable (tambien los xml)
#------------------------------------------------------------------------------------------------------------------------------#
##### Obtener el Tipo de una Variable #####
Write-Host "Definicion implicita I de tipo de variable (se asigna dinamicamente segun el valor que le asignemos):"
$variable_string = "Test Variable"
$variable_double = 4.99
$variable_datetime = "11/11/1998"

Write-Host $variable_string "--->" $variable_string.GetType().Name # devuelve String por consola (por defecto todas las variables son string)
Write-Host $variable_double "--->" $variable_double.GetType().Name # devuelve Double por consola
Write-Host $variable_datetime "--->" $variable_datetime.GetType().Name # devuelve DateTime por consola

### Declaración implícita de tipo de variable II (se asigna dinámicamente según el valor que le asignemos)
Write-Host "Definicion implicita II de tipo de variable (se asigna dinamicamente segun el valor que le asignemos):"
$precio = 4.99
Write-Host $precio "-->" $precio.GetType().Name   # devuelve Double
$precio = "cuatro con noventa y nueve"
Write-Host $precio "-->" $precio.GetType().Name   # devuelve String

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "Definicion explicita:"
$temperatura = 100.99 
Write-Host "temperatura implicita (flotante 64 bits)" "-->" $temperatura "-->" $temperatura.GetType().Name  # ahora es implícito, devuelve Double (64 bits)
[float] $temperatura = 100.99 
Write-Host "temperatura explicita (flotante 32 bits)" "-->" $temperatura "-->" $temperatura.GetType().Name # ahora es explícito, devuelve Single (float 32 bits)

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
$fecha = "11/11/1998"
Write-Host "fecha implicita (string)" "->" $fecha "->" $fecha.GetType().Name  # ahora es implícito, devuelve String
$fecha = [datetime]"11/11/1998"       # DateTime Forma 1: casteo
# $fecha = Get-Date -Date "11/11/1998"    # DateTime Forma 2: casteo
Write-Host "fecha explicita (string)" "->" $fecha "->" $fecha.GetType().Name  # ahora es explicito, devuelve DateTime