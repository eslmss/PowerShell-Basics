Clear-Host # cls
# Pedir al usuario un num y que se imprima en pantalla si es primo o no

$num = Read-Host("Ingrese un numero")
$contador_divisores = 0

for ($i = 1; $i -le $num; $i++) {
    if (($num%$i -eq 0)) {
        $contador_divisores++
        if($contador_divisores -gt 2)   # optimizado por si se ingresa $num muy grande
        {
            Break
        }
    }
}

if ($contador_divisores -eq 2)
{
    Write-Host "$num es primo"
}
else
{
    Write-Host "$num NO es primo"
}