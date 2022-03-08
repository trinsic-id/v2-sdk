const path = require("path");

module.exports = {
  mode: "development",
  entry: {
    wallet: "./test/WalletService.test.js"
  },
  output: {
    path: path.resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
  },
  experiments: {
    asyncWebAssembly: true,
  },
};
