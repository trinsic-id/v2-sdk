# Parameters: $Language, $Version, [Flag] $IncrementPatch
# "all" should do every language in the directory
# Change to Set-Location $PSScriptRoot/../../../connect
# Open the `config-$language.yaml` file and change the `packageVersion` to the new version, then save the file
# If the language is `all`, then run the script for every language in the directory
# If we are $IncrementPatch, check current version [MAJOR].[MINOR].[PATCH] and increment the PATCH by 1
param (
    [string]$Language="all",
    [string]$Version="0.0.1",
    [switch]$IncrementPatch=$false
)

$MatchString = '(packageVersion|pubVersion|npmVersion):\s*"?(\d+\.\d+\.\d+)"?'

function Update-Version {
    param (
        [string]$ConfigFile,
        [string]$NewVersion
    )

    $configContent = Get-Content $ConfigFile -Raw
    if ($configContent -match $MatchString) {
        $oldVersion = $matches[2]
        $updatedContent = $configContent -replace $oldVersion, $NewVersion
        Set-Content -Path $ConfigFile -Value $updatedContent
        Write-Host "Updated $ConfigFile from $oldVersion to $NewVersion"
    } else {
        Write-Host "No packageVersion found in $ConfigFile"
    }
}

function Increment-Patch {
    param (
        [string]$CurVersion
    )
    Write-Host "Incrementing patch for $CurVersion"

    if ($CurVersion -match '(\d+)\.(\d+)\.(\d+)') {
        $major = [int]$matches[1]
        $minor = [int]$matches[2]
        $patch = [int]$matches[3] + 1
        return "$major.$minor.$patch"
    } else {
        throw "Invalid version format: $CurVersion"
    }
}

function Update-Language {
    param (
        [string]$Language,
        [string]$Version,
        [bool]$IncrementPatch
    )

    $configFile = ".\config-$Language.yaml"
    if (Test-Path $configFile) {
        if ($IncrementPatch) {
            $currentVersion = Get-Content $configFile -Raw
            if ($currentVersion -match $MatchString) {
                $currentVersion = $matches[2]
            } else {
                Write-Host "No packageVersion found in $configFile"
                return
            }
            $newVersion = Increment-Patch -CurVersion $currentVersion
        } else {
            $newVersion = $Version
        }
        Update-Version -ConfigFile $configFile -NewVersion $newVersion
        # Remove any blank lines at the end of the file
        (Get-Content $configFile) | Where-Object { $_ -match '\S' } | Set-Content $configFile
    } else {
        Write-Host "Config file: $configFile not found."
    }
}

Set-Location $PSScriptRoot/../../../connect

# HACK - Allow incrementing patch version if version is `NEXTPATCH`, this makes the release-connect-[language].yaml workflow easier
if ($Version -eq "NEXTPATCH") {
    $IncrementPatch = $true
    $Version = "0.0.1"
}

# HACK typescript or typescript-fetch are the same thing!
if ($Language -eq "typescript") {
    $Language = "typescript-fetch"
}


Write-Host "Setting version to $Version for $Language, IncrementPatch: $IncrementPatch"

if ($Language -eq "all") {
    # Find all config-*.yaml files in the directory
    Get-ChildItem -Filter "config-*.yaml" | ForEach-Object {
        $lang = $_.Name -replace 'config-(.+)\.yaml', '$1'
        Update-Language -Language $lang -Version $Version -IncrementPatch $IncrementPatch
    }
} else {
    Update-Language -Language $Language -Version $Version -IncrementPatch $IncrementPatch
}
