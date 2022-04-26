# Generate protobuf files for JS and TS
param($OutDir = "$PSScriptRoot/src/proto")

$PROTOC_GEN_TS_PATH = Resolve-Path "$PSScriptRoot/node_modules/.bin/protoc-gen-ts$(If ($IsWindows) {'.cmd'} Else {''})"
$PROTOC_GEN_TS_PATH = Resolve-Path "$PSScriptRoot/node_modules/.bin/protoc-gen-ts_proto$(If ($IsWindows) {'.cmd'} Else {''})"
$PROTOC_GEN_GRPC_PATH = Resolve-Path "$PSScriptRoot/node_modules/.bin/grpc_tools_node_protoc_plugin$(If ($IsWindows) {'.cmd'} Else {''})"
# For mac, `brew install protobuf`
# for windows, download and install to PATH
# for linux, `apt-get install protobuf`
$PROTOC = "protoc"
$OUTPUT_DIR = $OutDir
$PROTO_DIR = Resolve-Path "$PSScriptRoot/../proto"
Write-Output $PROTO_DIR

if ((Get-Command "$PROTOC" -ErrorAction SilentlyContinue) -eq $null)
{
    Write-Host "Unable to find $PROTOC in your PATH"
    Return
}

foreach ($Item in Get-ChildItem -Path $PROTO_DIR -Include *.proto -Recurse)
{
    $File = $Item.FullName
    $Expr = "$PROTOC --plugin=protoc-gen-ts=$PROTOC_GEN_TS_PATH --ts_proto_out=$OUTPUT_DIR --ts_proto_opt=esModuleInterop=true,outputServices=generic-definitions,useExactTypes=false,exportCommonSymbols=false -I $PROTO_DIR $File"
    Write-Output $Expr
    Invoke-Expression $Expr
}