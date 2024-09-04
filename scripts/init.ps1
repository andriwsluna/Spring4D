
$env:ATIFACTSPATH = "$env:WORKSPACE\artifacts\"
if (Test-Path -Path $env:ATIFACTSPATH ) {
  Remove-Item -Recurse -Force $env:ATIFACTSPATH 
}

mkdir $env:ATIFACTSPATH