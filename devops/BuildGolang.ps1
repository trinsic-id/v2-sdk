param
(
    [AllowNull()][string]$ArtifactName = 'windows-gnu',
    [AllowNull()][string]$GitTag = '',
    [AllowNull()][string]$PackageVersion = '',
    [AllowNull()][string]$TestOutput = 'test_output.xml',
    [AllowNull()][Boolean]$RequirementsOnly = $false
)

. "$PSScriptRoot/VersionParse.ps1"

function Install-Requirements {
    $GOMODPATH = "$env:GOPATH/pkg/mod/github.com/trinsic-id/okapi"
    Get-ChildItem $GOMODPATH | `
        Where-Object {$_.PSIsContainer -eq $True } | `
        ForEach-Object {Copy-NativeBinaries -Destination "$($_.FullName)/okapi"}
}
function Test-Golang {
    # go test -v 2>&1 | go-junit-report > $TestOutput
    go test -v
}
function Build-Package {
    $replaceLineVersion = $PackageVersion
    try {
        $replaceLineVersion = Get-GolangVersion($GitTag)
    } catch {
    } finally {
        go build
    }
}

function Copy-NativeBinaries($Destination) {
    $source = "$PSScriptRoot/../libs/$ArtifactName"
    Get-ChildItem $source -Recurse | `
        Where-Object { $_.PSIsContainer -eq $False } | `
        ForEach-Object {Copy-Item -Path $_.Fullname -Destination $Destination -Force} # Do the things
    Copy-Item -Path "$source/../C_header/okapi.h" -Destination "$Destination" -Force
}

# Setup
$InvocationPath = (Get-Item .).FullName
Set-Location "$PSScriptRoot/../go"
Copy-NativeBinaries -Destination "./services"
Install-Requirements
if (!$RequirementsOnly) {
    cd "./services"
    Test-Golang
    Build-Package
    cd ".."
}
Set-Location $InvocationPath
