# Ensure the NODE_AUTH_TOKEN is set in the environment variables of the repository.
# ${{ secrets.NPM_TOKEN }} is the secret name for the NPM_TOKEN
param(
    [string]$NpmToken = $env:NPM_TOKEN,
    [string]$NodeAuthToken = $env:NODE_AUTH_TOKEN
)

Set-Location $PSScriptRoot/../../../connect/typescript

# Set env vars
$env:NODE_AUTH_TOKEN = $NodeAuthToken
$env:NPM_TOKEN = $NpmToken

npm set //registry.npmjs.org/:_authToken $NpmToken
npm ci
npm run build
npm publish --no-git-tag-version --yes --no-verify-access
