Clear-Host  # cls
# Programa que solicite cantidad a invertir, interés anual y cantidad de años. Muestra por pantalla el capital obtenido en la inversión

[float]$inversion = Read-Host("Cantidad a invertir: ")
[float]$interes_anual = Read-Host("Interes anual: ")
[int]$tiempo = Read-Host("Cantidad de anios: ")


Write-Host "Capital obtenido: $" (($inversion * ($interes_anual/100)) * $tiempo)