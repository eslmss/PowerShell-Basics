Clear-Host  # cls

### IF - ELSE
[int]$edad = Read-Host "Introduce edad"
if ($edad -ge 18) {
    Write-Host "Mayor de edad"
}
elseif (($edad -lt 18) -and ($edad -gt 13)) {
    Write-Host "Adolescente"
}
else {
    Write-Host "Joven"
}