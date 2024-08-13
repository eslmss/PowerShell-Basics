### Operador de Asignación
$variable = "Var1"
Write-Host $variable

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de Suma/Resta con números
$num1 = 55
$num2 = 45
$suma = $num1 + $num2
Write-Host "num1 + num2 = "$suma
Write-Host "num1 - num2 = "($num1-$num2)

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de Suma con strings
$nombre,$apellido = "Jorge", "Perez"
$nombre_completo = $nombre + " " + $apellido
Write-Host ($nombre + " " + $apellido)
Write-Host $nombre_completo

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de Producto con números
$num1 = 5
$num2 = 10
$producto = $num1 * $num2
Write-Host "num1 * num2 = "$producto

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de Producto con strings
$string = "Hola"
Write-Host "string * 5 = "($string * 5)

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de División con números
$num1, $num2, $num3 = 6, 4, 3
Write-Host "num1 / num2 = "($num1 / $num2)#.GetType().Name
Write-Host "num1 / num3 = "($num1 / $num3)#.GetType().Name

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operadores de Asignación con números
$num = 1
Write-Host "num += 4 -->" ($num += 4)
Write-Host "num -= 4 -->" ($num -= 4)
Write-Host "num *= 4 -->" ($num *= 4)
Write-Host "num /= 4 -->" ($num /= 4)
Write-Host "num ++ -->" (++$num)    # pre-incremento, también está post-incremento $num++
Write-Host "num -- -->" (--$num)    # pre-decremento, también está post-decremento $num--

Write-Host "--------------------------------------------------------------------------------------------------------------------------------------"
### Operador de Resto
$dividendo = 5
$divisor = 2
$cociente = $dividendo / $divisor
$resto = $dividendo % $divisor
Write-Host "dividendo / divisor =" $cociente
Write-Host "dividendo % divisor ="$resto