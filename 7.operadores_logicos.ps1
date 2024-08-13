$num1 = 1
$num2 = 2
$num3 = 3
$num4 = 4

### -And
Write-Host "-And:" (($num4 -gt $num3) -And ($num1 -lt $num2))   # True and True = True
Write-Host ""

### -Or
Write-Host "-Or:" (($num3 -gt $num4) -Or ($num2 -lt $num1))   # False or False = False
Write-Host ""

### -Xor -> Exclusive Or -> SOLO retorna True si SOLO UN opreando es True
Write-Host "-Xor:" (($num3 -gt $num4) -Xor ($num2 -lt $num1) -Xor ($num2 -lt $num3))   # False xor False xor True = True    (solo uno es True)
Write-Host "-Xor:" (($num3 -lt $num4) -Xor ($num2 -lt $num1) -Xor ($num2 -lt $num3))   # True xor False xor True = False    (hay más de un True)
Write-Host ""

### -Not -> !operando
Write-Host "-Not:" (-Not(($num4 -gt $num3) -And ($num1 -lt $num2)))   # not(True and True) = False
Write-Host ""

### Operadores de tipo de dato
[int]$variable = "1"    # parseando de string a int
Write-Host ($variable -is [int])
Write-Host ($variable -is [string])
Write-Host ($variable -isNot [string])
Write-Host ($variable -isNot [int])