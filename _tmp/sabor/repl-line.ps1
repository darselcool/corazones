param(
  [Parameter(Mandatory=$true)][string]$Prefix,
  [Parameter(Mandatory=$true)][string]$Src
)
$ErrorActionPreference='Stop'
$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$idx=-1
for($i=0;$i -lt $L.Count;$i++){ if($L[$i].StartsWith($Prefix)){ $idx=$i; break } }
if($idx -lt 0){ throw "No encuentro la linea con prefijo $Prefix" }
$nuevo=([System.IO.File]::ReadAllText($Src,[System.Text.Encoding]::UTF8)) -split "`r?`n"
while($nuevo.Count -gt 0 -and $nuevo[-1].Trim() -eq ''){ $nuevo=$nuevo[0..($nuevo.Count-2)] }
$out=$L[0..($idx-1)] + $nuevo + $L[($idx+1)..($L.Count-1)]
[System.IO.File]::WriteAllText($cap,($out -join "`r`n")+"`r`n",(New-Object System.Text.UTF8Encoding($false)))
$L2=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
Write-Output ("linea '$Prefix' reemplazada por $($nuevo.Count) linea(s) | total lineas=$($L2.Count)")
