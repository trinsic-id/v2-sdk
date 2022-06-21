param
(
    [ValidateSet('Development', 'Staging', 'Production')]
    $Environment = 'Production',
    $CommandPath = $(Get-Command trinsic | ForEach-Object { $_.Source })
)

$ErrorActionPreference = "Stop"
function Stop-OnError {
    if ($LASTEXITCODE -ne 0) {
        Write-Error -Message "Script stopped due to CLI error" -ErrorAction Stop
    }
}

$ServerEndpoint = switch ($Environment) {
    Development { "dev-internal.trinsic.cloud" }
    Staging { "staging.trinsic.cloud" }
    Default { "prod.trinsic.cloud" }
}

Write-Output "Environment: $Environment"
Write-Output "CLI Path: $CommandPath"

$trinsic = "$CommandPath --json"

Invoke-Expression "$CommandPath config -e $ServerEndpoint" | Stop-OnError | Out-Null

# Print CLI version
Invoke-Expression "$CommandPath --version"

# Print config
Invoke-Expression "$CommandPath config"

Write-Output "✅ Creating new ecosystem"
$AuthToken = Invoke-Expression "$trinsic provider create-ecosystem"
| ConvertFrom-Json
| ForEach-Object { $_.'auth token' }
Stop-OnError

Write-Output "✅ Updating auth token"
Invoke-Expression "$CommandPath config -a $AuthToken" | Out-Null
Stop-OnError

Write-Output "✅ Creating new template"
$TemplateId = Invoke-Expression "$trinsic template create --name 'Iso18013 Drivers License' --fields-file $PSScriptRoot/state-id-template.json --allow-additional"
| ConvertFrom-Json
| ForEach-Object { $_.template.data.id }
Stop-OnError

Write-Output "✅ Create trust registry for authorized issuers"
$FrameworkId = Invoke-Expression "$trinsic trust-registry add-framework --name 'Authorized State ID Issuers' --uri 'https://state.gov/authorized-issuers'"
| ConvertFrom-Json
| ForEach-Object { $_.response.id }
Stop-OnError

Write-Output "✅ Issuing credential for drivers license"
Invoke-Expression "$trinsic vc issue-from-template --template-id $TemplateId --framework-id $FrameworkId --values-file $PSScriptRoot/state-id-values.json"
| ConvertFrom-Json
| ForEach-Object { $_.'signed document' }
| Set-Content -Path $PSScriptRoot/state-id-signed-document.json
Stop-OnError

Write-Output "✅ Verify credential"
Invoke-Expression "$CommandPath vc verify-proof --proof-document $PSScriptRoot/state-id-signed-document.json"
Stop-OnError

Write-Output "🎉 Demo complete!"
