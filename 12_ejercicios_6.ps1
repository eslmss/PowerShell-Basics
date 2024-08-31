Clear-Host # cls
# Pedir al usuario un num entero y que se imprima en pantalla un triángulo rectánculo con la altura del número introducido
# *
# **
# ***

$num = Read-Host("Ingrese un numero")

for ($i = 1; $i -le $num; $i++) {
    Write-Host(("*")*$i)
}