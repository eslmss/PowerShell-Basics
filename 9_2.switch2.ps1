Clear-Host  # cls

[string]$color_semaforo = "..."
while ($color_semaforo -notin ("rojo", "amarillo", "verde")) {
    [string]$color_semaforo = Read-Host "Introducir color del semaforo (rojo, verde, amarillo)" # no es case sensiive

    switch ($color_semaforo) {
        "rojo" {Write-Host "No pasar" 
                Break}
        "verde" {Write-Host "Pasar" 
                Break}
        "amarillo" {Write-Host "Precaucion" 
                    Break}
        # default{"Color no valido"}
    }
}