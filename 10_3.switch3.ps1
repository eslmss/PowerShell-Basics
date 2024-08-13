Clear-Host  # cls

[int]$nota = "999"
while (($nota -gt 10)-or($nota.GetType().Name -ne "Int32")) {
    # [int]$nota = Read-Host "Introduce nota"
    $nota = Read-Host "Introduce nota"

    switch ($nota) {
        {$_ -in 6..10} {Write-Host "Aprobado" 
                Break}
        {$_ -in 0..4} {Write-Host "Desaprobado" 
                Break}
        default{"Ingrese nota correcta"}
    }
}