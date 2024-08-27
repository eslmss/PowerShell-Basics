Clear-Host  # cls
# Escribir un programa que pida al usuario su peso(kg), altura(m) y calcule el Índice de Masa Corporal redondeado a 2 decimales

[float]$peso = Read-Host("Ingrese peso")
[float]$altura = Read-Host("Ingrese altura")

$imc = $peso / [math]::Pow($altura,2)
$imc = [math]::Round($imc, 2)   # redondeo a 2 decimales

Write-Host "IMC:" $imc