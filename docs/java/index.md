# The Trinsic Java SDK

The Trinsic Java SDK makes it easy to interact with the Trinsic API from any Java application. The most recent version of the library can be found on Github Maven Packages. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/java).

## Installation
1. Download the trinsic SDK package (`services-X.X.X.jar`) from the [Github Packages](https://github.com/trinsic-id/sdk/packages/940563) into a `libs` folder in your project
2. Download the trinsic okapi package (`okapi-X.X.X.jar`) from the [Github Packages](https://github.com/trinsic-id/okapi/packages/919613) into a `libs` folder in your project

## Configuration
1. Make sure you have the okapi native binaries installed on your machine. Default installation instructions are in the [readme.md here](https://github.com/trinsic-id/okapi/)
2. If you install to a different location for debugging, use the environment variable `LD_LIBRARY_PATH`, even on Windows.
3. Link the jar files into your gradle build with:
    ```
    dependencies {
        // other dependencies
        implementation fileTree(include: ["*.jar"], dir: "libs")
    }
    ```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Java API Reference](../reference/java/_index.md){ .md-button }
