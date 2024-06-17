# Regenerate the swagger too
Set-Location $PSScriptRoot/../../../
&./connect/make-swagger.ps1 -language "csharp" -swaggerFile "connect/swagger_api.json" -outputFolder 'connect/dotnet'
Set-Location $PSScriptRoot/../../../connect/dotnet
# Run the build script
dotnet format
dotnet build
