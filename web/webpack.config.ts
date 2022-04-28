import { resolve } from "path";
import { Configuration, ProvidePlugin, SourceMapDevToolPlugin } from "webpack";

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
      buffer: require.resolve("buffer"),
      http: require.resolve("stream-http"),
      https: require.resolve("https-browserify"),
      http2: require.resolve("http2-client"),
      path: require.resolve("path-browserify"),
      stream: require.resolve("stream-browserify"),
      os: require.resolve("os-browserify/browser"),
      zlib: require.resolve("browserify-zlib"),
      fs: require.resolve("browserify-fs")
    },
  },
  output: {
    path: resolve(__dirname, "./test/build"),
    filename: "[name].bundle.js",
  },
  plugins: [
    new SourceMapDevToolPlugin({
      filename: null,
      test: /\.(ts|js)($|\?)/i,
    }),
    new ProvidePlugin({
      process: "process/browser",
      Buffer: ["buffer", "Buffer"],
    }),
  ],
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
