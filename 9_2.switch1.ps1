Clear-Host  # cls

[int]$edad = "999"
while (($edad -ge 100) -or ($edad.GetType().Name -ne "Int32")) {
    # [int]$edad = Read-Host "Introduce edad"
    [int]$edad = Read-Host "Introduce edad"

    switch ($edad) {
        {$_ -ge 18 -and $_ -lt 100} {Write-Host "Mayor de edad" 
                Break}
        {($_ -lt 18)-and($_ -ge 13)} {Write-Host "Adolescente" 
                Break}
        {($_ -lt 13)-and($_ -ge 0)} {Write-Host "Joven" 
                Break}
        default{"Ingrese edad correcta"}
    }
}