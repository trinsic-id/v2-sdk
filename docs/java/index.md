# The Trinsic Java / Kotlin SDK

The Trinsic Java / Kotlin SDK makes it easy to interact with the Trinsic API from any Java (or Kotlin) application. The most recent version of the package is found on the [Github Release](https://github.com/trinsic-id/sdk/releases). You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/java).

## Installation
1. Add the `urlFile` code shown below to your `build.gradle`.
2. Add the implementations as shown below to your `build.gradle`.
3. Run `gradle build` to download the required jar files. This can take some time.

## Configuration
1. Okapi binaries are now included with the server `.jar` or the corresponding android `.aar` file. The gradle include process is essentially similar (see below).
2. If you install to a different location for debugging, use the environment variable `LD_LIBRARY_PATH`, even on Windows.
3. For Android, the okapi binaries must be copied (currently manually) to a [specific location with a specific folder structure](https://github.com/trinsic-id/sdk-examples/tree/main/android/app/src/main/jniLibs). [The complete sample application is here](https://github.com/trinsic-id/sdk-examples/tree/main/android)

!!! note Jar Download Note

    If you want to include the two required Trinsic `.jar` files in your own application (android or other java), be sure to copy the following lines. They allow you to specify a remote file location as a gradle `implementation` target as shown below:

<!--codeinclude-->
```java
[urlFile Sample](../../java/build.gradle) inside_block:urlFileSample
```
<!--/codeinclude-->

```java
dependencies {
    // other dependencies
    implementation urlFile('https://github.com/trinsic-id/okapi/releases/download/v1.6.0/trinsic-okapi-1.6.2.jar', 'trinsic-okapi-1.6.2')
    // android version:
    // implementation urlFile('https://github.com/trinsic-id/okapi/releases/download/v1.6.0/trinsic-okapi-1.6.1.aar', 'trinsic-okapi-1.6.1')
    implementation urlFile('https://github.com/trinsic-id/sdk/releases/download/v1.8.0/trinsic-services-1.8.1.jar', 'trinsic-services-1.8.1')
}
```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Java API Reference](../reference/index.md){ .md-button }
