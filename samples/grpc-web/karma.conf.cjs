const { resolve } = require("path");
const { SourceMapDevToolPlugin} = require("webpack");
module.exports = async (config) => {
    config.set({
        plugins: [
            "karma-webpack",
            "karma-jasmine",
            "karma-chrome-launcher",
        ],

        singleRun: true, // run and exit for CI pipelines, lol

        client: {
            clearContext: true, // will show the results in node once all the testcases are loaded
            trinsic_environment: config.trinsic_environment
        },

        // frameworks to use
        // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
        frameworks: ["jasmine", "webpack"],

        // list of files / patterns to load in the node
        // Here I'm including all the Jest tests which are all under the __tests__ directory.
        // You may need to tweak this pattern to find your test files/
        files: [
            {
                pattern: "main.ts",
                watched: false,
                included: true,
                served: true,
            },
            {
                pattern: "**/*.wasm",
                watched: false,
                included: false,
                served: true,
            },
        ],

        // preprocess matching files before serving them to the node
        // available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
        preprocessors: {
            // Use webpack to bundle our tests files
            "main.ts": ["webpack"],
        },
        // "Chrome", "ChromeHeadless"
        browsers: ["ChromeHeadless"],

        webpackMiddleware: {
            stats: "errors-only",
            bail: true,
        },

        port: 9876,

        colors: true,

        // autoWatch: false,
        logLevel: config.LOG_INFO,

        webpack: {
            mode: "development",
            devtool: "inline-source-map",
            module: {
                rules: [
                    {
                        test: /\.tsx?$/,
                        exclude: /node_modules/,
                        loader: "ts-loader",
                        options: {
                            configFile: "tsconfig.json",
                        },
                    },
                ],
            },
            resolve: {
                extensions: [".ts", ".js"],
            },
            output: {
                path: resolve(__dirname, "build"),
            },
            plugins: [
                new SourceMapDevToolPlugin({
                    filename: null,
                    test: /\.(ts|js)($|\?)/i,
                }),
            ],
            experiments: {
                asyncWebAssembly: true,
            },
            stats: {
                errorDetails: true,
            },
        },
    });
};
