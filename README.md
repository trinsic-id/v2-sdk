# Trinsic SDK v2

[![NET](https://github.com/trinsic-id/sdk/actions/workflows/dotnet.yml/badge.svg)](https://github.com/trinsic-id/sdk/actions/workflows/dotnet.yml)
[![Rust](https://github.com/trinsic-id/sdk/actions/workflows/rust.yml/badge.svg)](https://github.com/trinsic-id/sdk/actions/workflows/rust.yml)

- .NET
- TS/WASM
- Rust CLI

dotnet/

nodejs/

cli/

# High Level Features

- Connect to Trinsic Platform v2 Service
  - Generate Proto for each platform
  - Write wrappers for each calls
- Use DIDComm v2 features for key/transport management
  - Sign, Pack/Unpack
  - Generate ED keys



# CLI

The cli is built with a rust gRPC library named [tonic](https://github.com/hyperium/tonic)

# npm


protoc --proto_path=../proto --js_out=library=trinsic,binary:./ ../proto/IssuerService.proto
