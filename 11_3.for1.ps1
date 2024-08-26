Clear-Host  # cls

[int]$ultimo_numero = Read-Host "Ingresa un numero"

for ($num = 0; $num -le $ultimo_numero; $num++) {
    if ($num % 2 -eq 0) {
        Write-Host $num "es par"
    }
}