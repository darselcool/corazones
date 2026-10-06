$ErrorActionPreference='Stop'
$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$src='C:\Users\ruben\Desktop\corazones\_tmp\sabor\16-elec7.md'
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$idx=-1
for($i=0;$i -lt $L.Count;$i++){ if($L[$i] -match '^ESCENA\s+16\.8'){ $idx=$i; break } }
if($idx -lt 0){ throw 'No encuentro ESCENA 16.8' }
$new=([System.IO.File]::ReadAllText($src,[System.Text.Encoding]::UTF8)) -split "`r?`n"
while($new.Count -gt 0 -and $new[-1].Trim() -eq ''){ $new=$new[0..($new.Count-2)] }
$bloque=@('ELECCI'+[char]0x00D3+'N 7:','') + $new + @('')
$out=$L[0..($idx-1)] + $bloque + $L[$idx..($L.Count-1)]
[System.IO.File]::WriteAllText($cap,($out -join "`r`n")+"`r`n",(New-Object System.Text.UTF8Encoding($false)))
$L2=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
Write-Output ('ELECCION 7 reinsertado: lineas=' + $L2.Count)
