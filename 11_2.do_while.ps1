### Do While
Clear-Host  # cls


Write-Host "Do While:"
$i = 0
do {
    Write-Host $i
    $i++
} 
while (
    $i -le 5
    )
    
## Comparando con While común:  
Write-Host "While:"
$v = 0
while ($v -le 5) {
    Write-Host $v
    $v++
}