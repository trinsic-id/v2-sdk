# Trinsic SDK v2

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


protoc --proto_path=../../Proto --js_out=library=trinsic,binary:./ ../../Proto/IssuerService.proto