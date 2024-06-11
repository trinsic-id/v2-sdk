# Optional nuget api key
param(
    [string]$NUGET_API_KEY = ""
)

# Change folder /sdk/connect/dotnet/Trinsic.Connect
Set-Location $PSScriptRoot/../../../connect/dotnet/src/Trinsic.Connect
# Copy in the README.md
Copy-Item -Path ../../README.md -Destination . -Force
# Publish
$publishFolder = "./publish"
dotnet pack -c Release -o $publishFolder
# Push if the api key is set
if ($NUGET_API_KEY -eq "")
{
    Write-Host "No NuGet API key set, skipping push"
    exit 0
}
foreach ($item in get-childitem$publishFolder -recurse | select-object FullName | where { $_.FullName.EndsWith(".nupkg") })
{
    nuget push $item.FullName -ApiKey "$NUGET_API_KEY" -Source https://api.nuget.org/v3/index.json -SkipDuplicate
}
