# Trinsic SDK for Browsers and Node

## Installation

```bash
npm install @trinsic/trinsic
```

```ts
import { TrinsicService } from "@trinsic/trinsic";
```

If you have need to override the transport method (for instance, old versions of Node), you can do it in the following manner:

```typescript
import { TransportProvider } from "@trinsic/trinsic";
TransportProvider.overrideTransport = XHRTransport(); // or other `nice-grpc-web` transports
// Proceed to make your SDK calls here
```

## Documentation

See [documentation here](https://docs.trinsic.id/)

## Maintainers

### Dev Environment Setup

Install the following requirements:

-   Node.js
-   [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1)
-   `protoc` compiler for your platform - [installation info](https://grpc.io/docs/protoc-installation/)

```sh
npm run build:proto
```

After this, you can run `npm ci` and `npm build`.

The build script will generate the proto files by running the `Generate-Proto.ps1` script. You can also run this script manually.

-   We use [prettier](https://prettier.io/) for code formatting.
