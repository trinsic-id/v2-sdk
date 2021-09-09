function Setup()
{
    Set-Location $PSScriptRoot
}

function Get-Proto-Files()
{
    return @(
    "../proto/CoreService.proto",
    "../proto/DebugService.proto",
    "../proto/IssuerService.proto",
    "../proto/ProviderService.proto",
    "../proto/WalletService.proto",
    "../proto/pbmse/pbmse.proto",
    "../proto/models/Attributes.proto",
    "../proto/models/Credentials.proto",
    "../proto/models/CredentialTemplates.proto",
    "../proto/models/Organizations.proto",
    "../proto/models/Presentations.proto",
    "../proto/models/PresentationTemplates.proto"
    )
}

function Get-Proto-Path()
{
    return "--proto_path=../proto"
}

function Get-Java-Plugin-Path()
{
    return 'protoc-gen-grpc-java="C:\bin\protoc-gen-grpc-java-1.39.0-windows-x86_64.exe"'
}

function Compile-Golang()
{
    $GoPath = "../go/proto"
    protoc $( Get-Proto-Path ) --go_out="$GoPath" --go-grpc_out="$GoPath" --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative $( Get-Proto-Files )

    # flatten hierarchy
    Copy-Item -Path "$GoPath/pbmse/*"  -Destination "$GoPath" -recurse -Force
    Copy-Item -Path "$GoPath/models/*"  -Destination "$GoPath" -recurse -Force
    Remove-Item -Path "$GoPath/pbmse" -Force -Recurse
    Remove-Item -Path "$GoPath/models" -Force -Recurse
}

function Set-Require-Relative($filename)
{
    $replacePairs = @{ }
    $replacePairs["require 'keys_pb'"] = "require_relative 'keys_pb'"
    $replacePairs["require 'pbmse/pbmse_pb'"] = "require_relative 'pbmse/pbmse_pb'"
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

function Compile-Ruby()
{
    # TODO - Get this plugin path directly.
    $RubyPath = "../ruby/lib/trinsic"
    grpc_tools_ruby_protoc $( Get-Proto-Path ) `
       --ruby_out="$RubyPath" `
       --grpc_out="$RubyPath" `
       $( Get-Proto-Files )

    # TODO - Type specifier capability
    # TODO - Remove the pbmse file

    # Rewrite a few lines of the files for require-relative: https://github.com/protocolbuffers/protobuf/issues/1137
    Set-Require-Relative("../ruby/lib/trinsic/IssuerService_pb.rb")
    Set-Require-Relative("../ruby/lib/trinsic/IssuerService_services_pb.rb")
    Set-Require-Relative("../ruby/lib/trinsic/WalletService_pb.rb")
    Set-Require-Relative("../ruby/lib/trinsic/WalletService_services_pb.rb")
}

function Compile-Swift()
{
    protoc $( Get-Proto-Path ) --swift_out = ./Sources/OkapiSwift/proto --swift_opt = Visibility = Public  $( Get-Proto-Files )
}

function Compile-Java()
{
    $JavaPath = "../java/src/main/java"
    protoc $( Get-Proto-Path ) --plugin=$(Get-Java-Plugin-Path) --java_out="$JavaPath" $( Get-Proto-Files )
}

Setup
Compile-Golang
Compile-Ruby
# TODO - enable once swift services is merged.
#Compile-Swift
Compile-Java
# Python is handled in the BuildPython due to venv requirements
. "./BuildPython.ps1" -RequirementsOnly $true