Clear-Host  # cls

$provincias = @("Buenos Aires", "Cordoba", "Santa Fe")
for ($p = 0; $p -lt $provincias.Length; $p++) {
    Write-Host $provincias[$p]
}