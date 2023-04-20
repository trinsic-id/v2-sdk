---
hide:
  - toc
---

# Typescript SDK

The Trinsic Web SDK makes it easy to interact with the Trinsic API from any client-side web application. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/web). The @trinsic/trinsic package comes with Typescript bindings.

## Installation

Install the package for Node or Browser from [npmjs.com <small>:material-open-in-new:</small>](https://www.npmjs.com/package/@trinsic/trinsic){target=\_blank}

=== "Install"

```bash
npm install @trinsic/trinsic
```

To import the Trinsic SDK:

```js
import { TrinsicService } from "@trinsic/trinsic";

const trinsic = new TrinsicService();

const response = await trinsic.wallet().createWallet({});
```

You can find all the SDK methods documented [here](/reference/)
