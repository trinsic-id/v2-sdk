# Generate protobuf files for JS and TS
param($OutDir = './src/proto')

$OUTPUT_DIR = $OutDir
$PROTO_DIR = Resolve-Path "../proto"

foreach ($Item in Get-ChildItem -Path $PROTO_DIR -Include *.proto -Recurse) {
    $File = $Item.FullName

    Invoke-Expression "protoc -I $PROTO_DIR $File --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc-web_out=import_style=typescript,mode=grpcwebtext:$OUTPUT_DIR --plugin=import_style=typescript:protoc-gen-grpc-web"
}