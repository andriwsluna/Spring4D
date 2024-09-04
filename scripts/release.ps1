param($version)



$destination = "$env:ATIFACTSPATH"

Start-Sleep -Seconds 1.5
Compress-Archive -Path "$env:ATIFACTSPATH\*" -DestinationPath "$destination\${version}.zip" -Force

get-childitem $destination  -Recurse |
Where-Object {$_.Extension -ne ".zip" } |
Remove-Item -Force -Recurse

