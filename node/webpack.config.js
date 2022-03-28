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
    // wallet: "./test/web/WalletService_web.test.ts",
    vaccine: path.resolve(__dirname, "./test/web/VaccineDemo_web.test.ts")
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
    alias: {
      "@trinsic/trinsic": path.resolve(__dirname, 'src')
    },
    extensions: ['.ts', '.js']
  },
  output: {
    path: path.resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
    libraryTarget: "amd"
  },
  experiments: {
    asyncWebAssembly: true,
  },
  stats: {
    errorDetails: true
  }
};
