import webpackConfig from "./webpack.config";
import { Config, ConfigOptions } from "karma";

export default (config: Config): void => {
  config.set({
    plugins: ["karma-webpack", "karma-jasmine", "karma-chrome-launcher"],

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: "./",

    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ["jasmine", "webpack"],

    // list of files / patterns to load in the browser
    // Here I'm including all of the the Jest tests which are all under the __tests__ directory.
    // You may need to tweak this patter to find your test files/
    files: [
      // "./scripts/karma-setup.js",
      { pattern: "test/**/*.ts", watched: false, included: true, served: true },
    ],

    // preprocess matching files before serving them to the browser
    // available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
      // Use webpack to bundle our tests files
      "./scripts/karma-setup.js": ["webpack"],
      "test/**/*.ts": ["webpack"],
    },
    // "Chrome", "ChromeHeadless"
    browsers: ["Chrome"],

    webpackMiddleware: {
      stats: 'errors-only',
      bail: true,
    },

    webpack: webpackConfig,
  } as ConfigOptions)
};
