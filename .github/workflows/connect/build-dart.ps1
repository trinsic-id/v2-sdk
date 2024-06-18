Set-Location $PSScriptRoot/../../../
&./connect/make-swagger.ps1 -language "dart" -swaggerFile "connect/swagger_api.json" -outputFolder 'connect/dart'
Set-Location $PSScriptRoot/../../../connect/dart
# Run the build script
dart format .
dart pub get
dart analyze
