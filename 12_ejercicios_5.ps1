Clear-Host  # cls
# Un curso de 5 alumnos está dividido en dos grupos A y B de acuerdo al sexo y el nombre.
# A: está formado por (mujeres con un nombre que terminan con "...M") y (hombres con nombres que inician con "N...")
# B: está formado por el complemento del grupo anterior

$list_A = @()
$list_B = @()

for ($i = 0; $i -lt 5; $i++) {
    [string]$genero = Read-Host("Genero (M/H)")
    [string]$nombre = Read-Host("Nombre")
    $genero = $genero.ToUpper()
    $nombre = $nombre.ToUpper()
    
    if ((($genero -eq "M") -and ($nombre.EndsWith("M"))) -or (($genero -eq "H") -and ($nombre.StartsWith("N")))) {
        $list_A += $nombre
    }
    else {
        $list_B += $nombre
    }
}
Write-Host("Grupo A: " + $list_A)
Write-Host("Grupo B: " + $list_B)