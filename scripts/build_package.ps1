param($dir,$project)


.\envdelphi12.ps1

$exePath = "$env:ATIFACTSPATH\Bin"
$edcuPath = "$env:ATIFACTSPATH\Dcu"
$bplPath = "$env:ATIFACTSPATH\Bpl"
$dcpPath = "$env:ATIFACTSPATH\Dcp"




$initialDir = Get-Location
Write-Host "Compilando projeto $project"
Write-Host "diretório= $dir"
Set-Location $dir

write-host "Compilando $project"
msbuild /clp:ErrorsOnly /t:build /p:platform=Win32 /p:Config=Release /p:DCC_ExeOutput=$exePath /p:DCC_DcuOutput=$edcuPath /p:DCC_BplOutput=$bplPath  /p:DCC_DcpOutput=$dcpPath /p:DCC_Quiet=true $project

#$binary_name = ("$exePath\$project").Replace("dproj","exe")
#write-host $binary_name
#signtool sign /v /fd SHA256 /f C:\certificate\IOB-2023-2025.pfx /p Iob@2023 /t http://timestamp.digicert.com $binary_name


write-host "Version $version compiled"


Set-Location $initialDir
