# Generate protobuf files for JS and TS
param($OutDir = './src/proto')

# Windows
if ($IsWindows)
{
    $PROTOC_GEN_TS_PATH = "$PSScriptRoot/node_modules/.bin/protoc-gen-ts_proto.cmd"
}
else
{
    # For mac: `brew install protobuf`
    $PROTOC_GEN_TS_PATH = "$PSScriptRoot/node_modules/.bin/protoc-gen-ts_proto"
}

$GRPC_TOOLS_NODE_PROTOC = "protoc"
$OUTPUT_DIR = Resolve-Path "$PSScriptRoot/$OutDir"
$PROTO_DIR = Resolve-Path "$PSScriptRoot/../proto"

foreach ($Item in Get-ChildItem -Path $PROTO_DIR -Include *.proto -Recurse)
{
    $File = $Item.FullName

    # If you want to run in the same powershell window, use this:
    &"$GRPC_TOOLS_NODE_PROTOC" --plugin=protoc-gen-ts_proto="$PROTOC_GEN_TS_PATH" --ts_proto_out=$OUTPUT_DIR --ts_proto_opt=outputServices=grpc-js,outputClientImpl=grpc-web,esModuleInterop=true,useOptionals=messages -I $PROTO_DIR $File

    # JavaScript code generating
    #    &"$GRPC_TOOLS_NODE_PROTOC" --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc_out=grpc_js:$OUTPUT_DIR -I $PROTO_DIR $File

    # TypeScript definitions
    #    &"$GRPC_TOOLS_NODE_PROTOC" --plugin=protoc-gen-ts=$PROTOC_GEN_TS_PATH --ts_out=grpc_js:$OUTPUT_DIR -I $PROTO_DIR $File
}