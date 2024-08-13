##### Declaración de Variables #####
# Forma implícita
$nombre = "Elias" # para que sea implícita se usa el '$'
Write-Host "Hola " $NOMBRE"!"  # no distingue mayúsculas/minúsculas

# Forma explícita
New-Variable -Name "nombre2" -Value "Jorge"
Write-Host "Hola " $nombre2"!"

##### Modificando Variables #####
# Forma implícita
$nombre2 = "Nuevo Jorge"
Write-Host "Hola " $nombre2"!"

# Forma explícita
Set-Variable "nombre" -Value "Nuevo Elias"
Write-Host "Hola " $nombre"!"