# Regenerate the swagger too
Set-Location $PSScriptRoot/../../../
&./connect/make-swagger.ps1 -language "typescript-fetch" -swaggerFile "connect/swagger_api.json" -outputFolder 'connect/typescript'
Set-Location $PSScriptRoot/../../../connect/typescript

# Export the hand-coded ConnectClient
Add-Content -Path "src/index.ts" -Value 'export * from "./ConnectClient";'

npm install "micromodal@0.4.10" "oidc-client-ts@2.2.5" --save-exact

# Set repository.url to the correct value
$packageJson = Get-Content -Path "package.json" -Raw | ConvertFrom-Json
$packageJson.repository.url = "https://github.com/trinsic-id/sdk"
$packageJson | ConvertTo-Json -Depth 100 | Set-Content -Path "package.json"


# Run the build script
npm install
npx --yes prettier --write .
npm run build
