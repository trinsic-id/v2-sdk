---
hide:
  - toc
---

# Typescript SDK

The Trinsic Typescript SDK makes it easy to interact with the Trinsic API from any client-side web, Node.js, or React Native application. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/web). The @trinsic/trinsic package comes with Typescript bindings.

## Installation

Install the package for Node or Browser from [npmjs.com <small>:material-open-in-new:</small>](https://www.npmjs.com/package/@trinsic/trinsic){target=\_blank}

!!! note "Supported runtimes"
    Recent browsers, Node.js (v16+), React Native (including expo) are all supported. [A sample react native application is here](https://github.com/trinsic-id/sdk-examples/tree/main/trinsic-react-native)

=== "Install"

```bash
npm install @trinsic/trinsic
```

To import the Trinsic SDK:

```js
import { TrinsicService } from "@trinsic/trinsic";

// instantiate the service without parameters
let trinsic = new TrinsicService();
const walletResponse = await trinsic.wallet().createWallet({ ecosystemId: "<ecosystem_id>" });

// instantiate the service with 'authToken' from the response
trinsic = new TrinsicService({ authToken: walletResponse.authToken });
const infoResponse = await trinsic.wallet().getMyInfo();

console.log(infoResponse);
```

You can find all the SDK methods documented [here](/reference/)
