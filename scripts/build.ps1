$ErrorActionPreference = "Stop"
$initialDir = Get-Location

Set-Location $PSScriptRoot

.\init.ps1

.\update_package.ps1 $initialDir 
$bossjson = (Get-Content "$initialDir\boss.json" -Raw) | ConvertFrom-Json
$version = $bossjson.Version

foreach($project in  $bossjson.projects){
  .\build_package.ps1 $initialDir $project
}


.\Release.ps1 $version
  

Set-Location $initialDir

