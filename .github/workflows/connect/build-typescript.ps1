# Regenerate the swagger too
Set-Location $PSScriptRoot/../../../
&./connect/make-swagger.ps1 -language "typescript-fetch" -swaggerFile "connect/swagger_api.json" -outputFolder 'connect/typescript'
Set-Location $PSScriptRoot/../../../connect/typescript
# Run the build script
npm ci
npx --yes prettier --write .
npm run build
