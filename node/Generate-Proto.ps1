# Generate protobuf files for JS and TS
param($OutDir = "$PSScriptRoot/src/proto")

$PROTOC_GEN_TS_PATH = Resolve-Path "$PSScriptRoot/node_modules/.bin/protoc-gen-ts$(If ($IsWindows) {'.cmd'} Else {''})"
# For mac, `brew install protobuf`
# for windows, download and install to PATH
# for linux, `apt-get install protobuf`
$PROTOC = "protoc"
$OUTPUT_DIR = $OutDir
$PROTO_DIR = Resolve-Path "$PSScriptRoot/../proto"

if ((Get-Command "$PROTOC" -ErrorAction SilentlyContinue) -eq $null)
{
    Write-Host "Unable to find $PROTOC in your PATH"
    Return
}

foreach ($Item in Get-ChildItem -Path $PROTO_DIR -Include *.proto -Recurse)
{
    $File = $Item.FullName
    &"$PROTOC" --plugin=protoc-gen-ts=$PROTOC_GEN_TS_PATH --js_out=import_style=commonjs,binary:$OUTPUT_DIR --ts_out=$OUTPUT_DIR -I $PROTO_DIR $File
}