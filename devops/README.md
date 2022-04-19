# Trinsic SDK DevOps

This folder contains automation scripts for the Trinsic SDK. These are mainly useful for maintainers of the SDK -- if you're not a maintainer, you likely won't find much value here.



## `build_sdks.py`

Builds the SDK packages for release in each language.

### Setup

`pip install -r requirements.txt`

### Usage

TODO: document usage




## `generate_proto_files.py`

Compiles the Trinsic API protobuf files for each SDK language.

Additionally, this script generates the markdown documentation file which outlines each service and message. This uses the `resources/markdown.tmpl` template.


### Setup

- Install pip packages
  - `pip install -r requirements.txt`
- Install [protoc](https://developers.google.com/protocol-buffers/docs/downloads). It must be accessible as `protoc` on your PATH.
- Install [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc). It must also be accessible on your PATH.
  - Simplest method, if you don't have `go` installed, is to simply download the precompiled binary from the Releases in the GitHub repository.


### Usage

`python generate_proto_files.py`