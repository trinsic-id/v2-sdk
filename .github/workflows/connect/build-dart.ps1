Set-Location $PSScriptRoot/../../../connect/dart
# Run the build script
dart format .
dart pub get
dart analyze
