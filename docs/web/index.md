# The Trinsic Javascript / Web SDK

The Trinsic Web SDK makes it easy to interact with the Trinsic API from any client-side web application. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/web).

## Installation

Install the package for Node or Browser from [npmjs.com <small>:material-open-in-new:</small>](https://www.npmjs.com/package/@trinsic/trinsic){target=\_blank}

=== "Install"

```bash
npm i @trinsic/trinsic
```

<!-- ## Configuration -->

## Create new project

Let's create a new console app that we will use to add our sample code

```bash
mkdir web-sample && cd web-sample && npm init
```

You can select all the defaults for the node project.

Add the required dependencies

```bash
npm i @trinsic/trinsic
```

```bash
npm i --save-dev http-server webpack webpack-cli
```

### Configure Webpack

After installing the dependencies you'll need a configuration file for webpack.
Create a file called webpack.config.js at the root of your project and then copy and paste this into that file

```js
const path = require("path");

module.exports = {
    mode: "development",
    entry: "./src/index.js",
    output: {
        path: path.resolve(__dirname, "./src"),
        filename: "bundle.js",
    },
};
```

#### Configure Webpack for React

If using React you may need to start your project with [craco](https://www.npmjs.com/package/@craco/craco)

Install Craco

```bash
npm i @craco/craco
```

Next change your react scripts in your package.json file

```json
"scripts": {
-   "start": "react-scripts start",
+   "start": "craco start",
-   "build": "react-scripts build",
+   "build": "craco build"
-   "test": "react-scripts test",
+   "test": "craco test"
}
```

Finally you will need to add a craco configuration file called `craco.config.js` and add the following:

```js
// craco.config.js

const { addBeforeLoader, loaderByName } = require("@craco/craco");

module.exports = {
    webpack: {
        configure: (webpackConfig) => {
            const wasmExtensionRegExp = /\.wasm$/;
            webpackConfig.resolve.extensions.push(".wasm");

            webpackConfig.module.rules.forEach((rule) => {
                (rule.oneOf || []).forEach((oneOf) => {
                    if (
                        oneOf.loader &&
                        oneOf.loader.indexOf("file-loader") >= 0
                    ) {
                        oneOf.exclude.push(wasmExtensionRegExp);
                    }
                });
            });

            const wasmLoader = {
                test: /\.wasm$/,
                exclude: /node_modules/,
                loaders: ["wasm-loader"],
            };

            addBeforeLoader(
                webpackConfig,
                loaderByName("file-loader"),
                wasmLoader
            );

            return webpackConfig;
        },
    },
};
```

This allows react loaders to properly load in some of our needed .wasm files.

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

Once the SDK is installed and configured, you're ready to start building! We recommend going through the walkthrough next. If you're ready to dive into building your ecosystem, check out our API Reference

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }
