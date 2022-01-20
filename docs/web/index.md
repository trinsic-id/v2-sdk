# The Trinsic Javascript / Web SDK

The Trinsic Web SDK makes it easy to interact with the Trinsic API from any client-side web application. The most recent version of the library can be found on ____. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/web).

## Installation
Install the package for Node or Browser from [npmjs.com :material-open-in-new:](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

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

### Create new project

Let's create a new console app that we will use to add our sample code

```bash
mkdir web-sample && cd web-sample && npm init
```

You can select all the defaults for the node project.

Add the required dependencies

```bash
npm i @trinsic/trinsic-web
```

```bash
npm i --save-dev http-server webpack webpack-cli
```

### Configure Webpack

After installing the dependencies you'll need a configuration file for webpack.
Create a file called webpack.config.js at the root of your project and then copy and paste this into that file
```js
const path = require('path');

module.exports = {
  mode: 'development',
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, './src'),
    filename: 'bundle.js',
  }
};
```

### Set up Website

Create a simple html page with a script tag referencing the webpack bundle that will be built after completing the sample code. Note that you will not have the bundle.js file yet because it will be generated from the index.js file you create.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Web Sample</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
</head>
<body>
  <h1>Web Sample</h1>
  <div id="wallet"></div>
</body>
<script src="../bundle.js"></script>
</html>
```

Your file structure should look like this

```
web-sample
    src
        index.html
        index.js
    package.json
    webpack.config.js
```


## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-web.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](./vaccination-web.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }



