const path = require("path");

module.exports = {
    entry: "./index.browser.ts",
    devtool: "source-map",
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                use: "ts-loader",
                exclude: /node_modules/,
            },
        ],
    },
    resolve: {
        extensions: [".tsx", ".ts", ".js"],
    },
    output: {
        filename: "trinsic.min.js",
        path: path.resolve(__dirname, "dist"),
        library: "trinsic",
        libraryTarget: "umd",
        globalObject: "this",
    },
    externals: {
        // Optionally externalize some dependencies to reduce bundle size
        // react: 'React',
        // 'react-dom': 'ReactDOM'
    },
};
