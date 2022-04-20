# Trinsic Node SDK

## Installation
```bash
npm install @trinsic/trinsic
```

## Documentation

See [documentation here](https://docs-v2.trinsic.id/)

## Maintainers

### Dev Environment Setup

This is the static code generation variant of the Node examples. Code in these examples is pre-generated using protoc and the Node gRPC protoc plugin, and the generated code can be found in various `*_pb.js` files. The command line sequence for generating those files is as follows (assuming that `protoc` and `grpc_node_plugin` are present, and starting in the directory which contains this README.md file):
## Installation
run `pwsh make.ps1`
it will take all the proto files in ../../proto and generate js files in the ./dist dir
it will also build the index.d.ts and put it into the dist
```sh
npm install -g grpc-tools prettier
grpc_tools_node_protoc --js_out=import_style=commonjs,binary:./dist --grpc_out=grpc_js:./dist --proto_path=../../proto ProviderService.proto
```

or just use the `make.ps1` 

* We use [prettier](https://prettier.io/) for code formatting.