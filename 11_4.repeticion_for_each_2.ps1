Clear-Host  # cls

$numeros = 1..10

foreach ($num in $numeros) {
    if (($num % 2) -eq 0) {
        Write-Host $num " es par"
    }
}