# The Trinsic Javascript / Typescript Node SDK

The Trinsic Node SDK makes it easy to interact with the Trinsic API from any backend javascript application. The most recent version of the library can be found on npm. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/web). The @trinsic/trinsic package comes with Typescript bindings.
## Installation
Install the package for Node from [npmjs.com <small>:material-open-in-new:</small>](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

=== "Install"
    ```bash
    npm i @trinsic/trinsic
    ```

## Javascript


To import the Trinsic SDK in ES6:
```js
import { TrinsicService } from "@trinsic/trinsic";
```

To import the Trinsic SDK in CommonJS:
```js
let { TrinsicService } = require("@trinsic/trinsic/browser");
```

You must instantiate the trinsic service first:
```js
const trinsicService = new TrinsicService({
    /** Trinsic API endpoint. Defaults to `prod.trinsic.cloud` */
    serverEndpoint: "prod.trinsic.cloud";
    /** Trinsic API port; defaults to `443` */
    serverPort: 443;
    /** Whether TLS is enabled between SDK and Trinsic API; defaults to `true` */
    serverUseTls: true;
    /** Authentication token for SDK calls; defaults to empty string (unauthenticated) */
    authToken: "<Your auth token>";
});
```

Now you can use the SDK:
```js
const accountInfo = await trinsicService.account().getInfo();
console.log(JSON.stringify(accountInfo, null, 4));
```

You can find all of the SDK methods documented [here](/reference/)


## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the walkthrough next. If you're ready to dive into building your ecosystem, check out our API Reference.

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }