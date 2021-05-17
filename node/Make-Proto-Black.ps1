# Generate protobuf files for JS and TS
param($OutDir = './dist')

$PROTOC_GEN_TS = "./node_modules/.bin/protoc-gen-ts.ps1"
$GRPC_TOOLS_NODE_PROTOC_PLUGIN="./node_modules/.bin/grpc_tools_node_protoc_plugin.ps1"
$GRPC_TOOLS_NODE_PROTOC="./node_modules/.bin/grpc_tools_node_protoc.ps1"
$OUTPUT_DIR=$OutDir
$PROTO_DIR="../proto"

# loop over all the available proto files and compile them into respective dir
# JavaScript code generating
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc_out=grpc_js:$OUTPUT_DIR --plugin=$GRPC_TOOLS_NODE_PROTOC_PLUGIN -I $PROTO_DIR $PROTO_DIR/*.proto"
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc_out=grpc_js:$OUTPUT_DIR --plugin=$GRPC_TOOLS_NODE_PROTOC_PLUGIN -I $PROTO_DIR $PROTO_DIR/models/*.proto"
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc_out=grpc_js:$OUTPUT_DIR --plugin=$GRPC_TOOLS_NODE_PROTOC_PLUGIN -I $PROTO_DIR $PROTO_DIR/pbmse/*.proto"

# TypeScript definitions
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --plugin=$PROTOC_GEN_TS --ts_out=$OUTPUT_DIR -I $PROTO_DIR $PROTO_DIR/*.proto"
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --plugin=$PROTOC_GEN_TS --ts_out=$OUTPUT_DIR -I $PROTO_DIR $PROTO_DIR/models/*.proto"
Invoke-Expression "$GRPC_TOOLS_NODE_PROTOC --js_out=import_style=commonjs,binary:$OUTPUT_DIR --plugin=$PROTOC_GEN_TS --ts_out=$OUTPUT_DIR -I $PROTO_DIR $PROTO_DIR/pbmse/*.proto"
