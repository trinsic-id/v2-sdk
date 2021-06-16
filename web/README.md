# Trinsic SDK for Browsers

## Maintainers

### Dev Environment Setup

Install the following requirements:

- Node.js
- [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1)
- `protoc` compiler for your platform - [installation info](https://grpc.io/docs/protoc-installation/)
- `grpc-web` plugin - see [this section](https://github.com/grpc/grpc-web#code-generator-plugin) for installation info

After this, you can run `npm install` and `npm build`.

The build script will generate the proto files by running the `Generate-Proto.ps1` script. You can also run this script manually.