############################################################################
# Este script de PowerShell automatiza la ejecución de 'automated_data.py' #
############################################################################

# obtiene el path desde donde se ejecuta el .ps1 y luego lo setea como directorio actual
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

# path completo al intérprete de python del venv
$pythonExePath = $scriptDir+"\env_ps\Scripts\python.exe"

# path completo al script de Python
$pythonScriptPath = $scriptDir+"\automated_data.py"

# activa el venv usando su path relativo
$virtualEnvPath = ".\env_ps\Scripts\Activate.ps1"
Invoke-Expression $virtualEnvPath

# hora a la que se ejecutará el script
$horaEjecucion = "17:30"

# crea la tarea programada
$tarea = New-ScheduledTaskAction -Execute $pythonExePath -Argument "$pythonScriptPath"

# crea el intervalo de tiempo en minutos para el desencadenador
$intervalo = New-TimeSpan -Minutes 5

# crea el desencadenador
$desencadenador = New-ScheduledTaskTrigger -Once -At $horaEjecucion -RepetitionInterval $intervalo

# registra la tarea "PyTestPowerShell" (corriéndo este script PowerShell como Admin)
Register-ScheduledTask -Action $tarea -Trigger $desencadenador -TaskName "PyTestPowershell" -RunLevel Highest