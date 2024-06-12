Set-Location $PSScriptRoot/../../../connect/typescript
# Run the build script
npm ci
npx --yes prettier --write .
npm run build
