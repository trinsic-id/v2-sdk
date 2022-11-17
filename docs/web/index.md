# The Trinsic Javascript / Web SDK

The Trinsic Web SDK makes it easy to interact with the Trinsic API from any client-side web application. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/web).

## Installation

Install the package for Node or Browser from [npmjs.com <small>:material-open-in-new:</small>](https://www.npmjs.com/package/@trinsic/trinsic){target=\_blank}

=== "Install"

```bash
npm install @trinsic/trinsic
```

<!-- prettier-ignore-start -->
## Configuration

<!-- prettier-ignore -->
=== "Webpack 4"
    You can find a [basic Webpack 4 sample here](https://github.com/trinsic-id/sdk-examples/tree/main/browser/basic-webpack-4).

    The library works without any further configuration in Webpack 4.

    !!! info "Package import"
        Import the library using `@trinsic/trinsic/lib/browser`.

=== "Create React App 4"
    You can find a [basic Create React App 4 sample here](https://github.com/trinsic-id/sdk-examples/tree/main/browser/basic-create-react-app-4).

    You will have to extend the Create React App Webpack configuration to allow the included `wasm` bundle to be loaded.

    !!! info "Package import"
        Import the library using `@trinsic/trinsic/lib/browser`.

    1. Install the `@craco/craco` package in case you're not yet using `craco`
        ```bash
        npm install @craco/craco --save-exact --save-dev
        ```
    1. Adjust your `package.json` scripts to the below:
        ```json
        "scripts": {
            "start": "craco start",
            "build": "craco build",
            "test": "craco test",
            "eject": "react-scripts eject"
        }
        ```
    1. Add a `craco.config.js` file next to the `package.json` file with the following configuration:
        ```js
        const { addBeforeLoader, loaderByName } = require('@craco/craco');
        module.exports = {
            webpack: {
                configure: (webpackConfig) => {
                    const wasmExtensionRegExp = /\.wasm$/;

                    webpackConfig.module.rules.forEach((rule) => {
                        (rule.oneOf || []).forEach((oneOf) => {
                        if (oneOf.loader && oneOf.loader.indexOf('file-loader') >= 0) {
                            oneOf.exclude.push(wasmExtensionRegExp);
                        }
                        });
                    });

                    return webpackConfig;
                },
            },
        };
        ```

=== "Webpack 5"
    You can find a [basic Webpack 5 sample here](https://github.com/trinsic-id/sdk-examples/tree/main/browser/basic-webpack-5).

    !!! info "Package import"
        Import the library using `@trinsic/trinsic/browser`.

    You will have to enable the `asyncWebAssembly` experiment in Webpack 5.

    1. Adjust your `webpack.config.js`:
        ```js
        experiments: {
            asyncWebAssembly: true,
        },
        ```

=== "Create React App 5"
    You can find a [basic Create React App 5 sample here](https://github.com/trinsic-id/sdk-examples/tree/main/browser/basic-create-react-app-5).

    !!! info "Package import"
        Import the library using `@trinsic/trinsic/browser`.


    You will have to extend the Create React App Webpack configuration to allow the included `wasm` bundle to be loaded.

    1. Install the `@craco/craco` dependency in case you're not yet using `craco`
        ```bash
        npm install @craco/craco --save-exact --save-dev
        ```
    1. Adjust your `package.json` scripts to the below:
        ```json
        "scripts": {
            "start": "craco start",
            "build": "craco build",
            "test": "craco test",
            "eject": "react-scripts eject"
        }
        ```
    1. Add a `craco.config.js` file next to the `package.json` file with the following configuration:
        ```js
        module.exports = {
            webpack: {
                configure: (webpackConfig) => {
                    webpackConfig.experiments = {
                        asyncWebAssembly: true
                    };

                    const wasmExtensionRegExp = /\.wasm$/;
                    webpackConfig.module.rules.forEach((rule) => {
                        (rule.oneOf || []).forEach((oneOf) => {
                            if (oneOf.type === "asset/resource") {
                                oneOf.exclude.push(wasmExtensionRegExp);
                            }
                        });
                    });
                    return webpackConfig;
                },
            },
        };
        ```
<!-- prettier-ignore-end -->

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the walkthrough next. If you're ready to dive into building your ecosystem, check out our API Reference

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }
