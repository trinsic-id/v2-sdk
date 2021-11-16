# The Trinsic Javascript / Node SDK

The Trinsic Node SDK makes it easy to interact with the Trinsic API from any backend javascript application. The most recent version of the library can be found on npm. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/java).
## Installation
Install the package for Node from [npmjs.com :material-open-in-new:](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

=== "Install"
    ```bash
    npm i @trinsic/trinsic
    ```

## Configuration 

When using the SDK in your code, you can pass parameters to the default service constructors and use the provided methods to set different active profiles.

```typescript
import { WalletService } from '@trinsic/trinsic';

// Set the server address
const service = new WalletService("https://example.com");

// Create new profile or import an existing one
const myProfile = await service.createWallet();

// Set the profile to be used with authorization pipeline
service.setProfile(myProfile);
```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-node.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](./vaccination-node.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }


