Clear-Host # cls
# Pedir una frase y una letra. Que se imprima por pantalla cuántas veces aparece la letra en la frase

$frase = Read-Host("Frase")
$letra = Read-Host("Letra")
$coincidencias = 0
foreach ($l in $frase.ToCharArray()) {
    if ($l -eq $letra) {
        $coincidencias++
    }
}
Write-Host ("La letra '$letra' aparece $coincidencias veces en la frase")