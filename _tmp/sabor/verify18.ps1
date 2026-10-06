$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-18.md'
$out='C:\Users\ruben\Desktop\corazones\_tmp\sabor\report.txt'
$t=[System.IO.File]::ReadAllText($cap,[System.Text.Encoding]::UTF8)
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$b=[System.IO.File]::ReadAllBytes($cap)
$lim=0; for($i=0;$i -lt $L.Count;$i++){ if($L[$i] -match '^PUNTOS ACUMULADOS'){ $lim=$i; break } }
$prosa=($L[0..($lim-1)] -join "`n")
$r=@()
$r += 'FICHERO: '+$cap
$r += ('lineas=' + $L.Count + ' palabras=' + [regex]::Matches($t,'\S+').Count)
$r += ('escenas=' + (($L|Where-Object{$_ -match '^ESCENA'}).Count) + ' interiores=' + (($L|Where-Object{$_ -match '^\*' -and $_ -notmatch '^\*\*'}).Count))
$r += ('CRLF=' + ([regex]::Matches($t,"`r`n").Count) + ' LF_sueltos=' + ([regex]::Matches($t,"(?<!`r)`n").Count))
$r += ('BOM=' + (($b[0..2]) -join ',') )
$r += ('asteriscos=' + ([regex]::Matches($t,'\*').Count) + ' dobles=' + ([regex]::Matches($t,'\*\*').Count) + ' negritas_pares=' + ([regex]::Matches($t,'\*\*').Count % 2))
$r += ('PROSA lineas=' + $lim + ' digitos=' + ([regex]::Matches($prosa,'\d').Count) + ' terminos_dato=' + ([regex]::Matches($prosa,'kilos?|gramos|yens?|por ciento|merma|jud[iÃ­]as','IgnoreCase').Count))
$r += ('primera_linea=' + $L[0])
$r += ('ultima_linea=' + $L[$L.Count-1])
$r += 'MAPA:'
for($i=0;$i -lt $L.Count;$i++){ if($L[$i] -match '^(ESCENA|ELECCI|PUNTOS|Tono:|Siembras:|PR..XIMO|FIN|PUNTOS|Nota)'){ $r += ('  {0}: {1}' -f ($i+1), $L[$i].Substring(0,[Math]::Min(50,$L[$i].Length))) } }
[System.IO.File]::WriteAllLines($out,$r,(New-Object System.Text.UTF8Encoding($false)))
Write-Output 'report escrito'

