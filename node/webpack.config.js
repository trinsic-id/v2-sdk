const path = require("path");
const nodeExternals = require('webpack-node-externals');

module.exports = {
  mode: "development",
  devtool: 'source-map',
  optimization: {
    usedExports: true
  },
  // entry: './src/index.ts',
  entry: {
    // wallet: "./test/web/WalletService.test.ts",
    vaccine: path.resolve(__dirname, "./test/web/VaccineDemo.ts")
  },
  externalsPresets: { node: true },
  externals: [nodeExternals({
    importType: 'umd'
  })],
  node: {
    __filename: true,
    __dirname: true
  },
  module: {
    rules: [
      {
        loader: 'ts-loader',
        test: /\.ts$/,
        exclude: /node_modules/,
        options: {
          configFile: 'tsconfig.json'
        }
      }
    ]
  },
  resolve: {
    extensions: ['.ts']
  },
  output: {
    path: path.resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
  },
  experiments: {
    asyncWebAssembly: true,
  },
  stats: {
    errorDetails: true
  }
};
