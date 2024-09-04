mkdir temp
cd temp
git clone https://bitbucket.org/sglienke/spring4d.git

cd ..
Remove-Item -Recurse -Force repo
mkdir repo

Copy-Item -Path .\temp\spring4d\Source -Destination .\Repo\Source -Recurse -Force
Copy-Item -Path .\temp\spring4d\Resources -Destination .\Repo\Resources -Recurse -Force
Copy-Item -Path .\temp\spring4d\Packages\Delphi11 -Destination .\Repo\Packages\Delphi11 -Recurse -Force

Remove-Item -Recurse -Force temp