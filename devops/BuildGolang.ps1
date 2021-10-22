param
(
    [AllowNull()][string]$GitTag = '',
    [AllowNull()][string]$PackageVersion = '',
    [AllowNull()][string]$TestOutput = 'test_output.xml',
    [AllowNull()][string]$ArtifactName = 'windows-gnu',
    [AllowNull()][Boolean]$RequirementsOnly = $false
)

. "$PSScriptRoot/VersionParse.ps1"

function Install-Requirements {
    # Due to weirdness with github action runners not updating path dynamically, we have to use the yaml file to install these
    # go install golang.org/x/lint/golint@latest
    # go install github.com/jstemmer/go-junit-report@latest
    go install
}
function Test-Golang {
    go build
    golint
    go test -v | go-junit-report > $TestOutput
    # TODO - Add `staticcheck` support
}
function Build-Package {
    $replaceLineVersion = $PackageVersion
    try {
        $replaceLineVersion = Get-GolangVersion($GitTag)
    } catch {
    } finally {
    }
}

function Copy-NativeBinaries($Destination) {
    $source = "$PSScriptRoot/../libs/$ArtifactName"
    Get-ChildItem $source -Recurse | `
        Where-Object { $_.PSIsContainer -eq $False -and !$_.Extension.Contains("dylib") } | `
        ForEach-Object {Copy-Item -Path $_.Fullname -Destination $Destination -Force} # Do the things
    Copy-Item -Path "$source/../C_header/okapi.h" -Destination "$Destination" -Force
}

# Setup
$InvocationPath = (Get-Item .).FullName
Set-Location "$PSScriptRoot/../go/services"
Copy-NativeBinaries -Destination "./"
Install-Requirements
if (!$RequirementsOnly) {
    Test-Golang
    Build-Package
}
Set-Location $InvocationPath
