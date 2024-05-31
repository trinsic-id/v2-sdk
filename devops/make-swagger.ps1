# Parameters:
param (
    [string]$language = "typescript-fetch",
    [string]$swaggerFile = "$PSScriptRoot/../connect/swagger_api.json",
    [string]$outputFolder = "$PSScriptRoot/../connect/typescript"
)
# Example usage:
# .\generate-sdk.ps1 -language typescript-fetch -swaggerFile "C:\path\to\connect\api\autorest\swagger_api.json" -outputFolder "C:\path\to\connect\sdk\typescript"

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

    if ($baseUri.IsBaseOf($uri)) {
        $relativeUri = $baseUri.MakeRelativeUri($uri)
        $relativeUri = [System.Uri]::UnescapeDataString($relativeUri.ToString())
        # Remove the leading "/sdk" from the relative path
        $relativeUri = $relativeUri -replace "^sdk/", ""
        return $relativeUri
    }
    else {
        throw "The path '$absolutePath' is not within the base directory '$baseDirectory'."
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
    Remove-Item -Recurse -Force $relativeOutputFolder
}

docker run --rm -v ".:/local" openapitools/openapi-generator-cli generate `
    -i "/local/$relativeSwaggerFile" `
    -g $language `
    -o "/local/$relativeOutputFolder"
