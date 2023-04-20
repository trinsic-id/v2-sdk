# Trinsic SDK for Browsers and Node

## Installation

```bash
npm install @trinsic/sdk
```

```ts
import { TrinsicService } from "@trinsic/sdk";
```

If you have need to override the transport method (for instance, old versions of Node), you can do it in the following manner:
```typescript
import {TransportProvider} from "@trinsic/sdk"
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
-   Any test marked with `.spec.ts` is used by node AND browser. Any test marked with `.test.ts` is only used by node, and can have node-specific functionality.
-   We use the environment variable `TEST_SERVER_NODE_PROTOCOL` to determine which communication protocol node uses for testing.
