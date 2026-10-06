param(
  [Parameter(Mandatory=$true)][string]$Scene,
  [Parameter(Mandatory=$true)][string]$Src,
  [string]$EndPat='^(ESCENA|ELECCI|Tono:|Siembras:|PR..XIMO|FIN)'
)
$ErrorActionPreference='Stop'
$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$idx=-1
for($i=0;$i -lt $L.Count;$i++){ if($L[$i] -match ('^ESCENA\s+'+[regex]::Escape($Scene)+'\b')){ $idx=$i; break } }
if($idx -lt 0){ throw "No encuentro la escena $Scene" }
$next=-1
for($i=$idx+1;$i -lt $L.Count;$i++){ if($L[$i] -match $EndPat){ $next=$i; break } }
if($next -lt 0){ throw "No encuentro el limite de la escena $Scene" }
$start=$idx+2
$end=$next-2
$new=([System.IO.File]::ReadAllText($Src,[System.Text.Encoding]::UTF8)) -split "`r?`n"
while($new.Count -gt 0 -and $new[-1].Trim() -eq ''){ $new=$new[0..($new.Count-2)] }
while($new.Count -gt 0 -and $new[0].Trim() -eq ''){ $new=$new[1..($new.Count-1)] }
$out=$L[0..($start-1)] + $new + $L[($end+1)..($L.Count-1)]
[System.IO.File]::WriteAllText($cap,($out -join "`r`n")+"`r`n",(New-Object System.Text.UTF8Encoding($false)))
$L2=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
Write-Output ("$Scene reescrita: reemplazadas $($end-$start+1) lineas por $($new.Count) | lineas totales=$($L2.Count)")
