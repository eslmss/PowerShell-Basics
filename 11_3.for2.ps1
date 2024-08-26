Clear-Host  # cls

for ($i = 0; $i -le 10; $i++) {
    if ($i % 2 -eq 0) {
        Write-Host $i "es par"
    }
}