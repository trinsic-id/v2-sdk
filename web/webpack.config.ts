import { resolve, join } from "path";
import { Configuration } from "webpack";

const config: Configuration = {
  mode: "development",
  devtool: "inline-source-map",
  entry: {
    wallet: "./test/WalletService.spec.ts",
    vaccine: "./test/VaccineDemo.spec.ts",
    templates: "./test/CredentialTemplates.spec.ts",
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        exclude: /node_modules/,
        loader: "ts-loader",
      },
    ],
  },
  resolve: {
    extensions: [".ts", ".js"],
    fallback: {
      http: require.resolve("stream-http"),
      https: require.resolve("https-browserify"),
    },
  },
  output: {
    path: resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
  },
  // devServer: {
  //   static: join(__dirname, "dist"),
  //   compress: true,
  //   port: 4000,
  // },
  experiments: {
    asyncWebAssembly: true,
  },
  stats: {
    errorDetails: true,
  },
};

export default config;
