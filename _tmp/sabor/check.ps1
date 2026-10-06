$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$t=[System.IO.File]::ReadAllText($cap,[System.Text.Encoding]::UTF8)
$L=[System.IO.File]::ReadAllLines($cap,[System.Text.Encoding]::UTF8)
$num='(uno|una|dos|tres|cuatro|cinco|seis|siete|ocho|nueve|diez|once|doce|trece|catorce|quince|diecis[eé]is|diecisiete|dieciocho|diecinueve|veinte|veinti\w+|treinta|cuarenta|cincuenta|sesenta|setenta|ochenta|noventa|cien|ciento|doscientos|trescientos)'
$dato='kilos?|gramos|yens?|por ciento|merma|jud[ií]as|factura'
$w=[regex]::Matches($t,'\S+').Count
$msg=("lineas={0} palabras={1} escenas={2} interiores={3} CRLF={4} LFsueltos={5} asteriscos={6} dobles={7} num={8} dato={9} digitos={10}" -f `
  $L.Count,$w,(($L|Where-Object{$_ -match '^ESCENA'}).Count),(($L|Where-Object{$_ -match '^\*' -and $_ -notmatch '^\*\*'}).Count),`
  ([regex]::Matches($t,"`r`n").Count),([regex]::Matches($t,"(?<!`r)`n").Count),([regex]::Matches($t,'\*').Count),([regex]::Matches($t,'\*\*').Count),`
  ([regex]::Matches($t,$num,'IgnoreCase').Count),([regex]::Matches($t,$dato,'IgnoreCase').Count),([regex]::Matches($t,'\d').Count))
Add-Content -Path 'C:\Users\ruben\Desktop\corazones\_tmp\sabor\log.txt' -Value ((Get-Date -Format 'HH:mm:ss')+' '+$msg) -Encoding UTF8
