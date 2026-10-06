param(
  [Parameter(Mandatory=$true)][string]$Scene,
  [Parameter(Mandatory=$true)][string]$Src
)
$ErrorActionPreference='Stop'
$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
if($Scene -like 'ELEC*'){ $pat='^ELECCI\s*'+[regex]::Escape(($Scene -replace '^ELECCI[^0-9]*','')) }
else { $pat='^ESCENA\s+'+[regex]::Escape($Scene)+'\b' }
$idx=-1
for($i=0;$i -lt $L.Count;$i++){ if($L[$i] -match $pat){ $idx=$i; break } }
if($idx -lt 0){ throw "No encuentro la escena $Scene" }
$next=-1
for($i=$idx+1;$i -lt $L.Count;$i++){ if($L[$i] -match '^(ESCENA|ELECCI|Tono:|Siembras:|PR..XIMO|FIN)'){ $next=$i; break } }
if($next -lt 0){ throw "No encuentro el limite de la escena $Scene" }
$start=$idx+2
$end=$next-2
$new=([System.IO.File]::ReadAllText($Src,[System.Text.Encoding]::UTF8)) -split "`r?`n"
while($new.Count -gt 0 -and $new[-1].Trim() -eq ''){ $new=$new[0..($new.Count-2)] }
while($new.Count -gt 0 -and $new[0].Trim() -eq ''){ $new=$new[1..($new.Count-1)] }
$out=$L[0..($start-1)] + $new + $L[($end+1)..($L.Count-1)]
[System.IO.File]::WriteAllText($cap,($out -join "`r`n")+"`r`n",(New-Object System.Text.UTF8Encoding($false)))
$t=[System.IO.File]::ReadAllText($cap,[System.Text.Encoding]::UTF8)
$L2=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$num='(uno|una|dos|tres|cuatro|cinco|seis|siete|ocho|nueve|diez|once|doce|trece|catorce|quince|dieciseis|diecisiete|dieciocho|diecinueve|veinte|veinti\w+|treinta|cuarenta|cincuenta|sesenta|setenta|ochenta|noventa|cien|ciento|doscientos|trescientos)'
$dato='kilos?|gramos|yens?|por ciento|merma|factura'
$w=[regex]::Matches($t,'\S+').Count
Write-Output ("$Scene reescrita: reemplazadas $($end-$start+1) lineas por $($new.Count) | capitulo: lineas=$($L2.Count) palabras=$w num=$([regex]::Matches($t,$num,'IgnoreCase').Count) dato=$([regex]::Matches($t,$dato,'IgnoreCase').Count) CRLF=$([regex]::Matches($t,""`r`n"").Count)")
