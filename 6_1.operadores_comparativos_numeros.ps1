$num1 = 2
$num2 = 2
Write-Host "Igualdad:" $num1 "==" $num2 "-->" ($num1 -eq $num2)          # -equal
Write-Host "Desigualdad:" $num1 "!=" $num2 "-->" ($num1 -ne $num2)       # -not equal
Write-Host "Mayor que:" $num1 ">" $num2 "-->" ($num1 -gt $num2)          # -greather than
Write-Host "Menor que:" $num1 "<" $num2 "-->" ($num1 -gt $num2)          # -lower than
Write-Host "Mayor o Igual qu:e" $num1 ">=" $num2 "-->" ($num1 -ge $num2) # -greather or equal than
Write-Host "Menor o Igual que:" $num1 "<=" $num2 "-->" ($num1 -ge $num2) # -lower or equal than