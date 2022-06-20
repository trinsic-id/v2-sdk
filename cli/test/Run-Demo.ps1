param
(
    [ValidateSet('Development', 'Staging', 'Production')]
    $Environment = 'Production',
    $CommandPath = $(Get-Command trinsic | ForEach-Object { $_.Source })
)

$ServerEndpoint = switch ($Environment) {
    Development { "dev-internal.trinsic.cloud" }
    Staging { "staging.trinsic.cloud" }
    Default { "prod.trinsic.cloud" }
}

Write-Output "Environment: $Environment"
Write-Output "CLI Path: $CommandPath"

$trinsic = "$CommandPath --json"

Invoke-Expression "$CommandPath config -e $ServerEndpoint" | Out-Null

# Print CLI version
Invoke-Expression "$CommandPath --version"

# Print config
Invoke-Expression "$CommandPath config"

Write-Output "✅ Creating new ecosystem"
$CreateEcosystemResponse = Invoke-Expression "$trinsic provider create-ecosystem" | ConvertFrom-Json
$Ecosystem = $CreateEcosystemResponse.ecosystem
Write-Output "Ecosystem: $($Ecosystem.id)"

Write-Output "✅ Updating auth token"
Invoke-Expression "$CommandPath config -a $($CreateEcosystemResponse.'auth token')" | Out-Null

Write-Output "✅ Creating new template"
$CreateTemplateResponse = Invoke-Expression "$trinsic template create --name 'Iso18013 Drivers License' --fields-file $PSScriptRoot/state-id-template.json --allow-additional" | ConvertFrom-Json
$Template = $CreateTemplateResponse.template.data
$Template.schema_uri

Write-Output "✅ Issuing credential for drivers license"
Invoke-Expression "$trinsic vc issue-from-template --template-id $($Template.id) --values-file $PSScriptRoot/state-id-values.json"
    | ConvertFrom-Json
    | ForEach-Object { $_.'signed document' }
    | Set-Content -Path $PSScriptRoot/state-id-signed-document.json

Write-Output "✅ Verify credential"
Invoke-Expression "$CommandPath vc verify-proof --proof-document $PSScriptRoot/state-id-signed-document.json"

Write-Output "🎉 Demo complete!"