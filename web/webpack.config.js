const path = require("path");
const webpack = require("webpack");

module.exports = {
  mode: "development",
  entry: {
    wallet: "./test/WalletService.test.ts",
    vaccine: "./test/VaccineDemo.test.ts",
    templates: "./test/CredentialTemplates.test.ts"
  },
  output: {
    path: path.resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
  },
  plugins: [
    new webpack.ProvidePlugin({
      Buffer: ['buffer','Buffer']
    })
  ],
  resolve: {
    fallback: {
      buffer: require.resolve('buffer/')
    }
  },
  experiments: {
    asyncWebAssembly: true,
  },
  stats: {
    errorDetails: true
  }
};
