const path = require("path");
const webpack = require("webpack");

module.exports = {
  mode: "development",
  entry: {
    wallet: "./test/WalletService.test.js",
    vaccine: "./test/VaccineDemo.test.js"
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
