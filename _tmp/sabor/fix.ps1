$ErrorActionPreference='Stop'
$cap='C:\Users\ruben\Desktop\corazones\novel\routes\ruta-comun\capitulo-16.md'
$tsv='C:\Users\ruben\Desktop\corazones\_tmp\sabor\fix.tsv'
$t=[System.IO.File]::ReadAllText($cap,[System.Text.Encoding]::UTF8)
$pares=[System.IO.File]::ReadAllLines($tsv,[System.Text.Encoding]::UTF8)
$ok=0; $ko=@()
foreach($linea in $pares){
  if($linea.Trim() -eq ''){ continue }
  $p=$linea -split "`t",2
  if($p.Count -lt 2){ $ko += ('SIN TAB: '+$linea); continue }
  $viejo=$p[0]; $nuevo=$p[1]
  if($t.Contains($viejo)){ $t=$t.Replace($viejo,$nuevo); $ok++ } else { $ko += $viejo.Substring(0,[Math]::Min(60,$viejo.Length)) }
}
[System.IO.File]::WriteAllText($cap,$t,(New-Object System.Text.UTF8Encoding($false)))
Write-Output ("aplicadas: $ok | no encontradas: $($ko.Count)")
if($ko.Count -gt 0){ $ko | ForEach-Object { Write-Output ('  KO: '+$_) } }
