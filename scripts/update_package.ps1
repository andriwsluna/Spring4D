param($dir)
$initialDir = Get-Location
Set-Location $dir
Write-Host "Resolvendo dependencias do projeto $dir"

if (Test-Path "modules") {
  Remove-Item  "modules" -Force -Recurse
}

if (Test-Path "boss-lock.json") {
  Remove-Item  "boss-lock.json" -Force 
}

boss config delphi use "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin"
boss install -d

Set-Location $initialDir