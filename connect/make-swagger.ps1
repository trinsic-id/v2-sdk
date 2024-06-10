# Parameters:
param (
    [string]$language = "dart",
    [string]$swaggerFile = "$PSScriptRoot/../connect/swagger_api.json",
    [string]$outputFolder = "$PSScriptRoot/../connect/dart"
)
# Example usage:
# .\make-swagger.ps1 -language typescript-fetch -swaggerFile "C:\path\to\connect\api\autorest\swagger_api.json" -outputFolder "C:\path\to\connect\sdk\typescript"
# .\make-swagger.ps1 -language dart -swaggerFile ".\swagger_api.json" -outputFolder ".\dart"

if (-not (Test-Path $swaggerFile)) {
    throw "The swagger file '$swaggerFile' does not exist."
}
if (-not (Test-Path $outputFolder)) {
    # Make the output folder if it doesn't exist
    New-Item -ItemType Directory -Path $outputFolder
}

function Simplify-Path {
    param (
        [string]$path
    )

    # Resolve the path to its simplest form
    $simplifiedPath = Resolve-Path -Path $path
    return $simplifiedPath
}

# Simplify the paths
$swaggerFile = Simplify-Path -path $swaggerFile
$outputFolder = Simplify-Path -path $outputFolder


# Get the base directory (one level above the script directory)
$baseDir = Split-Path -Parent $PSScriptRoot

# Convert absolute paths to relative paths based on the base directory
function Convert-ToRelativePath {
    param (
        [string]$absolutePath,
        [string]$baseDirectory
    )

    $uri = New-Object System.Uri($absolutePath)
    $baseUri = New-Object System.Uri($baseDirectory)

    Write-Host "Converting $absolutePath to relative path based on $baseDirectory"

    if ($baseUri.IsBaseOf($uri)) {
        $relativeUri = [System.IO.Path]::GetRelativePath($baseDirectory, $absolutePath)
        Write-Host "Relative path: $relativeUri"
        # Replace backslashes with forward slashes
        $relativeUri = $relativeUri -replace '\\', '/'
        return $relativeUri
    }
    else {
        throw "The path '$absolutePath' is not within the base directory '$baseDirectory'."
    }
}

function Remove-OpenApiFiles {
    param (
        [string]$baseDirectory
    )
    # Define the path to the file containing the list of files to delete
    $openApiFiles = "$baseDirectory/.openapi-generator/FILES"

    # Check if the file exists
    if (-Not (Test-Path -Path $openApiFiles)) {
        Write-Host "The file $openApiFiles does not exist. No files to delete."
        return
    }

    # Read all lines from the file
    $filesToDelete = Get-Content -Path $openApiFiles

    # Iterate over each line and delete the file
    foreach ($file in $filesToDelete) {
        $filePath = "$baseDirectory/$file"
        # Check if the file exists
        if (Test-Path -Path $filePath) {
            # Attempt to delete the file
            try {
                Remove-Item -Path $filePath -Force
                Write-Output "Deleted file: $filePath"
            } catch {
                Write-Error "Failed to delete file: $filePath. Error: $_"
            }
        } else {
            Write-Warning "File does not exist: $filePath"
        }
    }

}

# Convert provided paths to relative
$relativeSwaggerFile = Convert-ToRelativePath -absolutePath (Resolve-Path $swaggerFile) -baseDirectory $baseDir
$relativeOutputFolder = Convert-ToRelativePath -absolutePath (Resolve-Path $outputFolder) -baseDirectory $baseDir

# Change to the base directory
Set-Location $baseDir

Write-Output "Generating SDK for $language from $relativeSwaggerFile to $relativeOutputFolder. Base directory=$baseDir"

# Empty the output folder, since openapi-generator-cli can create all intermediate directories
if (Test-Path $relativeOutputFolder) {
    Remove-OpenApiFiles -baseDirectory $relativeOutputFolder
}

# Docker command to run openapi-generator-cli locally eg TRINSIC_CI = false
if ($env:TRINSIC_CI -eq "true")
{
    # Docker command to run openapi-generator-cli in CI - https://stackoverflow.com/a/71931931
    openapi-generator-cli generate `
        -i "./$relativeSwaggerFile" `
        -g $language `
        -o "./$relativeOutputFolder" `
        -c "./$relativeOutputFolder/../config-$language.yaml"
} else
{
    docker run --rm -v ".:/local" openapitools/openapi-generator-cli generate `
        -i "/local/$relativeSwaggerFile" `
        -g $language `
        -o "/local/$relativeOutputFolder" `
        -c "/local/$relativeOutputFolder/../config-$language.yaml"
}
if ($LASTEXITCODE -ne 0) {
    throw "Failed to generate SDK for $language from $relativeSwaggerFile to $relativeOutputFolder."
}
# If Linux, change the owner of the generated files to the current user
if ($IsLinux) {
    $currentUserId = $(id -u)
    $currentGroupId = $(id -g)
    Write-Output "Changing owner of generated files to ${currentUserId}:$currentGroupId"
    sudo chown -R "${currentUserId}:$currentGroupId" $relativeOutputFolder
}
