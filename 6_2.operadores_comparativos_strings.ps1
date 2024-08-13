$string1 = "HolaUnoDosTres"
$string2 = "HOLA"

### Igualdad / Desigualdad / Like / Not Like
Write-Host "Igualdad:" $string1 "==" $string2 "-->" ($string1 -eq $string2)                 # -equal (no distingue mayúsculas)
Write-Host "Desigualdad:" $string1 "!=" $string2 "-->" ($string1 -ne $string2)              # -equal (no distingue mayúsculas)
Write-Host "Comodin Like*:" $string1 "like $string2*" "-->" ($string1 -like "$string2*")     # -like (no distingue mayúsculas)
Write-Host "Comodin *Like:" $string1 "like *$string2" "-->" ($string1 -like "*$string2")   # -like (no distingue mayúsculas)
Write-Host "Comodin Like*:" $string1 "not like $string2*" "-->" ($string1 -notlike "$string2*")     # -like (no distingue mayúsculas)
Write-Host "Comodin *Like:" $string1 "not like" "*$string2" "-->" ($string1 -notlike "*$string2")   # -like (no distingue mayúsculas)

# RegEx: Match / Not Match
Write-Host "Match:" $string1 "match $string2^" "-->" ($string1 -match "$string2^")     # match (no distingue mayúsculas)
Write-Host "Match:" $string1 "not match $string2^" "-->" ($string1 -match "$string2^")     # match (no distingue mayúsculas)