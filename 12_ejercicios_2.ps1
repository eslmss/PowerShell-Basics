Clear-Host  # cls
# Escribir un programa que lea un num positivo y muestre en pantalla la suma de todos los números desde 1 hasta n

[int]$num = Read-Host("Ingrese un numero: ")
$suma = 0

for ($i = 1; $i -le $num; $i++) {
    $suma += $i
}

Write-Host "Por iteracion: " $suma
Write-Host "Por formula: "(($num*($num+1))/2)