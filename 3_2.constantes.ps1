##### Declaración de Constantes #####
# Forma explícita
New-Variable -Name "constante" -Value "Esto es una constante" -Option ReadOnly  # solo lectura par que no se pueda modificar en tiempo de ejecución
Write-Host "Constante: " $Constante # no distingue mayúsculas/minúsculas

# Al intentar modificar la constante saldrá un error porque es 'ReadOnly'
$Constante = "Nueva Constante"
Write-Host "Constante: " $Constante # no distingue mayúsculas/minúsculas