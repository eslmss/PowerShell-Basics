Clear-Host  # cls
# Escribir un programa que pregunte al usuario por el número de horas trabajadas y el coste por hora.
# Luego debe mostrar la paga que le corresponde

[int]$horas_trabajadas = Read-Host("Ingrese horas trabajadas: ")
[float]$costo_por_hora = Read-Host("Ingrese el costo por hora: ")

Write-Host "La paga es de: $"($horas_trabajadas*$costo_por_hora)