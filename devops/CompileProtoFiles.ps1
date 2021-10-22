function Setup()
{
    Set-Location $PSScriptRoot
}

function Get-ProtoFiles()
{
    # return @(
    # "../proto/CoreService.proto",
    # "../proto/DebugService.proto",
    # "../proto/IssuerService.proto",
    # "../proto/ProviderService.proto",
    # "../proto/TrustRegistry.proto",
    # "../proto/WalletService.proto",
    # "../proto/pbmse/pbmse.proto",
    # "../proto/models/CredentialTemplates.proto",
    # "../proto/models/Organizations.proto"
    # )
    return @(
    "../proto/services/common/v1/common.proto",
    "../proto/services/debug/v1/debug.proto",
    "../proto/services/provider/v1/provider.proto",
    "../proto/services/trust-registry/v1/trust-registry.proto",
    "../proto/services/universal-wallet/v1/universal-wallet.proto",
    "../proto/services/verifiable-credentials/v1/verifiable-credentials.proto",
    "../proto/services/verifiable-credentials/templates/v1/templates.proto",
    "../proto/pbmse/v1/pbmse.proto"
    )
}

function Get-ProtoPath()
{
    return "--proto_path=../proto"
}

function Get-JavaPluginPath()
{
    return 'protoc-gen-grpc-java="C:\bin\protoc-gen-grpc-java-1.39.0-windows-x86_64.exe"'
}

function Remove-OldProtoFiles($ProtoPath)
{
    $BaseDir = Split-Path -Path $ProtoPath -Parent
    $ProtoDir = Split-Path -Path $ProtoPath -Leaf
    Remove-Item -Path $ProtoPath -Force -Recurse
    New-Item -Path $BaseDir -Name $ProtoDir -ItemType "directory"
}

function Set-Replace-Lines($filename)
{
    $replacePairs = @{ }
    $replacePairs["require 'keys_pb'"] = "require_relative 'keys_pb'"
    $replacePairs["require 'pbmse/pbmse_pb'"] = "require 'okapi/pbmse/pbmse_pb'"
    $replacePairs["require 'CoreService_pb'"] = "require_relative 'CoreService_pb'"
    $replacePairs["require 'WalletService_pb'"] = "require_relative 'WalletService_pb'"
    $replacePairs["require 'IssuerService_pb'"] = "require_relative 'IssuerService_pb'"
    $fileLines = Get-Content $filename
    for ($ij = 0; $ij -lt $fileLines.Length; $ij++) {
        if ( $replacePairs.ContainsKey($fileLines[$ij]))
        {
            $fileLines[$ij] = $replacePairs[$fileLines[$ij]]
        }
    }
    Set-Content -path $filename -value $fileLines
}

function Update-Golang()
{
    $GoPath = "../go/proto"
    Remove-OldProtoFiles($GoPath)
    protoc $( Get-ProtoPath ) `
        --go_out="$GoPath" `
        --go-grpc_out="$GoPath" `
        --go_opt=paths=source_relative `
        --go-grpc_opt=paths=source_relative `
        $( Get-ProtoFiles )

    # flatten hierarchy
    Copy-Item -Path "$GoPath/pbmse/*"  -Destination "$GoPath" -recurse -Force
    Copy-Item -Path "$GoPath/models/*"  -Destination "$GoPath" -recurse -Force
    Remove-Item -Path "$GoPath/pbmse" -Force -Recurse
    Remove-Item -Path "$GoPath/models" -Force -Recurse
}

function Update-Ruby()
{
    # TODO - Get this plugin path directly.
    $RubyPath = "../ruby/lib/trinsic"
    Remove-OldProtoFiles($RubyPath)
    grpc_tools_ruby_protoc $( Get-ProtoPath ) `
       --ruby_out="$RubyPath" `
       --grpc_out="$RubyPath" `
       $( Get-ProtoFiles )

    # TODO - Type specifier capability
    Remove-Item -Path "$RubyPath/pbmse" -Force -Recurse

    # Rewrite a few lines of the files for require-relative: https://github.com/protocolbuffers/protobuf/issues/1137
    $filesToUpdate = @("../ruby/lib/trinsic/IssuerService_pb.rb",
    "../ruby/lib/trinsic/IssuerService_services_pb.rb",
    "../ruby/lib/trinsic/WalletService_pb.rb",
    "../ruby/lib/trinsic/WalletService_services_pb.rb",
    "../ruby/lib/trinsic/CoreService_pb.rb")

    foreach ($filePath in $filesToUpdate)
    {
        Set-Replace-Lines($filePath)
    }
}

function Update-Swift()
{
    $SwiftPath = "../swift/TrinsicServices/Sources/TrinsicServices/proto"
    Remove-OldProtoFiles($SwiftPath)
    protoc $( Get-ProtoPath ) `
        --swift_opt=Visibility=Public `
        --swift_out="$SwiftPath" `
        --grpc-swift_out="$SwiftPath" `
        $( Get-ProtoFiles )
}

function Update-Java()
{
    $JavaPath = "../java/src/main/java"
    protoc $( Get-ProtoPath ) `
        --plugin=$( Get-JavaPluginPath ) `
        --java_out="$JavaPath" `
        $( Get-ProtoFiles )
}

Setup
Update-Golang
Update-Ruby
Update-Swift
Update-Java
# Python is handled in the BuildPython due to venv requirements
. "./BuildPython.ps1" -RequirementsOnly $true
