#!/bin/zsh
rm sdks/node/bin/*
grpc_tools_node_protoc \
  --js_out=import_style=commonjs,binary:sdks/node/bin \
  --grpc_out=grpc_js:sdks/node/bin \
  --proto_path=Proto \
  CredentialTemplates.proto \
  Organizations.proto \
  PresentationTemplates.proto
