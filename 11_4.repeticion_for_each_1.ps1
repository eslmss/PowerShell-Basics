Clear-Host  # cls

$colores = @("rojo", "amarillo", "azul")

foreach ($color in $colores) {
    Write-Host $color
}