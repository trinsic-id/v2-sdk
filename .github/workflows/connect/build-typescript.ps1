Set-Location $PSScriptRoot/../../../connect/typescript
# Run the build script
npm ci
npm run build:prettier
npm run build
