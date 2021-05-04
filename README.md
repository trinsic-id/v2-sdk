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
protoc --proto_path=../proto --js_out=library=trinsic,binary:./ ../proto/IssuerService.proto
## gitpod
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/trinsic-id/sdk)

## Working with submodules
Immediately after cloning, do `git submodule update --init --recursive`
