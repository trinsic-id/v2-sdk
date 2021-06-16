# Generate protobuf files for JS and TS
param($OutDir = './src/proto')

$OUTPUT_DIR=$OutDir
$PROTO_DIR="../proto"

Invoke-Expression "protoc -I $PROTO_DIR $PROTO_DIR/*.proto --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc-web_out=import_style=typescript,mode=grpcwebtext:$OUTPUT_DIR --plugin=import_style=typescript:protoc-gen-grpc-web"
Invoke-Expression "protoc -I $PROTO_DIR $PROTO_DIR/models/*.proto --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc-web_out=import_style=typescript,mode=grpcwebtext:$OUTPUT_DIR --plugin=import_style=typescript:protoc-gen-grpc-web"
Invoke-Expression "protoc -I $PROTO_DIR $PROTO_DIR/pbmse/*.proto --js_out=import_style=commonjs,binary:$OUTPUT_DIR --grpc-web_out=import_style=typescript,mode=grpcwebtext:$OUTPUT_DIR --plugin=import_style=typescript:protoc-gen-grpc-web"
