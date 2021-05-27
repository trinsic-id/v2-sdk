

# Trinsic SDK

[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/trinsic-id/sdk)
[![NET](https://github.com/trinsic-id/sdk/actions/workflows/dotnet.yml/badge.svg)](https://github.com/trinsic-id/sdk/actions/workflows/dotnet.yml)
[![Rust](https://github.com/trinsic-id/sdk/actions/workflows/rust.yml/badge.svg)](https://github.com/trinsic-id/sdk/actions/workflows/rust.yml)

**Only available for beta customers at this time**

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

## Documentation
We're using [mkdocs](https://www.mkdocs.org/) with [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/).
*Dependancies*:
- the gitpod environment is already set up with everything need to generate the documentation site.
- Install mkdocs using a package manager: https://www.mkdocs.org/#installation
- Install mkdocs-material with`pip`: https://squidfunk.github.io/mkdocs-material/getting-started/#installation

**Running Locally**:
- Just `mkdocs serve` in this repo's root is all you need. 

**Editing**:
The docs are easy to edit. Find the `nav` tag in [./mkdocs.yml](.mkdocs.yml) file to change the side bar. 

Write markdown in the `docs` folder. You can use normal markdown, html, or any of our theme's features - [Reference](https://squidfunk.github.io/mkdocs-material-insiders/reference/abbreviations/)

**Build and deploy**
When finished editing, just make a PR.
They'll be built and deployed automatically using the [`docs.yml`](./.github/workflows/docs.yml) 
Docs can be viewed here: https://trinsic-id.github.io/sdk

** Using Insiders Features on Local env (For Trinsineers) ** 
- ping @michaeldboyd for shared secret
- run `pip install git+https://<SHARED_SECRET}>@github.com/squidfunk/mkdocs-material-insiders.git`
- use any features included in the [reference guide](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/) with tag `insiders only`
