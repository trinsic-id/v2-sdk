Set-Location $PSScriptRoot/../../../connect/dart
# Run the build script
dart format .
dart pub get
dart analyze
dart pub global activate coverage
dart run coverage:test_with_coverage
