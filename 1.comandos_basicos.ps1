# Get-Command -CommandType cmdlet | Measure-Object     # devuelve cuántos comandos tenemos disponibles

# Get-ChildItem     # equivalente a dir, devuelve todos los archivos del directorio actual

# Get-Help Get-ChildItem                        # para obtener ayuda del comando
# Get-Help -Online Get-ChildItem                # para obtener ayuda más completa del comando en internet 
# Update-Help -Module Microsoft.Powershell*     # descarga la ayuda de internet para tenerla localmente
# Get-Help Get-ChildItem -Detailed              # ahora tiene info más completa
# Get-Help Get-ChildItem -Full                  # ahora tiene info más completa
# Get-Help Get-ChildItem -Examples              # obtengo ejemplos del uso del comando

# formato Verbo-SustantivoSingular

Get-Help Copy-Item -Examples
#Copy-Item -Path "C:\Users\elias\OneDrive\Desktop\PowerShell\test" -Destination 