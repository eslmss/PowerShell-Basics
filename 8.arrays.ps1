Clear-Host  # cls

### Formas de definir arrays, su tipo es Object, es decir que pueden almacenar múltiples tipos de datos
$array_vacio = @()
$enteros = @(1, 2, 3, 4, 5)
$enteros = 1, 2, 3, 4, 5

$numeros_consecutivos = 1..10   # almacena enteros del 1 al 10

$chars = "H", "o", "l", "a"

$multi_tipo = ("H", "o", "l", "a", 1, 2, 3)

Write-Host "array_vacio --> "$array_vacio
Write-Host "enteros -->"$enteros
Write-Host "numeros_consecutivos -->"$numeros_consecutivos
Write-Host "chars -->"$chars
Write-Host "multi_tipo -->"$multi_tipo
Write-Host "multi_tipo[4] -->"$multi_tipo[4]
Write-Host "multi_tipo[-1] -->"$multi_tipo[-1]                  # como en Python, cuenta de atrás para adelante
Write-Host "multi_tipo.Length -->"$multi_tipo.Length            # longitud del array
Write-Host "multi_tipo.GetType() -->"$multi_tipo.GetType().Name # longitud del array
Write-Host "---------------------------------------------------------"

# Agregar elementos de un array
$multi_tipo += (4, 5, 6)
Write-Host "multi_tipo -->"$multi_tipo
Write-Host "---------------------------------------------------------"

# modificar elementos de un array
$multi_tipo[4] = 99
Write-Host "multi_tipo -->"$multi_tipo

Write-Host "---------------------------------------------------------"
# eliminar elementos de un array    --> IMPORTANTE: Los arrays hasta ahora eran estáticos, por lo que para ser manipulados se creaban en memoria copias de los mismos
# para eliminar elementos se usa el objeto tipo ArrayList que incluye métodos simplificados para manipularlo dinámicamente
[System.Collections.ArrayList]$array_list = ("A", "B", "C", "D", "E")
Write-Host "array_list -->"$array_list
Write-Host "array_list.GetType() -->"$array_list.GetType().Name
$array_list.Remove("C") # ------------------------> IMPORTANTE: los objetos ArrayList SI son case sensitive
Write-Host "array_list.Remove('C') -->"$array_list

Write-Host "---------------------------------------------------------"
Write-Host "Recorre TODOS los elementos de un array con while y elimina la/s D"
while ($array_list -contains "D") {
    $array_list.Remove("D")
}
Write-Host "array_list -->"$array_list

Write-Host "---------------------------------------------------------"
# suma de arrays los concatena
$array1 = (1,2,3)
$array2 = (9,8,7)
Write-Host "array1 + array2 -->"($array1+$array2)

Write-Host "---------------------------------------------------------"
# -join como en python
$nums = @(1,2,3)
Write-Host "nums -->"($nums)
$new_nums = $nums -join '-'
Write-Host "new_nums -->"($new_nums)

Write-Host "---------------------------------------------------------"
# -contains
Write-Host "nums -contains 2 -->"($nums -contains 2)
Write-Host "nums -notcontains 2 -->"($nums -notcontains 2)
